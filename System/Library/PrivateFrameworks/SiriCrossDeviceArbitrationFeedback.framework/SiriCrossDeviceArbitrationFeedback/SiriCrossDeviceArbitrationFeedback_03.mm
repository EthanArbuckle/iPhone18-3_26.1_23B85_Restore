_BYTE *storeEnumTagSinglePayload for RequestModel.Keys(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A9CA94()
{
  result = qword_2800B2280;
  if (!qword_2800B2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2280);
  }

  return result;
}

unint64_t sub_266A9CAEC()
{
  result = qword_2800B2288;
  if (!qword_2800B2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2288);
  }

  return result;
}

unint64_t sub_266A9CB44()
{
  result = qword_2800B2290;
  if (!qword_2800B2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2290);
  }

  return result;
}

void sub_266A9CB98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D5E8B00](v3);
  if (v3)
  {
    v4 = *(type metadata accessor for ParticipantModel() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      ParticipantModel.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

void sub_266A9CC44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_6(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x26D5E8B00](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_266A9CC84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_6(v2, v3);
  if (v0)
  {
    v4 = (v1 + 39);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 1);
      v7 = *(v4 - 7);
      v8 = *(v4 - 5);
      v9 = *(v4 - 4);
      v10 = *(v4 - 3);
      v11 = *v4;
      v4 += 8;
      sub_266ABE264();
      MEMORY[0x26D5E8B00](v5);
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](v6);
      sub_266ABE264();
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A9CD14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_6(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      if (__dst[14])
      {
        sub_266ABE264();
        sub_266A6E078(__dst, v5);
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
        sub_266A6E078(__dst, v5);
      }

      if (__dst[1])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      sub_266A72578(__dst);
      v4 += 168;
      --v2;
    }

    while (v2);
  }
}

void sub_266A9CDF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_6(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v5 = *(v4 - 2);
      if ((v5 & 0x80000000) != 0)
      {
        MEMORY[0x26D5E8B00](1);
        MEMORY[0x26D5E8B00](v5);
        sub_266ABE284();
      }

      else
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        MEMORY[0x26D5E8B00](0);
        MEMORY[0x26D5E8B00](v5);
        sub_266ABE284();
        if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x26D5E8B40](v8);
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v6;
        }

        else
        {
          v9 = 0;
        }

        MEMORY[0x26D5E8B40](v9);
      }

      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_266A9CEB0()
{
  result = qword_2800B22F8;
  if (!qword_2800B22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B22F8);
  }

  return result;
}

uint64_t sub_266A9CF04(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 168 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0xA8uLL);
      memmove(v11, v18, 0xA8uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 168;
      result = sub_266A6E078(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_266A6E078(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_266A9D098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC8, &unk_266AC0FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A9D110()
{
  result = qword_2800B2328;
  if (!qword_2800B2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2328);
  }

  return result;
}

void OUTLINED_FUNCTION_24_3(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v16 + 16) = v15;

  return sub_266A6DBC4(&a15, v16 + v17 * v18 + 32);
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_dynamicCast();
}

id sub_266A9D1F4()
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackServiceImpl()) init];
  qword_280BB6C70 = result;
  return result;
}

id FeedbackServiceImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FeedbackServiceImpl.sharedService.getter()
{
  if (qword_280BB6C68 != -1)
  {
    swift_once();
  }

  v1 = qword_280BB6C70;

  return v1;
}

uint64_t sub_266A9D310()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_266A9D3B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_266A9D410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_266A9D3B8(v4);
}

char *sub_266A9D49C()
{
  v1 = v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService;
  v2 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService);
  }

  else
  {
    v5 = type metadata accessor for LocalNotificationCenterImpl();
    v6 = objc_allocWithZone(v5);
    v16[3] = v5;
    v16[4] = &protocol witness table for LocalNotificationCenterImpl;
    v16[0] = sub_266A8B6B0(0);
    v7 = qword_280BB6C50;
    v8 = v16[0];
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_3_7();
    }

    v9 = qword_280BB6C58;
    objc_allocWithZone(type metadata accessor for UserNotificationServiceImpl());
    v10 = v9;
    v11 = sub_266A74D28(v16, 0, 0, v9);

    v12 = &v11[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate];
    swift_beginAccess();
    *(v12 + 1) = &protocol witness table for FeedbackServiceImpl;
    swift_unknownObjectWeakAssign();
    v13 = *v1;
    *v1 = v11;
    *(v1 + 8) = &protocol witness table for UserNotificationServiceImpl;
    v4 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v4;
}

id sub_266A9D630()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals;
  if (*(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals))
  {
    v2 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals);
  }

  else
  {
    if (qword_280BB6C50 != -1)
    {
      OUTLINED_FUNCTION_3_7();
      v5 = *(v0 + v1);
    }

    v3 = qword_280BB6C58;
    *(v0 + v1) = qword_280BB6C58;
    v2 = v3;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_266A9D720(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals);
  *(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals) = a1;
  return swift_unknownObjectRelease();
}

void sub_266A9D88C()
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v0 = sub_266ABD8D4();
  __swift_project_value_buffer(v0, qword_280BB7028);
  v1 = sub_266ABD8C4();
  v2 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v2))
  {
    v3 = OUTLINED_FUNCTION_25();
    v4 = OUTLINED_FUNCTION_23();
    v11 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_266A66D34(0xD00000000000001ALL, 0x8000000266ABFA80, &v11);
    OUTLINED_FUNCTION_17_3(&dword_266A65000, v5, v6, "#feedback FeedbackService - %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v10 = sub_266A9D49C();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 40))(ObjectType, v8);
}

id FeedbackServiceImpl.init()()
{
  *&v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate] = 0;
  *&v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController] = 0;
  v1 = &v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___notificationService];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FeedbackServiceImpl();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FeedbackServiceImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackServiceImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_266A9DB40(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = [a1 actionIdentifier];
  sub_266ABDA84();

  v7 = sub_266ABDFD4();

  if (!v7)
  {
    v16 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    swift_beginAccess();
    v17 = *(a2 + v16);
    if (v17)
    {
      [v17 handleNotificationAction_];
    }

    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v18 = sub_266ABD8D4();
    __swift_project_value_buffer(v18, qword_280BB7028);
    v19 = sub_266ABD8C4();
    v20 = sub_266ABDD54();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_266A66D34(0x6669636570736E75, 0xEB00000000646569, &v47);
    v23 = "#feedback FeedbackService - Setting launch action %s";
    goto LABEL_14;
  }

  v8 = [a1 actionIdentifier];
  v9 = sub_266ABDA84();
  v11 = v10;

  v12 = *MEMORY[0x277CE20F0];
  if (sub_266ABDA84() == v9 && v13 == v11)
  {

LABEL_17:

    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v24 = sub_266ABD8D4();
    __swift_project_value_buffer(v24, qword_280BB7028);
    v25 = sub_266ABD8C4();
    v26 = sub_266ABDD54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266A65000, v25, v26, "#feedback FeedbackService - notification dismissed", v27, 2u);
      MEMORY[0x26D5E9280](v27, -1, -1);
    }

    v28 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    swift_beginAccess();
    v29 = *(a2 + v28);
    if (v29)
    {
      [v29 handleNotificationAction_];
    }

    goto LABEL_23;
  }

  v15 = sub_266ABE1C4();

  if (v15)
  {
    goto LABEL_17;
  }

  v30 = *MEMORY[0x277CE20E8];
  if (sub_266ABDA84() == v9 && v31 == v11)
  {
  }

  else
  {
    v33 = sub_266ABE1C4();

    if ((v33 & 1) == 0)
    {
      if (qword_280BB6C30 != -1)
      {
        swift_once();
      }

      v34 = sub_266ABD8D4();
      __swift_project_value_buffer(v34, qword_280BB7028);
      v35 = a1;
      v19 = sub_266ABD8C4();
      v20 = sub_266ABDD64();

      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = v22;
      *v21 = 136315138;
      v36 = [v35 actionIdentifier];
      v37 = sub_266ABDA84();
      v39 = v38;

      v40 = sub_266A66D34(v37, v39, &v48);

      *(v21 + 4) = v40;
      v23 = "#feedback FeedbackService - received unknown action %s on notification. Ignoring.";
LABEL_14:
      _os_log_impl(&dword_266A65000, v19, v20, v23, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D5E9280](v22, -1, -1);
      MEMORY[0x26D5E9280](v21, -1, -1);
LABEL_15:

      goto LABEL_23;
    }
  }

  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v41 = sub_266ABD8D4();
  __swift_project_value_buffer(v41, qword_280BB7028);
  v42 = sub_266ABD8C4();
  v43 = sub_266ABDD54();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_266A65000, v42, v43, "#feedback FeedbackService - notification tapped without specific action", v44, 2u);
    MEMORY[0x26D5E9280](v44, -1, -1);
  }

  v45 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  swift_beginAccess();
  v46 = *(a2 + v45);
  if (v46)
  {
    [v46 handleNotificationAction_];
  }

LABEL_23:
  a3[2](a3);
  _Block_release(a3);
}

uint64_t FeedbackServiceImpl.handle(response:completion:)(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  v6 = [a1 actionIdentifier];
  sub_266ABDA84();

  v7 = sub_266ABDFD4();

  if (!v7)
  {
    v16 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    OUTLINED_FUNCTION_6_6();
    v17 = *(v3 + v16);
    if (v17)
    {
      [v17 handleNotificationAction_];
    }

    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v18 = sub_266ABD8D4();
    __swift_project_value_buffer(v18, qword_280BB7028);
    v19 = sub_266ABD8C4();
    v20 = sub_266ABDD54();
    if (!OUTLINED_FUNCTION_14_0(v20))
    {
      goto LABEL_15;
    }

    v21 = OUTLINED_FUNCTION_25();
    v22 = OUTLINED_FUNCTION_23();
    v53 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_266A66D34(0x6669636570736E75, 0xEB00000000646569, &v53);
    v25 = "#feedback FeedbackService - Setting launch action %s";
    goto LABEL_14;
  }

  v8 = [a1 actionIdentifier];
  v9 = sub_266ABDA84();
  v11 = v10;

  v12 = *MEMORY[0x277CE20F0];
  if (sub_266ABDA84() == v9 && v13 == v11)
  {

LABEL_17:

    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v27 = sub_266ABD8D4();
    __swift_project_value_buffer(v27, qword_280BB7028);
    v28 = sub_266ABD8C4();
    v29 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v29))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_4(&dword_266A65000, v30, v31, "#feedback FeedbackService - notification dismissed");
      OUTLINED_FUNCTION_7();
    }

    v32 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
    OUTLINED_FUNCTION_6_6();
    v26 = *(v3 + v32);
    if (v26)
    {
      v26 = [v26 handleNotificationAction_];
    }

    return a2(v26);
  }

  v15 = OUTLINED_FUNCTION_16_5();

  if (v15)
  {
    goto LABEL_17;
  }

  v34 = *MEMORY[0x277CE20E8];
  if (sub_266ABDA84() == v9 && v35 == v11)
  {
  }

  else
  {
    v37 = OUTLINED_FUNCTION_16_5();

    if ((v37 & 1) == 0)
    {
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v38 = sub_266ABD8D4();
      __swift_project_value_buffer(v38, qword_280BB7028);
      v39 = a1;
      v19 = sub_266ABD8C4();
      v40 = sub_266ABDD64();

      if (!os_log_type_enabled(v19, v40))
      {
        goto LABEL_15;
      }

      v41 = OUTLINED_FUNCTION_25();
      v22 = OUTLINED_FUNCTION_23();
      v54 = v22;
      *v41 = 136315138;
      v42 = [v39 actionIdentifier];
      v43 = sub_266ABDA84();
      v45 = v44;

      v46 = sub_266A66D34(v43, v45, &v54);

      *(v41 + 4) = v46;
      v25 = "#feedback FeedbackService - received unknown action %s on notification. Ignoring.";
LABEL_14:
      OUTLINED_FUNCTION_15_4(&dword_266A65000, v23, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_8();
LABEL_15:

      return a2(v26);
    }
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v47 = sub_266ABD8D4();
  __swift_project_value_buffer(v47, qword_280BB7028);
  v48 = sub_266ABD8C4();
  v49 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v49))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_4(&dword_266A65000, v50, v51, "#feedback FeedbackService - notification tapped without specific action");
    OUTLINED_FUNCTION_7();
  }

  v52 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl_delegate;
  OUTLINED_FUNCTION_6_6();
  v26 = *(v3 + v52);
  if (v26)
  {
    v26 = [v26 handleNotificationAction_];
  }

  return a2(v26);
}

uint64_t sub_266A9E5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_266A9E87C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_266A9E714;
  v11[3] = &block_descriptor_1;
  v8 = _Block_copy(v11);

  [v3 handleWithResponse:a1 completion:v8];
  _Block_release(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A9E87C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266A9E8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_266A6DBC4(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_beginAccess();
}

uint64_t sub_266A9E988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656D6974 && a2 == 0xE500000000000000;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D72616C61 && a2 == 0xE500000000000000;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1819042147 && a2 == 0xE400000000000000;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7368801 && a2 == 0xE300000000000000;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C61436563616C70 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_266ABE1C4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6973754D79616C70 && a2 == 0xE900000000000063;
                if (v12 || (sub_266ABE1C4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69766F4D79616C70 && a2 == 0xE900000000000065;
                  if (v13 || (sub_266ABE1C4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D72616C41746573 && a2 == 0xE800000000000000;
                    if (v14 || (sub_266ABE1C4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x72656D6954746573 && a2 == 0xE800000000000000;
                      if (v15 || (sub_266ABE1C4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x746F68506E65706FLL && a2 == 0xE90000000000006FLL;
                        if (v16 || (sub_266ABE1C4() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_266ABE1C4();

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

uint64_t sub_266A9ED74(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x6569766F6DLL;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x6D72616C61;
      break;
    case 4:
      result = 1819042147;
      break;
    case 5:
      result = 7368801;
      break;
    case 6:
      result = 0x6C61436563616C70;
      break;
    case 7:
      result = 0x6973754D79616C70;
      break;
    case 8:
      result = 0x69766F4D79616C70;
      break;
    case 9:
      result = 0x6D72616C41746573;
      break;
    case 10:
      result = 0x72656D6954746573;
      break;
    case 11:
      result = 0x746F68506E65706FLL;
      break;
    case 12:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266A9EEC0(uint64_t a1)
{
  v2 = sub_266AA02A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EEFC(uint64_t a1)
{
  v2 = sub_266AA02A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9EF38(uint64_t a1)
{
  v2 = sub_266AA01F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EF74(uint64_t a1)
{
  v2 = sub_266AA01F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9EFB0(uint64_t a1)
{
  v2 = sub_266AA024C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9EFEC(uint64_t a1)
{
  v2 = sub_266AA024C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A9E988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A9F058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A9ED6C();
  *a1 = result;
  return result;
}

uint64_t sub_266A9F080(uint64_t a1)
{
  v2 = sub_266A9FF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F0BC(uint64_t a1)
{
  v2 = sub_266A9FF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F0F8(uint64_t a1)
{
  v2 = sub_266A9FFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F134(uint64_t a1)
{
  v2 = sub_266A9FFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F170(uint64_t a1)
{
  v2 = sub_266AA0348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F1AC(uint64_t a1)
{
  v2 = sub_266AA0348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F1E8(uint64_t a1)
{
  v2 = sub_266AA039C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F224(uint64_t a1)
{
  v2 = sub_266AA039C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F260(uint64_t a1)
{
  v2 = sub_266AA0000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F29C(uint64_t a1)
{
  v2 = sub_266AA0000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F2D8(uint64_t a1)
{
  v2 = sub_266AA01A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F314(uint64_t a1)
{
  v2 = sub_266AA01A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F350(uint64_t a1)
{
  v2 = sub_266AA00FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F38C(uint64_t a1)
{
  v2 = sub_266AA00FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F3C8(uint64_t a1)
{
  v2 = sub_266AA0150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F404(uint64_t a1)
{
  v2 = sub_266AA0150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F440(uint64_t a1)
{
  v2 = sub_266AA00A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F47C(uint64_t a1)
{
  v2 = sub_266AA00A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F4B8(uint64_t a1)
{
  v2 = sub_266AA0054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F4F4(uint64_t a1)
{
  v2 = sub_266AA0054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A9F530(uint64_t a1)
{
  v2 = sub_266AA02F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A9F56C(uint64_t a1)
{
  v2 = sub_266AA02F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2388, &qword_266AC3680);
  v35 = OUTLINED_FUNCTION_1_0(v34);
  v154 = v36;
  v155 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_3();
  v153 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2390, &qword_266AC3688);
  v42 = OUTLINED_FUNCTION_1_0(v41);
  v151 = v43;
  v152 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_3();
  v150 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2398, &qword_266AC3690);
  v49 = OUTLINED_FUNCTION_1_0(v48);
  v148 = v50;
  v149 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_3();
  v147 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23A0, &qword_266AC3698);
  v56 = OUTLINED_FUNCTION_1_0(v55);
  v145 = v57;
  v146 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_3();
  v144 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23A8, &qword_266AC36A0);
  v63 = OUTLINED_FUNCTION_1_0(v62);
  v142 = v64;
  v143 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_3();
  v141 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23B0, &qword_266AC36A8);
  v70 = OUTLINED_FUNCTION_1_0(v69);
  v139 = v71;
  v140 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23B8, &qword_266AC36B0);
  OUTLINED_FUNCTION_0_5(v76, &a24);
  v138[17] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23C0, &qword_266AC36B8);
  OUTLINED_FUNCTION_0_5(v82, &a21);
  v138[14] = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23C8, &qword_266AC36C0);
  OUTLINED_FUNCTION_0_5(v88, &a18);
  v138[11] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23D0, &qword_266AC36C8);
  OUTLINED_FUNCTION_0_5(v94, &v159);
  v138[8] = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23D8, &qword_266AC36D0);
  OUTLINED_FUNCTION_0_5(v100, v157);
  v138[5] = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23E0, &qword_266AC36D8);
  OUTLINED_FUNCTION_0_5(v106, &v154);
  v138[2] = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_20_5();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23E8, &qword_266AC36E0);
  OUTLINED_FUNCTION_1_0(v111);
  v138[1] = v112;
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v115);
  v117 = v138 - v116;
  v157[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B23F0, &qword_266AC36E8);
  OUTLINED_FUNCTION_1_0(v157[0]);
  v119 = v118;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v122);
  v124 = v138 - v123;
  v125 = *v31;
  v126 = v33[4];
  v127 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_266A9FF58();
  v156 = v124;
  sub_266ABE2C4();
  v128 = (v119 + 8);
  switch(v125)
  {
    case 1:
      OUTLINED_FUNCTION_26_3();
      sub_266AA0348();
      v135 = v156;
      v136 = v157[0];
      sub_266ABE0C4();
      OUTLINED_FUNCTION_12_6(&v153);
      v137(v28, v138[3]);
      (*v128)(v135, v136);
      goto LABEL_18;
    case 2:
      OUTLINED_FUNCTION_28_3();
      sub_266AA02F4();
      OUTLINED_FUNCTION_5_5();
      v130 = OUTLINED_FUNCTION_8_7(&v156);
      v134 = v157;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_27_4();
      sub_266AA02A0();
      OUTLINED_FUNCTION_5_5();
      v130 = OUTLINED_FUNCTION_8_7(v158);
      v134 = &v159;
      goto LABEL_13;
    case 4:
      OUTLINED_FUNCTION_29_4();
      sub_266AA024C();
      OUTLINED_FUNCTION_5_5();
      v130 = OUTLINED_FUNCTION_8_7(&a10);
      v134 = &a18;
      goto LABEL_13;
    case 5:
      a10 = 5;
      sub_266AA01F8();
      OUTLINED_FUNCTION_5_5();
      v130 = OUTLINED_FUNCTION_8_7(&a20);
      v134 = &a21;
      goto LABEL_13;
    case 6:
      a11 = 6;
      sub_266AA01A4();
      OUTLINED_FUNCTION_5_5();
      v130 = OUTLINED_FUNCTION_8_7(&a23);
      v134 = &a24;
LABEL_13:
      v131 = *(v134 - 32);
      break;
    case 7:
      a12 = 7;
      sub_266AA0150();
      v132 = v138[19];
      OUTLINED_FUNCTION_5_5();
      v133 = v139;
      v131 = v140;
      goto LABEL_16;
    case 8:
      a13 = 8;
      sub_266AA00FC();
      v132 = v141;
      OUTLINED_FUNCTION_5_5();
      v133 = v142;
      v131 = v143;
      goto LABEL_16;
    case 9:
      a14 = 9;
      sub_266AA00A8();
      v132 = v144;
      OUTLINED_FUNCTION_5_5();
      v133 = v145;
      v131 = v146;
      goto LABEL_16;
    case 10:
      a15 = 10;
      sub_266AA0054();
      v132 = v147;
      OUTLINED_FUNCTION_5_5();
      v133 = v148;
      v131 = v149;
      goto LABEL_16;
    case 11:
      a16 = 11;
      sub_266AA0000();
      v132 = v150;
      OUTLINED_FUNCTION_5_5();
      v133 = v151;
      v131 = v152;
      goto LABEL_16;
    case 12:
      a17 = 12;
      sub_266A9FFAC();
      v132 = v153;
      OUTLINED_FUNCTION_5_5();
      v133 = v154;
      v131 = v155;
LABEL_16:
      v129 = *(v133 + 8);
      v130 = v132;
      break;
    default:
      v158[3] = 0;
      sub_266AA039C();
      v127 = v156;
      v124 = v157[0];
      OUTLINED_FUNCTION_13_4();
      sub_266ABE0C4();
      OUTLINED_FUNCTION_12_6(&v152);
      v130 = v117;
      v131 = v111;
      break;
  }

  v129(v130, v131);
  (*v128)(v127, v124);
LABEL_18:
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A9FF58()
{
  result = qword_2800B23F8;
  if (!qword_2800B23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B23F8);
  }

  return result;
}

unint64_t sub_266A9FFAC()
{
  result = qword_2800B2400;
  if (!qword_2800B2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2400);
  }

  return result;
}

unint64_t sub_266AA0000()
{
  result = qword_2800B2408;
  if (!qword_2800B2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2408);
  }

  return result;
}

unint64_t sub_266AA0054()
{
  result = qword_2800B2410;
  if (!qword_2800B2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2410);
  }

  return result;
}

unint64_t sub_266AA00A8()
{
  result = qword_2800B2418;
  if (!qword_2800B2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2418);
  }

  return result;
}

unint64_t sub_266AA00FC()
{
  result = qword_2800B2420;
  if (!qword_2800B2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2420);
  }

  return result;
}

unint64_t sub_266AA0150()
{
  result = qword_2800B2428;
  if (!qword_2800B2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2428);
  }

  return result;
}

unint64_t sub_266AA01A4()
{
  result = qword_2800B2430;
  if (!qword_2800B2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2430);
  }

  return result;
}

unint64_t sub_266AA01F8()
{
  result = qword_2800B2438;
  if (!qword_2800B2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2438);
  }

  return result;
}

unint64_t sub_266AA024C()
{
  result = qword_2800B2440;
  if (!qword_2800B2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2440);
  }

  return result;
}

unint64_t sub_266AA02A0()
{
  result = qword_2800B2448;
  if (!qword_2800B2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2448);
  }

  return result;
}

unint64_t sub_266AA02F4()
{
  result = qword_2800B2450;
  if (!qword_2800B2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2450);
  }

  return result;
}

unint64_t sub_266AA0348()
{
  result = qword_2800B2458;
  if (!qword_2800B2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2458);
  }

  return result;
}

unint64_t sub_266AA039C()
{
  result = qword_2800B2460;
  if (!qword_2800B2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2460);
  }

  return result;
}

uint64_t UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](v1);
  return sub_266ABE2A4();
}

void UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v29;
  a27 = v30;
  v194 = v27;
  v32 = v31;
  v189 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2468, &qword_266AC36F0);
  v35 = OUTLINED_FUNCTION_1_0(v34);
  v179 = v36;
  v180 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_3();
  v188 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2470, &qword_266AC36F8);
  v42 = OUTLINED_FUNCTION_1_0(v41);
  v177 = v43;
  v178 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_3();
  v187 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2478, &qword_266AC3700);
  v49 = OUTLINED_FUNCTION_1_0(v48);
  v175 = v50;
  v176 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_3();
  v186 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2480, &qword_266AC3708);
  OUTLINED_FUNCTION_0_5(v55, &a25);
  v174 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8_3();
  v185 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2488, &qword_266AC3710);
  OUTLINED_FUNCTION_0_5(v61, &a23);
  v173 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_3();
  v184 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2490, &qword_266AC3718);
  OUTLINED_FUNCTION_0_5(v67, &a20);
  v172 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_3();
  v192 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2498, &qword_266AC3720);
  OUTLINED_FUNCTION_0_5(v73, &a18);
  v171 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8_3();
  v191 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24A0, &qword_266AC3728);
  OUTLINED_FUNCTION_0_5(v79, &a10);
  v170 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_8_3();
  v190 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24A8, &qword_266AC3730);
  OUTLINED_FUNCTION_0_5(v85, &v196);
  v169 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_8_3();
  v183 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24B0, &qword_266AC3738);
  OUTLINED_FUNCTION_0_5(v91, &v194);
  v168 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_8_3();
  v182 = v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24B8, &qword_266AC3740);
  OUTLINED_FUNCTION_0_5(v97, &v192);
  v167 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_8_3();
  v181 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24C0, &qword_266AC3748);
  OUTLINED_FUNCTION_0_5(v103, &v190);
  v166 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_20_5();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24C8, &qword_266AC3750);
  OUTLINED_FUNCTION_1_0(v108);
  v165 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v112);
  v114 = &v160 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24D0, &unk_266AC3758);
  OUTLINED_FUNCTION_1_0(v115);
  v117 = v116;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v120);
  v122 = &v160 - v121;
  v123 = v32[3];
  v124 = v32[4];
  v193 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v123);
  sub_266A9FF58();
  v125 = v194;
  sub_266ABE2B4();
  if (v125)
  {
    goto LABEL_9;
  }

  v163 = v114;
  v162 = v108;
  v164 = v28;
  v126 = v190;
  v127 = v191;
  v128 = v192;
  v194 = v117;
  v129 = v122;
  v130 = sub_266ABE0B4();
  sub_266A86BD4(v130, 0);
  if (v132 == v133 >> 1)
  {
LABEL_8:
    v144 = sub_266ABDEF4();
    swift_allocError();
    v146 = v145;
    v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0) + 48);
    *v146 = &type metadata for UserFeedbackDevicePreferenceResponse.AdditionalBestDeviceContext;
    sub_266ABDFF4();
    OUTLINED_FUNCTION_21_5();
    (*(*(v144 - 8) + 104))(v146, *MEMORY[0x277D84160], v144);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_14_5();
    v148(v129, v115);
LABEL_9:
    v149 = v193;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    OUTLINED_FUNCTION_30_1();
    return;
  }

  v161 = v115;
  v160 = 0;
  if (v132 < (v133 >> 1))
  {
    v134 = *(v131 + v132);
    sub_266A86BCC(v132 + 1);
    v136 = v135;
    v138 = v137;
    swift_unknownObjectRelease();
    if (v136 == v138 >> 1)
    {
      v139 = v189;
      v140 = v160;
      switch(v134)
      {
        case 1:
          OUTLINED_FUNCTION_26_3();
          sub_266AA0348();
          OUTLINED_FUNCTION_22_3();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_8_7(&v189);
          v155 = &v190;
          goto LABEL_26;
        case 2:
          OUTLINED_FUNCTION_28_3();
          sub_266AA02F4();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&v191);
          v143 = &v192;
          goto LABEL_27;
        case 3:
          OUTLINED_FUNCTION_27_4();
          sub_266AA02A0();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&v193);
          v143 = &v194;
          goto LABEL_27;
        case 4:
          OUTLINED_FUNCTION_29_4();
          sub_266AA024C();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(v195);
          v143 = &v196;
          goto LABEL_27;
        case 5:
          a10 = 5;
          sub_266AA01F8();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&a9);
          v143 = &a10;
          goto LABEL_27;
        case 6:
          a11 = 6;
          sub_266AA01A4();
          v128 = v161;
          sub_266ABDFE4();
          if (v140)
          {
            OUTLINED_FUNCTION_14_5();
            v156(v129, v128);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_6(&a19);
          v141 = v127;
          v143 = &a18;
LABEL_27:
          v142(v141, *(v143 - 32));
LABEL_28:
          OUTLINED_FUNCTION_14_5();
          v158 = v129;
          v159 = v128;
LABEL_29:
          v157(v158, v159);
          v149 = v193;
          *v139 = v134;
          break;
        case 7:
          a12 = 7;
          sub_266AA0150();
          OUTLINED_FUNCTION_22_3();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_8_7(&a21);
          v155 = &a20;
LABEL_26:
          v154(v153, *(v155 - 32));
          OUTLINED_FUNCTION_14_5();
          v158 = v129;
          v159 = v126;
          goto LABEL_29;
        case 8:
          a13 = 8;
          sub_266AA00FC();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&a22);
          v143 = &a23;
          goto LABEL_27;
        case 9:
          a14 = 9;
          sub_266AA00A8();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&a24);
          v143 = &a25;
          goto LABEL_27;
        case 10:
          a15 = 10;
          sub_266AA0054();
          v150 = v186;
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v152 = v175;
          v151 = v176;
          goto LABEL_23;
        case 11:
          a16 = 11;
          sub_266AA0000();
          v150 = v187;
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v152 = v177;
          v151 = v178;
          goto LABEL_23;
        case 12:
          a17 = 12;
          sub_266A9FFAC();
          v150 = v188;
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v152 = v179;
          v151 = v180;
LABEL_23:
          (*(v152 + 8))(v150, v151);
          goto LABEL_28;
        default:
          v195[3] = 0;
          sub_266AA039C();
          OUTLINED_FUNCTION_3_8();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_8(&v188);
          v143 = &v185;
          goto LABEL_27;
      }

      goto LABEL_10;
    }

    v115 = v161;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static UserFeedbackDevicePreferenceResponse.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  switch(v2)
  {
    case 1:
      if (v5 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    case 2:
      if (v5 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    case 3:
      v8 = *(a1 + 8);

      if (v5 != 3)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    case 4:
      switch(*a1)
      {
        case 1:
          v9 = v5 == 4 && v3 == 1;
          break;
        case 2:
          v9 = v5 == 4 && v3 == 2;
          break;
        case 3:
          v9 = v5 == 4 && v3 == 3;
          break;
        case 4:
          v9 = v5 == 4 && v3 == 4;
          break;
        case 5:
          v9 = v5 == 4 && v3 == 5;
          break;
        case 6:
          v9 = v5 == 4 && v3 == 6;
          break;
        default:
          if (v5 != 4 || (v4 | v3) != 0)
          {
            goto LABEL_38;
          }

          goto LABEL_11;
      }

      if (!v9 || v4 != 0)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    default:
      if (*(a2 + 16))
      {
LABEL_38:
        v7 = 0;
      }

      else
      {
LABEL_11:
        v7 = 1;
      }

      sub_266A8CE8C(v3, v4, v5);
      v11 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v11, v12, v2);
      sub_266A8244C(v3, v4, v5);
      return v7;
  }
}

uint64_t static UserFeedbackDevicePreferenceResponse.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v17 = sub_266A93E94(*a1, *a2);
      v31 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v31, v32, 1);
      v20 = OUTLINED_FUNCTION_17_4();
      v22 = 1;
      goto LABEL_23;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_25;
      }

      v17 = sub_266A93E94(*a1, *a2);
      v18 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v18, v19, 2);
      v20 = OUTLINED_FUNCTION_17_4();
      v22 = 2;
      goto LABEL_23;
    case 3:
      if (v7 != 3)
      {
        v34 = *(a1 + 8);

LABEL_25:
        v35 = OUTLINED_FUNCTION_17_4();
        sub_266A8CE8C(v35, v36, v7);
        v37 = OUTLINED_FUNCTION_9_2();
        sub_266A8244C(v37, v38, v4);
        v39 = OUTLINED_FUNCTION_17_4();
        sub_266A8244C(v39, v40, v7);
        return 0;
      }

      v23 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_266A8CE8C(v23, v3, 3);
        v42 = OUTLINED_FUNCTION_9_2();
        sub_266A8CE8C(v42, v43, 3);
        v44 = OUTLINED_FUNCTION_9_2();
        sub_266A8244C(v44, v45, 3);
        v16 = OUTLINED_FUNCTION_9_2();
        v47 = 3;
LABEL_90:
        sub_266A8244C(v16, v46, v47);
        return 1;
      }

      v17 = sub_266ABE1C4();
      v25 = OUTLINED_FUNCTION_17_4();
      sub_266A8CE8C(v25, v26, 3);
      v27 = OUTLINED_FUNCTION_9_2();
      sub_266A8CE8C(v27, v28, 3);
      v29 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v29, v30, 3);
      v20 = OUTLINED_FUNCTION_17_4();
      v22 = 3;
LABEL_23:
      sub_266A8244C(v20, v21, v22);
      return v17 & 1;
    case 4:
      v12 = *a1;
      switch(v2)
      {
        case 1:
          if (v7 != 4 || v5 != 1 || v6 != 0)
          {
            goto LABEL_25;
          }

          v63 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v63, v64, 4);
          v41 = 1;
          sub_266A8244C(1, 0, 4);
          return v41;
        case 2:
          if (v7 != 4 || v5 != 2 || v6 != 0)
          {
            goto LABEL_25;
          }

          v55 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v55, v56, 4);
          v16 = 2;
          goto LABEL_89;
        case 3:
          if (v7 != 4 || v5 != 3 || v6 != 0)
          {
            goto LABEL_25;
          }

          v59 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v59, v60, 4);
          v16 = 3;
          goto LABEL_89;
        case 4:
          if (v7 != 4 || v5 != 4 || v6 != 0)
          {
            goto LABEL_25;
          }

          v51 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v51, v52, 4);
          v16 = 4;
          goto LABEL_89;
        case 5:
          if (v7 != 4 || v5 != 5 || v6 != 0)
          {
            goto LABEL_25;
          }

          v67 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v67, v68, 4);
          v16 = 5;
          goto LABEL_89;
        case 6:
          if (v7 != 4 || v5 != 6 || v6 != 0)
          {
            goto LABEL_25;
          }

          v71 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v71, v72, 4);
          v16 = 6;
          goto LABEL_89;
        default:
          if (v7 != 4 || (v6 | v5) != 0)
          {
            goto LABEL_25;
          }

          v14 = OUTLINED_FUNCTION_9_2();
          sub_266A8244C(v14, v15, 4);
          v16 = 0;
LABEL_89:
          v46 = 0;
          v47 = 4;
          break;
      }

      goto LABEL_90;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_25;
      }

      v8 = OUTLINED_FUNCTION_9_2();
      sub_266A8244C(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_17_4();
      sub_266A8244C(v10, v11, 0);
      if (v2 != 13)
      {
        return v5 != 13 && (v5 ^ v2) == 0;
      }

      return v5 == 13;
  }
}

uint64_t sub_266AA1568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000266AC0560 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1604(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000266AC0500 == a2;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6976654474736562 && a2 == 0xEA00000000006563;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000266AC0520 == a2;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x41676E696B6F6F6CLL && a2 == 0xEF65636976654474;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x41676E696B6F6F6CLL && a2 == 0xEF6E656572635374;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6572726566657270 && a2 == 0xEF65636976654464;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6854646568737570 && a2 == 0xEF6E6F7474754265;
              if (v11 || (sub_266ABE1C4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536F546573696172 && a2 == 0xEC0000006B616570;
                if (v12 || (sub_266ABE1C4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000266AC0540 == a2;
                  if (v13 || (sub_266ABE1C4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x69725465736C6166 && a2 == 0xEC00000072656767;
                    if (v14 || (sub_266ABE1C4() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_266ABE1C4();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_266AA1990(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

unint64_t sub_266AA19D0(char a1)
{
  result = 0x6976654474736562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x41676E696B6F6F6CLL;
      break;
    case 4:
      result = 0x41676E696B6F6F6CLL;
      break;
    case 5:
      result = 0x6572726566657270;
      break;
    case 6:
      result = 0x6854646568737570;
      break;
    case 7:
      result = 0x536F546573696172;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x69725465736C6166;
      break;
    case 10:
      result = 0x726568746FLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_266AA1B54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1BF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA1C64()
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

uint64_t sub_266AA1CA0(uint64_t a1)
{
  v2 = sub_266AA4100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1CDC(uint64_t a1)
{
  v2 = sub_266AA4100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1568(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA1D48(uint64_t a1)
{
  v2 = sub_266AA4058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1D84(uint64_t a1)
{
  v2 = sub_266AA4058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1DC0(uint64_t a1)
{
  v2 = sub_266AA4004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1DFC(uint64_t a1)
{
  v2 = sub_266AA4004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA1E68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266AA1988();
  *a1 = result;
  return result;
}

uint64_t sub_266AA1E90(uint64_t a1)
{
  v2 = sub_266AA3CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1ECC(uint64_t a1)
{
  v2 = sub_266AA3CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1F08(uint64_t a1)
{
  v2 = sub_266AA3D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1F44(uint64_t a1)
{
  v2 = sub_266AA3D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1F80(uint64_t a1)
{
  v2 = sub_266AA3FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA1FBC(uint64_t a1)
{
  v2 = sub_266AA3FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA1FF8(uint64_t a1)
{
  v2 = sub_266AA3F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2034(uint64_t a1)
{
  v2 = sub_266AA3F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1B54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA20A0(uint64_t a1)
{
  v2 = sub_266AA3D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA20DC(uint64_t a1)
{
  v2 = sub_266AA3D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA211C(uint64_t a1)
{
  v2 = sub_266AA3F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2158(uint64_t a1)
{
  v2 = sub_266AA3F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2194(uint64_t a1)
{
  v2 = sub_266AA3E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA21D0(uint64_t a1)
{
  v2 = sub_266AA3E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA220C(uint64_t a1)
{
  v2 = sub_266AA3E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA2248(uint64_t a1)
{
  v2 = sub_266AA3E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA2284(uint64_t a1)
{
  v2 = sub_266AA3DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA22C0(uint64_t a1)
{
  v2 = sub_266AA3DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserFeedbackDevicePreferenceResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v30;
  a27 = v31;
  v152 = v28;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24D8, &qword_266AC3768);
  v35 = OUTLINED_FUNCTION_1_0(v34);
  v146 = v36;
  v147 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_3();
  v145 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24E0, &qword_266AC3770);
  v42 = OUTLINED_FUNCTION_1_0(v41);
  v135 = v43;
  v136 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_3();
  v134 = v47;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24E8, &qword_266AC3778);
  OUTLINED_FUNCTION_1_0(v133);
  v132[15] = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24F0, &qword_266AC3780);
  OUTLINED_FUNCTION_0_5(v53, &a23);
  v132[12] = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B24F8, &qword_266AC3788);
  v60 = OUTLINED_FUNCTION_1_0(v59);
  v143 = v61;
  v144 = v60;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8_3();
  v142 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2500, &qword_266AC3790);
  v67 = OUTLINED_FUNCTION_1_0(v66);
  v140 = v68;
  v141 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_3();
  v139 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2508, &qword_266AC3798);
  OUTLINED_FUNCTION_0_5(v73, &a20);
  v132[9] = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2510, &qword_266AC37A0);
  OUTLINED_FUNCTION_0_5(v79, &a10);
  v132[6] = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2518, &qword_266AC37A8);
  OUTLINED_FUNCTION_0_5(v85, v153);
  v132[3] = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_6(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2520, &qword_266AC37B0);
  v92 = OUTLINED_FUNCTION_1_0(v91);
  v137 = v93;
  v138 = v92;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v96);
  v98 = v132 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2528, &qword_266AC37B8);
  OUTLINED_FUNCTION_1_0(v99);
  v132[1] = v100;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_20_5();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2530, &qword_266AC37C0);
  v150 = OUTLINED_FUNCTION_1_0(v104);
  v151 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v108);
  v110 = v132 - v109;
  v111 = v27[1];
  v148 = *v27;
  v112 = *(v27 + 16);
  v113 = v33;
  v114 = v33[3];
  v115 = v113[4];
  v116 = __swift_project_boxed_opaque_existential_1(v113, v114);
  sub_266AA3CBC();
  v149 = v110;
  sub_266ABE2C4();
  switch(v112)
  {
    case 1:
      a11 = 5;
      sub_266AA3F08();
      v125 = v139;
      OUTLINED_FUNCTION_25_2();
      a10 = v148;
      sub_266AA3EB4();
      v126 = v141;
      sub_266ABE154();
      v127 = v140;
      goto LABEL_8;
    case 2:
      a13 = 6;
      sub_266AA3E60();
      v125 = v142;
      OUTLINED_FUNCTION_25_2();
      a12 = v148;
      sub_266AA3EB4();
      v126 = v144;
      sub_266ABE154();
      v127 = v143;
LABEL_8:
      (*(v127 + 8))(v125, v126);
      v120 = *(v151 + 8);
      v119 = v111;
      goto LABEL_9;
    case 3:
      a17 = 10;
      sub_266AA3D10();
      v128 = v145;
      v98 = v150;
      sub_266ABE0C4();
      v129 = v147;
      sub_266ABE114();
      (*(v146 + 8))(v128, v129);
      v119 = OUTLINED_FUNCTION_23_3();
LABEL_9:
      v121 = v98;
      goto LABEL_10;
    case 4:
      switch(v148)
      {
        case 1:
          OUTLINED_FUNCTION_28_3();
          sub_266AA4004();
          OUTLINED_FUNCTION_10_6(&v151);
          v123 = OUTLINED_FUNCTION_6_7(&v152);
          v130 = v153;
          goto LABEL_15;
        case 2:
          OUTLINED_FUNCTION_27_4();
          sub_266AA3FB0();
          OUTLINED_FUNCTION_10_6(&v154);
          v123 = OUTLINED_FUNCTION_6_7(&a9);
          v130 = &a10;
          goto LABEL_15;
        case 3:
          OUTLINED_FUNCTION_29_4();
          sub_266AA3F5C();
          OUTLINED_FUNCTION_10_6(&a18);
          v123 = OUTLINED_FUNCTION_6_7(&a19);
          v130 = &a20;
          goto LABEL_15;
        case 4:
          a14 = 7;
          sub_266AA3E0C();
          OUTLINED_FUNCTION_10_6(&a21);
          v123 = OUTLINED_FUNCTION_6_7(&a22);
          v130 = &a23;
LABEL_15:
          v124 = *(v130 - 32);
          goto LABEL_16;
        case 5:
          a15 = 8;
          sub_266AA3DB8();
          OUTLINED_FUNCTION_10_6(&a24);
          v123 = OUTLINED_FUNCTION_6_7(&a25);
          v124 = v133;
          goto LABEL_16;
        case 6:
          a16 = 9;
          sub_266AA3D64();
          v131 = v134;
          v116 = v149;
          v114 = v150;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE0C4();
          (*(v135 + 8))(v131, v136);
          goto LABEL_17;
        default:
          v153[2] = 0;
          sub_266AA4100();
          v116 = v149;
          v114 = v150;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE0C4();
          OUTLINED_FUNCTION_12_6(&v150);
          v123 = v29;
          v124 = v99;
LABEL_16:
          v122(v123, v124);
LABEL_17:
          (*(v151 + 8))(v116, v114);
          break;
      }

      goto LABEL_18;
    default:
      OUTLINED_FUNCTION_26_3();
      sub_266AA4058();
      v117 = v150;
      sub_266ABE0C4();
      v153[3] = v148;
      sub_266AA40AC();
      v118 = v138;
      sub_266ABE0F4();
      (*(v137 + 8))(v98, v118);
      v119 = OUTLINED_FUNCTION_23_3();
      v121 = v117;
LABEL_10:
      v120(v119, v121);
LABEL_18:
      OUTLINED_FUNCTION_30_1();
      return;
  }
}

uint64_t UserFeedbackDevicePreferenceResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v6 = 5;
      goto LABEL_11;
    case 2:
      v6 = 6;
LABEL_11:
      MEMORY[0x26D5E8B00](v6);

      return sub_266A79E4C();
    case 3:
      MEMORY[0x26D5E8B00](10);

      return sub_266ABDB04();
    case 4:
      v4 = *v0;
      switch(v1)
      {
        case 1:
          v5 = 2;
          break;
        case 2:
          v5 = 3;
          break;
        case 3:
          v5 = 4;
          break;
        case 4:
          v5 = 7;
          break;
        case 5:
          v5 = 8;
          break;
        case 6:
          v5 = 9;
          break;
        default:
          v5 = 0;
          break;
      }

      return MEMORY[0x26D5E8B00](v5);
    default:
      MEMORY[0x26D5E8B00](1);
      if (v1 == 13)
      {
        return sub_266ABE264();
      }

      sub_266ABE264();
      v5 = v1;
      return MEMORY[0x26D5E8B00](v5);
  }
}

uint64_t UserFeedbackDevicePreferenceResponse.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_32_2();
  UserFeedbackDevicePreferenceResponse.hash(into:)();
  return sub_266ABE2A4();
}

void UserFeedbackDevicePreferenceResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, unsigned __int8 a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  a26 = v28;
  a27 = v29;
  v226 = v27;
  v31 = v30;
  v221 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25A8, &qword_266AC37C8);
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v212 = v35;
  v213 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_3();
  v219 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25B0, &qword_266AC37D0);
  v41 = OUTLINED_FUNCTION_1_0(v40);
  v210 = v42;
  v211 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8_3();
  v218 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25B8, &qword_266AC37D8);
  v208 = OUTLINED_FUNCTION_1_0(v47);
  v209 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_3();
  v224 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25C0, &qword_266AC37E0);
  OUTLINED_FUNCTION_0_5(v53, &a25);
  v205 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8_3();
  v217 = v58;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25C8, &qword_266AC37E8);
  OUTLINED_FUNCTION_1_0(v207);
  v220 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_8_3();
  v223 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25D0, &qword_266AC37F0);
  OUTLINED_FUNCTION_0_5(v64, &a23);
  v203 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_8_3();
  v222 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25D8, &qword_266AC37F8);
  OUTLINED_FUNCTION_0_5(v70, &a21);
  v201 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_8_3();
  v216 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25E0, &qword_266AC3800);
  OUTLINED_FUNCTION_0_5(v76, &a19);
  v199 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_8_3();
  v215 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25E8, &qword_266AC3808);
  OUTLINED_FUNCTION_0_5(v82, &v228);
  v195 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_8_3();
  v214 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25F0, &qword_266AC3810);
  OUTLINED_FUNCTION_0_5(v88, &a10);
  v197 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v92);
  v94 = &v187 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B25F8, &qword_266AC3818);
  OUTLINED_FUNCTION_1_0(v95);
  v194 = v96;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v99);
  v101 = &v187 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2600, &qword_266AC3820);
  OUTLINED_FUNCTION_1_0(v102);
  v104 = v103;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v107);
  v109 = &v187 - v108;
  v110 = v31[3];
  v111 = v31[4];
  v225 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v110);
  sub_266AA3CBC();
  v112 = v226;
  sub_266ABE2B4();
  if (v112)
  {
    goto LABEL_10;
  }

  v192 = v101;
  v191 = v95;
  v193 = v94;
  v114 = v222;
  v113 = v223;
  v226 = v104;
  v115 = v109;
  v116 = sub_266ABE0B4();
  sub_266A86BD4(v116, 0);
  v120 = v102;
  if (v118 == v119 >> 1)
  {
    v121 = v226;
    v122 = v109;
LABEL_9:
    v136 = sub_266ABDEF4();
    swift_allocError();
    v138 = v137;
    v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0) + 48);
    *v138 = &type metadata for UserFeedbackDevicePreferenceResponse;
    sub_266ABDFF4();
    OUTLINED_FUNCTION_21_5();
    (*(*(v136 - 8) + 104))(v138, *MEMORY[0x277D84160], v136);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v121 + 8))(v122, v120);
LABEL_10:
    v114 = v225;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_30_1();
    return;
  }

  v189 = 0;
  if (v118 < (v119 >> 1))
  {
    v123 = v102;
    v188 = *(v117 + v118);
    v124 = sub_266A86BCC(v118 + 1);
    v126 = v125;
    v128 = v127;
    swift_unknownObjectRelease();
    v190 = v124;
    v122 = v115;
    if (v126 == v128 >> 1)
    {
      v129 = v220;
      v130 = v221;
      switch(v188)
      {
        case 1:
          OUTLINED_FUNCTION_26_3();
          sub_266AA4058();
          OUTLINED_FUNCTION_4_7();
          sub_266AA41A8();
          v156 = v198;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE024();
          OUTLINED_FUNCTION_19_4();
          v167 = *(v166 - 256);
          swift_unknownObjectRelease();
          v168 = OUTLINED_FUNCTION_6_7(&a9);
          v169(v168, v156);
          v170 = OUTLINED_FUNCTION_2_6();
          v171(v170);
          v113 = 0;
          v143 = 0;
          v135 = v227[3];
          goto LABEL_24;
        case 2:
          OUTLINED_FUNCTION_28_3();
          sub_266AA4004();
          v113 = v214;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6(v227);
          v146(v113, v196);
          v147 = OUTLINED_FUNCTION_2_6();
          v148(v147);
          OUTLINED_FUNCTION_24_4();
          v135 = 1;
          goto LABEL_23;
        case 3:
          OUTLINED_FUNCTION_27_4();
          sub_266AA3FB0();
          v113 = v215;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6(&a18);
          v149(v113, v200);
          v150 = OUTLINED_FUNCTION_2_6();
          v151(v150);
          OUTLINED_FUNCTION_24_4();
          v135 = 2;
          goto LABEL_23;
        case 4:
          OUTLINED_FUNCTION_29_4();
          sub_266AA3F5C();
          v113 = v216;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6(&a20);
          v140(v113, v202);
          v141 = OUTLINED_FUNCTION_2_6();
          v142(v141);
          OUTLINED_FUNCTION_24_4();
          v135 = 3;
          goto LABEL_23;
        case 5:
          a11 = 5;
          sub_266AA3F08();
          OUTLINED_FUNCTION_4_7();
          sub_266AA4154();
          v157 = v204;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE084();
          OUTLINED_FUNCTION_19_4();
          v173 = *(v172 - 256);
          swift_unknownObjectRelease();
          v174 = OUTLINED_FUNCTION_6_7(&a22);
          v175(v174, v157);
          v176 = OUTLINED_FUNCTION_2_6();
          v177(v176);
          v113 = 0;
          v135 = a10;
          v143 = 1;
          goto LABEL_24;
        case 6:
          a13 = 6;
          sub_266AA3E60();
          v158 = v113;
          OUTLINED_FUNCTION_4_7();
          sub_266AA4154();
          v159 = v207;
          OUTLINED_FUNCTION_13_4();
          sub_266ABE084();
          OUTLINED_FUNCTION_19_4();
          v179 = *(v178 - 256);
          swift_unknownObjectRelease();
          (*(v129 + 8))(v158, v159);
          v180 = OUTLINED_FUNCTION_2_6();
          v181(v180);
          v113 = 0;
          v135 = a12;
          v143 = 2;
          goto LABEL_24;
        case 7:
          a14 = 7;
          sub_266AA3E0C();
          v152 = v217;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6(&a24);
          v153(v152, v206);
          v154 = OUTLINED_FUNCTION_2_6();
          v155(v154);
          v113 = 0;
          v135 = 4;
          goto LABEL_17;
        case 8:
          a15 = 8;
          sub_266AA3DB8();
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          v162 = OUTLINED_FUNCTION_23_3();
          v163(v162);
          v164 = OUTLINED_FUNCTION_2_6();
          v165(v164);
          OUTLINED_FUNCTION_24_4();
          v135 = 5;
          goto LABEL_23;
        case 9:
          a16 = 9;
          sub_266AA3D64();
          v113 = v218;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          (*(v210 + 8))(v113, v211);
          v144 = OUTLINED_FUNCTION_2_6();
          v145(v144);
          OUTLINED_FUNCTION_24_4();
          v135 = 6;
          goto LABEL_23;
        case 10:
          a17 = 10;
          sub_266AA3D10();
          OUTLINED_FUNCTION_4_7();
          v160 = v213;
          v161 = sub_266ABE044();
          v114 = v225;
          v135 = v161;
          v113 = v182;
          OUTLINED_FUNCTION_18_5();
          v183 = OUTLINED_FUNCTION_23_3();
          v184(v183, v160);
          v185 = OUTLINED_FUNCTION_2_6();
          v186(v185);
          v143 = 3;
          goto LABEL_24;
        default:
          v227[2] = 0;
          sub_266AA4100();
          v131 = v192;
          OUTLINED_FUNCTION_4_7();
          OUTLINED_FUNCTION_18_5();
          OUTLINED_FUNCTION_12_6(&v226);
          v132(v131, v191);
          v133 = OUTLINED_FUNCTION_2_6();
          v134(v133);
          v135 = 0;
          v113 = 0;
LABEL_17:
          v143 = 4;
LABEL_23:
          v114 = v225;
LABEL_24:
          *v130 = v135;
          *(v130 + 8) = v113;
          *(v130 + 16) = v143;
          break;
      }

      goto LABEL_11;
    }

    v121 = v226;
    v120 = v123;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_266AA3C3C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_266ABE244();
  UserFeedbackDevicePreferenceResponse.hash(into:)();
  return sub_266ABE2A4();
}

unint64_t sub_266AA3CBC()
{
  result = qword_2800B2538;
  if (!qword_2800B2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2538);
  }

  return result;
}

unint64_t sub_266AA3D10()
{
  result = qword_2800B2540;
  if (!qword_2800B2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2540);
  }

  return result;
}

unint64_t sub_266AA3D64()
{
  result = qword_2800B2548;
  if (!qword_2800B2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2548);
  }

  return result;
}

unint64_t sub_266AA3DB8()
{
  result = qword_2800B2550;
  if (!qword_2800B2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2550);
  }

  return result;
}

unint64_t sub_266AA3E0C()
{
  result = qword_2800B2558;
  if (!qword_2800B2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2558);
  }

  return result;
}

unint64_t sub_266AA3E60()
{
  result = qword_2800B2560;
  if (!qword_2800B2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2560);
  }

  return result;
}

unint64_t sub_266AA3EB4()
{
  result = qword_2800B2568;
  if (!qword_2800B2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2568);
  }

  return result;
}

unint64_t sub_266AA3F08()
{
  result = qword_2800B2570;
  if (!qword_2800B2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2570);
  }

  return result;
}

unint64_t sub_266AA3F5C()
{
  result = qword_2800B2578;
  if (!qword_2800B2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2578);
  }

  return result;
}

unint64_t sub_266AA3FB0()
{
  result = qword_2800B2580;
  if (!qword_2800B2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2580);
  }

  return result;
}

unint64_t sub_266AA4004()
{
  result = qword_2800B2588;
  if (!qword_2800B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2588);
  }

  return result;
}

unint64_t sub_266AA4058()
{
  result = qword_2800B2590;
  if (!qword_2800B2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2590);
  }

  return result;
}

unint64_t sub_266AA40AC()
{
  result = qword_2800B2598;
  if (!qword_2800B2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2598);
  }

  return result;
}

unint64_t sub_266AA4100()
{
  result = qword_2800B25A0;
  if (!qword_2800B25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B25A0);
  }

  return result;
}

unint64_t sub_266AA4154()
{
  result = qword_2800B2608;
  if (!qword_2800B2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2608);
  }

  return result;
}

unint64_t sub_266AA41A8()
{
  result = qword_2800B2610;
  if (!qword_2800B2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2610);
  }

  return result;
}

unint64_t sub_266AA4200()
{
  result = qword_2800B2618;
  if (!qword_2800B2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2618);
  }

  return result;
}

unint64_t sub_266AA4258()
{
  result = qword_2800B2620;
  if (!qword_2800B2620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2628, &qword_266AC3890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2620);
  }

  return result;
}

unint64_t sub_266AA42C0()
{
  result = qword_2800B2630;
  if (!qword_2800B2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2630);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266AA4328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_266AA4368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_266AA43AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for UserFeedbackDevicePreferenceResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266AA4560(_BYTE *result, int a2, int a3)
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

uint64_t sub_266AA460C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266AA4694(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA4844()
{
  result = qword_2800B2638;
  if (!qword_2800B2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2638);
  }

  return result;
}

unint64_t sub_266AA489C()
{
  result = qword_2800B2640;
  if (!qword_2800B2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2640);
  }

  return result;
}

unint64_t sub_266AA48F4()
{
  result = qword_2800B2648;
  if (!qword_2800B2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2648);
  }

  return result;
}

unint64_t sub_266AA494C()
{
  result = qword_2800B2650;
  if (!qword_2800B2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2650);
  }

  return result;
}

unint64_t sub_266AA49A4()
{
  result = qword_2800B2658;
  if (!qword_2800B2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2658);
  }

  return result;
}

unint64_t sub_266AA49FC()
{
  result = qword_2800B2660;
  if (!qword_2800B2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2660);
  }

  return result;
}

unint64_t sub_266AA4A54()
{
  result = qword_2800B2668;
  if (!qword_2800B2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2668);
  }

  return result;
}

unint64_t sub_266AA4AAC()
{
  result = qword_2800B2670;
  if (!qword_2800B2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2670);
  }

  return result;
}

unint64_t sub_266AA4B04()
{
  result = qword_2800B2678;
  if (!qword_2800B2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2678);
  }

  return result;
}

unint64_t sub_266AA4B5C()
{
  result = qword_2800B2680;
  if (!qword_2800B2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2680);
  }

  return result;
}

unint64_t sub_266AA4BB4()
{
  result = qword_2800B2688;
  if (!qword_2800B2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2688);
  }

  return result;
}

unint64_t sub_266AA4C0C()
{
  result = qword_2800B2690;
  if (!qword_2800B2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2690);
  }

  return result;
}

unint64_t sub_266AA4C64()
{
  result = qword_2800B2698;
  if (!qword_2800B2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2698);
  }

  return result;
}

unint64_t sub_266AA4CBC()
{
  result = qword_2800B26A0;
  if (!qword_2800B26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26A0);
  }

  return result;
}

unint64_t sub_266AA4D14()
{
  result = qword_2800B26A8;
  if (!qword_2800B26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26A8);
  }

  return result;
}

unint64_t sub_266AA4D6C()
{
  result = qword_2800B26B0;
  if (!qword_2800B26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26B0);
  }

  return result;
}

unint64_t sub_266AA4DC4()
{
  result = qword_2800B26B8;
  if (!qword_2800B26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26B8);
  }

  return result;
}

unint64_t sub_266AA4E1C()
{
  result = qword_2800B26C0;
  if (!qword_2800B26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26C0);
  }

  return result;
}

unint64_t sub_266AA4E74()
{
  result = qword_2800B26C8;
  if (!qword_2800B26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26C8);
  }

  return result;
}

unint64_t sub_266AA4ECC()
{
  result = qword_2800B26D0;
  if (!qword_2800B26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26D0);
  }

  return result;
}

unint64_t sub_266AA4F24()
{
  result = qword_2800B26D8;
  if (!qword_2800B26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26D8);
  }

  return result;
}

unint64_t sub_266AA4F7C()
{
  result = qword_2800B26E0;
  if (!qword_2800B26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26E0);
  }

  return result;
}

unint64_t sub_266AA4FD4()
{
  result = qword_2800B26E8;
  if (!qword_2800B26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26E8);
  }

  return result;
}

unint64_t sub_266AA502C()
{
  result = qword_2800B26F0;
  if (!qword_2800B26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26F0);
  }

  return result;
}

unint64_t sub_266AA5084()
{
  result = qword_2800B26F8;
  if (!qword_2800B26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B26F8);
  }

  return result;
}

unint64_t sub_266AA50DC()
{
  result = qword_2800B2700;
  if (!qword_2800B2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2700);
  }

  return result;
}

unint64_t sub_266AA5134()
{
  result = qword_2800B2708;
  if (!qword_2800B2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2708);
  }

  return result;
}

unint64_t sub_266AA518C()
{
  result = qword_2800B2710;
  if (!qword_2800B2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2710);
  }

  return result;
}

unint64_t sub_266AA51E4()
{
  result = qword_2800B2718;
  if (!qword_2800B2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2718);
  }

  return result;
}

unint64_t sub_266AA523C()
{
  result = qword_2800B2720;
  if (!qword_2800B2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2720);
  }

  return result;
}

unint64_t sub_266AA5294()
{
  result = qword_2800B2728;
  if (!qword_2800B2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2728);
  }

  return result;
}

unint64_t sub_266AA52EC()
{
  result = qword_2800B2730;
  if (!qword_2800B2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2730);
  }

  return result;
}

unint64_t sub_266AA5344()
{
  result = qword_2800B2738;
  if (!qword_2800B2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2738);
  }

  return result;
}

unint64_t sub_266AA539C()
{
  result = qword_2800B2740;
  if (!qword_2800B2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2740);
  }

  return result;
}

unint64_t sub_266AA53F4()
{
  result = qword_2800B2748;
  if (!qword_2800B2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2748);
  }

  return result;
}

unint64_t sub_266AA544C()
{
  result = qword_2800B2750;
  if (!qword_2800B2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2750);
  }

  return result;
}

unint64_t sub_266AA54A4()
{
  result = qword_2800B2758;
  if (!qword_2800B2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2758);
  }

  return result;
}

unint64_t sub_266AA54FC()
{
  result = qword_2800B2760;
  if (!qword_2800B2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2760);
  }

  return result;
}

unint64_t sub_266AA5554()
{
  result = qword_2800B2768;
  if (!qword_2800B2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2768);
  }

  return result;
}

unint64_t sub_266AA55AC()
{
  result = qword_2800B2770;
  if (!qword_2800B2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2770);
  }

  return result;
}

unint64_t sub_266AA5604()
{
  result = qword_2800B2778;
  if (!qword_2800B2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2778);
  }

  return result;
}

unint64_t sub_266AA565C()
{
  result = qword_2800B2780;
  if (!qword_2800B2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2780);
  }

  return result;
}

unint64_t sub_266AA56B4()
{
  result = qword_2800B2788;
  if (!qword_2800B2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2788);
  }

  return result;
}

unint64_t sub_266AA570C()
{
  result = qword_2800B2790;
  if (!qword_2800B2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2790);
  }

  return result;
}

unint64_t sub_266AA5764()
{
  result = qword_2800B2798;
  if (!qword_2800B2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2798);
  }

  return result;
}

unint64_t sub_266AA57BC()
{
  result = qword_2800B27A0;
  if (!qword_2800B27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27A0);
  }

  return result;
}

unint64_t sub_266AA5814()
{
  result = qword_2800B27A8;
  if (!qword_2800B27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27A8);
  }

  return result;
}

unint64_t sub_266AA586C()
{
  result = qword_2800B27B0;
  if (!qword_2800B27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27B0);
  }

  return result;
}

unint64_t sub_266AA58C4()
{
  result = qword_2800B27B8;
  if (!qword_2800B27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27B8);
  }

  return result;
}

unint64_t sub_266AA591C()
{
  result = qword_2800B27C0;
  if (!qword_2800B27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27C0);
  }

  return result;
}

unint64_t sub_266AA5974()
{
  result = qword_2800B27C8;
  if (!qword_2800B27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27C8);
  }

  return result;
}

unint64_t sub_266AA59CC()
{
  result = qword_2800B27D0;
  if (!qword_2800B27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27D0);
  }

  return result;
}

unint64_t sub_266AA5A24()
{
  result = qword_2800B27D8;
  if (!qword_2800B27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27D8);
  }

  return result;
}

unint64_t sub_266AA5A7C()
{
  result = qword_2800B27E0;
  if (!qword_2800B27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27E0);
  }

  return result;
}

unint64_t sub_266AA5AD4()
{
  result = qword_2800B27E8;
  if (!qword_2800B27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27E8);
  }

  return result;
}

unint64_t sub_266AA5B2C()
{
  result = qword_2800B27F0;
  if (!qword_2800B27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27F0);
  }

  return result;
}

unint64_t sub_266AA5B84()
{
  result = qword_2800B27F8;
  if (!qword_2800B27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B27F8);
  }

  return result;
}

unint64_t sub_266AA5BDC()
{
  result = qword_2800B2800;
  if (!qword_2800B2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2800);
  }

  return result;
}

uint64_t static String.formatList<A>(items:keyPath:)(uint64_t a1, void *a2)
{
  v27[1] = a2;
  v3 = *(*a2 + *MEMORY[0x277D84DE8]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v27 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = sub_266ABDDF4();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v27 - v14);
  v30 = 0;
  v31 = 0xE000000000000000;
  v27[0] = a1;
  v29[3] = a1;
  v16 = sub_266ABDCC4();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D5E8450](v29, v16, WitnessTable);
  v29[2] = v29[0];
  sub_266ABDF94();
  sub_266ABDF64();
  v27[2] = sub_266ABDF84();
  v18 = (v9 + 32);
  v19 = (v4 + 32);
  for (i = (v4 + 8); ; (*i)(v7, v3))
  {
    sub_266ABDF74();
    (*v18)(v15, v13, v28);
    if (__swift_getEnumTagSinglePayload(v15, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v15;
    (*v19)(v7, v15 + *(TupleTypeMetadata2 + 48), v3);
    v22 = sub_266ABDC94();
    if (v22 >= 2)
    {
      if (v21 == v22 - 1)
      {
        v23 = v22 == 2;
        if (v22 == 2)
        {
          v24 = 0x20646E6120;
        }

        else
        {
          v24 = 0x20646E61202CLL;
        }

        if (v23)
        {
          v25 = 0xE500000000000000;
        }

        else
        {
          v25 = 0xE600000000000000;
        }

        MEMORY[0x26D5E83C0](v24, v25);
      }

      else if (v21 >= 1)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0](v29[0], v29[1]);
  }

  return v30;
}

uint64_t sub_266AA6004(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = (a1 << 16) | (a2 << 8) | a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266AC0EB0;
  v5 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v5;
  *(v4 + 32) = v3;

  return sub_266ABDAA4();
}

SiriCrossDeviceArbitrationFeedback::TrumpReason_optional __swiftcall TrumpReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266AA60B0()
{
  result = qword_2800B2808;
  if (!qword_2800B2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2808);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrumpReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *DeviceClass.unknownProductType(productType:)(_BYTE *a1)
{
  result = &unk_28783E630;
  switch(*v1)
  {
    case 1:
      result = &unk_28783E6C0;
      break;
    case 2:
      result = &unk_28783E780;
      break;
    case 3:
      result = &unk_28783E750;
      break;
    case 4:
      return result;
    case 5:
      if (*a1 == 3)
      {
        result = &unk_28783E660;
      }

      else
      {
        result = &unk_28783E690;
      }

      break;
    case 6:
      result = &unk_28783E720;
      break;
    case 7:
      result = &unk_28783E7B0;
      break;
    case 8:
      result = &unk_28783E7E0;
      break;
    case 9:
      result = &unk_28783E810;
      break;
    default:
      result = &unk_28783E6F0;
      break;
  }

  return result;
}

uint64_t DeviceClass.rawValue.getter()
{
  result = 0x656E6F687069;
  switch(*v0)
  {
    case 1:
      result = 1684107369;
      break;
    case 2:
      result = 1685024873;
      break;
    case 3:
      result = 0x6863746177;
      break;
    case 4:
      result = 0x7674656C707061;
      break;
    case 5:
      result = 0x6363616F69647561;
      break;
    case 6:
      result = 6513005;
      break;
    case 7:
      result = 0x647974696C616572;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    case 9:
      result = 0x6874666F656E6F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DeviceClass_optional __swiftcall DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_266AA6518@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceClass.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266AA6604()
{
  result = qword_2800B2818;
  if (!qword_2800B2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2818);
  }

  return result;
}

unint64_t sub_266AA665C()
{
  result = qword_2800B2820;
  if (!qword_2800B2820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2828, &qword_266AC5250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2820);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266AA679C()
{
  result = qword_2800B2830;
  if (!qword_2800B2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2830);
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DataCollectionGroup_optional __swiftcall DataCollectionGroup.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DataCollectionGroup.rawValue.getter()
{
  v1 = 0x6E4F6576696CLL;
  if (*v0 != 1)
  {
    v1 = 6447468;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7759204;
  }
}

uint64_t DataCollectionGroup.debugDescription.getter()
{
  v1 = 0x4F20676E6976694CLL;
  if (*v0 != 1)
  {
    v1 = 6447436;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7759172;
  }
}

uint64_t static DataCollectionGroup.groupTitle.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v4 = sub_266ABDA64();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t DataCollectionGroup.description.getter()
{
  v1 = sub_266ABD814();
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v5 = sub_266ABDA64();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  if (*v0)
  {
    *v0;
  }

  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t sub_266AA6AFC@<X0>(uint64_t *a1@<X8>)
{
  result = DataCollectionGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_266AA6C44()
{
  result = qword_2800B2838;
  if (!qword_2800B2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2840, &qword_266AC53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2838);
  }

  return result;
}

unint64_t sub_266AA6CAC()
{
  result = qword_2800B2848;
  if (!qword_2800B2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2848);
  }

  return result;
}

uint64_t sub_266AA6D00@<X0>(uint64_t *a1@<X8>)
{
  result = DataCollectionGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DataCollectionGroup(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA6E04()
{
  result = qword_2800B2850;
  if (!qword_2800B2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2850);
  }

  return result;
}

unint64_t sub_266AA6E5C()
{
  result = qword_2800B2858;
  if (!qword_2800B2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdvertisementProductType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA6FFC@<X0>(unint64_t *a1@<X8>)
{
  v3 = [v1 type];
  if (v3 == 1)
  {
    v4 = [v1 kind];
    if (v4 < 7)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = 0;
    }

    [v1 boostValue];
    *&v7 = v6;
    [v1 totalDecay];
    v9 = v8;
    [v1 currentDecay];
    v11 = v10;
    a1[3] = &type metadata for BoostModel;
    result = sub_266A9CEB0();
    a1[4] = result;
    *a1 = v5 | (v7 << 32);
    a1[1] = v9;
    a1[2] = v11;
  }

  else if (v3)
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  else
  {
    v13 = [v1 kind];
    if (v13 < 7)
    {
      v14 = (v13 + 1);
    }

    else
    {
      v14 = 0;
    }

    [v1 boostValue];
    *&v15 = v15;
    v16 = v14 | (LODWORD(v15) << 32) | 0x80000000;
    a1[3] = &type metadata for BoostModel;
    result = sub_266A9CEB0();
    a1[4] = result;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = v16;
  }

  return result;
}

uint64_t static BoostType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0 && v3 == v2)
    {
      return *(&v2 + 1) == *(&v3 + 1);
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_8_8(a1, a2);
  v12 = v10 == v5 && v7 == v9;
  v13 = v12 & v4;
  if (v8 == v6)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AA71E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697961636564 && a2 == 0xE800000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

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

uint64_t sub_266AA72AC(char a1)
{
  if (a1)
  {
    return 0x6465786966;
  }

  else
  {
    return 0x676E697961636564;
  }
}

uint64_t sub_266AA72E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6365446C61746F74 && a2 == 0xEA00000000007961;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x44746E6572727563 && a2 == 0xEC00000079616365)
      {

        return 3;
      }

      else
      {
        v9 = sub_266ABE1C4();

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

uint64_t sub_266AA7440(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6365446C61746F74;
      break;
    case 3:
      result = 0x44746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266AA74C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

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

uint64_t sub_266AA7588(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_266AA75BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA71E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA75E4(uint64_t a1)
{
  v2 = sub_266AA83E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA7620(uint64_t a1)
{
  v2 = sub_266AA83E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA7664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA72E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA768C(uint64_t a1)
{
  v2 = sub_266AA84E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA76C8(uint64_t a1)
{
  v2 = sub_266AA84E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266AA770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA74C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AA7734(uint64_t a1)
{
  v2 = sub_266AA8438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA7770(uint64_t a1)
{
  v2 = sub_266AA8438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2868, &qword_266AC5640);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2870, &qword_266AC5648);
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v38 = v13;
  v39 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2878, &qword_266AC5650);
  OUTLINED_FUNCTION_1_0(v19);
  v41 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v26 = *v1;
  v28 = v1[1];
  v27 = v1[2];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA83E4();
  sub_266ABE2C4();
  if ((v26 & 0x80000000) != 0)
  {
    v51 = 1;
    sub_266AA8438();
    sub_266ABE0C4();
    v50 = v26;
    v49 = 0;
    sub_266AA848C();
    v32 = v37;
    v33 = v40;
    sub_266ABE154();
    if (!v33)
    {
      v48 = 1;
      sub_266ABE144();
    }

    (*(v36 + 8))(v10, v32);
  }

  else
  {
    v47 = 0;
    sub_266AA84E0();
    sub_266ABE0C4();
    v46 = v26;
    v45 = 0;
    sub_266AA848C();
    v30 = v39;
    v31 = v40;
    sub_266ABE154();
    if (!v31)
    {
      v44 = 1;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE144();
      v43 = 2;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE134();
      v42 = 3;
      OUTLINED_FUNCTION_5_6();
      sub_266ABE134();
    }

    (*(v38 + 8))(v18, v30);
  }

  return (*(v41 + 8))(v25, v19);
}

uint64_t BoostType.hash(into:)()
{
  v1 = *v0;
  if ((*v0 & 0x80000000) != 0)
  {
    MEMORY[0x26D5E8B00](1);
    MEMORY[0x26D5E8B00](v1);
    return sub_266ABE284();
  }

  else
  {
    v3 = v0[1];
    v2 = v0[2];
    MEMORY[0x26D5E8B00](0);
    MEMORY[0x26D5E8B00](v1);
    sub_266ABE284();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x26D5E8B40](v4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x26D5E8B40](v5);
  }
}

uint64_t BoostType.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

void BoostType.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  *&v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28A0, &qword_266AC5658);
  OUTLINED_FUNCTION_1_0(v63);
  *&v64 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v59[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28A8, &qword_266AC5660);
  OUTLINED_FUNCTION_1_0(v9);
  v65 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  v15 = &v59[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28B0, &unk_266AC5668);
  OUTLINED_FUNCTION_1_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v21);
  v22 = a1[3];
  v23 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_266AA83E4();
  v24 = v68;
  sub_266ABE2B4();
  if (v24)
  {
    goto LABEL_9;
  }

  v62 = v15;
  v25 = v66;
  v68 = v18;
  v26 = sub_266ABE0B4();
  sub_266A86550(v26, 0);
  if (v28 == v29 >> 1)
  {
LABEL_8:
    v35 = sub_266ABDEF4();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0) + 48);
    *v37 = &type metadata for BoostType;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_1_7();
    v40(v39, v16);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    return;
  }

  v61 = v16;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
    return;
  }

  v60 = *(v27 + v28);
  sub_266A86BCC(v28 + 1);
  v31 = v30;
  v33 = v32;
  swift_unknownObjectRelease();
  if (v31 != v33 >> 1)
  {
    v16 = v61;
    goto LABEL_8;
  }

  if (v60)
  {
    v78 = 1;
    sub_266AA8438();
    v34 = v8;
    sub_266ABDFE4();
    v76 = 0;
    sub_266AA8D0C();
    v41 = v63;
    sub_266ABE084();
    v42 = v77;
    v75 = 1;
    sub_266ABE074();
    v43 = v64;
    v48 = v47;
    swift_unknownObjectRelease();
    (*(v43 + 8))(v34, v41);
    v49 = OUTLINED_FUNCTION_1_7();
    v50(v49, v61);
    v51 = v42 | (v48 << 32) | 0x80000000;
    v52 = 0uLL;
  }

  else
  {
    v74 = 0;
    sub_266AA84E0();
    sub_266ABDFE4();
    v72 = 0;
    sub_266AA8D0C();
    sub_266ABE084();
    v44 = v73;
    v71 = 1;
    sub_266ABE074();
    v46 = v45;
    v70 = 2;
    sub_266ABE064();
    v64 = v53;
    v69 = 3;
    sub_266ABE064();
    v63 = v54;
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_2_7();
    v56(v55);
    v57 = OUTLINED_FUNCTION_4_8();
    v58(v57);
    v51 = v44 | (v46 << 32);
    *&v52 = v64;
    *(&v52 + 1) = v63;
  }

  *v25 = v51;
  *(v25 + 8) = v52;
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

uint64_t sub_266AA8350()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

SiriCrossDeviceArbitrationFeedback::BoostKind_optional __swiftcall BoostKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266AA83BC@<X0>(uint64_t *a1@<X8>)
{
  result = BoostKind.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266AA83E4()
{
  result = qword_2800B2880;
  if (!qword_2800B2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2880);
  }

  return result;
}

unint64_t sub_266AA8438()
{
  result = qword_2800B2888;
  if (!qword_2800B2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2888);
  }

  return result;
}

unint64_t sub_266AA848C()
{
  result = qword_2800B2890;
  if (!qword_2800B2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2890);
  }

  return result;
}

unint64_t sub_266AA84E0()
{
  result = qword_2800B2898;
  if (!qword_2800B2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2898);
  }

  return result;
}

__n128 BoostModel.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 BoostModel.type.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t BoostModel.description.getter()
{
  if ((*v0 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_9_4();
    MEMORY[0x26D5E83C0](61, 0xE100000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCF4();
  }

  else
  {
    v1 = v0[1];
    v2 = v0[2];
    sub_266ABDEA4();
    OUTLINED_FUNCTION_9_4();
    MEMORY[0x26D5E83C0](61, 0xE100000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCF4();
    MEMORY[0x26D5E83C0](2128928, 0xE300000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCE4();
    MEMORY[0x26D5E83C0](543584032, 0xE400000000000000);
    OUTLINED_FUNCTION_7_9();
    sub_266ABDCE4();
  }

  return 0;
}

uint64_t sub_266AA8778(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266AA8808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA8778(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266AA8834(uint64_t a1)
{
  v2 = sub_266AA8D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AA8870(uint64_t a1)
{
  v2 = sub_266AA8D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoostModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28C0, &qword_266AC5678);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  *v14 = *v1;
  v11 = *(v1 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA8D60();
  sub_266ABE2C4();
  *&v14[3] = *v14;
  v14[5] = v11;
  sub_266AA8DB4();
  sub_266ABE154();
  return (*(v5 + 8))(v10, v3);
}

uint64_t BoostModel.hash(into:)()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return BoostType.hash(into:)();
}

uint64_t BoostModel.hashValue.getter()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t BoostModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B28D8, &qword_266AC5680);
  OUTLINED_FUNCTION_1_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AA8D60();
  sub_266ABE2B4();
  if (!v2)
  {
    sub_266AA8E08();
    sub_266ABE084();
    (*(v7 + 8))(v12, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_266AA8C08()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  sub_266ABE244();
  BoostType.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t static BoostModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0 && v3 == v2)
    {
      return *(&v2 + 1) == *(&v3 + 1);
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_8_8(a1, a2);
  v12 = v10 == v5 && v7 == v9;
  v13 = v12 & v4;
  if (v8 == v6)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_266AA8D0C()
{
  result = qword_2800B28B8;
  if (!qword_2800B28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28B8);
  }

  return result;
}

unint64_t sub_266AA8D60()
{
  result = qword_2800B28C8;
  if (!qword_2800B28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28C8);
  }

  return result;
}

unint64_t sub_266AA8DB4()
{
  result = qword_2800B28D0;
  if (!qword_2800B28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28D0);
  }

  return result;
}

unint64_t sub_266AA8E08()
{
  result = qword_2800B28E0;
  if (!qword_2800B28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28E0);
  }

  return result;
}

unint64_t sub_266AA8E60()
{
  result = qword_2800B28E8;
  if (!qword_2800B28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28E8);
  }

  return result;
}

unint64_t sub_266AA8EB8()
{
  result = qword_2800B28F0;
  if (!qword_2800B28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28F0);
  }

  return result;
}

unint64_t sub_266AA8F0C(void *a1)
{
  a1[1] = sub_266AA8F44();
  a1[2] = sub_266AA8F98();
  result = sub_266AA8FEC();
  a1[3] = result;
  return result;
}

unint64_t sub_266AA8F44()
{
  result = qword_2800B28F8;
  if (!qword_2800B28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B28F8);
  }

  return result;
}

unint64_t sub_266AA8F98()
{
  result = qword_2800B2900;
  if (!qword_2800B2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2900);
  }

  return result;
}

unint64_t sub_266AA8FEC()
{
  result = qword_2800B2908;
  if (!qword_2800B2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2908);
  }

  return result;
}

unint64_t sub_266AA9044()
{
  result = qword_2800B2910;
  if (!qword_2800B2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2910);
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

uint64_t getEnumTagSinglePayload for BoostKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BoostKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266AA9260(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 536870910;
    }

    else
    {
      v2 = ((*a1 >> 2) & 0x1FFFFFFE | (*a1 >> 31)) ^ 0x1FFFFFFF;
      if (v2 >= 0x1FFFFFFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_266AA92B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x1FFFFFFF;
    if (a3 >= 0x1FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (8 * ((-a2 >> 1) & 0xFFFFFFF)) | (a2 << 31);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoostModel.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BoostType.DecayingCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266AA94C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AA95A0()
{
  result = qword_2800B2918;
  if (!qword_2800B2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2918);
  }

  return result;
}

unint64_t sub_266AA95F8()
{
  result = qword_2800B2920;
  if (!qword_2800B2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2920);
  }

  return result;
}

unint64_t sub_266AA9650()
{
  result = qword_2800B2928;
  if (!qword_2800B2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2928);
  }

  return result;
}

unint64_t sub_266AA96A8()
{
  result = qword_2800B2930;
  if (!qword_2800B2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2930);
  }

  return result;
}

unint64_t sub_266AA9700()
{
  result = qword_2800B2938;
  if (!qword_2800B2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2938);
  }

  return result;
}

unint64_t sub_266AA9758()
{
  result = qword_2800B2940;
  if (!qword_2800B2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2940);
  }

  return result;
}

unint64_t sub_266AA97B0()
{
  result = qword_2800B2948;
  if (!qword_2800B2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2948);
  }

  return result;
}

unint64_t sub_266AA9808()
{
  result = qword_2800B2950;
  if (!qword_2800B2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2950);
  }

  return result;
}

unint64_t sub_266AA9860()
{
  result = qword_2800B2958;
  if (!qword_2800B2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2958);
  }

  return result;
}

unint64_t sub_266AA98B8()
{
  result = qword_2800B2960;
  if (!qword_2800B2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2960);
  }

  return result;
}

unint64_t sub_266AA9910()
{
  result = qword_2800B2968;
  if (!qword_2800B2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2968);
  }

  return result;
}

unint64_t sub_266AA9968()
{
  result = qword_2800B2970;
  if (!qword_2800B2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2970);
  }

  return result;
}

unint64_t sub_266AA99BC()
{
  result = qword_2800B2978;
  if (!qword_2800B2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2978);
  }

  return result;
}

uint64_t sub_266AA9A30()
{
  sub_266AA9C54();
  result = sub_266ABDDE4();
  qword_280BB7040 = result;
  return result;
}

uint64_t sub_266AA9A98()
{
  sub_266AA9C54();
  result = sub_266ABDDE4();
  qword_2800BD100 = result;
  return result;
}

uint64_t sub_266AA9B64(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_266ABD8D4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_266ABD8E4();
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

unint64_t sub_266AA9C54()
{
  result = qword_280BB6BE0;
  if (!qword_280BB6BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB6BE0);
  }

  return result;
}

unint64_t FeedbackNotificationAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266AA9CBC()
{
  result = qword_2800B2980;
  if (!qword_2800B2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2980);
  }

  return result;
}

unint64_t sub_266AA9D28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FeedbackNotificationAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266AA9D78()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266AAA504(0xD000000000000025, 0x8000000266AC06E0);
  if (result)
  {
    qword_2800B2988 = result;
  }

  else
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  return result;
}

uint64_t *sub_266AA9E2C()
{
  if (qword_2800B1AF0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  return &qword_2800B2988;
}

uint64_t (*static KeyValueStore.local.modify())()
{
  if (qword_2800B1AF0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
  }

  OUTLINED_FUNCTION_3_9();
  return j_j__swift_endAccess;
}

id sub_266AA9EF8()
{
  sub_266AAA568();
  v0 = sub_266AA9F64(0xD000000000000025, 0x8000000266AC06E0, 0);
  result = [v0 synchronize];
  *&xmmword_2800B2990 = v0;
  *(&xmmword_2800B2990 + 1) = &protocol witness table for NSUbiquitousKeyValueStore;
  return result;
}

id sub_266AA9F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_266ABDA74();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

__int128 *sub_266AA9FE0()
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  return &xmmword_2800B2990;
}

uint64_t static KeyValueStore.cloud.setter(uint64_t a1, uint64_t a2)
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  swift_beginAccess();
  *&xmmword_2800B2990 = a1;
  *(&xmmword_2800B2990 + 1) = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*static KeyValueStore.cloud.modify())()
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_3_9();
  return j__swift_endAccess;
}

uint64_t sub_266AAA104@<X0>(_OWORD *a1@<X8>)
{
  sub_266AA9FE0();
  swift_beginAccess();
  *a1 = xmmword_2800B2990;
  return swift_unknownObjectRetain();
}

uint64_t sub_266AAA15C(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  sub_266AA9FE0();
  swift_beginAccess();
  xmmword_2800B2990 = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_266AAA1C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_266AAA504(0x6C7070612E6D6F63, 0xEC00000061642E65);
  if (result)
  {
    qword_2800B29A0 = result;
  }

  else
  {
    result = sub_266ABDF54();
    __break(1u);
  }

  return result;
}

uint64_t *sub_266AAA26C()
{
  if (qword_2800B1B00 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  return &qword_2800B29A0;
}

void sub_266AAA2F4(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_7();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static KeyValueStore.daLocal.modify())()
{
  if (qword_2800B1B00 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  OUTLINED_FUNCTION_3_9();
  return j_j__swift_endAccess;
}

id sub_266AAA3B4@<X0>(void (*a1)(void)@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_4_9();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void sub_266AAA404(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void **a6)
{
  v8 = *a1;
  a5();
  OUTLINED_FUNCTION_5_7();
  v9 = *a6;
  *a6 = v8;
}

id sub_266AAA504(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266ABDA74();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_266AAA568()
{
  result = qword_2800B29A8;
  if (!qword_2800B29A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B29A8);
  }

  return result;
}

void sub_266AAA5AC()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for ParticipantModel();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  v39 = sub_266ABD9B4();
  v32 = v0;
  v4 = *v0;
  sub_266AAC5B0(*v0, &v39);
  v30 = *(v4 + 16);
  if (v30)
  {
    v5 = 0;
    while (v5 < *(v4 + 16))
    {
      v6 = *(v31 + 80);
      OUTLINED_FUNCTION_21_4();
      v34 = v7;
      v9 = *(v8 + 72) * v5;
      sub_266A6E9E4(v4 + v7 + v9, v1);
      v10 = *(v1 + 104);

      sub_266A6A63C(v1);
      v11 = *(v10 + 16);

      v33 = v11;
      if (v11)
      {
        v12 = 0;
        v13 = 0;
        while (v5 < *(v4 + 16))
        {
          sub_266A6E9E4(v4 + v34 + v9, v1);
          v14 = *(v1 + 104);

          sub_266A6A63C(v1);
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          sub_266A6FFD8(v14 + v12 + 32, v36);

          v15 = v37;
          v16 = v38;
          __swift_project_boxed_opaque_existential_1(v36, v37);
          (*(v16 + 168))(v15, v16);
          if (v17)
          {
            v18 = v39;
            if (*(v39 + 16))
            {
              v19 = sub_266AB0B30();
              v21 = v20;

              if (v21)
              {
                sub_266A6FFD8(*(v18 + 56) + 40 * v19, v35);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_266AB1094(v4);
                  v4 = v28;
                }

                if (v5 >= *(v4 + 16))
                {
                  goto LABEL_24;
                }

                v22 = v4 + v34 + v9;
                v23 = *(v22 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v22 + 104) = v23;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_266AB1064(v23);
                  v23 = v29;
                  *(v22 + 104) = v29;
                }

                if (v13 >= *(v23 + 16))
                {
                  goto LABEL_25;
                }

                v25 = v23 + v12;
                v26 = *(v23 + v12 + 56);
                v27 = *(v25 + 64);
                __swift_mutable_project_boxed_opaque_existential_1(v25 + 32, v26);
                Device.saturate(device:)(v35, v26, v27);
                __swift_destroy_boxed_opaque_existential_1Tm(v35);
                *v32 = v4;
              }
            }

            else
            {
            }
          }

          ++v13;
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          v12 += 40;
          if (v33 == v13)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

LABEL_20:
      if (++v5 == v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    OUTLINED_FUNCTION_30();
  }
}

void sub_266AAA8D0()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for ParticipantModel();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_2();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  v74 = &v73 - v17;
  v73 = sub_266A81434();
  v18 = sub_266ABD9B4();
  v94 = v18;
  v19 = *v0;
  v20 = *(*v0 + 16);
  v79 = v1;
  v89 = v4;
  v90 = v19;
  v78 = v20;
  if (!v20)
  {
    v58 = 0;
LABEL_24:
    for (i = 0; ; i = v60)
    {
      while (1)
      {
        if (v58 == i)
        {

          sub_266AAC7F0(MEMORY[0x277D84F90], v18, &v94);
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_30();
          return;
        }

        if (i >= v58)
        {
          goto LABEL_39;
        }

        v60 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_40;
        }

        v61 = *(v89 + 72);
        v62 = *(v89 + 80);
        OUTLINED_FUNCTION_21_4();
        sub_266A6F9C8(v63 + v64 + v61 * i, v93, &qword_2800B1CC8, &unk_266AC0FD0);
        if (v93[3])
        {
          break;
        }

        sub_266A798F4(v93, &qword_2800B1CC8, &unk_266AC0FD0);
LABEL_33:
        ++i;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_33;
      }

      v65 = sub_266AB0C10(v92);
      if (v66)
      {
        v67 = v94;
        v91 = v65;
        LODWORD(v88) = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v67;
        v68 = *(v67 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
        sub_266ABDF34();
        v18 = v93[0];
        v69 = *(v93[0] + 56) + v91 * v61;
        v70 = v74;
        sub_266A7977C(v69, v74);
        v71 = v79;
        sub_266ABDF44();
        v72 = 0;
        v94 = v18;
      }

      else
      {
        v72 = 1;
        v71 = v79;
        v70 = v74;
      }

      __swift_storeEnumTagSinglePayload(v70, v72, 1, v71);
      sub_266A798F4(v70, &qword_2800B1CB0, &qword_266AC0FB8);
    }
  }

  v21 = *(v4 + 80);
  OUTLINED_FUNCTION_21_4();
  v77 = v22 + v23;
  v88 = *(v4 + 72);

  v24 = 0;
  v76 = v9;
  v75 = v12;
LABEL_3:
  v87 = v24 + 1;
  sub_266A6E9E4(v77 + v88 * v24, v12);
  v25 = 0;
  v26 = *&v12[*(v1 + 48)];
  v27 = *(v26 + 16);
  v28 = v26 + 32;
  v86 = v26 + 32;
LABEL_4:
  for (j = v28 + 40 * v25; ; j += 40)
  {
    if (v27 == v25)
    {
      v94 = v18;
      sub_266A6A63C(v12);
      v24 = v87;
      if (v87 == v78)
      {
        v57 = v90;

        v58 = *(v57 + 16);
        goto LABEL_24;
      }

      goto LABEL_3;
    }

    if (v25 >= v27)
    {
      break;
    }

    if (__OFADD__(v25, 1))
    {
      goto LABEL_38;
    }

    sub_266A6FFD8(j, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v30 = v9;
      v91 = v92;
      v31 = BYTE1(v92);
      v32 = v18;
      v33 = BYTE2(v92);
      v34 = v12;
      v35 = BYTE3(v92);
      v36 = WORD2(v92);
      v37 = BYTE6(v92);
      v38 = HIBYTE(v92);
      sub_266A6E9E4(v34, v30);
      swift_isUniquelyReferenced_nonNull_native();
      v93[0] = v32;
      v84 = v33;
      v85 = v31;
      v82 = v36;
      v83 = v35;
      v80 = v38;
      v81 = v37;
      v39 = v91 | (v31 << 8) | (v33 << 16) | (v35 << 24) | (v36 << 32) | (v37 << 48) | (v38 << 56);
      sub_266AB0C10(v39);
      OUTLINED_FUNCTION_23_0();
      if (__OFADD__(v42, v43))
      {
        goto LABEL_41;
      }

      v44 = v40;
      v9 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
      if (sub_266ABDF34())
      {
        sub_266AB0C10(v39);
        OUTLINED_FUNCTION_46();
        if (!v46)
        {
          goto LABEL_43;
        }

        v44 = v45;
        v12 = v75;
        v28 = v86;
      }

      else
      {
        v12 = v75;
        v28 = v86;
      }

      v18 = v93[0];
      if (v9)
      {
        v47 = OUTLINED_FUNCTION_44();
        sub_266A81518(v47, v48);
        goto LABEL_20;
      }

      v49 = v80;
      *(v93[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v50 = *(v18 + 48) + 8 * v44;
      *v50 = v91;
      v51 = v84;
      *(v50 + 1) = v85;
      *(v50 + 2) = v51;
      *(v50 + 3) = v83;
      *(v50 + 4) = v82;
      *(v50 + 6) = v81;
      *(v50 + 7) = v49;
      v52 = OUTLINED_FUNCTION_44();
      sub_266A7977C(v52, v53);
      v54 = *(v18 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_42;
      }

      *(v18 + 16) = v56;
LABEL_20:
      ++v25;
      v1 = v79;
      goto LABEL_4;
    }

    ++v25;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266AAAECC()
{
  OUTLINED_FUNCTION_30_4();
  v91 = sub_266ABD7A4();
  v1 = OUTLINED_FUNCTION_1_0(v91);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v90 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
  v11 = swift_allocObject();
  v85 = xmmword_266AC0EB0;
  *(v11 + 16) = xmmword_266AC0EB0;
  v86 = v11;
  *(v11 + 32) = MEMORY[0x277D84F90];
  *&v100 = v0;

  sub_266AAC928(&v100);
  v12 = v100;
  v13 = *(v100 + 16);
  v88 = v100;
  if (v13)
  {
    OUTLINED_FUNCTION_19_1();
    sub_266A6FFD8(v14 + 32, &v100);
    OUTLINED_FUNCTION_19_1();
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
  }

  v87 = v12 + 32;
  v16 = &unk_266AC1310;
  v89 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_40_2();
    sub_266A6F9C8(v17, v18, v19, v20);
    if (!*(&v98 + 1))
    {

      sub_266A798F4(&v97, &qword_2800B1C48, &unk_266AC1310);
      sub_266A798F4(&v100, &qword_2800B1C48, &unk_266AC1310);
      return v86;
    }

    sub_266A798F4(&v97, &qword_2800B1C48, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    v21 = swift_allocObject();
    *(v21 + 16) = v85;
    OUTLINED_FUNCTION_40_2();
    sub_266A6F9C8(v22, v23, v24, v25);
    if (!*(&v98 + 1))
    {
      break;
    }

    sub_266A6DBC4(&v97, v21 + 32);
    if (v15 == v13)
    {
      v99 = 0;
      v15 = v13;
      v97 = 0u;
      v98 = 0u;
      goto LABEL_12;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    OUTLINED_FUNCTION_19_1();
    if (v15 >= *(v26 + 16))
    {
      goto LABEL_32;
    }

    v27 = OUTLINED_FUNCTION_67();
    sub_266A6FFD8(v27, &v97);
    ++v15;
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_40_2();
      sub_266A6F9C8(v28, v29, v30, v31);
      v32 = *(&v95 + 1);
      sub_266A798F4(&v94, &qword_2800B1C48, v16);
      if (!v32)
      {
        break;
      }

      v33 = *(&v101 + 1);
      if (!*(&v101 + 1))
      {
        goto LABEL_34;
      }

      v93 = v21;
      v34 = v102;
      __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      OUTLINED_FUNCTION_2_1();
      v36 = v35;
      v38 = *(v37 + 64);
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_2();
      v42 = v41 - v40;
      (*(v36 + 16))(v41 - v40);
      (*(v34 + 88))(v33, v34);
      (*(v36 + 8))(v42, v33);
      v43 = *(&v98 + 1);
      if (!*(&v98 + 1))
      {
        goto LABEL_33;
      }

      v44 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
      v92 = &v85;
      OUTLINED_FUNCTION_2_1();
      v46 = v45;
      v48 = *(v47 + 64);
      MEMORY[0x28223BE20](v49);
      OUTLINED_FUNCTION_2();
      v52 = v51 - v50;
      (*(v46 + 16))(v51 - v50);
      v53 = v16;
      v54 = v15;
      v55 = v13;
      v56 = v10;
      v57 = v90;
      (*(v44 + 88))(v43, v44);
      (*(v46 + 8))(v52, v43);
      sub_266ABD704();
      v59 = v58;
      v60 = *v89;
      v61 = v57;
      v10 = v56;
      v13 = v55;
      v15 = v54;
      v16 = v53;
      v62 = v91;
      (*v89)(v61, v91);
      v60(v10, v62);
      v21 = v93;
      if (v59 > 2.0)
      {
        break;
      }

      OUTLINED_FUNCTION_40_2();
      sub_266A6F9C8(v63, v64, v65, v66);
      if (!*(&v95 + 1))
      {
        goto LABEL_35;
      }

      v68 = *(v21 + 16);
      v67 = *(v21 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_14(v67);
        sub_266A98074();
        v21 = v75;
      }

      *(v21 + 16) = v68 + 1;
      sub_266A6DBC4(&v94, v21 + 40 * v68 + 32);
      if (v15 == v13)
      {
        v96 = 0;
        v15 = v13;
        v94 = 0u;
        v95 = 0u;
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_19_1();
        if (v15 >= *(v69 + 16))
        {
          goto LABEL_30;
        }

        v70 = OUTLINED_FUNCTION_67();
        sub_266A6FFD8(v70, &v94);
        ++v15;
      }

      OUTLINED_FUNCTION_40_2();
      sub_266AB50A0(v71, v72, v73, v74);
    }

    v76 = v86;
    v78 = *(v86 + 16);
    v77 = *(v86 + 24);
    if (v78 >= v77 >> 1)
    {
      OUTLINED_FUNCTION_14(v77);
      sub_266A980BC();
      v76 = v83;
    }

    *(v76 + 16) = v78 + 1;
    v86 = v76;
    *(v76 + 8 * v78 + 32) = v21;
    OUTLINED_FUNCTION_40_2();
    sub_266AB50A0(v79, v80, v81, v82);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_266AAB528()
{
  OUTLINED_FUNCTION_31();
  v1 = 0;
  *&v164 = *(v0 + 16);
  if (!v164)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_110:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_111;
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  *(&v164 + 1) = v0 + 32;
  v176 = xmmword_266AC0EB0;
LABEL_3:
  v4 = *(*(&v164 + 1) + 8 * v2);
  v167 = v3;
  v168 = v2 + 1;
  v177 = *(v4 + 16);
  v3 = (v4 + 32);

  v5 = 0;
  v6 = v4 + 32;
  v7 = MEMORY[0x277D84F90];
  v174 = v4;
  while (v177 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      sub_266AB107C(v3);
      v3 = v162;
LABEL_111:
      v158 = v3[2];
      *&v181[0] = v3 + 4;
      *(&v181[0] + 1) = v158;
      OUTLINED_FUNCTION_8_9();
      sub_266AB1100(v181, v159, v160, v161, sub_266AB1470);
      OUTLINED_FUNCTION_30();
      return;
    }

    sub_266A6FFD8(v6, v181);
    OUTLINED_FUNCTION_56();
    v9 = *(v8 + 72);
    v10 = OUTLINED_FUNCTION_34_2();
    v11(v10);
    if (v180[0] == 3 || (OUTLINED_FUNCTION_56(), v13 = *(v12 + 72), v14 = OUTLINED_FUNCTION_34_2(), v15(v14), v180[0] == 2))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
    }

    else
    {
      sub_266A6DBC4(v181, v180);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = *(v7 + 16);
        OUTLINED_FUNCTION_35();
        v7 = v179[0];
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_14(v18);
        sub_266A98BE8();
      }

      v20 = *&v180[24];
      v21 = *&v180[32];
      __swift_mutable_project_boxed_opaque_existential_1(v180, *&v180[24]);
      OUTLINED_FUNCTION_2_1();
      v23 = *(v22 + 64);
      MEMORY[0x28223BE20](v24);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_78();
      (*(v25 + 16))(v7);
      sub_266A9E8BC(v19, v7, v179, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      v7 = v179[0];
      v4 = v174;
    }

    v6 += 40;
    ++v5;
  }

  v171 = v7;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  while (v177 != v26)
  {
    if (v26 >= *(v4 + 16))
    {
      goto LABEL_113;
    }

    sub_266A6FFD8(v3, v181);
    __swift_project_boxed_opaque_existential_1(v181, *(&v181[1] + 1));
    v28 = OUTLINED_FUNCTION_43_0();
    v29(v28);
    if (v180[0] == 3 || (__swift_project_boxed_opaque_existential_1(v181, *(&v181[1] + 1)), v30 = OUTLINED_FUNCTION_43_0(), v31(v30), v180[0] == 2))
    {
      sub_266A6DBC4(v181, v180);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v179[0] = v27;
      if ((v32 & 1) == 0)
      {
        v33 = *(v27 + 16);
        OUTLINED_FUNCTION_35();
        v27 = v179[0];
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_14(v34);
        sub_266A98BE8();
      }

      v36 = *&v180[24];
      v37 = *&v180[32];
      __swift_mutable_project_boxed_opaque_existential_1(v180, *&v180[24]);
      OUTLINED_FUNCTION_2_1();
      v39 = *(v38 + 64);
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_2();
      v43 = v42 - v41;
      (*(v44 + 16))(v42 - v41);
      sub_266A9E8BC(v35, v43, v179, v36, v37);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      v27 = v179[0];
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
    }

    v3 += 5;
    ++v26;
  }

  v45 = 0;
  v3 = MEMORY[0x277D84F98];
  v46 = *(v27 + 16);
  v47 = v27 + 32;
  v173 = v27 + 32;
  v175 = v27;
  v178 = v46;
  v179[0] = MEMORY[0x277D84F98];
  while (1)
  {
    if (v46 == v45)
    {
      v169 = v1;
      v182 = v3;
      v69 = *(v27 + 16);
      if (!v69)
      {
LABEL_72:

        v109 = sub_266AB3C0C(v3);
        v110 = *(v109 + 64);
        v111 = *(v109 + 32);
        OUTLINED_FUNCTION_14_6();
        v114 = v113 & v112;
        v116 = (v115 + 63) >> 6;

        v117 = 0;
        if (!v114)
        {
          goto LABEL_74;
        }

        do
        {
          v118 = v117;
LABEL_78:
          v119 = (v118 << 9) | (8 * __clz(__rbit64(v114)));
          v120 = *(*(v109 + 56) + v119);
          v114 &= v114 - 1;
          *&v181[0] = *(*(v109 + 48) + v119);
          *(&v181[0] + 1) = v120;

          sub_266A7F108();
        }

        while (v114);
LABEL_74:
        while (1)
        {
          v118 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_114;
          }

          if (v118 >= v116)
          {

            v121 = v182;
            v123 = *(v182 + 64);
            v122 = v182 + 64;
            v124 = *(v182 + 32);
            OUTLINED_FUNCTION_14_6();
            v127 = v126 & v125;
            v129 = (v128 + 63) >> 6;
            swift_bridgeObjectRetain_n();
            v3 = 0;
            v130 = MEMORY[0x277D84F90];
            if (!v127)
            {
              goto LABEL_82;
            }

            do
            {
              v131 = v3;
LABEL_86:
              v132 = __clz(__rbit64(v127));
              v127 &= v127 - 1;
              v133 = *(*(v121 + 56) + ((v131 << 9) | (8 * v132)));
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
              inited = swift_initStackObject();
              *(inited + 16) = v176;
              *&v181[0] = v133;
              swift_bridgeObjectRetain_n();

              sub_266A7F950(v135);
              sub_266AB5D18(*&v181[0], inited + 32);
              *&v181[0] = v130;
              sub_266A7FA00(inited);

              v130 = *&v181[0];
            }

            while (v127);
LABEL_82:
            while (1)
            {
              v131 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_115;
              }

              if (v131 >= v129)
              {

                v136 = *(v130 + 16);
                if (v136)
                {
                  v137 = v130 + 32;
                  v138 = MEMORY[0x277D84F90];
                  v3 = v167;
                  v2 = v168;
                  do
                  {
                    memcpy(v179, v181, sizeof(v179));
                    if (v179[1])
                    {
                      memcpy(v180, v181, sizeof(v180));
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v141 = *(v138 + 16);
                        OUTLINED_FUNCTION_21_0();
                        sub_266A982D4();
                        v138 = v142;
                      }

                      v140 = *(v138 + 16);
                      v139 = *(v138 + 24);
                      if (v140 >= v139 >> 1)
                      {
                        OUTLINED_FUNCTION_14(v139);
                        sub_266A982D4();
                        v138 = v143;
                      }

                      *(v138 + 16) = v140 + 1;
                      memcpy((v138 + 72 * v140 + 32), v180, 0x48uLL);
                    }

                    else
                    {
                    }

                    v137 += 72;
                    --v136;
                  }

                  while (v136);
                }

                else
                {

                  v138 = MEMORY[0x277D84F90];
                  v3 = v167;
                  v2 = v168;
                }

                v1 = v169;
                if (*(v138 + 16))
                {
                  sub_266A9444C(v138, v144, v145, v146, v147, v148, v149, v150, v163, v164, v165, v166, v167, v168, v169, v171, v172, v173, v175, v176, *(&v176 + 1), v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], *v180, *&v180[8], *&v180[16], *&v180[24]);
                  v152 = v151;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v155 = v3[2];
                    OUTLINED_FUNCTION_21_0();
                    sub_266A982B0();
                    v3 = v156;
                  }

                  v154 = v3[2];
                  v153 = v3[3];
                  if (v154 >= v153 >> 1)
                  {
                    OUTLINED_FUNCTION_14(v153);
                    sub_266A982B0();
                    v3 = v157;
                  }

                  *&v181[2] = &protocol witness table for RequestModel;
                  *(&v181[1] + 1) = &type metadata for RequestModel;
                  *&v181[0] = v152;
                  v3[2] = v154 + 1;
                  sub_266A6DBC4(v181, &v3[5 * v154 + 4]);

                  v1 = v170;
                }

                else
                {
                }

                if (v2 != v164)
                {
                  goto LABEL_3;
                }

                goto LABEL_110;
              }

              v127 = *(v122 + 8 * v131);
              v3 = (v3 + 1);
              if (v127)
              {
                v3 = v131;
                goto LABEL_86;
              }
            }
          }

          v114 = *(v109 + 64 + 8 * v118);
          ++v117;
          if (v114)
          {
            v117 = v118;
            goto LABEL_78;
          }
        }
      }

      v70 = v173;
      while (1)
      {
        sub_266A6FFD8(v70, v181);
        OUTLINED_FUNCTION_56();
        v72 = *(v71 + 16);
        v73 = OUTLINED_FUNCTION_34_2();
        v74(v73);
        if (!*&v180[24])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
        if (swift_dynamicCast())
        {
          v178 = LODWORD(v179[0]);
          v75 = WORD2(v179[0]);
          v173 = BYTE6(v179[0]);
          v172 = HIBYTE(v179[0]);
          v76 = *(&v181[1] + 1);
          v77 = *&v181[2];
          __swift_project_boxed_opaque_existential_1(v181, *(&v181[1] + 1));
          (*(v77 + 128))(v180, v76, v77);
          if (!*&v180[24])
          {
            break;
          }

          if (swift_dynamicCast())
          {
            if (v3[2])
            {
              v78 = LODWORD(v179[0]);
              v79 = WORD2(v179[0]);
              v166 = BYTE6(v179[0]);
              v165 = HIBYTE(v179[0]);
              v80 = v178 | (v75 << 32) | (v173 << 48) | (v172 << 56);
              v81 = sub_266AB0BA4(v80);
              if (v82)
              {
                v83 = *(v3[7] + 8 * v81);
                v84 = sub_266AB0BA4(v80);
                if (v85)
                {
                  v86 = v84;

                  v87 = v182;
                  swift_isUniquelyReferenced_nonNull_native();
                  *v180 = v87;
                  v88 = *(v87 + 24);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                  sub_266ABDF34();
                  v3 = *v180;
                  v89 = *(*(*v180 + 56) + 8 * v86);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
                  sub_266A813B0();
                  sub_266ABDF44();
                  v182 = v3;
                }

                else
                {
                }

                if (v3[2] && (v91 = sub_266AB0BA4(v78 | (v79 << 32) | (v166 << 48) | (v165 << 56)), (v92 & 1) != 0))
                {
                  v93 = *(v3[7] + 8 * v91);
                }

                else
                {
                  v94 = MEMORY[0x277D84F90];
                }

                *v180 = v83;
                sub_266A7F950(v94);
                v178 = *v180;
                v95 = v182;
                v3 = swift_isUniquelyReferenced_nonNull_native();
                *v180 = v95;
                v90 = v78 | (v79 << 32) | (v166 << 48) | (v165 << 56);
                sub_266AB0BA4(v90);
                OUTLINED_FUNCTION_23_0();
                if (__OFADD__(v98, v99))
                {
                  goto LABEL_119;
                }

                v100 = v96;
                v101 = v97;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                if (sub_266ABDF34())
                {
                  sub_266AB0BA4(v90);
                  OUTLINED_FUNCTION_46();
                  if (!v103)
                  {
                    goto LABEL_123;
                  }

                  v100 = v102;
                }

                v3 = *v180;
                if (v101)
                {
                  v104 = *(*v180 + 56);
                  v105 = *(v104 + 8 * v100);
                  *(v104 + 8 * v100) = v178;
                }

                else
                {
                  OUTLINED_FUNCTION_30_0(*v180 + 8 * (v100 >> 6));
                  *(v106 + 8 * v100) = v90;
                  *(v3[7] + 8 * v100) = v178;
                  v107 = v3[2];
                  v64 = __OFADD__(v107, 1);
                  v108 = v107 + 1;
                  if (v64)
                  {
                    goto LABEL_120;
                  }

                  v3[2] = v108;
                }

                v182 = v3;
              }
            }
          }
        }

LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v181);
        v70 += 40;
        if (!--v69)
        {
          goto LABEL_72;
        }
      }

      sub_266A798F4(v180, &qword_2800B1CC8, &unk_266AC0FD0);
      goto LABEL_55;
    }

    if (v45 >= *(v27 + 16))
    {
      goto LABEL_116;
    }

    sub_266A6FFD8(v47, v181);
    sub_266A7EDD4(v181, &v182);
    if (v1)
    {
      break;
    }

    v49 = sub_266AB0BA4(v182);
    v50 = v3[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_117;
    }

    v53 = v48;
    if (v3[3] < v52)
    {
      sub_266AB3808(v52, 1);
      v3 = v179[0];
      v54 = sub_266AB0BA4(v182);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_123;
      }

      v49 = v54;
    }

    if (v53)
    {
      v56 = v3[7];
      sub_266A6DBC4(v181, v180);
      v57 = *(v56 + 8 * v49);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v56 + 8 * v49) = v57;
      if ((v58 & 1) == 0)
      {
        v66 = *(v57 + 16);
        OUTLINED_FUNCTION_21_0();
        sub_266A98074();
        v57 = v67;
        *(v56 + 8 * v49) = v67;
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_14(v59);
        sub_266A98074();
        v57 = v68;
        *(v56 + 8 * v49) = v68;
      }

      v1 = 0;
      *(v57 + 16) = v60 + 1;
      sub_266A6DBC4(v180, v57 + 40 * v60 + 32);
      v27 = v175;
      v46 = v178;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
      v61 = swift_allocObject();
      *(v61 + 16) = v176;
      sub_266A6DBC4(v181, v61 + 32);
      OUTLINED_FUNCTION_30_0(&v3[v49 >> 6]);
      *(v62 + 8 * v49) = v182;
      *(v3[7] + 8 * v49) = v61;
      v63 = v3[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_118;
      }

      v3[2] = v65;
    }

    v47 += 40;
    ++v45;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v181);

  __break(1u);
LABEL_123:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266AAC2C8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ParticipantModel();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_77(a1, 1, v13);
  if (v19)
  {
    sub_266A798F4(a1, &qword_2800B1CB0, &qword_266AC0FB8);
    v20 = *v4;
    v21 = sub_266AB0C10(a2);
    if (v22)
    {
      v23 = v21;
      v24 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      v31 = *v4;
      v25 = *(v31 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
      sub_266ABDF34();
      v26 = v31;
      sub_266A7977C(*(v31 + 56) + *(v16 + 72) * v23, v12);
      sub_266A81434();
      sub_266ABDF44();
      v27 = 0;
      *v4 = v26;
    }

    else
    {
      v27 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v27, 1, v13);
    return sub_266A798F4(v12, &qword_2800B1CB0, &qword_266AC0FB8);
  }

  else
  {
    sub_266A7977C(a1, v3);
    v28 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *v4;
    result = sub_266AB4240(v3, a2);
    *v4 = v31;
  }

  return result;
}

uint64_t sub_266AAC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_266A6DBC4(a1, v10);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_266AB4368(v10, a2, a3);

    *v3 = v9;
  }

  else
  {
    sub_266A798F4(a1, &qword_2800B1E08, &qword_266AC1370);
    OUTLINED_FUNCTION_79();
    sub_266AB3B10(v8);

    return sub_266A798F4(v10, &qword_2800B1E08, &qword_266AC1370);
  }

  return result;
}

uint64_t sub_266AAC5B0(uint64_t result, void *a2)
{
  v25 = result;
  v3 = 0;
  v26 = *(result + 16);
  while (v26 != v3)
  {
    v4 = *(type metadata accessor for ParticipantModel() - 8);
    v5 = (v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3);
    v6 = v5[9];
    v7 = v5[10];
    __swift_project_boxed_opaque_existential_1(v5 + 6, v6);
    result = (*(v7 + 168))(v6, v7);
    if (v8)
    {
      v9 = result;
      v10 = v8;
      sub_266A6FFD8((v5 + 6), v27);
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *a2;
      v12 = v28;
      v13 = sub_266AB0B30();
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        result = sub_266ABE1F4();
        __break(1u);
        return result;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
      if (sub_266ABDF34())
      {
        v17 = sub_266AB0B30();
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_17;
        }

        v15 = v17;
      }

      v19 = v28;
      if (v16)
      {
        v20 = (v28[7] + 40 * v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        sub_266A6DBC4(v27, v20);
      }

      else
      {
        v28[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v19[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        result = sub_266A6DBC4(v27, v19[7] + 40 * v15);
        v22 = v19[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_16;
        }

        v19[2] = v24;
      }

      *a2 = v19;
    }

    ++v3;
  }

  return result;
}

uint64_t sub_266AAC7F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1;
  v19 = a1;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10));
      v16 = *(*(a2 + 48) + ((v14 << 9) | (8 * v15)) + 4);
      v18[0] = *(*(a2 + 48) + ((v14 << 9) | (8 * v15)));
      v18[1] = v16;
      sub_266A7E130(&v19, v18, a3, &v17);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v6 = v17;
      v19 = v17;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

    return v6;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266AAC928(uint64_t *a1)
{
  if ((OUTLINED_FUNCTION_81(a1) & 1) == 0)
  {
    sub_266AB505C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_266AB1100(v6, &qword_2800B1CC0, &qword_266AC1290, sub_266AB18F0, sub_266AB121C);
  *v1 = v2;
  return result;
}

uint64_t Participant.unknownParticipant.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v4 = v6[3];
  sub_266A798F4(v6, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v4)
  {
    return ((*(a2 + 80))(a1, a2) >> 8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AACA54()
{
  v1 = *(v0 + 112);
  sub_266A985D0();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 24) >> 1)
  {
    sub_266A985D0();
    v3 = v24;
  }

  *(v3 + 16) = v4 + 1;
  v5 = v3 + 48 * v4;
  *(v5 + 32) = v1;
  *(v5 + 72) = 0;
  v6 = *(v0 + 40);
  v7 = *(v6 + 16);
  for (i = v6 + 32; v7; --v7)
  {
    sub_266A6FFD8(i, &v25);
    v26[24] = 2;
    v9 = *(v3 + 16);
    if (v9 >= *(v3 + 24) >> 1)
    {
      sub_266A985D0();
      v3 = v13;
    }

    *(v3 + 16) = v9 + 1;
    v10 = (v3 + 48 * v9);
    v11 = v25;
    v12 = *v26;
    *(v10 + 57) = *&v26[9];
    v10[2] = v11;
    v10[3] = v12;
    i += 40;
  }

  v14 = *(v0 + *(type metadata accessor for ParticipantModel() + 52));
  v15 = *(v14 + 16);
  for (j = (v14 + 32); v15; --v15)
  {
    v17 = *j;
    v18 = *(v3 + 16);
    if (v18 >= *(v3 + 24) >> 1)
    {
      sub_266A985D0();
      v3 = v22;
    }

    *(v3 + 16) = v18 + 1;
    v19 = v3 + 48 * v18;
    *(v19 + 32) = v17;
    v20 = v25;
    v21 = *v26;
    *(v19 + 64) = *&v26[15];
    *(v19 + 49) = v21;
    *(v19 + 33) = v20;
    *(v19 + 72) = 1;
    ++j;
  }

  return v3;
}

uint64_t Participant.attributes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(&v35);
  v4 = v35;
  sub_266A985D0();
  v6 = v5;
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_14(v7);
    sub_266A985D0();
    v6 = v33;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 48 * v8;
  *(v9 + 32) = v4;
  *(v9 + 72) = 0;
  v10 = *(a2 + 24);
  v34 = a1;
  v11 = OUTLINED_FUNCTION_79();
  v13 = v12(v11);
  v14 = *(v13 + 16);
  for (i = v13 + 32; v14; --v14)
  {
    sub_266A6FFD8(i, &v35);
    v36[24] = 2;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      OUTLINED_FUNCTION_14(v16);
      sub_266A985D0();
      v6 = v21;
    }

    *(v6 + 16) = v17 + 1;
    v18 = (v6 + 48 * v17);
    v19 = v35;
    v20 = *v36;
    *(v18 + 57) = *&v36[9];
    v18[2] = v19;
    v18[3] = v20;
    i += 40;
  }

  v22 = (*(a2 + 104))(v34, a2);
  v23 = *(v22 + 16);
  for (j = (v22 + 32); v23; --v23)
  {
    v25 = *j;
    v27 = *(v6 + 16);
    v26 = *(v6 + 24);
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_14(v26);
      sub_266A985D0();
      v6 = v31;
    }

    *(v6 + 16) = v27 + 1;
    v28 = v6 + 48 * v27;
    *(v28 + 32) = v25;
    v29 = v35;
    v30 = *v36;
    *(v28 + 64) = *&v36[15];
    *(v28 + 49) = v30;
    *(v28 + 33) = v29;
    *(v28 + 72) = 1;
    ++j;
  }

  return v6;
}

uint64_t ParticipantModel.boosts.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ParticipantModel.device.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));

  return sub_266A6DBC4(a1, v1 + 48);
}

uint64_t ParticipantModel.intentSignature.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.intentSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ParticipantModel.nearbyDevices.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t ParticipantModel.rawGoodnessScore.setter(uint64_t result)
{
  *(v1 + 113) = result;
  *(v1 + 114) = BYTE1(result) & 1;
  return result;
}

uint64_t ParticipantModel.requestStartEvent.getter()
{
  v2 = *(OUTLINED_FUNCTION_59() + 44);
  v3 = sub_266ABD7A4();
  v4 = OUTLINED_FUNCTION_16(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t ParticipantModel.requestStartEvent.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 44);
  v3 = sub_266ABD7A4();
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ParticipantModel.seenAdvertisements.getter()
{
  v1 = *(v0 + *(type metadata accessor for ParticipantModel() + 48));
}

uint64_t ParticipantModel.seenAdvertisements.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ParticipantModel.trumpReason.getter()
{
  v1 = *(v0 + *(type metadata accessor for ParticipantModel() + 52));
}

uint64_t ParticipantModel.trumpReason.setter()
{
  v2 = *(OUTLINED_FUNCTION_37_2() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ParticipantModel.userRequestedText.getter()
{
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_36_0(*(v0 + 56));
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.userRequestedText.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_4();
  v5 = type metadata accessor for ParticipantModel();
  result = OUTLINED_FUNCTION_63(*(v5 + 56));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.requestId.getter()
{
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_36_0(*(v0 + 68));
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.requestId.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_4();
  v5 = type metadata accessor for ParticipantModel();
  result = OUTLINED_FUNCTION_63(*(v5 + 68));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.cdaId.getter()
{
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_36_0(*(v0 + 72));
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.cdaId.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_4();
  v5 = type metadata accessor for ParticipantModel();
  result = OUTLINED_FUNCTION_63(*(v5 + 72));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t ParticipantModel.timerState.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_85(a1);
  *(v2 + *(result + 76)) = v1;
  return result;
}

uint64_t ParticipantModel.alarmState.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_85(a1);
  *(v2 + *(result + 80)) = v1;
  return result;
}

uint64_t ParticipantModel.mediaState.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_85(a1);
  *(v2 + *(result + 84)) = v1;
  return result;
}

uint64_t ParticipantModel.triggerType.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_85(a1);
  *(v2 + *(result + 88)) = v1;
  return result;
}

uint64_t ParticipantModel.roomName.getter()
{
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_36_0(*(v0 + 92));
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.roomName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_4();
  v5 = type metadata accessor for ParticipantModel();
  result = OUTLINED_FUNCTION_63(*(v5 + 92));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void ParticipantModel.timeSinceLastWinInMilliseconds.setter()
{
  OUTLINED_FUNCTION_30_4();
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_76(*(v0 + 96));
}

void ParticipantModel.timeSinceTriggerInMilliseconds.setter()
{
  OUTLINED_FUNCTION_30_4();
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_76(*(v0 + 100));
}

uint64_t ParticipantModel.id.getter()
{
  v0 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_36_0(*(v0 + 104));
  return OUTLINED_FUNCTION_9_2();
}

uint64_t ParticipantModel.id.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_4();
  v5 = type metadata accessor for ParticipantModel();
  result = OUTLINED_FUNCTION_63(*(v5 + 104));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void static ParticipantModel.createUnknownParticipant()()
{
  OUTLINED_FUNCTION_31();
  v63 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_3();
  v6 = sub_266ABD864();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v60 = &countAndFlagsBits - v16;
  v17 = sub_266ABD8B4();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v21 = sub_266ABD814();
  v22 = OUTLINED_FUNCTION_21(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v25 = sub_266ABDA64();
  v26 = OUTLINED_FUNCTION_21(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  v29 = sub_266ABDAD4();
  v61 = v30;
  v62 = v29;
  v31._countAndFlagsBits = 0x6854664F656E6F4ELL;
  v31._object = 0xEB00000000657365;
  DeviceClass.init(model:)(v31);
  v64 = 0;
  v32 = DeviceClass.displayName(productType:)(&v64);
  countAndFlagsBits = v32._countAndFlagsBits;
  sub_266ABD884();
  sub_266ABD8A4();
  OUTLINED_FUNCTION_77(v0, 1, v6);
  if (v33)
  {
    v34 = 0x30303030303023;
    v35 = OUTLINED_FUNCTION_47();
    v36(v35);
    sub_266A798F4(v0, &qword_2800B1D88, &qword_266AC20D0);
LABEL_7:
    v39 = 0xE700000000000000;
    goto LABEL_8;
  }

  v37 = v60;
  (*(v9 + 32))(v60, v0, v6);
  (*(v9 + 16))(v14, v37, v6);
  if ((*(v9 + 88))(v14, v6) != *MEMORY[0x277D85508])
  {
    v34 = 0x30303030303023;
    v42 = *(v9 + 8);
    v42(v60, v6);
    v43 = OUTLINED_FUNCTION_47();
    v44(v43);
    v42(v14, v6);
    goto LABEL_7;
  }

  (*(v9 + 96))(v14, v6);
  v34 = sub_266AA6004(*v14, v14[1], v14[2]);
  v39 = v38;
  (*(v9 + 8))(v60, v6);
  v40 = OUTLINED_FUNCTION_47();
  v41(v40);
LABEL_8:
  v45 = type metadata accessor for ParticipantModel();
  v46 = v63;
  v63[3] = v45;
  OUTLINED_FUNCTION_28_4();
  v46[4] = sub_266A6F7D0(v47, v48);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  *boxed_opaque_existential_1 = 0u;
  *(boxed_opaque_existential_1 + 1) = 0u;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[9] = &type metadata for DeviceModel;
  boxed_opaque_existential_1[10] = sub_266A6DA44();
  v50 = swift_allocObject();
  boxed_opaque_existential_1[6] = v50;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = v34;
  *(v50 + 56) = v39;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  v51 = v61;
  *(v50 + 80) = v62;
  *(v50 + 88) = v51;
  *(v50 + 96) = countAndFlagsBits;
  *(v50 + 104) = v32._object;
  *(v50 + 112) = &unk_28783EE00;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = 0u;
  *(v50 + 168) = 0u;
  v52 = boxed_opaque_existential_1 + v45[11];
  sub_266ABD6F4();
  v53 = v45[15];
  v54 = sub_266ABD7A4();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v53, 1, 1, v54);
  v55 = boxed_opaque_existential_1 + v45[16];
  *(v55 + 4) = 0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v56 = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[5] = MEMORY[0x277D84F90];
  boxed_opaque_existential_1[11] = 0;
  boxed_opaque_existential_1[12] = 0;
  boxed_opaque_existential_1[13] = v56;
  *(boxed_opaque_existential_1 + 56) = 0;
  *(boxed_opaque_existential_1 + 114) = 1;
  *(boxed_opaque_existential_1 + v45[12]) = v56;
  *(boxed_opaque_existential_1 + v45[13]) = v56;
  OUTLINED_FUNCTION_52(v45[14]);
  OUTLINED_FUNCTION_52(v45[17]);
  OUTLINED_FUNCTION_52(v45[18]);
  *(boxed_opaque_existential_1 + v45[19]) = 0;
  *(boxed_opaque_existential_1 + v45[20]) = 0;
  *(boxed_opaque_existential_1 + v45[21]) = 0;
  *(boxed_opaque_existential_1 + v45[22]) = 0;
  OUTLINED_FUNCTION_52(v45[23]);
  v57 = boxed_opaque_existential_1 + v45[24];
  *v57 = 0;
  v57[8] = 1;
  v58 = boxed_opaque_existential_1 + v45[25];
  *v58 = 0;
  v58[8] = 1;
  OUTLINED_FUNCTION_52(v45[26]);
  OUTLINED_FUNCTION_30();
}

uint64_t sub_266AAE0C0()
{
  v0 = sub_266ABE1D4();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266AAE1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266AAE0C0();
  *a2 = result;
  return result;
}

uint64_t sub_266AAE220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A718B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266AAE24C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266AAE114();
  *a1 = result;
  return result;
}

uint64_t sub_266AAE280(uint64_t a1)
{
  v2 = sub_266A70EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AAE2BC(uint64_t a1)
{
  v2 = sub_266A70EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v112 = &v101 - v7;
  v8 = sub_266ABD7A4();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v109 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v116 = v14 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29B8, &qword_266AC5F50);
  OUTLINED_FUNCTION_1_0(v118);
  v108 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  v21 = type metadata accessor for ParticipantModel();
  v22 = OUTLINED_FUNCTION_16(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v119 = *(v28 + 60);
  v111 = v8;
  __swift_storeEnumTagSinglePayload(v26 - v25 + v119, 1, 1, v8);
  v29 = v27 + v21[16];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v117 = v29;
  v30 = v21[19];
  *(v27 + v30) = 0;
  v31 = v21[20];
  *(v27 + v31) = 0;
  v32 = v21[21];
  *(&v32->Kind + v27) = 0;
  v110 = v21;
  v33 = v21[22];
  v121 = v27;
  v122 = a1;
  *(v27 + v33) = 0;
  v34 = a1[3];
  v35 = __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_266A70EA8();
  v36 = v120;
  sub_266ABE2B4();
  if (!v36)
  {
    v106 = v30;
    v105 = v31;
    v103 = v32;
    v104 = v33;
    v123 = 0;
    v38 = sub_266AB0470();
    sub_266ABE024();
    *(&v101 + 1) = v38;
    v102 = v20;
    OUTLINED_FUNCTION_74();
    v39 = v121;
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_71();
    }

    else
    {
      v120 = 0;
      v41 = sub_266A6D9F0();
      LODWORD(v124) = 0;
      DWORD1(v124) = v120;
      v42 = &type metadata for AdvertisementModel;
    }

    v125 = v42;
    v126 = v41;
    sub_266AB50A0(&v124, v39, &qword_2800B1CC8, &unk_266AC0FD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29D0, &qword_266AC5F58);
    v127 = 1;
    sub_266AB04C4();
    OUTLINED_FUNCTION_15_5();
    sub_266ABE084();
    sub_266A946BC(v124, v43, v44, v45, v46, v47, v48, v49, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    v51 = v50;

    *(v39 + 40) = v51;
    v127 = 2;
    v125 = &type metadata for DeviceModel;
    v126 = sub_266A6DA44();
    *&v124 = swift_allocObject();
    sub_266A8233C();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    sub_266A6DBC4(&v124, v39 + 48);
    OUTLINED_FUNCTION_69(4);
    *(v39 + 88) = sub_266ABE004();
    *(v39 + 96) = v52;
    v115 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29E0, &qword_266AC5F60);
    v127 = 5;
    sub_266AB0548();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    v54 = sub_266A6DA98(v124);

    v114 = v54;
    *(v39 + 104) = v54;
    v127 = 6;
    sub_266AB05CC();
    sub_266ABE084();
    *(v39 + 112) = v124;
    OUTLINED_FUNCTION_69(7);
    v55 = sub_266ABE034();
    *(v39 + 113) = v55;
    *(v39 + 114) = HIBYTE(v55) & 1;
    LOBYTE(v124) = 8;
    OUTLINED_FUNCTION_0_7();
    v58 = sub_266A6F7D0(v56, v57);
    v59 = v116;
    sub_266ABE084();
    v118 = v58;
    (*(v109 + 32))(v39 + v110[11], v59, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A00, &qword_266AC5F68);
    v127 = 9;
    sub_266AB0620();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    v60 = v110[12];
    v61 = sub_266A6E3AC(v124);

    v113 = v61;
    *(v39 + v60) = v61;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A10, &qword_266AC5F70);
    v127 = 10;
    sub_266AB06A4();
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_65();
    sub_266ABE084();
    *(v121 + v110[13]) = v124;
    OUTLINED_FUNCTION_2_9(11);
    v63 = sub_266ABE004();
    v120 = v64;
    v65 = (v121 + v110[14]);
    *v65 = v63;
    v65[1] = v64;
    LOBYTE(v124) = 12;
    OUTLINED_FUNCTION_9_5();
    sub_266ABE024();
    sub_266AB50A0(v112, v121 + v119, &qword_2800B1DB8, "h9");
    v123 = 13;
    OUTLINED_FUNCTION_9_5();
    sub_266ABE024();
    OUTLINED_FUNCTION_74();
    if (v40)
    {
      v66 = OUTLINED_FUNCTION_71();
    }

    else
    {
      v116 = v62 >> 24;
      v118 = HIDWORD(v62);
      v66 = sub_266A6D9F0();
      LOWORD(v124) = v62;
      BYTE2(v124) = BYTE2(v62);
      BYTE3(v124) = v116;
      WORD2(v124) = v118;
      BYTE6(v124) = BYTE6(v62);
      BYTE7(v124) = HIBYTE(v62);
      v67 = &type metadata for AdvertisementModel;
    }

    v125 = v67;
    v126 = v66;
    sub_266AB50A0(&v124, v117, &qword_2800B1CC8, &unk_266AC0FD0);
    OUTLINED_FUNCTION_2_9(14);
    sub_266ABE004();
    v118 = v68;
    OUTLINED_FUNCTION_39_1(v110[17]);
    v69 = v118;
    *v71 = v70;
    v71[1] = v69;
    OUTLINED_FUNCTION_2_9(15);
    sub_266ABE004();
    v116 = v72;
    OUTLINED_FUNCTION_39_1(v110[18]);
    v73 = v116;
    *v75 = v74;
    v75[1] = v73;
    v127 = 16;
    sub_266AB077C();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v121 + v106) = v124;
    v127 = 17;
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v121 + v105) = v124;
    v127 = 18;
    sub_266AB07D0();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(&v103->Kind + v121) = v124;
    v127 = 19;
    sub_266AB0824();
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_9_5();
    sub_266ABE084();
    *(v121 + v104) = v124;
    OUTLINED_FUNCTION_2_9(20);
    sub_266ABE004();
    v112 = v76;
    OUTLINED_FUNCTION_39_1(v110[23]);
    v77 = v112;
    *v79 = v78;
    v79[1] = v77;
    OUTLINED_FUNCTION_2_9(22);
    sub_266ABE014();
    OUTLINED_FUNCTION_39_1(v110[24]);
    *v81 = v80;
    *(v81 + 8) = v82 & 1;
    OUTLINED_FUNCTION_2_9(21);
    sub_266ABE014();
    OUTLINED_FUNCTION_39_1(v110[25]);
    *v84 = v83;
    *(v84 + 8) = v85 & 1;
    OUTLINED_FUNCTION_2_9(23);
    sub_266ABE004();
    OUTLINED_FUNCTION_39_1(v110[26]);
    *v88 = v86;
    v88[1] = v87;
    if ((*(v89 + 112) & 0xFE) == 2)
    {
      sub_266A6F9C8(v117, &v124, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!v125)
      {
        sub_266A798F4(&v124, &qword_2800B1CC8, &unk_266AC0FD0);
        if (qword_280BB6C30 != -1)
        {
          swift_once();
        }

        v95 = sub_266ABD8D4();
        __swift_project_value_buffer(v95, qword_280BB7028);
        v96 = sub_266ABD8C4();
        v97 = sub_266ABDD64();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_266A65000, v96, v97, "#feedback While decoding a participant we found a winner without a winning advertisement. This likely points to data issues.", v98, 2u);
          MEMORY[0x26D5E9280](v98, -1, -1);
        }

        sub_266AB0878();
        swift_allocError();
        swift_willThrow();
        v99 = OUTLINED_FUNCTION_1_9();
        v100(v99);
        LODWORD(v34) = 1;
        v35 = 1;
        goto LABEL_3;
      }

      v90 = OUTLINED_FUNCTION_1_9();
      v91(v90);
      sub_266A798F4(&v124, &qword_2800B1CC8, &unk_266AC0FD0);
    }

    else
    {
      v92 = OUTLINED_FUNCTION_1_9();
      v93(v92);
    }

    v94 = v121;
    sub_266A6E9E4(v121, v107);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    return sub_266A6A63C(v94);
  }

  OUTLINED_FUNCTION_7_10();
  v113 = MEMORY[0x277D84F90];
  v114 = MEMORY[0x277D84F90];
LABEL_3:
  v37 = v121;
  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  sub_266A798F4(v37, &qword_2800B1CC8, &unk_266AC0FD0);

  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v37 + 48));
  }

  if (v35)
  {
    (*(v109 + 8))(v37 + v110[11], v111);
  }

  sub_266A798F4(v37 + v119, &qword_2800B1DB8, "h9");
  sub_266A798F4(v117, &qword_2800B1CC8, &unk_266AC0FD0);
}