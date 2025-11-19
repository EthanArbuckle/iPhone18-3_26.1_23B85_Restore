void sub_1D9865518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id SiriAnalyticsXPCServiceInterface()
{
  v42[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5529068];
  v1 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_publishMessages_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_publishLargeMessage_completion_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v40[3] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_publishLargeMessage_completion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v39[3] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_resolveMessages_completion_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_publishUnorderedMessages_topic_completion_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_fetchLogicalClocksWithCompletion_ argumentIndex:1 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v36[3] = objc_opt_class();
  v36[4] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_fetchTags_ argumentIndex:1 ofReply:1];

  v22 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_fetchStateForPluginWithCompletion_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_saveState_forPluginWithCompletion_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_createTag_completion_ argumentIndex:0 ofReply:0];

  v31 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t sub_1D9865C68()
{
  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1D98692C4;

  return sub_1D98660A4();
}

NSObject *SiriAnalyticsCreateFireOnceTimer(NSObject *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v6, v5);

  return v6;
}

uint64_t sub_1D98660A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v8 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1D986895C;

  return v8(v2);
}

void sub_1D986621C(void *a1)
{
  v2 = sub_1D986636C();
  v3 = type metadata accessor for RawUnifiedStreamMessage();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v7, sel_init);
  [v2 sendEvent_];
}

uint64_t sub_1D9866358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D987106C(a1, a2);
  }

  return a1;
}

id sub_1D986636C()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source;
  v2 = *&v0[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source];
  }

  else
  {
    v4 = [v0 source];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_1D992B814();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_1D992B6D4();
}

uint64_t OUTLINED_FUNCTION_25()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_8()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D986A454(a1, a2 | 0x8000000000000000, v4 + 73, v2 | 0x8000000000000000, 0xD000000000000025, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_1D98C51B8(v0, type metadata accessor for ComponentId);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_2_30(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_31()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_1D992C0A4();
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v2 = v0[3];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v2);

  return sub_1D990C1E0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1D992B614();
}

id OUTLINED_FUNCTION_6_7()
{

  return [v0 (v2 + 1683)];
}

void OUTLINED_FUNCTION_6_9()
{
  *(v0 - 128) = v0 - 96;
  *(v0 - 120) = v0 - 112;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{
  *(a1 + 8) = sub_1D98A7548;
  v3 = *(v2 + 784);
  return v1;
}

void OUTLINED_FUNCTION_6_11()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_1D992AE84();
}

uint64_t OUTLINED_FUNCTION_6_14()
{
}

void OUTLINED_FUNCTION_6_19(uint64_t a1@<X8>)
{

  sub_1D98DCEB4(0xD000000000000031, a1 | 0x8000000000000000, 0xD000000000000072, v1 | 0x8000000000000000, 0xD000000000000039, (v2 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return sub_1D98FC958(v0, type metadata accessor for MonotonicTimestamp);
}

uint64_t sub_1D9866D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

uint64_t sub_1D9866D90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D9866DE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_12(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

id OUTLINED_FUNCTION_4_14(void *a1)
{
  sub_1D98907D8(v3);

  return sub_1D98C3A7C(v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_19()
{
  v1[12] = sub_1D98D3734;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_1D9870FB8(v0, type metadata accessor for SelectRootClockId);
}

uint64_t OUTLINED_FUNCTION_4_21(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return sub_1D992BF34();
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_4_28()
{
  sub_1D9890810(v1);

  return sub_1D9890810(v0);
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_35(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE788E0];

  return sub_1D987A2E0(a1, v2);
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_1D992B614();
}

void OUTLINED_FUNCTION_35_6()
{
  *(v1 - 128) = v0;

  sub_1D98B9860();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20_1()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_4()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_10()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_1_12()
{
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_16(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v4 = *(a4 + 48);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_1D98C51B8(v0, type metadata accessor for MessageGroupIdentifier);
}

uint64_t OUTLINED_FUNCTION_1_23()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_38(uint64_t a1@<X8>)
{

  sub_1D98DCEB4(0xD000000000000022, a1 | 0x8000000000000000, 0xD00000000000007ELL, (v1 - 32) | 0x8000000000000000, 0x3A5F28656E757270, 0xE900000000000029);
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return sub_1D992B5E4();
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return swift_dynamicCast();
}

uint64_t sub_1D9867834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C38, &qword_1D9935430) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for StagedMessage();
  v5[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9867900, 0, 0);
}

uint64_t sub_1D9867900()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *(Strong + OBJC_IVAR___SiriAnalyticsMessageProcessingStrategy_messageStagingProvider);

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1D9867DC0;

    return sub_1D9867CE8();
  }

  else
  {
    v5 = v0[9];
    v6 = v0[7];

    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t type metadata accessor for StagedMessage()
{
  result = qword_1ED8BD820;
  if (!qword_1ED8BD820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9867A58()
{
  if (v0[13])
  {
    v1 = sub_1D98682F0(v0[6]);
    if (!v1)
    {
LABEL_16:
      v14 = v0[10];
      goto LABEL_19;
    }

    v2 = v1;
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = v0[6];
      v5 = v4 & 0xC000000000000001;
      v6 = v4 + 32;
      do
      {
        if (v5)
        {
          v7 = MEMORY[0x1DA73A2C0](v3, v0[6]);
        }

        else
        {
          v7 = *(v6 + 8 * v3);
        }

        v8 = v7;
        v9 = v0[7];
        v10 = v0[8];
        sub_1D98682F4(v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          sub_1D986DEE4(v0[7], &qword_1ECB48C38, &qword_1D9935430);
          if (qword_1ED8BD6E8 != -1)
          {
            OUTLINED_FUNCTION_2_22();
            swift_once();
          }

          v11 = sub_1D98DCE30();
          if (*(v11 + 24) == 1)
          {
            v12 = *(v11 + 16);
            sub_1D98DCEB4(0xD00000000000001ELL, 0x80000001D993A8A0, 0xD00000000000006FLL, 0x80000001D993A810, 0xD000000000000012, 0x80000001D993A880);
          }
        }

        else
        {
          v13 = v0[9];
          sub_1D9868FE8(v0[7], v13);
          sub_1D9868C6C(v13);

          sub_1D98690E8(v13);
        }

        ++v3;
      }

      while (v2 != v3);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1ED8BD6E8 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_2_22();
    swift_once();
  }

  v14 = v0[10];
  v15 = sub_1D98DCE30();
  sub_1D98DD0E0(0xD00000000000006FLL, 0x80000001D993A810, 0xD000000000000012, 0x80000001D993A880, v15);
LABEL_19:

  v16 = v0[9];
  v17 = v0[7];

  OUTLINED_FUNCTION_25();

  return v18();
}

uint64_t sub_1D9867D08(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_13(v7);
  *v8 = v9;
  v8[1] = sub_1D9869144;

  return sub_1D9867834(a1, v3, v4, v6, v5);
}

uint64_t sub_1D9867DC0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  *(v6 + 104) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D9867A58, 0, 0);
}

uint64_t sub_1D9867ED4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  v0[3] = OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_stream;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3 || (v6 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics22MessageStagingProvider_bootstrapTask), (v0[5] = v6) == 0))
  {
    v9 = v0[1];

    return v9(v4);
  }

  else
  {
    v7 = *(MEMORY[0x1E69E86C0] + 4);

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_1D98CDAE4;

    return MEMORY[0x1EEE6DA40]();
  }
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  v3 = *(v1 + 296);
  v4 = *(v1 + 288);
  return v0;
}

id OUTLINED_FUNCTION_26_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1D9868164(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v9 - v3;
  v5 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = a1;

  sub_1D98C8F14(0, 0, v4, &unk_1D99331F0, v7);
}

uint64_t sub_1D9868270()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98682A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98682F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 underlyingMessage];
  v4 = [v3 wrapAsAnyEvent];

  if (v4)
  {
    v5 = [v1 messageUUID];
    v6 = sub_1D992AE84();
    v7 = OUTLINED_FUNCTION_6(v6);
    v9 = v8;
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_13();
    v14 = v13 - v12;
    sub_1D992AE64();

    v15 = [v1 logicalTimestamp];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D9868568();
    }

    else
    {
      v17 = 0;
    }

    v25 = type metadata accessor for StagedMessage();
    v26 = v25[7];
    sub_1D992ADF4();
    v27 = sub_1D992AE04();
    __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v27);
    (*(v9 + 32))(a1, v14, v6);
    *(a1 + v25[5]) = v17;
    *(a1 + v25[6]) = v4;
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v25);
  }

  else
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_1_36();
    sub_1D98DCEB4(0xD000000000000020, v21, v19 | v18, v20 | 0x8000000000000000, v22, 0xE500000000000000);
    v23 = type metadata accessor for StagedMessage();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

uint64_t sub_1D9868568()
{
  v1 = [v0 clockIdentifier];
  v2 = *(*(sub_1D992AE84() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_13();
  sub_1D992AE64();

  [v0 nanoSecondsSinceBoot];
  v3 = objc_allocWithZone(sub_1D992B164());
  return sub_1D992B144();
}

uint64_t sub_1D9868628()
{
  sub_1D992B9F4();
  result = type metadata accessor for StagedMessage();
  v3 = result;
  v4 = *(v0 + *(result + 20));
  if (!v4 || (v19[3] = sub_1D992B164(), v19[4] = sub_1D986904C(&qword_1ECB47A18, MEMORY[0x1E69CE6A0]), v19[0] = v4, v5 = v4, sub_1D992B9D4(), v5, result = __swift_destroy_boxed_opaque_existential_1(v19), !v1))
  {
    MEMORY[0x1EEE9AC00](result);
    result = sub_1D992B9C4();
    if (!v1)
    {
      v6 = sub_1D992AE04();
      v19[6] = &v16;
      v17 = *(v6 - 8);
      v7 = *(v17 + 64);
      MEMORY[0x1EEE9AC00](v6);
      v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *(v3 + 28);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v18 = &v16;
      v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v11 - 8);
      v14 = &v16 - v13;
      sub_1D9866D90(v0 + v10, &v16 - v13, &qword_1ECB48710, &qword_1D9931340);
      if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
      {
        return sub_1D986B804(v14, &qword_1ECB48710, &qword_1D9931340);
      }

      else
      {
        v15 = v17;
        (*(v17 + 32))(v9, v14, v6);
        sub_1D992B9E4();
        return (*(v15 + 8))(v9, v6);
      }
    }
  }

  return result;
}

uint64_t sub_1D986895C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  OUTLINED_FUNCTION_16_0();

  return v5();
}

uint64_t sub_1D9868AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t RawUnifiedStreamMessage.serialize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying);
  v2 = [v1 data];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D992AD84();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D9868C6C(uint64_t a1)
{
  v2 = v1;
  if ([*(a1 + *(type metadata accessor for StagedMessage() + 24)) anyEventType] != 7)
  {
    goto LABEL_5;
  }

  if (qword_1ECB47D40 != -1)
  {
    swift_once();
  }

  if ((byte_1ECB496B0 & 1) == 0)
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    v6 = sub_1D98DCE30();
    MEMORY[0x1EEE9AC00](v6);
    v10[2] = a1;
    sub_1D98DD1DC(0xD000000000000073, v7 | 0x8000000000000000, 0xD000000000000010, v8 | 0x8000000000000000, sub_1D98F6574, v10);
  }

  else
  {
LABEL_5:
    v4 = *(v1 + 16);
    sub_1D992B374();
    v5 = *(v2 + 24);
    if (v5)
    {
      [v5 trackMessageStagedWithSuccess_];
    }
  }

  return 1;
}

uint64_t sub_1D9868F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D9868FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D986904C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D98690E8(uint64_t a1)
{
  v2 = type metadata accessor for StagedMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9869144()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1D9869848()
{
  v2[3] = &type metadata for PlatformFeatures;
  v2[4] = sub_1D98698A0();
  LOBYTE(v2[0]) = 1;
  v0 = sub_1D992AE94();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1D98698A0()
{
  result = qword_1ECB47EA0;
  if (!qword_1ECB47EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EA0);
  }

  return result;
}

uint64_t sub_1D9869AA8()
{
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_30_5();
  v8(v7);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v5 | 7);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{
  *(a1 + 8) = sub_1D98797C4;
  v2 = *(v1 + 40);
  return *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = v0[116];
  v3 = v0[114];
  v4 = v0[99];
  v5 = v0[95];
  v6 = v0[81];
  v7 = v0[80];
  v15 = v0[78];
  v16 = v0[97];
  v17 = v0[72];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v14 = v0[55];
  v11 = v0[50];
  v12 = v0[48];
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return type metadata accessor for BiomeResource(0);
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return sub_1D98D8990(a1, v1, type metadata accessor for ComponentIdentifiersTable.Record);
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1)
{
  *(a1 + 8) = sub_1D98E0A40;
  v3 = *(v2 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

const char *sub_1D9869DF4(char a1)
{
  if (a1)
  {
    return "metastoreEvolutionClocks";
  }

  else
  {
    return "messageStagingEvolution";
  }
}

void sub_1D9869E20()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_8();
  v10 = type metadata accessor for LogicalClocksTable.Predicate(0);
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v17 = qword_1ECB49610;
  sub_1D986A454(0, 0xE000000000000000, 0xD00000000000007BLL, 0x80000001D993C0E0, 0xD00000000000001ALL, 0x80000001D993BBC0);
  if (sub_1D986AC54(0))
  {
    v18 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v18)
    {
      v89 = "s/LogicalClocksProvider.swift";
      v83 = "No clock records found.";
      v84 = v17;
      v19 = sub_1D992AE84();
      OUTLINED_FUNCTION_5(v19);
      (*(v20 + 16))(v16, v5, v19);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
      v24 = v10[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      *(v16 + v10[5]) = 0;
      *(v16 + v10[7]) = 2;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
      v88 = &v80;
      v30 = OUTLINED_FUNCTION_9(v29);
      v32 = *(v31 + 64);
      MEMORY[0x1EEE9AC00](v30);
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
      OUTLINED_FUNCTION_10_4();
      v38 = __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
      v86 = &v80;
      MEMORY[0x1EEE9AC00](v38);
      v39 = &v80 - v33;
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);
      v90 = v18;

      Nanoseconds = SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v3);
      MEMORY[0x1EEE9AC00](Nanoseconds);
      v43 = &v80 - v33;
      v87 = &v80 - v33;
      sub_1D9866D34(&v80 - v33, &v80 - v33, &qword_1ECB48970, &qword_1D99323A0);
      OUTLINED_FUNCTION_19_1(&v80 - v33, 1, v34);
      if (v44)
      {
        v51 = sub_1D986B804(&v80 - v33, &qword_1ECB48970, &qword_1D99323A0);
        v45 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v46 = sub_1D98EC648();
        v81 = v47;
        v82 = v46;
        v49 = v48;
        v50 = ~v48;
        v51 = sub_1D986B804(v43, &qword_1ECB48978, &qword_1D99323A8);
        v45 = MEMORY[0x1E69E7CC8];
        if (v50)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v91[0] = v45;
          OUTLINED_FUNCTION_14_12();
          v51 = sub_1D986B85C(v82, v81, v49, v52, 0xE800000000000000, 0);
          v45 = v91[0];
        }
      }

      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_8_5();
      v55 = v53 - v54;
      v56 = OUTLINED_FUNCTION_29_6();
      sub_1D9866D34(v56, v57, v58, v59);
      v60 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_1(v60, v61, v34);
      if (v44)
      {
        sub_1D986B804(v55, &qword_1ECB48970, &qword_1D99323A0);
      }

      else
      {
        v82 = sub_1D98EC648();
        v63 = v62;
        v65 = v64;
        v66 = ~v64;
        sub_1D986B804(v55, &qword_1ECB48978, &qword_1D99323A8);
        if (v66)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v91[0] = v45;
          sub_1D986B85C(v82, v63, v65, 0xD000000000000011, 0x80000001D9936910, 0);
          v45 = v91[0];
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v45;
      OUTLINED_FUNCTION_30_6();
      sub_1D986B85C(v67, v68, v69, v70, 0xEA0000000000746ELL, 258);
      v71 = v91[0];
      OUTLINED_FUNCTION_34_3(v39);
      OUTLINED_FUNCTION_34_3(v87);
      OUTLINED_FUNCTION_2_29();
      sub_1D986BC08(v16, v1);
      OUTLINED_FUNCTION_76();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v10);
      sub_1D986BD4C(v71, v1, v91);

      sub_1D986B804(v1, &qword_1ECB48E00, &qword_1D9934AB8);
      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      OUTLINED_FUNCTION_32_7();
      LOBYTE(v71) = sub_1D986D1D0(v75, v76, v77);
      __swift_destroy_boxed_opaque_existential_1(v91);
      if (v71)
      {
        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v16, v78);
      }

      else
      {
        sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D993C210, 0xD00000000000007BLL, v83 | 0x8000000000000000, 0xD00000000000001ALL, v89 | 0x8000000000000000);

        OUTLINED_FUNCTION_0_45();
        sub_1D9870FB8(v16, v79);
      }
    }
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D986A41C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D986A46C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v13 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;

  v14 = v7 + v13;
  v26 = sub_1D992B2D4();
  v15 = a7();

  if (os_log_type_enabled(v26, v15))
  {
    v24 = a5;
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v16 = 136315650;
    v17 = sub_1D992AD44();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x1EEE9AC00]();
    OUTLINED_FUNCTION_2_27();
    sub_1D992ACB4();
    v20 = sub_1D992ACC4();
    v22 = v21;
    (*(v18 + 8))(v14, v17);
    v23 = sub_1D986A6F8(v20, v22, &v27);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D986A6F8(v24, a6, &v27);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_1D986A6F8(a1, a2, &v27);
    _os_log_impl(&dword_1D9863000, v26, v15, "[%s: %s] %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA73B4E0](v25, -1, -1);
    MEMORY[0x1DA73B4E0](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D986A6F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D986A7BC(v11, 0, 0, 1, a1, a2);
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
    sub_1D986A8BC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D986A7BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D986A918(a5, a6);
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
    result = sub_1D992BD94();
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

uint64_t sub_1D986A8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D986A918(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D986A964(a1, a2);
  sub_1D986AA7C(&unk_1F5517DF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D986A964(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1D992B714())
  {
    result = sub_1D98DD344(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D992BD44();
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
          result = sub_1D992BD94();
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

uint64_t sub_1D986AA7C(uint64_t result)
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

    result = sub_1D986AB60(result, v8, 1, v3);
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

char *sub_1D986AB60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DC0, &qword_1D99344B8);
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

uint64_t sub_1D986AC54(char a1)
{
  v2 = OBJC_IVAR___SiriAnalyticsMetastore_db;
  if (*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 1;
  }

  if ((*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_bootstrapped) & 1) == 0 && (a1 & 1) == 0)
  {
    return 0;
  }

  v4 = OBJC_IVAR___SiriAnalyticsMetastore_storageURL;
  v5 = sub_1D992AD44();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v1 + v4, v5);
  v12 = type metadata accessor for DbStorage();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D990B198(v10, 2, 0, 1);
  v3 = 1;
  v16 = *(v1 + v2);
  *(v1 + v2) = v15;

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D992BD64();

  v26 = 0xD000000000000019;
  v27 = 0x80000001D9938700;
  sub_1D9887904();
  v17 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v17);

  OUTLINED_FUNCTION_4_8();
  sub_1D986A454(v18, v19, v20, v21, v22, v23);

  return v3;
}

void sub_1D986AF8C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v10 < a2)
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
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1D986B1ACLL);
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

      return;
  }
}

unint64_t SiriAnalyticsMachAbsoluteTimeGetNanoseconds(unint64_t a1)
{
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  return (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * a1);
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return swift_task_create();
}

uint64_t sub_1D986B320(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_0()
{
  v3 = *(v1 + *(v0 + 20));

  return sub_1D987A1D0(v1, type metadata accessor for MonotonicTimestamp);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_1D992BE34();
}

unint64_t OUTLINED_FUNCTION_10_5()
{
  v2 = *v0;

  return sub_1D9889568();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t result)
{
  *(result + 8) = sub_1D98A63FC;
  v2 = *(v1 + 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_10_10()
{
  *(v2 - 128) = 0;
  *(v2 - 120) = 0;
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
}

id OUTLINED_FUNCTION_10_11()
{
  v2 = *(v0 + 152);

  return sub_1D988CFCC();
}

void OUTLINED_FUNCTION_10_13()
{
  v3 = *(v2 - 128);
  v5 = *(v1 + 16);
  v4 = v1 + 16;
  v6 = v0 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  *(v2 - 184) = *(v4 + 56);
  *(v2 - 176) = v5;
  *(v2 - 168) = v4;
  *(v2 - 192) = v4 - 8;
}

void OUTLINED_FUNCTION_10_14()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return MEMORY[0x1EEE01C10](0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  result = v0;
  *(v2 - 120) = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_25_1()
{
  v1 = v0[52];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t result)
{
  *(v1 + 128) = result;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1D992BEC4();
}

uint64_t sub_1D986B804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D986B85C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1D986F8D4();
  OUTLINED_FUNCTION_0_22(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48838, &qword_1D9931B60);
  if ((sub_1D992BE34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v7;
  v22 = sub_1D986F8D4();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_13:
    result = sub_1D992BFC4();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 24 * v19;
    v26 = *v25;
    v27 = *(v25 + 8);
    *v25 = a1;
    *(v25 + 8) = a2;
    v28 = *(v25 + 16);
    *(v25 + 16) = a3;

    return sub_1D986C908(v26, v27, v28);
  }

  else
  {
    sub_1D986BBA8(v19, a4, a5, a6 & 0x1FF, a1, a2, a3, v24);
  }
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  v17 = *(v0 + 288);
  v18 = *(v0 + 296);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v10 = *(v0 + 208);
  v11 = *(v0 + 232);
  v5 = *(v0 + 200);
  v12 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v13 = *(v0 + 136);
  v8 = *(*(v0 + 168) + 184);
  v14 = *(v0 + 320);

  return sub_1D98D4378(v1);
}

unint64_t sub_1D986BABC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *(v13 + 17);
      v16 = *v13 == a1 && *(v13 + 8) == a2;
      if (v16 || (sub_1D992BF64()) && v14 == a3 && ((v15 ^ ((a3 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1D986BBA8(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 24 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  *(v8 + 17) = HIBYTE(a4) & 1;
  v9 = a8[7] + 24 * result;
  *v9 = a5;
  *(v9 + 8) = a6;
  *(v9 + 16) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1D986BC08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_31_7();
  v5 = v4(v3);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

uint64_t sub_1D986BC74(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  result = OUTLINED_FUNCTION_15(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v11 = a1 + *(a4 + 24);
  }

  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1D986BD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  sub_1D9866D34(a2, &v17 - v8, &qword_1ECB48E00, &qword_1D9934AB8);
  v10 = type metadata accessor for LogicalClocksTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_1D986B804(v9, &qword_1ECB48E00, &qword_1D9934AB8);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v10;
    v19 = &off_1F55170B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_1D986C22C(v9, boxed_opaque_existential_1);
  }

  a3[3] = &type metadata for SQLUpdate;
  a3[4] = &off_1F5516B88;
  v12 = swift_allocObject();
  *a3 = v12;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 64) = 0u;
  strcpy((v12 + 16), "logical_clocks");
  *(v12 + 31) = -18;
  sub_1D986C284(0x5F726574746573, 0xE700000000000000, a1);
  *(v12 + 32) = 0x5F726574746573;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  return sub_1D986D144(&v17, v12 + 64);
}

uint64_t sub_1D986BF1C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D986BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_15(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_35_0();
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v10 = *(a1 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_4(unsigned int a1)
{
  v2 = a1 | 0x5F64657400000000;

  return sub_1D9889410(v2, 0xEA00000000006E6FLL);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_1D992BE34();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D9879FF8(v9, &a9 - v10);
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

uint64_t sub_1D986C22C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_31_7();
  v5 = v4(v3);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D986C284(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D986C328(a3, sub_1D986C8D8);
}

void sub_1D986C328(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D986C620();
    v4 = v47;
    v7 = sub_1D986C874(v3);
    v8 = 0;
    v9 = v3 + 64;
    v37 = v5;
    v38 = v2;
    v36 = v3 + 72;
    v39 = v3 + 64;
    v40 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_26;
      }

      v43 = v8;
      v44 = v5;
      v42 = v6;
      v11 = *(v3 + 56);
      v12 = *(v3 + 48) + 24 * v7;
      v13 = *(v12 + 8);
      v45 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = v11 + 24 * v7;
      v46 = v4;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      swift_bridgeObjectRetain_n();
      sub_1D986C8B8(v18, v17, v19);
      sub_1D986C8B8(v18, v17, v19);

      sub_1D986C908(v18, v17, v19);
      if (v15)
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v21 = a2(v45, v13, v20 | v14, v18, v17, v19);
      v23 = v22;

      v24 = v17;
      v4 = v46;
      sub_1D986C908(v18, v24, v19);
      v25 = *(v46 + 16);
      if (v25 >= *(v46 + 24) >> 1)
      {
        sub_1D986C620();
        v4 = v46;
      }

      *(v4 + 16) = v25 + 1;
      v26 = v4 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v3 = v40;
      v27 = 1 << *(v40 + 32);
      if (v7 >= v27)
      {
        goto LABEL_27;
      }

      v9 = v39;
      v28 = *(v39 + 8 * v10);
      if ((v28 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v40 + 36) != v44)
      {
        goto LABEL_29;
      }

      v29 = v28 & (-2 << (v7 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v30 = v38;
      }

      else
      {
        v31 = v10 << 6;
        v32 = v10 + 1;
        v33 = (v36 + 8 * v10);
        v30 = v38;
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_1D988AD24(v7, v44, v42 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_22;
          }
        }

        sub_1D988AD24(v7, v44, v42 & 1);
      }

LABEL_22:
      v6 = 0;
      v8 = v43 + 1;
      v7 = v27;
      v5 = v37;
      if (v43 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1D986C620()
{
  v1 = *v0;
  sub_1D986C66C();
  *v0 = v2;
}

void sub_1D986C66C()
{
  OUTLINED_FUNCTION_7_10();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_19_4(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_48(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_22_4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t result)
{
  *(v2 + 952) = result;
  *(v2 + 960) = *(v3 + *(v1 + 48));
  return result;
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t sub_1D986C878(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1D992BC54();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1D986C8B8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1D987BA38(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D986C908(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1D987106C(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D986C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a6 == 4 && (a5 | a4) == 0)
  {
    v21 = a1;

    MEMORY[0x1DA739C30](0x4C4C554E203D20, 0xE700000000000000);
  }

  else
  {
    if (a8)
    {
      v15 = a7;
    }

    else
    {
      v15 = 0;
    }

    if (a8)
    {
      v16 = a8;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    MEMORY[0x1DA739C30](v15, v16);

    MEMORY[0x1DA739C30](a1, a2);

    sub_1D986C8B8(a4, a5, a6);
    sub_1D986CB18();
    v17 = *(*(a9 + 24) + 16);
    sub_1D986D014(v17);
    v18 = *(a9 + 24);
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 40 * v17;
    *(v19 + 32) = 64;
    *(v19 + 40) = 0xE100000000000000;
    *(v19 + 48) = a4;
    *(v19 + 56) = a5;
    *(v19 + 64) = a6;
    v21 = a1;

    MEMORY[0x1DA739C30](2112800, 0xE300000000000000);
    MEMORY[0x1DA739C30](64, 0xE100000000000000);
  }

  return v21;
}

uint64_t sub_1D986CABC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

void sub_1D986CB30()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_6(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48A70, &unk_1D99326E0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_8();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_29_5();
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v3] <= v11)
    {
      memmove(v11, v12, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v3 = v1[96];
  v1[104] = v0;
  v1[103] = v3;
  v13 = v1[78];
  v14 = v1[97];
  v5 = v1[41];
  v4 = v1[42];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[37];
  v11 = v1[54];
  v9 = v1[36];
  v12 = v1[80];

  return sub_1D992B874();
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];

  return sub_1D987A170(v2, v4, type metadata accessor for RootLogicalClock);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1D986DEE4(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_1D992AE84();
}

void OUTLINED_FUNCTION_11_4()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[60];
  v4 = v0[57];
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1D98C6990(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  result = *(v0 + 40) + 1;
  *(v0 + 40) = result;
  v2 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_11_12()
{
  *(v2 - 96) = 0;
  *(v2 - 88) = 0;
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
}

char *OUTLINED_FUNCTION_11_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 - 136);
  v14 = *(v10 - 176);
  v13 = *(v10 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return sub_1D99002F8();
}

void OUTLINED_FUNCTION_11_19()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  v3[81] = v0;
  v6 = v3[72];
  v7 = v3[55];
  *(v0 + 16) = v1;
  v8 = v0 + 16 * v4;
  *(v8 + 32) = sub_1D98AB1A8;
  *(v8 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return sub_1D986B804(a1, v1, v2);
}

void OUTLINED_FUNCTION_34_5()
{

  sub_1D98B9860();
}

uint64_t OUTLINED_FUNCTION_31_0(unint64_t *a1)
{

  return sub_1D9882D14(a1);
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{
  *(a1 + 8) = sub_1D98A6CB4;
  v2 = *(v1 + 424);
  return *(v1 + 872);
}

void OUTLINED_FUNCTION_31_5()
{

  JUMPOUT(0x1DA739E70);
}

uint64_t OUTLINED_FUNCTION_31_6@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 152) = *(a1 + 8);
  return result;
}

uint64_t sub_1D986D0FC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D986D144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484F8, &qword_1D99304F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics11DbDataValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D986D1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_18(a1, a2, a3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_11_21(v10, v20);
  v12(v11);
  v13 = OUTLINED_FUNCTION_18_12();
  v15 = v14(v13);
  v18 = sub_1D987005C(v15, v16, v17);

  (*(v6 + 8))(v4, v3);
  return v18 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics12SQLStatement_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D986D310()
{
  sub_1D986D4C8((v0 + 6), &v17);
  if (v18)
  {
    sub_1D986D53C(&v17, &v19);
    v1 = v21;
    v2 = v22;
    __swift_project_boxed_opaque_existential_1(&v19, v21);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    *&v17 = 32;
    *(&v17 + 1) = 0xE100000000000000;
    MEMORY[0x1DA739C30](v3);

    v6 = *(&v17 + 1);
    v7 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    sub_1D988395C(&v17);
    v5 = 0;
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v13 = sub_1D986DDBC();
  v15 = v14;
  if (v12 && v5)
  {
    v19 = v5;
    sub_1D986FD90(v12);
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D992BD64();

  v19 = 0x20455441445055;
  v20 = 0xE700000000000000;
  MEMORY[0x1DA739C30](*v0, v0[1]);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](v13, v15);

  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](v7, v6);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return v19;
}

uint64_t sub_1D986D4C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484F8, &qword_1D99304F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D986D53C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1D987A1D0(v0, type metadata accessor for LogicalClockStart);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_3()
{

  sub_1D98BD920();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t result)
{
  *(result + 16) = &unk_1D9931EA8;
  *(result + 24) = v1;
  return result;
}

id OUTLINED_FUNCTION_155(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_12_6(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D988C450(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1D98C3BD8(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1D992AD44();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1[13] = *(v2 + 72);
  v1[14] = *(v2 + 16);
  v1[15] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

void OUTLINED_FUNCTION_12_14()
{
  *(v3 + 16) = v2;
  v6 = v3 + 24 * v0;
  *(v6 + 32) = *(v5 - 160);
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
  v7 = v1 + *(v5 - 184);
  v8 = *(v5 - 144);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, unint64_t a2, uint64_t a3)
{

  sub_1D98DCEB4(a1, a2, a3, v3 | 0x8000000000000000, 0xD000000000000018, v4 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t result)
{
  *(v2 - 96) = v1;
  v3 = *(result + 16);
  return result;
}

id OUTLINED_FUNCTION_5_4()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v2 = *(v0 + 40);

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return sub_1D992B9C4();
}

void OUTLINED_FUNCTION_5_7(uint64_t a1@<X8>)
{
  *(a1 + 48) = 258;
  v2 = *(v1 - 98);
  *(a1 + 50) = *(v1 - 102);
  *(a1 + 54) = v2;
}

void OUTLINED_FUNCTION_5_10()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[60];
  v4 = v0[57];
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[52];
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[43];
  v14 = v0[41];
}

uint64_t OUTLINED_FUNCTION_5_15@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D988C450(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_5_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D9879FF8(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_5_25()
{
  v3 = *(v2 - 112);
  *(v0 + *(v1 + 20)) = *(v2 - 96);
  *(v0 + *(v1 + 24)) = *(v2 - 100);
}

uint64_t OUTLINED_FUNCTION_5_27()
{
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_1D992B614();
}

id OUTLINED_FUNCTION_9_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return sub_1D989CF10(a1, a2, a3, a4, a5, 0x41532E454C4FLL, 0xE600000000000000, 0, a9);
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 224);
  return result;
}

void OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 152);

  sub_1D98DCEB4(a1, v4, a3, v3 | 0x8000000000000000, 0xD00000000000001BLL, v5 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_9_10(uint64_t a1@<X8>)
{
  *(v2 - 152) = 7;
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;
}

void OUTLINED_FUNCTION_9_16(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D98DCEB4(a1, a2 | 0x8000000000000000, v4 + 76, v2 | 0x8000000000000000, 0xD00000000000001FLL, v3 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return sub_1D992AE84();
}

uint64_t sub_1D986DC38(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D986C908(result, a2, a3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  sub_1D9866358(v0, *(v1 - 176));
}

void OUTLINED_FUNCTION_18_7()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1D986DDBC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v0 = sub_1D992B5E4();
  v2 = v1;

  MEMORY[0x1DA739C30](v0, v2);

  return 542393683;
}

unint64_t sub_1D986DE88()
{
  result = qword_1ED8BD650;
  if (!qword_1ED8BD650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD650);
  }

  return result;
}

uint64_t sub_1D986DEE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D986E158(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D992BC94();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 storageRepresentation];
      if (v8)
      {
        v9 = v8;
        if (*(v1 + v5))
        {
          sub_1D986621C(v8);
        }

        v7 = v9;
      }

      else
      {
        if (qword_1ED8BF428 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        sub_1D98DCEB4(0xD000000000000032, 0x80000001D9937A20, 0xD00000000000006FLL, 0x80000001D9937A60, 0xD000000000000014, 0x80000001D9937AD0);
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

uint64_t sub_1D986E2E4(void *a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, void (*a6)(uint64_t))
{
  sub_1D986E35C(0, a4, a5);
  sub_1D992B7B4();
  v9 = a1;
  v10 = OUTLINED_FUNCTION_4_4();
  a6(v10);
}

uint64_t sub_1D986E35C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1D992C074();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_12()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_3_13@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void OUTLINED_FUNCTION_3_16()
{
  v1[10] = 0;
  v1[11] = 0xE000000000000000;
  v1[18] = v0;
}

id OUTLINED_FUNCTION_3_19()
{

  return [v0 (v1 + 3064)];
}

unint64_t OUTLINED_FUNCTION_3_26()
{
  sub_1D98907D8(v0);

  return sub_1D98907D8(v1);
}

uint64_t sub_1D986E6C0()
{
  v2 = v0;
  OUTLINED_FUNCTION_11_2();
  v105 = v3;
  v106 = 0;
  v107 = v3;
  v4 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v4);
  v101 = v8;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v16 = (*(v6 + 32))(&v94 - v10, v0, v4);
    v1 = &v94;
    MEMORY[0x1EEE9AC00](v16);
    v17 = *(v6 + 16);
    v18 = OUTLINED_FUNCTION_28_1();
    v19(v18);
    v20 = sub_1D992AE24();
    v22 = v21;
    v23 = v6;
    v24 = *(v6 + 8);
    v24(&v94 - v10, v4);
    OUTLINED_FUNCTION_11_2();
    v0 = &v105;
    sub_1D986F118(&v94, 0xE800000000000000, 61, 0xE100000000000000, v20, v22, 0);

    v24(&v94 - v10, v4);
    v6 = v23;
    v8 = v101;
  }

  v25 = type metadata accessor for LogicalClocksTable.Predicate(0);
  v26 = *(v2 + *(v25 + 20));
  v95 = v25;
  if (v26)
  {
    v100 = v4;
    v27 = *(v26 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v94 = v2;
      v104 = MEMORY[0x1E69E7CC0];
      sub_1D98B9860();
      v28 = v104;
      v31 = *(v6 + 16);
      v30 = v6 + 16;
      v32 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
      v97 = *(v30 + 56);
      v98 = v31;
      v96 = (v30 - 8);
      v99 = v30;
      do
      {
        v103 = &v94;
        MEMORY[0x1EEE9AC00](v29);
        v33 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
        v34 = v100;
        v35 = v98;
        v36 = (v98)(&v94 - v33, v32, v100);
        MEMORY[0x1EEE9AC00](v36);
        v35(&v94 - v33, &v94 - v33, v34);
        v37 = sub_1D992AE24();
        v102 = v38;
        v39 = *v96;
        v40 = OUTLINED_FUNCTION_29_2();
        v39(v40);
        v29 = (v39)(&v94 - v33, v34);
        v104 = v28;
        v1 = *(v28 + 16);
        if (v1 >= *(v28 + 24) >> 1)
        {
          sub_1D98B9860();
          v28 = v104;
        }

        *(v28 + 16) = v1 + 1;
        v41 = v28 + 24 * v1;
        v42 = v102;
        *(v41 + 32) = v37;
        *(v41 + 40) = v42;
        *(v41 + 48) = 0;
        v32 += v97;
        --v27;
        v8 = v101;
      }

      while (v27);
      v2 = v94;
      v25 = v95;
      OUTLINED_FUNCTION_11_2();
    }

    v0 = &v105;
    sub_1D987B5CC(v1, 0xE800000000000000, 0, v28);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v103 = &v94;
  v44 = OUTLINED_FUNCTION_5(v43);
  v46 = *(v45 + 64);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = *(v25 + 24);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866D90(v2 + v48, v0, &qword_1ECB48708, &qword_1D9931338);
  if (__swift_getEnumTagSinglePayload(v0, 1, v43) == 1)
  {
    sub_1D986B804(v0, &qword_1ECB48708, &qword_1D9931338);
  }

  else
  {
    v94 = v2;
    sub_1D989437C(v0, &v94 - v47, &qword_1ECB48700, &qword_1D9931330);
    v53 = sub_1D992AE04();
    v101 = &v94;
    OUTLINED_FUNCTION_0();
    v55 = v54;
    v57 = *(v56 + 64);
    MEMORY[0x1EEE9AC00](v58);
    OUTLINED_FUNCTION_33_0();
    v61 = v60 - (v59 & 0xFFFFFFFFFFFFFFF0);
    v62 = &v94 - v47;
    v102 = MEMORY[0x1EEE9AC00](&v94 - v47);
    sub_1D9866D90(v102, &v94 - v47, &qword_1ECB48700, &qword_1D9931330);
    v63 = *(v43 + 48);
    OUTLINED_FUNCTION_18_1(v62);
    v100 = v55;
    if (v64)
    {
      sub_1D986B804(&v62[v63], &qword_1ECB48710, &qword_1D9931340);
      v73 = sub_1D986B804(v62, &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      (*(v55 + 32))(v61, v62, v53);
      v65 = sub_1D986B804(&v62[v63], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v65);
      v66 = OUTLINED_FUNCTION_26_1(v55);
      v67(v66);
      sub_1D992ADC4();
      v68 = *(v55 + 8);
      v69 = OUTLINED_FUNCTION_29_2();
      v68(v69);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_36_0();
      sub_1D986F118(v70, v71, 15678, 0xE200000000000000, v72, 0, 2);
      v73 = (v68)(v61, v53);
    }

    MEMORY[0x1EEE9AC00](v73);
    OUTLINED_FUNCTION_33_0();
    v76 = v75 - (v74 & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v77);
    v78 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = v102;
    sub_1D9866D90(v102, v78, &qword_1ECB48700, &qword_1D9931330);
    v80 = *(v43 + 48);
    OUTLINED_FUNCTION_18_1(&v78[v80]);
    if (v64)
    {
      sub_1D986B804(v79, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v78[v80], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(&v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      v81 = v100;
      (*(v100 + 32))(v76, &v78[v80], v53);
      v82 = sub_1D986B804(v78, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v82);
      v83 = OUTLINED_FUNCTION_26_1(v81);
      v84(v83);
      sub_1D992ADC4();
      v85 = *(v81 + 8);
      v86 = OUTLINED_FUNCTION_29_2();
      v85(v86);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_36_0();
      sub_1D986F118(v87, v88, 15676, 0xE200000000000000, v89, 0, 2);
      (v85)(v76, v53);
      sub_1D986B804(v79, &qword_1ECB48700, &qword_1D9931330);
    }

    v2 = v94;
  }

  v90 = *(v2 + *(v95 + 28));
  if (v90 != 2)
  {
    v91 = OUTLINED_FUNCTION_16_3();
    sub_1D986F118(v91, v92, 0, v90 & 1, 0, 0, 255);
    sub_1D9893CEC(0, v90 & 1);
  }

  sub_1D986FC08(v105, v106);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_1D992BE34();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_15_5()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D986F118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  OUTLINED_FUNCTION_1_4();
  if (!a4)
  {
    v15 = 0x4C4C554E205349;
    v16 = 0xE700000000000000;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v15 = 0x4E20544F4E205349;
    v16 = 0xEB000000004C4C55;
LABEL_5:
    MEMORY[0x1DA739C30](v15, v16);
LABEL_8:
    sub_1D986CABC(sub_1D986FB38);
    v29 = *(*v7 + 16);
    result = sub_1D986D0FC(v29, sub_1D986FB38);
    v31 = *v7;
    *(v31 + 16) = v29 + 1;
    v32 = v31 + 16 * v29;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    *v7 = v31;
    return result;
  }

  if (a7 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_8();
    sub_1D986C8B8(v17, v18, v19);
    MEMORY[0x1DA739C30](a1, a2);
    v20 = OUTLINED_FUNCTION_0_8();
    sub_1D986F8C0(v20, v21, v22);

    sub_1D986CABC(sub_1D986CB30);
    v23 = *(v7[2] + 16);
    sub_1D986D0FC(v23, sub_1D986CB30);
    v24 = v7[2];
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 40 * v23;
    *(v25 + 32) = 64;
    *(v25 + 40) = 0xE100000000000000;
    *(v25 + 48) = a5;
    *(v25 + 56) = a6;
    *(v25 + 64) = a7;
    v7[2] = v24;
    sub_1D986FB24(a3, a4);
    OUTLINED_FUNCTION_1_4();
    MEMORY[0x1DA739C30](64, 0xE100000000000000);

    MEMORY[0x1DA739C30](a3, a4);

    v26 = OUTLINED_FUNCTION_0_8();
    sub_1D986DC38(v26, v27, v28);
    goto LABEL_8;
  }
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_24()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 176) | 0x8000000000000000;
  v4 = *(v0 - 128);

  sub_1D98DCEB4(v2, v4, 0xD00000000000006CLL, v3, 0x726F466B63656863, 0xEF293A5F28434241);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_30()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = v1 + *(a1 + 20);
  *v4 = 0;
  *(v4 + 8) = 1;

  return type metadata accessor for ResourceType(0);
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_1D992B614();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return swift_once();
}

uint64_t sub_1D986F8C0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D986C8B8(result, a2, a3);
  }

  return result;
}

unint64_t sub_1D986F8D4()
{
  OUTLINED_FUNCTION_5_5();
  sub_1D992B6D4();
  sub_1D992C0C4();
  v0 = OUTLINED_FUNCTION_9_2();

  return sub_1D986BABC(v0, v1, v2, v3);
}

id OUTLINED_FUNCTION_8_4()
{

  return [v0 (v3 + 3293)];
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1, unint64_t a2)
{
  sub_1D9866358(a1, a2);
  sub_1D9866358(*(v2 - 216), *(v2 - 208));
}

uint64_t OUTLINED_FUNCTION_8_9@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D9879FF8(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_1D992AD44();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t result)
{
  *(v1 + *(result + 20)) = v2;
  v3 = *(result + 24);
  return result;
}

uint64_t sub_1D986FB24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1D986FB38()
{
  OUTLINED_FUNCTION_9_8();
  if (v5)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_35_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487C8, &unk_1D99324B0);
    v9 = OUTLINED_FUNCTION_20_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_18_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1D986FC08(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 21071;
  }

  else
  {
    v2 = 4476481;
  }

  if (a2)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x1DA739C30](v2, v3);

  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v4 = sub_1D992B5E4();
  v6 = v5;

  MEMORY[0x1DA739C30](v4, v6);

  return 0x204552454857;
}

unint64_t sub_1D986FD2C()
{
  result = qword_1ED8BD680;
  if (!qword_1ED8BD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483F8, &unk_1D9931370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD680);
  }

  return result;
}

void sub_1D986FD90(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_44(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D986FE38(v4, 1, sub_1D986CB30);
  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_28();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_5_19();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_13_10();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1D986FE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

void OUTLINED_FUNCTION_14_1(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = *(v5 + 1);
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  v1 = *(*(v0 - 152) + 8);
  result = *(v0 - 248);
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1)
{
  *(v1 + 48) = a1;
  v3 = *(v1 + 24);

  return type metadata accessor for TailToOSLog();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
  result = *(v0 + 48) + *(v4 - 104) * v3;
  v6 = *(v2 + 32);
  return result;
}

const char *sub_1D987005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D9870178() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    return (v7 & 1);
  }

  if (!a3)
  {
    v15 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    v16 = *(v3 + v15);
    sub_1D992B6B4();
    OUTLINED_FUNCTION_9_19();
    sqlite3_exec(v17, v18, v19, v20, 0);

    v21 = OUTLINED_FUNCTION_8_18();
    LOBYTE(v7) = sub_1D9870308(v21, v22, v23, v24, v25);
    return (v7 & 1);
  }

  v7 = sub_1D98701CC(a1, a2, a3);
  if (!v7)
  {
    return (v7 & 1);
  }

  v8 = v7;
  sqlite3_step(v7);
  sqlite3_finalize(v8);
  v9 = OUTLINED_FUNCTION_8_18();

  return sub_1D9870308(v9, v10, v11, v12, v13);
}

uint64_t sub_1D9870178()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D990B368();
  }

  return v2 & 1;
}

sqlite3_stmt *sub_1D98701CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  ppStmt[0] = 0;
  if ((sub_1D9870178() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  v6 = *(v3 + v5);
  v7 = sub_1D992B614();
  v8 = [v7 UTF8String];
  v9 = v7;
  v10 = sqlite3_prepare_v2(v6, v8, 0x80000000, ppStmt, 0);
  if ((sub_1D9870308(v10, 0xD00000000000005CLL, 0x80000001D993DAE0, 0xD000000000000021, 0x80000001D993DB40) & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = ppStmt[0];
  if (ppStmt[0] && a3 && (sub_1D98705D0(a3, ppStmt[0]) & 1) == 0)
  {
    sqlite3_finalize(v11);
LABEL_7:
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

const char *sub_1D9870308(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D98705A4(a1, &unk_1F5518238);
  if (v11)
  {
    return v11;
  }

  v49 = a3;
  v50 = a4;
  v12 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  OUTLINED_FUNCTION_9_19();
  swift_beginAccess();
  v13 = sqlite3_extended_errcode(*(v6 + v12));
  result = sqlite3_errstr(a1);
  if (result)
  {
    v15 = sub_1D992B604();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (qword_1ED8BD6D8 != -1)
      {
        OUTLINED_FUNCTION_1_43();
      }

      v46 = qword_1ECB49638;
      sub_1D992BD64();

      OUTLINED_FUNCTION_17_13();
      v19 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v19);

      OUTLINED_FUNCTION_13_17();
      HIDWORD(v51) = v13;
      OUTLINED_FUNCTION_17_13();
      v20 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v20);

      MEMORY[0x1DA739C30](0x7069726373656420, 0xEE00203A6E6F6974);
      MEMORY[0x1DA739C30](v17, v18);

      v29 = OUTLINED_FUNCTION_19_9(v21, v22, v23, v24, v25, v26, v27, v28, v46, a5, v49, v50, v51, 0x203A726F727265);
      v34 = v48;
    }

    else
    {
      if (qword_1ED8BD6D8 != -1)
      {
        OUTLINED_FUNCTION_1_43();
      }

      sub_1D992BD64();

      v35 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v35);

      OUTLINED_FUNCTION_13_17();
      HIDWORD(v51) = v13;
      v36 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v36);

      v29 = OUTLINED_FUNCTION_19_9(v37, v38, v39, v40, v41, v42, v43, v44, v45, v47, a3, v50, v51, 0x203A726F727265);
      v34 = a5;
    }

    sub_1D98DCEB4(v29, v30, v31, v32, v33, v34);

    sub_1D990BF54();
    return v11;
  }

  __break(1u);
  return result;
}

BOOL sub_1D98705A4(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D98705D0(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = a2;
  v134 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_bind_parameter_count(a2);
  v5 = *(a1 + 16);
  if (v5 <= v4)
  {
    if (!v5)
    {
LABEL_88:
      result = 1;
      goto LABEL_89;
    }

    v7 = 0;
    v129 = a1 + 32;
    v125 = v2;
    v126 = *(a1 + 16);
    while (2)
    {
      v8 = v7 + 1;
      v9 = v129 + 40 * v7;
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      if (*(v9 + 32) < 0)
      {
        if (v7 <= 0x7FFFFFFE)
        {
          v33 = *v9;
          switch(*(v9 + 16))
          {
            case 1u:
              v77 = OUTLINED_FUNCTION_94();
              v79 = v33;
LABEL_39:
              v80 = sqlite3_bind_int64(v77, v78, v79);
              goto LABEL_40;
            case 2u:
              v81 = *v9;
              v61 = OUTLINED_FUNCTION_94();
LABEL_33:
              v80 = sqlite3_bind_double(v61, v62, v63);
              goto LABEL_40;
            case 3u:
              v130 = *(v9 + 24);
              v128 = v7 + 1;
              v8 = HIDWORD(v33);
              switch(v11 >> 62)
              {
                case 1uLL:
                  if (v33 > v33 >> 32)
                  {
                    goto LABEL_99;
                  }

                  v118 = *(v9 + 32);

                  v119 = sub_1D992ABC4();
                  if (!v119)
                  {
                    goto LABEL_82;
                  }

                  v120 = sub_1D992ABE4();
                  if (__OFSUB__(v33, v120))
                  {
                    goto LABEL_105;
                  }

                  v119 += v33 - v120;
LABEL_82:
                  sub_1D992ABD4();
                  LODWORD(v13) = HIDWORD(v33) - v33;
                  if (__OFSUB__(HIDWORD(v33), v33))
                  {
                    goto LABEL_101;
                  }

                  v8 = v128;
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v121 = OUTLINED_FUNCTION_94();
                  sqlite3_bind_blob(v121, v122, v119, v13, v123);
                  v39 = OUTLINED_FUNCTION_2_39();
                  v42 = v130;
                  v43 = v118;
                  goto LABEL_14;
                case 2uLL:
                  v132 = *(v9 + 32);
                  v103 = *(v33 + 16);

                  v104 = sub_1D992ABC4();
                  if (!v104)
                  {
                    goto LABEL_67;
                  }

                  v105 = sub_1D992ABE4();
                  if (__OFSUB__(v103, v105))
                  {
                    goto LABEL_104;
                  }

                  v104 += v103 - v105;
LABEL_67:
                  v8 = v128;
                  sub_1D992ABD4();
                  v107 = *(v33 + 16);
                  v106 = *(v33 + 24);
                  v13 = v106 - v107;
                  if (__OFSUB__(v106, v107))
                  {
                    goto LABEL_100;
                  }

                  if (v13 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_102;
                  }

                  if (v13 > 0x7FFFFFFF)
                  {
                    goto LABEL_103;
                  }

                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v108 = OUTLINED_FUNCTION_94();
                  sqlite3_bind_blob(v108, v109, v104, v13, v110);
                  v39 = OUTLINED_FUNCTION_2_39();
                  v42 = v130;
                  v43 = v132;
                  break;
                case 3uLL:
                  v82 = *(v9 + 32);
                  *(&v133 + 6) = 0;
                  *&v133 = 0;
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v83 = OUTLINED_FUNCTION_20_9();
                  v86 = 0;
                  goto LABEL_76;
                default:
                  v82 = *(v9 + 32);
                  LOWORD(v133) = *v9;
                  BYTE2(v133) = BYTE2(v33);
                  BYTE3(v133) = BYTE3(v33);
                  BYTE4(v133) = BYTE4(v33);
                  BYTE5(v133) = BYTE5(v33);
                  BYTE6(v133) = BYTE6(v33);
                  BYTE7(v133) = HIBYTE(v33);
                  WORD4(v133) = v11;
                  BYTE10(v133) = BYTE2(v11);
                  BYTE11(v133) = BYTE3(v11);
                  BYTE12(v133) = BYTE4(v11);
                  BYTE13(v133) = BYTE5(v11);
                  if (qword_1ED8BD808 != -1)
                  {
                    OUTLINED_FUNCTION_0_52();
                    swift_once();
                  }

                  v83 = OUTLINED_FUNCTION_20_9();
LABEL_76:
                  sqlite3_bind_blob(v83, v84, v85, v86, v87);
                  v111 = OUTLINED_FUNCTION_2_39();
                  sub_1D9870F58(v111, v112, v113, v130, v82);
                  v114 = OUTLINED_FUNCTION_4_27();
                  sub_1D9870F58(v114, v115, v10, v130, v82);
                  v116 = OUTLINED_FUNCTION_4_27();
                  sub_1D986C908(v116, v117, 3);
                  if (v13)
                  {
                    goto LABEL_2;
                  }

                  goto LABEL_62;
              }

              goto LABEL_14;
            case 4u:
              v59 = OUTLINED_FUNCTION_94();
LABEL_31:
              v80 = sqlite3_bind_null(v59, v60);
LABEL_40:
              if (v80)
              {
                goto LABEL_2;
              }

              goto LABEL_62;
            default:
              v34 = OUTLINED_FUNCTION_4_27();
              sub_1D986C8B8(v34, v35, 0);
              OUTLINED_FUNCTION_4_27();
              [sub_1D992B614() UTF8String];
              v36 = OUTLINED_FUNCTION_20_4();
              v37 = OUTLINED_FUNCTION_94();
              sqlite3_bind_text(v37, v38, v13, -1, 0);
              v39 = OUTLINED_FUNCTION_2_39();
              v42 = v12;
              v43 = v13;
LABEL_14:
              sub_1D9870F58(v39, v40, v41, v42, v43);
              if (v13)
              {
                goto LABEL_2;
              }

LABEL_62:
              v7 = v8;
              if (v8 == v5)
              {
                goto LABEL_88;
              }

              continue;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
      }

      break;
    }

    v14 = *(v9 + 8);

    v131 = v13;
    sub_1D986C8B8(v10, v12, v13);

    if ((*(v9 + 32) & 0x80000000) == 0)
    {
      v127 = v8;
      v16 = *v9;
      v15 = *(v9 + 8);
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      v19 = OUTLINED_FUNCTION_3_25();
      sub_1D9870EF8(v19, v20, v21, v22, v23);

      v24 = 4;
      v25 = &unk_1F5518210;
      while (--v24)
      {
        v26 = v25 + 2;
        v27 = *(v25 - 1);
        v13 = *v25;

        LOBYTE(v27) = sub_1D992B724();

        v25 = v26;
        if (v27)
        {
          v28 = OUTLINED_FUNCTION_3_25();
          sub_1D9870F58(v28, v29, v30, v31, v32);
          goto LABEL_18;
        }
      }

      *&v133 = 64;
      *(&v133 + 1) = 0xE100000000000000;
      v13 = &v133;
      v44 = OUTLINED_FUNCTION_4_27();
      MEMORY[0x1DA739C30](v44);

      v45 = OUTLINED_FUNCTION_3_25();
      sub_1D9870F58(v45, v46, v47, v48, v49);
LABEL_18:
      v2 = v125;
      v5 = v126;
      v8 = v127;
    }

    OUTLINED_FUNCTION_4_27();
    v50 = sub_1D992B614();

    [v50 UTF8String];
    v51 = OUTLINED_FUNCTION_20_4();
    if (sqlite3_bind_parameter_index(v2, v13))
    {
      switch(v131)
      {
        case 1:
          v77 = OUTLINED_FUNCTION_10_17();
          v79 = v10;
          goto LABEL_39;
        case 2:
          v61 = OUTLINED_FUNCTION_10_17();
          goto LABEL_33;
        case 3:
          v64 = v8;
          switch(v12 >> 62)
          {
            case 1uLL:
              if (v10 > v10 >> 32)
              {
                goto LABEL_92;
              }

              v89 = sub_1D992ABC4();
              if (!v89)
              {
                goto LABEL_57;
              }

              v99 = sub_1D992ABE4();
              if (__OFSUB__(v10, v99))
              {
                goto LABEL_98;
              }

              v89 += v10 - v99;
LABEL_57:
              sub_1D992ABD4();
              LODWORD(v93) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_94;
              }

              if (qword_1ED8BD808 == -1)
              {
                goto LABEL_59;
              }

              goto LABEL_86;
            case 2uLL:
              v88 = *(v10 + 16);

              v89 = sub_1D992ABC4();
              if (!v89)
              {
                goto LABEL_45;
              }

              v90 = sub_1D992ABE4();
              if (__OFSUB__(v88, v90))
              {
                goto LABEL_97;
              }

              v89 += v88 - v90;
LABEL_45:
              v8 = v64;
              sub_1D992ABD4();
              v92 = *(v10 + 16);
              v91 = *(v10 + 24);
              v93 = v91 - v92;
              if (__OFSUB__(v91, v92))
              {
                goto LABEL_93;
              }

              if (v93 < 0xFFFFFFFF80000000)
              {
                goto LABEL_95;
              }

              if (v93 > 0x7FFFFFFF)
              {
                goto LABEL_96;
              }

              if (qword_1ED8BD808 != -1)
              {
LABEL_86:
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

LABEL_59:
              v94 = OUTLINED_FUNCTION_10_17();
              v96 = v89;
              v98 = v93;
LABEL_60:
              v55 = sqlite3_bind_blob(v94, v95, v96, v98, v97);
              v100 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v100, v101, v102);
              v56 = OUTLINED_FUNCTION_5_26();
              break;
            case 3uLL:
              *(&v133 + 6) = 0;
              *&v133 = 0;
              if (qword_1ED8BD808 != -1)
              {
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

              v94 = OUTLINED_FUNCTION_10_17();
              v98 = 0;
              goto LABEL_60;
            default:
              LODWORD(v133) = v10;
              BYTE4(v133) = BYTE4(v10);
              *(&v133 + 5) = HIDWORD(v10) >> 8;
              BYTE7(v133) = HIBYTE(v10);
              WORD4(v133) = v12;
              BYTE10(v133) = BYTE2(v12);
              BYTE11(v133) = BYTE3(v12);
              BYTE12(v133) = BYTE4(v12);
              BYTE13(v133) = BYTE5(v12);
              if (qword_1ED8BD808 != -1)
              {
                OUTLINED_FUNCTION_0_52();
                swift_once();
              }

              v65 = OUTLINED_FUNCTION_10_17();
              v70 = sqlite3_bind_blob(v65, v66, v67, v68, v69);
              v71 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v71, v72, v73);
              v74 = OUTLINED_FUNCTION_5_26();
              sub_1D986C908(v74, v75, v76);
              if (v70)
              {
                goto LABEL_2;
              }

              goto LABEL_62;
          }

          goto LABEL_61;
        case 4:
          v59 = OUTLINED_FUNCTION_10_17();
          goto LABEL_31;
        default:
          [sub_1D992B614() UTF8String];
          v52 = OUTLINED_FUNCTION_20_4();
          v53 = OUTLINED_FUNCTION_10_17();
          v55 = sqlite3_bind_text(v53, v54, v13, -1, 0);
          v56 = v10;
          v57 = v12;
          v58 = 0;
LABEL_61:
          sub_1D986C908(v56, v57, v58);
          if (!v55)
          {
            goto LABEL_62;
          }

          goto LABEL_2;
      }
    }

    sub_1D986C908(v10, v12, v131);
  }

LABEL_2:
  result = 0;
LABEL_89:
  v124 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9870EF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if ((a5 & 0x80) == 0)
  {

    a1 = v5;
    a2 = a4;
    LOBYTE(a3) = a5;
  }

  return sub_1D986C8B8(a1, a2, a3);
}

uint64_t sub_1D9870F58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = a3;
  if ((a5 & 0x80) == 0)
  {

    a1 = v5;
    a2 = a4;
    LOBYTE(a3) = a5;
  }

  return sub_1D986C908(a1, a2, a3);
}

uint64_t sub_1D9870FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D987106C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D98712C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9871264(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1D98713B0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D98713E8()
{
  v2 = OUTLINED_FUNCTION_11_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D9871424()
{
  OUTLINED_FUNCTION_11_1();
  v0 = OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D9871458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_0();
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_15(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_22_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 28));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D98714F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_1();
  result = OUTLINED_FUNCTION_15(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_23_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1D9871584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_11_1();
  v7 = OUTLINED_FUNCTION_15(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_1D992B1E4();
    v12 = OUTLINED_FUNCTION_15(v11);
    if (*(v13 + 84) != v3)
    {
      v15 = *(v4 + *(a3 + 28));
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1D9871660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_1();
  v9 = OUTLINED_FUNCTION_15(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1D992B1E4();
    result = OUTLINED_FUNCTION_15(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = v4 + 1;
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1D9871874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_0();
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9871918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D98719F8()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9871A30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9871A80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9871BA4()
{
  sub_1D9890810(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9871BD8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D9871C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D9871D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9871E00()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9871E48()
{
  v1 = OUTLINED_FUNCTION_4();
  type metadata accessor for SelectRootClockId.Predicate(v1);
  v2 = OUTLINED_FUNCTION_35_0();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_1D9871E84()
{
  v0 = OUTLINED_FUNCTION_4();
  type metadata accessor for SelectRootClockId.Predicate(v0);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1D9871EC0()
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  v1 = OUTLINED_FUNCTION_35_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D9871EFC()
{
  OUTLINED_FUNCTION_4();
  sub_1D992AE84();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D9871F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_15(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_35_0();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v11 = OUTLINED_FUNCTION_15(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1D992AE04();
      v13 = *(a3 + 40);
    }

    v8 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_1D9872010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_15(v6);
  if (*(v7 + 84) == a3)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_15(v8);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 24);
    }

    else
    {
      sub_1D992AE04();
      v11 = *(a4 + 40);
    }
  }

  OUTLINED_FUNCTION_31_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1D9872178()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98721E8()
{
  v2 = sub_1D992AD44();
  OUTLINED_FUNCTION_6(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_43();
  v8 = *(v0 + 32);

  (*(v4 + 8))(v0 + ((v5 + 40) & ~v5), v2);
  v9 = *(v0 + v1 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 16, v5 | 7);
}

uint64_t sub_1D98722B0()
{
  v2 = sub_1D992B004();
  OUTLINED_FUNCTION_6(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_43();
  (*(v4 + 8))(v0 + ((v5 + 32) & ~v5), v2);
  v8 = *(v0 + v1);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v5 | 7);
}

uint64_t sub_1D987236C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D98723A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98723DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9872424()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9872464()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D987249C()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98724F0()
{
  if (v0[2])
  {

    v1 = v0[3];

    v2 = v0[4];

    v3 = v0[5];

    v4 = v0[7];
  }

  OUTLINED_FUNCTION_80();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1D9872548()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  OUTLINED_FUNCTION_80();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1D987259C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D98725D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9872628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  OUTLINED_FUNCTION_6(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v13 = *(v0 + v7);

  v14 = *(v0 + v8);

  v15 = *(v0 + v9);

  v16 = *(v0 + v10);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v4 | 7);
}

uint64_t sub_1D9872748()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D987277C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D9872808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  v7 = OUTLINED_FUNCTION_15(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_27_2(*(a3 + 24));
      return (v11 + 1);
    }

    v9 = sub_1D992AE04();
    v10 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D98728C8()
{
  OUTLINED_FUNCTION_25_2();
  v4 = sub_1D992AE84();
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return result;
    }

    v7 = sub_1D992AE04();
    v8 = v1 + *(v2 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1D9872984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v7 = OUTLINED_FUNCTION_15(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v10 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_2(*(a3 + 20));
  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1D9872A68()
{
  OUTLINED_FUNCTION_25_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v8 = v1 + *(v2 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1D9872B3C()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9872B84()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9872BB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9872BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D9872CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9872D74()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1D9872DC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_32(a3, result);
  }

  return result;
}

uint64_t sub_1D9872DF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9872E34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ConcreteConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_1D9872E7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1D98C18BC(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D9872ED4()
{
  sub_1D98C18BC(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9872F18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D9872F54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9872F94()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9872FCC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98730CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873104()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else if (v1 <= 1)
  {
    v2 = *(v0 + 16);
  }

  OUTLINED_FUNCTION_11_9();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1D9873178()
{
  v3 = OUTLINED_FUNCTION_12_9();
  v4 = OUTLINED_FUNCTION_15(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_13(*(v2 + 28));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1D9873200()
{
  v4 = OUTLINED_FUNCTION_8_10();
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_23_0();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28) + 24) = v0;
  }

  return result;
}

uint64_t sub_1D98732E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9873324()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9873364()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D9873474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C50, &unk_1D9933438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9873554()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D98735FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE84();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D98736D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE84();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D987374C()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873784()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D98737CC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D9873800()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98738A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D98738E8()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873920()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873988()
{
  v2 = OUTLINED_FUNCTION_11_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D98739C4()
{
  OUTLINED_FUNCTION_11_1();
  v0 = OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D98739F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9873AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_11_1();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_23_0();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1D9873B80()
{
  MEMORY[0x1DA73B5C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873BB8()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1D9873C90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9873CC8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D9873CFC()
{
  sub_1D9890810(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9873D58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D9873DB0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9873DF8()
{
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_30_5();
  v8(v7);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v5 | 7);
}

uint64_t sub_1D9873E74()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_0_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9873F64()
{
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  OUTLINED_FUNCTION_6(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1D98740A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874108()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9874150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v7 = OUTLINED_FUNCTION_15(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v10 = a1 + *(a3 + 40);
    goto LABEL_10;
  }

  v11 = *(a1 + *(a3 + 20));
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_1D9874240()
{
  OUTLINED_FUNCTION_25_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20)) = v0;
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
    v8 = v1 + *(v2 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1D9874314(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D992AE84();
  v7 = OUTLINED_FUNCTION_15(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 12)
    {
      v11 = *(a1 + a3[7] + 8) >> 60;
      if (((4 * v11) & 0xC) != 0)
      {
        return 16 - ((4 * v11) & 0xC | (v11 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v13 = sub_1D992AE04();
    v14 = OUTLINED_FUNCTION_15(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[8];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v16 = a3[9];
    }

    v10 = a1 + v16;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D987443C()
{
  OUTLINED_FUNCTION_25_2();
  v4 = sub_1D992AE84();
  result = OUTLINED_FUNCTION_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1;
  }

  else
  {
    if (v3 == 12)
    {
      v9 = (v1 + v2[7]);
      *v9 = 0;
      v9[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
      return result;
    }

    v10 = sub_1D992AE04();
    v11 = OUTLINED_FUNCTION_15(v10);
    if (*(v12 + 84) == v3)
    {
      v7 = v11;
      v13 = v2[8];
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v13 = v2[9];
    }

    v8 = v1 + v13;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_1D9874550()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874588()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D98745C8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9874608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D98746B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9874764()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D98747A4()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  }

  v3 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D98747FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D987483C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_11(*(a1 + *(a3 + 20)));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
    v8 = OUTLINED_FUNCTION_21_9();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D9874914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
    v10 = OUTLINED_FUNCTION_21_9();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D98749F4(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_11(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
  v4 = OUTLINED_FUNCTION_21_9();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1D9874A78(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
    v4 = OUTLINED_FUNCTION_21_9();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1D9874B20()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D9874B70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9874BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D992AE84();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D9874C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D992AE84();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D9874D60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9874D98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9874DD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9874E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D992AE84();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1D9874EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D992AE84();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D9874F20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D9890810(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9874F90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9875018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE04();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D9875060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D992AE04();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D98750DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D98750EC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D9890238(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D9875188(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98751A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D987520C()
{
  v0 = sub_1D992AE84();
  __swift_allocate_value_buffer(v0, qword_1ECB496F0);
  v1 = __swift_project_value_buffer(v0, qword_1ECB496F0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1D987532C(&v7 - v4);
  if (__swift_getEnumTagSinglePayload(v5, 1, v0) != 1)
  {
    return (*(*(v0 - 8) + 32))(v1, v5, v0);
  }

  sub_1D992AE74();
  result = __swift_getEnumTagSinglePayload(v5, 1, v0);
  if (result != 1)
  {
    return sub_1D987625C(v5);
  }

  return result;
}

uint64_t sub_1D987532C@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 37;
  v2 = sub_1D992B7E4();
  *(v2 + 16) = 37;
  *(v2 + 48) = 0u;
  *(v2 + 61) = 0;
  *(v2 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v2 + 32), v24, 0, 0))
  {
    v12 = sub_1D992B694();
    v13 = *(*(v12 - 8) + 64);
    MEMORY[0x1EEE9AC00](v12 - 8);
    v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D992B674();
    sub_1D9875734(v2, v15);
    if (v16)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v17 - 8);
      v20 = v23 - v19;
      sub_1D992AE14();

      v21 = sub_1D992AE84();
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {
        sub_1D987625C(v20);
        if (qword_1ECB47AB8 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        OUTLINED_FUNCTION_5_1(0xD00000000000003BLL, 0x80000001D9936A60, 0xD00000000000005BLL);
        v10 = a1;
        v11 = 1;
      }

      else
      {
        (*(*(v21 - 8) + 32))(a1, v20, v21);
        v10 = a1;
        v11 = 0;
      }

      v9 = v21;
      goto LABEL_22;
    }

    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_5_1(0xD000000000000032, 0x80000001D9936A20, 0xD00000000000005BLL);
LABEL_11:
    v9 = sub_1D992AE84();
    v10 = a1;
    v11 = 1;
LABEL_22:
    result = __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = MEMORY[0x1DA739850]();
  result = strerror(v3);
  if (result)
  {
    v5 = sub_1D992B604();
    v7 = v6;

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0x6E776F6E6B6E55;
    }

    if (!v7)
    {
      v7 = 0xE700000000000000;
    }

    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    sub_1D992BD64();

    v23[0] = 0xD000000000000024;
    v23[1] = 0x80000001D9936970;
    MEMORY[0x1DA739C30](v8, v7);

    sub_1D98DCEB4(0xD000000000000024, 0x80000001D9936970, 0xD00000000000005BLL, 0x80000001D99369A0, 0xD000000000000018, 0x80000001D9936A00);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9875734(uint64_t a1, char *a2)
{
  v4 = sub_1D992B694();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D992B664();
  v8 = sub_1D992B654();
  v9 = *(v5 + 8);
  v10 = v9(&v22 - v7, v4);
  if (v8)
  {
    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](v10);
  sub_1D992B674();
  v11 = sub_1D992B654();
  v12 = v9(&v22 - v7, v4);
  if (v11 & 1) != 0 || (MEMORY[0x1EEE9AC00](v12), sub_1D992B644(), v13 = sub_1D992B654(), v9(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4), (v13))
  {
LABEL_22:

    v15 = sub_1D98766E0(v14);
    if (v16)
    {
      v17 = v15;
      MEMORY[0x1EEE9AC00](v15);
      sub_1D992B664();
      v18 = sub_1D992B654();
      v9(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v18)
      {

LABEL_16:
        v9(a2, v4);
        return v17;
      }

      if (sub_1D992BD54())
      {
        v9(a2, v4);

        return v17;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      result = sub_1D992BE94();
      __break(1u);
      return result;
    }

    if (!*(a1 + i + 32))
    {
      break;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:i encoding:sub_1D992B684()];

  if (v20)
  {
    v17 = sub_1D992B624();

    goto LABEL_16;
  }

  v9(a2, v4);
  return 0;
}

uint64_t sub_1D9875AA0()
{
  OUTLINED_FUNCTION_1_1();
  sub_1D9875D34();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875ADC()
{
  sub_1D992C074();
  OUTLINED_FUNCTION_2();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B20()
{
  sub_1D992C074();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B64()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C094();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875B9C(uint64_t a1)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a1);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875BE4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C1C()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C54()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875C8C()
{
  OUTLINED_FUNCTION_1_1();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875D34()
{
  sub_1D992B6D4();
}

uint64_t sub_1D9875DDC()
{
  OUTLINED_FUNCTION_3_0();
  sub_1D9875D34();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E18()
{
  sub_1D992C074();
  OUTLINED_FUNCTION_2();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E58(uint64_t a1, uint64_t a2)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a2);
  return sub_1D992C0C4();
}

uint64_t sub_1D9875E9C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C094();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875ED4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F0C()
{
  sub_1D992C074();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F4C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_1();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875F84()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875FBC()
{
  OUTLINED_FUNCTION_3_0();
  sub_1D992C0A4();
  return sub_1D992C0C4();
}

uint64_t sub_1D9875FF8@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_1D9876040(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D987652C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1D9876074@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D9876130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1D987625C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98763AC(void *a1)
{
  sub_1D9876130(&qword_1ECB48298, type metadata accessor for FLError);
  v2 = a1;
  return sub_1D992AC24();
}

uint64_t sub_1D98764CC()
{
  v2 = *v0;
  sub_1D992C074();
  sub_1D992B5D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98766E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  if (*(result + 32))
  {
    result = 0;
    v3 = v1 - 1;
    while (v3 != result)
    {
      if (!*(v2 + 33 + result++))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  result = 0;
LABEL_8:
  result = sub_1D9876784(result, v2);
  if (!__OFSUB__(v5 >> 1, v6))
  {
    v7 = sub_1D992B6C4();
    swift_unknownObjectRelease();
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D9876784(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D98767DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98767FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1D98769CC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1D9876A64()
{
  result = qword_1ECB48288;
  if (!qword_1ECB48288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48288);
  }

  return result;
}

uint64_t sub_1D9876B8C(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped;
  v5 = sub_1D992B3E4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + v4) = sub_1D992B3D4();
  v8 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_streamURL;
  v9 = sub_1D992AD44();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 16);
  v12(v2 + v8, a1, v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483C0, &unk_1D992FA30);
  v14 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v12(v16 - v15, a1, v9);
  v17 = *MEMORY[0x1E696A388];
  v18 = sub_1D992B324();
  (*(v11 + 8))(a1, v9);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream) = v18;
  return v2;
}

uint64_t sub_1D9876D2C()
{
  type metadata accessor for PersistentStorage();
  if (sub_1D98F8F10())
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_4_1();
    sub_1D986A454(v3, v1 | 0x8000000000000000, 0xD000000000000081, v2 | 0x8000000000000000, v4, v5);
    v6 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);

    sub_1D992B3C4();
LABEL_11:
  }

  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  v7 = sub_1D98DCE30();
  if (*(v7 + 24) != 1)
  {
    goto LABEL_11;
  }

  sub_1D9876FD4();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_4_1();
  sub_1D98DCEB4(v9, v10, 0xD000000000000081, 0x80000001D9936D70, v11, v12);
}

unint64_t sub_1D9876FD4()
{
  sub_1D992BD64();

  sub_1D992AD44();
  sub_1D987A2E0(&qword_1ED8BD8F0, MEMORY[0x1EEE78688]);
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D9877094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClockEvent(0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = sub_1D992B464();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = sub_1D992AE04();
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  (*(v21 + 16))(v20 - v19, a2);
  sub_1D992B454();
  sub_1D987A280(a1, v10, type metadata accessor for LogicalClockEvent);
  sub_1D987A228();
  return sub_1D992B424();
}

uint64_t sub_1D9877220()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 129) = v5;
  *(v1 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_23(v7);
  *(v1 + 72) = v8;
  v10 = *(v9 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_20();
  v11 = type metadata accessor for LogicalClockEvent(0);
  *(v1 + 88) = v11;
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_20();
  v15 = *v3;
  *(v1 + 96) = v14;
  *(v1 + 104) = v15;
  v16 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D9877304()
{
  OUTLINED_FUNCTION_26();
  v0[14] = *(v0[7] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0(MEMORY[0x1E6999B80]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D98773A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98774BC()
{
  v1 = *(v0 + 48);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_20();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_20();
  sub_1D9879FF8(v1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    if (qword_1ECB47FB0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1ECB496F0);
    (*(v4 + 16))(v7, v12, v2);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
    {
      sub_1D986B804(v11, &qword_1ECB481D0, &qword_1D992F9F0);
    }
  }

  else
  {
    (*(v4 + 32))(v7, v11, v2);
  }

  v43 = v4;

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v40 = *(v0 + 88);
  v41 = *(v0 + 80);
  v42 = *(v0 + 56);
  v15 = *(v0 + 129);
  v39 = *(v0 + 40);
  sub_1D992BD64();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_35(&qword_1ED8BD8D0);
  v16 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v16);

  MEMORY[0x1DA739C30](0x203A6570797420, 0xE700000000000000);
  *(v0 + 128) = v15 & 1;
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D9936EE0);
  v17 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v17);

  OUTLINED_FUNCTION_27_0();
  *(v0 + 32) = v14;
  sub_1D992BE24();
  sub_1D986A454(*(v0 + 16), *(v0 + 24), 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000036, 0x80000001D9936F00);

  v18 = *(v4 + 16);
  v18(v13, v39, v2);
  v19 = type metadata accessor for LogicalClockStart(0);
  v18(v13 + v19[6], v7, v2);
  *(v13 + v19[5]) = v15 & 1;
  *(v13 + v19[7]) = v14;
  *(v13 + v19[8]) = v14;
  swift_storeEnumTagMultiPayload();
  v20 = sub_1D992AE04();
  OUTLINED_FUNCTION_6(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = OUTLINED_FUNCTION_20();
  sub_1D992ADF4();
  sub_1D9877094(v13, v25);
  (*(v22 + 8))(v25, v20);

  v26 = *(v42 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  v27 = sub_1D992B374();
  v29 = v28;
  v30 = *(v0 + 96);
  v31 = *(v0 + 80);
  v32 = *(v0 + 64);
  v33 = v27;
  v34 = OUTLINED_FUNCTION_28(*(v0 + 72));
  v35(v34);
  OUTLINED_FUNCTION_0_6();
  sub_1D987A1D0(v30, v36);
  (*(v43 + 8))(v7, v2);

  v37 = *(v0 + 8);

  return v37(v33, v29 & 1);
}

uint64_t sub_1D9877A40()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v5 = sub_1D992B464();
  v1[5] = v5;
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_20();
  v8 = type metadata accessor for LogicalClockEvent(0);
  v1[7] = v8;
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v11 = type metadata accessor for LogicalClockStart(0);
  v1[10] = v11;
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_20();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483B0, &unk_1D992FA20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_20();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v1[13] = v17;
  OUTLINED_FUNCTION_23(v17);
  v1[14] = v18;
  v20 = *(v19 + 64) + 15;
  v1[15] = swift_task_alloc();
  v21 = swift_task_alloc();
  v22 = *v3;
  v1[16] = v21;
  v1[17] = v22;
  v23 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1D9877BC0()
{
  OUTLINED_FUNCTION_26();
  v0[18] = *(v0[4] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0(MEMORY[0x1E6999B80]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D9877C64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D9877D78()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];
  sub_1D986A454(0, 0xE000000000000000, 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000021, 0x80000001D9936E80);
  v4 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  sub_1D992B364();
  v5 = v0[12];
  v6 = v0[13];
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = v0[3];
    sub_1D986B804(v5, &qword_1ECB483B0, &unk_1D992FA20);
    sub_1D992BD64();

    v0[2] = v7;
    v8 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v8);

    sub_1D98DCEB4(0xD000000000000029, 0x80000001D9936EB0, 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000021, 0x80000001D9936E80);
  }

  else
  {
    v9 = v0[9];
    v10 = v0[7];
    (*(v0[14] + 32))(v0[16], v5, v6);
    sub_1D992B444();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v0[9];
      (*(v0[14] + 8))(v0[16], v0[13]);
      OUTLINED_FUNCTION_0_6();
      sub_1D987A1D0(v11, v12);
    }

    else
    {
      v23 = v0[16];
      v24 = v0[17];
      v25 = v0[13];
      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[8];
      v29 = v0[6];
      v34 = v0[7];
      v35 = v0[5];
      v36 = v0[15];
      v37 = v0[3];
      sub_1D987A170(v0[9], v26, type metadata accessor for LogicalClockStart);
      *(v26 + *(v27 + 32)) = v24;
      sub_1D992B434();
      sub_1D987A280(v26, v28, type metadata accessor for LogicalClockStart);
      swift_storeEnumTagMultiPayload();
      sub_1D987A228();
      sub_1D992B424();
      sub_1D992B354();
      v30 = v0[16];
      v31 = v0[11];
      v32 = *(v0[14] + 8);
      (v32)(v0[15], v0[13]);
      OUTLINED_FUNCTION_12_2();
      v33 = OUTLINED_FUNCTION_33();
      v32(v33);
    }
  }

  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[6];

  v20 = v0[1];
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1D98781C8()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v1[9] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[10] = v7;
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_20();
  v10 = type metadata accessor for LogicalClockEvent(0);
  v1[12] = v10;
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_20();
  v14 = *v3;
  v1[13] = v13;
  v1[14] = v14;
  v15 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D98782A8()
{
  OUTLINED_FUNCTION_26();
  v0[15] = *(v0[8] + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);
  OUTLINED_FUNCTION_14_0(MEMORY[0x1E6999B80]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_21_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);

  return v9();
}

uint64_t sub_1D987834C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D9878460()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v1 = v0[13];
  v2 = v0[14];
  v24 = v0[12];
  v25 = v0[11];
  v3 = v0[7];
  v26 = v0[8];
  v4 = v0[6];
  sub_1D992BD64();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_35(&qword_1ED8BD8D0);
  v6 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v6);

  OUTLINED_FUNCTION_27_0();
  v0[4] = v2;
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0x3A6E6F7361657220, 0xE900000000000020);
  v0[5] = v3;
  type metadata accessor for SiriAnalyticsLogicalClockEndedReason(0);
  sub_1D992BE24();
  sub_1D986A454(v0[2], v0[3], 0xD000000000000081, 0x80000001D9936D70, 0xD000000000000029, 0x80000001D9936E50);

  (*(*(v5 - 8) + 16))(v1, v4, v5);
  v7 = type metadata accessor for LogicalClockEnd(0);
  *(v1 + *(v7 + 20)) = v2;
  *(v1 + *(v7 + 24)) = v3;
  swift_storeEnumTagMultiPayload();
  v8 = sub_1D992AE04();
  OUTLINED_FUNCTION_6(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_20();
  sub_1D992ADF4();
  sub_1D9877094(v1, v13);
  (*(v10 + 8))(v13, v8);

  v14 = *(v26 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  sub_1D992B374();
  v15 = v0[13];
  v16 = v0[11];
  v17 = v0[9];
  v18 = OUTLINED_FUNCTION_28(v0[10]);
  v19(v18);
  OUTLINED_FUNCTION_0_6();
  sub_1D987A1D0(v15, v20);

  v21 = v0[1];
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1D98787B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  sub_1D992B344();
  v14 = a1;
  sub_1D9878B44(sub_1D987A0B8, v13, v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1D986B804(v8, &qword_1ECB48380, &unk_1D992FA00);
    return 0;
  }

  else
  {
    v11 = sub_1D992B4D4();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  return v11;
}

uint64_t sub_1D9878910()
{
  v0 = type metadata accessor for LogicalClockEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v9 = type metadata accessor for LogicalClockStart(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  sub_1D992B4E4();
  sub_1D992B444();
  (*(v5 + 8))(v8, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D987A1D0(v3, type metadata accessor for LogicalClockEvent);
  }

  else
  {
    sub_1D987A170(v3, v12, type metadata accessor for LogicalClockStart);
    v13 = sub_1D992AE54();
    sub_1D987A1D0(v12, type metadata accessor for LogicalClockStart);
    if (v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9878B44@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v28 = v3;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48390, &unk_1D992FA10);
  sub_1D987A120(&qword_1ECB48398);
  v27 = v14;
  sub_1D992B744();
  sub_1D987A120(&qword_1ECB483A0);
  v15 = (v6 + 32);
  for (i = (v6 + 8); ; (*i)(v9, v5))
  {
    sub_1D992BC14();
    if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
    {

      v19 = v24;
      v20 = 1;
      return __swift_storeEnumTagSinglePayload(v19, v20, 1, v5);
    }

    v17 = *v15;
    (*v15)(v9, v13, v5);
    v18 = v25(v9);
    if (v4)
    {
      (*i)(v9, v5);
    }

    if (v18)
    {
      break;
    }
  }

  v22 = v24;
  v17(v24, v9, v5);
  v19 = v22;
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v5);
}

uint64_t sub_1D9878DE0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v28 = a4;
  v7 = type metadata accessor for RootLogicalClock();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 32);
  v21 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(&v18[v20], 1, 1, v21);
  *v18 = a3;
  if (a3)
  {
    v22 = sub_1D992B344();
  }

  else
  {
    v22 = sub_1D992B334();
  }

  *(v18 + 1) = v22;
  while (1)
  {
    sub_1D9902194(v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
    {
      sub_1D987A1D0(v18, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
      v24 = 1;
      v25 = v28;
      return __swift_storeEnumTagSinglePayload(v25, v24, 1, v7);
    }

    sub_1D987A170(v14, v10, type metadata accessor for RootLogicalClock);
    v23 = a1(v10);
    if (v4)
    {
      sub_1D987A1D0(v10, type metadata accessor for RootLogicalClock);
      return sub_1D987A1D0(v18, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
    }

    if (v23)
    {
      break;
    }

    sub_1D987A1D0(v10, type metadata accessor for RootLogicalClock);
  }

  sub_1D987A1D0(v18, type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator);
  v25 = v28;
  sub_1D987A170(v10, v28, type metadata accessor for RootLogicalClock);
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v7);
}

uint64_t sub_1D98790C8@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);

  sub_1D9878DE0(a1, v5, 1, a2);
}

uint64_t sub_1D9879138(uint64_t a1)
{
  if (sub_1D992AE54())
  {
    return 1;
  }

  v3 = *(a1 + *(type metadata accessor for RootLogicalClock() + 36));
  sub_1D98E8494();
  return v4 & 1;
}

uint64_t sub_1D9879198()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for MonotonicTimestamp();
  v1[6] = v3;
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_20();
  v6 = type metadata accessor for RootLogicalClock();
  v1[8] = v6;
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_20();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_20();
  v12 = type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0);
  v1[11] = v12;
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_20();
  v15 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D9879288()
{
  v54 = v0;
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  v0[13] = qword_1ECB49610;
  sub_1D986A454(0, 0xE000000000000000, 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);
  v4 = *(v3 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  *v1 = 0;
  *(v1 + 8) = sub_1D992B334();
  v7 = &qword_1D992F9F0;
  while (1)
  {
    v8 = v0[12];
    v9 = v0[10];
    v10 = v0[8];
    sub_1D9902194(v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      v33 = v0[12];
      v34 = v0[13];
      v35 = v0[9];
      v36 = v0[10];
      v37 = v0[7];
      OUTLINED_FUNCTION_3_1();
      sub_1D987A1D0(v33, v38);
      OUTLINED_FUNCTION_36();

      OUTLINED_FUNCTION_19_2();
      *(v8 + 16) = 0;
      v39 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v39);

      MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
      sub_1D986A454(v53[0], v53[1], 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_24();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_31();
    if (!v24)
    {
      goto LABEL_14;
    }

    v11 = v0[9];
    v51 = v0[4];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, v7);
    OUTLINED_FUNCTION_9(v12);
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    v16 = sub_1D992AE84();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v15, v11, v16);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    v18 = v7;
    v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8) - 8);
    v20 = *(*v19 + 64);
    v21 = OUTLINED_FUNCTION_20();
    v22 = v19[14];
    sub_1D9879FF8(v15, v21);
    sub_1D9879FF8(v51, v21 + v22);
    OUTLINED_FUNCTION_8_1(v21);
    if (!v24)
    {
      break;
    }

    sub_1D986B804(v15, &qword_1ECB481D0, v18);
    OUTLINED_FUNCTION_8_1(v21 + v22);
    if (!v24)
    {
      goto LABEL_19;
    }

    v7 = v18;
    sub_1D986B804(v21, &qword_1ECB481D0, v18);

LABEL_14:
    v30 = v0[9];
    OUTLINED_FUNCTION_2_0();
    sub_1D987A1D0(v31, v32);
  }

  v7 = v18;
  v23 = swift_task_alloc();
  sub_1D9879FF8(v21, v23);
  OUTLINED_FUNCTION_8_1(v21 + v22);
  if (!v24)
  {
    v25 = *(v17 + 64);
    v26 = OUTLINED_FUNCTION_20();
    (*(v17 + 32))(v26, v21 + v22, v16);
    OUTLINED_FUNCTION_30();
    sub_1D987A2E0(&qword_1ED8BF058, v27);
    v52 = sub_1D992B5F4();
    v28 = *(v17 + 8);
    v28(v26, v16);
    sub_1D986B804(v15, &qword_1ECB481D0, v18);
    v29 = OUTLINED_FUNCTION_32();
    (v28)(v29);

    sub_1D986B804(v21, &qword_1ECB481D0, v18);

    if ((v52 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);
  v42 = *(v17 + 8);
  v43 = OUTLINED_FUNCTION_32();
  v44(v43);

LABEL_19:
  sub_1D986B804(v21, &qword_1ECB48378, &qword_1D992F9F8);

LABEL_20:
  v0[14] = 1;
  v45 = v0[6];
  v46 = v0[7];
  v47 = mach_absolute_time();
  LOBYTE(v53[0]) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v47, v53);
  OUTLINED_FUNCTION_10_0();
  v0[3] = &qword_1ECB481D0;
  v48 = swift_task_alloc();
  v0[15] = v48;
  *v48 = v0;
  OUTLINED_FUNCTION_7_0(v48);
  OUTLINED_FUNCTION_24();

  return sub_1D98781C8();
}

uint64_t sub_1D98797C4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *(v2 + 120);
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 128) = v0;

  v7 = *(v3 + 40);
  if (v0)
  {
    v8 = sub_1D9879D84;
  }

  else
  {
    v8 = sub_1D98798CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D98798CC()
{
  v51 = v0;
  v45 = v0[14];
  while (1)
  {
    while (1)
    {
      do
      {
        v1 = v0[9];
        OUTLINED_FUNCTION_2_0();
        sub_1D987A1D0(v2, v3);
        v4 = v0[12];
        v5 = v0[10];
        v6 = v0[8];
        sub_1D9902194(v5);
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {
          v29 = v0[12];
          v30 = v0[13];
          v31 = v0[9];
          v32 = v0[10];
          v49 = v0[7];
          OUTLINED_FUNCTION_3_1();
          sub_1D987A1D0(v29, v33);
          OUTLINED_FUNCTION_36();

          OUTLINED_FUNCTION_19_2();
          *(v4 + 16) = v45;
          v34 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v34);

          MEMORY[0x1DA739C30](0xD000000000000014, 0x80000001D9936E30);
          sub_1D986A454(v50[0], v50[1], 0xD000000000000081, 0x80000001D9936D70, 0xD00000000000002ELL, 0x80000001D9936E00);

          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_24();

          __asm { BRAA            X1, X16 }
        }

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_31();
      }

      while (!v20);
      v7 = v0[9];
      v47 = v0[4];
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v8);
      v46 = *(v9 + 64) + 15;
      v10 = swift_task_alloc();
      v11 = sub_1D992AE84();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v10, v7, v11);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
      v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48378, &qword_1D992F9F8) - 8);
      v14 = *(*v13 + 64);
      v15 = OUTLINED_FUNCTION_20();
      v16 = v13[14];
      sub_1D9879FF8(v10, v15);
      sub_1D9879FF8(v47, v15 + v16);
      OUTLINED_FUNCTION_8_1(v15);
      if (!v20)
      {
        break;
      }

      v17 = OUTLINED_FUNCTION_33();
      sub_1D986B804(v17, v18, &qword_1D992F9F0);
      OUTLINED_FUNCTION_8_1(v15 + v16);
      if (!v20)
      {
        goto LABEL_17;
      }

      sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);
    }

    v19 = swift_task_alloc();
    sub_1D9879FF8(v15, v19);
    OUTLINED_FUNCTION_8_1(v15 + v16);
    if (v20)
    {
      break;
    }

    v21 = *(v12 + 64);
    v22 = OUTLINED_FUNCTION_20();
    (*(v12 + 32))(v22, v15 + v16, v11);
    OUTLINED_FUNCTION_30();
    sub_1D987A2E0(&qword_1ED8BF058, v23);
    v48 = sub_1D992B5F4();
    v24 = *(v12 + 8);
    v24(v22, v11);
    v25 = OUTLINED_FUNCTION_33();
    sub_1D986B804(v25, v26, &qword_1D992F9F0);
    v27 = OUTLINED_FUNCTION_32();
    (v24)(v27);

    sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);

    if ((v48 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_1D986B804(v10, &qword_1ECB481D0, &qword_1D992F9F0);
  v37 = *(v12 + 8);
  v38 = OUTLINED_FUNCTION_32();
  v39(v38);

LABEL_17:
  sub_1D986B804(v15, &qword_1ECB48378, &qword_1D992F9F8);

LABEL_18:
  v0[14] = v45 + 1;
  if (__OFADD__(v45, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = v0[6];
    v41 = v0[7];
    v42 = mach_absolute_time();
    LOBYTE(v50[0]) = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v42, v50);
    OUTLINED_FUNCTION_10_0();
    v0[3] = &qword_1D992F9F0;
    v43 = swift_task_alloc();
    v0[15] = v43;
    *v43 = v0;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_24();

    return sub_1D98781C8();
  }

  return result;
}

uint64_t sub_1D9879D84()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  OUTLINED_FUNCTION_2_0();
  sub_1D987A1D0(v3, v5);
  OUTLINED_FUNCTION_3_1();
  sub_1D987A1D0(v1, v6);

  OUTLINED_FUNCTION_25();
  v8 = v0[16];

  return v7();
}

uint64_t sub_1D9879E24()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_streamURL;
  v2 = sub_1D992AD44();
  OUTLINED_FUNCTION_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);

  v5 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_bootstrapped);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D9879EA4()
{
  sub_1D9879E24();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for LogicalClockStream()
{
  result = qword_1ECB47D98;
  if (!qword_1ECB47D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9879F24()
{
  result = sub_1D992AD44();
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

uint64_t sub_1D9879FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D987A120(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48390, &unk_1D992FA10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D987A170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D987A1D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D987A228()
{
  result = qword_1ECB483B8;
  if (!qword_1ECB483B8)
  {
    type metadata accessor for LogicalClockEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB483B8);
  }

  return result;
}

uint64_t sub_1D987A280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D987A2E0(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x1DA739C30);
}

id static PFAPFADeviceDimensions.current()()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF428]) init];
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_get_current_device();
    if (v2)
    {
      v3 = v2;
      v4 = MobileGestalt_copy_productType_obj();
      [v1 setDeviceType_];

      v5 = MobileGestalt_copy_buildVersion_obj();
      [v1 setSystemBuild_];
    }

    [v1 setProgramCode_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D987A474(unint64_t a1)
{
  if (a1 < 4)
  {
    return dword_1D992FA40[a1];
  }

  result = sub_1D992BFA4();
  __break(1u);
  return result;
}

unint64_t sub_1D987A4C0(char a1)
{
  v1 = 1;
  v2 = 0;
  switch(a1)
  {
    case 1:
      v2 = 0;
      v1 = 2;
      break;
    case 2:
    case 3:
      v2 = 0;
      v1 = 3;
      break;
    case 4:
      v1 = 0;
      v2 = 1;
      break;
    default:
      return v1 | (v2 << 32);
  }

  return v1 | (v2 << 32);
}

uint64_t sub_1D987A524()
{
  _s28MessageStagingStreamIteratorCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;

  return v1;
}

uint64_t sub_1D987A564()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (!v2)
  {
    v3 = *(*(v1 + 16) + 16);

    v2 = sub_1D992B334();

    v4 = *(v1 + 24);
    *(v1 + 24) = v2;
  }

  return v2;
}

uint64_t sub_1D987A5E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E8, &qword_1D992FB30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  if (!sub_1D987A564())
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_1D992B4C4();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_1D986DEE4(v5, &qword_1ECB483E8, &qword_1D992FB30);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
    v13 = a1;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  }

  (*(v7 + 32))(v10, v5, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  v12 = *(v11 + 48);
  *a1 = sub_1D992B4D4();
  sub_1D992B4E4();
  (*(v7 + 8))(v10, v6);
  v13 = a1;
  v14 = 0;
  v15 = v11;
  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_1D987A7F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1D987A81C()
{
  sub_1D987A7F4();

  return swift_deallocClassInstance();
}

unint64_t sub_1D987A878()
{
  result = qword_1ECB483C8;
  if (!qword_1ECB483C8)
  {
    _s28MessageStagingStreamIteratorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB483C8);
  }

  return result;
}

uint64_t sub_1D987A8F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D987A524();

  *a1 = v4;
  return result;
}

size_t sub_1D987A960()
{
  v1 = sub_1D987AA28(v0);

  return v1;
}

size_t sub_1D987AA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v36 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v36 - v9;
  v37 = *(v7 + 80);
  v11 = MEMORY[0x1E69E7CC0];
  v38 = (v37 + 32) & ~v37;
  v12 = MEMORY[0x1E69E7CC0] + v38;
  _s28MessageStagingStreamIteratorCMa();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;

  v14 = 0;
  v36[1] = inited;
  while (1)
  {
    sub_1D987A5E0(v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      swift_setDeallocating();
      sub_1D987A7F4();
      swift_deallocClassInstance();
      result = sub_1D986DEE4(v5, &qword_1ECB483D0, &qword_1D992FB18);
      v33 = v11[3];
      if (v33 >= 2)
      {
        v34 = v33 >> 1;
        v32 = __OFSUB__(v34, v14);
        v35 = v34 - v14;
        if (v32)
        {
          goto LABEL_35;
        }

        v11[2] = v35;
      }

      return v11;
    }

    result = sub_1D987AF14(v5, v10);
    if (v14)
    {
      v16 = v11;
    }

    else
    {
      v17 = v11[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v18 = v5;
      v19 = v10;
      v20 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483E0, &qword_1D992FB28);
      v22 = v7;
      v23 = *(v7 + 72);
      v24 = v38;
      v16 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v16);
      if (!v23)
      {
        goto LABEL_33;
      }

      v25 = result - v24;
      if (result - v24 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_34;
      }

      v27 = v25 / v23;
      v16[2] = v21;
      v16[3] = 2 * (v25 / v23);
      v28 = v16 + v24;
      v29 = v11[3];
      v30 = (v29 >> 1) * v23;
      if (v11[2])
      {
        if (v16 < v11 || v28 >= v11 + v38 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v28[v30];
      v14 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - (v29 >> 1);

      v7 = v22;
      v10 = v19;
      v5 = v18;
    }

    v32 = __OFSUB__(v14--, 1);
    if (v32)
    {
      break;
    }

    sub_1D987AF14(v10, v12);
    v12 += *(v7 + 72);
    v11 = v16;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D987AD38(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v20 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  _s28MessageStagingStreamIteratorCMa();
  result = swift_allocObject();
  v18 = result;
  i = 0;
  *(result + 16) = v4;
  *(result + 24) = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      for (i = 0; i < a3; ++i)
      {
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_1D987A5E0(v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_1D986DEE4(v11, &qword_1ECB483D0, &qword_1D992FB18);
          goto LABEL_12;
        }

        sub_1D987AF14(v11, v16);
        result = sub_1D987AF14(v16, a2);
        if (i + 1 == a3)
        {
          i = a3;
          goto LABEL_12;
        }

        a2 += *(v13 + 72);
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *a1 = v18;
    return i;
  }

  return result;
}

uint64_t sub_1D987AF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D987AF84()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v6 = *(v2 + 56);
  v5 = v2 + 56;
  v7 = *(v5 - 24);
  OUTLINED_FUNCTION_0_7();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v11);
    OUTLINED_FUNCTION_7();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      v16 = *(v0 + 48) + 24 * (v15 | (v14 << 6));
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      LOBYTE(v16) = *(v16 + 17);
      *v1 = v18;
      *(v1 + 8) = v17;
      *(v1 + 16) = v19;
      *(v1 + 17) = v16;
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v1 += 24;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1D987B090()
{
  OUTLINED_FUNCTION_6_2();
  v4 = v3;
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 56);
  if (!v1)
  {
    v11 = 0;
LABEL_22:
    *v0 = v4;
    v0[1] = v5;
    v0[2] = ~v6;
    v0[3] = v11;
    v0[4] = v8;
    OUTLINED_FUNCTION_7();
    return;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v9 = v1;
    v28 = -1 << *(v3 + 32);
    v29 = v0;
    v10 = 0;
    v11 = 0;
    v30 = (63 - v6) >> 6;
    v31 = v2;
    while (1)
    {
      if (v10 >= v2)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      v34 = v10 + 1;
      v35 = v9;
      v12 = sub_1D992AE84();
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](&v28);
      v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
      v22 = &v28 - v19;
      if (!v8)
      {
        while (1)
        {
          v23 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v23 >= v30)
          {
            v8 = 0;
            v0 = v29;
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v23);
          ++v11;
          if (v8)
          {
            v32 = v20;
            v33 = v18;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v32 = v20;
      v33 = v18;
      v23 = v11;
LABEL_16:
      v24 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v25 = *(v13 + 72);
      (*(v13 + 16))(&v28 - v19, *(v4 + 48) + v25 * (v24 | (v23 << 6)), v12, v21);
      v26 = *(v13 + 32);
      v26(v16, v22, v12);
      v27 = v35;
      v26(v35, v16, v12);
      v2 = v31;
      if (v34 == v31)
      {
        break;
      }

      v9 = &v27[v25];
      v10 = v34;
      v11 = v23;
    }

    v11 = v23;
    v0 = v29;
LABEL_20:
    v6 = v28;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_1D987B314()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_0_7();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v11);
    OUTLINED_FUNCTION_7();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      v15 = *(v0 + 56);
      OUTLINED_FUNCTION_5_2(v16);
      if (v18)
      {
        v20 = v17;
        v11 = v14;
        goto LABEL_17;
      }

      v1 += 8;
      v19 = v17;
      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1D987B3FC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D987B4E4()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_4_2();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_0_7();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_2_1(v11);
    OUTLINED_FUNCTION_7();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_3();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      OUTLINED_FUNCTION_3_2();
      v15 = *(v0 + 48);
      OUTLINED_FUNCTION_5_2(v16);
      if (v18)
      {
        v20 = v17;
        v11 = v14;
        goto LABEL_17;
      }

      v1 += 8;
      v19 = v17;
      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D987B5CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  if (v37)
  {
    v7 = a2;
    v8 = result;
    v38 = result;

    OUTLINED_FUNCTION_1_4();
    if (a3)
    {
      v9 = 0x204E4920544F4E20;
      v10 = 0xE800000000000000;
    }

    else
    {
      v9 = 542001440;
      v10 = 0xE400000000000000;
    }

    MEMORY[0x1DA739C30](v9, v10);
    v11 = 0;
    v12 = v4[2];
    v13 = (a4 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v35 = v8;
    v36 = v7;
    do
    {
      MEMORY[0x1DA739C30](v8, v7);
      v15 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v15);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v14 + 16);
        sub_1D986FB38();
        v14 = v24;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1D986FB38();
        v14 = v25;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = 64;
      *(v17 + 40) = 0xE100000000000000;
      v18 = *(v13 - 2);
      v19 = *(v13 - 1);
      v20 = *v13;
      sub_1D986C8B8(v18, v19, *v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v12 + 16);
        sub_1D986CB30();
        v12 = v27;
      }

      v21 = *(v12 + 16);
      if (v21 >= *(v12 + 24) >> 1)
      {
        sub_1D986CB30();
        v12 = v28;
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 40 * v21;
      *(v22 + 32) = 64;
      *(v22 + 40) = 0xE100000000000000;
      *(v22 + 48) = v18;
      *(v22 + 56) = v19;
      *(v22 + 64) = v20;
      v13 += 24;
      v7 = v36;
      v8 = v35;
    }

    while (v37 != v11);
    v4[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v29 = sub_1D992B5E4();
    v31 = v30;

    MEMORY[0x1DA739C30](v29, v31);

    MEMORY[0x1DA739C30](8233, 0xE200000000000000);

    MEMORY[0x1DA739C30](40, 0xE100000000000000);

    sub_1D986CABC(sub_1D986FB38);
    v32 = *(*v4 + 16);
    result = sub_1D986D0FC(v32, sub_1D986FB38);
    v33 = *v4;
    *(v33 + 16) = v32 + 1;
    v34 = v33 + 16 * v32;
    *(v34 + 32) = v38;
    *(v34 + 40) = a2;
    *v4 = v33;
  }

  return result;
}

uint64_t sub_1D987BA38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

SiriAnalytics::OffDeviceTopic_optional __swiftcall OffDeviceTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D992BF04();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OffDeviceTopic.rawValue.getter()
{
  result = 0xD000000000000018;
  switch(*v0)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D987BB90@<X0>(unint64_t *a1@<X8>)
{
  result = OffDeviceTopic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id OffDeviceTopicsShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OffDeviceTopicsShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffDeviceTopicsShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OffDeviceTopicsShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffDeviceTopicsShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D987BD0C()
{
  result = qword_1ECB48400;
  if (!qword_1ECB48400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OffDeviceTopic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}