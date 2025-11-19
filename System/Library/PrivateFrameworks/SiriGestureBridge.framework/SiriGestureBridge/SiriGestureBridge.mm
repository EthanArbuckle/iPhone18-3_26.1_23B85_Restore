void sub_266E29D60()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = v2;
  v5 = v1;
  v6 = v2 ^ v1;
  if (((v2 ^ v1) & 8) != 0)
  {
    if ((v1 & 8) != 0)
    {
      if ((v2 & 8) != 0)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v23 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v23, qword_281320F40);
      v9 = sub_266E463FC();
      v24 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v24))
      {
        goto LABEL_25;
      }

LABEL_24:
      v25 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v25);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_15_1();
LABEL_25:

      v22 = 0;
      goto LABEL_26;
    }

    if ((v2 & 8) == 0)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v11 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v11, qword_281320F40);
    v12 = sub_266E463FC();
    v13 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v13))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      if (!*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v8 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
      v9 = sub_266E463FC();
      v10 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v10))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v14 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v14, qword_281320F40);
    v12 = sub_266E463FC();
    v15 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v15))
    {
LABEL_18:
      v16 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v16);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  v22 = 1;
LABEL_26:
  sub_266E2E058(v22);
LABEL_27:
  if ((v6 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      if (!*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v31 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v31, qword_281320F40);
      v32 = sub_266E463FC();
      v33 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v33))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v37 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v37, qword_281320F40);
    v35 = sub_266E463FC();
    v38 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v38))
    {
LABEL_45:

      sub_266E2AF6C(1);
      goto LABEL_53;
    }

LABEL_44:
    v39 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v39);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    OUTLINED_FUNCTION_15_1();
    goto LABEL_45;
  }

  if ((v5 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v34 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v34, qword_281320F40);
    v35 = sub_266E463FC();
    v36 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v36))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v4)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_24_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v45 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v45, qword_281320F40);
  v32 = sub_266E463FC();
  v46 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v46))
  {
LABEL_50:
    v47 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v47);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_15_1();
  }

LABEL_51:

  if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) == 1)
  {
    *(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) = 0;
  }

LABEL_53:
  if ((v6 & 4) != 0)
  {
    if ((v5 & 4) != 0)
    {
      if ((v4 & 4) != 0)
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v67 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v67, qword_281320F40);
      v54 = sub_266E463FC();
      v68 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v68))
      {
        goto LABEL_78;
      }

LABEL_77:
      v69 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v69);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      OUTLINED_FUNCTION_15_1();
LABEL_78:

      sub_266E3DB3C(0);
      goto LABEL_79;
    }

    if ((v4 & 4) == 0)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v56 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v56, qword_281320F40);
    v57 = sub_266E463FC();
    v58 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v58))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if ((v4 & 4) == 0)
    {
      if (!*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_24_0();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v53 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v53, qword_281320F40);
      v54 = sub_266E463FC();
      v55 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v55))
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening))
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v59 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v59, qword_281320F40);
    v57 = sub_266E463FC();
    v60 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v60))
    {
LABEL_70:
      v61 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v61);
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  if ((*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) & 1) == 0)
  {
    OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening);
  }

LABEL_79:
  if ((v6 & 2) != 0)
  {
    if ((v5 & 2) != 0)
    {
      if ((v4 & 2) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        if (!v7)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v105 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v105, qword_281320F40);
        v106 = sub_266E463FC();
        v107 = sub_266E465BC();
        if (OUTLINED_FUNCTION_20_0(v107))
        {
          v108 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v108);
          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v109, v110, v111, v112, v113, 2u);
          OUTLINED_FUNCTION_10_0();
        }

        if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) == 1)
        {
          *(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) = 0;
        }
      }

      goto LABEL_111;
    }

    if ((v4 & 2) == 0)
    {
LABEL_111:
      OUTLINED_FUNCTION_32();
      return;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v86 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v86, qword_281320F40);
    v87 = sub_266E463FC();
    v88 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v88))
    {
      v89 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v89);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v90, v91, v92, v93, v94, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v95 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive;
LABEL_102:
    if ((*(v3 + v95) & 1) == 0)
    {
      OUTLINED_FUNCTION_79(v95);
    }

    goto LABEL_111;
  }

  if ((v4 & 2) != 0)
  {
    if (*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive))
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_24_0();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v96 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v96, qword_281320F40);
    v97 = sub_266E463FC();
    v98 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v98))
    {
      v99 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v99);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v100, v101, v102, v103, v104, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v95 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening;
    goto LABEL_102;
  }

  if (!*(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive))
  {
    goto LABEL_111;
  }

  OUTLINED_FUNCTION_24_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v75 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v75, qword_281320F40);
  v76 = sub_266E463FC();
  v77 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v77))
  {
    v78 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v78);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v79, v80, v81, v82, v83, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_32();

  sub_266E3DB3C(v84);
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_20_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *OUTLINED_FUNCTION_24()
{
  v2 = *(v0 + 16) + 1;

  return sub_266E37738(0, v2, 1, v0);
}

uint64_t sub_266E2A7CC()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_266E45AEC();
  v3 = OUTLINED_FUNCTION_5(v2);
  v72 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v71 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v21 = sub_266E4640C();
  __swift_project_value_buffer(v21, qword_281320F58);
  v22 = v1;
  v23 = sub_266E463FC();
  v24 = sub_266E465BC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_21();
    v70 = v14;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_23_0();
    v69 = v2;
    v28 = v27;
    v74[0] = v27;
    *v26 = 136315138;
    v29 = [v22 debugDescription];
    v30 = sub_266E4651C();
    v32 = v31;

    v33 = sub_266E2B0EC(v30, v32, v74);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_266E28000, v23, v24, "Handling SessionStartedMessage: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v2 = v69;
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    v14 = v70;
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  sub_266E4609C();
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v2);
  v37 = qword_281320FA0;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v20, v0 + v37, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v38 = sub_266E460BC();
  v39 = (v0 + qword_281320F88);
  v40 = *(v0 + qword_281320F88 + 8);
  *v39 = v38;
  v39[1] = v41;

  sub_266E45D5C();
  sub_266E4629C();
  OUTLINED_FUNCTION_13();
  v70 = v42;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = qword_281320FA8;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v14, v0 + v46, &qword_2800E8098, &qword_266E479F0);
  swift_endAccess();
  sub_266E4638C();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v47 = v71;
  sub_266E4609C();
  sub_266E4627C();
  (*(v72 + 8))(v47, v2);
  v48 = qword_281320B80;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v73, v0 + v48, &qword_2800E82B0, &unk_266E47190);
  swift_endAccess();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v50 = qword_281320F80;
  v51 = *(v0 + qword_281320F80);
  if (v51)
  {
    v52 = *(v0 + qword_281320F80);

    sub_266E4609C();
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v2);
    v56 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_266E2B3B0(v20, v51 + v56, &qword_2800E8080, &qword_266E479C0);
    swift_endAccess();

    v57 = *(v0 + v50);
    if (v57)
    {
      v58 = *(v0 + v50);

      v59 = sub_266E460BC();
      v60 = (v57 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
      v61 = *(v57 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId + 8);
      *v60 = v59;
      v60[1] = v62;

      v63 = *(v0 + v50);
      if (v63)
      {

        sub_266E45D5C();
        OUTLINED_FUNCTION_13();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v70);
        v67 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        sub_266E2B3B0(v14, v63 + v67, &qword_2800E8098, &qword_266E479F0);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v3 = *v2;
  v4 = *(v0 + 104);
  return v1;
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_266E2B0EC(0xD000000000000013, v3 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1)
{

  return sub_266E2BE40(a1, v1, v2);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x26D5F4920);
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_266E2BE40(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_30(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 176);

  return sub_266E2B0EC(v5, v1, (v3 - 96));
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D5F4920);
}

void sub_266E2AF6C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive) = a1 & 1;
    if ((a1 & 1) != 0 && (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) & 1) == 0)
    {
      sub_266E2AFC0();
      *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
    }
  }
}

void sub_266E2AFC0()
{
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation) = 0;
}

BOOL OUTLINED_FUNCTION_12_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x26D5F4920);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266E2B0EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266E2B280(v11, 0, 0, 1, a1, a2);
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
    sub_266E2B224(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
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

uint64_t sub_266E2B224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266E2B280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266E2CD6C(a5, a6);
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
    result = sub_266E466FC();
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

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_266E2B3B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266E2B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v104 = a8;
  v105 = a7;
  v100 = a4;
  v99 = a3;
  v112 = a2;
  v106 = a1;
  v11 = sub_266E45AEC();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v107 = v18 - v17;
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8078, &unk_266E47180) - 8);
  v20 = *(*v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  v23 = &v96[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v101 = &v96[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v96[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v96[-v33];
  v35 = qword_281320FA0;
  swift_beginAccess();
  v108 = v14;
  v36 = v14;
  v37 = v11;
  v38 = *(v36 + 16);
  v98 = a5;
  v39 = a5;
  v40 = v9;
  v103 = v36 + 16;
  v102 = v38;
  v38(v34, v39, v11);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v11);
  v44 = v19[14];
  sub_266E2BDC8(v9 + v35, v23, &qword_2800E8080, &qword_266E479C0);
  sub_266E2BDC8(v34, &v23[v44], &qword_2800E8080, &qword_266E479C0);
  if (OUTLINED_FUNCTION_22(v23) == 1)
  {
    sub_266E2BE40(v34, &qword_2800E8080, &qword_266E479C0);
    if (OUTLINED_FUNCTION_22(&v23[v44]) == 1)
    {
      sub_266E2BE40(v23, &qword_2800E8080, &qword_266E479C0);
      v45 = v112;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_266E2BDC8(v23, v32, &qword_2800E8080, &qword_266E479C0);
  if (OUTLINED_FUNCTION_22(&v23[v44]) == 1)
  {
    sub_266E2BE40(v34, &qword_2800E8080, &qword_266E479C0);
    (*(v108 + 8))(v32, v11);
LABEL_6:
    sub_266E2BE40(v23, &qword_2800E8078, &unk_266E47180);
LABEL_7:
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v46 = sub_266E4640C();
    __swift_project_value_buffer(v46, qword_281320F58);

    v47 = sub_266E463FC();
    v48 = sub_266E465CC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v49 = 136315394;
      v50 = v101;
      sub_266E2BDC8(v40 + v35, v101, &qword_2800E8080, &qword_266E479C0);
      if (OUTLINED_FUNCTION_22(v50))
      {
        sub_266E2BE40(v50, &qword_2800E8080, &qword_266E479C0);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v89 = v107;
        OUTLINED_FUNCTION_14();
        v90();
        sub_266E2BE40(v50, &qword_2800E8080, &qword_266E479C0);
        v52 = sub_266E45ABC();
        v51 = v91;
        (*(v108 + 8))(v89, v37);
      }

      v92 = v106;
      v93 = sub_266E2B0EC(v52, v51, v111);

      *(v49 + 4) = v93;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_266E2B0EC(v92, v112, v111);
      _os_log_impl(&dword_266E28000, v47, v48, "Request does not belong to current sessionId: %s for requestId: %s", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    v83 = 0;
    goto LABEL_31;
  }

  v54 = v107;
  v53 = v108;
  (*(v108 + 32))(v107, &v23[v44], v37);
  sub_266E2BEFC();
  v97 = sub_266E464FC();
  v55 = *(v53 + 8);
  v55(v54, v37);
  sub_266E2BE40(v34, &qword_2800E8080, &qword_266E479C0);
  v55(v32, v37);
  sub_266E2BE40(v23, &qword_2800E8080, &qword_266E479C0);
  v45 = v112;
  if ((v97 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  v56 = qword_281320B80;
  swift_beginAccess();
  sub_266E2BDC8(v40 + v56, &v109, &qword_2800E82B0, &unk_266E47190);
  if (!v110)
  {
    sub_266E2BE40(&v109, &qword_2800E82B0, &unk_266E47190);
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v84 = sub_266E4640C();
    __swift_project_value_buffer(v84, qword_281320F58);
    v85 = sub_266E463FC();
    v86 = sub_266E465CC();
    if (os_log_type_enabled(v85, v86))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19(&dword_266E28000, v87, v88, "‼️ Unable to find SessionState to pass to GestureProcessor.");
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    v83 = 1;
LABEL_31:
    sub_266E34864();
    swift_allocError();
    *v94 = v83;
    swift_willThrow();
    return v83;
  }

  sub_266E2CE9C(&v109, v111);
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v57 = sub_266E4640C();
  __swift_project_value_buffer(v57, qword_281320F58);
  v58 = sub_266E463FC();
  v59 = sub_266E465BC();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v106;
  v62 = v104;
  if (v60)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19(&dword_266E28000, v63, v64, "Updating session state");
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v65 = v40 + qword_281320F90;
  v66 = *(v40 + qword_281320F90);
  if (v66)
  {
    sub_266E2BE98(v111, &v109);
    v67 = v61;
    v68 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v69 = v66;
    v70 = v66 + v68;
    v61 = v67;
    v62 = v104;
    sub_266E2B3B0(&v109, v70, &qword_2800E82B0, &unk_266E47190);
    swift_endAccess();
  }

  if (*(v40 + qword_281320F80))
  {
    v71 = *(v40 + qword_281320F80);

    sub_266E2CEB4();
  }

  v72 = v107;
  OUTLINED_FUNCTION_14();
  v73();
  v74 = v100;

  v112 = sub_266E4639C();
  v108 = v75;
  sub_266E4637C();
  v76 = sub_266E4636C();
  v77 = *v65;
  v78 = *(v65 + 8);
  v79 = type metadata accessor for GestureRequestProcessor();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v82 = v77;

  v83 = sub_266E2D890(v99, v74, v72, v61, v45, v112, v108, &v109, v76, v105, v62, v77, v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  return v83;
}

uint64_t sub_266E2BDC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266E2BE40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_266E2BE98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266E2BEFC()
{
  result = qword_281320F20;
  if (!qword_281320F20)
  {
    sub_266E45AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281320F20);
  }

  return result;
}

void sub_266E2BF98()
{
  OUTLINED_FUNCTION_16();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8098, &qword_266E479F0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v14 = sub_266E4640C();
  __swift_project_value_buffer(v14, qword_281320F58);
  v15 = v1;
  v16 = sub_266E463FC();
  v17 = sub_266E465BC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_21();
    v19 = OUTLINED_FUNCTION_23_0();
    v61 = v19;
    *v18 = 136315138;
    v20 = [v15 debugDescription];
    v21 = sub_266E4651C();
    v23 = v22;

    v24 = sub_266E2B0EC(v21, v23, &v61);

    *(v18 + 4) = v24;
    OUTLINED_FUNCTION_20(&dword_266E28000, v25, v26, "Handling SessionEndedMessage: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v27 = sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v31 = qword_281320FA0;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v13, v0 + v31, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v32 = (v0 + qword_281320F88);
  v33 = *(v0 + qword_281320F88 + 8);
  *v32 = 0;
  v32[1] = 0;

  v34 = sub_266E4629C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = qword_281320FA8;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_266E2B3B0(v7, v0 + v38, &qword_2800E8098, &qword_266E479F0);
  swift_endAccess();
  v39 = qword_281320F80;
  v40 = *(v0 + qword_281320F80);
  if (v40)
  {
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v27);
    v44 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentSessionId;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_266E2B3B0(v13, v40 + v44, &qword_2800E8080, &qword_266E479C0);
    swift_endAccess();

    v45 = *(v0 + v39);
    if (v45)
    {
      v46 = (v45 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_currentAssistantId);
      v47 = v46[1];
      *v46 = 0;
      v46[1] = 0;

      v48 = *(v0 + v39);
      if (v48)
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v34);
        v52 = OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_sessionUserId;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();

        sub_266E2B3B0(v7, v48 + v52, &qword_2800E8098, &qword_266E479F0);
        swift_endAccess();
      }
    }
  }

  v53 = qword_281320F90;
  v54 = *(v0 + qword_281320F90);
  if (v54)
  {
    v55 = v54;
    sub_266E2C3FC(6);

    v56 = *(v0 + v53);
    if (v56)
    {
      v57 = v56;
      sub_266E2C640();

      v58 = *(v0 + v53);
      if (v58)
      {
        v59 = v58;
        sub_266E2DB58();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return sub_266E2BE40(v2, v0, v1);
}

void sub_266E2C3FC(char a1)
{
  v3 = v1;
  if ((*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) & 1) != 0 || *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting) == 1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v5, qword_281320F40);
    v6 = sub_266E463FC();
    v7 = sub_266E465BC();
    if (OUTLINED_FUNCTION_12_1(v7))
    {
      v8 = OUTLINED_FUNCTION_21();
      v9 = OUTLINED_FUNCTION_23_0();
      v35 = v9;
      *v8 = 136315138;
      v10 = sub_266E2CBA8(a1);
      sub_266E2B0EC(v10, v11, &v35);
      OUTLINED_FUNCTION_74();

      *(v8 + 4) = v2;
      OUTLINED_FUNCTION_10_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10_0();
    }

    sub_266E2AFC0();
    *(v3 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
    OUTLINED_FUNCTION_85();

    sub_266E3A2E0(v17);
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v19 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v19, qword_281320F40);
    oslog = sub_266E463FC();
    v20 = sub_266E465BC();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_23_0();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_266E2CBA8(a1);
      v25 = sub_266E2B0EC(v23, v24, &v35);

      *(v21 + 4) = v25;
      OUTLINED_FUNCTION_83(&dword_266E28000, v26, v27, "Not running gesture recognition, no need to stop gesture recognition for reason: %s", v28, v29, v30, v31, oslog);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_27_0();
    }

    OUTLINED_FUNCTION_85();
  }
}

void OUTLINED_FUNCTION_84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_266E2C640()
{
  v1 = v0;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v5);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  sub_266E2AFC0();
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 0;
}

void sub_266E2C708(char a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v6 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v6, qword_281320F40);
    v7 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v9);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    sub_266E301D4();
    sub_266E31F7C();
    sub_266E31008();
  }

  OUTLINED_FUNCTION_46();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v15 = sub_266E4640C();
  __swift_project_value_buffer(v15, qword_281320F40);
  v16 = v3;
  v17 = sub_266E463FC();
  v18 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109888;
    v20 = OUTLINED_FUNCTION_33_0(v19, v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation]);
    v21 = v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation];
    v23 = OUTLINED_FUNCTION_66(v20, v22);
    *(v23 + 16) = v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation];
    *(v23 + 20) = v24;
    *(v23 + 22) = v16[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation];

    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v25, v26, v27, v28, v29, 0x1Au);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v17 = v16;
  }

  v30 = v16;
  v31 = sub_266E463FC();
  v32 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109632;
    v34 = OUTLINED_FUNCTION_33_0(v33, v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement]);
    v35 = v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured];
    *(OUTLINED_FUNCTION_66(v34, v36) + 16) = v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady];

    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v37, v38, v39, v40, v41, 0x14u);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v31 = v30;
  }

  if (sub_266E2EC5C())
  {
    if (sub_266E3DF04())
    {
      v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 0;
      sub_266E397EC();
      if (sub_266E2E584())
      {
        v42 = sub_266E463FC();
        v43 = sub_266E465BC();
        if (OUTLINED_FUNCTION_23(v43))
        {
          v44 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v44);
          OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_22_0();
          _os_log_impl(v45, v46, v47, v48, v49, v50);
          OUTLINED_FUNCTION_10_0();
        }

        v51 = *&v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
        if (v51 && ([*&v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_] & 1) != 0)
        {

          [v51 deferAudioSessionDeactivationForAnnouncementRequest];
        }
      }
    }

    else
    {
      v64 = sub_266E463FC();
      v65 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v65))
      {
        v66 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v66);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_0();
        _os_log_impl(v67, v68, v69, v70, v71, v72);
        OUTLINED_FUNCTION_10_0();
      }

      v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 1;
    }
  }

  else if ((v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] & 1) != 0 || v30[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] == 1)
  {
    sub_266E3AAD0();
    sub_266E2C3FC(a2);
    oslog = sub_266E463FC();
    v52 = sub_266E465BC();
    if (os_log_type_enabled(oslog, v52))
    {
      v53 = OUTLINED_FUNCTION_21();
      v54 = OUTLINED_FUNCTION_23_0();
      v75 = v54;
      *v53 = 136315138;
      v55 = sub_266E2CBA8(a2);
      v57 = sub_266E2B0EC(v55, v56, &v75);

      *(v53 + 4) = v57;
      OUTLINED_FUNCTION_83(&dword_266E28000, v58, v59, "Not expecting gesture response, will stop head gesture recognition for reason: %s", v60, v61, v62, v63, oslog);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
    }
  }
}

unint64_t sub_266E2CBA8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6D73694469726973;
      break;
    case 6:
      result = 0x456E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266E2CD6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_266E2D5FC(a1, a2);
  sub_266E2CDB8(&unk_287872328);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266E2CDB8(uint64_t result)
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

    result = sub_266E34A78(result, v8, 1, v3);
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

uint64_t sub_266E2CE9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_266E2CEB4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  if (qword_281320A88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v9 = sub_266E4640C();
  v10 = __swift_project_value_buffer(v9, qword_281320F28);

  v11 = sub_266E463FC();
  v12 = sub_266E465BC();

  v13 = 0x281320000;
  if (os_log_type_enabled(v11, v12))
  {
    v35[5] = v10;
    v14 = 7104878;
    v15 = OUTLINED_FUNCTION_23_0();
    v39[0] = swift_slowAlloc();
    *v15 = 136315650;
    v36 = v8;
    v37 = v6;
    *(v15 + 4) = sub_266E2B0EC(v8, v6, v39);
    *(v15 + 12) = 2080;
    if (v3)
    {
      v16 = v38;
    }

    else
    {
      v16 = 7104878;
    }

    if (v3)
    {
      v17 = v3;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_266E2B0EC(v16, v17, v39);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2080;
    if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId + 8))
    {
      v14 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId);
      v19 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge22GestureOutputSubmitter_pendingGestureRequestId + 8);
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_266E2B0EC(v14, v19, v39);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_266E28000, v11, v12, "🆔 Request started with requestId: %s, rootRequestId: %s, pendingGestureRequestId: %s", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();

    v8 = v36;
    v6 = v37;
    v13 = 0x281320000uLL;
  }

  else
  {
  }

  v21 = (v1 + *(v13 + 4080));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83F8, &qword_266E47A08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266E47930;
    *(inited + 32) = v8;
    *(inited + 40) = v6;
    *(inited + 48) = v38;
    *(inited + 56) = v3;
    v39[0] = v23;
    v39[1] = v22;
    MEMORY[0x28223BE20](inited);
    v35[2] = v39;

    v25 = sub_266E40C5C(sub_266E445B8, v35, inited);
    swift_setDeallocating();
    sub_266E44164();

    v26 = sub_266E463FC();
    if (v25)
    {
      v27 = sub_266E465BC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_26();
        *v28 = 0;
        _os_log_impl(&dword_266E28000, v26, v27, "✅ Gesture activation request has begun, posting gesture RC", v28, 2u);
        OUTLINED_FUNCTION_14_0();
      }

      sub_266E41974();
      sub_266E42844();
    }

    else
    {
      sub_266E465AC();
      OUTLINED_FUNCTION_35_1();
      if (os_log_type_enabled(v26, v33))
      {
        v34 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v34);
        _os_log_impl(&dword_266E28000, v26, v23, "‼️ Gesture response is pending, but this is not the request", v25, 2u);
        OUTLINED_FUNCTION_11_0();
      }
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    v38 = sub_266E463FC();
    sub_266E465AC();
    OUTLINED_FUNCTION_35_1();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = OUTLINED_FUNCTION_26();
      *v30 = 0;
      _os_log_impl(&dword_266E28000, v38, v1, "No pending gesture response to post", v30, 2u);
      OUTLINED_FUNCTION_14_0();
    }

    OUTLINED_FUNCTION_32();
  }
}

void sub_266E2D370(void *a1, const char *a2, char a3)
{
  v6 = v3;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v8 = sub_266E4640C();
  __swift_project_value_buffer(v8, qword_281320F58);
  v9 = a1;
  v10 = sub_266E463FC();
  v11 = sub_266E465BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_23_0();
    v19 = v13;
    *v12 = 136315138;
    v14 = [v9 debugDescription];
    v15 = sub_266E4651C();
    v17 = v16;

    v18 = sub_266E2B0EC(v15, v17, &v19);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_266E28000, v10, v11, a2, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_15_1();
  }

  if (*(v6 + qword_281320D00))
  {
    sub_266E2D4E8(a3);
  }
}

void sub_266E2D4E8(char a1)
{
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v3 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v18 = v7;
    *v6 = 136315138;
    v8 = sub_266E2CBA8(a1);
    sub_266E2B0EC(v8, v9, &v18);
    OUTLINED_FUNCTION_74();

    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_10_0();
  }

  sub_266E2AFC0();
  OUTLINED_FUNCTION_85();

  sub_266E2C708(v15, v16);
}

uint64_t sub_266E2D5FC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_266E4656C())
  {
    result = sub_266E2D714(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266E466DC();
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
          result = sub_266E466FC();
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

void *sub_266E2D714(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8108, &unk_266E472C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t type metadata accessor for GestureRequestProcessor()
{
  result = qword_281320CF0;
  if (!qword_281320CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E2D830(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t sub_266E2D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v41 = sub_266E45AEC();
  v15 = OUTLINED_FUNCTION_5(v41);
  v40 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_1(v19);
  v20 = sub_266E4640C();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v28 = v27 - v26;
  v29 = qword_281320FC0;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v30 = v13 + v29;
  v31 = __swift_project_value_buffer(v20, qword_281320F58);
  v32 = *(v23 + 16);
  v32(v28, v31, v20);
  sub_266E4647C();
  v33 = type metadata accessor for EventDeduper(0);
  v34 = (v30 + v33[6]);
  *v34 = 1953066569;
  v34[1] = 0xE400000000000000;
  v35 = v33[7];
  v32(v30 + v35, v31, v20);
  *(v30 + v33[5]) = 1000000;
  (*(v23 + 40))(v30 + v35, v28, v20);
  v36 = (v14 + qword_281320D00);
  *v36 = a12;
  v36[1] = a13;
  (*(v40 + 16))(v39, a3, v41);
  sub_266E2BE98(a8, v44);
  v37 = sub_266E4632C();
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  (*(v40 + 8))(a3, v41);
  return v37;
}

uint64_t sub_266E2DB58()
{
  v1 = v0;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (OUTLINED_FUNCTION_20_0(v4))
  {
    v5 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v5);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  v11 = *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager);
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager) = 0;

  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) = 0;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) = 0;

  return sub_266E2DC3C();
}

uint64_t sub_266E2DC3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_67();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession) = 0;
  sub_266E4619C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
  OUTLINED_FUNCTION_57();
  sub_266E2B3B0(v12, v0 + v17, &qword_2800E81E8, &unk_266E474D0);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall) = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_32_0();
  v22 = OUTLINED_FUNCTION_77();
  sub_266E2B3B0(v22, v23, &qword_2800E8080, &qword_266E479C0);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_beginAccess();
}

uint64_t sub_266E2DDE8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_33();
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E4650C();
    v4 = OUTLINED_FUNCTION_18_0();
    v6 = [v4 v5];

    if (v6)
    {

      return 1;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v16 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v16, qword_281320F40);
    v17 = sub_266E463FC();
    v18 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v18))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v19, v20, "isWaitingToneEnabled: false");
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v2 = sub_266E463FC();
    v9 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v9))
    {
      v10 = OUTLINED_FUNCTION_21();
      v21 = OUTLINED_FUNCTION_23_0();
      *(v10 + 4) = OUTLINED_FUNCTION_21_0(4.8149e-34, v21);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_11_0();
    }
  }

  return 0;
}

BOOL OUTLINED_FUNCTION_31_0(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

id sub_266E2DFC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266E4650C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_266E2E058(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive;
  if (v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] == (a1 & 1))
  {
    OUTLINED_FUNCTION_62();
    return;
  }

  v4 = v1;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v6 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v6, qword_281320F40);
    v7 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v9);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured);
  }

  v15 = *&v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState];
  v16 = v15 == 6 || v15 == 3;
  if (v16 && (v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] & 1) == 0)
  {
    v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = v2;
LABEL_23:
    v26 = OUTLINED_FUNCTION_50();
    sub_266E2C708(v26, v27);
    goto LABEL_24;
  }

  if ((a1 & 1) != 0 && v4[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] == 1)
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v17 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
    v18 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v19))
    {
      v20 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v20);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    goto LABEL_23;
  }

LABEL_24:
  if (sub_266E2DDE8())
  {
    v28 = OUTLINED_FUNCTION_50();
    sub_266E2C708(v28, v29);
    v30 = sub_266E2FFC8(0);
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_46();
      if (!v16)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v32 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v32, qword_281320F40);
      v33 = v4;
      v34 = sub_266E463FC();
      sub_266E465BC();
      OUTLINED_FUNCTION_40();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109888;
        v37 = OUTLINED_FUNCTION_33_0(v36, *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation));
        v38 = *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation);
        v40 = OUTLINED_FUNCTION_66(v37, v39);
        *(v40 + 16) = *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation);
        *(v40 + 20) = v41;
        *(v40 + 22) = *(&v33->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation);

        _os_log_impl(&dword_266E28000, v34, OS_LOG_TYPE_DEFAULT, "Expecting Confirmation: Siri X %{BOOL}d, Siri Classic: %{BOOL}d, POMMES: %{BOOL}d IntelligenceEngine: %{BOOL}d", v36, 0x1Au);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v34 = v33;
      }

      v69 = v33;
      v70 = sub_266E463FC();
      v71 = sub_266E465BC();
      if (OUTLINED_FUNCTION_12_1(v71))
      {
        v72 = OUTLINED_FUNCTION_23_0();
        *v72 = 67110144;
        v73 = OUTLINED_FUNCTION_33_0(v72, *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement));
        v74 = *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady);
        v76 = OUTLINED_FUNCTION_66(v73, v75);
        *(v76 + 16) = *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured);
        *(v76 + 20) = v77;
        *(v76 + 22) = v4[v3];
        *(v76 + 26) = v77;
        *(v76 + 28) = *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing);

        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v78, v79, v80, v81, v82, 0x20u);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v70 = v69;
      }

      if ((v4[v3] & 1) == 0 && *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) == 1 && (sub_266E2E584() & 1) != 0 && *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) == 1)
      {
        v83 = sub_266E3DF04();
      }

      else
      {
        v83 = 0;
      }

      v84 = *(&v69->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
      v85 = v69;
      sub_266E3FA88(v84, v85, v83 & 1, v31, v85);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v59 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v59, qword_281320F40);
    logb = sub_266E463FC();
    v60 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_31_0(v60, v61, v62, v63, v64, v65, v66, v67, v88, logb))
    {
      goto LABEL_50;
    }

    v68 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_42(v68);
    v58 = "HGManager is nil";
  }

  else
  {
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v42 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v42, qword_281320F40);
    loga = sub_266E463FC();
    v43 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_31_0(v43, v44, v45, v46, v47, v48, v49, v50, v88, loga))
    {
      goto LABEL_50;
    }

    v51 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_42(v51);
    v58 = "🔇 Not playing waiting tone, it's disabled in the user defaults";
  }

  OUTLINED_FUNCTION_26_0(&dword_266E28000, v52, v53, v58, v54, v55, v56, v57, v89, log);
  OUTLINED_FUNCTION_27_0();
LABEL_50:
  OUTLINED_FUNCTION_62();
}

uint64_t OUTLINED_FUNCTION_69()
{
  v3 = *(*(v1 - 216) + 20);
  *(v1 - 184) = v0;
  v4 = *(v1 - 208);

  return sub_266E45A8C();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_beginAccess();
}

uint64_t sub_266E2E584()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v92[-v10];
  v12 = sub_266E45AEC();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v92[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v92[-v21];
  OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation);
  if (!v43)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v36 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v36, qword_281320F40);
    v37 = sub_266E463FC();
    v38 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v38))
    {
      v39 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v39);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v40, v41, "❓ Siri did not prompt for confirmation yet");
      OUTLINED_FUNCTION_11_0();
    }

    return 0;
  }

  sub_266E45ADC();
  OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation);
  if (!v43)
  {
    OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation);
    if (v43)
    {
      MEMORY[0x28223BE20](v44);
      OUTLINED_FUNCTION_35_0();
      *(v45 - 16) = v22;
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_32_0();
      v46 = OUTLINED_FUNCTION_77();
      sub_266E2B3B0(v46, v47, v48, v49);
      swift_endAccess();
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v50 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v50, qword_281320F40);
      v51 = sub_266E463FC();
      sub_266E465AC();
      OUTLINED_FUNCTION_28_0();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation);
      if (v65)
      {
        MEMORY[0x28223BE20](v66);
        OUTLINED_FUNCTION_35_0();
        *(v67 - 16) = v22;
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_32_0();
        v68 = OUTLINED_FUNCTION_77();
        sub_266E2B3B0(v68, v69, v70, v71);
        swift_endAccess();
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v72 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v72, qword_281320F40);
        v51 = sub_266E463FC();
        sub_266E465AC();
        OUTLINED_FUNCTION_28_0();
        if (!os_log_type_enabled(v51, v73))
        {
          goto LABEL_42;
        }
      }

      else
      {
        OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation);
        if (!v74)
        {
LABEL_12:
          v33 = *(v15 + 8);
          v34 = OUTLINED_FUNCTION_64();
          v35(v34);
          return 0;
        }

        MEMORY[0x28223BE20](v75);
        OUTLINED_FUNCTION_35_0();
        *(v76 - 16) = v22;
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_32_0();
        v77 = OUTLINED_FUNCTION_77();
        sub_266E2B3B0(v77, v78, v79, v80);
        swift_endAccess();
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v81 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v81, qword_281320F40);
        v51 = sub_266E463FC();
        sub_266E465AC();
        OUTLINED_FUNCTION_28_0();
        if (!os_log_type_enabled(v51, v82))
        {
          goto LABEL_42;
        }
      }
    }

    v83 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_34_0(v83);
    OUTLINED_FUNCTION_11_1();
    _os_log_impl(v84, v85, v86, v87, v88, 2u);
    OUTLINED_FUNCTION_17_1();
LABEL_42:

    v89 = *(v15 + 8);
    v90 = OUTLINED_FUNCTION_64();
    v91(v90);
    return 1;
  }

  v23 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(v0 + v23, v11, &qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_63(v11, 1, v12);
  if (v43)
  {
    sub_266E2BE40(v11, &qword_2800E8080, &qword_266E479C0);
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v24 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v24, qword_281320F40);
    v25 = sub_266E463FC();
    sub_266E465CC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v27);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    goto LABEL_12;
  }

  v53 = *(v15 + 32);
  v54 = OUTLINED_FUNCTION_67();
  v56 = v55(v54);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_35_0();
  *(v57 - 16) = v20;
  OUTLINED_FUNCTION_90();
  v58 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
  OUTLINED_FUNCTION_57();
  sub_266E2B3B0(v1, &v58[v0], &qword_2800E81E8, &unk_266E474D0);
  swift_endAccess();
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v59 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v59, qword_281320F40);
  v60 = sub_266E463FC();
  sub_266E465AC();
  OUTLINED_FUNCTION_28_0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v62);
    _os_log_impl(&dword_266E28000, v60, v1, "Expecting confirmation for IntelligenceEngine", v58, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  v63 = *(v15 + 8);
  (v63)(v20, v12);
  v64 = OUTLINED_FUNCTION_64();
  v63(v64);
  return 1;
}

uint64_t sub_266E2EC5C()
{
  if (sub_266E2E584())
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement);
  }
}

uint64_t sub_266E2ECA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_1(v6);
  v133 = sub_266E461AC();
  v7 = OUTLINED_FUNCTION_5(v133);
  v131 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v122 = v12 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8418, &unk_266E47A60);
  v13 = OUTLINED_FUNCTION_10(v127);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v119 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_2();
  v124 = v22 - v23;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v24);
  v130 = &v119 - v25;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v26);
  v129 = &v119 - v27;
  v28 = sub_266E4622C();
  v29 = OUTLINED_FUNCTION_5(v28);
  v134 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v125 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83B8, &unk_266E47A70);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v135 = &v119 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v41 = OUTLINED_FUNCTION_12(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_2();
  v128 = v44 - v45;
  OUTLINED_FUNCTION_41();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v119 - v48;
  MEMORY[0x28223BE20](v47);
  v136 = &v119 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v52 = OUTLINED_FUNCTION_12(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_2();
  v121 = v55 - v56;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v57);
  v126 = &v119 - v58;
  OUTLINED_FUNCTION_41();
  v60 = MEMORY[0x28223BE20](v59);
  v62 = &v119 - v61;
  MEMORY[0x28223BE20](v60);
  v138 = &v119 - v63;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v64 = sub_266E4640C();
  __swift_project_value_buffer(v64, qword_281320F58);
  v65 = a1;
  v66 = sub_266E463FC();
  v67 = sub_266E465BC();

  v68 = os_log_type_enabled(v66, v67);
  v132 = v49;
  if (v68)
  {
    v69 = OUTLINED_FUNCTION_21();
    v120 = v35;
    v70 = v69;
    v119 = OUTLINED_FUNCTION_23_0();
    v139 = v119;
    *v70 = 136315138;
    v71 = [v65 debugDescription];
    v72 = v17;
    v73 = sub_266E4651C();
    v74 = v28;
    v76 = v75;

    v77 = v73;
    v17 = v72;
    v78 = sub_266E2B0EC(v77, v76, &v139);
    v28 = v74;

    *(v70 + 4) = v78;
    _os_log_impl(&dword_266E28000, v66, v67, "❓ Handling SiriWillPromptMessage: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    OUTLINED_FUNCTION_14_0();
    v35 = v120;
    OUTLINED_FUNCTION_14_0();
  }

  v79 = v138;
  sub_266E460DC();
  v80 = sub_266E4619C();
  OUTLINED_FUNCTION_10_2(v79);
  v81 = v136;
  if (v89)
  {
    goto LABEL_29;
  }

  sub_266E4436C(v138, v62, &qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_10_2(v62);
  if (v89)
  {
    sub_266E2BE40(v62, &qword_2800E81E8, &unk_266E474D0);
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v28);
  }

  else
  {
    sub_266E4613C();
    OUTLINED_FUNCTION_12_2();
    (*(v82 + 8))(v62, v80);
  }

  v83 = v132;
  (*(v134 + 104))(v132, *MEMORY[0x277D5CFB0], v28);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v28);
  v84 = *(v35 + 48);
  v85 = v135;
  sub_266E4436C(v81, v135, &qword_2800E83C0, &unk_266E479E0);
  sub_266E4436C(v83, v85 + v84, &qword_2800E83C0, &unk_266E479E0);
  OUTLINED_FUNCTION_18_2(v85);
  if (!v89)
  {
    v88 = v128;
    sub_266E4436C(v85, v128, &qword_2800E83C0, &unk_266E479E0);
    OUTLINED_FUNCTION_18_2(v85 + v84);
    if (!v89)
    {
      v93 = v134;
      v94 = v85 + v84;
      v95 = v125;
      (*(v134 + 32))(v125, v94, v28);
      sub_266E450A4(&qword_2800E83D0, MEMORY[0x277D5CFB8]);
      v96 = sub_266E464FC();
      v97 = *(v93 + 8);
      v97(v95, v28);
      sub_266E2BE40(v83, &qword_2800E83C0, &unk_266E479E0);
      sub_266E2BE40(v136, &qword_2800E83C0, &unk_266E479E0);
      v97(v88, v28);
      v87 = v129;
      sub_266E2BE40(v135, &qword_2800E83C0, &unk_266E479E0);
      if ((v96 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_11_2();
    v86 = v135;
    sub_266E2BE40(v136, &qword_2800E83C0, &unk_266E479E0);
    (*(v134 + 8))(v88, v28);
LABEL_17:
    v90 = &qword_2800E83B8;
    v91 = &unk_266E47A70;
    v92 = v86;
LABEL_28:
    sub_266E2BE40(v92, v90, v91);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_2();
  v86 = v135;
  sub_266E2BE40(v81, &qword_2800E83C0, &unk_266E479E0);
  OUTLINED_FUNCTION_18_2(v86 + v84);
  if (!v89)
  {
    goto LABEL_17;
  }

  sub_266E2BE40(v86, &qword_2800E83C0, &unk_266E479E0);
  v87 = v129;
LABEL_19:
  v98 = v126;
  sub_266E4436C(v138, v126, &qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_10_2(v98);
  if (v89)
  {
    sub_266E2BE40(v98, &qword_2800E81E8, &unk_266E474D0);
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v133);
  }

  else
  {
    sub_266E4611C();
    OUTLINED_FUNCTION_12_2();
    (*(v99 + 8))(v98, v80);
  }

  v100 = v130;
  v101 = v133;
  (*(v131 + 104))(v130, *MEMORY[0x277D5CE68], v133);
  __swift_storeEnumTagSinglePayload(v100, 0, 1, v101);
  v102 = *(v127 + 48);
  sub_266E4436C(v87, v17, &unk_2800E82E0, &unk_266E478B0);
  sub_266E4436C(v100, &v17[v102], &unk_2800E82E0, &unk_266E478B0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v101) == 1)
  {
    sub_266E2BE40(v100, &unk_2800E82E0, &unk_266E478B0);
    OUTLINED_FUNCTION_11_2();
    if (__swift_getEnumTagSinglePayload(&v17[v102], 1, v133) == 1)
    {
      sub_266E2BE40(v17, &unk_2800E82E0, &unk_266E478B0);
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v103 = v124;
  sub_266E4436C(v17, v124, &unk_2800E82E0, &unk_266E478B0);
  if (__swift_getEnumTagSinglePayload(&v17[v102], 1, v133) == 1)
  {
    sub_266E2BE40(v130, &unk_2800E82E0, &unk_266E478B0);
    OUTLINED_FUNCTION_11_2();
    (*(v131 + 8))(v103, v133);
LABEL_27:
    v90 = &qword_2800E8418;
    v91 = &unk_266E47A60;
    v92 = v17;
    goto LABEL_28;
  }

  v107 = v131;
  v108 = &v17[v102];
  v109 = v122;
  v110 = v133;
  (*(v131 + 32))(v122, v108, v133);
  sub_266E450A4(&qword_2800E8420, MEMORY[0x277D5CE70]);
  v111 = sub_266E464FC();
  v112 = *(v107 + 8);
  v112(v109, v110);
  sub_266E2BE40(v130, &unk_2800E82E0, &unk_266E478B0);
  sub_266E2BE40(v87, &unk_2800E82E0, &unk_266E478B0);
  v112(v103, v110);
  sub_266E2BE40(v17, &unk_2800E82E0, &unk_266E478B0);
  if (v111)
  {
LABEL_34:
    if (*(v137 + qword_281320D00))
    {
      v113 = *(v137 + qword_281320D00);
      sub_266E2FDD8();
      v114 = v121;
      sub_266E4436C(v138, v121, &qword_2800E81E8, &unk_266E474D0);
      OUTLINED_FUNCTION_10_2(v114);
      if (v89)
      {
        sub_266E2BE40(v114, &qword_2800E81E8, &unk_266E474D0);
        v116 = 1;
      }

      else
      {
        sub_266E4614C();
        OUTLINED_FUNCTION_12_2();
        (*(v115 + 8))(v114, v80);
        v116 = 0;
      }

      v117 = sub_266E45AEC();
      v118 = v123;
      __swift_storeEnumTagSinglePayload(v123, v116, 1, v117);
      sub_266E3D6D8();
      sub_266E2BE40(v118, &qword_2800E8080, &qword_266E479C0);
    }

    return sub_266E2BE40(v138, &qword_2800E81E8, &unk_266E474D0);
  }

LABEL_29:
  swift_beginAccess();
  sub_266E2F920();
  v105 = v104;
  swift_endAccess();
  if ((v105 & 1) != 0 && *(v137 + qword_281320D00))
  {
    sub_266E2FDD8();
  }

  return sub_266E2BE40(v138, &qword_2800E81E8, &unk_266E474D0);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_266E4619C();
}

void sub_266E2F920()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_266E4640C();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v60 = sub_266E464AC();
  v16 = OUTLINED_FUNCTION_5(v60);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  sub_266E4649C();
  v24 = sub_266E4648C();
  v25 = sub_266E4648C();
  v26 = v24 >= v25;
  v27 = v24 - v25;
  if (v26)
  {
    v57 = v23;
    v59 = v18;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_266E466EC();

    v62 = 0x6465766965636552;
    v63 = 0xE900000000000020;
    v53 = v5;
    v54 = v3;
    MEMORY[0x26D5F4210](v5, v3);
    MEMORY[0x26D5F4210](32, 0xE100000000000000);
    v61 = v27 / 0xF4240;
    v28 = sub_266E4672C();
    MEMORY[0x26D5F4210](v28);

    MEMORY[0x26D5F4210](0x6574666120736D20, 0xEA00000000002072);
    v29 = type metadata accessor for EventDeduper(0);
    v30 = (v0 + v29[6]);
    MEMORY[0x26D5F4210](*v30, v30[1]);
    v56 = *(v0 + v29[5]);
    v52 = v62;
    v31 = v29[7];
    v32 = *(v9 + 16);
    v58 = v27;
    if (v27 < v56)
    {
      v41 = v6;
      v32(v15, v0 + v31, v6);

      v42 = sub_266E463FC();
      v43 = sub_266E465BC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_21();
        v45 = OUTLINED_FUNCTION_23_0();
        v62 = v45;
        v46 = OUTLINED_FUNCTION_30(4.8149e-34);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_266E28000, v42, v43, "%s, event is a dupe", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      (*(v9 + 8))(v15, v41);
      (*(v59 + 8))(v57, v60);
    }

    else
    {
      v33 = v55;
      v32(v55, v0 + v31, v6);

      v34 = sub_266E463FC();
      v35 = sub_266E465BC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_21();
        v51 = v9;
        v37 = v36;
        v38 = OUTLINED_FUNCTION_23_0();
        v62 = v38;
        v39 = v6;
        v40 = OUTLINED_FUNCTION_30(4.8149e-34);

        *(v37 + 4) = v40;
        _os_log_impl(&dword_266E28000, v34, v35, "%s, event isn't a dupe", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_14_0();

        (*(v51 + 8))(v55, v39);
      }

      else
      {

        (*(v9 + 8))(v33, v6);
      }

      v47 = v59;
      v48 = v57;
      v49 = v54;

      *v30 = v53;
      v30[1] = v49;
      (*(v47 + 40))(v1, v48, v60);
    }

    OUTLINED_FUNCTION_32();
  }

  else
  {
    __break(1u);
  }
}

void sub_266E2FDD8()
{
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation) = 1;
  sub_266E2FF00();

  sub_266E2C708(1, 8);
}

uint64_t sub_266E2FE18()
{
  OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_internalTesting);
  if (v1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v2 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
    v3 = sub_266E463FC();
    v4 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v4))
    {
      v5 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v5);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v6, v7, "🧪 Assuming bobble is available");
      OUTLINED_FUNCTION_11_0();
    }

    return 1;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
    if (v9 && ([v9 respondsToSelector_] & 1) != 0)
    {
      return [v9 isBobbleAvailable];
    }

    else
    {
      return 0;
    }
  }
}

void sub_266E2FF00()
{
  v0 = sub_266E2FE18();
  v1 = sub_266E2FFC8(v0 & 1);
  if (!v1)
  {
    if ((v0 & 1) == 0)
    {
      return;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v2 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
    v20 = sub_266E463FC();
    v3 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
    {
      v11 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v12, v13, "Failed to initialize HGManager", v14, v15, v16, v17, v19, v21);
      OUTLINED_FUNCTION_27_0();
    }

    v1 = v21;
  }
}

void *sub_266E2FFC8(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager;
  v4 = *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
  if (!v4 && (a1 & 1) != 0)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_266E4640C();
    __swift_project_value_buffer(v5, qword_281320F40);
    v6 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_34_0(v8);
      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_17_1();
    }

    sub_266E45B4C();
    sub_266E45B1C();
    objc_allocWithZone(sub_266E45BFC());
    v14 = v2;
    v15 = sub_266E45BEC();
    v16 = *&v2[v3];
    *&v2[v3] = v15;

    if (AFIsInternalInstall())
    {
      v17 = sub_266E463FC();
      v18 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v18))
      {
        v19 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_34_0(v19);
        OUTLINED_FUNCTION_84(&dword_266E28000, v20, v21, "📝 Enabling raw data logging, device is using an internal install");
        OUTLINED_FUNCTION_17_1();
      }

      v22 = *&v14[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
      v23 = v14;
      v24 = OUTLINED_FUNCTION_72();
      sub_266E3E68C(v24, v25, v25);
    }

    sub_266E39330();
    v4 = *&v2[v3];
  }

  v26 = v4;
  return v4;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x26D5F4920);
}

void sub_266E301D4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = sub_266E4629C();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = sub_266E4624C();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(v1 + v20, v43, &qword_2800E82B0, &unk_266E47190);
  if (!v43[3])
  {
    sub_266E2BE40(v43, &qword_2800E82B0, &unk_266E47190);
    v44 = 0u;
    v45 = 0u;
    goto LABEL_6;
  }

  sub_266E2BE98(v43, v42);
  sub_266E2BE40(v43, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  (*(v14 + 104))(v19, *MEMORY[0x277D5D1D0], v11);
  sub_266E4628C();
  sub_266E4625C();
  (*(v5 + 8))(v10, v2);
  (*(v14 + 8))(v19, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  if (!*(&v45 + 1))
  {
LABEL_6:
    sub_266E2BE40(&v44, &qword_2800E82B8, &qword_266E47890);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82C0, &qword_266E47898);
  if (swift_dynamicCast())
  {
    v21 = v43[0];
    OUTLINED_FUNCTION_54();
    v22 = swift_allocObject();
    *(v22 + 16) = MEMORY[0x277D84F90];
    v23 = sub_266E3067C(v21, (v22 + 16));

    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_54();
  v22 = swift_allocObject();
  v23 = 0;
  *(v22 + 16) = MEMORY[0x277D84F90];
LABEL_8:
  v24 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation;
  *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation) = v23;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v25 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v25, qword_281320F40);
  v26 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_21();
    v29 = OUTLINED_FUNCTION_23_0();
    v42[0] = v29;
    *v28 = 136315138;
    OUTLINED_FUNCTION_58();
    v30 = *(v22 + 16);
    v31 = sub_266E45C8C();

    MEMORY[0x26D5F4240](v32, v31);

    v33 = OUTLINED_FUNCTION_75();
    v36 = sub_266E2B0EC(v33, v34, v35);

    *(v28 + 4) = v36;
    OUTLINED_FUNCTION_86(&dword_266E28000, v26, v19, "Confirmation SDAs: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_17_1();
  }

  if (*(v1 + v24))
  {
  }

  else
  {
    v37 = sub_266E463FC();
    v38 = sub_266E465BC();
    if (OUTLINED_FUNCTION_23(v38))
    {
      v39 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v39);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v40, v41, "Not expecting SiriX confirmation");
      OUTLINED_FUNCTION_11_0();
    }
  }

  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E30614()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8]();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_266E2B0EC(v3, v4, va);
}

BOOL sub_266E3067C(uint64_t a1, uint64_t *a2)
{
  v42 = a2;
  v44 = sub_266E45C8C();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = 0;
  v45 = *(a1 + 16);
  while (1)
  {
    v10 = v9;
    if (v45 == v9)
    {
      break;
    }

    ++v9;
    v11 = v8;
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    v14 = a1 + v12 + v13 * v10;
    v15 = sub_266E45C6C();
    v8 = v11;
    if (v15)
    {
      v16 = v42;
      sub_266E30A2C();
      v17 = *(*v16 + 16);
      sub_266E30C5C(v17);
      v18 = *v16;
      *(v18 + 16) = v17 + 1;
      v19 = v18 + v12 + v17 * v13;
      v20 = *(v3 + 16);
      v21 = v44;
      (v20)(v19, v14, v44);
      if (qword_281320A90 != -1)
      {
        swift_once();
      }

      v22 = sub_266E4640C();
      __swift_project_value_buffer(v22, qword_281320F40);
      v23 = v11;
      (v20)(v11, v14, v21);
      v24 = v43;
      v20();
      v25 = sub_266E463FC();
      v26 = sub_266E465BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46 = v42;
        *v27 = 134218242;
        v41 = v26;
        v28 = sub_266E45C7C();
        v40 = v25;
        v29 = *(v3 + 8);
        v29(v23, v21);
        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        sub_266E40994(&unk_281320F08, MEMORY[0x277D5DC70]);
        v30 = sub_266E462BC();
        v31 = v21;
        v33 = v32;
        v29(v24, v31);
        v34 = sub_266E2B0EC(v30, v33, &v46);

        *(v27 + 14) = v34;
        v35 = v40;
        _os_log_impl(&dword_266E28000, v40, v41, "Expecting confirmation for SDA %ld: %s", v27, 0x16u);
        v36 = v42;
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x26D5F4920](v36, -1, -1);
        MEMORY[0x26D5F4920](v27, -1, -1);
      }

      else
      {
        v37 = *(v3 + 8);
        v37(v23, v21);

        v37(v24, v21);
      }

      return v45 != v10;
    }
  }

  return v45 != v10;
}

size_t sub_266E30A2C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_266E30B74(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_266E30A78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8270, qword_266E47760);
  v4 = *(sub_266E45C8C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_266E30B74(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_266E30A78(v8, v7);
  v10 = sub_266E45C8C();
  OUTLINED_FUNCTION_13_0(v10);
  if (v5)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_266E37840(a4 + v12, v8, v9 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_266E30C5C(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_266E30B74(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_266E30CEC(void *a1, const char *a2)
{
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  oslog = sub_266E463FC();
  v6 = sub_266E465BC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_21();
    v8 = OUTLINED_FUNCTION_23_0();
    v15 = v8;
    *v7 = 136315138;
    v9 = [v5 debugDescription];
    v10 = sub_266E4651C();
    v12 = v11;

    v13 = sub_266E2B0EC(v10, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_266E28000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }
}

void sub_266E30E50(void *a1)
{
  v2 = v1;
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v4 = sub_266E4640C();
  __swift_project_value_buffer(v4, qword_281320F58);
  v5 = a1;
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_266E4651C();
    v13 = v12;

    v14 = sub_266E2B0EC(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266E28000, v6, v7, "❓ Handling SiriWillAskForConfirmationMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  swift_beginAccess();
  sub_266E2F920();
  v16 = v15;
  swift_endAccess();
  if (v16)
  {
    if (*(v2 + qword_281320D00))
    {
      sub_266E2FDD8();
    }
  }
}

void sub_266E31008()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  v88 = v6;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v7);
  v91 = &v86 - v8;
  OUTLINED_FUNCTION_55();
  v93 = sub_266E45C5C();
  v9 = OUTLINED_FUNCTION_5(v93);
  v90 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v89 = v14 - v13;
  OUTLINED_FUNCTION_55();
  v94 = sub_266E4629C();
  v15 = OUTLINED_FUNCTION_5(v94);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v23 = sub_266E4624C();
  v24 = OUTLINED_FUNCTION_5(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D8, &qword_266E478A8);
  OUTLINED_FUNCTION_12(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_60();
  v36 = sub_266E462DC();
  v37 = OUTLINED_FUNCTION_5(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  v92 = v43 - v42;
  v44 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(v0 + v44, v96, &qword_2800E82B0, &unk_266E47190);
  if (!v96[3])
  {
    sub_266E2BE40(v96, &qword_2800E82B0, &unk_266E47190);
    v97 = 0u;
    v98 = 0u;
    goto LABEL_12;
  }

  v87 = v39;
  v86 = v0;
  sub_266E2BE98(v96, v95);
  sub_266E2BE40(v96, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  (*(v26 + 104))(v31, *MEMORY[0x277D5D1B8], v23);
  sub_266E4628C();
  OUTLINED_FUNCTION_52();
  sub_266E4625C();
  (*(v17 + 8))(v22, v94);
  v45 = *(v26 + 8);
  v46 = OUTLINED_FUNCTION_67();
  v47(v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  if (!*(&v98 + 1))
  {
LABEL_12:
    sub_266E2BE40(&v97, &qword_2800E82B8, &qword_266E47890);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v36);
    goto LABEL_13;
  }

  v48 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v48 ^ 1u, 1, v36);
  OUTLINED_FUNCTION_63(v1, 1, v36);
  if (!v49)
  {
    v50 = v87;
    v51 = v92;
    (*(v87 + 32))(v92, v1, v36);
    v52 = v91;
    sub_266E462CC();
    v53 = v93;
    OUTLINED_FUNCTION_63(v52, 1, v93);
    if (v49)
    {
      sub_266E2BE40(v52, &qword_2800E82D0, &qword_266E478A0);
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v54 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v54, qword_281320F40);
      v55 = sub_266E463FC();
      v56 = sub_266E465BC();
      if (OUTLINED_FUNCTION_23(v56))
      {
        v57 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v57);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_0();
        _os_log_impl(v58, v59, v60, v61, v62, v63);
        OUTLINED_FUNCTION_10_0();
      }

      (*(v50 + 8))(v51, v36);
    }

    else
    {
      v73 = v90;
      v74 = v89;
      (*(v90 + 32))(v89, v52, v53);
      type metadata accessor for GestureController();
      v75 = v88;
      (*(v73 + 16))(v88, v74, v53);
      OUTLINED_FUNCTION_13();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v53);
      sub_266E316F0();
      v80 = v79;
      sub_266E2BE40(v75, &qword_2800E82D0, &qword_266E478A0);
      if ((v80 & 1) == 0)
      {
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v81 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v81, qword_281320F40);
        v82 = sub_266E463FC();
        v83 = sub_266E465BC();
        if (OUTLINED_FUNCTION_12_1(v83))
        {
          *OUTLINED_FUNCTION_26() = 0;
          OUTLINED_FUNCTION_81(&dword_266E28000, v84, v85, "Not expecting POMMES confirmation");
          OUTLINED_FUNCTION_14_0();
        }
      }

      (*(v73 + 8))(v74, v53);
      (*(v50 + 8))(v51, v36);
      *(v86 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation) = v80 & 1;
    }

    goto LABEL_18;
  }

LABEL_13:
  sub_266E2BE40(v1, &qword_2800E82D8, &qword_266E478A8);
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v67 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v67, qword_281320F40);
  v68 = sub_266E463FC();
  v69 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v69))
  {
    v70 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v70);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v71, v72, "No POMMES context found, not expecting POMMES confirmation");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_32();
}

void sub_266E316F0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v56[-v7];
  v9 = sub_266E45C5C();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v62 = v15;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v16);
  v63 = &v56[-v17];
  OUTLINED_FUNCTION_41();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v21);
  v23 = &v56[-v22];
  sub_266E2BDC8(v2, v8, &qword_2800E82D0, &qword_266E478A0);
  OUTLINED_FUNCTION_63(v8, 1, v9);
  if (v24)
  {
    sub_266E2BE40(v8, &qword_2800E82D0, &qword_266E478A0);
  }

  else
  {
    (*(v12 + 32))(v23, v8, v9);
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v25 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v25, qword_281320F40);
    v26 = *(v12 + 16);
    OUTLINED_FUNCTION_52();
    v26();
    OUTLINED_FUNCTION_52();
    v26();
    OUTLINED_FUNCTION_52();
    v26();
    v27 = v63;
    v60 = v23;
    OUTLINED_FUNCTION_52();
    v26();
    v59 = v8;
    v28 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    v58 = v28;
    v30 = os_log_type_enabled(v28, v29);
    v61 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 67109888;
      v32 = sub_266E45C2C() & 1;
      v57 = v23;
      v34 = *(v12 + 8);
      v33 = v12 + 8;
      v34(v0, v9);
      *(v31 + 4) = v32;
      *(v31 + 8) = 1024;
      v35 = sub_266E45C3C() & 1;
      v36 = OUTLINED_FUNCTION_78();
      (v34)(v36);
      *(v31 + 10) = v35;
      *(v31 + 14) = 1024;
      v37 = sub_266E45C0C() & 1;
      v38 = OUTLINED_FUNCTION_73();
      (v34)(v38);
      *(v31 + 16) = v37;
      *(v31 + 20) = 1024;
      v39 = sub_266E45C1C() & 1;
      v40 = OUTLINED_FUNCTION_73();
      v63 = v34;
      (v34)(v40);
      *(v31 + 22) = v39;
      v41 = v58;
      _os_log_impl(&dword_266E28000, v58, v57, "hasStrictPrompt: %{BOOL}d hasDictationPrompt: %{BOOL}d strictPrompt: %{BOOL}d dictationPrompt: %{BOOL}d", v31, 0x1Au);
      OUTLINED_FUNCTION_14_0();
    }

    else
    {
      v42 = *(v12 + 8);
      v33 = v12 + 8;
      (v42)(v27, v9);
      v43 = OUTLINED_FUNCTION_73();
      v42(v43);
      v44 = OUTLINED_FUNCTION_78();
      v42(v44);
      v63 = v42;
      (v42)(v0, v9);
      v41 = v58;
    }

    v45 = v60;
    OUTLINED_FUNCTION_52();
    v26();
    v46 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_21();
      v59 = OUTLINED_FUNCTION_23_0();
      v64 = v59;
      *v48 = 136315138;
      sub_266E45C4C();
      v49 = MEMORY[0x26D5F4240]();
      v51 = v50;

      v52 = OUTLINED_FUNCTION_78();
      (v63)(v52);
      v53 = sub_266E2B0EC(v49, v51, &v64);

      *(v48 + 4) = v53;
      OUTLINED_FUNCTION_86(&dword_266E28000, v46, v33, "responseSemanticValues: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v54 = OUTLINED_FUNCTION_78();
      (v63)(v54);
    }

    if ((sub_266E45C2C() & 1) != 0 && (sub_266E45C0C() & 1) != 0 && (sub_266E45C3C() & 1) != 0 && (sub_266E45C1C() & 1) == 0)
    {
      v55 = sub_266E45C4C();
      sub_266E31CD8(v55);
    }

    v63(v45, v9);
  }

  OUTLINED_FUNCTION_32();
}

void OUTLINED_FUNCTION_83(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0xCu);
}

uint64_t sub_266E31CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v3 |= sub_266E4671C() < 4;
      OUTLINED_FUNCTION_27();
      v7 = sub_266E4671C();

      v2 |= v7 < 6;
      if (v3)
      {
        if ((v1 == 1) | v2 & 1)
        {
          return v2 & 1;
        }

        v2 = 0;
      }

      else if (v1 == 1)
      {
        goto LABEL_9;
      }

      --v1;
      v4 += 2;
    }

    while (v1);
    __break(1u);
  }

LABEL_9:
  v2 = 0;
  return v2 & 1;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t GestureRequestProcessor.__deallocating_deinit()
{
  v0 = GestureRequestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t GestureRequestProcessor.deinit()
{
  v0 = sub_266E4633C();

  sub_266E31EC0(v0 + qword_281320FC0);
  return v0;
}

uint64_t sub_266E31EC0(uint64_t a1)
{
  v2 = type metadata accessor for EventDeduper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266E31F7C()
{
  OUTLINED_FUNCTION_31();
  v61 = sub_266E4629C();
  v2 = OUTLINED_FUNCTION_5(v61);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_60();
  v7 = sub_266E4624C();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82D0, &qword_266E478A0);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v59 = v20;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = sub_266E45C5C();
  v25 = OUTLINED_FUNCTION_5(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v60 = v31 - v30;
  v32 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(v0 + v32, v63, &qword_2800E82B0, &unk_266E47190);
  if (!v63[3])
  {
    sub_266E2BE40(v63, &qword_2800E82B0, &unk_266E47190);
    v64 = 0u;
    v65 = 0u;
    goto LABEL_12;
  }

  v57 = v27;
  v58 = v0;
  sub_266E2BE98(v63, v62);
  sub_266E2BE40(v63, &qword_2800E82B0, &unk_266E47190);
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  (*(v10 + 104))(v15, *MEMORY[0x277D5D1C8], v7);
  sub_266E4628C();
  OUTLINED_FUNCTION_53();
  sub_266E4625C();
  (*(v4 + 8))(v1, v61);
  (*(v10 + 8))(v15, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  if (!*(&v65 + 1))
  {
LABEL_12:
    sub_266E2BE40(&v64, &qword_2800E82B8, &qword_266E47890);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
    goto LABEL_13;
  }

  v33 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v23, v33 ^ 1u, 1, v24);
  OUTLINED_FUNCTION_63(v23, 1, v24);
  if (!v34)
  {
    v35 = v57;
    v36 = v60;
    (*(v57 + 32))(v60, v23, v24);
    type metadata accessor for GestureController();
    v37 = v59;
    (*(v35 + 16))(v59, v36, v24);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    sub_266E316F0();
    v42 = v41;
    sub_266E2BE40(v37, &qword_2800E82D0, &qword_266E478A0);
    if ((v42 & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v43 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v43, qword_281320F40);
      v44 = sub_266E463FC();
      v45 = sub_266E465BC();
      if (OUTLINED_FUNCTION_12_1(v45))
      {
        *OUTLINED_FUNCTION_26() = 0;
        OUTLINED_FUNCTION_81(&dword_266E28000, v46, v47, "Not expecting Siri Classic confirmation");
        OUTLINED_FUNCTION_14_0();
      }
    }

    (*(v35 + 8))(v36, v24);
    *(v58 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation) = v42 & 1;
    goto LABEL_18;
  }

LABEL_13:
  sub_266E2BE40(v23, &qword_2800E82D0, &qword_266E478A0);
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v51 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v51, qword_281320F40);
  v52 = sub_266E463FC();
  v53 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v53))
  {
    v54 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v54);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v55, v56, "No legacy context found, not expecting SiriClassic confirmation");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_18:
  OUTLINED_FUNCTION_32();
}

uint64_t OUTLINED_FUNCTION_59()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

void sub_266E324C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_266E324F4();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_266E32524(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_0();
  v6 = sub_266E45AAC();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    v11 = sub_266E461CC();
    v12 = OUTLINED_FUNCTION_13_0(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v10 = a3[6];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
      v10 = a3[7];
    }
  }

  return __swift_getEnumTagSinglePayload(v4 + v10, v3, v9);
}

uint64_t sub_266E32600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_0();
  v8 = sub_266E45AAC();
  v9 = OUTLINED_FUNCTION_13_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_266E461CC();
    v14 = OUTLINED_FUNCTION_13_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
      v12 = a4[7];
    }
  }

  return __swift_storeEnumTagSinglePayload(v5 + v12, v4, v4, v11);
}

uint64_t sub_266E326E4()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_266E461CC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_266E32724()
{
  OUTLINED_FUNCTION_5_0();
  v2 = sub_266E461CC();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_266E32768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_0();
  v6 = sub_266E464AC();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  if (v3 != 0x7FFFFFFF)
  {
    v9 = sub_266E4640C();
    v10 = v4 + *(a3 + 28);
    goto LABEL_8;
  }

  v11 = *(v4 + *(a3 + 24) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_266E32830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_0();
  v8 = sub_266E464AC();
  result = OUTLINED_FUNCTION_13_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return result;
    }

    v11 = sub_266E4640C();
    v12 = v5 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_266E32900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E32930(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_266E32938(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_266E329F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E32A30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266E32A70()
{
  v1 = (type metadata accessor for GestureMapping(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = v0 + v3;
  v6 = sub_266E461CC();
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[7], v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 4, v2 | 7);
}

uint64_t sub_266E32B74()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_266E32BAC()
{
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266E32BE0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_266E32C18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E32C58()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266E32C8C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t GestureBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  sub_266E2BE98(a3, v23);
  sub_266E2BE98(a6, v22);
  sub_266E2BE98(a3, v21);
  v12 = type metadata accessor for GestureOutputSubmitter();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_266E40D10(v21, a4);
  v16 = type metadata accessor for GestureBridge();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_266E32E04(a1, a2, v23, a4, a5, v22, v15, 0, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v19;
}

uint64_t sub_266E32E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, _UNKNOWN **a9)
{
  v12 = sub_266E4634C();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v18 = sub_266E4640C();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = v9 + qword_281320B80;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = (v9 + qword_281320F88);
  *v32 = 0;
  v32[1] = 0;
  sub_266E4629C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = (v9 + qword_281320F90);
  *v37 = 0;
  v37[1] = 0;
  v38 = v9 + qword_281320F98;
  *v38 = 0;
  *(v38 + 8) = 1;
  *(v9 + qword_281320F80) = 0;
  v120 = a3;
  sub_266E2BE98(a3, v123);
  v119 = a6;
  sub_266E2BE98(a6, v122);
  v39 = qword_281320AA0;
  swift_unknownObjectRetain();
  v40 = a5;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v41 = __swift_project_value_buffer(v18, qword_281320F58);
  (*(v21 + 16))(v26, v41, v18);
  v42 = sub_266E462FC();
  v43 = *(v42 + qword_281320F80);
  *(v42 + qword_281320F80) = a7;

  v45 = a8;
  if (!a8)
  {
    v46 = objc_allocWithZone(type metadata accessor for GestureController());
    swift_unknownObjectRetain();
    sub_266E37C94();
    a9 = &off_287872C78;
  }

  v47 = (v42 + qword_281320F90);
  v48 = *(v42 + qword_281320F90);
  *v47 = v45;
  v47[1] = a9;
  v118 = a8;

  if (*v47)
  {
    *(*v47 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_delegate + 8) = &off_287873230;
    swift_unknownObjectWeakAssign();
  }

  sub_266E45CAC();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E45D6C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E4610C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  sub_266E4607C();
  OUTLINED_FUNCTION_3();
  sub_266E4635C();
  v49 = *MEMORY[0x277D60070];
  v50 = *(v15 + 104);
  v51 = OUTLINED_FUNCTION_2();
  v50(v51);
  sub_266E45DBC();
  type metadata accessor for GestureRequestProcessor();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v52 = *(v15 + 8);
  v53 = OUTLINED_FUNCTION_4();
  v52(v53);
  v54 = OUTLINED_FUNCTION_2();
  v50(v54);
  sub_266E45F2C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v55 = OUTLINED_FUNCTION_4();
  v52(v55);
  v56 = OUTLINED_FUNCTION_2();
  v50(v56);
  sub_266E45CBC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v57 = OUTLINED_FUNCTION_4();
  v52(v57);
  v58 = OUTLINED_FUNCTION_2();
  v50(v58);
  sub_266E45D9C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v59 = OUTLINED_FUNCTION_4();
  v52(v59);
  v60 = OUTLINED_FUNCTION_2();
  v50(v60);
  sub_266E45DCC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v61 = OUTLINED_FUNCTION_4();
  v52(v61);
  v62 = OUTLINED_FUNCTION_2();
  v50(v62);
  sub_266E45E5C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v63 = OUTLINED_FUNCTION_4();
  v52(v63);
  v64 = OUTLINED_FUNCTION_2();
  v50(v64);
  sub_266E45E0C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v65 = OUTLINED_FUNCTION_4();
  v52(v65);
  v66 = OUTLINED_FUNCTION_2();
  v50(v66);
  sub_266E45FEC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v67 = OUTLINED_FUNCTION_4();
  v52(v67);
  v68 = OUTLINED_FUNCTION_2();
  v50(v68);
  sub_266E45E2C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v69 = OUTLINED_FUNCTION_4();
  v52(v69);
  v70 = OUTLINED_FUNCTION_2();
  v50(v70);
  sub_266E45F1C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v71 = OUTLINED_FUNCTION_4();
  v52(v71);
  v72 = OUTLINED_FUNCTION_2();
  v50(v72);
  sub_266E45E4C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v73 = OUTLINED_FUNCTION_4();
  v52(v73);
  v74 = OUTLINED_FUNCTION_2();
  v50(v74);
  sub_266E4600C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v75 = OUTLINED_FUNCTION_4();
  v52(v75);
  v76 = *MEMORY[0x277D60078];
  v77 = OUTLINED_FUNCTION_17();
  v50(v77);
  sub_266E45D8C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v78 = OUTLINED_FUNCTION_4();
  v52(v78);
  v79 = *MEMORY[0x277D60080];
  v80 = OUTLINED_FUNCTION_17();
  v50(v80);
  sub_266E45E1C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v81 = OUTLINED_FUNCTION_4();
  v52(v81);
  v82 = *MEMORY[0x277D60088];
  v83 = OUTLINED_FUNCTION_17();
  v50(v83);
  sub_266E45DDC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v84 = OUTLINED_FUNCTION_4();
  v52(v84);
  v85 = *MEMORY[0x277D60090];
  v86 = OUTLINED_FUNCTION_17();
  v50(v86);
  sub_266E45C9C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v87 = OUTLINED_FUNCTION_4();
  v52(v87);
  v88 = OUTLINED_FUNCTION_2();
  v50(v88);
  sub_266E45D7C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v89 = OUTLINED_FUNCTION_4();
  v52(v89);
  v90 = *MEMORY[0x277D60098];
  v91 = OUTLINED_FUNCTION_2();
  v50(v91);
  sub_266E460EC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v92 = OUTLINED_FUNCTION_4();
  v52(v92);
  v93 = OUTLINED_FUNCTION_2();
  v50(v93);
  sub_266E460FC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v94 = OUTLINED_FUNCTION_4();
  v52(v94);
  v95 = OUTLINED_FUNCTION_2();
  v50(v95);
  sub_266E45FFC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v96 = OUTLINED_FUNCTION_4();
  v52(v96);
  v97 = OUTLINED_FUNCTION_2();
  v50(v97);
  sub_266E4604C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v98 = OUTLINED_FUNCTION_4();
  v52(v98);
  v99 = OUTLINED_FUNCTION_2();
  v50(v99);
  sub_266E45F3C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v100 = OUTLINED_FUNCTION_4();
  v52(v100);
  v101 = OUTLINED_FUNCTION_2();
  v50(v101);
  sub_266E4601C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v102 = OUTLINED_FUNCTION_4();
  v52(v102);
  v103 = OUTLINED_FUNCTION_2();
  v50(v103);
  sub_266E4602C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v104 = OUTLINED_FUNCTION_4();
  v52(v104);
  v105 = OUTLINED_FUNCTION_2();
  v50(v105);
  sub_266E4605C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v106 = OUTLINED_FUNCTION_4();
  v52(v106);
  v107 = OUTLINED_FUNCTION_2();
  v50(v107);
  sub_266E45DFC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v108 = OUTLINED_FUNCTION_4();
  v52(v108);
  v109 = OUTLINED_FUNCTION_2();
  v50(v109);
  sub_266E45E6C();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v110 = OUTLINED_FUNCTION_4();
  v52(v110);
  v111 = OUTLINED_FUNCTION_2();
  v50(v111);
  sub_266E45CCC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  v112 = OUTLINED_FUNCTION_4();
  v52(v112);
  v113 = OUTLINED_FUNCTION_2();
  v50(v113);
  sub_266E45DAC();
  OUTLINED_FUNCTION_1();
  sub_266E462EC();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  v114 = OUTLINED_FUNCTION_4();
  v52(v114);
  return v42;
}

void sub_266E34160()
{
  OUTLINED_FUNCTION_16();
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F58);
  v3 = v1;
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v20 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_266E4651C();
    v11 = v10;

    v12 = sub_266E2B0EC(v9, v11, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_266E28000, v4, v5, "Handling SiriDismissedMessage: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v13 = qword_281320F90;
  v14 = *(v0 + qword_281320F90);
  if (v14)
  {
    v15 = v14;
    sub_266E2C3FC(5);

    v16 = *(v0 + v13);
    if (v16)
    {
      v17 = v16;
      sub_266E2C640();

      v18 = *(v0 + v13);
      if (v18)
      {
        v19 = v18;
        sub_266E2DC3C();
      }
    }
  }
}

void sub_266E34344()
{
  OUTLINED_FUNCTION_16();
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F58);
  v3 = v1;
  v4 = sub_266E463FC();
  v5 = sub_266E465BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_23_0();
    v25 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_266E4651C();
    v11 = v10;

    v12 = sub_266E2B0EC(v9, v11, &v25);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_20(&dword_266E28000, v13, v14, "Handling AnnounceNotificationHandlingStateUpdatedMessage: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
    OUTLINED_FUNCTION_6();
    MEMORY[0x26D5F4920]();
  }

  v15 = sub_266E4606C();
  v16 = *(v0 + qword_281320F98 + 8);
  if ((v17 & 1) == 0)
  {
    if (v15 != *(v0 + qword_281320F98))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_15:
    oslog = sub_266E463FC();
    v22 = sub_266E465CC();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266E28000, oslog, v22, "External notification request handler state did not change", v23, 2u);
      OUTLINED_FUNCTION_6();
      MEMORY[0x26D5F4920]();
    }

    goto LABEL_17;
  }

  if (*(v0 + qword_281320F98 + 8))
  {
    goto LABEL_15;
  }

LABEL_7:
  v18 = sub_266E4606C();
  v20 = *(v0 + qword_281320F90);
  if (!v20)
  {
    return;
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  oslog = v20;
  sub_266E3D24C(v21);
LABEL_17:
}

uint64_t sub_266E345D4()
{
  sub_266E2BE40(v0 + qword_281320B80, &qword_2800E82B0, &unk_266E47190);
  sub_266E2BE40(v0 + qword_281320FA0, &qword_2800E8080, &qword_266E479C0);
  v1 = *(v0 + qword_281320F88 + 8);

  sub_266E2BE40(v0 + qword_281320FA8, &qword_2800E8098, &qword_266E479F0);

  v2 = *(v0 + qword_281320F80);
}

uint64_t GestureBridge.deinit()
{
  v0 = sub_266E4630C();
  sub_266E2BE40(v0 + qword_281320B80, &qword_2800E82B0, &unk_266E47190);
  sub_266E2BE40(v0 + qword_281320FA0, &qword_2800E8080, &qword_266E479C0);
  v1 = *(v0 + qword_281320F88 + 8);

  sub_266E2BE40(v0 + qword_281320FA8, &qword_2800E8098, &qword_266E479F0);

  v2 = *(v0 + qword_281320F80);

  return v0;
}

uint64_t GestureBridge.__deallocating_deinit()
{
  v0 = GestureBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GestureBridge()
{
  result = qword_281320B70;
  if (!qword_281320B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E347F0()
{
  v1 = OUTLINED_FUNCTION_15();
  result = nullsub_1(v1);
  *v0 = result;
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

unint64_t sub_266E34864()
{
  result = qword_2800E8088;
  if (!qword_2800E8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8088);
  }

  return result;
}

void sub_266E348B8()
{
  sub_266E34A08(319, &qword_281320F18, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_266E34A08(319, &qword_281320EF0, MEMORY[0x277D5D298]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_266E34A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266E4668C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_266E34A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8108, &unk_266E472C0);
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

void sub_266E34BFC(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t getEnumTagSinglePayload for GestureBridgeError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for GestureBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266E34E2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000002ELL;
  }
}

uint64_t sub_266E34E9C(char a1)
{
  sub_266E4678C();
  MEMORY[0x26D5F4450](a1 & 1);
  return sub_266E467AC();
}

uint64_t sub_266E34EF4()
{
  v1 = *v0;
  sub_266E4678C();
  MEMORY[0x26D5F4450](v1);
  return sub_266E467AC();
}

unint64_t sub_266E34F60()
{
  result = qword_2800E81E0;
  if (!qword_2800E81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81E0);
  }

  return result;
}

void sub_266E3500C()
{
  sub_266E45AAC();
  if (v0 <= 0x3F)
  {
    sub_266E461CC();
    if (v1 <= 0x3F)
    {
      sub_266E350B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266E350B8()
{
  if (!qword_281320F00)
  {
    sub_266E4619C();
    v0 = sub_266E4668C();
    if (!v1)
    {
      atomic_store(v0, &qword_281320F00);
    }
  }
}

uint64_t sub_266E35168()
{
  result = sub_266E461CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266E351FC()
{
  result = sub_266E464AC();
  if (v1 <= 0x3F)
  {
    result = sub_266E4640C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266E35298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_266E352EC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_266E37738(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_25(v3);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x747065636361;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_24();
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = OUTLINED_FUNCTION_25(v6);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463656A6572;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_24();
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_266E37738((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x7373696D736964;
    *(v11 + 5) = 0xE700000000000000;
  }

  v12 = OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  sub_266E37A58(&qword_2800E8218, &qword_2800E8210, &qword_266E47740);
  sub_266E464EC();

  return OUTLINED_FUNCTION_28();
}

uint64_t sub_266E354C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E354EC();
  *a1 = result;
  return result;
}

uint64_t sub_266E354F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35524(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266E3552C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E3555C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266E3556C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266E355A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266E355A0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_266E355C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266E355F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266E355F8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_266E35628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35658(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_266E356B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266E35750(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_266E37A10(a4, a5);
  sub_266E4657C();
  sub_266E4657C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266E4673C();
  }

  return v8 & 1;
}

uint64_t sub_266E35828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266E35298(a1);
  *a2 = result;
  return result;
}

void sub_266E35850(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    if ([v4 acceptGesture] == 2 && objc_msgSend(v4, sel_rejectGesture) == 1)
    {

      v5 = *MEMORY[0x277D5CF88];
      v6 = sub_266E461CC();
      OUTLINED_FUNCTION_10(v6);
      oslog = *(v7 + 104);
      (oslog)(a2, v5, v6);
      OUTLINED_FUNCTION_35();
      v9 = MEMORY[0x277D5CF80];
    }

    else
    {
      if ([v4 acceptGesture] != 1 || objc_msgSend(v4, sel_rejectGesture) != 2)
      {
        if (qword_281320AA0 != -1)
        {
          OUTLINED_FUNCTION_3_0();
        }

        v10 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v10, qword_281320F58);
        v11 = v4;
        v12 = sub_266E463FC();
        v13 = sub_266E465CC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = OUTLINED_FUNCTION_21();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v11;
          *v15 = a1;
          v16 = v11;
          _os_log_impl(&dword_266E28000, v12, v13, "Invalid configuration: %@, using default values", v14, 0xCu);
          sub_266E2BE40(v15, &qword_2800E8278, &qword_266E478D0);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_14_0();
        }
      }

      v17 = *MEMORY[0x277D5CF80];
      v6 = sub_266E461CC();
      OUTLINED_FUNCTION_10(v6);
      oslog = *(v18 + 104);
      (oslog)(a2, v17, v6);
      OUTLINED_FUNCTION_35();
      v9 = MEMORY[0x277D5CF88];
    }

    v19 = *v9;

    (oslog)(a2 + v8, v19, v6);
  }

  else
  {
    v20 = *MEMORY[0x277D5CF80];
    v21 = sub_266E461CC();
    OUTLINED_FUNCTION_10(v21);
    v23 = *(v22 + 104);
    v23(a2, v20, v21);
    OUTLINED_FUNCTION_35();
    v23(a2 + v24, *MEMORY[0x277D5CF88], v21);
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0();
    }

    v25 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v25, qword_281320F58);
    osloga = sub_266E463FC();
    v26 = sub_266E465CC();
    if (os_log_type_enabled(osloga, v26))
    {
      v27 = OUTLINED_FUNCTION_26();
      *v27 = 0;
      _os_log_impl(&dword_266E28000, osloga, v26, "Received nil gesture configuration, using default gesture mapping", v27, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }
}

void sub_266E35BE0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = sub_266E461CC();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = MEMORY[0x277D5CF88];
  v14 = MEMORY[0x277D5CF80];
  v68 = v0;
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_6_0();
    v1(v15);
    OUTLINED_FUNCTION_0_0();
    v16 = OUTLINED_FUNCTION_27();
    v21 = sub_266E35750(v16, v17, v18, v19, v20);
    v22 = *(v7 + 8);
    v23 = OUTLINED_FUNCTION_12_0();
    v24(v23);
    if (v21)
    {
      v25 = 1;
      goto LABEL_16;
    }
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_8;
  }

  v26 = *(type metadata accessor for GestureMapping(0) + 20);
  v27 = OUTLINED_FUNCTION_6_0();
  v1(v27);
  OUTLINED_FUNCTION_0_0();
  LOBYTE(v26) = sub_266E35750(v0 + v26, v12, v28, v29, MEMORY[0x277D5CF98]);
  v30 = *(v7 + 8);
  v31 = OUTLINED_FUNCTION_12_0();
  v32(v31);
  if (v26)
  {
    v25 = 1;
    if ((v3 & 1) == 0)
    {
      v33 = v13;
      goto LABEL_18;
    }
  }

  else
  {
LABEL_8:
    v33 = v13;
    if ((v3 & 4) != 0)
    {
      v34 = *(type metadata accessor for GestureMapping(0) + 20);
      v35 = OUTLINED_FUNCTION_6_0();
      v1(v35);
      OUTLINED_FUNCTION_0_0();
      v25 = sub_266E35750(v68 + v34, v12, v36, v37, MEMORY[0x277D5CF98]);
      v38 = OUTLINED_FUNCTION_9_0();
      v14(v38);
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
          goto LABEL_37;
        }

        v25 = 0;
LABEL_18:
        v46 = *(type metadata accessor for GestureMapping(0) + 20);
        v1 = *(v7 + 104);
        (v1)(v12, *v33, v4);
        OUTLINED_FUNCTION_0_0();
        LOBYTE(v46) = sub_266E35750(v68 + v46, v12, v47, v48, MEMORY[0x277D5CF98]);
        v49 = OUTLINED_FUNCTION_9_0();
        v14(v49);
        if (v46)
        {
          goto LABEL_19;
        }

LABEL_21:
        if ((v3 & 4) != 0)
        {
          v51 = *(type metadata accessor for GestureMapping(0) + 20);
          (v1)(v12, *v33, v4);
          OUTLINED_FUNCTION_0_0();
          v50 = sub_266E35750(v68 + v51, v12, v52, v53, MEMORY[0x277D5CF98]);
          v54 = OUTLINED_FUNCTION_12_0();
          v14(v54);
          if ((v25 & 1) == 0)
          {
            if ((v50 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_37;
          }

          v50 = 0;
        }

        goto LABEL_25;
      }

      v25 = 0;
      v1 = *(v7 + 104);
    }
  }

LABEL_16:
  (v1)(v12, *v13, v4);
  OUTLINED_FUNCTION_0_0();
  v39 = OUTLINED_FUNCTION_27();
  v44 = sub_266E35750(v39, v40, v41, v42, v43);
  v45 = OUTLINED_FUNCTION_9_0();
  v14(v45);
  if ((v44 & 1) == 0)
  {
    v33 = v13;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_19:
  if ((v25 & 1) == 0)
  {
LABEL_32:
    if (qword_281320AA0 != -1)
    {
      OUTLINED_FUNCTION_3_0();
    }

    v63 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v63, qword_281320F58);
    v64 = sub_266E463FC();
    v65 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v65))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v66, v67, "🙂‍↔️ Accepting shakes");
      OUTLINED_FUNCTION_10_0();
    }

    goto LABEL_37;
  }

  v50 = 1;
LABEL_25:
  if (qword_281320AA0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v55 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v55, qword_281320F58);
  v56 = sub_266E463FC();
  v57 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v57))
  {
    *OUTLINED_FUNCTION_26() = 0;
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v58, v59, v60, v61, v62, 2u);
    OUTLINED_FUNCTION_11_0();
  }

  if (v50)
  {
    goto LABEL_32;
  }

LABEL_37:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E36104()
{
  v1 = sub_266E461CC();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = *(v4 + 104);
  v10(v8 - v7, *MEMORY[0x277D5CF88], v1);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_28();
  v16 = sub_266E35750(v11, v12, v13, v14, v15);
  v17 = *(v4 + 8);
  v17(v9, v1);
  if (v16)
  {
    v18 = *(type metadata accessor for GestureMapping(0) + 20);
    v10(v9, *MEMORY[0x277D5CF80], v1);
    OUTLINED_FUNCTION_0_0();
    v21 = sub_266E35750(v0 + v18, v9, v19, v20, MEMORY[0x277D5CF98]);
    v17(v9, v1);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_266E362B4()
{
  v0 = sub_266E461CC();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = *(v3 + 16);
  v10 = OUTLINED_FUNCTION_28();
  v11(v10);
  v12 = (*(v3 + 88))(v8, v0);
  if (v12 == *MEMORY[0x277D5CF80])
  {
    return 0x1000000000000011;
  }

  if (v12 == *MEMORY[0x277D5CF88])
  {
    return 0x1000000000000013;
  }

  (*(v3 + 8))(v8, v0);
  return 0x55208FB8EFBC80E2;
}

uint64_t sub_266E36418(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_0();
  if (sub_266E35750(v4, v5, v6, v7, MEMORY[0x277D5CF98]))
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_0_0();
    v11 = sub_266E35750(a1 + v8, a2 + v8, v9, v10, MEMORY[0x277D5CF98]);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_266E364D0()
{
  result = qword_2800E81F0;
  if (!qword_2800E81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81F0);
  }

  return result;
}

unint64_t sub_266E36528()
{
  result = qword_2800E81F8;
  if (!qword_2800E81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E81F8);
  }

  return result;
}

unint64_t sub_266E36580()
{
  result = qword_2800E8200;
  if (!qword_2800E8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8200);
  }

  return result;
}

unint64_t sub_266E365D8()
{
  result = qword_2800E8208;
  if (!qword_2800E8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8208);
  }

  return result;
}

uint64_t sub_266E3662C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = type metadata accessor for GestureResponse(0);
  sub_266E36B64(v1 + v6[7], v5);
  v7 = sub_266E4619C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_266E2BE40(v5, &qword_2800E81E8, &unk_266E474D0);
    v8 = 0x8000000266E47CC0;
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = sub_266E4612C();
    v8 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_266E466EC();
  MEMORY[0x26D5F4210](91, 0xE100000000000000);
  v11 = v1 + v6[5];
  sub_266E45A6C();
  sub_266E4659C();
  MEMORY[0x26D5F4210](0xD000000000000013, 0x8000000266E47CE0);
  v12 = v6[6];
  sub_266E461CC();
  sub_266E4670C();
  MEMORY[0x26D5F4210](540945696, 0xE400000000000000);
  v13 = sub_266E352EC(*v1);
  MEMORY[0x26D5F4210](v13);

  MEMORY[0x26D5F4210](0x20726F6620, 0xE500000000000000);
  MEMORY[0x26D5F4210](v9, v8);

  return v15[0];
}

void sub_266E3685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_266E4619C();
  v27 = OUTLINED_FUNCTION_5(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8228, &qword_266E47750);
  v40 = OUTLINED_FUNCTION_10(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &a9 - v43;
  if (*v25 == *v23)
  {
    v45 = type metadata accessor for GestureResponse(0);
    v46 = v45[5];
    if (sub_266E45A7C())
    {
      v47 = v45[6];
      OUTLINED_FUNCTION_0_0();
      if (sub_266E35750(v25 + v48, v23 + v48, v49, v50, MEMORY[0x277D5CF98]))
      {
        v51 = v45[7];
        v52 = *(v39 + 48);
        sub_266E36B64(v25 + v51, v44);
        sub_266E36B64(v23 + v51, &v44[v52]);
        OUTLINED_FUNCTION_34(v44);
        if (!v53)
        {
          sub_266E36B64(v44, v38);
          OUTLINED_FUNCTION_34(&v44[v52]);
          if (!v53)
          {
            v54 = *(v29 + 32);
            v55 = OUTLINED_FUNCTION_18_0();
            v56(v55);
            sub_266E37A10(&qword_2800E8230, MEMORY[0x277D5CE58]);
            OUTLINED_FUNCTION_12_0();
            sub_266E464FC();
            v57 = *(v29 + 8);
            v57(v34, v26);
            v57(v38, v26);
            sub_266E2BE40(v44, &qword_2800E81E8, &unk_266E474D0);
            goto LABEL_13;
          }

          (*(v29 + 8))(v38, v26);
LABEL_12:
          sub_266E2BE40(v44, &qword_2800E8228, &qword_266E47750);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_34(&v44[v52]);
        if (!v53)
        {
          goto LABEL_12;
        }

        sub_266E2BE40(v44, &qword_2800E81E8, &unk_266E474D0);
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E36B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
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

uint64_t sub_266E36C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 headGesture];
  v4 = sub_266E461CC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D5CF90];
  if (v3 == 2)
  {
    v6 = MEMORY[0x277D5CF88];
  }

  if (v3 == 1)
  {
    v6 = MEMORY[0x277D5CF80];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_266E36CC0(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7055646F4ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E776F44646F4ELL;
      break;
    case 2:
      result = 0x66654C656B616853;
      break;
    case 3:
      result = 0x676952656B616853;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_266E36D64()
{
  OUTLINED_FUNCTION_31();
  v22 = v0;
  v1 = sub_266E45A0C();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v21 = sub_266E464CC();
  v10 = sub_266E464CC();
  v11 = [objc_opt_self() sharedPreferences];
  v12 = [v11 _languageCodeWithFallback_];

  if (v12)
  {
    sub_266E4651C();

    v13 = sub_266E4653C();
    v15 = v14;
  }

  else
  {
    v13 = 28261;
    v15 = 0xE200000000000000;
  }

  sub_266E37914();
  sub_266E37968();
  v16 = sub_266E464DC();

  if (v16)
  {
    v17 = v22;
  }

  else
  {
    sub_266E379BC();
    sub_266E466AC();

    sub_266E37A10(&qword_2800E8258, MEMORY[0x277CC8848]);
    v18 = OUTLINED_FUNCTION_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    sub_266E37A58(&qword_2800E8268, &qword_2800E8260, &qword_266E47758);
    sub_266E466CC();
    v20 = sub_266E4669C();
    (*(v4 + 8))(v9, v1);

    if (v20[2])
    {
      v13 = v20[4];
      v15 = v20[5];
    }

    else
    {
      v15 = 0xE200000000000000;
      v13 = 28261;
    }

    v17 = v22;
  }

  if (v17 == 1)
  {

    sub_266E37168(v13, v15, v21);
  }

  else
  {

    if (v17 == 2)
    {
      sub_266E37168(v13, v15, v10);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E37168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266E37AA0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_266E371C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = OUTLINED_FUNCTION_33();
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E4650C();
    v4 = OUTLINED_FUNCTION_18_0();
    v6 = [v4 v5];

    if (v6)
    {

      return 1;
    }

    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v16 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v16, qword_281320F40);
    v17 = sub_266E463FC();
    v18 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v18))
    {
      *OUTLINED_FUNCTION_26() = 0;
      OUTLINED_FUNCTION_15_0(&dword_266E28000, v19, v20, "shouldUseSystemSounds: false");
      OUTLINED_FUNCTION_10_0();
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v2 = sub_266E463FC();
    v9 = sub_266E465CC();
    if (OUTLINED_FUNCTION_23(v9))
    {
      v10 = OUTLINED_FUNCTION_21();
      v21 = OUTLINED_FUNCTION_23_0();
      *(v10 + 4) = OUTLINED_FUNCTION_21_0(4.8149e-34, v21);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_11_0();
    }
  }

  return 0;
}

void sub_266E37378(uint64_t a1)
{
  v2 = sub_266E45AAC();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_266E2DFC8(0xD00000000000001CLL, 0x8000000266E47E60);
  if (v10)
  {
    v11 = v10;
    switch(a1)
    {
      case 4:
        sub_266E45A9C();
        v21 = v8;
        sub_266E45A5C();
        v24 = OUTLINED_FUNCTION_8_1();
        v25(v24);
        break;
      case 2:
        sub_266E45A9C();
        v21 = v8;
        sub_266E45A5C();
        v22 = OUTLINED_FUNCTION_8_1();
        v23(v22);
        OUTLINED_FUNCTION_29();
        break;
      case 1:
        sub_266E45A9C();
        sub_266E45A5C();
        v12 = OUTLINED_FUNCTION_8_1();
        v13(v12);
        OUTLINED_FUNCTION_29();
        v14 = sub_266E4650C();
        v15 = OUTLINED_FUNCTION_18_0();
        [v15 v16];

        return;
      default:
        if (qword_281320A90 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v29 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v29, qword_281320F40);
        v36 = sub_266E463FC();
        v30 = sub_266E465CC();
        if (os_log_type_enabled(v36, v30))
        {
          v31 = OUTLINED_FUNCTION_21();
          v32 = OUTLINED_FUNCTION_23_0();
          v37 = v32;
          *v31 = 136315138;
          v33 = sub_266E352EC(a1);
          v35 = sub_266E2B0EC(v33, v34, &v37);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_266E28000, v36, v30, "Tried to log unhandled user intent usage date: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_14_0();

          goto LABEL_17;
        }

        goto LABEL_19;
    }

    v26 = sub_266E4650C();
    v27 = OUTLINED_FUNCTION_18_0();
    [v27 v28];

    return;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v17 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
  v36 = sub_266E463FC();
  v18 = sub_266E465CC();
  if (os_log_type_enabled(v36, v18))
  {
    v19 = OUTLINED_FUNCTION_21();
    v20 = OUTLINED_FUNCTION_23_0();
    v37 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_266E2B0EC(0xD000000000000013, 0x8000000266E47D00, &v37);
    _os_log_impl(&dword_266E28000, v36, v18, "UserDefault suite: %s couldn't be opened.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_14_0();
LABEL_17:

    return;
  }

LABEL_19:
}

char *sub_266E37738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8220, &qword_266E47748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266E37840(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266E45C8C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_266E45C8C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_266E37914()
{
  result = qword_2800E8240;
  if (!qword_2800E8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8240);
  }

  return result;
}

unint64_t sub_266E37968()
{
  result = qword_2800E8248;
  if (!qword_2800E8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8248);
  }

  return result;
}

unint64_t sub_266E379BC()
{
  result = qword_2800E8250;
  if (!qword_2800E8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E8250);
  }

  return result;
}

uint64_t sub_266E37A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266E37A58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_266E37AA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266E4678C();
  sub_266E4654C();
  v6 = sub_266E467AC();

  return sub_266E37B18(a1, a2, v6);
}

unint64_t sub_266E37B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266E4673C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_25@<X0>(unint64_t a1@<X8>)
{

  return sub_266E37738((a1 > 1), v2, 1, v1);
}

id OUTLINED_FUNCTION_33()
{

  return sub_266E2DFC8(0xD000000000000013, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_35()
{
  result = type metadata accessor for GestureMapping(0);
  v1 = *(result + 20);
  return result;
}

void sub_266E37C94()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v66 = v2;
  v65 = sub_266E4640C();
  v3 = OUTLINED_FUNCTION_5(v65);
  v68 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v67 = v8 - v7;
  OUTLINED_FUNCTION_55();
  v69 = sub_266E465FC();
  v9 = OUTLINED_FUNCTION_5(v69);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v62 = v15 - v14;
  OUTLINED_FUNCTION_55();
  v16 = sub_266E465DC();
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v20 = sub_266E4646C();
  v21 = OUTLINED_FUNCTION_12(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v61 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue;
  sub_266E408CC(0, &qword_281320A48, 0x277D85C78);
  sub_266E4644C();
  v71 = MEMORY[0x277D84F90];
  sub_266E40994(&qword_281320A50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8328, &qword_266E478E0);
  sub_266E409D8(&unk_281320A60, &qword_2800E8328, &qword_266E478E0);
  sub_266E466CC();
  v64 = *MEMORY[0x277D85260];
  v63 = *(v11 + 104);
  v63(v62);
  *&v1[v61] = sub_266E4661C();
  v24 = &v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionState];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState] = 0;
  sub_266E35850(0, &v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping]);
  type metadata accessor for GestureMapping(0);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver] = 0;
  v29 = &v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureDeduper];
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v30 = __swift_project_value_buffer(v65, qword_281320F40);
  v31 = *(v68 + 16);
  v31(v67, v30, v65);
  sub_266E4647C();
  v32 = type metadata accessor for EventDeduper(0);
  v33 = &v29[v32[6]];
  *v33 = 1953066569;
  *(v33 + 1) = 0xE400000000000000;
  v34 = v32[7];
  if (qword_281320AA0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v65, qword_281320F58);
  v31(&v29[v34], v35, v65);
  *&v29[v32[5]] = 1000000;
  (*(v68 + 40))(&v29[v34], v67, v65);
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_waitingForTTS] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_requestActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager] = 0;
  sub_266E4619C();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_promptedForConfirmation] = 0;
  v40 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserverQueue;
  sub_266E4645C();
  v71 = MEMORY[0x277D84F90];
  sub_266E466CC();
  (v63)(v62, v64, v69);
  *&v1[v40] = sub_266E4661C();
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriXConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriClassicConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriPommesConfirmation] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation] = 0;
  sub_266E45AEC();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession] = 0;
  v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_internalTesting] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult] = 0;
  *&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] = v66;
  swift_unknownObjectRetain();
  v45 = sub_266E463FC();
  v46 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v46))
  {
    v47 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v47);
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_10_0();
  }

  v70.receiver = v1;
  v70.super_class = type metadata accessor for GestureController();
  v54 = objc_msgSendSuper2(&v70, sel_init);
  v55 = *&v54[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserverQueue];
  objc_allocWithZone(MEMORY[0x277CEF338]);
  v56 = v54;
  v57 = v55;
  v58 = sub_266E40634(0xD000000000000023, 0x8000000266E483C0, 1, v55, v54);
  v59 = *&v56[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver];
  *&v56[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_siriObserver] = v58;

  v60 = [objc_opt_self() sharedPreferences];
  LODWORD(v55) = [v60 allowHeadGestureInjection];

  if (v55)
  {
    sub_266E38474();
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32();
}

void sub_266E383F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager);
  if (v1)
  {
    v2 = v1;
    v3 = sub_266E45BBC();

    AFIsInternalInstall();
    sub_266E45B3C();
  }
}

uint64_t sub_266E3845C(uint64_t a1)
{
  v1 = 4;
  if (a1 == 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void sub_266E38474()
{
  v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_internalTesting] = 1;
  v1 = *&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
  if (v1)
  {
    if ([*&v0[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_])
    {
      OUTLINED_FUNCTION_54();
      v2 = swift_allocObject();
      *(v2 + 16) = v0;
      v5[4] = sub_266E4088C;
      v5[5] = v2;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 1107296256;
      v5[2] = sub_266E38578;
      v5[3] = &block_descriptor_190;
      v3 = _Block_copy(v5);
      v4 = v0;
      [v1 registerInternalGestureTestingHandler_];
      _Block_release(v3);
    }
  }
}

uint64_t sub_266E38578(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_266E408A4;
  }

  else
  {
    v9 = 0;
  }

  v7(a2, a3, v8, v9);
  sub_266E40894(v8);
}

void sub_266E38638(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    a3 = sub_266E4650C();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1 & 1);
}

uint64_t sub_266E386A4(uint64_t a1, char a2, void (*a3)(void, void, void), uint64_t a4, char *a5)
{
  v10 = sub_266E4642C();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266E4646C();
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *&a5[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a5;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  v19 = objc_opt_self();
  v20 = a5;
  sub_266E408BC(a3);
  v37 = v20;
  sub_266E408BC(a3);
  v21 = [v19 currentQueue];
  v22 = [v21 underlyingQueue];

  if (v22 && (sub_266E408CC(0, &qword_281320A48, 0x277D85C78), v23 = v38, v24 = sub_266E4666C(), v23, v22, (v24 & 1) != 0))
  {
    v25 = v37;
    sub_266E38AFC(a1, v37, a2 & 1, a3, a4);

    return sub_266E40894(a3);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = sub_266E408AC;
    *(v27 + 24) = v18;
    aBlock[4] = sub_266E40A50;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_203;
    v28 = _Block_copy(aBlock);

    v29 = v17;
    sub_266E4643C();
    v39 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    v30 = v33;
    v32 = a3;
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    v31 = v36;
    sub_266E466CC();
    MEMORY[0x26D5F42C0](0, v29, v31, v28);
    _Block_release(v28);
    (*(v30 + 8))(v31, v10);
    (*(v35 + 8))(v29, v34);

    return sub_266E40894(v32);
  }
}

void sub_266E38AFC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_266E45AEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266E45AAC();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) <= 1)
  {
    v21 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing);
    v71 = a5;
    if (v21)
    {
      v66 = v21;
      v68 = v10;
      v69 = v18;
      v70 = v17;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_266E466EC();

      v22 = "🧪 Simulating ";
LABEL_12:
      v72 = 0x1000000000000010;
      v73 = (v22 - 32) | 0x8000000000000000;
      if (a1 == 1)
      {
        v30 = 0x1000000000000011;
      }

      else
      {
        v30 = 0x1000000000000013;
      }

      if (a1 == 1)
      {
        v31 = "shake 🙂‍↔️";
      }

      else
      {
        v31 = "ble is not engaged";
      }

      MEMORY[0x26D5F4210](v30, v31 | 0x8000000000000000);

      v32 = v72;
      v33 = v73;
      v67 = v11;
      v34 = qword_281320A90;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_266E4640C();
      __swift_project_value_buffer(v35, qword_281320F40);

      v36 = sub_266E463FC();
      v37 = sub_266E465BC();

      v38 = os_log_type_enabled(v36, v37);
      v65 = v32;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v64 = a2;
        v41 = a4;
        v42 = v40;
        v72 = v40;
        *v39 = 136315138;
        v43 = sub_266E2B0EC(v32, v33, &v72);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_266E28000, v36, v37, "%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v44 = v42;
        a4 = v41;
        a2 = v64;
        MEMORY[0x26D5F4920](v44, -1, -1);
        MEMORY[0x26D5F4920](v39, -1, -1);
      }

      else
      {
      }

      v45 = [objc_allocWithZone(MEMORY[0x277D0FB50]) init];
      sub_266E45A9C();
      v46 = sub_266E45A5C();
      [v45 setTimestamp_];

      v47 = 4;
      if (a1 == 2)
      {
        v47 = 2;
      }

      if (a1 == 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      [v45 setHeadGesture_];
      sub_266E408CC(0, &unk_2800E8318, 0x277CCABB0);
      v49 = sub_266E4665C();
      [v45 setAvgConfidence_];

      [v45 setHeadGesturePart_];
      sub_266E45ADC();
      v50 = sub_266E45ACC();
      (*(v67 + 8))(v14, v68);
      [v45 setUuid_];

      if (a4)
      {
        a4(1, v65, v33);
      }

      if (v66)
      {
        sub_266E3BAF8();

        (*(v69 + 8))(v20, v70);
      }

      else
      {
        (*(v69 + 8))(v20, v70);
        v51 = *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult);
        *(a2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult) = v45;
      }

      return;
    }

    if (a3)
    {
      v66 = v21;
      v68 = v10;
      v69 = v18;
      v70 = v17;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_266E466EC();

      v22 = "🧪 Scheduling ";
      goto LABEL_12;
    }

    v52 = a4;
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_266E466EC();
    MEMORY[0x26D5F4210](0x1000000000000010, 0x8000000266E48270);
    if (a1 == 1)
    {
      v53 = 0x1000000000000011;
    }

    else
    {
      v53 = 0x1000000000000013;
    }

    if (a1 == 1)
    {
      v54 = "shake 🙂‍↔️";
    }

    else
    {
      v54 = "ble is not engaged";
    }

    MEMORY[0x26D5F4210](v53, v54 | 0x8000000000000000);

    MEMORY[0x26D5F4210](0xD000000000000022, 0x8000000266E48290);
    v56 = v72;
    v55 = v73;
    v57 = qword_281320A90;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = sub_266E4640C();
    __swift_project_value_buffer(v58, qword_281320F40);

    v59 = sub_266E463FC();
    v60 = sub_266E465CC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v72 = v62;
      *v61 = 136315138;
      v63 = sub_266E2B0EC(v56, v55, &v72);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_266E28000, v59, v60, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x26D5F4920](v62, -1, -1);
      MEMORY[0x26D5F4920](v61, -1, -1);

      if (!v52)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (!v52)
      {
LABEL_47:

        return;
      }
    }

    v52(0, v56, v55);
    goto LABEL_47;
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v23 = sub_266E4640C();
  __swift_project_value_buffer(v23, qword_281320F40);
  v24 = sub_266E463FC();
  v25 = sub_266E465CC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = a4;
    v28 = swift_slowAlloc();
    v72 = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_266E2B0EC(0x1000000000000014, 0x8000000266E48250, &v72);
    _os_log_impl(&dword_266E28000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    a4 = v27;
    MEMORY[0x26D5F4920](v29, -1, -1);
    MEMORY[0x26D5F4920](v26, -1, -1);
  }

  if (a4)
  {
    a4(0, 0x1000000000000014, 0x8000000266E48250);
  }
}

void sub_266E39330()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for GestureMapping(0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8310, &qword_266E478D8);
  OUTLINED_FUNCTION_10(v70);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v69 = v19;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v21);
  v72 = &v67 - v22;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v23 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v23, qword_281320F40);
  v24 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_26();
    *v26 = 0;
    _os_log_impl(&dword_266E28000, v24, v1, "Fetching gesture mapping", v26, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  v68 = v9;

  v27 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v27 && ([*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper) respondsToSelector_] & 1) != 0)
  {
    v28 = [v27 headGestureConfiguration];
  }

  else
  {
    v28 = 0;
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v29, v30, v31, v32);
  v71 = v28;
  sub_266E35850(v28, v2);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v3);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76();
  sub_266E2B3B0(v36, v37, v38, v39);
  swift_endAccess();
  v40 = *(v70 + 48);
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v41, v42, v43, v44);
  OUTLINED_FUNCTION_76();
  sub_266E2BDC8(v45, v46, v47, v48);
  OUTLINED_FUNCTION_63(v14, 1, v3);
  if (!v51)
  {
    v50 = v69;
    sub_266E2BDC8(v14, v69, &qword_2800E82F8, &qword_266E478C8);
    OUTLINED_FUNCTION_63(&v14[v40], 1, v3);
    if (!v51)
    {
      v63 = v68;
      sub_266E406F8(&v14[v40], v68);
      OUTLINED_FUNCTION_73();
      v64 = sub_266E356C0();
      if (v64)
      {
        v65 = *(v3 + 20);
        v66 = sub_266E356C0();
        sub_266E4093C(v63, type metadata accessor for GestureMapping);
        sub_266E4093C(v50, type metadata accessor for GestureMapping);
        sub_266E2BE40(v14, &qword_2800E82F8, &qword_266E478C8);
        if (v66)
        {
          sub_266E2BE40(v72, &qword_2800E82F8, &qword_266E478C8);

          goto LABEL_24;
        }

        goto LABEL_19;
      }

      sub_266E4093C(v63, type metadata accessor for GestureMapping);
      sub_266E4093C(v50, type metadata accessor for GestureMapping);
      v53 = &qword_2800E82F8;
      v54 = &qword_266E478C8;
LABEL_18:
      sub_266E2BE40(v14, v53, v54);
LABEL_19:
      v55 = sub_266E463FC();
      v56 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v56))
      {
        v57 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v57);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      else
      {
      }

      v49 = v72;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_6_1();
    sub_266E4093C(v50, v52);
LABEL_17:
    v53 = &qword_2800E8310;
    v54 = &qword_266E478D8;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_63(&v14[v40], 1, v3);
  if (!v51)
  {
    goto LABEL_17;
  }

  sub_266E2BE40(v72, &qword_2800E82F8, &qword_266E478C8);

  v49 = v14;
LABEL_23:
  sub_266E2BE40(v49, &qword_2800E82F8, &qword_266E478C8);
LABEL_24:
  OUTLINED_FUNCTION_32();
}

void sub_266E397EC()
{
  if (sub_266E2FE18())
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v1 = sub_266E4640C();
    __swift_project_value_buffer(v1, qword_281320F40);
    v2 = v0;
    v3 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_61();
      *v5 = 67109120;
      v5[1] = *(&v2->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement);

      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v3 = v2;
    }

    v28 = sub_266E2FFC8(1);
    if (v28)
    {
      v29 = v28;
      sub_266E3A25C();
      sub_266E3AAD0();
      v30 = *(&v2->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
      v31 = v2;
      v44 = v29;
      sub_266E3F6B4(v30, v31, v31, v44);
      goto LABEL_16;
    }

    v45 = sub_266E463FC();
    v32 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v32, v33, v34, v35, v36, v37, v38, v39, v41, v45))
    {
      v40 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v40);
      v27 = "HGManager is nil";
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v11 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v11, qword_281320F40);
    v43 = sub_266E463FC();
    v12 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v41, v43))
    {
      v20 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v20);
      v27 = "Bobble is not available";
LABEL_15:
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v21, v22, v27, v23, v24, v25, v26, v42, v44);
      OUTLINED_FUNCTION_27_0();
    }
  }

LABEL_16:
}

void sub_266E399DC(_BYTE *a1)
{
  v2 = sub_266E4642C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266E4646C();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_266E464AC();
  isa = v50[-1].isa;
  v11 = *(isa + 8);
  v12 = MEMORY[0x28223BE20](v50);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  if ((sub_266E2EC5C() & 1) == 0)
  {
    if (qword_281320A90 != -1)
    {
      swift_once();
    }

    v22 = sub_266E4640C();
    __swift_project_value_buffer(v22, qword_281320F40);
    v50 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (!os_log_type_enabled(v50, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Gesture recognition isn't needed anymore, cancelling start";
    goto LABEL_11;
  }

  v47 = v7;
  v17 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing;
  if (a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing])
  {
    if (qword_281320A90 != -1)
    {
      swift_once();
    }

    v18 = sub_266E4640C();
    __swift_project_value_buffer(v18, qword_281320F40);
    v50 = sub_266E463FC();
    v19 = sub_266E465BC();
    if (!os_log_type_enabled(v50, v19))
    {
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Gesture recognition is already active";
LABEL_11:
    _os_log_impl(&dword_266E28000, v50, v19, v21, v20, 2u);
    MEMORY[0x26D5F4920](v20, -1, -1);
LABEL_12:
    v23 = v50;

    return;
  }

  v45 = v2;
  v46 = v6;
  v44 = v3;
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v24 = sub_266E4640C();
  __swift_project_value_buffer(v24, qword_281320F40);
  v25 = sub_266E463FC();
  v26 = sub_266E465BC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_266E28000, v25, v26, "🫨 Starting gesture recognition", v27, 2u);
    MEMORY[0x26D5F4920](v27, -1, -1);
  }

  v28 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting;
  a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 1;
  sub_266E45BDC();
  a1[v28] = 0;
  a1[v17] = 1;
  v29 = sub_266E463FC();
  v30 = sub_266E465BC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_266E28000, v29, v30, "🫨 Started gesture recognition", v31, 2u);
    MEMORY[0x26D5F4920](v31, -1, -1);
  }

  v32 = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult];
  v33 = v46;
  if (v32)
  {
    v34 = v32;
    v35 = sub_266E463FC();
    v36 = sub_266E465BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266E28000, v35, v36, "🧪 Simulating scheduled head gesture in 1.5 seconds", v37, 2u);
      MEMORY[0x26D5F4920](v37, -1, -1);
    }

    v43[1] = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
    sub_266E4649C();
    sub_266E464BC();
    isa = *(isa + 1);
    (isa)(v14, v50);
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = v34;
    aBlock[4] = sub_266E40884;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266E3A218;
    aBlock[3] = &block_descriptor_184;
    v39 = _Block_copy(aBlock);
    v40 = v34;
    v41 = a1;
    sub_266E4643C();
    v51 = MEMORY[0x277D84F90];
    sub_266E40994(&qword_281320A80, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82A8, &unk_266E47880);
    sub_266E409D8(&unk_281320A70, &qword_2800E82A8, &unk_266E47880);
    v42 = v45;
    sub_266E466CC();
    MEMORY[0x26D5F42A0](v16, v10, v33, v39);
    _Block_release(v39);

    (*(v44 + 8))(v33, v42);
    (*(v49 + 8))(v10, v47);
    (isa)(v16, v50);
  }
}

void sub_266E3A104(uint64_t a1)
{
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266E28000, v3, v4, "🧪 Simulating scheduled head gesture", v5, 2u);
    MEMORY[0x26D5F4920](v5, -1, -1);
  }

  sub_266E3BAF8();
  v6 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult);
  *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_pendingHeadGestureResult) = 0;
}

uint64_t sub_266E3A218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_266E3A25C()
{
  v1 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement;
  if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) == 1)
  {
    result = sub_266E2E584();
    if (result)
    {
      v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
      v4 = 7;
LABEL_8:
      *(v0 + v3) = v4;
      return result;
    }

    if (*(v0 + v1) == 1)
    {
      v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
      v4 = 4;
      goto LABEL_8;
    }
  }

  result = sub_266E2E584();
  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
  if (result)
  {
    v4 = 3;
    goto LABEL_8;
  }

  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) = 0;
  return result;
}

uint64_t sub_266E3A2E0(char a1)
{
  v3 = v1;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v5 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v5, qword_281320F40);
  v6 = sub_266E463FC();
  v7 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v7))
  {
    v8 = OUTLINED_FUNCTION_21();
    v9 = OUTLINED_FUNCTION_23_0();
    v25 = v9;
    *v8 = 136315138;
    v10 = sub_266E2CBA8(a1);
    sub_266E2B0EC(v10, v11, &v25);
    OUTLINED_FUNCTION_74();

    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_10_0();
  }

  *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent] = 0;
  sub_266E3AF84();
  sub_266E3AAD0();
  v17 = *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue];
  v18 = v3;
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_85();

  return sub_266E3F2C8(v19, v20, v21, v22);
}

void sub_266E3A41C(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing;
  if ((a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing] & 1) != 0 || a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] == 1)
  {
    v5 = &a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement];
    if ((a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        swift_once();
      }

      v6 = sub_266E4640C();
      __swift_project_value_buffer(v6, qword_281320F40);
      v7 = sub_266E463FC();
      v8 = sub_266E465BC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v39 = v10;
        *v9 = 136315138;
        v11 = sub_266E2CBA8(a2);
        v13 = sub_266E2B0EC(v11, v12, &v39);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_266E28000, v7, v8, "🫨 Stopping gesture recognition for reason: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D5F4920](v10, -1, -1);
        MEMORY[0x26D5F4920](v9, -1, -1);
      }

      v14 = *&a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_hgManager];
      if (v14)
      {
        *(swift_allocObject() + 16) = a1;
        v15 = v14;
        v16 = a1;
        sub_266E45BCC();
      }

      a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_starting] = 0;
      a1[v4] = 0;
      oslog = sub_266E463FC();
      v17 = sub_266E465BC();
      if (!os_log_type_enabled(oslog, v17))
      {
        goto LABEL_23;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      v20 = sub_266E2CBA8(a2);
      v22 = sub_266E2B0EC(v20, v21, &v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_266E28000, oslog, v17, "🫨 Stopped gesture recognition for reason: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5F4920](v19, -1, -1);
      v23 = v18;
LABEL_22:
      MEMORY[0x26D5F4920](v23, -1, -1);
LABEL_23:
      v36 = oslog;
      goto LABEL_25;
    }
  }

  else
  {
    v5 = &a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement];
    if (a1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] != 1)
    {
      goto LABEL_18;
    }
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v24 = sub_266E4640C();
  __swift_project_value_buffer(v24, qword_281320F40);
  v25 = sub_266E463FC();
  v26 = sub_266E465BC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    v29 = sub_266E2CBA8(a2);
    v31 = sub_266E2B0EC(v29, v30, &v39);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_266E28000, v25, v26, "🫨 Not stopping gesture recognition for reason: %s as it's still needed for early dismissal, updating states", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D5F4920](v28, -1, -1);
    MEMORY[0x26D5F4920](v27, -1, -1);
  }

  sub_266E2C708(0, 8);
LABEL_18:
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v32 = sub_266E4640C();
  __swift_project_value_buffer(v32, qword_281320F40);
  v37 = a1;
  oslog = sub_266E463FC();
  v33 = sub_266E465BC();
  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    v35 = a1[v4];
    *v34 = 67109376;
    *(v34 + 4) = v35;
    *(v34 + 8) = 1024;
    *(v34 + 10) = *v5;

    _os_log_impl(&dword_266E28000, oslog, v33, "🫨 recognizing: %{BOOL}d readingAnnouncement: %{BOOL}d", v34, 0xEu);
    v23 = v34;
    goto LABEL_22;
  }

  v36 = v37;
LABEL_25:
}

void sub_266E3A90C(uint64_t a1)
{
  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v2 = sub_266E4640C();
  __swift_project_value_buffer(v2, qword_281320F40);
  v3 = sub_266E463FC();
  v4 = sub_266E465BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266E28000, v3, v4, "🫨 HGManager has fully stopped", v5, 2u);
    MEMORY[0x26D5F4920](v5, -1, -1);
  }

  if ((sub_266E3DDBC() & 1) != 0 && (sub_266E371C0() & 1) == 0)
  {
    v6 = sub_266E463FC();
    v7 = sub_266E465BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_266E28000, v6, v7, "🔊 Audio session is still active, releasing it if no other client is using it", v8, 2u);
      MEMORY[0x26D5F4920](v8, -1, -1);
    }

    v9 = *(a1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
    if (v9 && ([v9 respondsToSelector_] & 1) != 0)
    {

      [v9 deactivateAudioSessionIfNoActiveAssertions];
    }
  }
}

void sub_266E3AAD0()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v10 = type metadata accessor for GestureMapping(0);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  if (v5)
  {
    sub_266E39330();
    OUTLINED_FUNCTION_68();
    if (!v36)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v17 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v17, qword_281320F40);
    v18 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_26();
      *v20 = 0;
      _os_log_impl(&dword_266E28000, v18, v2, "🔊 Updating the gesture mapping", v20, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }

  v21 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(&v3[v21], v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_63(v1, 1, v10);
  if (!v36)
  {
    v28 = OUTLINED_FUNCTION_71();
    sub_266E406F8(v28, v29);
    v30 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent;
    v31 = *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent];
    sub_266E35BE0();
    v32 = *&v3[v30];
    v33 = sub_266E2DDE8();
    if (v33)
    {
      v34 = v32 & 3;
      v35 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady;
      v36 = v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady] == 1 && v34 == 3;
      if (v36 && (v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] & 1) == 0)
      {
        OUTLINED_FUNCTION_68();
        if (!v36)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v53 = sub_266E4640C();
        OUTLINED_FUNCTION_17_0(v53, qword_281320F40);
        v44 = sub_266E463FC();
        v54 = sub_266E465BC();
        if (OUTLINED_FUNCTION_12_1(v54))
        {
          v55 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_20_1(v55);
          OUTLINED_FUNCTION_4_0();
          _os_log_impl(v56, v57, v58, v59, v60, 2u);
          OUTLINED_FUNCTION_15_1();
        }

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_68();
      if (!v36)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v37 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v37, qword_281320F40);
      v38 = v3;
      v39 = sub_266E463FC();
      v40 = sub_266E465BC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109632;
        *(v41 + 4) = v34 == 3;
        *(v41 + 8) = 1024;
        v42 = *(&v38->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);
        *(OUTLINED_FUNCTION_66(v41, 1024) + 16) = v3[v35];

        _os_log_impl(&dword_266E28000, v39, v40, "🔇 Not playing waiting tone, expectingConfirmation: %{BOOL}d, ttsActive: %{BOOL}d, isReady: %{BOOL}d", v41, 0x14u);
        OUTLINED_FUNCTION_14_0();
      }

      else
      {

        v39 = v38;
      }

      if (v34 != 3 || (*(&v38->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive) & 1) != 0 || (v3[v35] & 1) != 0 || *(&v38->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) != 1)
      {
        goto LABEL_42;
      }

      v44 = sub_266E463FC();
      v52 = sub_266E465CC();
      if (!OUTLINED_FUNCTION_12_1(v52))
      {
LABEL_41:

LABEL_42:
        OUTLINED_FUNCTION_71();
        sub_266E3B148();
        OUTLINED_FUNCTION_6_1();
        sub_266E4093C(v16, v61);
        goto LABEL_43;
      }
    }

    else
    {
      OUTLINED_FUNCTION_68();
      if (!v36)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v43 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v43, qword_281320F40);
      v44 = sub_266E463FC();
      v45 = sub_266E465BC();
      if (!OUTLINED_FUNCTION_12_1(v45))
      {
        goto LABEL_41;
      }
    }

    v46 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v46);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v47, v48, v49, v50, v51, 2u);
    OUTLINED_FUNCTION_15_1();
    goto LABEL_41;
  }

  sub_266E2BE40(v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_68();
  if (!v36)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v22 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v22, qword_281320F40);
  v23 = sub_266E463FC();
  v24 = sub_266E465CC();
  if (OUTLINED_FUNCTION_23(v24))
  {
    v25 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v25);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v26, v27, "GestureMapping is nil");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_43:
  OUTLINED_FUNCTION_32();
}

void sub_266E3AF84()
{
  v1 = sub_266E2FFC8(0);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue);
    v21 = v1;
    sub_266E3EAD4(v2, v0, v21);
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
    v22 = sub_266E463FC();
    v4 = sub_266E465CC();
    if (OUTLINED_FUNCTION_31_0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v22))
    {
      v12 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_26_0(&dword_266E28000, v13, v14, "HGManager is nil", v15, v16, v17, v18, v20, v21);
      OUTLINED_FUNCTION_27_0();
    }
  }
}

void sub_266E3B058()
{
  v0 = sub_266E45BBC();
  v1 = sub_266E45B2C();

  sub_266E45B6C();
  v2 = sub_266E45BBC();
  v3 = sub_266E45B2C();

  sub_266E45B6C();
  v4 = sub_266E45BBC();
  v5 = sub_266E45B2C();

  sub_266E45B6C();
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  sub_266E45B6C();
}

void sub_266E3B148()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v97 = v3;
  v5 = v4;
  v98[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for GestureMapping(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266E2FFC8(1);
  if (v10)
  {
    v11 = v10;
    v96 = v5 & 3;
    v12 = 0x2800E8000;
    if (sub_266E371C0())
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v13 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v13, qword_281320F40);
      v14 = sub_266E463FC();
      v15 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v15))
      {
        v16 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v16);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
        OUTLINED_FUNCTION_10_0();
      }
    }

    else
    {
      v94 = v7;
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v95 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = sub_266E4640C();
      v29 = __swift_project_value_buffer(v28, qword_281320F40);
      v30 = sub_266E463FC();
      v31 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v31))
      {
        v32 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_34_0(v32);
        OUTLINED_FUNCTION_84(&dword_266E28000, v33, v34, "Configuring fallback audio session");
        OUTLINED_FUNCTION_17_1();
      }

      v35 = [objc_opt_self() sharedInstance];
      v36 = sub_266E463FC();
      v37 = sub_266E465AC();

      if (os_log_type_enabled(v36, v37))
      {
        v1 = OUTLINED_FUNCTION_23_0();
        v38 = OUTLINED_FUNCTION_87();
        v92 = v2;
        v98[0] = v38;
        *v1 = 134218498;
        *(v1 + 4) = 0;
        *(v1 + 12) = 2080;
        v39 = [v35 category];
        v93 = v11;
        v40 = v39;
        v41 = sub_266E4651C();
        v91 = v29;
        v43 = v42;

        v44 = sub_266E2B0EC(v41, v43, v98);

        *(v1 + 14) = v44;
        *(v1 + 22) = 2080;
        v45 = [v35 mode];
        v46 = sub_266E4651C();
        v48 = v47;

        v49 = sub_266E2B0EC(v46, v48, v98);
        v11 = v93;

        *(v1 + 24) = v49;
        _os_log_impl(&dword_266E28000, v36, v37, "🔊 Audio Session Fallback (%ld, %s, %s) is active and ready for playback", v1, 0x20u);
        swift_arrayDestroy();
        v2 = v92;
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_11_0();
      }

      v98[0] = 0;
      if ([v35 setPrefersNoDucking:1 error:v98])
      {
        v50 = v98[0];
      }

      else
      {
        v51 = v98[0];
        v52 = OUTLINED_FUNCTION_91();

        v1 = v52;
        swift_willThrow();
      }

      v53 = *MEMORY[0x277CB8030];
      v54 = *MEMORY[0x277CB80F0];
      v98[0] = 0;
      if ([v35 setCategory:v53 mode:v54 options:2 error:v98])
      {
        v55 = v98[0];
      }

      else
      {
        v56 = v98[0];
        v57 = OUTLINED_FUNCTION_91();

        v1 = v57;
        swift_willThrow();
      }

      v98[0] = 0;
      if ([v35 setAudioHardwareControlFlags:0 error:v98])
      {
        v58 = v98[0];
      }

      else
      {
        v59 = v98[0];
        v60 = OUTLINED_FUNCTION_91();

        v1 = v60;
        swift_willThrow();
      }

      if ([v35 isActive] && !v5)
      {
        v61 = sub_266E463FC();
        v62 = sub_266E465CC();
        if (OUTLINED_FUNCTION_20_0(v62))
        {
          v63 = OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_21_1(v63);
          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v64, v65, v66, v67, v68, 2u);
          OUTLINED_FUNCTION_10_0();
        }

        v98[0] = 0;
        if ([v35 setActive:0 error:v98])
        {
          v69 = v98[0];
        }

        else
        {
          v70 = v98[0];
          v71 = OUTLINED_FUNCTION_91();

          swift_willThrow();
        }
      }

      v72 = sub_266E463FC();
      v73 = sub_266E465BC();
      if (OUTLINED_FUNCTION_20_0(v73))
      {
        v74 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_21_1(v74);
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      v80 = sub_266E3DC0C();
      v81 = sub_266E463FC();
      v82 = sub_266E465BC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 67109376;
        *(v83 + 4) = v80;
        *(v83 + 8) = 2048;
        *(v83 + 10) = v5;
        _os_log_impl(&dword_266E28000, v81, v82, "AudioSessionID: %u, audioFeedbackCategories: %ld", v83, 0x12u);
        OUTLINED_FUNCTION_10_0();
      }

      v12 = 0x2800E8000uLL;
      sub_266E3EEBC(*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_headGestureQueue), v2, v11, v80);

      v7 = v94;
      v9 = v95;
    }

    v84 = v96 != 0;
    v85 = *(v2 + *(v12 + 648));
    sub_266E4075C(v97, v9);
    v86 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = v11;
    sub_266E406F8(v9, v87 + v86);
    v88 = (v87 + v86 + v8);
    *v88 = v5 & 1;
    v88[1] = (v5 & 2) != 0;
    v88[2] = v84;
    v88[3] = (v5 & 4) != 0;
    v89 = v11;
    sub_266E3FE6C();

    v90 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_32();
  }

  else
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v22 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v22, qword_281320F40);
    v97 = sub_266E463FC();
    v23 = sub_266E465CC();
    if (os_log_type_enabled(v97, v23))
    {
      v24 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_42(v24);
      _os_log_impl(&dword_266E28000, v97, v23, "HGManager is nil", 0x281320000, 2u);
      OUTLINED_FUNCTION_27_0();
    }

    v25 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_32();
  }
}

void sub_266E3B8BC()
{
  v0 = sub_266E45BBC();
  v1 = sub_266E45B2C();

  sub_266E45B8C();
}

void sub_266E3B91C()
{
  v0 = sub_266E45BBC();
  v1 = sub_266E45B2C();

  sub_266E36104();
  sub_266E45B7C();

  v2 = sub_266E45BBC();
  v3 = sub_266E45B2C();

  sub_266E45B5C();
  v4 = sub_266E45BBC();
  v5 = sub_266E45B2C();

  sub_266E45B6C();
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  sub_266E45B6C();
  v8 = sub_266E45BBC();
  v9 = sub_266E45B2C();

  sub_266E45B5C();
  v10 = sub_266E45BBC();
  v11 = sub_266E45B2C();

  sub_266E45B6C();
  v12 = sub_266E45BBC();
  v13 = sub_266E45B2C();

  sub_266E45B6C();
  v14 = sub_266E45BBC();
  sub_266E45B0C();

  v15 = sub_266E45BBC();
  v16 = sub_266E45B2C();

  sub_266E45BAC();
}

void sub_266E3BAF8()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E81E8, &unk_266E474D0);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v167 = v166 - v9;
  v10 = OUTLINED_FUNCTION_55();
  v170 = type metadata accessor for GestureResponse(v10);
  v11 = OUTLINED_FUNCTION_10(v170);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v171 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_12(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_60();
  v21 = type metadata accessor for GestureMapping(v20);
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v178 = v26 - v25;
  OUTLINED_FUNCTION_55();
  v27 = sub_266E461CC();
  v176 = OUTLINED_FUNCTION_5(v27);
  v177 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_9_1();
  v166[1] = v31;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v32);
  v168 = v166 - v33;
  OUTLINED_FUNCTION_41();
  MEMORY[0x28223BE20](v34);
  v169 = (v166 - v35);
  OUTLINED_FUNCTION_41();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v166 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = v166 - v40;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v42 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v42, qword_281320F40);
  v43 = v4;
  v175 = v0;
  v44 = sub_266E463FC();
  v45 = sub_266E465BC();

  v46 = os_log_type_enabled(v44, v45);
  v174 = v43;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_23_0();
    v166[0] = v21;
    v48 = v47;
    v49 = OUTLINED_FUNCTION_61();
    v50 = OUTLINED_FUNCTION_87();
    v172 = v39;
    v182[0] = v50;
    *v48 = 136315650;
    sub_266E36C1C(v41);
    v51 = sub_266E461BC();
    v173 = v2;
    v53 = v52;
    (*(v177 + 8))(v41, v176);
    v54 = sub_266E2B0EC(v51, v53, v182);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    v55 = [v43 avgConfidence];
    *(v48 + 14) = v55;
    *v49 = v55;
    *(v48 + 22) = 2080;
    v56 = sub_266E36CC0([v43 headGesturePart]);
    v58 = sub_266E2B0EC(v56, v57, v182);

    *(v48 + 24) = v58;
    v2 = v173;
    _os_log_impl(&dword_266E28000, v44, v45, "HeadGesture: Type:%s, confidence: %@, partGesture: %s", v48, 0x20u);
    sub_266E2BE40(v49, &qword_2800E8278, &qword_266E478D0);
    OUTLINED_FUNCTION_14_0();
    swift_arrayDestroy();
    v39 = v172;
    OUTLINED_FUNCTION_14_0();
    v21 = v166[0];
    OUTLINED_FUNCTION_14_0();
  }

  v59 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_gestureMapping;
  OUTLINED_FUNCTION_58();
  sub_266E2BDC8(v2 + v59, v1, &qword_2800E82F8, &qword_266E478C8);
  OUTLINED_FUNCTION_63(v1, 1, v21);
  if (!v60)
  {
    sub_266E406F8(v1, v178);
    sub_266E36C1C(v39);
    v67 = v176;
    v66 = v177;
    (*(v177 + 104))(v41, *MEMORY[0x277D5CF90], v176);
    sub_266E40994(&unk_2800E8300, MEMORY[0x277D5CF98]);
    v68 = sub_266E464FC();
    v69 = *(v66 + 8);
    v69(v41, v67);
    if (v68)
    {
      v70 = sub_266E463FC();
      v71 = sub_266E465AC();
      if (OUTLINED_FUNCTION_23(v71))
      {
        v72 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v72);
        v75 = "Ignoring partial gestures";
LABEL_19:
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v73, v74, v75);
        OUTLINED_FUNCTION_11_0();
      }
    }

    else
    {
      v180 = sub_266E362B4();
      v181 = v76;
      MEMORY[0x26D5F4210](0x6574636574656420, 0xE900000000000064);
      v77 = v181;
      OUTLINED_FUNCTION_57();
      sub_266E2F920();
      v79 = v78;
      swift_endAccess();

      if (v79)
      {
        OUTLINED_FUNCTION_59();
        if (sub_266E3C9F8())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v173 = v2;
          if (Strong)
          {
            v81 = [v174 timestamp];
            OUTLINED_FUNCTION_69();

            v82 = *(v77 + 24);
            v177 = *(v177 + 16);
            OUTLINED_FUNCTION_65();
            v83();
            v84 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
            OUTLINED_FUNCTION_58();
            sub_266E2BDC8(v2 + v84, v69 + *(v77 + 28), &qword_2800E81E8, &unk_266E474D0);
            *v69 = 1;
            sub_266E40E58();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_7_0();
            v85 = v69;
            v69 = v174;
            sub_266E4093C(v85, v86);
          }

          else
          {
            v123 = *(v177 + 16);
          }

          OUTLINED_FUNCTION_65();
          v124();
          v125 = sub_266E463FC();
          sub_266E465BC();
          OUTLINED_FUNCTION_28_0();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = OUTLINED_FUNCTION_21();
            v128 = OUTLINED_FUNCTION_23_0();
            v179 = v128;
            *v127 = 136315138;
            v129 = sub_266E362B4();
            v172 = v39;
            v39 = v130;
            v131 = OUTLINED_FUNCTION_53();
            (v69)(v131);
            sub_266E2B0EC(v129, v39, &v179);
            OUTLINED_FUNCTION_70();
            *(v127 + 4) = v129;
            OUTLINED_FUNCTION_48(&dword_266E28000, v132, v133, "%s detected: marking confirmation as responded, not expecting confirmation");
            __swift_destroy_boxed_opaque_existential_1Tm(v128);
            OUTLINED_FUNCTION_17_1();
            OUTLINED_FUNCTION_11_0();
          }

          else
          {

            v134 = OUTLINED_FUNCTION_53();
            (v69)(v134);
          }

          v135 = v173;
          sub_266E2AFC0();
          *(v135 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
          v136 = OUTLINED_FUNCTION_50();
          sub_266E2C708(v136, v137);
          v138 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_59();
          if (sub_266E3CA60())
          {
            v89 = *(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall);
            v90 = v2;
            v91 = v177;
            if (v89 == 1)
            {
              v92 = sub_266E463FC();
              v93 = sub_266E465BC();
              if (OUTLINED_FUNCTION_23(v93))
              {
                v94 = OUTLINED_FUNCTION_26();
                OUTLINED_FUNCTION_30_0(v94);
                OUTLINED_FUNCTION_8_0(&dword_266E28000, v95, v96, "Creating a promptInfo for announced call");
                v91 = v177;
                OUTLINED_FUNCTION_14_0();
              }

              v97 = v167;
              sub_266E4615C();
              v98 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
              OUTLINED_FUNCTION_57();
              sub_266E2B3B0(v97, v90 + v98, &qword_2800E81E8, &unk_266E474D0);
              swift_endAccess();
            }

            v99 = swift_unknownObjectWeakLoadStrong();
            v173 = v90;
            if (v99)
            {
              v100 = [v174 timestamp];
              OUTLINED_FUNCTION_69();

              v101 = *(v77 + 24);
              v102 = *(v91 + 16);
              OUTLINED_FUNCTION_65();
              v102();
              v103 = v102;
              v104 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastPromptInfo;
              OUTLINED_FUNCTION_58();
              sub_266E2BDC8(v90 + v104, v69 + *(v77 + 28), &qword_2800E81E8, &unk_266E474D0);
              *v69 = 2;
              sub_266E40E58();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_7_0();
              v105 = v69;
              v69 = v174;
              sub_266E4093C(v105, v106);
            }

            else
            {
              v103 = *(v91 + 16);
            }

            v139 = v168;
            OUTLINED_FUNCTION_65();
            v103();
            v140 = sub_266E463FC();
            sub_266E465BC();
            OUTLINED_FUNCTION_28_0();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = OUTLINED_FUNCTION_21();
              v143 = OUTLINED_FUNCTION_23_0();
              v179 = v143;
              *v142 = 136315138;
              sub_266E362B4();
              v172 = v39;
              v39 = v144;
              v69(v139, v67);
              v145 = OUTLINED_FUNCTION_67();
              sub_266E2B0EC(v145, v146, v147);
              OUTLINED_FUNCTION_70();
              *(v142 + 4) = v139;
              OUTLINED_FUNCTION_48(&dword_266E28000, v148, v149, "%s detected: marking confirmation as responded, not expecting confirmation");
              __swift_destroy_boxed_opaque_existential_1Tm(v143);
              OUTLINED_FUNCTION_14_0();
              OUTLINED_FUNCTION_11_0();
            }

            else
            {

              v69(v139, v67);
            }

            v150 = v173;
            sub_266E2AFC0();
            *(v150 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
            v151 = OUTLINED_FUNCTION_50();
            sub_266E2C708(v151, v152);
            v138 = 2;
          }

          else
          {
            v107 = OUTLINED_FUNCTION_59();
            v109 = sub_266E3C97C(v107, v108);
            v110 = v177;
            if ((v109 & 1) == 0)
            {
              goto LABEL_46;
            }

            v173 = v2;
            v111 = *(v177 + 16);
            OUTLINED_FUNCTION_65();
            v169 = v112;
            v112();
            v113 = sub_266E463FC();
            sub_266E465BC();
            OUTLINED_FUNCTION_28_0();
            v115 = os_log_type_enabled(v113, v114);
            v177 = v110 + 16;
            if (v115)
            {
              v116 = OUTLINED_FUNCTION_21();
              v117 = OUTLINED_FUNCTION_23_0();
              v180 = v117;
              *v116 = 136315138;
              v118 = sub_266E362B4();
              v172 = v39;
              v39 = v119;
              v120 = OUTLINED_FUNCTION_53();
              (v69)(v120);
              sub_266E2B0EC(v118, v39, &v180);
              OUTLINED_FUNCTION_70();
              *(v116 + 4) = v118;
              OUTLINED_FUNCTION_48(&dword_266E28000, v121, v122, "%s detected: dismissing Siri");
              __swift_destroy_boxed_opaque_existential_1Tm(v117);
              OUTLINED_FUNCTION_17_1();
              OUTLINED_FUNCTION_11_0();
            }

            else
            {

              v153 = OUTLINED_FUNCTION_53();
              (v69)(v153);
            }

            v154 = v173;
            sub_266E3AF84();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v155 = [v174 timestamp];
              v157 = v170;
              v156 = v171;
              v158 = v171 + *(v170 + 20);
              sub_266E45A8C();

              (v169)(v156 + *(v157 + 24), v39, v176);
              v159 = *(v157 + 28);
              sub_266E4619C();
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
              *v156 = 4;
              sub_266E40E58();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_7_0();
              sub_266E4093C(v156, v164);
            }

            *(v154 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState) = 1;
            *(v154 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) = 0;
            sub_266E3A2E0(7);
            sub_266E2C640();
            v138 = 4;
            v67 = v176;
          }
        }

        sub_266E37378(v138);
        goto LABEL_46;
      }

      v70 = sub_266E463FC();
      v87 = sub_266E465CC();
      if (OUTLINED_FUNCTION_23(v87))
      {
        v88 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v88);
        v75 = "Head gesture might be a duplicate, ignoring";
        goto LABEL_19;
      }
    }

LABEL_46:
    v69(v39, v67);
    OUTLINED_FUNCTION_6_1();
    sub_266E4093C(v178, v165);
    goto LABEL_47;
  }

  sub_266E2BE40(v1, &qword_2800E82F8, &qword_266E478C8);
  v61 = sub_266E463FC();
  v62 = sub_266E465BC();
  if (OUTLINED_FUNCTION_23(v62))
  {
    v63 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_30_0(v63);
    OUTLINED_FUNCTION_8_0(&dword_266E28000, v64, v65, "GestureMapping is nil");
    OUTLINED_FUNCTION_11_0();
  }

LABEL_47:
  OUTLINED_FUNCTION_32();
}

uint64_t sub_266E3C770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_266E45ADC();
  v8 = *MEMORY[0x277D5D2D0];
  v9 = sub_266E462AC();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_266E4618C();
  v10 = *MEMORY[0x277D5CE68];
  v11 = sub_266E461AC();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  return sub_266E4616C();
}

uint64_t sub_266E3C97C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) & 4) == 0 || (sub_266E356C0())
  {
    return 0;
  }

  v5 = a2 + *(type metadata accessor for GestureMapping(0) + 20);

  return sub_266E356C0();
}

uint64_t sub_266E3C9F8()
{
  if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent))
  {
    if (sub_266E356C0())
    {
      return 1;
    }

    v2 = *(type metadata accessor for GestureMapping(0) + 20);
    sub_266E356C0();
  }

  return 0;
}

uint64_t sub_266E3CA60()
{
  if ((*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_userIntent) & 2) != 0)
  {
    OUTLINED_FUNCTION_64();
    if ((sub_266E356C0() & 1) == 0)
    {
      v1 = *(type metadata accessor for GestureMapping(0) + 20);
      if (sub_266E356C0())
      {
        return 1;
      }
    }
  }

  OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_64();
    if (sub_266E3C97C(v3, v4))
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v5 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v5, qword_281320F40);
      v6 = sub_266E463FC();
      v7 = sub_266E465BC();
      if (OUTLINED_FUNCTION_23(v7))
      {
        v8 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_30_0(v8);
        OUTLINED_FUNCTION_8_0(&dword_266E28000, v9, v10, "Announcing an incoming call, treating early dismissal as early decline");
        OUTLINED_FUNCTION_11_0();
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_266E3CB58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_266E40FE0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_266E3CBF8(char a1)
{
  v2 = v1;
  if ((sub_266E2EC5C() & 1) == 0)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v7 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v7, qword_281320F40);
    v5 = sub_266E463FC();
    v8 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v8))
    {
      goto LABEL_17;
    }

    v9 = OUTLINED_FUNCTION_61();
    *v9 = 67109120;
    v9[1] = a1 & 1;
    OUTLINED_FUNCTION_10_1();
    v15 = 8;
    goto LABEL_16;
  }

  if (a1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v4, qword_281320F40);
    v5 = sub_266E463FC();
    v6 = sub_266E465BC();
    if (!OUTLINED_FUNCTION_12_1(v6))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_recognizing) != 1)
  {
    goto LABEL_18;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v16 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v16, qword_281320F40);
  v5 = sub_266E463FC();
  v17 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v17))
  {
LABEL_15:
    v18 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_21_1(v18);
    OUTLINED_FUNCTION_10_1();
    v15 = 2;
LABEL_16:
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_10_0();
  }

LABEL_17:

LABEL_18:
  *(v2 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady) = a1 & 1;

  sub_266E3AAD0();
}

uint64_t sub_266E3CE1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E83C0, &unk_266E479E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_266E45AEC();
  (*(*(v15 - 8) + 16))(v14, a2, v15);
  v16 = *MEMORY[0x277D5D2C8];
  v17 = sub_266E462AC();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  sub_266E4618C();
  v18 = *MEMORY[0x277D5CFB0];
  v19 = sub_266E4622C();
  (*(*(v19 - 8) + 104))(v10, v18, v19);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
  sub_266E4617C();
  v20 = *MEMORY[0x277D5CE68];
  v21 = sub_266E461AC();
  (*(*(v21 - 8) + 104))(v6, v20, v21);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v21);
  return sub_266E4616C();
}

uint64_t sub_266E3D0AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E82E0, &unk_266E478B0);
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E82F0, &qword_266E478C0);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v11 = sub_266E45AEC();
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_71();
  v15(v14);
  v16 = *MEMORY[0x277D5D2D0];
  v17 = sub_266E462AC();
  OUTLINED_FUNCTION_10(v17);
  (*(v18 + 104))(v0, v16, v17);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  sub_266E4618C();
  v22 = *MEMORY[0x277D5CE68];
  v23 = sub_266E461AC();
  OUTLINED_FUNCTION_10(v23);
  (*(v24 + 104))(v6, v22, v23);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  return sub_266E4616C();
}

void sub_266E3D24C(uint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState;
  v6 = 0x281320000uLL;
  v7 = &off_266E47000;
  if (sub_266E3D6AC(*&v1[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcementState], &unk_287872480) && a1 == 1)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v8 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
    v9 = v1;
    v10 = sub_266E463FC();
    sub_266E465BC();
    OUTLINED_FUNCTION_40();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_21();
      v53 = OUTLINED_FUNCTION_23_0();
      *v12 = 136315138;
      v13 = *&v3[v5];
      v14 = AFExternalNotificationRequestHandlerStateGetName();

      if (!v14)
      {
        goto LABEL_42;
      }

      sub_266E4651C();

      v15 = OUTLINED_FUNCTION_75();
      v18 = sub_266E2B0EC(v15, v16, v17);

      *(v12 + 4) = v18;
      OUTLINED_FUNCTION_86(&dword_266E28000, v10, v2, "Announcement state transitioned to idle from %s, resetting confirmation states");
      v2 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_17_1();

      v7 = &off_266E47000;
      v6 = 0x281320000;
    }

    else
    {
    }

    sub_266E2C640();
    sub_266E2C3FC(7);
  }

  *&v3[v5] = a1;
  if (*(v6 + 2704) != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v19 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v19, qword_281320F40);
  v20 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21();
    v23 = OUTLINED_FUNCTION_23_0();
    *v22 = *(v7 + 45);
    v24 = AFExternalNotificationRequestHandlerStateGetName();
    if (v24)
    {
      v25 = v24;
      sub_266E4651C();

      v26 = OUTLINED_FUNCTION_75();
      v29 = sub_266E2B0EC(v26, v27, v28);

      *(v22 + 4) = v29;
      OUTLINED_FUNCTION_86(&dword_266E28000, v20, v2, "🔔 Announcement state updated to: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_15;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_15:

  if (a1 != 3 && (a1 != 6 || v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive] != 1))
  {
LABEL_32:
    v41 = 0;
    goto LABEL_34;
  }

  v30 = *&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper];
  if (v30 && ([*&v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper] respondsToSelector_] & 1) != 0)
  {
    v31 = [v30 callState];
    if ((v31 & 4) != 0)
    {
      v32 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31 & 1;
LABEL_24:
  v33 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall;
  v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_announcingIncomingCall] = v32;
  v34 = v3;
  v35 = sub_266E463FC();
  sub_266E465BC();
  OUTLINED_FUNCTION_40();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_61();
    *v37 = 67109120;
    *(v37 + 4) = v3[v33];

    _os_log_impl(&dword_266E28000, v35, v2, "🔔 Announcing incoming call: %{BOOL}d", v37, 8u);
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    v35 = v34;
  }

  if (a1 == 6 && v3[v33] == 1)
  {
    v38 = sub_266E463FC();
    v39 = sub_266E465BC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_20_1(v40);
      _os_log_impl(&dword_266E28000, v38, v39, "Not reading announcement, call is either ringing or active", v2, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    goto LABEL_32;
  }

  v41 = 1;
LABEL_34:
  v3[OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement] = v41;
  if (sub_266E3D6AC(a1, &unk_287872480))
  {
    v42 = sub_266E463FC();
    v43 = sub_266E465BC();
    if (OUTLINED_FUNCTION_20_0(v43))
    {
      v44 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_1(v44);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_62();

    sub_266E2C708(v50, v51);
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }
}

BOOL sub_266E3D6AC(uint64_t a1, uint64_t a2)
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

void sub_266E3D6D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8080, &qword_266E479C0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v8 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v8, qword_281320F40);
  v9 = sub_266E463FC();
  v10 = sub_266E465BC();
  if (OUTLINED_FUNCTION_12_1(v10))
  {
    v11 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v11);
    OUTLINED_FUNCTION_4_0();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  OUTLINED_FUNCTION_79(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_expectingSiriIEConfirmation);
  v17 = OUTLINED_FUNCTION_71();
  sub_266E2BDC8(v17, v18, &qword_2800E8080, &qword_266E479C0);
  v19 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_lastActionEventId;
  OUTLINED_FUNCTION_57();
  sub_266E2B3B0(v7, v1 + v19, &qword_2800E8080, &qword_266E479C0);
  swift_endAccess();
  v20 = OUTLINED_FUNCTION_50();
  sub_266E2C708(v20, v21);
}

void sub_266E3D834(char a1, uint64_t a2, void *a3)
{
  v5 = a1 & 1;
  v6 = sub_266E45BBC();
  v7 = sub_266E45B2C();

  LODWORD(v6) = sub_266E45B9C() & 1;
  if (v6 == v5)
  {
    return;
  }

  if (qword_281320A90 != -1)
  {
    swift_once();
  }

  v8 = sub_266E4640C();
  __swift_project_value_buffer(v8, qword_281320F40);
  v9 = a3;
  v10 = sub_266E463FC();
  v11 = sub_266E465AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = *(&v9->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);

    *(v12 + 8) = 1024;
    *(v12 + 10) = a1 & 1;
    _os_log_impl(&dword_266E28000, v10, v11, "TTS Active: %{BOOL}d shouldPlayWaitingTone: %{BOOL}d", v12, 0xEu);
    MEMORY[0x26D5F4920](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = v9;
  v14 = sub_266E463FC();
  v15 = sub_266E465BC();
  v16 = os_log_type_enabled(v14, v15);
  if ((a1 & 1) == 0)
  {
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 67109632;
      *(v19 + 4) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);
      *(v19 + 8) = 1024;
      *(v19 + 10) = sub_266E2E584() & 1;
      *(v19 + 14) = 1024;
      *(v19 + 16) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isReady);

      _os_log_impl(&dword_266E28000, v14, v15, "🔇 Not playing waiting tone, ttsActive: %{BOOL}d, expectingConfirmation: %{BOOL}d, isReady: %{BOOL}d", v19, 0x14u);
      v18 = v19;
      goto LABEL_13;
    }

LABEL_14:

    v14 = v13;
    goto LABEL_15;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = swift_slowAlloc();
  *v17 = 67109120;
  *(v17 + 4) = *(&v13->isa + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive);

  _os_log_impl(&dword_266E28000, v14, v15, "🔊 Playing waiting tone, ttsActive: %{BOOL}d", v17, 8u);
  v18 = v17;
LABEL_13:
  MEMORY[0x26D5F4920](v18, -1, -1);
LABEL_15:

  v20 = sub_266E45BBC();
  v21 = sub_266E45B2C();

  sub_266E45BAC();
}

uint64_t sub_266E3DB1C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_sessionActive) = result & 1;
  }

  return result;
}

void sub_266E3DB3C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_isListening) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      if (qword_281320A90 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v2 = sub_266E4640C();
      OUTLINED_FUNCTION_17_0(v2, qword_281320F40);
      v20 = sub_266E463FC();
      v3 = sub_266E465BC();
      if (OUTLINED_FUNCTION_31_0(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
      {
        v11 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_42(v11);
        OUTLINED_FUNCTION_26_0(&dword_266E28000, v12, v13, "Siri is not listening", v14, v15, v16, v17, v19, v21);
        OUTLINED_FUNCTION_27_0();
      }
    }
  }
}

id sub_266E3DC0C()
{
  OUTLINED_FUNCTION_39(OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession);
  if (v2)
  {
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_266E4640C();
    OUTLINED_FUNCTION_17_0(v3, qword_281320F40);
    v4 = sub_266E463FC();
    v5 = sub_266E465AC();
    if (!os_log_type_enabled(v4, v5))
    {
      v7 = 0;
      goto LABEL_17;
    }

    v6 = OUTLINED_FUNCTION_61();
    *v6 = 67109120;
    _os_log_impl(&dword_266E28000, v4, v5, "🔊 Use our own audio session: %u", v6, 8u);
    v7 = 0;
    goto LABEL_15;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v8 && ([v8 respondsToSelector_] & 1) != 0)
  {
    v7 = [v8 audioSessionID];
  }

  else
  {
    v7 = 0;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v9 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v9, qword_281320F40);
  v4 = sub_266E463FC();
  sub_266E465AC();
  OUTLINED_FUNCTION_28_0();
  if (os_log_type_enabled(v4, v10))
  {
    v11 = OUTLINED_FUNCTION_61();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_266E28000, v4, v1, "🔊 Using Siri's audio session: %u", v11, 8u);
LABEL_15:
    OUTLINED_FUNCTION_27_0();
  }

LABEL_17:

  return v7;
}

id sub_266E3DDBC()
{
  v0 = sub_266E3DC0C();
  if (v0)
  {
    v1 = [objc_opt_self() retrieveSessionWithID_];
    if (qword_281320A90 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v2 = sub_266E4640C();
    __swift_project_value_buffer(v2, qword_281320F40);
    v3 = v1;
    v4 = sub_266E463FC();
    sub_266E465AC();
    OUTLINED_FUNCTION_28_0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = v0;
      *(v6 + 8) = 1024;
      *(v6 + 10) = [v3 isActive];

      OUTLINED_FUNCTION_11_1();
      _os_log_impl(v7, v8, v9, v10, v11, 0xEu);
      OUTLINED_FUNCTION_17_1();
    }

    else
    {

      v4 = v3;
    }

    v0 = [v3 isActive];
  }

  return v0;
}

uint64_t sub_266E3DF04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession;
  *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_useOwnAudioSession) = 0;
  if (sub_266E371C0())
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured;
  if (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_audioSessionConfigured) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_ttsActive))
  {
    return 1;
  }

  v5 = 7104878;
  v6 = sub_266E3DC0C();
  v7 = *(v0 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper);
  if (v7 && ([*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_serviceHelper) respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v7, sel_currentResponseMode)) != 0)
  {
    v9 = v8;
    v5 = sub_266E4651C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (qword_281320A90 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v12 = sub_266E4640C();
  OUTLINED_FUNCTION_17_0(v12, qword_281320F40);

  v13 = sub_266E463FC();
  v14 = sub_266E465BC();

  v98 = v5;
  if (os_log_type_enabled(v13, v14))
  {
    v97 = v11;
    v15 = v6;
    v16 = v5;
    v17 = OUTLINED_FUNCTION_21();
    v18 = OUTLINED_FUNCTION_23_0();
    v99 = v18;
    *v17 = 136315138;
    v19 = v16;
    v6 = v15;
    v11 = v97;
    *(v17 + 4) = sub_266E2B0EC(v19, v97, &v99);
    _os_log_impl(&dword_266E28000, v13, v14, "Response mode: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  if (!v6)
  {

LABEL_20:
    v29 = sub_266E463FC();
    v30 = sub_266E465CC();
    if (OUTLINED_FUNCTION_20_0(v30))
    {
      v31 = OUTLINED_FUNCTION_61();
      *v31 = 67109120;
      v31[1] = v6;
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v32, v33, v34, v35, v36, 8u);
      OUTLINED_FUNCTION_10_0();
    }

    return 0;
  }

  v20 = [objc_opt_self() retrieveSessionWithID_];
  if ([v20 isActive])
  {

    v21 = sub_266E463FC();
    v22 = sub_266E465AC();
    if (OUTLINED_FUNCTION_12_1(v22))
    {
      v23 = OUTLINED_FUNCTION_61();
      *v23 = 67109120;
      v23[1] = v6;
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v24, v25, v26, v27, v28, 8u);
      OUTLINED_FUNCTION_15_1();
    }

    result = 1;
    *(v1 + v3) = 1;
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC17SiriGestureBridge17GestureController_readingAnnouncement) == 1)
  {

    v37 = sub_266E463FC();
    v38 = sub_266E465AC();
    if (OUTLINED_FUNCTION_23(v38))
    {
      v39 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_30_0(v39);
      OUTLINED_FUNCTION_8_0(&dword_266E28000, v40, v41, "🔊 Will wait for audio session to be configured for announcement to prevent premature audio session actvation");
      OUTLINED_FUNCTION_11_0();
    }

    return 0;
  }

  v42 = [v20 mode];
  v43 = *MEMORY[0x277CB80A8];
  v44 = sub_266E4651C();
  v46 = v45;
  if (v44 == sub_266E4651C() && v46 == v47)
  {
  }

  else
  {
    v49 = sub_266E4673C();

    if ((v49 & 1) == 0 && ([v20 isOtherAudioPlaying] & 1) == 0)
    {

      v50 = v20;
      v51 = sub_266E463FC();
      v52 = sub_266E465AC();

      if (!os_log_type_enabled(v51, v52))
      {

        return 1;
      }

      v53 = swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_87();
      *v53 = 67109634;
      *(v53 + 4) = v6;
      *(v53 + 8) = 2080;
      v54 = [v50 category];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v55, v56, v57);
      OUTLINED_FUNCTION_89();
      *(v53 + 10) = v54;
      *(v53 + 18) = 2080;
      v58 = [v50 mode];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v59, v60, v61);
      OUTLINED_FUNCTION_89();
      *(v53 + 20) = v58;
      OUTLINED_FUNCTION_10_1();
      v67 = 28;
      goto LABEL_45;
    }
  }

  v68 = [v20 mode];
  v69 = sub_266E4651C();
  v71 = v70;
  if (v69 == sub_266E4651C() && v71 == v72)
  {
  }

  else
  {
    OUTLINED_FUNCTION_53();
    v74 = sub_266E4673C();

    if ((v74 & 1) == 0 && [v20 categoryOptions])
    {

      v50 = v20;
      v51 = sub_266E463FC();
      v75 = sub_266E465AC();
      if (!OUTLINED_FUNCTION_12_1(v75))
      {

        goto LABEL_58;
      }

      v76 = swift_slowAlloc();
      v99 = OUTLINED_FUNCTION_87();
      *v76 = 67109890;
      *(v76 + 4) = v6;
      *(v76 + 8) = 2080;
      v77 = [v50 category];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v78, v79, v80);
      OUTLINED_FUNCTION_89();
      *(v76 + 10) = v77;
      *(v76 + 18) = 2080;
      v81 = [v50 mode];
      sub_266E4651C();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_56(v82, v83, v84);
      OUTLINED_FUNCTION_89();
      *(v76 + 20) = v81;
      *(v76 + 28) = 2048;
      v85 = [v50 categoryOptions];

      *(v76 + 30) = v85;
      OUTLINED_FUNCTION_10_1();
      v67 = 38;
LABEL_45:
      _os_log_impl(v62, v63, v64, v65, v66, v67);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10_0();

LABEL_58:
      return 1;
    }
  }

  v86 = *MEMORY[0x277D48C98];
  if (v98 == sub_266E4651C() && v11 == v87)
  {
  }

  else
  {
    v89 = sub_266E4673C();

    if ((v89 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  v90 = sub_266E463FC();
  v91 = sub_266E465AC();
  if (OUTLINED_FUNCTION_23(v91))
  {
    v92 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20_1(v92);
    OUTLINED_FUNCTION_23_1();
    _os_log_impl(v93, v94, v95, v96, v11, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  result = 1;
  *(v1 + v2) = 1;
  return result;
}