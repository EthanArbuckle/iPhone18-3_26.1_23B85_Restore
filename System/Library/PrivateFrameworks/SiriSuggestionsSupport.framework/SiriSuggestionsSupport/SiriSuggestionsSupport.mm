uint64_t sub_2315B10A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2316066E8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2315B1174()
{
  OUTLINED_FUNCTION_4_0();
  v56 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v4 = v0[21];
  v3 = v0[22];
  v5 = sub_231604F38();
  OUTLINED_FUNCTION_32(v5);
  v0[34] = sub_231604F28();
  OUTLINED_FUNCTION_26_2();
  sub_2315B3174(v6, v7);
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2316066E8();
    v9 = OUTLINED_FUNCTION_17_5(v8, qword_280FE9578);
    v10 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (os_log_type_enabled(v10, v1))
    {
      OUTLINED_FUNCTION_60();
      v11 = OUTLINED_FUNCTION_41_0();
      *v3 = 138412290;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_69_1(v13);
      OUTLINED_FUNCTION_43_0(&dword_2315AF000, v14, v1, "Error when submitting to state store: %@");
      sub_2315B2F7C(v11, &qword_27DD60278, &unk_231608238);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v15 = v0[29];
    v16 = v0[30];
    v17 = v0[28];

    v18 = sub_2315F53D4();
    v17();

    v19 = v0[33];

    OUTLINED_FUNCTION_14();

    return v20();
  }

  else
  {
    v23 = v0[32];
    v22 = v0[33];
    v24 = v0[31];
    sub_2316061E8();
    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_36();
    v27(v26);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v28 = v0[24];
    v29 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v29, qword_280FE9578);
    sub_2315B2D08((v0 + 2), (v0 + 8));

    v30 = sub_2316066C8();
    sub_231606968();
    OUTLINED_FUNCTION_9_1();

    if (OUTLINED_FUNCTION_7())
    {
      v32 = v0[23];
      v31 = v0[24];
      v33 = OUTLINED_FUNCTION_91_0();
      v55 = OUTLINED_FUNCTION_90_0();
      *v33 = 136315394;
      v34 = OUTLINED_FUNCTION_59_1();
      *(v33 + 4) = sub_2315B1574(v34, v35, v36);
      *(v33 + 12) = 2080;
      sub_2315B2D08((v0 + 8), (v0 + 14));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v37 = sub_2316067A8();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
      v40 = sub_2315B1574(v37, v39, &v55);

      *(v33 + 14) = v40;
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v41, v42, v43, v44, v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
    }

    v0[20] = v0[25];
    v45 = *(MEMORY[0x277D60570] + 4);
    v46 = swift_task_alloc();
    v0[35] = v46;
    v47 = type metadata accessor for StatefulSuggestionsClient();
    OUTLINED_FUNCTION_24_3();
    v50 = sub_2315B3174(v48, v49);
    *v46 = v0;
    v46[1] = sub_2315FA690;
    v51 = v0[26];
    v52 = v0[27];
    v53 = v0[23];
    v54 = v0[24];

    return MEMORY[0x2821C5FC8](v53, v54, v51, v52, v0 + 2, v47, v50);
  }
}

uint64_t sub_2315B1574(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2315B1638(v11, 0, 0, 1, a1, a2);
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
    sub_2315B2BB4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2315B1638(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2315CCC18(a5, a6);
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
    result = sub_231606A68();
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

uint64_t sub_2315B1798(int a1, id a2)
{
  v3 = v2;
  v5 = [a2 processIdentifier];
  sub_231605A88();
  sub_231605A78();
  v6 = sub_231606788();

  v7 = [a2 valueForEntitlement_];

  if (v7)
  {
    sub_2316069E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (OUTLINED_FUNCTION_1_6() & 1) != 0 && (v34[0])
    {
      sub_231605A68();
      v8 = sub_231606788();

      v9 = [a2 valueForEntitlement_];

      if (v9)
      {
        sub_2316069E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
      }

      v37 = v35;
      v38 = v36;
      if (*(&v36 + 1))
      {
        v18 = OUTLINED_FUNCTION_1_6();
        if (v18)
        {
          v19 = *&v34[0];
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = *(&v34[0] + 1);
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        sub_2315B1DC4(&v37);
        v19 = 0;
        v20 = 0;
      }

      v21 = objc_opt_self();
      v22 = [v21 interfaceWithProtocol_];
      v23 = [v21 interfaceWithProtocol_];
      [v22 setInterface:v23 forSelector:sel_getSuggestionsForAppWithAppBundleId_placementId_entities_intentsToSuggest_bridge_completionHandler_ argumentIndex:4 ofReply:0];
      [a2 setExportedInterface_];
      v24 = *(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_client);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_eventDrivenClient, &v37);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_autocompleteService, &v35);
      sub_2315B4568(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_offlineGenerationClient, v34);
      v25 = qword_280FE8FD0;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = qword_280FE8FD8;
      type metadata accessor for XPCAccessList();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      type metadata accessor for SiriSuggestionsXPCService();
      swift_allocObject();
      v28 = sub_2315F36F4(v24, &v37, v19, v20, v27, &v35, v34);

      [a2 setExportedObject_];

      [a2 resume];
      if (qword_280FE9570 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v29 = sub_2316066E8();
      __swift_project_value_buffer(v29, qword_280FE9578);
      v11 = sub_2316066C8();
      v30 = sub_231606958();
      if (os_log_type_enabled(v11, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67240192;
        v31[1] = v5;
        OUTLINED_FUNCTION_2_6(&dword_2315AF000, v32, v33, "process [%{public}d] is connected to siri suggestions xpc service");
        MEMORY[0x231933730](v31, -1, -1);
      }

      v16 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2315B1DC4(&v37);
  }

  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v10 = sub_2316066E8();
  __swift_project_value_buffer(v10, qword_280FE9578);
  v11 = sub_2316066C8();
  v12 = sub_231606978();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    v13[1] = v5;
    OUTLINED_FUNCTION_2_6(&dword_2315AF000, v14, v15, "process [%{public}d] is not entitled to call the Siri Suggestions service.\nAdd the proper entitlements and try again.");
    MEMORY[0x231933730](v13, -1, -1);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_2()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{
  *(a1 + 8) = sub_2315CB818;
  v2 = *(v1 + 184);
  return *(v1 + 224);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2080;

  return sub_2315B1574(v2, v1, (v4 - 80));
}

uint64_t sub_2315B1DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD605F0, qword_231609310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL OUTLINED_FUNCTION_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_231605A98();
}

uint64_t sub_2315B1E7C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = _Block_copy(v6);
  v8 = sub_231606798();
  v10 = v9;
  v11 = v5;

  v12 = sub_231605038();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v1(v8, v10, v12, v14, v3, v15);

  sub_2315B300C(v12, v14);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315B1F9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2315B1FF0()
{
  OUTLINED_FUNCTION_93();
  v35 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_62_2();
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v17 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v17, qword_280FE9578);

  v18 = sub_2316066C8();
  v19 = sub_231606968();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_60();
    v34 = v9;
    v21 = v7;
    v22 = v3;
    v23 = v5;
    v24 = OUTLINED_FUNCTION_63();
    v36 = v24;
    *v20 = 136315138;
    *(v20 + 4) = sub_2315B1574(v13, v11, &v36);
    _os_log_impl(&dword_2315AF000, v18, v19, "Executing SiriSuggestionsXPCService logIntent on request: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v5 = v23;
    v3 = v22;
    v7 = v21;
    v9 = v34;
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v25 = *(v35 + 16);
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_78_0();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v9;
  v30[5] = v7;
  v30[6] = v25;
  v30[7] = v13;
  v30[8] = v11;
  v30[9] = v5;
  v30[10] = v3;
  v30[11] = v35;

  sub_2315B2F24(v9, v7);

  v31 = OUTLINED_FUNCTION_5_8();
  sub_2315F5918(v31, v32, v1, v33, v30);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315B220C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  OUTLINED_FUNCTION_78_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2315B2268()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12(v4);
  *v5 = v6;
  v5[1] = sub_2315F0728;

  return v8(v1);
}

uint64_t OUTLINED_FUNCTION_14()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 2080;

  return sub_2315CCBA8(v2, v0);
}

size_t OUTLINED_FUNCTION_15_2()
{
  v2 = *(v0 + 16) + 1;

  return sub_231604008(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return MEMORY[0x2822005D0](v1, v0, sub_2315F2260, v2, v1);
}

void OUTLINED_FUNCTION_12_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1)
{
  *(a1 + 8) = sub_2315EACF8;
  v2 = *(v1 + 56);
  return *(v1 + 88);
}

uint64_t sub_2315B24CC()
{
  OUTLINED_FUNCTION_20_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  v4 = *(v0 + 104);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12(v5);
  *v6 = v7;
  v6[1] = sub_2315B4740;
  OUTLINED_FUNCTION_10_2(v19);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_33_1();

  return sub_2315B274C(v8, v9, v10, v11, v12, v13, v14, v15);
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v14 = a13;

  return sub_2315CCBA8(v15, v13);
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_7_1()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{
  *(a1 + 8) = sub_2315D87E0;
  v2 = v1[37];
  v4 = v1[32];
  return v1[33];
}

uint64_t sub_2315B274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v16;
  *(v8 + 208) = v14;
  *(v8 + 224) = v15;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = sub_2316061F8();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B1174, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5_4(uint64_t a1@<X8>)
{
  v2[38] = v1;
  v2[39] = a1;
  v4 = v2[35];
  v3 = v2[36];
  v5 = v2[34];
  v6 = v2[29];
  v7 = v2[24];
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = v3;

  return sub_2315B4568(v1 + 96, v1 + 136);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[52];
  v11 = v0[49];
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_231605B58();
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_231606A08();
}

uint64_t OUTLINED_FUNCTION_3_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[164];
  v5 = v1[163];
  v6 = v1[160];
  v7 = v1[159];
  v8 = v1[158];
  v9 = v1[155];
  v10 = v1[152];
  v11 = v1[151];
  v12 = v1[150];
  v13 = v1[149];
  v16 = v1[148];
  v17 = v1[147];
  v18 = v1[146];
  v19 = v1[143];
  v20 = v1[140];
  v21 = v1[139];
  v22 = v1[136];
  v23 = v1[133];
  v24 = v1[132];
  v25 = v1[131];
  v14 = v1[130];
  v26 = v1[127];
  *(v2 - 88) = v1[126];
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_231604F18();
}

uint64_t sub_2315B2BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_22_2(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x231933730);
}

void OUTLINED_FUNCTION_20_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_2315B2D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDB68](a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

__n128 OUTLINED_FUNCTION_7_6()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  return *(v0 + 72);
}

void *OUTLINED_FUNCTION_76()
{
  v2 = v0[2] + 1;

  return sub_2315DA474(0, v2, 1, v0);
}

uint64_t sub_2315B2F24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2315B2F7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[8];

  return sub_2316066E8();
}

uint64_t sub_2315B300C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2315B3064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_78();
  v10 = v9[2];
  v11 = v9[3];
  OUTLINED_FUNCTION_7_6();
  v12 = v9[11];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12(v13);
  *v14 = v15;
  v14[1] = sub_2315B4660;
  OUTLINED_FUNCTION_10_2(a9);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_31();

  return sub_2315B3C0C(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_beginAccess();
}

uint64_t sub_2315B3174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StatefulSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_231605C78();
  v1[7] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315B327C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return StatefulSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)();
}

void OUTLINED_FUNCTION_8_0()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

size_t OUTLINED_FUNCTION_8_2()
{
  v2 = *(v0 + 16) + 1;

  return sub_231604008(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  v1 = v0[61];
  v2 = v0[62];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[54];
  v6 = v0[51];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_2315CCBA8(v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_6_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_2315B3534()
{
  v43 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v1, v0[2], v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D606B8])
  {
    v5 = v0[10];
    v6 = v0[6];
    (*(v0[8] + 96))(v5, v0[7]);
    v7 = *v5;
    v8 = v5[1];
    v0[11] = v8;
    v9 = *(v6 + 72);
    v10 = *(v6 + 80);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    v40 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_23160114C;
    v15 = v0[4];
    v16 = v0[5];
    v17 = v0[3];

    return v40(v7, v8, v17, v15, v16, ObjectType, v10);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v19 = v0[9];
    v20 = v0[7];
    v21 = v0[2];
    v22 = sub_2316066E8();
    v23 = __swift_project_value_buffer(v22, qword_280FE9630);
    v4(v19, v21, v20);
    v24 = sub_2316066C8();
    v25 = sub_231606978();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[7];
    if (v26)
    {
      OUTLINED_FUNCTION_60();
      v41 = OUTLINED_FUNCTION_21_2();
      v42 = v41;
      *v23 = 136315138;
      sub_231601D00(&qword_27DD60880, 255, MEMORY[0x277D606C0]);
      v30 = sub_231606BC8();
      v32 = v31;
      v33 = *(v28 + 8);
      v34 = OUTLINED_FUNCTION_32_1();
      v33(v34);
      v35 = sub_2315B1574(v30, v32, &v42);

      *(v23 + 4) = v35;
      _os_log_impl(&dword_2315AF000, v24, v25, "Unsupported interationId type of %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x231933730](v41, -1, -1);
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      v33 = *(v28 + 8);
      v36 = OUTLINED_FUNCTION_32_1();
      v33(v36);
    }

    (v33)(v0[10], v0[7]);
    v38 = v0[9];
    v37 = v0[10];

    OUTLINED_FUNCTION_14();

    return v39();
  }
}

uint64_t OUTLINED_FUNCTION_22(uint64_t result, uint64_t a2)
{
  *(v2 - 128) = result;
  *(v2 - 120) = a2;
  *(v2 - 176) = 35;
  *(v2 - 168) = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{
  *(a1 + 8) = sub_2315D4C5C;
  v2 = v1[55];
  v3 = v1[49];
  v4 = v1[45];
  v5 = v1[37];
  v6 = v1[38];
  result = v1[35];
  v8 = v1[36];
  return result;
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x231933730);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_2315B39B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4660;

  return sub_2315B3AFC(a1, a2, a3, a4, a5);
}

uint64_t sub_2315B3A78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315C1C80, v2, 0);
}

void OUTLINED_FUNCTION_25_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x231933730);
}

uint64_t sub_2315B3AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a3;
  v6[3] = a4;
  v9 = swift_task_alloc();
  v6[6] = v9;
  *v9 = v6;
  v9[1] = sub_2315C21C4;

  return sub_2315B3A78(a1, a2);
}

uint64_t OUTLINED_FUNCTION_30()
{
  v1 = v0[16];
  v2 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30_0()
{
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[164];
  v5 = v0[161];
  v6 = v0[130];
  v7 = v0[129];
  v8 = v0[128];
}

uint64_t sub_2315B3C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 64) = v17;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_2316066B8();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_231605FC8();
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B3D44, 0, 0);
}

uint64_t sub_2315B3D44()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_231604F38();
  OUTLINED_FUNCTION_32(v5);
  v0[17] = sub_231604F28();
  sub_2315B3174(&qword_280FE95F8, MEMORY[0x277D60930]);
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    v6 = v0[16];
    v7 = v0[13];

    OUTLINED_FUNCTION_14();

    return v8();
  }

  else
  {
    v10 = v0[13];
    v11 = sub_2316064E8();
    sub_2316064C8();

    sub_231605FF8();
    v12 = sub_2316064E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_83_0();

    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_2315F556C;
    v14 = v0[16];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];

    return StatefulSuggestionsClient.logEngagement(for:intent:)();
  }
}

uint64_t OUTLINED_FUNCTION_31_3()
{
  v1 = v0[12];
  v2 = *(v0[13] + 8);
  return v0[14];
}

uint64_t sub_2315B3F5C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.getService()(a1);
}

uint64_t DispatchedServiceAPIProvider.getService()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315B40C4, v1);
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t sub_2315B40C4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0(v1[14]);
  v1[12] = v0;
  v3 = *(v2 + 16);
  v4 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[15] = v5;
  *v5 = v6;
  v5[1] = sub_2315B4234;
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CD8](v7);
}

BOOL OUTLINED_FUNCTION_18_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2315B4234()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2315B44BC, v3, 0);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  v5 = *(*(v1 + 56) + 8 * v4);
  v6 = *(v0 + 48);
  v7 = *(v2 + 32);
  return v3;
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t OUTLINED_FUNCTION_2_8(float a1)
{
  *v3 = a1;

  return sub_2315B1574(v2, v1, (v4 - 80));
}

uint64_t sub_2315B44BC()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 104);
  sub_2315B4568(*(v1 + 112) + 128, v1 + 56);
  type metadata accessor for DispatcherSuggestionService();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_9_0();
  v2[4] = sub_2315B4888(v4, v5);
  *v2 = v0;
  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315B4568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  sub_2315B4648((v3 + 16), a1 + 16);
  result = sub_2315B4648((v3 + 56), a1 + 56);
  *(v2 + 24) = v1;
  return result;
}

uint64_t sub_2315B4648(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2315B4660()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t OUTLINED_FUNCTION_14_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  v4 = *(v2 + 272);
  v5 = *(v1 + 56) + 40 * a1;

  return sub_2315B4568(v5, v2 + 56);
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{
  *(a1 + 8) = sub_2315F7578;
  v2 = v1[31];
  result = v1[28];
  v4 = v1[29];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t sub_2315B4888(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2315B48CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315B49B0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_6();
  v1 = *(MEMORY[0x277D60440] + 4);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_2315FE920;
  v3 = *(v0 + 112);
  v4 = OUTLINED_FUNCTION_33_2();

  return MEMORY[0x2821C5CA0](v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_34_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_34_2()
{
  v1 = *(v0 + 120);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_2315B4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4660;

  return sub_2315B4BAC(a1, a2, a3, a4);
}

uint64_t sub_2315B4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315B4BD0, 0);
}

uint64_t sub_2315B4BD0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v0 + 48));
  v1 = *(MEMORY[0x277D60440] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2315BF1A8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x2821C5CA0](v6);
}

uint64_t sub_2315B4C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B4CC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2315B4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231606158();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_231605E98();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2315B4DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_231606158();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_231605E98();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

unint64_t sub_2315B4EB4(uint64_t a1)
{
  result = sub_2315C28E0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2315B4EDC()
{
  v2 = sub_231604FF8();
  OUTLINED_FUNCTION_5_2(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 64));
  if (*(v1 + 104))
  {
    v8 = *(v1 + 112);
  }

  v9 = (v5 + 160) & ~v5;
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 120));
  (*(v4 + 8))(v1 + v9, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v10));

  return MEMORY[0x2821FE8E8](v1, v10 + 40, v5 | 7);
}

uint64_t sub_2315B4FCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B5004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231604FF8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2315B50B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231604FF8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2315B5174(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2315B5258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

unint64_t sub_2315B5360(uint64_t a1)
{
  result = sub_2315CA968();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2315B5388()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B53C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

__n128 *sub_2315B540C(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return OUTLINED_FUNCTION_74(v2, v3, a1, a2);
}

uint64_t sub_2315B5444()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2315B548C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2315B54D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_2315B56F8()
{
  v1 = sub_231605E98();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v11 = *(v0 + 6);

  v12 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B57D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B58A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2315B58DC()
{
  v1 = sub_2316061C8();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2315B59B4()
{
  OUTLINED_FUNCTION_93();
  v1 = sub_231605098();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  sub_2315B300C(*(v0 + v6), *(v0 + v6 + 8));
  v10 = *(v0 + v7 + 8);

  sub_2315B300C(*(v0 + v8), *(v0 + v8 + 8));
  v11 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_2315B5ABC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_2315B5B20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_2315B300C(v0[6], v0[7]);
  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2315B5B7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2315B5BBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2315B5C0C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v2 = v0[12];

  v3 = v0[13];

  OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2315B5C60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2315B5CB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_2315B300C(v0[4], v0[5]);
  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_2315B300C(v0[6], v2);
  }

  v3 = v0[9];

  v4 = v0[11];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v5 = v0[17];
  swift_unknownObjectRelease();
  v6 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2315B5D38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  OUTLINED_FUNCTION_78_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2315B5D8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_2315B300C(v0[6], v0[7]);
  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  OUTLINED_FUNCTION_76_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2315B5F00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v5 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2315B5F88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *SiriSuggestionsXPCClient.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return SiriSuggestionsXPCClient.init()();
}

char *SiriSuggestionsXPCClient.init()()
{
  v1 = *v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60108, &qword_231607640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v14 - v3;
  v5 = sub_231605B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605B48();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2315B6214(v4);
    v10 = *(*v0 + 48);
    v11 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v9, v4, v5);
    v12(&v0[OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge], v9, v5);
  }

  return v0;
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

uint64_t sub_2315B6214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60108, &qword_231607640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *SiriSuggestionsXPCClient.__allocating_init(connection:xpcInterface:)(void *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = SiriSuggestionsXPCClient.init()();

  return v7;
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D60480] + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  OUTLINED_FUNCTION_0_0();
  v16 = sub_2315B6DD0(v14, v15);
  *v12 = v5;
  v12[1] = sub_2315B776C;

  return MEMORY[0x2821C5D08](a1, a2, a3, a4, a5, v13, v16);
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v4 = *(MEMORY[0x277D60480] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  OUTLINED_FUNCTION_0_0();
  v9 = sub_2315B6DD0(v7, v8);
  *v5 = v2;
  v5[1] = sub_2315B776C;
  v10 = MEMORY[0x277D84FA0];

  return MEMORY[0x2821C5D08](v3, v1, v0, v10, 0, v6, v9);
}

uint64_t SiriSuggestionsXPCClient.submitEngagement(for:with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D604A0] + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  OUTLINED_FUNCTION_0_0();
  v10 = sub_2315B6DD0(v8, v9);
  *v6 = v2;
  v6[1] = sub_2315B776C;

  return MEMORY[0x2821C5D28](a1, a2, v7, v10);
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForApp(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D60478] + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  OUTLINED_FUNCTION_0_0();
  v10 = sub_2315B6DD0(v8, v9);
  *v6 = v2;
  v6[1] = sub_2315B66C8;

  return MEMORY[0x2821C5D00](a1, a2, v7, v10);
}

uint64_t sub_2315B66C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v1 = *(MEMORY[0x277D604B0] + 4);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v3, v4);
  *v2 = v0;
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821C5D38](v5);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(MEMORY[0x277D60490] + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  OUTLINED_FUNCTION_0_0();
  v14 = sub_2315B6DD0(v12, v13);
  *v10 = v0;
  v10[1] = sub_2315B776C;

  return MEMORY[0x2821C5D18](v8, v6, v4, v2, v11, v14);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:properties:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  v1 = *(MEMORY[0x277D60488] + 4);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v3, v4);
  *v2 = v0;
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821C5D10](v5);
}

uint64_t SiriSuggestionsXPCClient.refreshService()()
{
  v1 = *(MEMORY[0x277D60498] + 4);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v3, v4);
  *v2 = v0;
  v5 = OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821C5D20](v5);
}

uint64_t SiriSuggestionsXPCClient.warmup()()
{
  v1 = *(MEMORY[0x277D604A8] + 4);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_0_0();
  sub_2315B6DD0(v3, v4);
  *v2 = v0;
  v5 = OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821C5D30](v5);
}

uint64_t SiriSuggestionsXPCClient.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge;
  v2 = sub_231605B58();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SiriSuggestionsXPCClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport24SiriSuggestionsXPCClient_bridge;
  v2 = sub_231605B58();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for SiriSuggestionsXPCClient()
{
  result = qword_27DD60130;
  if (!qword_27DD60130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315B6DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2315B6E18()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.getNextSuggestions(requestId:)();
}

uint64_t sub_2315B6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(a1, a2, a3, a4, a5);
}

uint64_t sub_2315B6F98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B66C8;

  return SiriSuggestionsXPCClient.refreshService()();
}

uint64_t sub_2315B7030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D60570] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2315B776C;

  return MEMORY[0x2821C5FC8](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2315B7110()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_2315B71D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitAsync(for:properties:)();
}

uint64_t sub_2315B7280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D60590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2315B776C;

  return MEMORY[0x2821C5FE8](a1, a2, a3, a4);
}

uint64_t sub_2315B7340()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)();
}

uint64_t sub_2315B73F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.warmup()();
}

uint64_t sub_2315B7480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D605A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2315B776C;

  return MEMORY[0x2821C6010](a1, a2, a3, a4);
}

uint64_t sub_2315B7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D605A8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2315B776C;

  return MEMORY[0x2821C6018](a1, a2, a3, a4);
}

uint64_t sub_2315B7600(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B776C;

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)(a1, a2);
}

uint64_t sub_2315B76B0()
{
  result = sub_231605B58();
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

uint64_t sub_2315B7770()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 168) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = sub_2316059C8();
  *(v1 + 128) = v6;
  OUTLINED_FUNCTION_4(v6);
  *(v1 + 136) = v7;
  v9 = *(v8 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_23_0();
  v10 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315B781C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_2316066E8();
    __swift_project_value_buffer(v12, qword_280FE9558);
    v13 = sub_2316066C8();
    v14 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v14))
    {
      v15 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v15);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v16, v17, "Using ResponseFramework 1.0 for fallback dialog");
      OUTLINED_FUNCTION_17();
    }

    v18 = *(v0 + 120);

    v11 = v18 + 56;
    goto LABEL_13;
  }

  v2 = *(v0 + 120);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  if (sub_2316062A8())
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_2316066E8();
    __swift_project_value_buffer(v4, qword_280FE9558);
    v5 = sub_2316066C8();
    v6 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v7);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v8, v9, "Using SiriHelp with SMART");
      OUTLINED_FUNCTION_17();
    }

    v10 = *(v0 + 120);

    v11 = v10 + 136;
LABEL_13:
    sub_2315B4568(v11, v0 + 16);
    goto LABEL_14;
  }

  v31 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_28();
  v32 = sub_231605FD8();
  *(v0 + 80) = v32;
  *(v0 + 88) = sub_2315BCA10(&qword_27DD60208, MEMORY[0x277D60980]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v32 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60970], v32);
  v34 = sub_2316062C8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (v34)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v35 = sub_2316066E8();
    __swift_project_value_buffer(v35, qword_280FE9558);
    v36 = sub_2316066C8();
    v37 = sub_231606958();
    if (OUTLINED_FUNCTION_18_0(v37))
    {
      v38 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_27(v38);
      OUTLINED_FUNCTION_11(&dword_2315AF000, v39, v40, "Using ResponseFramework 2.0");
      OUTLINED_FUNCTION_17();
    }

    v41 = *(v0 + 120);

    v11 = v41 + 96;
    goto LABEL_13;
  }

  sub_2315B4568(*(v0 + 120) + 56, v0 + 16);
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v42 = sub_2316066E8();
  __swift_project_value_buffer(v42, qword_280FE9558);
  v43 = sub_2316066C8();
  v44 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v44))
  {
    v45 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v45);
    OUTLINED_FUNCTION_11(&dword_2315AF000, v46, v47, "Using ResponseFramework 1.0");
    OUTLINED_FUNCTION_17();
  }

LABEL_14:
  v19 = *(v0 + 120);
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 104), *(v0 + 128));
  v20 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v19[5]);
  OUTLINED_FUNCTION_26();
  sub_231606298();
  sub_231605948();
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  OUTLINED_FUNCTION_25(v22);
  v48 = (v23 + *v23);
  v25 = *(v24 + 4);
  v26 = swift_task_alloc();
  *(v0 + 152) = v26;
  *v26 = v0;
  v26[1] = sub_2315B7C7C;
  v27 = *(v0 + 144);
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);

  return (v48)(v29, v1 & 1, v27, v28, v21, v22);
}

uint64_t sub_2315B7C7C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B7D78()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_2315B7DE8()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();
  v4 = *(v0 + 160);

  return v3();
}

uint64_t *sub_2315B7E6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t sub_2315B7EA4()
{
  sub_2315B7E6C();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_2315B7ED8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return sub_2315B7770();
}

uint64_t SiriHelpResponseFramework1Invoker.__allocating_init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(a1, a2, a3, a4, a5);
  return v13;
}

char *SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl;
  v13 = sub_231604FF8();
  OUTLINED_FUNCTION_5_1(v13);
  (*(v14 + 32))(&v5[v12], a1);
  *&v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals] = a2;
  sub_2315B4648(a3, &v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider]);
  v15 = swift_allocObject();
  if (a4)
  {
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    v16 = &unk_231607898;
  }

  else
  {
    *(v15 + 16) = v11;
    v16 = &unk_231607878;
  }

  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  v19 = &v5[OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor];
  *v19 = &unk_231607888;
  *(v19 + 1) = v18;
  return v5;
}

uint64_t sub_2315B8178(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2315B8270;

  return v8(a2);
}

uint64_t sub_2315B8270()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_2315B836C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2315B8408;

  return sub_2315B860C(a2);
}

uint64_t sub_2315B8408()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B853C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t sub_2315B8568()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12(v6);
  *v7 = v8;
  v7[1] = sub_2315B4740;

  return sub_2315B836C(v4, v2);
}

uint64_t sub_2315B860C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2316056F8();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315B86CC, 0, 0);
}

uint64_t sub_2315B86CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  sub_2316056B8();
  OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for PatternExecution();
  v4 = (v2 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v2 + v3[6]);
  v8 = *(v2 + v3[7]);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2316056E8();
  v9 = *(MEMORY[0x277D55C28] + 4);
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_2315B87DC;
  v11 = *(v0 + 80);
  v12 = OUTLINED_FUNCTION_29_0(*(v0 + 56));

  return MEMORY[0x2821B7E58](v12, v5, v6, v7, v8, v0 + 16);
}

uint64_t sub_2315B87DC()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[11];
  v6 = *v1;
  *v4 = *v1;
  v3[12] = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  sub_2315B2F7C((v3 + 2), &qword_27DD601D0, &qword_231607A98);
  if (!v0)
  {

    v7 = v6[1];

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B8994()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_2315B89F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_2315B8AEC;

  return v7(v2 + 16, a1);
}

uint64_t sub_2315B8AEC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = *(v7 + 8);

    return v12(v11);
  }
}

uint64_t sub_2315B8C18()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2315B8CC8;

  return sub_2315B89F0(v3, v5);
}

uint64_t sub_2315B8CC8()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2315B8DB4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12(v7);
  *v8 = v9;
  v8[1] = sub_2315B4740;

  return sub_2315B8178(v4, v2, v6);
}

uint64_t sub_2315B8E70()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_231604FF8();
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_4(v6);
  *(v1 + 56) = v7;
  v9 = *(v8 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_23_0();
  v10 = type metadata accessor for PatternExecution();
  *(v1 + 72) = v10;
  OUTLINED_FUNCTION_24(v10);
  v12 = *(v11 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_23_0();
  v13 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_2315B8F40()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 112);
  v7 = sub_231605928();
  v9 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor);
  v8 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor + 8);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl, v3);
  v10 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals);
  if (v10)
  {
    v11 = *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_catGlobals);
  }

  else
  {
    sub_231605668();
    v11 = sub_231605658();
  }

  v12 = "Suggestions#Fallback";
  v13 = (v6 & 1) == 0;
  if (v6)
  {
    v12 = "GetSuggestions_learnMoreWebsite";
  }

  v14 = v12 | 0x8000000000000000;
  if (v13)
  {
    v15 = 0xD00000000000001ALL;
  }

  else
  {
    v15 = 0xD000000000000014;
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  (*(*(v0 + 56) + 32))(v16, *(v0 + 64), *(v0 + 48));
  v18 = (v16 + v17[5]);
  *v18 = v15;
  v18[1] = v14;
  *(v16 + v17[6]) = v7;
  *(v16 + v17[7]) = v11;
  v19 = v10;
  v24 = (v9 + *v9);
  v20 = v9[1];
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_2315B9138;
  v22 = OUTLINED_FUNCTION_29_0(*(v0 + 80));

  return v24(v22);
}

uint64_t sub_2315B9138()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *(v4 + 88);
  *v6 = *v1;
  *(v5 + 96) = v0;

  v8 = *(v4 + 80);
  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_2315BC9B4(v8);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315B9270()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[2];
  v6 = (v0[5] + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider);
  v7 = v6[4];
  v8 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_231605108();
  OUTLINED_FUNCTION_28();
  v9 = sub_2316050F8();
  v10 = MEMORY[0x277D5B770];
  v5[3] = v9;
  v5[4] = v10;

  *v5 = v8;

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t sub_2315B9350()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[10];
  v2 = v0[8];

  OUTLINED_FUNCTION_14();
  v4 = v0[12];

  return v3();
}

uint64_t SiriHelpResponseFramework1Invoker.deinit()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_templatesUrl;
  v2 = sub_231604FF8();
  OUTLINED_FUNCTION_5_1(v2);
  (*(v3 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternFlowProvider));
  v4 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework1Invoker_patternExecutor + 8);

  return v0;
}

uint64_t sub_2315B945C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return sub_2315B8E70();
}

uint64_t sub_2315B9520(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_25(a6);
  v19 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_12(v15);
  *v16 = v17;
  v16[1] = sub_2315B4660;

  return (v19)(a1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_2315B96A4()
{
  result = sub_231604FF8();
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

uint64_t sub_2315B9780(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId;
  strcpy((v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId), "com.apple.siri");
  *(v9 + 15) = -18;
  v10 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  v11 = sub_231604FF8();
  OUTLINED_FUNCTION_5_1(v11);
  (*(v12 + 32))(v4 + v10, a1);
  *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals) = a2;
  sub_2315B4648(a3, v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher);
  *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet) = a4;
  return v4;
}

uint64_t sub_2315B9858(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_231604FF8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  (*(v9 + 16))(v13 - v12, a1, v6);
  sub_2315B4568(a3, v18);
  v15 = type metadata accessor for SiriHelpResponseFramework2Invoker(0);
  v16 = OUTLINED_FUNCTION_32(v15);
  sub_2315B9780(v14, a2, v18, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v9 + 8))(a1, v6);
  return v16;
}

uint64_t sub_2315B997C(uint64_t a1, void (**a2)(uint64_t, uint64_t), void (**a3)(void, void), uint64_t a4, void (*a5)(void, uint64_t, void))
{
  v150 = a4;
  v151 = a5;
  v149 = a3;
  v146 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601E8, &qword_231607AA0);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v142 = &v127 - v9;
  OUTLINED_FUNCTION_19();
  v10 = sub_231605888();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v133 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v132 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v152 = &v127 - v18;
  MEMORY[0x28223BE20](v17);
  v141 = &v127 - v19;
  OUTLINED_FUNCTION_19();
  v148 = sub_2316051D8();
  v20 = OUTLINED_FUNCTION_1_0(v148);
  v138 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v147 = v25 - v24;
  OUTLINED_FUNCTION_19();
  v26 = sub_231605268();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v154 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v143 = (v32 - v31);
  OUTLINED_FUNCTION_19();
  v145 = sub_231605238();
  v33 = OUTLINED_FUNCTION_1_0(v145);
  v144 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_19();
  v40 = sub_2316056F8();
  v41 = OUTLINED_FUNCTION_1_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  v50 = OUTLINED_FUNCTION_5_1(v49);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = (&v127 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v57 = &v127 - v56;
  sub_2315BCA10(&qword_27DD601F8, MEMORY[0x277D60508]);
  v153 = v10;
  v155 = sub_231606728();
  sub_231605688();
  v157 = 0;
  memset(v156, 0, sizeof(v156));
  sub_2316056E8();
  sub_231605678();
  v58 = v48;
  v59 = v57;
  (*(v43 + 8))(v58, v40);
  sub_2315B2F7C(v156, &qword_27DD601D0, &qword_231607A98);
  sub_2315BC924(v57, v55);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    isUniquelyReferenced_nonNull_native = *v55;
    if (qword_280FE9550 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0();
    }

    v61 = sub_2316066E8();
    __swift_project_value_buffer(v61, qword_280FE9558);
    v62 = isUniquelyReferenced_nonNull_native;
    v63 = sub_2316066C8();
    v64 = sub_231606978();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v156[0] = v66;
      *v65 = 136315138;
      swift_getErrorValue();
      v67 = sub_231606C18();
      v69 = sub_2315B1574(v67, v68, v156);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_2315AF000, v63, v64, "Error: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {
    }

    goto LABEL_30;
  }

  v70 = v144;
  v71 = v39;
  v72 = v55;
  v73 = v145;
  (*(v144 + 32))(v39, v72, v145);
  v74 = sub_231605228();
  v75 = *(v74 + 16);
  if (!v75)
  {

LABEL_29:
    (*(v70 + 8))(v71, v73);
LABEL_30:
    sub_2315B2F7C(v59, &qword_27DD601F0, &qword_231607AA8);
    return v155;
  }

  v128 = v71;
  v129 = v57;
  v140 = 0;
  v151 = *(v154 + 16);
  v76 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v127 = v74;
  v59 = v74 + v76;
  v150 = *(v154 + 72);
  v146 = (v138 + 1);
  v135 = (v133 + 32);
  v138 = (v133 + 16);
  v137 = (v133 + 8);
  v154 += 16;
  v149 = (v154 - 8);
  v134 = 0x800000023160A480;
  v131 = *MEMORY[0x277D60500];
  v130 = (v133 + 104);
  v77 = v143;
  v139 = v26;
  while (1)
  {
    v151(v77, v59, v26);
    v78 = sub_231605248();
    OUTLINED_FUNCTION_22(v78, v79);
    sub_2315BC8D0();
    v80 = sub_2316069B8();

    v81 = *(v80 + 16);
    if (v81)
    {
      break;
    }

    (*v149)(v77, v26);

LABEL_25:
    v59 += v150;
    if (!--v75)
    {

      v59 = v129;
      v71 = v128;
      goto LABEL_29;
    }
  }

  v82 = (v80 + 16 + 16 * v81);
  v26 = v77;
  v83 = *v82;
  v84 = v82[1];

  v85 = v147;
  sub_231605258();
  v86 = sub_2316051C8();
  v88 = v87;
  v89 = *v146;
  (*v146)(v85, v148);
  v90 = v142;
  v91 = v153;
  sub_231605878();
  if (__swift_getEnumTagSinglePayload(v90, 1, v91) == 1)
  {
    v136 = v89;

    sub_2315B2F7C(v90, &qword_27DD601E8, &qword_231607AA0);
    v92 = sub_231605248();
    OUTLINED_FUNCTION_22(v92, v93);
    v94 = sub_2316069B8();

    *&v156[0] = 0xD00000000000001FLL;
    *(&v156[0] + 1) = v134;
    MEMORY[0x28223BE20](v95);
    *(&v127 - 2) = v156;
    v96 = v140;
    v97 = sub_2315E9B70(sub_2315BC994, (&v127 - 4), v94);
    v140 = v96;

    if (v97)
    {
      (*v130)(v132, v131, v91);
      v98 = v147;
      sub_231605258();
      sub_2316051C8();
      v99 = v98;
      v77 = v143;
      v136(v99, v148);
      v100 = v155;
      swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v100;
      sub_2315DBBAC();
      v101 = *v137;
      v102 = OUTLINED_FUNCTION_26();
      v103(v102);
      v104 = OUTLINED_FUNCTION_16();
      v105(v104);
      v155 = *&v156[0];
LABEL_24:
      v73 = v145;
      v70 = v144;
      goto LABEL_25;
    }

    v77 = v26;
LABEL_23:
    v124 = OUTLINED_FUNCTION_16();
    v125(v124);
    goto LABEL_24;
  }

  v106 = v141;
  (*v135)(v141, v90, v91);
  v26 = *v138;
  (*v138)(v152, v106, v91);
  v107 = v155;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v156[0] = v107;
  v108 = sub_2315CCFD4();
  if (__OFADD__(*(v107 + 16), (v109 & 1) == 0))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v110 = v108;
  v111 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60200, &qword_231607AB0);
  if ((sub_231606AC8() & 1) == 0)
  {
    v77 = v143;
    goto LABEL_18;
  }

  v112 = sub_2315CCFD4();
  v77 = v143;
  if ((v111 & 1) == (v113 & 1))
  {
    v110 = v112;
LABEL_18:
    v114 = *&v156[0];
    v155 = *&v156[0];
    if (v111)
    {
      v115 = (*(*&v156[0] + 56) + 16 * v110);
      v116 = v115[1];
      *v115 = v86;
      v115[1] = v88;

      v117 = v153;
    }

    else
    {
      *(*&v156[0] + 8 * (v110 >> 6) + 64) |= 1 << v110;
      v117 = v153;
      v26(*(v114 + 48) + *(v133 + 72) * v110, v152, v153);
      v118 = v155;
      v119 = (*(v155 + 56) + 16 * v110);
      *v119 = v86;
      v119[1] = v88;
      v120 = *(v118 + 16);
      v121 = __OFADD__(v120, 1);
      v122 = v120 + 1;
      if (v121)
      {
        goto LABEL_32;
      }

      *(v118 + 16) = v122;
    }

    v123 = *v137;
    (*v137)(v152, v117);
    v123(v141, v117);
    goto LABEL_23;
  }

  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t sub_2315BA580()
{
  OUTLINED_FUNCTION_8();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v7 = sub_231604FF8();
  v1[21] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[22] = v8;
  v10 = *(v9 + 64);
  v1[23] = OUTLINED_FUNCTION_23_0();
  v11 = sub_2316056F8();
  v1[24] = v11;
  OUTLINED_FUNCTION_4(v11);
  v1[25] = v12;
  v14 = *(v13 + 64);
  v1[26] = OUTLINED_FUNCTION_23_0();
  v15 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2315BA678()
{
  OUTLINED_FUNCTION_15();
  sub_2315DCB58(0x61626C6C61467369, 0xEA00000000006B63, *(v0 + 144), (v0 + 56));
  if (*(v0 + 80))
  {
    if (swift_dynamicCast() && (*(v0 + 248) & 1) != 0)
    {
      v1 = 0xEE00707041646574;
      v2 = 0x726F707075736E75;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 56, &unk_27DD605F0, qword_231609310);
  }

  v3 = *(*(v0 + 160) + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet);
  v1 = 0xEB00000000736E6FLL;
  v4 = v3 == 1;
  if (v3 == 1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0x6974736567677573;
  }

  if (v4)
  {
    v1 = 0x800000023160A460;
  }

LABEL_12:
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;
  v5 = *(v0 + 208);
  sub_2316056D8();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2316056E8();
  v6 = *(MEMORY[0x277D55CD8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_2315BA83C;
  v8 = *(v0 + 208);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v13 = OUTLINED_FUNCTION_29_0(*(v0 + 120));

  return MEMORY[0x2821B8048](v13);
}

uint64_t sub_2315BA83C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[29];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[30] = v8;

  v9 = v2[26];
  v10 = v2[25];
  v11 = v2[24];
  if (v0)
  {

    v12 = *(v10 + 8);
  }

  else
  {
    v15 = *(v10 + 8);
  }

  v13 = OUTLINED_FUNCTION_26();
  v14(v13);
  sub_2315B2F7C((v3 + 2), &qword_27DD601D0, &qword_231607A98);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

void sub_2315BA9F0()
{
  v2 = [*(v1 + 240) dialog];
  OUTLINED_FUNCTION_28();
  sub_2315BC88C();
  v3 = sub_231606858();

  v30 = MEMORY[0x277D84F90];
  v4 = 0;
  v29 = sub_2315E9470(v3);
  while (v29 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x231932F00](v4, v3);
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v7 = [v5 id];
    v8 = sub_231606798();
    v10 = v9;

    *(v1 + 88) = v8;
    *(v1 + 96) = v10;
    *(v1 + 104) = 35;
    *(v1 + 112) = 0xE100000000000000;
    sub_2315BC8D0();
    v11 = sub_2316069B8();

    v12 = *(v11 + 16);
    if (!v12)
    {

LABEL_15:

      goto LABEL_18;
    }

    v14 = *(v1 + 216);
    v13 = *(v1 + 224);
    v15 = (v11 + 16 + 16 * v12);
    v17 = *v15;
    v16 = v15[1];

    if (v17 == v14 && v16 == v13)
    {
    }

    else
    {
      v19 = *(v1 + 216);
      v20 = *(v1 + 224);
      v21 = sub_231606BD8();

      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_231606A78();
    v22 = *(v30 + 16);
    sub_231606AA8();
    sub_231606AB8();
    sub_231606A88();
LABEL_18:
    ++v4;
  }

  v23 = *(v1 + 240);
  v24 = *(v1 + 224);

  v25 = sub_231606848();

  [v23 setDialog_];

  v26 = *(v1 + 208);
  v27 = *(v1 + 184);

  v28 = *(v1 + 8);

  v28(v23);
}

uint64_t sub_2315BACA8()
{
  v33 = v0;
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[15];
  v7 = sub_2316066E8();
  __swift_project_value_buffer(v7, qword_280FE9558);
  (*(v3 + 16))(v2, v6, v4);

  v8 = sub_2316066C8();
  v9 = sub_231606978();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[28];
  if (v10)
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];
    v30 = v0[17];
    v31 = v0[27];
    v29 = v0[16];
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v15 = 136315650;
    sub_2315BCA10(&qword_27DD601D8, MEMORY[0x277CC9260]);
    v16 = sub_231606BC8();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_2315B1574(v16, v18, &v32);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2315B1574(v29, v30, &v32);
    *(v15 + 22) = 2080;
    v20 = sub_2315B1574(v31, v11, &v32);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_2315AF000, v8, v9, "Error loading siri help snippet dialog, dir: %s, cat id: %s,  dialogId %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[21];
    v24 = v0[28];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[26];
  v26 = v0[23];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_2315BAF6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - v7;
  OUTLINED_FUNCTION_19();
  v8 = sub_231605888();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = sub_231604FF8();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v39 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  (*(v20 + 16))(v25, v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl, v17);
  v26 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  }

  else
  {
    sub_231605668();
    v27 = sub_231605658();
    v26 = 0;
  }

  v28 = v26;
  v29 = sub_2315B997C(v25, 0xD00000000000002BLL, 0x800000023160A430, a1, v27);

  v30 = *(v20 + 8);
  v30(v25, v17);
  (*(v11 + 104))(v16, *MEMORY[0x277D60500], v8);
  v31 = sub_2315DCB10(v16, v29);
  v33 = v32;

  (*(v11 + 8))(v16, v8);
  if (v33)
  {
    v34 = v38;
    sub_231604FE8();

    if (__swift_getEnumTagSinglePayload(v34, 1, v17) == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_231604FB8();
      v30(v34, v17);
    }

    v36 = v39;
    [v39 setPunchOutUri_];

    v31 = sub_231606988();
  }

  else
  {
  }

  return v31;
}

uint64_t sub_2315BB288()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v9 = sub_231606788();
  [v8 setBundleId_];

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_231606A28();
  MEMORY[0x231932CB0](0xD000000000000039, 0x800000023160A3F0);
  MEMORY[0x231932CB0](*(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId), *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId + 8));
  sub_231604FE8();

  v10 = sub_231604FF8();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    v11 = sub_231604FB8();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  [v8 setPunchOutUri_];

  v12 = sub_231606988();
  return v12;
}

uint64_t sub_2315BB458(uint64_t a1, char a2, char a3, char a4)
{
  if (a3 & 1) != 0 && (a2 & 1) != 0 && (a4)
  {
    return sub_2315BB288();
  }

  else
  {
    return sub_2315BAF6C(a1);
  }
}

uint64_t sub_2315BB46C()
{
  OUTLINED_FUNCTION_8();
  v1[51] = v2;
  v1[52] = v0;
  v1[49] = v3;
  v1[50] = v4;
  v5 = sub_231605A48();
  v1[53] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[54] = v6;
  v8 = *(v7 + 64);
  v1[55] = OUTLINED_FUNCTION_23_0();
  v9 = sub_231604FF8();
  v1[56] = v9;
  OUTLINED_FUNCTION_4(v9);
  v1[57] = v10;
  v12 = *(v11 + 64) + 15;
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v13 = sub_2316059C8();
  v1[60] = v13;
  OUTLINED_FUNCTION_4(v13);
  v1[61] = v14;
  v16 = *(v15 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_2315BB5D4()
{
  v1 = *(v0 + 416);
  v56 = *(*(v0 + 488) + 16);
  v56(*(v0 + 504), *(v0 + 400), *(v0 + 480));
  v2 = sub_231605928();
  v3 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_isSmartSnippet);
  if (v3 == 1)
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 400);
    if (sub_2316058F8() == *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId) && v6 == *(v4 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId + 8))
    {
    }

    else
    {
      v8 = sub_231606BD8();

      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v9 = sub_2315CD0A0(0x656D614E707061, 0xE700000000000000);
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = v2[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
      sub_231606AC8();
      v13 = *(v2[6] + 16 * v11 + 8);

      sub_2315BC87C((v2[7] + 32 * v11), (v0 + 344));
      sub_231606AE8();
    }

    else
    {
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
    }

    sub_2315B2F7C(v0 + 344, &unk_27DD605F0, qword_231609310);
LABEL_13:
    sub_2315DCB58(0xD000000000000010, 0x800000023160A3D0, v2, (v0 + 248));
    if (*(v0 + 272))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
      if (swift_dynamicCast())
      {
        v15 = sub_2315DE2D0(3, *(v0 + 384));
        v17 = v16;
        v19 = v18;
        v21 = v20;
        if (v20)
        {
          sub_231606BE8();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x277D84F90];
          }

          v25 = *(v24 + 16);

          if (__OFSUB__(v21 >> 1, v19))
          {
            __break(1u);
          }

          else if (v25 == (v21 >> 1) - v19)
          {
            v23 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v23)
            {
LABEL_25:
              *(v0 + 304) = v14;
              *(v0 + 280) = v23;
              sub_2315BC87C((v0 + 280), (v0 + 312));
              swift_isUniquelyReferenced_nonNull_native();
              sub_2315DBD48((v0 + 312), 0xD000000000000010, 0x800000023160A3D0);
              goto LABEL_26;
            }

            v23 = MEMORY[0x277D84F90];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          swift_unknownObjectRelease();
        }

        sub_2315F0A8C(v15, v17, v19, v21);
        v23 = v22;
        goto LABEL_24;
      }
    }

    else
    {
      sub_2315B2F7C(v0 + 248, &unk_27DD605F0, qword_231609310);
    }

LABEL_26:
    LOBYTE(v3) = 1;
  }

  *(v0 + 512) = v2;
  sub_2315DCB58(0xD000000000000012, 0x800000023160A380, v2, (v0 + 216));
  v57 = v2;
  if (*(v0 + 240))
  {
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 584);
      goto LABEL_32;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 216, &unk_27DD605F0, qword_231609310);
  }

  v26 = 0;
LABEL_32:
  v27 = *(v0 + 504);
  v28 = *(v0 + 472);
  v30 = *(v0 + 448);
  v29 = *(v0 + 456);
  v31 = *(v0 + 416);
  v32 = *(v0 + 400);
  v33 = sub_231605938();
  sub_2315BB458(v57, v3, v33 & 1, v26);
  sub_231605968();
  v53 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  v54 = *(v29 + 16);
  v54(v28, v31 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl, v30);
  v55 = v31;
  v34 = *(v31 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
  if (v34)
  {
    v35 = *(v31 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_catGlobals);
    v36 = v35;
  }

  else
  {
    sub_231605668();
    v36 = sub_231605658();
    v35 = 0;
  }

  v37 = *(v0 + 496);
  v38 = *(v0 + 472);
  v49 = *(v0 + 480);
  v50 = *(v0 + 504);
  v39 = *(v0 + 456);
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v42 = *(v0 + 432);
  v51 = *(v0 + 424);
  v52 = *(v0 + 464);
  v48 = v35;
  sub_2315B997C(v38, 0xD000000000000021, 0x800000023160A3A0, v57, v36);

  v43 = *(v39 + 8);
  *(v0 + 520) = v43;
  *(v0 + 528) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v38, v40);
  v56(v37, v50, v49);
  sub_231605A38();
  (*(v42 + 104))(v41, *MEMORY[0x277D60548], v51);
  v54(v52, v55 + v53, v40);
  if (v34)
  {
    v44 = v48;
  }

  else
  {
    sub_231605668();
    v44 = sub_231605658();
  }

  *(v0 + 536) = v44;
  v45 = swift_task_alloc();
  *(v0 + 544) = v45;
  *v45 = v0;
  v45[1] = sub_2315BBBFC;
  v46 = *(v0 + 416);
  OUTLINED_FUNCTION_29_0(*(v0 + 464));

  return sub_2315BA580();
}

uint64_t sub_2315BBBFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = v3[68];
  v5 = v3[67];
  v6 = v3[66];
  v7 = v3[65];
  v8 = v3[58];
  v9 = v3[56];
  v10 = *v0;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  *(v13 + 552) = v12;

  v7(v8, v9);
  v14 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v14);
}

void sub_2315BBD68()
{
  v1 = v0[69];
  if (v1)
  {
    v3 = v0[54];
    v2 = v0[55];
    v4 = v0[53];
    v5 = sub_231605218();
    OUTLINED_FUNCTION_32(v5);
    v0[70] = sub_231605208();
    v0[15] = v4;
    v0[16] = sub_2315BCA10(&qword_27DD601A8, MEMORY[0x277D60550]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
    v7 = swift_allocObject();
    v0[71] = v7;
    *(v7 + 16) = xmmword_231607860;
    *(v7 + 32) = v1;
    v8 = *(MEMORY[0x277D5BD38] + 4);
    v32 = *MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38];
    v9 = v1;
    v10 = swift_task_alloc();
    v0[72] = v10;
    *v10 = v0;
    v10[1] = sub_2315BC030;
    v11 = v0[51];
    OUTLINED_FUNCTION_31();

    __asm { BR              X4 }
  }

  v31 = v0[63];
  v33 = v0[64];
  v14 = v0[60];
  v15 = v0[61];
  v16 = v0[54];
  v17 = v0[55];
  v18 = v0[53];
  v19 = v0[49];
  sub_2315B4568(v0[52] + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher, (v0 + 2));
  v20 = sub_2316050E8();
  OUTLINED_FUNCTION_32(v20);
  v0[47] = sub_2316050D8();
  v21 = sub_231605118();

  v22 = sub_2316050F8();
  v23 = MEMORY[0x277D5B770];
  v19[3] = v22;
  v19[4] = v23;
  *v19 = v21;
  (*(v16 + 8))(v17, v18);
  (*(v15 + 8))(v31, v14);

  v25 = v0[62];
  v24 = v0[63];
  v27 = v0[58];
  v26 = v0[59];
  v28 = v0[55];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2315BC030()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[72];
  v6 = v4[71];
  v7 = v4[70];
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v10 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v10);
}

void sub_2315BC158()
{
  v1 = *(v0 + 552);
  v19 = *(v0 + 504);
  v20 = *(v0 + 512);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  v7 = *(v0 + 392);
  sub_2315B4568(*(v0 + 416) + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher, v0 + 136);
  sub_2315B4568(v0 + 56, v0 + 176);
  v8 = swift_allocObject();
  sub_2315B4648((v0 + 176), v8 + 16);
  v9 = sub_2316050E8();
  OUTLINED_FUNCTION_32(v9);
  v10 = sub_2316050D8();
  v11 = MEMORY[0x277D5B3F0];
  v7[3] = v9;
  v7[4] = v11;

  *v7 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v19, v2);

  v13 = *(v0 + 496);
  v12 = *(v0 + 504);
  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  v16 = *(v0 + 440);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2315BC300()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_2316051A8();
  sub_231605198();
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_2315BC368(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2315BC388, 0, 0);
}

uint64_t sub_2315BC388()
{
  OUTLINED_FUNCTION_8();
  sub_2315B4568(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_2315BC3E0()
{
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_templatesUrl;
  v2 = sub_231604FF8();
  OUTLINED_FUNCTION_5_1(v2);
  (*(v3 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_outputPublisher));
  v4 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport33SiriHelpResponseFramework2Invoker_siriAppBundleId + 8);

  return v0;
}

uint64_t sub_2315BC484(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2315BC508(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315BC540()
{
  result = sub_231604FF8();
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

uint64_t sub_2315BC5F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315BC6AC;

  return sub_2315BB46C();
}

uint64_t sub_2315BC6AC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
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

uint64_t sub_2315BC7EC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4740;

  return sub_2315BC368(v2, v0 + 16);
}

_OWORD *sub_2315BC87C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2315BC88C()
{
  result = qword_27DD601E0;
  if (!qword_27DD601E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD601E0);
  }

  return result;
}

unint64_t sub_2315BC8D0()
{
  result = qword_280FE85E0;
  if (!qword_280FE85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85E0);
  }

  return result;
}

uint64_t sub_2315BC924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315BC9B4(uint64_t a1)
{
  v2 = type metadata accessor for PatternExecution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BCA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = **(v1 - 240);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t NoOpFlow.execute(completion:)(void (*a1)(char *))
{
  v2 = sub_2316051F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v7 = sub_2316066E8();
  __swift_project_value_buffer(v7, qword_27DD603F8);
  v8 = sub_2316066C8();
  v9 = sub_231606978();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2315AF000, v8, v9, "This method should never be called.", v10, 2u);
    MEMORY[0x231933730](v10, -1, -1);
  }

  sub_2316051E8();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2315BCC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2315BCD10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2315BCD10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2315BCE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2315B66C8;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2315BCEE0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2315BCF7C()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2316061C8();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v7 = sub_231606158();
  v1[13] = v7;
  v8 = *(v7 - 8);
  v1[14] = v8;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315BD0D0, 0, 0);
}

uint64_t sub_2315BD0D0()
{
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v1 = sub_2316066E8();
  __swift_project_value_buffer(v1, qword_280FE9558);
  v2 = sub_2316066C8();
  v3 = sub_231606958();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2315AF000, v2, v3, "Submiting suggestion to event dispatcher", v4, 2u);
    MEMORY[0x231933730](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[8];

  sub_231605C48();
  v7 = sub_231605098();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_2315BE86C(v0[16]);
    v8 = sub_2316066C8();
    v9 = sub_231606978();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2315AF000, v8, v9, "No requestId set. Unable to dispatch suggestions", v10, 2u);
      MEMORY[0x231933730](v10, -1, -1);
    }

    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[12];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[16];
    v17 = v0[14];
    v37 = v0[15];
    v38 = v0[13];
    v19 = v0[11];
    v18 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v39 = v0[7];
    v36 = sub_231605068();
    v23 = v22;
    (*(*(v7 - 8) + 8))(v16, v7);
    sub_231605F38();
    sub_2316061A8();
    (*(v19 + 8))(v18, v20);
    MEMORY[0x231932CB0](v36, v23);

    sub_231606198();
    (*(v17 + 104))(v37, *MEMORY[0x277D60B90], v38);
    v24 = v21[5];
    v25 = v21[6];
    __swift_project_boxed_opaque_existential_1(v21 + 2, v24);
    v26 = type metadata accessor for PreFetchedSuggestionEvent();
    v0[5] = v26;
    v0[6] = sub_2315BE8D4(&qword_27DD60270, type metadata accessor for PreFetchedSuggestionEvent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v17 + 16))(boxed_opaque_existential_1, v37, v38);
    v28 = v21[11];
    __swift_project_boxed_opaque_existential_1(v21 + 7, v21[10]);
    sub_2316063E8();
    v30 = v29;
    v31 = *(v26 + 24);
    v32 = sub_231605E98();
    OUTLINED_FUNCTION_5_1(v32);
    (*(v33 + 16))(boxed_opaque_existential_1 + v31, v39);
    *(boxed_opaque_existential_1 + *(v26 + 20)) = v30;
    v34 = *(MEMORY[0x277D60C00] + 4);
    v35 = swift_task_alloc();
    v0[17] = v35;
    *v35 = v0;
    v35[1] = sub_2315BD550;

    return MEMORY[0x2821C6B50](v0 + 2, v24, v25);
  }
}

uint64_t sub_2315BD550()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2315BD650, 0, 0);
}

uint64_t sub_2315BD650()
{
  OUTLINED_FUNCTION_8();
  (*(v0[14] + 8))(v0[15], v0[13]);
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2315BD6DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2315BD71C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315BD7C4;

  return sub_2315BCF7C();
}

uint64_t sub_2315BD7C4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PreFetchedSuggestionEvent.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_231606158();
  v4 = OUTLINED_FUNCTION_5_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t type metadata accessor for PreFetchedSuggestionEvent()
{
  result = qword_280FE8CA8;
  if (!qword_280FE8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreFetchedSuggestionEvent.preFetchedSuggestions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreFetchedSuggestionEvent() + 24);
  v4 = sub_231605E98();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_2315BD9F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
  if (v4 || (sub_231606BD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xEA00000000005354;
    if (v6 || (sub_231606BD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000023160A570 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_231606BD8();

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

uint64_t sub_2315BDB60(unsigned __int8 a1)
{
  sub_231606C68();
  MEMORY[0x231933130](a1);
  return sub_231606C88();
}

uint64_t sub_2315BDBB4(char a1)
{
  if (!a1)
  {
    return 0x79726576696C6564;
  }

  if (a1 == 1)
  {
    return 0x6465766965636572;
  }

  return 0xD000000000000015;
}

uint64_t sub_2315BDC3C()
{
  v1 = *v0;
  sub_231606C68();
  MEMORY[0x231933130](v1);
  return sub_231606C88();
}

uint64_t sub_2315BDC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2315BD9F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2315BDCD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2315BDB20();
  *a1 = result;
  return result;
}

uint64_t sub_2315BDCF8(uint64_t a1)
{
  v2 = sub_2315BDF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2315BDD34(uint64_t a1)
{
  v2 = sub_2315BDF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreFetchedSuggestionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60210, &qword_231607B60);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11 - 3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2315BDF54();
  sub_231606CA8();
  v24 = 0;
  sub_231606158();
  OUTLINED_FUNCTION_2_1();
  sub_2315BE8D4(v14, v15);
  OUTLINED_FUNCTION_7_2(v3, &v24);
  if (!v2)
  {
    v16 = type metadata accessor for PreFetchedSuggestionEvent();
    v17 = *(v3 + *(v16 + 20));
    v23[1] = 1;
    sub_231606B88();
    v18 = *(v16 + 24);
    v23[0] = 2;
    sub_231605E98();
    OUTLINED_FUNCTION_1_1();
    sub_2315BE8D4(v19, v20);
    OUTLINED_FUNCTION_7_2(v3 + v18, v23);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2315BDF54()
{
  result = qword_27DD60218;
  if (!qword_27DD60218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60218);
  }

  return result;
}

uint64_t PreFetchedSuggestionEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_231605E98();
  v4 = OUTLINED_FUNCTION_1_0(v36);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v38 = sub_231606158();
  v11 = OUTLINED_FUNCTION_1_0(v38);
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60228, &qword_231607B68);
  v15 = OUTLINED_FUNCTION_1_0(v39);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = type metadata accessor for PreFetchedSuggestionEvent();
  v19 = OUTLINED_FUNCTION_5_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2315BDF54();
  sub_231606C98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_2_1();
  sub_2315BE8D4(v26, v27);
  sub_231606B78();
  (*(v37 + 32))();
  sub_231606B68();
  *(v24 + *(v18 + 20)) = v28;
  OUTLINED_FUNCTION_1_1();
  sub_2315BE8D4(v29, v30);
  sub_231606B78();
  v31 = OUTLINED_FUNCTION_3_1();
  v32(v31);
  (*(v34 + 32))(v24 + *(v18 + 24), v10, v36);
  sub_2315BE38C(v24, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2315BE3F0(v24);
}

uint64_t sub_2315BE38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreFetchedSuggestionEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315BE3F0(uint64_t a1)
{
  v2 = type metadata accessor for PreFetchedSuggestionEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BE560()
{
  result = sub_231606158();
  if (v1 <= 0x3F)
  {
    result = sub_231605E98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreFetchedSuggestionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreFetchedSuggestionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2315BE768()
{
  result = qword_27DD60250;
  if (!qword_27DD60250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60250);
  }

  return result;
}

unint64_t sub_2315BE7C0()
{
  result = qword_27DD60258;
  if (!qword_27DD60258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60258);
  }

  return result;
}

unint64_t sub_2315BE818()
{
  result = qword_27DD60260;
  if (!qword_27DD60260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60260);
  }

  return result;
}

uint64_t sub_2315BE86C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315BE8D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2315BE91C()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_231605E28();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_23_0();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_23_0();
  v8 = *(*(sub_231606128() - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_23_0();
  v9 = sub_231605C58();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_23_0();
  v12 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2315BEA74()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v2 + 32));
  v3 = *(MEMORY[0x277D60438] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v2 + 104) = v4;
  *v4 = v5;
  v4[1] = sub_2315BEB1C;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return MEMORY[0x2821C5C98](v6, v7, v0, v1);
}

uint64_t sub_2315BEB1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315BEC00()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  sub_231605DE8();
  sub_231605E18();
  sub_231605058();

  sub_231605C18();
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v5 = sub_2316066E8();
  v0[14] = __swift_project_value_buffer(v5, qword_280FE9558);
  v6 = sub_2316066C8();
  v7 = sub_231606958();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2315AF000, v6, v7, "dispatching to sirisuggestion dispatcher", v8, 2u);
    OUTLINED_FUNCTION_20();
  }

  v9 = v0[4];

  v10 = v9[11];
  __swift_project_boxed_opaque_existential_1(v9 + 7, v9[10]);
  v11 = *(MEMORY[0x277D60538] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_2315BEDAC;
  v13 = v0[12];
  v14 = OUTLINED_FUNCTION_10_0(v0[2]);

  return MEMORY[0x2821C5F58](v14);
}

uint64_t sub_2315BEDAC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 120);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    v7 = sub_2315BEF48;
  }

  else
  {
    v7 = sub_2315BEEB0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2315BEEB0()
{
  OUTLINED_FUNCTION_15();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315BEF48()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[14];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v6)
  {
    v28 = v0[16];
    v14 = swift_slowAlloc();
    v29 = v5;
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v14 = 136315394;
    v31 = v10;
    v32 = v8;
    v16 = sub_231605E18();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_2315B1574(v16, v18, &v33);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v28;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_2315AF000, v4, v29, "Unable to dispatch suggestions for event: %s: %@", v14, 0x16u);
    sub_2315C1500(v15);
    OUTLINED_FUNCTION_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();

    (*(v9 + 8))(v32, v31);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v22 = v0[12];
  v23 = v0[8];
  v24 = v0[9];
  v25 = v0[7];

  OUTLINED_FUNCTION_14();

  return v26();
}

uint64_t sub_2315BF1A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315BF288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_1(sub_2315BF2A8, 0);
}

uint64_t sub_2315BF2A8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v0 + 40));
  v1 = *(MEMORY[0x277D60448] + 4);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2315BF350;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = OUTLINED_FUNCTION_11_0();

  return MEMORY[0x2821C5CA8](v5);
}

uint64_t sub_2315BF350()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315BF44C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v0 + 16));
  v1 = *(MEMORY[0x277D60430] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_2(v3);

  return MEMORY[0x2821C5C90](v5);
}

uint64_t sub_2315BF4E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_0();

  return v6(v5);
}

uint64_t sub_2315BF5C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return sub_2315BE91C();
}

uint64_t sub_2315BF674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return sub_2315BF288(a1, a2, a3);
}

uint64_t sub_2315BF724()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315BF7B4;

  return sub_2315BF430();
}

uint64_t sub_2315BF7B4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_0();

  return v6(v5);
}

uint64_t DispatchSuggestionServiceFactory.create(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_1(sub_2315BF8B8, 0);
}

uint64_t sub_2315BF8B8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_2(*(v2 + 120));
  v3 = *(MEMORY[0x277D60460] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v2 + 128) = v4;
  *v4 = v5;
  v4[1] = sub_2315BF964;
  v6 = *(v2 + 104);
  v7 = *(v2 + 112);

  return MEMORY[0x2821C5CC8](v2 + 16, v6, v7, v0, v1);
}

uint64_t sub_2315BF964()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315BFA48()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 96);
  sub_2315B4568(*(v1 + 120) + 56, v1 + 56);
  type metadata accessor for DispatcherSuggestionService();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_9_0();
  v2[4] = sub_2315B4888(v4, v5);
  *v2 = v0;
  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t DispatchSuggestionServiceFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_2315BFB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return DispatchSuggestionServiceFactory.create(refreshableService:)(a1, a2, a3);
}

uint64_t sub_2315BFBF0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0(*(v0 + 24));
  OUTLINED_FUNCTION_12_0();
  v2 = *(*(*(v1 + 8) + 8) + 8);
  v3 = *(MEMORY[0x277D61010] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_2(v5);

  return MEMORY[0x2821C7148](v7);
}

uint64_t sub_2315BFC94()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2315BFD9C, v3, 0);
}

uint64_t sub_2315BFDD0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(*(v0 + 16));
  OUTLINED_FUNCTION_7_3();
  v1 = *(MEMORY[0x277D610B0] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_2(v3);

  return MEMORY[0x2821C72A0](v5);
}

uint64_t DispatchedServiceAPIProvider.getSystemEnvironmentService()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315BFE84, v1);
}

uint64_t sub_2315BFE84()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0(v0[4]);
  OUTLINED_FUNCTION_12_0();
  v2 = *(*(v1 + 16) + 8);
  v3 = *(MEMORY[0x277D60470] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_2315BFF34;
  v6 = v0[3];
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CE0]();
}

uint64_t sub_2315BFF34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t DispatchedServiceAPIProvider.__allocating_init(provider:dispatcher:)()
{
  OUTLINED_FUNCTION_20_0();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v3 + 120) = v1;
  sub_2315B4648(v0, v3 + 128);
  return v3;
}

uint64_t DispatchedServiceAPIProvider.init(provider:dispatcher:)()
{
  OUTLINED_FUNCTION_20_0();
  swift_defaultActor_initialize();
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;
  sub_2315B4648(v0, v1 + 128);
  return v1;
}

uint64_t DispatchedServiceAPIProvider.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315C00C4, v2);
}

uint64_t sub_2315C00C4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(v0[4]);
  OUTLINED_FUNCTION_7_3();
  v1 = *(MEMORY[0x277D610B8] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2315C0168;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_10_0(v0[2]);

  return MEMORY[0x2821C72A8](v4);
}

uint64_t sub_2315C0168()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_0();

  return v6(v5);
}

uint64_t DispatchedServiceAPIProvider.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1(sub_2315C026C, v2);
}

uint64_t sub_2315C026C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(v0[4]);
  OUTLINED_FUNCTION_7_3();
  v1 = *(MEMORY[0x277D61090] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2315BFF34;
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_10_0(v0[2]);

  return MEMORY[0x2821C7280](v4);
}

uint64_t DispatchedServiceAPIProvider.refresh(owner:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315C032C, v1);
}

uint64_t sub_2315C032C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(*(v1 + 24));
  v2 = *(v0 + 8);
  v3 = *(MEMORY[0x277D60428] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v5[1] = sub_2315C156C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5C88]();
}

uint64_t DispatchedServiceAPIProvider.destroy(owner:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(sub_2315C03EC, v1);
}

uint64_t sub_2315C03EC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(*(v0 + 24));
  OUTLINED_FUNCTION_7_3();
  v1 = *(MEMORY[0x277D610A8] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_16_0(v2);
  *v3 = v4;
  v3[1] = sub_2315C048C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C7298]();
}

uint64_t sub_2315C048C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315C0588()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_24_0(*(v0 + 24));
  OUTLINED_FUNCTION_12_0();
  v2 = *(*(*(v1 + 8) + 8) + 16);
  v3 = *(MEMORY[0x277D60A10] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_2(v5);

  return MEMORY[0x2821C67F0](v7);
}

uint64_t sub_2315C0648()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(*(v1 + 16));
  v2 = *(*(v0 + 8) + 16);
  v3 = *(MEMORY[0x277D607F0] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_2(v5);

  return MEMORY[0x2821C6518](v7);
}

uint64_t sub_2315C06E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315C07E4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_0(*(v0 + 16));
  OUTLINED_FUNCTION_7_3();
  v1 = *(MEMORY[0x277D610A0] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_2(v3);

  return MEMORY[0x2821C7290](v5);
}

uint64_t DispatchedServiceAPIProvider.deinit()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DispatchedServiceAPIProvider.__deallocating_deinit()
{
  DispatchedServiceAPIProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315C0A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.refresh(owner:)(a1);
}

uint64_t sub_2315C0BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.entities.getter();
}

uint64_t sub_2315C0C3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.addToLifeCycle(owner:localEntities:)(a1, a2);
}

uint64_t sub_2315C0CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(MEMORY[0x277D610C0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2315B4740;

  return MEMORY[0x2821C72B0](a1, a2, v11, a3, a5);
}

uint64_t sub_2315C0DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(MEMORY[0x277D610D0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2315B4740;

  return MEMORY[0x2821C72C0](a1, a2, a3, v11, a5);
}

uint64_t sub_2315C0EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(MEMORY[0x277D610C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return MEMORY[0x2821C72B8](a1, v7, a3);
}

uint64_t sub_2315C0F8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.getEntity<A>(entityType:)(a1, a2);
}

uint64_t sub_2315C1030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.destroy(owner:)(a1);
}

uint64_t sub_2315C10C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.getAllOwners()();
}

uint64_t sub_2315C1150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.refreshAsync()();
}

uint64_t sub_2315C1208(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.getSystemEnvironmentService()(a1);
}

uint64_t sub_2315C12A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315C1574;

  return DispatchedServiceAPIProvider.allEntities.getter();
}

uint64_t sub_2315C1334()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return DispatchedServiceAPIProvider.destroy()();
}

uint64_t sub_2315C142C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2315C148C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2315C1500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60278, &unk_231608238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315C15B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ExecutionDispatcher();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = sub_2315C169C();
  *a2 = v5;
}

uint64_t sub_2315C1638(uint64_t *a1, uint64_t a2)
{
  sub_2315C15B0(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_2315C169C()
{
  result = qword_27DD60280;
  if (!qword_27DD60280)
  {
    type metadata accessor for ExecutionDispatcher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60280);
  }

  return result;
}

uint64_t sub_2315C1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C1784()
{
  v45 = v0;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_2316066E8();
  __swift_project_value_buffer(v3, qword_280FE9630);

  v4 = sub_2316066C8();
  v5 = sub_231606968();

  v6 = os_log_type_enabled(v4, v5);
  v7 = &loc_231607000;
  v8 = MEMORY[0x277D84F70];
  if (v6)
  {
    v10 = v0[5];
    v9 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = v10;
    v8 = MEMORY[0x277D84F70];
    *(v13 + 4) = sub_2315B1574(v14, v9, &v44);
    *(v13 + 12) = 2080;
    v15 = v11;
    v7 = &loc_231607000;
    *(v13 + 14) = sub_2315B1574(v12, v15, &v44);
    _os_log_impl(&dword_2315AF000, v4, v5, "Retrieving property: %s for requestId: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v16 = v0[7];
  v17 = *(v16 + 144);
  if (!v17)
  {
    goto LABEL_11;
  }

  if (*(v16 + 136) == v0[3] && v17 == v0[4])
  {
    v20 = v0[7];
  }

  else
  {
    v19 = sub_231606BD8();
    v20 = v0[7];
    if ((v19 & 1) == 0)
    {
LABEL_11:
      v21 = v0[4];

      v22 = sub_2316066C8();
      v23 = sub_231606958();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v24 = v7[443];
        if (*(v16 + 144))
        {
          v8 = *(v16 + 136);
          v16 = *(v16 + 144);
        }

        else
        {
          OUTLINED_FUNCTION_11_1();
        }

        v36 = v0[3];
        v35 = v0[4];

        v37 = sub_2315B1574(v8, v16, &v44);

        *(v24 + 4) = v37;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2315B1574(v36, v35, &v44);
        OUTLINED_FUNCTION_12_1(&dword_2315AF000, v38, v39, "[warning] Current state store request id %s != %s. Properties not in state store ");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_20();
      }

      v40 = v0[2];
      v40[1] = 0u;
      v40[2] = 0u;
      *v40 = 0u;
      OUTLINED_FUNCTION_14();

      return v41();
    }
  }

  v25 = *(v20 + 112);
  v26 = *(v20 + 128);
  swift_getObjectType();
  v42 = (OUTLINED_FUNCTION_9_1() + 16);
  v43 = (*v42 + **v42);
  v27 = (*v42)[1];
  v28 = swift_task_alloc();
  v0[8] = v28;
  *v28 = v0;
  v28[1] = sub_2315C1BA0;
  v29 = v0[5];
  v30 = v0[6];
  v31 = v0[3];
  v32 = v0[4];
  v33 = v0[2];

  return v43(v33, v31, v32, v29, v30, v20, v26);
}

uint64_t sub_2315C1BA0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315C1C80()
{
  v27 = v0;
  v2 = v0[4];
  v3 = *(v2 + 144);
  if (v3 && ((v4 = *(v2 + 136), v4 == v0[2]) ? (v5 = v3 == v0[3]) : (v5 = 0), v5 || (v6 = *(v2 + 136), v7 = *(v2 + 144), (sub_231606BD8() & 1) != 0)))
  {
    OUTLINED_FUNCTION_14();
    v25 = v8;

    return v25(v4, v3);
  }

  else
  {
    if (qword_280FE9628 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v11 = v0[3];
    v10 = v0[4];
    v12 = sub_2316066E8();
    __swift_project_value_buffer(v12, qword_280FE9630);

    v13 = sub_2316066C8();
    v14 = sub_231606958();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v15 = 136315394;
      if (*(v2 + 144))
      {
        v1 = *(v2 + 136);
        v2 = *(v2 + 144);
      }

      else
      {
        OUTLINED_FUNCTION_11_1();
      }

      v17 = v0[2];
      v16 = v0[3];

      v18 = sub_2315B1574(v1, v2, &v26);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2315B1574(v17, v16, &v26);
      OUTLINED_FUNCTION_12_1(&dword_2315AF000, v19, v20, "Request ids (%s != %s dont match. Clearing store");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    v21 = swift_task_alloc();
    v0[5] = v21;
    *v21 = v0;
    v21[1] = sub_2315C1F08;
    v22 = v0[3];
    v23 = v0[4];
    v24 = v0[2];

    return sub_2315C2098(v24, v22);
  }
}

uint64_t sub_2315C1F08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_2315C2008, v3, 0);
}

uint64_t sub_2315C2008()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 144);
  *(v1 + 136) = v0[2];
  *(v1 + 144) = v2;

  v5 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_14();
  v8 = v6;

  return v8(v5, v4);
}

uint64_t sub_2315C2098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C20B0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  v2 = v1[18];
  v1[17] = 0;
  v1[18] = 0;

  v3 = v1[14];
  v4 = v1[16];
  swift_getObjectType();
  v5 = *(OUTLINED_FUNCTION_9_1() + 24);
  OUTLINED_FUNCTION_5();
  v13 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_7_4(v9);

  return v11(v10);
}

uint64_t sub_2315C21C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;

  return MEMORY[0x2822009F8](sub_2315C22CC, v3, 0);
}

uint64_t sub_2315C22CC()
{
  OUTLINED_FUNCTION_21();
  v2 = v1[5];
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  swift_getObjectType();
  v5 = *(OUTLINED_FUNCTION_9_1() + 16);
  OUTLINED_FUNCTION_5();
  v16 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v1[9] = v9;
  *v9 = v1;
  v9[1] = sub_2315C23F0;
  v10 = v1[8];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[2];
  v14 = v1[7];

  return v16(v14, v10, v13, v11, v12, v0, v3);
}

uint64_t sub_2315C23F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315C24EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C2504()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  v3 = *(v1 + 128);
  swift_getObjectType();
  v4 = *(OUTLINED_FUNCTION_9_1() + 32);
  OUTLINED_FUNCTION_5();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_7_4(v8);

  return v10(v9);
}

uint64_t sub_2315C260C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2315C26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_2315C2714()
{
  OUTLINED_FUNCTION_21();
  v2 = v1[6];
  v3 = *(v2 + 112);
  v4 = *(v2 + 128);
  swift_getObjectType();
  v5 = *(OUTLINED_FUNCTION_9_1() + 40);
  OUTLINED_FUNCTION_5();
  v15 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_2315BF1A8;
  v10 = v1[4];
  v11 = v1[5];
  v13 = v1[2];
  v12 = v1[3];

  return v15(v13, v12, v10, v11, v0, v4);
}

uint64_t sub_2315C2838()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2315C2868()
{
  sub_2315C2838();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2315C28E0()
{
  result = qword_280FE88D8[0];
  if (!qword_280FE88D8[0])
  {
    type metadata accessor for TurnProtectedHintsStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FE88D8);
  }

  return result;
}

uint64_t sub_2315C2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2315B4740;

  return sub_2315C1768(a1, a2, a3, a4, a5);
}

uint64_t sub_2315C29FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315B4740;

  return sub_2315C2098(a1, a2);
}

uint64_t sub_2315C2AA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2315C2B44;

  return sub_2315C24EC(a1, a2);
}

uint64_t sub_2315C2B44()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2315C2C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315B4740;

  return sub_2315C26F8(a1, a2, a3, a4);
}

uint64_t ExecutionDispatcher.__allocating_init(aceSink:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExecutionDispatcher.dispatch(suggestion:presentationContext:)()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_231605EF8();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_231606228();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315C2E48, 0, 0);
}

uint64_t sub_2315C2E48()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  type metadata accessor for InvocationContextHolder();
  sub_231605D68();
  sub_231605EC8();
  (*(v3 + 8))(v2, v4);
  sub_2315C336C();

  sub_231605DB8();
  if (v0[5])
  {
    v6 = v0[15];
    v7 = v0[9];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = sub_2316061D8();
    v0[16] = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v10 = *(v7 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
    v11 = swift_allocObject();
    v0[17] = v11;
    *(v11 + 16) = xmmword_231607860;
    *(v11 + 32) = v9;
    v0[7] = v11;
    v12 = *(MEMORY[0x277D606D8] + 4);
    v13 = v9;
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_2315C3108;

    return MEMORY[0x2821C61E8](v0 + 7);
  }

  else
  {
    sub_2315C3400((v0 + 2));
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v15 = sub_2316066E8();
    __swift_project_value_buffer(v15, qword_280FE9558);
    v16 = sub_2316066C8();
    v17 = sub_231606978();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2315AF000, v16, v17, "Could not get invocation command from suggestion", v18, 2u);
      MEMORY[0x231933730](v18, -1, -1);
    }

    v19 = OUTLINED_FUNCTION_1_2();
    v20(v19);

    OUTLINED_FUNCTION_14();

    return v21();
  }
}

uint64_t sub_2315C3108()
{
  OUTLINED_FUNCTION_8();
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2315C32B0;
  }

  else
  {
    v4 = sub_2315C3234;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2315C3234()
{
  OUTLINED_FUNCTION_8();

  v1 = OUTLINED_FUNCTION_1_2();
  v2(v1);

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315C32B0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_14();
  v6 = *(v0 + 152);

  return v5();
}

uint64_t sub_2315C336C()
{
  sub_231605328();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_231605168();
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_231606218();
}

uint64_t sub_2315C3400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60288, &qword_231609100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutionDispatcher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExecutionDispatcher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315C34C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315C3558;

  return ExecutionDispatcher.dispatch(suggestion:presentationContext:)();
}

uint64_t sub_2315C3558()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315C3644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D606B0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = sub_2315C37B8(&qword_27DD60290);
  *v8 = v3;
  v8[1] = sub_2315C37F8;

  return MEMORY[0x2821C61C0](a1, a2, a3, v9);
}

uint64_t sub_2315C37B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutionDispatcher();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.__allocating_init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_7_5();
  SiriHelpSuggestionsDispatcherFactory.init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(v15, v16, v17, v18, v19, a6, a7, a8, a9, a10, a11);
  return v14;
}

void *SiriHelpSuggestionsDispatcherFactory.init(logger:templateUrl:siriHelpDispatcherProvider:appUtils:suggestionsLogger:outputPublisher:patternFlowProvider:catGlobals:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v35 = a7;
  v37 = a5;
  v36 = a2;
  v40 = a11;
  v39 = a10;
  v38 = a9;
  v18 = sub_231604FF8();
  v19 = OUTLINED_FUNCTION_5_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  if (a3)
  {
    v25 = swift_allocObject();
    *(v25 + 2) = a3;
    *(v25 + 3) = a4;
    sub_2315C4108(v39);

    __swift_destroy_boxed_opaque_existential_1Tm(a8);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a6);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    (*(v21 + 8))(v36, v11);
    v26 = &unk_231608518;
  }

  else
  {
    sub_2315B4648(a8, v44);
    sub_2315B4648(a6, v43);
    sub_2315B4648(v35, v42);
    v27 = *(v21 + 32);
    v27(&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v11);
    sub_2315B4648(v37, v41);
    v28 = (*(v21 + 80) + 160) & ~*(v21 + 80);
    v29 = (v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_2315B4648(v44, (v25 + 16));
    *(v25 + 7) = v38;
    sub_2315B4648(v43, (v25 + 64));
    v30 = v40;
    *(v25 + 13) = v39;
    *(v25 + 14) = v30;
    sub_2315B4648(v42, (v25 + 120));
    v27(&v25[v28], v24, v11);
    sub_2315B4648(v41, &v25[v29]);
    v26 = &unk_2316084F8;
  }

  v31 = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v25;
  v12[3] = &unk_231608508;
  v12[4] = v32;
  return v12;
}

uint64_t sub_2315C3B60(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315B4660;

  return v9(a1, v5);
}

uint64_t sub_2315C3C64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v9 = *a2;
  v8[10] = v12;
  v8[11] = v9;
  return MEMORY[0x2822009F8](sub_2315C3CA0, 0, 0);
}

uint64_t sub_2315C3CA0()
{
  v1 = v0[10];
  v2 = v0[8];
  v19 = v0[9];
  v20 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v9 = type metadata accessor for SiriHelpDispatcher();
  v10 = OUTLINED_FUNCTION_7_5();
  sub_2315DE4AC(v10, v11, v12, v13, v14, v2, v20, v19, v1, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v0, v29);
  v16 = v15;
  v7[3] = v9;
  v7[4] = sub_2315C49B8();
  *v7 = v16;
  OUTLINED_FUNCTION_14();

  return v17();
}

uint64_t sub_2315C3D64(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v7 = *(sub_231604FF8() - 8);
  v8 = v2[7];
  v9 = v2[13];
  v10 = v2[14];
  v11 = v2 + ((*(v7 + 64) + ((*(v7 + 80) + 160) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2315B4740;

  return sub_2315C3C64(a1, a2, (v2 + 2), v8, (v2 + 8), v9, v10, (v2 + 15));
}

uint64_t sub_2315C3EB0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2315C06E8;

  return v8(a1, v3 + 16);
}

uint64_t sub_2315C3FB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t sub_2315C4064()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t sub_2315C4108(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_2315C4130()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60298, qword_231608528);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2316084E0;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2315C4260;
  v7 = v0[3];

  return v9(v2 + 32, v7);
}

uint64_t sub_2315C4260()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2315C434C, 0, 0);
}

uint64_t sub_2315C434C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v4 = sub_231605C08();
  v5 = MEMORY[0x277D60678];
  v1[12] = v4;
  v1[13] = v5;
  v1[9] = v3;

  sub_231605A28();

  OUTLINED_FUNCTION_14();

  return v6();
}

uint64_t sub_2315C4418()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
}

uint64_t SiriHelpSuggestionsDispatcherFactory.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SiriHelpSuggestionsDispatcherFactory.__deallocating_deinit()
{
  SiriHelpSuggestionsDispatcherFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2315C44C0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_231605A18();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315C4538(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2315B4740;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FlowSuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12(v7);
  *v8 = v9;
  v8[1] = sub_2315B4740;

  return v11(a1, a2);
}

uint64_t type metadata accessor for PatternExecution()
{
  result = qword_27DD602A0;
  if (!qword_27DD602A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2315C48B0()
{
  sub_231604FF8();
  if (v0 <= 0x3F)
  {
    sub_2315C4954();
    if (v1 <= 0x3F)
    {
      sub_231605668();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2315C4954()
{
  if (!qword_27DD602B0)
  {
    v0 = sub_231606748();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD602B0);
    }
  }
}

unint64_t sub_2315C49B8()
{
  result = qword_27DD602B8;
  if (!qword_27DD602B8)
  {
    type metadata accessor for SiriHelpDispatcher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD602B8);
  }

  return result;
}

uint64_t sub_2315C4A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60360, &qword_231608808);
  v57 = *(v59 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v5 = &v49 - v4;
  v60 = sub_231605308();
  v58 = *(v60 - 1);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60368, &qword_231608810);
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v49 - v10;
  v55 = sub_231605348();
  v53 = *(v55 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231605318();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v49 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v51 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  v23 = *(v15 + 16);
  v56 = a1;
  v23(&v49 - v21, a1, v14);
  v24 = (*(v15 + 88))(v22, v14);
  if (v24 == *MEMORY[0x277D5C150])
  {
    (*(v15 + 96))(v22, v14);
    v25 = v58;
    v26 = v60;
    (*(v58 + 32))(v8, v22, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);
    sub_2316054B8();
    v27 = v59;
    v28 = sub_2316054C8();
    (*(v57 + 8))(v5, v27);
    v28(v8);
    (*(v25 + 8))(v8, v26);
  }

  if (v24 == *MEMORY[0x277D5C160])
  {
    (*(v15 + 96))(v22, v14);
    v29 = v53;
    v30 = v50;
    v31 = v55;
    (*(v53 + 32))(v50, v22, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);
    sub_2316054B8();
    v32 = v54;
    v33 = sub_2316054C8();
    (*(v52 + 8))(v11, v32);
    v33(v30);
    (*(v29 + 8))(v30, v31);
  }

  if (qword_280FE9628 != -1)
  {
    swift_once();
  }

  v35 = sub_2316066E8();
  __swift_project_value_buffer(v35, qword_280FE9630);
  v36 = v51;
  v23(v51, v56, v14);
  v37 = sub_2316066C8();
  v38 = sub_231606958();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v39 = 136315138;
    LODWORD(v59) = v38;
    v23(v49, v36, v14);
    v40 = sub_2316067A8();
    v41 = v36;
    v43 = v42;
    v44 = *(v15 + 8);
    v44(v41, v14);
    v45 = sub_2315B1574(v40, v43, &v62);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_2315AF000, v37, v59, "Directly unsupported parse result: %s", v39, 0xCu);
    v46 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x231933730](v46, -1, -1);
    MEMORY[0x231933730](v39, -1, -1);
  }

  else
  {

    v44 = *(v15 + 8);
    v44(v36, v14);
  }

  v47 = v61;
  v48 = type metadata accessor for IntentProperties();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
  return (v44)(v22, v14);
}

uint64_t sub_2315C517C(void (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C0, &qword_231608650);

  return sub_2316054B8();
}

uint64_t sub_2315C51F4@<X0>(uint64_t a1@<X8>)
{
  v251 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v243 = &v230 - v3;
  v237 = sub_231605468();
  v240 = *(v237 - 8);
  v4 = *(v240 + 64);
  MEMORY[0x28223BE20](v237);
  v234 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60328, &qword_2316087C8);
  v6 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v238 = &v230 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60330, &qword_2316087D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v235 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v239 = &v230 - v13;
  MEMORY[0x28223BE20](v12);
  v241 = &v230 - v14;
  v249 = sub_231606128();
  v248 = *(v249 - 8);
  v15 = *(v248 + 64);
  v16 = MEMORY[0x28223BE20](v249);
  v242 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v247 = &v230 - v18;
  v269 = sub_2316066A8();
  v271 = *(v269 - 8);
  v19 = *(v271 + 64);
  v20 = MEMORY[0x28223BE20](v269);
  v261 = &v230 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v260 = &v230 - v23;
  MEMORY[0x28223BE20](v22);
  v264 = &v230 - v24;
  v266 = sub_231605408();
  v270 = *(v266 - 8);
  v25 = *(v270 + 64);
  v26 = MEMORY[0x28223BE20](v266);
  v245 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v259 = &v230 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v262 = &v230 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v263 = &v230 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v257 = &v230 - v35;
  MEMORY[0x28223BE20](v34);
  v273 = &v230 - v36;
  v267 = sub_2316053C8();
  v268 = *(v267 - 8);
  v37 = v268[8];
  MEMORY[0x28223BE20](v267);
  v39 = &v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_231605368();
  v255 = *(v253 - 8);
  v40 = *(v255 + 64);
  v41 = MEMORY[0x28223BE20](v253);
  v272 = &v230 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v230 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60338, &qword_2316087D8);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v230 - v47;
  v49 = sub_2316053A8();
  v252 = *(v49 - 8);
  v50 = *(v252 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v230 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_231605388();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v230 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605338();
  v58 = sub_231605378();
  (*(v54 + 8))(v57, v53);
  sub_2315DE8C8(v58, v48);

  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_2315B2F7C(v48, &qword_27DD60338, &qword_2316087D8);
    if (qword_27DD60100 != -1)
    {
      goto LABEL_116;
    }

    goto LABEL_3;
  }

  v65 = *(v252 + 32);
  v233 = v49;
  v65(v52, v48, v49);
  v246 = v52;
  sub_231605398();
  sub_2316053B8();
  (v268[1])(v39, v267);
  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v231 = sub_2316066E8();
  v66 = __swift_project_value_buffer(v231, qword_27DD603F8);
  v67 = v255;
  v68 = *(v255 + 16);
  v69 = v272;
  v250 = v44;
  v70 = v253;
  v68(v272, v44, v253);
  v244 = v66;
  v71 = sub_2316066C8();
  v72 = sub_231606968();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v266;
  if (v73)
  {
    v75 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    v276[0] = v268;
    *v75 = 136315138;
    sub_231605358();
    v267 = MEMORY[0x231932D20]();
    v77 = v76;

    v232 = *(v67 + 8);
    v232(v69, v70);
    v78 = sub_2315B1574(v267, v77, v276);

    *(v75 + 4) = v78;
    _os_log_impl(&dword_2315AF000, v71, v72, "Got identifiers: %s", v75, 0xCu);
    v79 = v268;
    __swift_destroy_boxed_opaque_existential_1Tm(v268);
    MEMORY[0x231933730](v79, -1, -1);
    MEMORY[0x231933730](v75, -1, -1);
  }

  else
  {

    v232 = *(v67 + 8);
    v232(v69, v70);
  }

  v80 = 0xEC000000736E6F69;
  v81 = 0x746163696C707041;
  v82 = sub_231605358();
  v83 = 0;
  v267 = *(v82 + 16);
  v272 = (v270 + 16);
  v268 = (v271 + 8);
  v271 = v270 + 8;
  v254 = (v270 + 32);
  v258 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v267 == v83)
    {

      v106 = *(v258 + 16);
      if (v106)
      {
        v276[0] = MEMORY[0x277D84F90];
        v107 = v258;
        sub_2316040B8(0, v106, 0);
        v108 = v276[0];
        v109 = v107 + ((*(v270 + 80) + 32) & ~*(v270 + 80));
        v273 = *(v270 + 72);
        v110 = *(v270 + 16);
        do
        {
          v111 = v263;
          v112 = v266;
          v110(v263, v109, v266);
          v113 = sub_2316053E8();
          v115 = v114;
          (*v271)(v111, v112);
          v276[0] = v108;
          v117 = *(v108 + 16);
          v116 = *(v108 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_2316040B8(v116 > 1, v117 + 1, 1);
            v108 = v276[0];
          }

          *(v108 + 16) = v117 + 1;
          v118 = v108 + 16 * v117;
          *(v118 + 32) = v113;
          *(v118 + 40) = v115;
          v109 += v273;
          --v106;
        }

        while (v106);

        v119 = v256;
        v74 = v266;
      }

      else
      {

        v108 = MEMORY[0x277D84F90];
        v119 = v256;
      }

      v120 = v262;
      if (*(v108 + 16))
      {
        v121 = v108;
      }

      else
      {
        v122 = sub_231605358();
        v123 = 0;
        v264 = MEMORY[0x277D84F90];
        v273 = *(v122 + 16);
        v267 = v122;
        while (v273 != v123)
        {
          if (v123 >= *(v122 + 16))
          {
            goto LABEL_115;
          }

          v265 = (*(v270 + 80) + 32) & ~*(v270 + 80);
          v124 = *(v270 + 72);
          (*(v270 + 16))(v120, v122 + v265 + v124 * v123, v74);
          v125 = v260;
          sub_2316053F8();
          v126 = v261;
          sub_231606678();
          v127 = sub_231606688();
          v128 = *v268;
          v129 = v126;
          v130 = v269;
          (*v268)(v129, v269);
          v131 = v130;
          v120 = v262;
          v128(v125, v131);
          if (v127 & 1) != 0 && (v276[0] = sub_2316053E8(), v276[1] = v132, *&v274 = 46, *(&v274 + 1) = 0xE100000000000000, sub_2315BC8D0(), v133 = sub_2316069D8(), , (v133))
          {
            v134 = v74;
            v135 = *v254;
            (*v254)(v245, v120, v134);
            v136 = v264;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v277 = v136;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2316040D8(0, *(v136 + 2) + 1, 1);
              v136 = v277;
            }

            v139 = *(v136 + 2);
            v138 = *(v136 + 3);
            if (v139 >= v138 >> 1)
            {
              sub_2316040D8(v138 > 1, v139 + 1, 1);
              v136 = v277;
            }

            ++v123;
            *(v136 + 2) = v139 + 1;
            v264 = v136;
            v140 = &v136[v265 + v139 * v124];
            v141 = v266;
            v135(v140, v245, v266);
            v74 = v141;
            v120 = v262;
          }

          else
          {
            (*v271)(v120, v74);
            ++v123;
          }

          v122 = v267;
        }

        v142 = *(v264 + 2);
        if (v142)
        {
          v143 = &v264[(*(v270 + 80) + 32) & ~*(v270 + 80)];
          v273 = *(v270 + 72);
          v144 = *(v270 + 16);
          v121 = MEMORY[0x277D84F90];
          do
          {
            v145 = v259;
            v144(v259, v143, v74);
            v146 = sub_2316053E8();
            v148 = v147;
            (*v271)(v145, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = *(v121 + 2);
              sub_2315DA398();
              v121 = v153;
            }

            v149 = *(v121 + 2);
            v150 = v121;
            if (v149 >= *(v121 + 3) >> 1)
            {
              sub_2315DA398();
              v150 = v154;
            }

            *(v150 + 2) = v149 + 1;
            v121 = v150;
            v151 = &v150[16 * v149];
            *(v151 + 4) = v146;
            *(v151 + 5) = v148;
            v143 += v273;
            --v142;
            v74 = v266;
          }

          while (v142);
        }

        else
        {

          v121 = MEMORY[0x277D84F90];
        }

        v119 = v256;
      }

      v155 = sub_2316066C8();
      v156 = sub_231606968();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v276[0] = v158;
        *v157 = 136315138;

        v160 = MEMORY[0x231932D20](v159, MEMORY[0x277D837D0]);
        v161 = v121;
        v163 = v162;

        v164 = sub_2315B1574(v160, v163, v276);
        v121 = v161;

        *(v157 + 4) = v164;
        _os_log_impl(&dword_2315AF000, v155, v156, "Found mentioned app ids: %s", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        MEMORY[0x231933730](v158, -1, -1);
        MEMORY[0x231933730](v157, -1, -1);
      }

      v165 = v246;
      v166 = sub_231605418();
      if (v119)
      {
        if (qword_280FE9628 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v231, qword_280FE9630);
        v167 = v119;
        v168 = sub_2316066C8();
        v169 = sub_231606978();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v276[0] = v171;
          *v170 = 136315138;
          *&v274 = v119;
          v172 = v119;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
          v173 = sub_2316067A8();
          v175 = sub_2315B1574(v173, v174, v276);

          *(v170 + 4) = v175;
          _os_log_impl(&dword_2315AF000, v168, v169, "Could not convert user dialog act to tasks: %s. Cant be a direct flow request", v170, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v171);
          MEMORY[0x231933730](v171, -1, -1);
          MEMORY[0x231933730](v170, -1, -1);

          v232(v250, v253);
          (*(v252 + 8))(v246, v233);
        }

        else
        {

          v232(v250, v253);
          (*(v252 + 8))(v165, v233);
        }

        v188 = type metadata accessor for IntentProperties();
        __swift_storeEnumTagSinglePayload(v251, 1, 1, v188);
      }

      v176 = v166;
      v177 = *(v248 + 104);
      v177(v247, *MEMORY[0x277D60AD8], v249);
      v178 = sub_2315E9470(v176);
      v179 = v178;
      if (!v178)
      {
        v189 = v250;
        goto LABEL_102;
      }

      v273 = v178;
      sub_2315E722C(0, (v176 & 0xC000000000000001) == 0, v176);
      v180 = v121;
      if ((v176 & 0xC000000000000001) != 0)
      {
        MEMORY[0x231932F00](0, v176);
      }

      else
      {
        v181 = *(v176 + 32);
      }

      v182 = sub_231605488();
      v184 = v183;
      sub_231605538();
      if (v182 == sub_231605528() && v184 == v185)
      {
      }

      else
      {
        v187 = sub_231606BD8();

        if ((v187 & 1) == 0)
        {
LABEL_85:

          sub_231605438();

          if (v276[3])
          {
            sub_231605478();
            v192 = swift_dynamicCast();
            v189 = v250;
            v121 = v180;
            if (v192)
            {
              v272 = v180;

              sub_231605448();

              v256 = 0;
              if (v276[0] && (v193 = sub_231605428(), , v193))
              {
                v194 = v241;
                sub_231605458();

                v195 = v237;
              }

              else
              {
                v194 = v241;
                v195 = v237;
                __swift_storeEnumTagSinglePayload(v241, 1, 1, v237);
              }

              v196 = v239;
              v197 = v236;
              (*(v240 + 104))(v239, *MEMORY[0x277D5EA40], v195);
              __swift_storeEnumTagSinglePayload(v196, 0, 1, v195);
              v198 = *(v197 + 48);
              v199 = v194;
              v200 = v238;
              sub_2315C9580(v199, v238, &qword_27DD60330, &qword_2316087D0);
              sub_2315C9580(v196, v200 + v198, &qword_27DD60330, &qword_2316087D0);
              if (__swift_getEnumTagSinglePayload(v200, 1, v195) == 1)
              {

                sub_2315B2F7C(v196, &qword_27DD60330, &qword_2316087D0);
                sub_2315B2F7C(v241, &qword_27DD60330, &qword_2316087D0);
                if (__swift_getEnumTagSinglePayload(v200 + v198, 1, v195) == 1)
                {
                  sub_2315B2F7C(v200, &qword_27DD60330, &qword_2316087D0);
LABEL_100:
                  v119 = v256;
                  v121 = v272;
                  v189 = v250;
                  goto LABEL_101;
                }
              }

              else
              {
                v201 = v235;
                sub_2315C9580(v200, v235, &qword_27DD60330, &qword_2316087D0);
                if (__swift_getEnumTagSinglePayload(v200 + v198, 1, v195) != 1)
                {
                  v202 = v240;
                  v203 = v200 + v198;
                  v204 = v234;
                  (*(v240 + 32))(v234, v203, v195);
                  sub_2315C95E4(&qword_27DD60358, MEMORY[0x277D5EA60]);
                  sub_231606778();

                  v205 = *(v202 + 8);
                  v205(v204, v195);
                  sub_2315B2F7C(v239, &qword_27DD60330, &qword_2316087D0);
                  sub_2315B2F7C(v241, &qword_27DD60330, &qword_2316087D0);
                  v205(v235, v195);
                  sub_2315B2F7C(v200, &qword_27DD60330, &qword_2316087D0);
                  goto LABEL_100;
                }

                sub_2315B2F7C(v239, &qword_27DD60330, &qword_2316087D0);
                sub_2315B2F7C(v241, &qword_27DD60330, &qword_2316087D0);
                (*(v240 + 8))(v201, v195);
              }

              sub_2315B2F7C(v200, &qword_27DD60328, &qword_2316087C8);
              goto LABEL_100;
            }
          }

          else
          {

            sub_2315B2F7C(v276, &unk_27DD605F0, qword_231609310);
            v189 = v250;
            v121 = v180;
          }

LABEL_101:
          v179 = v273;
LABEL_102:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60348, &unk_2316087F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_231608640;
          strcpy((inited + 32), "mentionedAppId");
          *(inited + 47) = -18;
          *(inited + 48) = v121;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
          v207 = sub_231606728();
          if (v179)
          {
            sub_2315E722C(0, (v176 & 0xC000000000000001) == 0, v176);
            if ((v176 & 0xC000000000000001) != 0)
            {
              MEMORY[0x231932F00](0, v176);
            }

            else
            {
              v208 = *(v176 + 32);
            }

            v209 = sub_231605488();
            v211 = v210;

            sub_231605548();
            if (v275)
            {
              sub_2315B4648(&v274, v276);
              v273 = sub_2315CD864(v207);

              v272 = v121;
              v212 = v251;
              sub_2315B4568(v276, (v251 + 3));
              v213 = type metadata accessor for IntentProperties();
              v256 = v119;
              v214 = *(v213 + 28);
              v215 = v248;
              v216 = *(v248 + 16);
              v271 = v209;
              v217 = v247;
              v270 = v211;
              v218 = v249;
              v216(v242, v247, v249);
              v219 = sub_231605098();
              __swift_storeEnumTagSinglePayload(v243, 1, 1, v219);
              sub_231605C18();
              __swift_destroy_boxed_opaque_existential_1Tm(v276);
              (*(v215 + 8))(v217, v218);
              v232(v250, v253);
              (*(v252 + 8))(v246, v233);
              v220 = sub_231605C58();
              __swift_storeEnumTagSinglePayload(v212 + v214, 0, 1, v220);
              v221 = *(v213 + 32);
              v222 = sub_231605E98();
              __swift_storeEnumTagSinglePayload(v212 + v221, 1, 1, v222);
              v223 = v270;
              v224 = v271;
              *v212 = v273;
              v212[1] = v224;
              v212[2] = v223;
              __swift_storeEnumTagSinglePayload(v212, 0, 1, v213);
            }

            sub_2315B2F7C(&v274, &qword_27DD60350, &qword_231608800);
            v225 = sub_2316066C8();
            v226 = sub_231606958();
            if (os_log_type_enabled(v225, v226))
            {
              v227 = swift_slowAlloc();
              *v227 = 0;
              v228 = "This is not a verb SiriSuggestions directly supports";
              goto LABEL_111;
            }
          }

          else
          {

            v225 = sub_2316066C8();
            v226 = sub_231606958();
            if (os_log_type_enabled(v225, v226))
            {
              v227 = swift_slowAlloc();
              *v227 = 0;
              v228 = "No verb attached to parse. Cant be a direct flow request";
LABEL_111:
              _os_log_impl(&dword_2315AF000, v225, v226, v228, v227, 2u);
              MEMORY[0x231933730](v227, -1, -1);
            }
          }

          (*(v248 + 8))(v247, v249);
          v232(v189, v253);
          (*(v252 + 8))(v246, v233);
          v229 = type metadata accessor for IntentProperties();
          __swift_storeEnumTagSinglePayload(v251, 1, 1, v229);
        }
      }

      v190 = v247;
      v191 = v249;
      (*(v248 + 8))(v247, v249);
      v177(v190, *MEMORY[0x277D60AE0], v191);
      goto LABEL_85;
    }

    if (v83 >= *(v82 + 16))
    {
      break;
    }

    v265 = (*(v270 + 80) + 32) & ~*(v270 + 80);
    v84 = *(v270 + 72);
    (*(v270 + 16))(v273, v82 + v265 + v84 * v83, v74);
    if (sub_2316053D8() == v81 && v85 == v80)
    {

LABEL_21:
      v88 = v82;
      v89 = v74;
      v90 = v81;
      v91 = v80;
      v92 = v264;
      sub_2316053F8();
      v93 = sub_231606698();
      v95 = v94;
      (*v268)(v92, v269);
      if (v93 == 0x64695F6D657469 && v95 == 0xE700000000000000)
      {

        v80 = v91;
        v81 = v90;
        v74 = v89;
        v82 = v88;
      }

      else
      {
        v97 = sub_231606BD8();

        v80 = v91;
        v81 = v90;
        v74 = v89;
        v82 = v88;
        if ((v97 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v98 = *v254;
      (*v254)(v257, v273, v74);
      v99 = v258;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v276[0] = v99;
      if ((v100 & 1) == 0)
      {
        sub_2316040D8(0, *(v99 + 16) + 1, 1);
        v99 = v276[0];
      }

      v101 = v265;
      v103 = *(v99 + 16);
      v102 = *(v99 + 24);
      v104 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        v265 = v103 + 1;
        sub_2316040D8(v102 > 1, v103 + 1, 1);
        v104 = v265;
        v99 = v276[0];
      }

      ++v83;
      *(v99 + 16) = v104;
      v258 = v99;
      v105 = v99 + v101 + v103 * v84;
      v74 = v266;
      v98(v105, v257, v266);
    }

    else
    {
      v87 = sub_231606BD8();

      if (v87)
      {
        goto LABEL_21;
      }

LABEL_26:
      (*v271)(v273, v74);
      ++v83;
    }
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  swift_once();
LABEL_3:
  v59 = sub_2316066E8();
  __swift_project_value_buffer(v59, qword_27DD603F8);
  v60 = sub_2316066C8();
  v61 = sub_231606958();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2315AF000, v60, v61, "No user dialog acts attached to parse. Cant be a direct flow request", v62, 2u);
    MEMORY[0x231933730](v62, -1, -1);
  }

  v63 = type metadata accessor for IntentProperties();
  return __swift_storeEnumTagSinglePayload(v251, 1, 1, v63);
}

uint64_t IntentProperties.init(intentProps:verb:owner:presentationContext:preComputedSuggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  sub_2315B4648(a4, (a7 + 3));
  v10 = type metadata accessor for IntentProperties();
  sub_2315C7354(a5, a7 + *(v10 + 28), &qword_27DD602C8, &qword_231608658);
  return sub_2315C7354(a6, a7 + *(v10 + 32), &qword_27DD602D0, &unk_231608660);
}

uint64_t type metadata accessor for IntentProperties()
{
  result = qword_27DD602F0;
  if (!qword_27DD602F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315C7354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2315C73A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v184 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v170 = &v162[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60370, &qword_231608818);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v173 = &v162[-v10];
  v174 = sub_231606128();
  v172 = *(v174 - 8);
  v11 = *(v172 + 64);
  v12 = MEMORY[0x28223BE20](v174);
  v169 = &v162[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v171 = &v162[-v14];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
  v15 = *(*(v176 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v176);
  v179 = &v162[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v175 = &v162[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v180 = &v162[-v21];
  MEMORY[0x28223BE20](v20);
  v181 = &v162[-v22];
  v23 = sub_231605308();
  v183 = *(v23 - 8);
  v24 = *(v183 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v162[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v177 = &v162[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v178 = &v162[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v182 = &v162[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v162[-v36];
  MEMORY[0x28223BE20](v35);
  v191 = &v162[-v38];
  if (sub_2316052E8() == 0xD00000000000002FLL && 0x800000023160A920 == v39)
  {
  }

  else
  {
    v41 = sub_231606BD8();

    if ((v41 & 1) == 0)
    {
      if (qword_27DD60100 != -1)
      {
        swift_once();
      }

      v42 = sub_2316066E8();
      __swift_project_value_buffer(v42, qword_27DD603F8);
      v43 = sub_2316066C8();
      v44 = sub_231606958();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2315AF000, v43, v44, "direct invocation is not of a known id", v45, 2u);
        MEMORY[0x231933730](v45, -1, -1);
      }

LABEL_36:
      v82 = type metadata accessor for IntentProperties();
      v83 = v184;
LABEL_37:
      v84 = 1;
      return __swift_storeEnumTagSinglePayload(v83, v84, 1, v82);
    }
  }

  v46 = sub_2316052F8();
  if (!v46)
  {
    v188 = 0u;
    v189 = 0u;
    goto LABEL_19;
  }

  sub_2315DCB58(0xD000000000000013, 0x800000023160A0B0, v46, &v188);

  if (!*(&v189 + 1))
  {
LABEL_19:
    sub_2315B2F7C(&v188, &unk_27DD605F0, qword_231609310);
LABEL_20:
    v53 = sub_231605C58();
    __swift_storeEnumTagSinglePayload(v191, 1, 1, v53);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v168 = sub_231605008();
  v48 = v47;

  if (v48 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v49 = sub_231604F38();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_231604F28();
  v52 = sub_231605C58();
  sub_2315C95E4(&qword_27DD60388, MEMORY[0x277D60680]);
  sub_231604F18();
  if (v2)
  {

    sub_2315C95D0(v168, v48);
    __swift_storeEnumTagSinglePayload(v191, 1, 1, v52);
    v3 = 0;
  }

  else
  {

    sub_2315C95D0(v168, v48);
    __swift_storeEnumTagSinglePayload(v191, 0, 1, v52);
  }

LABEL_21:
  v54 = sub_2316052F8();
  if (!v54)
  {
    v188 = 0u;
    v189 = 0u;
    goto LABEL_30;
  }

  sub_2315DCB58(0x6E6F69746361, 0xE600000000000000, v54, &v188);

  if (!*(&v189 + 1))
  {
LABEL_30:
    sub_2315B2F7C(&v188, &unk_27DD605F0, qword_231609310);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_27DD60100 != -1)
    {
      swift_once();
    }

    v78 = sub_2316066E8();
    __swift_project_value_buffer(v78, qword_27DD603F8);
    v79 = sub_2316066C8();
    v80 = sub_231606958();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2315AF000, v79, v80, "direct invocation is not set with an action field", v81, 2u);
      MEMORY[0x231933730](v81, -1, -1);
    }

    sub_2315B2F7C(v191, &qword_27DD602C8, &qword_231608658);
    goto LABEL_36;
  }

  v168 = v3;
  v55 = v185;

  v56 = sub_231606B48();

  if (v56 <= 3)
  {
    v167 = v56;

    if (qword_27DD60100 != -1)
    {
      swift_once();
    }

    v57 = sub_2316066E8();
    v58 = __swift_project_value_buffer(v57, qword_27DD603F8);
    sub_2315C9580(v191, v37, &qword_27DD602C8, &qword_231608658);
    v59 = v183;
    (*(v183 + 16))(v26, a1, v23);
    v166 = v58;
    v60 = sub_2316066C8();
    v61 = sub_231606968();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *&v188 = v165;
      *v62 = 136315650;
      v164 = v60;
      v163 = v61;
      sub_2315C9580(v37, v182, &qword_27DD602C8, &qword_231608658);
      v63 = sub_2316067A8();
      v65 = v64;
      sub_2315B2F7C(v37, &qword_27DD602C8, &qword_231608658);
      v66 = sub_2315B1574(v63, v65, &v188);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = v167;
      LOBYTE(v185) = v167;
      v68 = sub_2316067A8();
      v70 = sub_2315B1574(v68, v69, &v188);

      *(v62 + 14) = v70;
      *(v62 + 22) = 2080;
      *&v185 = sub_2316052F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60380, &unk_231608820);
      v71 = sub_2316067A8();
      v73 = v72;
      (*(v183 + 8))(v26, v23);
      v74 = sub_2315B1574(v71, v73, &v188);

      *(v62 + 24) = v74;
      v75 = v164;
      _os_log_impl(&dword_2315AF000, v164, v163, "Got direct invocation properties: presentationContext: %s, action: %s, userData: %s", v62, 0x20u);
      v76 = v165;
      swift_arrayDestroy();
      MEMORY[0x231933730](v76, -1, -1);
      MEMORY[0x231933730](v62, -1, -1);

      v77 = v168;
    }

    else
    {

      (*(v59 + 8))(v26, v23);
      sub_2315B2F7C(v37, &qword_27DD602C8, &qword_231608658);
      v77 = v168;
      v67 = v167;
    }

    if (v67 != 1)
    {
      if (v67 != 2)
      {
        v120 = sub_2316066C8();
        v121 = sub_231606958();
        v122 = os_log_type_enabled(v120, v121);
        v123 = v184;
        if (v122)
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&v188 = v125;
          *v124 = 136315138;
          v126 = 0xEC000000706C6548;
          v127 = 0x69726953776F6873;
          switch(v167)
          {
            case 1:
              break;
            case 2:
              v126 = 0x800000023160A050;
              v127 = 0xD000000000000013;
              break;
            case 3:
              v126 = 0x800000023160A070;
              v127 = 0xD00000000000001ALL;
              break;
            default:
              v126 = 0x800000023160A030;
              v127 = 0xD000000000000011;
              break;
          }

          v161 = sub_2315B1574(v127, v126, &v188);

          *(v124 + 4) = v161;
          _os_log_impl(&dword_2315AF000, v120, v121, "Unknown direct invocation action: %s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v125);
          MEMORY[0x231933730](v125, -1, -1);
          MEMORY[0x231933730](v124, -1, -1);
        }

        sub_2315B2F7C(v191, &qword_27DD602C8, &qword_231608658);
        v82 = type metadata accessor for IntentProperties();
        v83 = v123;
        goto LABEL_37;
      }

      v92 = sub_2316052F8();
      v93 = v184;
      if (v92)
      {
        sub_2315DCB58(0xD000000000000016, 0x800000023160A0D0, v92, &v188);

        v94 = v180;
        v95 = v181;
        if (*(&v189 + 1))
        {
          if (swift_dynamicCast())
          {
            v96 = sub_231605008();
            v98 = v97;

            if (v98 >> 60 != 15)
            {
              v99 = sub_231604F38();
              v100 = *(v99 + 48);
              v101 = *(v99 + 52);
              swift_allocObject();
              sub_231604F28();
              v102 = sub_231605E98();
              sub_2315C95E4(&qword_27DD60238, MEMORY[0x277D60708]);
              sub_231604F18();
              if (v77)
              {

                sub_2315C95D0(v96, v98);
                __swift_storeEnumTagSinglePayload(v95, 1, 1, v102);
              }

              else
              {

                sub_2315C95D0(v96, v98);
                __swift_storeEnumTagSinglePayload(v95, 0, 1, v102);
              }

              v94 = v180;
              goto LABEL_69;
            }
          }

LABEL_68:
          v128 = sub_231605E98();
          __swift_storeEnumTagSinglePayload(v95, 1, 1, v128);
LABEL_69:
          sub_2315C9580(v95, v94, &qword_27DD602D0, &unk_231608660);
          v129 = sub_2316066C8();
          v130 = sub_231606968();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *&v188 = v132;
            *v131 = 136315138;
            sub_2315C9580(v94, v175, &qword_27DD602D0, &unk_231608660);
            v133 = sub_2316067A8();
            v135 = v134;
            sub_2315B2F7C(v94, &qword_27DD602D0, &unk_231608660);
            v136 = v181;
            v93 = v184;
            v137 = sub_2315B1574(v133, v135, &v188);

            *(v131 + 4) = v137;
            _os_log_impl(&dword_2315AF000, v129, v130, "Got direct invocation properties: preComputedSuggestions: %s", v131, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v132);
            v138 = v132;
            v95 = v136;
            MEMORY[0x231933730](v138, -1, -1);
            MEMORY[0x231933730](v131, -1, -1);
          }

          else
          {

            sub_2315B2F7C(v94, &qword_27DD602D0, &unk_231608660);
          }

          v139 = v179;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
          v140 = sub_231606728();
          sub_231605538();
          v141 = sub_231605528();
          v143 = v142;
          sub_2315C9580(v95, v139, &qword_27DD602D0, &unk_231608660);
          v144 = sub_231605E98();
          if (__swift_getEnumTagSinglePayload(v139, 1, v144) == 1)
          {
            sub_2315B2F7C(v139, &qword_27DD602D0, &unk_231608660);
            v185 = 0u;
            v186 = 0u;
            v187 = 0;
            v145 = sub_231606528();
            *(&v189 + 1) = sub_231606058();
            v190 = sub_2315C95E4(&qword_280FE95F0, MEMORY[0x277D60A60]);
            *&v188 = v145;
            if (*(&v186 + 1))
            {
              sub_2315B2F7C(&v185, &qword_27DD60350, &qword_231608800);
            }
          }

          else
          {
            sub_231605E48();
            (*(*(v144 - 8) + 8))(v139, v144);
            sub_2315B4648(&v185, &v188);
          }

          v146 = type metadata accessor for IntentProperties();
          sub_2315C7354(v191, v93 + *(v146 + 28), &qword_27DD602C8, &qword_231608658);
          *v93 = v140;
          v93[1] = v141;
          v93[2] = v143;
          sub_2315B4648(&v188, (v93 + 3));
          sub_2315C7354(v95, v93 + *(v146 + 32), &qword_27DD602D0, &unk_231608660);
          v83 = v93;
          v84 = 0;
          v82 = v146;
          return __swift_storeEnumTagSinglePayload(v83, v84, 1, v82);
        }
      }

      else
      {
        v188 = 0u;
        v189 = 0u;
        v94 = v180;
        v95 = v181;
      }

      sub_2315B2F7C(&v188, &unk_27DD605F0, qword_231609310);
      goto LABEL_68;
    }

    v103 = v191;
    v104 = v178;
    sub_2315C9580(v191, v178, &qword_27DD602C8, &qword_231608658);
    v105 = v177;
    sub_2315C9580(v104, v177, &qword_27DD602C8, &qword_231608658);
    v106 = sub_231605C58();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v106);
    sub_2315B2F7C(v105, &qword_27DD602C8, &qword_231608658);
    if (EnumTagSinglePayload != 1)
    {
LABEL_81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
      v150 = sub_231606728();
      sub_231605538();
      v151 = sub_231605528();
      v153 = v152;
      v154 = sub_231605CC8();
      v155 = sub_231605CB8();
      v156 = v184;
      v184[6] = v154;
      v156[7] = sub_2315C95E4(&qword_27DD60378, MEMORY[0x277D607D8]);
      v156[3] = v155;
      sub_2315B2F7C(v103, &qword_27DD602C8, &qword_231608658);
      v157 = type metadata accessor for IntentProperties();
      v158 = v104;
      v159 = *(v157 + 32);
      v160 = sub_231605E98();
      __swift_storeEnumTagSinglePayload(v156 + v159, 1, 1, v160);
      *v156 = v150;
      v156[1] = v151;
      v156[2] = v153;
      sub_2315C7354(v158, v156 + *(v157 + 28), &qword_27DD602C8, &qword_231608658);
      v83 = v156;
      v84 = 0;
      v82 = v157;
      return __swift_storeEnumTagSinglePayload(v83, v84, 1, v82);
    }

    v108 = sub_2316052F8();
    if (v108)
    {
      sub_2315DCB58(0x697461636F766E69, 0xEE00657079546E6FLL, v108, &v188);

      v109 = v174;
      if (*(&v189 + 1))
      {
        v110 = v173;
        v111 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v110, v111 ^ 1u, 1, v109);
        if (__swift_getEnumTagSinglePayload(v110, 1, v109) != 1)
        {
          v112 = v172;
          v113 = v171;
          (*(v172 + 32))(v171, v110, v109);
          v114 = sub_2316052F8();
          if (v114)
          {
            sub_2315DCB58(0x6F43676F6C616964, 0xEF6449747865746ELL, v114, &v188);

            if (*(&v189 + 1))
            {
              v115 = swift_dynamicCast();
              v116 = v172;
              v117 = v171;
              if (v115)
              {
                v181 = *(&v185 + 1);
                v183 = v185;
                (*(v172 + 16))(v169, v171, v109);
                v118 = sub_231605098();
                __swift_storeEnumTagSinglePayload(v170, 1, 1, v118);
                v119 = v182;
                sub_231605C18();
                (*(v116 + 8))(v117, v109);
                sub_2315B2F7C(v104, &qword_27DD602C8, &qword_231608658);
                __swift_storeEnumTagSinglePayload(v119, 0, 1, v106);
                sub_2315C7354(v119, v104, &qword_27DD602C8, &qword_231608658);
              }

              else
              {
                (*(v172 + 8))(v171, v109);
              }

              goto LABEL_81;
            }

            (*(v172 + 8))(v171, v109);
          }

          else
          {
            (*(v112 + 8))(v113, v109);
            v188 = 0u;
            v189 = 0u;
          }

          v147 = &unk_27DD605F0;
          v148 = qword_231609310;
          v149 = &v188;
          goto LABEL_80;
        }

LABEL_79:
        v147 = &qword_27DD60370;
        v148 = &qword_231608818;
        v149 = v110;
LABEL_80:
        sub_2315B2F7C(v149, v147, v148);
        goto LABEL_81;
      }
    }

    else
    {
      v188 = 0u;
      v189 = 0u;
      v109 = v174;
    }

    sub_2315B2F7C(&v188, &unk_27DD605F0, qword_231609310);
    v110 = v173;
    __swift_storeEnumTagSinglePayload(v173, 1, 1, v109);
    goto LABEL_79;
  }

  if (qword_27DD60100 != -1)
  {
    swift_once();
  }

  v86 = sub_2316066E8();
  __swift_project_value_buffer(v86, qword_27DD603F8);

  v87 = sub_2316066C8();
  v88 = sub_231606958();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v188 = v90;
    *v89 = 136315138;
    v91 = sub_2315B1574(v55, *(&v55 + 1), &v188);

    *(v89 + 4) = v91;
    _os_log_impl(&dword_2315AF000, v87, v88, "direct invocation is not set with a valid action field. Set with %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x231933730](v90, -1, -1);
    MEMORY[0x231933730](v89, -1, -1);
  }

  else
  {
  }

  sub_2315B2F7C(v191, &qword_27DD602C8, &qword_231608658);
  v82 = type metadata accessor for IntentProperties();
  v83 = v184;
  v84 = 1;
  return __swift_storeEnumTagSinglePayload(v83, v84, 1, v82);
}

uint64_t IntentProperties.verb.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t IntentProperties.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602C8, &qword_231608658);
  v7 = OUTLINED_FUNCTION_5_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_231606A28();
  MEMORY[0x231932CB0](0x706F727020202020, 0xEC0000007B203A73);
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v13 = sub_231606718();
  MEMORY[0x231932CB0](v13);

  MEMORY[0x231932CB0](0x76202020200A2C7DLL, 0xED0000203A627265);
  v14 = v1[2];
  v31[0] = v1[1];
  v31[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602E0, &qword_231608670);
  v15 = sub_2316067A8();
  MEMORY[0x231932CB0](v15);

  MEMORY[0x231932CB0](0x776F202020200A2CLL, 0xED0000203A72656ELL);
  v16 = v1[6];
  v17 = v1[7];
  v18 = __swift_project_boxed_opaque_existential_1(v1 + 3, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  (*(v21 + 16))(v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v17 + 16);
  v23 = sub_2316067B8();
  MEMORY[0x231932CB0](v23);

  MEMORY[0x231932CB0](0xD00000000000001BLL, 0x800000023160A8D0);
  v24 = type metadata accessor for IntentProperties();
  sub_2315C9580(v1 + *(v24 + 28), v11, &qword_27DD602C8, &qword_231608658);
  v25 = sub_2316067A8();
  MEMORY[0x231932CB0](v25);

  MEMORY[0x231932CB0](0xD000000000000025, 0x800000023160A8F0);
  sub_2315C9580(v1 + *(v24 + 32), v5, &qword_27DD602D0, &unk_231608660);
  v26 = sub_231605E98();
  if (__swift_getEnumTagSinglePayload(v5, 1, v26) == 1)
  {
    sub_2315B2F7C(v5, &qword_27DD602D0, &unk_231608660);
    v27 = -1;
  }

  else
  {
    v28 = sub_231605E68();
    (*(*(v26 - 8) + 8))(v5, v26);
    v27 = *(v28 + 16);
  }

  v31[0] = v27;
  v29 = sub_231606BC8();
  MEMORY[0x231932CB0](v29);

  return v32;
}

uint64_t IntentPropertiesConstants.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_231606B48();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_2315C9104()
{
  result = qword_27DD602E8;
  if (!qword_27DD602E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD602E8);
  }

  return result;
}

uint64_t sub_2315C9164@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return IntentPropertiesConstants.init(rawValue:)(a1);
}

void sub_2315C91C0()
{
  sub_2315C92C4();
  if (v0 <= 0x3F)
  {
    sub_2315C9380();
    if (v1 <= 0x3F)
    {
      sub_2315C93D0();
      if (v2 <= 0x3F)
      {
        sub_2315C942C(319, &qword_27DD60318, MEMORY[0x277D60680]);
        if (v3 <= 0x3F)
        {
          sub_2315C942C(319, &qword_27DD60320, MEMORY[0x277D60708]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2315C92C4()
{
  if (!qword_27DD60300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD602D8, &qword_231608E50);
    v0 = sub_231606748();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD60300);
    }
  }
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

void sub_2315C9380()
{
  if (!qword_27DD60308)
  {
    v0 = sub_2316069A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD60308);
    }
  }
}

unint64_t sub_2315C93D0()
{
  result = qword_27DD60310;
  if (!qword_27DD60310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DD60310);
  }

  return result;
}

void sub_2315C942C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2316069A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntentPropertiesConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for IntentPropertiesConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_2315C9580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2315C95D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2315B300C(a1, a2);
  }

  return a1;
}

uint64_t sub_2315C95E4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2315C962C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_5_3();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_2315CD0A0(a1, a2);
    if (v9)
    {
      sub_2315B2D08(*(v7 + 56) + 48 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_2315C96C8()
{
  v1 = v0;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v2 = sub_2316066E8();
  __swift_project_value_buffer(v2, qword_280FE9630);
  v3 = sub_2316066C8();
  v4 = sub_231606958();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2315AF000, v3, v4, "Clearing suggestions state store", v5, 2u);
    OUTLINED_FUNCTION_20();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A0, &unk_231608950);
  sub_231606738();
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v1 + 120);
  *(v1 + 120) = MEMORY[0x277D84F90];
}

uint64_t sub_2315C97FC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  if (qword_280FE9628 != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_4_1();
  }

  v16 = sub_2316066E8();
  v17 = __swift_project_value_buffer(v16, qword_280FE9630);

  v36 = v17;
  v18 = sub_2316066C8();
  v19 = sub_231606968();

  v20 = os_log_type_enabled(v18, v19);
  v38 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v42[0] = v15;
    *v21 = 136315394;
    *(v21 + 4) = sub_2315B1574(a3, a4, v42);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_2315B1574(a1, a2, v42);
    _os_log_impl(&dword_2315AF000, v18, v19, "Setting propertyKey: %s for requestId: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v37 = a5;
  sub_2315B2D08(a5, v42);
  swift_beginAccess();

  *&v39 = a3;
  *(&v39 + 1) = a4;
  sub_23160294C(v42, a3, a4);
  swift_endAccess();
  OUTLINED_FUNCTION_5_3();
  v6 = v6[15];
  v22 = v6[2];

  a3 = 0;
  a4 = v6 + 7;
  a2 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v22 == a3)
    {
    }

    if (a3 >= v6[2])
    {
      __break(1u);
      goto LABEL_14;
    }

    a5 = *(a4 - 1);
    v23 = *a4;
    v24 = *(a4 - 3);
    a1 = *(a4 - 2);
    v42[0] = v39;
    v40 = v24;
    v41 = a1;
    v15 = sub_2315BC8D0();

    if (sub_2316069D8())
    {
      break;
    }

    ++a3;
    a4 += 4;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = v23;
  v27 = *(&v39 + 1);

  v28 = sub_2316066C8();
  v29 = sub_231606958();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v42[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_2315B1574(v39, v27, v42);
    _os_log_impl(&dword_2315AF000, v28, v29, "Invoking late arrival of property: %s to listener", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v32 = v37;
  v33 = v38;
  v34 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  sub_2315B2D08(v32, v42);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = &unk_231608938;
  *(v35 + 40) = v26;
  sub_2315CAB60(v42, (v35 + 48));
  sub_2315FD77C(0, 0, v33, &unk_231608948, v35);
}

uint64_t sub_2315C9C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2315CADF8;

  return v6();
}

uint64_t sub_2315C9D48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2315C9E40;

  return v11(a6);
}

uint64_t sub_2315C9E40()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2315C9F24()
{
  OUTLINED_FUNCTION_5_3();
  v1 = *(v0 + 112);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 112);

  v8 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v10 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v4)))));
    v11 = *v10;
    v12 = v10[1];
    v4 &= v4 - 1;
    sub_2315CABD8();
    sub_2315CAC2C();

    if (sub_231606768())
    {
      v13 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2316040B8(0, *(v17 + 16) + 1, 1);
        v13 = v17;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_2316040B8(v14 > 1, v15 + 1, 1);
        v13 = v17;
      }

      *(v13 + 16) = v15 + 1;
      v17 = v13;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v17;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315CA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x2822009F8](sub_2315CA114, v4, 0);
}

uint64_t sub_2315CA114()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_5_3();
  v4 = *(v1 + 112);

  sub_2315DCC0C(v2, v3, v4, (v0 + 64));

  if (*(v0 + 88))
  {
    v5 = *(v0 + 176);
    sub_2315CAB60((v0 + 64), (v0 + 16));
    v20 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_2315CA368;
    v8 = *(v0 + 184);

    return v20(v0 + 16);
  }

  else
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    sub_2315CA9BC(v0 + 64);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v10;
    swift_beginAccess();

    sub_2315CAB04(sub_2315DA290);
    v16 = *(*(v11 + 120) + 16);
    sub_2315CAB90(v16, sub_2315DA290);
    v17 = *(v11 + 120);
    *(v17 + 16) = v16 + 1;
    v18 = (v17 + 32 * v16);
    v18[4] = v14;
    v18[5] = v12;
    v18[6] = &unk_231608920;
    v18[7] = v15;
    *(v11 + 120) = v17;
    swift_endAccess();
    OUTLINED_FUNCTION_14();

    return v19();
  }
}

uint64_t sub_2315CA368()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2315CA46C, v2, 0);
}

uint64_t sub_2315CA46C()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315CA4C4(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2315CADF8;

  return v8(a2);
}

uint64_t sub_2315CA5B8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2315CA5E8()
{
  sub_2315CA5B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315CA638()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_231606728();
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_2315CA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2315CA6C4, v5, 0);
}

uint64_t sub_2315CA6C4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 56);
  sub_2315C97FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315CA724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2315CA74C, v5, 0);
}

uint64_t sub_2315CA74C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 56);
  sub_2315C962C(*(v0 + 40), *(v0 + 48), *(v0 + 16));
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315CA7AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315CA7D0, v2, 0);
}

uint64_t sub_2315CA7D0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);
  sub_2315C96C8();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315CA828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2315CA84C, v2, 0);
}

uint64_t sub_2315CA84C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_2315C9F24();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2315CA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2315CADF8;

  return sub_2315CA0EC(a1, a2, a3, a4);
}

unint64_t sub_2315CA968()
{
  result = qword_280FE8E78[0];
  if (!qword_280FE8E78[0])
  {
    type metadata accessor for InMemoryHintsStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FE8E78);
  }

  return result;
}

uint64_t sub_2315CA9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60390, &qword_231608910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315CAA24(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2315CADF8;

  return sub_2315CA4C4(a1, a2, v7);
}

uint64_t sub_2315CAB04(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

_OWORD *sub_2315CAB60(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2315CAB90(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_2315CABD8()
{
  result = qword_280FE85E8;
  if (!qword_280FE85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85E8);
  }

  return result;
}

unint64_t sub_2315CAC2C()
{
  result = qword_280FE85F0;
  if (!qword_280FE85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE85F0);
  }

  return result;
}

uint64_t sub_2315CAC80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2315CADF8;

  return sub_2315C9C54(a1, v5);
}

uint64_t sub_2315CAD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2315C9E40;

  return sub_2315C9D48(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t InternalXPCSuggestionsLoggerFactory.__allocating_init(bookkeepingXPCClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2315B4648(a1, v2 + 16);
  return v2;
}