uint64_t sub_1DCC280E8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC26DA8(a1, a2);
}

uint64_t sub_1DCC28194(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC2703C(a1, a2);
}

uint64_t sub_1DCC28240(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCC272D0(a1, a2);
}

uint64_t sub_1DCC282EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCC27564(a1, a2, a3);
}

uint64_t static AppResolutionStrategyHelpers.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCEA88E4();
}

uint64_t static AppResolutionStrategyHelpers.makeAppIsRestrictedByScreenTimeResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEA953C();
}

uint64_t static AppResolutionStrategyHelpers.makeAppDoesNotSupportIntentResponse(app:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA99C0();
}

uint64_t AppResolutionAction.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result;
  v4 = sub_1DD0DD2FC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

unint64_t sub_1DCC285CC()
{
  sub_1DD0DEC1C();

  sub_1DD0DD2FC();
  sub_1DCB25260(&qword_1EDE46328, MEMORY[0x1E69CE260]);
  v0 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v0);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD000000000000014;
}

void sub_1DCC286F0(uint64_t a1, unsigned int *a2, char a3)
{
  OUTLINED_FUNCTION_70();
  v6 = sub_1DD0DD2FC();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  *(v14 - v13) = v3;
  (*(v9 + 104))(v14 - v13, *a2, v6);
  v16 = type metadata accessor for AppResolutionAction();
  v17 = OUTLINED_FUNCTION_73_1(v16);
  (*(v9 + 32))(v17 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v15, v6);
  *(v17 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2880C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_70();
  v4 = sub_1DD0DD2FC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  *(v12 - v11) = v2;
  (*(v7 + 104))(v12 - v11, *MEMORY[0x1E69CE250], v4);
  v14 = type metadata accessor for AppResolutionAction();
  v15 = OUTLINED_FUNCTION_73_1(v14);
  (*(v7 + 32))(v15 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v13, v4);
  *(v15 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = a2;

  return v15;
}

void sub_1DCC28934(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_70();
  v4 = sub_1DD0DD2FC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  *(v12 - v11) = v2;
  v14 = *a2;
  v15 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2(v15);
  (*(v16 + 104))(v13, v14);
  (*(v7 + 104))(v13, *MEMORY[0x1E69CE240], v4);
  v17 = type metadata accessor for AppResolutionAction();
  v18 = OUTLINED_FUNCTION_73_1(v17);
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v13, v4);
  *(v18 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  sub_1DD0DCF8C();
}

uint64_t AppResolutionAction.deinit()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result;
  v2 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t AppResolutionAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result;
  v2 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCC28B68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static AppResolutionAction.== infix(_:_:)();
}

uint64_t sub_1DCC28B8C@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v20 = *(v4 + 128);
  swift_beginAccess();
  v21 = *(v9 + 16);
  v21(v19, &v2[v20], v6);
  OUTLINED_FUNCTION_68();
  result = swift_getEnumCaseMultiPayload();
  v23 = 0xC000000000000000;
  v24 = 0;
  switch(result)
  {
    case 3:
      v24 = 0;
      v23 = *v19;
      break;
    case 4:
      v24 = v19[8];
      v23 = *v19 | 0x8000000000000000;
      break;
    case 5:
      goto LABEL_3;
    case 6:
    case 7:
      break;
    default:
      v25 = *(v9 + 8);
      v26 = OUTLINED_FUNCTION_68();
      v27(v26);
LABEL_3:
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000002FLL, 0x80000001DD1148F0);
      v21(v15, &v2[v20], v6);
      swift_getWitnessTable();
      OUTLINED_FUNCTION_21_3();
      sub_1DD0DF08C();
      v28 = *(v9 + 8);
      v29 = OUTLINED_FUNCTION_21_3();
      v30(v29);
      v31 = v35;
      v32 = v36;
      sub_1DCC22514();
      result = swift_allocError();
      v24 = 0;
      *v33 = v31;
      *(v33 + 8) = v32;
      *(v33 + 16) = 0;
      v23 = result | 0x8000000000000000;
      break;
  }

  *a1 = v23;
  a1[1] = v24;
  return result;
}

void sub_1DCC28DE4()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC29080(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1DCC28DE4();
}

unint64_t sub_1DCC29170(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6);
  v7 = 0x6974706D6F72702ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *v6;
      v13 = 0x697475636578652ELL;
      v14 = 0xEB0000000028676ELL;
      v10 = sub_1DCC285C8();
      goto LABEL_7;
    case 2u:
      v8 = *v6;
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1DD0DEC1C();

      v13 = 0xD00000000000001BLL;
      v14 = 0x80000001DD114A30;
      goto LABEL_6;
    case 3u:
      v8 = *v6;
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1DD0DEC1C();

      v13 = 0x65766C6F7365722ELL;
      v14 = 0xEF203A7070612864;
LABEL_6:
      v12[1] = v8;
      sub_1DD0DD1FC();
      sub_1DCB25260(&qword_1EDE46330, MEMORY[0x1E69CE208]);
      v10 = sub_1DD0DF03C();
LABEL_7:
      MEMORY[0x1E12A6780](v10);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);

      v7 = v13;
      break;
    case 4u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x726F7272652ELL;
      break;
    case 5u:
      return v7;
    case 6u:
      v7 = 0x6C6F7365726E752ELL;
      break;
    case 7u:
      v7 = 0x656C65636E61632ELL;
      break;
    default:
      v7 = 0xD000000000000013;
      (*(v3 + 8))(v6, a1);
      break;
  }

  return v7;
}

uint64_t *sub_1DCC2945C()
{
  OUTLINED_FUNCTION_65();
  v6 = *v1;
  *(v1 + 19) = 0u;
  *(v1 + 21) = 0u;
  v1[23] = 0;
  sub_1DCAFF9E8(v7, (v1 + 2));
  sub_1DCAFF9E8(v5, (v1 + 7));
  OUTLINED_FUNCTION_66();
  sub_1DCC333DC(v3, v1 + *(v8 + 128));
  v9 = *(v6 + 80);
  type metadata accessor for AppResolutionOnDeviceFlow.State();
  swift_storeEnumTagMultiPayload();
  sub_1DCAFF9E8(v4, (v1 + 12));
  v1[17] = v2;
  v1[18] = v0;
  return v1;
}

uint64_t sub_1DCC29518(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v91 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v90 = &v86 - v17;
  v18 = type metadata accessor for Input(0);
  v19 = OUTLINED_FUNCTION_20_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_10_2();
  v25 = v23 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v89 = &v86 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v86 - v31;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v33, qword_1EDE57E00);
  OUTLINED_FUNCTION_3_22();
  sub_1DCC33578(a1, v32, v34);
  v35 = sub_1DD0DD8EC();
  v36 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_151();
    v87 = v14;
    v38 = v37;
    v39 = OUTLINED_FUNCTION_83();
    v88 = v6;
    v40 = v39;
    v95[0] = v39;
    *v38 = 136315138;
    Input.description.getter();
    v86 = v25;
    OUTLINED_FUNCTION_1_19();
    sub_1DCC335D4();
    v41 = OUTLINED_FUNCTION_68();
    v44 = sub_1DCB10E9C(v41, v42, v43);
    v25 = v86;

    *(v38 + 4) = v44;
    _os_log_impl(&dword_1DCAFC000, v35, v36, "[AppResolutionOnDeviceFlow] Input received. %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v6 = v88;
    OUTLINED_FUNCTION_80();
    v14 = v87;
    OUTLINED_FUNCTION_80();
  }

  else
  {

    OUTLINED_FUNCTION_1_19();
    sub_1DCC335D4();
  }

  v45 = *(*v2 + 128);
  swift_beginAccess();
  (*(v91 + 16))(v90, v2 + v45, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v71 = OUTLINED_FUNCTION_58_3();
      v72(v71);
      goto LABEL_19;
    case 3u:
    case 4u:
      v66 = OUTLINED_FUNCTION_58_3();
      v67(v66);
      goto LABEL_16;
    case 5u:
LABEL_19:
      OUTLINED_FUNCTION_3_22();
      sub_1DCC33578(a1, v25, v73);
      v69 = sub_1DD0DD8EC();
      v70 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v69, v70))
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    case 6u:
    case 7u:
LABEL_16:
      OUTLINED_FUNCTION_3_22();
      sub_1DCC33578(a1, v89, v68);
      v69 = sub_1DD0DD8EC();
      v70 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v69, v70))
      {
LABEL_20:
        v74 = OUTLINED_FUNCTION_151();
        v75 = OUTLINED_FUNCTION_83();
        v95[0] = v75;
        *v74 = 136315138;
        v76 = Input.description.getter();
        v78 = v77;
        OUTLINED_FUNCTION_1_19();
        sub_1DCC335D4();
        v79 = sub_1DCB10E9C(v76, v78, v95);

        *(v74 + 4) = v79;
        _os_log_impl(&dword_1DCAFC000, v69, v70, "[AppResolutionOnDeviceFlow] subflow is prompting, ignoring input. %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_62();
      }

      else
      {
LABEL_21:

        OUTLINED_FUNCTION_1_19();
        sub_1DCC335D4();
      }

      return 0;
    default:
      v46 = OUTLINED_FUNCTION_58_3();
      v47(v46);
      sub_1DCB17CA0(v2 + 16, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2570, &qword_1DD0E59E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2578, &qword_1DD0E59E8);
      if (!swift_dynamicCast())
      {
        v93 = 0;
        memset(v92, 0, sizeof(v92));
        sub_1DCB0E9D8(v92, &qword_1ECCA2580, &unk_1DD0E59F0);
        OUTLINED_FUNCTION_3_22();
        sub_1DCC33578(a1, v14, v81);
        OUTLINED_FUNCTION_49_3();
        swift_storeEnumTagMultiPayload();
        sub_1DCC29080(v14);
      }

      v48 = a1;
      sub_1DCAFF9E8(v92, v95);
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v50))
      {
        v51 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v51);
        OUTLINED_FUNCTION_42_5(&dword_1DCAFC000, v52, v53, "AppResolutionFlowStrategy opting in on input action");
        OUTLINED_FUNCTION_62();
      }

      v54 = v95[4];
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_21_3();
      v57(v56);
      v58 = v94[0];
      v59 = sub_1DD0DD8EC();
      v60 = sub_1DD0DE6DC();
      v61 = OUTLINED_FUNCTION_75(v60);
      if (!v58)
      {
        if (v61)
        {
          v82 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v82);
          OUTLINED_FUNCTION_42_5(&dword_1DCAFC000, v83, v84, "AppResolutionFlow strategy indicated it wants to cancel. Cancelling.");
          OUTLINED_FUNCTION_62();
        }

        OUTLINED_FUNCTION_49_3();
LABEL_27:
        swift_storeEnumTagMultiPayload();
        sub_1DCC29080(v14);
      }

      if (v58 == 1)
      {
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v62);
          OUTLINED_FUNCTION_42_5(&dword_1DCAFC000, v63, v64, "[AppResolutionOnDeviceFlow] Strategy decided to handle input.");
          OUTLINED_FUNCTION_62();
        }

        OUTLINED_FUNCTION_3_22();
        sub_1DCC33578(v48, v14, v65);
        OUTLINED_FUNCTION_49_3();
        goto LABEL_27;
      }

      if (v61)
      {
        v85 = OUTLINED_FUNCTION_50_0();
        *v85 = 0;
        _os_log_impl(&dword_1DCAFC000, v59, v60, "AppResolutionFlow strategy indicated it wants to ignore the input. Ignoring...", v85, 2u);
        OUTLINED_FUNCTION_80();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      return 0;
  }
}

uint64_t sub_1DCC29C80()
{
  OUTLINED_FUNCTION_39();
  v1[10] = v2;
  v1[11] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = *(v3 + 80);
  v8 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v1[14] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[15] = v10;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCC29D90()
{
  v64 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(**(v0 + 88) + 128);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v5 = v3 + 16;
  v7 = OUTLINED_FUNCTION_67_5();
  v8(v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(v0 + 160) = **(v0 + 136);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      v26 = **(v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD0E15D0;
      *(inited + 32) = v26;
      OUTLINED_FUNCTION_88_0();
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      swift_retain_n();
      sub_1DD0DCF8C();
    case 3u:
      *(v0 + 176) = **(v0 + 136);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 184) = v42;
      *v42 = v43;
      v42[1] = sub_1DCC2A7B4;
      v44 = *(v0 + 80);
      v45 = *(v0 + 88);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_88_1();

      return sub_1DCC2BC5C(v46, v47);
    case 4u:
      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
      break;
    case 5u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_151();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        sub_1DCC22514();
        swift_allocError();
        *v34 = 0xD00000000000004CLL;
        *(v34 + 8) = 0x80000001DD114920;
        *(v34 + 16) = 0;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1DCAFC000, v30, v5, "[AppResolutionOnDeviceFlow] %@", v32, 0xCu);
        sub_1DCB0E9D8(v33, qword_1ECCA8AD0, &qword_1DD0E4F90);
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_80();
      }

      v36 = *(v0 + 128);
      v37 = *(v0 + 112);
      v39 = *(v0 + 80);
      v38 = *(v0 + 88);

      sub_1DCC22514();
      v40 = swift_allocError();
      *v41 = 0xD00000000000004CLL;
      *(v41 + 8) = 0x80000001DD114920;
      *(v41 + 16) = 0;
      *v36 = v40;
      *(v36 + 8) = 0;
      OUTLINED_FUNCTION_20();
      swift_storeEnumTagMultiPayload();
      sub_1DCC29080(v36);
    case 6u:
    case 7u:
      break;
    default:
      sub_1DCC333DC(*(v0 + 136), *(v0 + 104));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);
      OUTLINED_FUNCTION_3_22();
      sub_1DCC33578(v10, v9, v12);
      v13 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 96);
      if (v15)
      {
        v17 = OUTLINED_FUNCTION_151();
        v63 = OUTLINED_FUNCTION_83();
        *v17 = 136315138;
        v18 = Input.description.getter();
        v20 = v19;
        OUTLINED_FUNCTION_1_19();
        sub_1DCC335D4();
        v21 = sub_1DCB10E9C(v18, v20, &v63);

        *(v17 + 4) = v21;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v22, v23, "[AppResolutionOnDeviceFlow] attempting to resolve app for input : %s");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_19();
        sub_1DCC335D4();
      }

      v54 = *(OUTLINED_FUNCTION_41_5(*(v0 + 88)) + 24);
      OUTLINED_FUNCTION_24_0();
      v62 = v55 + *v55;
      v57 = *(v56 + 4);
      v58 = swift_task_alloc();
      *(v0 + 144) = v58;
      *v58 = v0;
      v58[1] = sub_1DCC2A4A0;
      v59 = *(v0 + 104);
      OUTLINED_FUNCTION_88_1();

      __asm { BRAA            X3, X16 }

      return result;
  }

  v51 = *(v0 + 80);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DCC2A4A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCC2A588()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  **(v0 + 128) = *(v0 + 152);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2A654()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC2A738()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC2A7B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC2A898()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC2A914(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = *(v4 + 80);
  v7 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = sub_1DD0DD2FC();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2AA6C, 0, 0);
}

void sub_1DCC2AA6C()
{
  v3 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2B260()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC2B344()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC2B3C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC2B4C0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCC2B534()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC2B618()
{
  OUTLINED_FUNCTION_39();
  (*(v0[15] + 8))(v0[16], v0[14]);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCC2B6A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v4);
  *(&v7 - v6) = a2;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

double sub_1DCC2B750@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_1DCB08B14(a1);
  v6 = 0;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(a1 + 8 * v6 + 32);
        sub_1DD0DCF8C();
      }

LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
LABEL_17:
      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);

      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v43 = v24;
        *v23 = 136315138;
        v25 = MEMORY[0x1E12A6960](v8, MEMORY[0x1E69E6158]);
        v27 = v26;

        v28 = sub_1DCB10E9C(v25, v27, &v43);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "[AppResolutionOnDeviceFlow] Pushing authorization guard flow for %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v23, -1, -1);
      }

      else
      {
      }

      v38 = swift_allocObject();
      v38[2] = a2;
      v38[3] = a3;
      v38[4] = v7;
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](v6, a1);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    v11 = sub_1DD0DD1BC();
    v13 = v12;

    ++v6;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v8 + 16);
        sub_1DCB34108();
        v8 = v17;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_1DCB34108();
        v8 = v18;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v6 = v10;
    }
  }

  if (*(v8 + 16))
  {
    v7 = v39;
    sub_1DCC2D290(v44);
    v19 = *(v39 + 144);
    if ((*(v39 + 136))(v8, v44))
    {
      if (qword_1EDE4F900 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_17;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v34 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v34, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DCAFC000, v35, v36, "[AppResolutionOnDeviceFlow] Flow is configured to bypass authorization guards", v37, 2u);
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    a2();
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    return static ExecuteResponse.ongoing(requireInput:)(0, a4);
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v29 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v29, qword_1EDE57E00);
    v30 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DCAFC000, v30, v31, "[AppResolutionOnDeviceFlow] No apps have proper bundle ids: bypassing authorization guards", v32, 2u);
      MEMORY[0x1E12A8390](v32, -1, -1);
    }

    a2();

    return static ExecuteResponse.ongoing(requireInput:)(0, a4);
  }
}

uint64_t sub_1DCC2BC5C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2BD40, 0, 0);
}

uint64_t sub_1DCC2BD40()
{
  OUTLINED_FUNCTION_33();
  v3 = OUTLINED_FUNCTION_75_2();
  *(v0 + 104) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v4;
  *v4 = v5;
  v4[1] = sub_1DCC2BDFC;
  v6 = OUTLINED_FUNCTION_51_5();

  return sub_1DCB63BBC(v6, v7, v8, v9, v10);
}

uint64_t sub_1DCC2BDFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCC2BEFC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  *v1 = *(v0 + 64);
  v2 = *MEMORY[0x1E69CE258];
  v3 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 104))(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_61_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  *(v0 + 136) = 12057;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2C00C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v3, &qword_1ECCA2278, &qword_1DD0E4830);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC2C11C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "AppResolutionFlow successfully sent app resolution success response.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  OUTLINED_FUNCTION_89_5();

  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCC2C210()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  *v4 = v1;
  *(v4 + 8) = 0;
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCC29080(v4);
}

void sub_1DCC2C2BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DD0DD2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 80);
  v11 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v20 - v14);
  *v9 = a2;
  (*(v5 + 104))(v9, *MEMORY[0x1E69CE248], v4);
  v16 = type metadata accessor for AppResolutionAction();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v9, v4);
  *(v19 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  *v15 = v19;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2C46C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2C518, 0, 0);
}

void sub_1DCC2C518()
{
  OUTLINED_FUNCTION_41();
  v3 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 32);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC2C744(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DD0DD2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 80);
  v11 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v20 - v14);
  *v9 = a2;
  (*(v5 + 104))(v9, *MEMORY[0x1E69CE250], v4);
  v16 = type metadata accessor for AppResolutionAction();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v9, v4);
  *(v19 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
  *v15 = v19;
  swift_storeEnumTagMultiPayload();

  sub_1DCC29080(v15);
}

uint64_t sub_1DCC2C8F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2C9A0, 0, 0);
}

void sub_1DCC2C9A0()
{
  OUTLINED_FUNCTION_41();
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[3];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = OUTLINED_FUNCTION_151();
    v16 = OUTLINED_FUNCTION_83();
    *v6 = 136315138;
    v7 = sub_1DD0DD1FC();
    v8 = MEMORY[0x1E12A6960](v5, v7);
    v10 = sub_1DCB10E9C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "[AppResolutionOnDeviceFlow] executeAppNeedsDisambiguation: %s", v6, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_62();
  }

  v11 = v0[5];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  swift_storeEnumTagMultiPayload();
  sub_1DCC29080(v12);
}

uint64_t sub_1DCC2CB7C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v3[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC2CC60, 0, 0);
}

void sub_1DCC2CC60()
{
  OUTLINED_FUNCTION_41();
  v3 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DD0DD8FC();
  *(v0 + 104) = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC2CDF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = *(v3 + 112);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCC2CEF4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = sub_1DD0DD2FC();
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_67_5();
  v7(v6);
  v8 = OUTLINED_FUNCTION_61_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  *(v0 + 144) = 2054;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_77_2(v11);

  return sub_1DCC2D7B0(v13, v12, (v0 + 144), (v0 + 145));
}

uint64_t sub_1DCC2CFEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v3, &qword_1ECCA2278, &qword_1DD0E4830);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCC2D0FC()
{
  OUTLINED_FUNCTION_39();
  v2 = v1[13];
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "AppResolutionFlow successfully sent unsuccessful response.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  v7 = v1[10];
  v6 = v1[11];
  v8 = v1[9];

  OUTLINED_FUNCTION_20();
  swift_storeEnumTagMultiPayload();
  sub_1DCC29080(v6);
}

void sub_1DCC2D1E4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  *v4 = v1;
  *(v4 + 8) = 0;
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCC29080(v4);
}

uint64_t sub_1DCC2D290@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DCB09970(v1 + 152, &v4, &qword_1ECCA2568, &unk_1DD0FE510);
  if (!v5)
  {
    sub_1DCB0E9D8(&v4, &qword_1ECCA2568, &unk_1DD0FE510);
    type metadata accessor for EnvironmentSummoner();
    swift_initStaticObject();
    sub_1DCB25260(&qword_1EDE48A98, type metadata accessor for EnvironmentSummoner);
    sub_1DD0DCB0C();
  }

  sub_1DCAFF9E8(&v4, &v6);
  return sub_1DCAFF9E8(&v6, a1);
}

uint64_t sub_1DCC2D47C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + 80);
  v7 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - v11;
  if (*(a1 + 8) == 1)
  {
    v13 = *a1;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = v13;
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    sub_1DCB79378(v13, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "[AppResolutionOnDeviceFlow] AppAuthorizationFlow denied access, cannot continue. Error: %@", v18, 0xCu);
      sub_1DCB0E9D8(v19, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v19, -1, -1);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

    *v12 = v13;
    v12[8] = 1;
    swift_storeEnumTagMultiPayload();
    v22 = v13;
    sub_1DCC29080(v12);
  }

  return a2(v10);
}

uint64_t sub_1DCC2D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC2D6B8, 0, 0);
}

uint64_t sub_1DCC2D6B8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_41_5(*(v0 + 24)) + 32);
  OUTLINED_FUNCTION_8();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_39_5(v5);

  return v8(v7);
}

uint64_t sub_1DCC2D7B0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = v4;
  *(v5 + 56) = a1;
  v8 = type metadata accessor for SiriKitEventPayload(0);
  *(v5 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 120) = *a3;
  *(v5 + 121) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1DCC2D874, 0, 0);
}

uint64_t sub_1DCC2D874()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_33_1();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = OUTLINED_FUNCTION_68();
  if ((sub_1DCB651D0(v6) & 1) == 0)
  {
LABEL_8:
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);

    OUTLINED_FUNCTION_29();

    return v18();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
  v8 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_137();
  if (os_log_type_enabled(v8, v9))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_120(&dword_1DCAFC000, v10, v11, "#AppResolutionOnDeviceFlow logging Task step: ResolveApp");
    OUTLINED_FUNCTION_92_0();
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 120);

  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v12, v15);
  (*(v14 + 8))(v15, v14);
  if (sub_1DCE0669C(v13, 10))
  {
    sub_1DCB0E9D8(v0 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
    goto LABEL_8;
  }

  v20 = *(v0 + 121);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 56);
  v26 = *(v0 + 120);
  if (sub_1DCE0669C(v26, 10))
  {
    v26 = 25;
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
  *v21 = v26;
  *(v21 + 8) = 0x54746E6572727543;
  *(v21 + 16) = 0xEB000000006B7361;
  *(v21 + 24) = v20;
  sub_1DCB09970(v0 + 16, v21 + 32, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v21 + 72) = 0;
  sub_1DCB09970(v25, v21 + v27, &qword_1ECCA2278, &qword_1DD0E4830);
  OUTLINED_FUNCTION_20();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriKitEvent(0);
  sub_1DCC33578(v21, v22, type metadata accessor for SiriKitEventPayload);
  v28 = SiriKitEvent.__allocating_init(_:builder:)(v22, 0);
  *(v0 + 104) = v28;
  sub_1DCC335D4();
  v29 = v24[15];
  v30 = v24[16];
  __swift_project_boxed_opaque_existential_1(v24 + 12, v29);
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_24_0();
  v36 = (v32 + *v32);
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  *(v0 + 112) = v35;
  *v35 = v0;
  v35[1] = sub_1DCC2DC08;

  return v36(v28, v29, v30);
}

uint64_t sub_1DCC2DC08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC2DCEC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[13];

  sub_1DCB0E9D8((v0 + 2), &unk_1ECCA3280, &unk_1DD0E23D0);
  v3 = v0[11];
  v2 = v0[12];

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCC2DD6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = sub_1DD0DD2FC();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v54 = (v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v6 + 80);
  v12 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v52 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 9);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD0DD8FC();
  v21 = __swift_project_value_buffer(v20, qword_1EDE57E00);
  sub_1DCC334AC(v17, v18, v19);
  v52[3] = v21;
  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  sub_1DCC334C8(v17, v18, v19);
  v24 = os_log_type_enabled(v22, v23);
  v56 = v17;
  v53 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v52[1] = a3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v52[2] = a2;
    v28 = v27;
    v57 = v27;
    *v26 = 136315138;
    v29 = sub_1DCC32EE8(v17, v18 | (v19 << 8));
    v31 = v16;
    v32 = sub_1DCB10E9C(v29, v30, &v57);

    *(v26 + 4) = v32;
    v16 = v31;
    _os_log_impl(&dword_1DCAFC000, v22, v23, "AppConfirmationFlow: Result : %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A8390](v28, -1, -1);
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  if (v19)
  {
    v33 = v56;
    if (v19 == 1)
    {
      *v16 = v56;
      v16[8] = v53 & 1;
      swift_storeEnumTagMultiPayload();
      v34 = v33;
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v56 + 24) == 4 && !*(v56 + 2))
    {
      sub_1DD0DCF8C();
    }

    if (sub_1DCC0CC88())
    {
      sub_1DD0DCF8C();
    }

    v35 = sub_1DCC0CC58();
    if (v35)
    {
      v37 = v54;
      v36 = v55;
      *v54 = v35;
      (*(v36 + 104))(v37, *MEMORY[0x1E69CE248], v7);
      v38 = type metadata accessor for AppResolutionAction();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      v41 = swift_allocObject();
      (*(v36 + 32))(v41 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v37, v7);
      *(v41 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
      *v16 = v41;
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    v42 = sub_1DCC0CCB4();
    if (v42)
    {
      v43 = v54;
      *v54 = v42;
      v44 = MEMORY[0x1E69CE250];
    }

    else
    {
      v45 = *MEMORY[0x1E69CE228];
      v46 = sub_1DD0DD2DC();
      v43 = v54;
      (*(*(v46 - 8) + 104))(v54, v45, v46);
      v44 = MEMORY[0x1E69CE240];
    }

    v47 = v55;
    (*(v55 + 104))(v43, *v44, v7);
    v48 = type metadata accessor for AppResolutionAction();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    (*(v47 + 32))(v51 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v43, v7);
    *(v51 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
    *v16 = v51;
  }

  swift_storeEnumTagMultiPayload();
LABEL_12:
  sub_1DCC29080(v16);
}

void sub_1DCC2E5C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1DD0DD2FC();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v52 = (v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + 80);
  v10 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v51 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  v19 = __swift_project_value_buffer(v18, qword_1EDE57E00);
  sub_1DCC334AC(v15, v16, v17);
  v51[2] = v19;
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6DC();
  sub_1DCC334C8(v15, v16, v17);
  v22 = os_log_type_enabled(v20, v21);
  v54 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51[1] = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v51[0] = v10;
    v26 = v25;
    v55 = v25;
    *v24 = 136315138;
    v27 = sub_1DCC330B0(v15, v16 | (v17 << 8));
    v29 = v5;
    v30 = v14;
    v31 = sub_1DCB10E9C(v27, v28, &v55);

    *(v24 + 4) = v31;
    v14 = v30;
    v5 = v29;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "AppDisambiguationFlow: Result : %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A8390](v26, -1, -1);
    MEMORY[0x1E12A8390](v24, -1, -1);
  }

  if (v17)
  {
    v32 = v54;
    if (v17 == 1)
    {
      *v14 = v54;
      v14[8] = v16 & 1;
      swift_storeEnumTagMultiPayload();
      v33 = v32;
      goto LABEL_11;
    }
  }

  else
  {
    if (sub_1DCC0CC88())
    {
      sub_1DD0DCF8C();
    }

    v34 = sub_1DCC0CC58();
    if (v34)
    {
      v36 = v52;
      v35 = v53;
      *v52 = v34;
      (*(v35 + 104))(v36, *MEMORY[0x1E69CE248], v5);
      v37 = type metadata accessor for AppResolutionAction();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v40 = swift_allocObject();
      (*(v35 + 32))(v40 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v36, v5);
      *(v40 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
      *v14 = v40;
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    v41 = sub_1DCC0CCB4();
    if (v41)
    {
      v42 = v52;
      *v52 = v41;
      v43 = MEMORY[0x1E69CE250];
    }

    else
    {
      v44 = *MEMORY[0x1E69CE228];
      v45 = sub_1DD0DD2DC();
      v42 = v52;
      (*(*(v45 - 8) + 104))(v52, v44, v45);
      v43 = MEMORY[0x1E69CE240];
    }

    v46 = v53;
    (*(v53 + 104))(v42, *v43, v5);
    v47 = type metadata accessor for AppResolutionAction();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    (*(v46 + 32))(v50 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_result, v42, v5);
    *(v50 + OBJC_IVAR____TtC11SiriKitFlow19AppResolutionAction_runAuthChecksBeforePrompt) = 0;
    *v14 = v50;
  }

  swift_storeEnumTagMultiPayload();
LABEL_11:
  sub_1DCC29080(v14);
}

uint64_t sub_1DCC2EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC2EC50, 0, 0);
}

uint64_t sub_1DCC2EC50()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_41_5(*(v0 + 24)) + 40);
  OUTLINED_FUNCTION_8();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_39_5(v5);

  return v8(v7);
}

void *sub_1DCC2ED48()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v2 = v0[18];

  sub_1DCB0E9D8((v0 + 19), &qword_1ECCA2568, &unk_1DD0FE510);
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 128);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for AppResolutionOnDeviceFlow.State();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1DCC2EE18(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC2EE74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1DCB09970(v3 + 152, a1, &qword_1ECCA2568, &unk_1DD0FE510);
}

uint64_t sub_1DCC2EED0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1DCC33634(a1, v3 + 152, &qword_1ECCA2568, &unk_1DD0FE510);
  return swift_endAccess();
}

uint64_t (*sub_1DCC2EF34())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DCC2EFD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC29C80();
}

uint64_t sub_1DCC2F094()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);

  return sub_1DCC100AC();
}

uint64_t sub_1DCC2F130()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_70();
  v0 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_20_0(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCC243C4();
}

uint64_t type metadata accessor for AppResolutionAction()
{
  result = qword_1EDE48E28;
  if (!qword_1EDE48E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 72);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategyAsync.resolveApp(input:)()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_24_0();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1DCB47434;
  v7 = OUTLINED_FUNCTION_21_3();

  return v9(v7);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

_BYTE *storeEnumTagSinglePayload for AppResolutionStrategyHelpers(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCC2FA30()
{
  result = sub_1DD0DD2FC();
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

uint64_t sub_1DCC2FB28(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for AppResolutionOnDeviceFlow.State();
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

uint64_t sub_1DCC2FC14()
{
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCC2FCB8(char *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DB04C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = type metadata accessor for Input(0);
      v8 = v7[5];
      v9 = &a1[v8];
      v10 = a2 + v8;
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(v9, v10, v12);
          goto LABEL_35;
        case 1u:
          v25 = sub_1DD0DC76C();
          (*(*(v25 - 8) + 16))(v9, v10, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v9[*(v26 + 48)] = *&v10[*(v26 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v19 = *(v10 + 1);
          *v9 = *v10;
          *(v9 + 1) = v19;
          *(v9 + 2) = *(v10 + 2);

          goto LABEL_35;
        case 3u:
          *v9 = *v10;
          swift_unknownObjectRetain();
          goto LABEL_35;
        case 4u:
          v17 = sub_1DD0DB1EC();
          (*(*(v17 - 8) + 16))(v9, v10, v17);
          goto LABEL_35;
        case 5u:
          v27 = *v10;
          *v9 = *v10;
          v28 = v27;
          goto LABEL_35;
        case 6u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v9, v10, v29);
          v30 = type metadata accessor for USOParse();
          v31 = v30[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v31], &v10[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v9[v31], &v10[v31], v32);
            __swift_storeEnumTagSinglePayload(&v9[v31], 0, 1, v32);
          }

          v64 = v30[6];
          v65 = &v9[v64];
          v66 = &v10[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v30[7];
          v69 = &v9[v68];
          v70 = &v10[v68];
          v69[4] = v70[4];
          *v69 = *v70;

          goto LABEL_35;
        case 7u:
          v20 = sub_1DD0DB4BC();
          (*(*(v20 - 8) + 16))(v9, v10, v20);
          v21 = type metadata accessor for USOParse();
          v22 = v21[5];
          v23 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v22], 1, v23))
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v22], &v10[v22], *(*(v24 - 8) + 64));
          }

          else
          {
            (*(*(v23 - 8) + 16))(&v9[v22], &v10[v22], v23);
            __swift_storeEnumTagSinglePayload(&v9[v22], 0, 1, v23);
          }

          v44 = v21[6];
          v45 = &v9[v44];
          v46 = &v10[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = v21[7];
          v49 = &v9[v48];
          v50 = &v10[v48];
          v49[4] = v50[4];
          *v49 = *v50;
          v51 = type metadata accessor for LinkParse();
          v52 = v51[5];
          v53 = &v9[v52];
          v54 = &v10[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v51[6];
          v57 = &v9[v56];
          v58 = &v10[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v51[7];
          v61 = &v9[v60];
          v62 = &v10[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;

          goto LABEL_35;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 16))(v9, v10, v34);
          v35 = type metadata accessor for NLRouterParse();
          v36 = *(v35 + 20);
          v37 = &v9[v36];
          v38 = &v10[v36];
          v39 = *(v38 + 1);
          *v37 = *v38;
          *(v37 + 1) = v39;
          v40 = *(v35 + 24);
          v91 = v35;
          __dst = &v9[v40];
          v41 = &v10[v40];
          v42 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v41, *(*(v43 - 8) + 64));
          }

          else
          {
            v71 = sub_1DD0DB4BC();
            (*(*(v71 - 8) + 16))(__dst, v41, v71);
            v72 = v42[5];
            v90 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v41[v72], 1, v90))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v72], &v41[v72], *(*(v73 - 8) + 64));
            }

            else
            {
              (*(*(v90 - 8) + 16))(&__dst[v72], &v41[v72]);
              __swift_storeEnumTagSinglePayload(&__dst[v72], 0, 1, v90);
            }

            v74 = v42[6];
            v75 = &__dst[v74];
            v76 = &v41[v74];
            v77 = *(v76 + 1);
            *v75 = *v76;
            *(v75 + 1) = v77;
            v78 = v42[7];
            v79 = &__dst[v78];
            v80 = &v41[v78];
            v79[4] = v80[4];
            *v79 = *v80;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v42);
          }

          v81 = *(v91 + 28);
          v82 = *&v10[v81];
          *&v9[v81] = v82;
          v83 = v82;
          goto LABEL_35;
        case 9u:
          v18 = sub_1DD0DD08C();
          (*(*(v18 - 8) + 16))(v9, v10, v18);
LABEL_35:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
          break;
      }

      *&a1[v7[6]] = *(a2 + v7[6]);
      v84 = v7[7];
      v85 = &a1[v84];
      v86 = a2 + v84;
      v87 = *(a2 + v84 + 24);

      if (v87)
      {
        v88 = *(v86 + 32);
        *(v85 + 3) = v87;
        *(v85 + 4) = v88;
        (**(v87 - 8))(v85, v86, v87);
      }

      else
      {
        v89 = *(v86 + 16);
        *v85 = *v86;
        *(v85 + 1) = v89;
        *(v85 + 4) = *(v86 + 32);
      }

      a1[v7[8]] = *(a2 + v7[8]);
      goto LABEL_40;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v13 = *a2;
      v14 = *a2;
      *a1 = v13;
      a1[8] = *(a2 + 8);
LABEL_40:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(v5 + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

void sub_1DCC30634(void **a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = sub_1DD0DB04C();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = type metadata accessor for Input(0);
      v6 = a1 + v5[5];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v7 = sub_1DD0DC76C();
          goto LABEL_12;
        case 1u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 8))(v6, v20);
          v21 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v8 = *(v6 + 1);

          v9 = *(v6 + 2);
          goto LABEL_24;
        case 3u:
          v10 = *v6;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v7 = sub_1DD0DB1EC();
          goto LABEL_12;
        case 5u:
          v22 = *v6;
          goto LABEL_30;
        case 6u:
          v23 = sub_1DD0DB4BC();
          (*(*(v23 - 8) + 8))(v6, v23);
          v24 = type metadata accessor for USOParse();
          v25 = *(v24 + 20);
          v26 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v6[v25], 1, v26))
          {
            (*(*(v26 - 8) + 8))(&v6[v25], v26);
          }

          v19 = *(v24 + 24);
          goto LABEL_23;
        case 7u:
          v11 = sub_1DD0DB4BC();
          (*(*(v11 - 8) + 8))(v6, v11);
          v12 = type metadata accessor for USOParse();
          v13 = *(v12 + 20);
          v14 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v6[v13], 1, v14))
          {
            (*(*(v14 - 8) + 8))(&v6[v13], v14);
          }

          v15 = *&v6[*(v12 + 24) + 8];

          v16 = type metadata accessor for LinkParse();
          v17 = *&v6[v16[5] + 8];

          v18 = *&v6[v16[6] + 8];

          v19 = v16[7];
LABEL_23:
          v27 = *&v6[v19 + 8];
LABEL_24:

          break;
        case 8u:
          v28 = sub_1DD0DD12C();
          (*(*(v28 - 8) + 8))(v6, v28);
          v29 = type metadata accessor for NLRouterParse();
          v30 = *&v6[v29[5] + 8];

          v31 = &v6[v29[6]];
          v32 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
          {
            v33 = sub_1DD0DB4BC();
            (*(*(v33 - 8) + 8))(v31, v33);
            v34 = *(v32 + 20);
            v35 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v31 + v34, 1, v35))
            {
              (*(*(v35 - 8) + 8))(v31 + v34, v35);
            }

            v36 = *(v31 + *(v32 + 24) + 8);
          }

          v22 = *&v6[v29[7]];
LABEL_30:

          break;
        case 9u:
          v7 = sub_1DD0DD08C();
LABEL_12:
          (*(*(v7 - 8) + 8))(v6, v7);
          break;
        default:
          break;
      }

      v37 = *(a1 + v5[6]);

      v38 = (a1 + v5[7]);
      if (v38[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      break;
    case 1u:
    case 2u:
    case 3u:
      v2 = *a1;

      break;
    case 4u:
      v3 = *a1;

      break;
    default:
      return;
  }
}

void *sub_1DCC30B20(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DB04C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = type metadata accessor for Input(0);
      v8 = v7[5];
      v9 = &a1[v8];
      v10 = a2 + v8;
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(v9, v10, v12);
          goto LABEL_33;
        case 1u:
          v25 = sub_1DD0DC76C();
          (*(*(v25 - 8) + 16))(v9, v10, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v9[*(v26 + 48)] = *&v10[*(v26 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v19 = *(v10 + 1);
          *v9 = *v10;
          *(v9 + 1) = v19;
          *(v9 + 2) = *(v10 + 2);

          goto LABEL_33;
        case 3u:
          *v9 = *v10;
          swift_unknownObjectRetain();
          goto LABEL_33;
        case 4u:
          v17 = sub_1DD0DB1EC();
          (*(*(v17 - 8) + 16))(v9, v10, v17);
          goto LABEL_33;
        case 5u:
          v27 = *v10;
          *v9 = *v10;
          v28 = v27;
          goto LABEL_33;
        case 6u:
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 16))(v9, v10, v29);
          v30 = type metadata accessor for USOParse();
          v31 = v30[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v31], &v10[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v9[v31], &v10[v31], v32);
            __swift_storeEnumTagSinglePayload(&v9[v31], 0, 1, v32);
          }

          v64 = v30[6];
          v65 = &v9[v64];
          v66 = &v10[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;
          v68 = v30[7];
          v69 = &v9[v68];
          v70 = &v10[v68];
          v69[4] = v70[4];
          *v69 = *v70;

          goto LABEL_33;
        case 7u:
          v20 = sub_1DD0DB4BC();
          (*(*(v20 - 8) + 16))(v9, v10, v20);
          v21 = type metadata accessor for USOParse();
          v22 = v21[5];
          v23 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v22], 1, v23))
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v22], &v10[v22], *(*(v24 - 8) + 64));
          }

          else
          {
            (*(*(v23 - 8) + 16))(&v9[v22], &v10[v22], v23);
            __swift_storeEnumTagSinglePayload(&v9[v22], 0, 1, v23);
          }

          v44 = v21[6];
          v45 = &v9[v44];
          v46 = &v10[v44];
          v47 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v47;
          v48 = v21[7];
          v49 = &v9[v48];
          v50 = &v10[v48];
          v49[4] = v50[4];
          *v49 = *v50;
          v51 = type metadata accessor for LinkParse();
          v52 = v51[5];
          v53 = &v9[v52];
          v54 = &v10[v52];
          v55 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v55;
          v56 = v51[6];
          v57 = &v9[v56];
          v58 = &v10[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v51[7];
          v61 = &v9[v60];
          v62 = &v10[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;

          goto LABEL_33;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 16))(v9, v10, v34);
          v35 = type metadata accessor for NLRouterParse();
          v36 = *(v35 + 20);
          v37 = &v9[v36];
          v38 = &v10[v36];
          v39 = *(v38 + 1);
          *v37 = *v38;
          *(v37 + 1) = v39;
          v40 = *(v35 + 24);
          v91 = v35;
          __dst = &v9[v40];
          v41 = &v10[v40];
          v42 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v41, *(*(v43 - 8) + 64));
          }

          else
          {
            v71 = sub_1DD0DB4BC();
            (*(*(v71 - 8) + 16))(__dst, v41, v71);
            v72 = v42[5];
            v90 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v41[v72], 1, v90))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v72], &v41[v72], *(*(v73 - 8) + 64));
            }

            else
            {
              (*(*(v90 - 8) + 16))(&__dst[v72], &v41[v72]);
              __swift_storeEnumTagSinglePayload(&__dst[v72], 0, 1, v90);
            }

            v74 = v42[6];
            v75 = &__dst[v74];
            v76 = &v41[v74];
            v77 = *(v76 + 1);
            *v75 = *v76;
            *(v75 + 1) = v77;
            v78 = v42[7];
            v79 = &__dst[v78];
            v80 = &v41[v78];
            v79[4] = v80[4];
            *v79 = *v80;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v42);
          }

          v81 = *(v91 + 28);
          v82 = *&v10[v81];
          *&v9[v81] = v82;
          v83 = v82;
          goto LABEL_33;
        case 9u:
          v18 = sub_1DD0DD08C();
          (*(*(v18 - 8) + 16))(v9, v10, v18);
LABEL_33:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
          break;
      }

      *&a1[v7[6]] = *(a2 + v7[6]);
      v84 = v7[7];
      v85 = &a1[v84];
      v86 = a2 + v84;
      v87 = *(a2 + v84 + 24);

      if (v87)
      {
        v88 = *(v86 + 32);
        *(v85 + 3) = v87;
        *(v85 + 4) = v88;
        (**(v87 - 8))(v85, v86, v87);
      }

      else
      {
        v89 = *(v86 + 16);
        *v85 = *v86;
        *(v85 + 1) = v89;
        *(v85 + 4) = *(v86 + 32);
      }

      a1[v7[8]] = *(a2 + v7[8]);
      goto LABEL_38;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 4u:
      v13 = *a2;
      v14 = *a2;
      *a1 = v13;
      a1[8] = *(a2 + 8);
LABEL_38:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

uint64_t *sub_1DCC3145C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DB04C();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = type metadata accessor for Input(0);
        v8 = v7[5];
        v9 = a1 + v8;
        v10 = a2 + v8;
        v11 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v12 = sub_1DD0DC76C();
            (*(*(v12 - 8) + 16))(v9, v10, v12);
            goto LABEL_34;
          case 1u:
            v24 = sub_1DD0DC76C();
            (*(*(v24 - 8) + 16))(v9, v10, v24);
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v9[*(v25 + 48)] = *&v10[*(v25 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v9 = *v10;
            *(v9 + 1) = *(v10 + 1);
            *(v9 + 2) = *(v10 + 2);

            goto LABEL_34;
          case 3u:
            *v9 = *v10;
            swift_unknownObjectRetain();
            goto LABEL_34;
          case 4u:
            v17 = sub_1DD0DB1EC();
            (*(*(v17 - 8) + 16))(v9, v10, v17);
            goto LABEL_34;
          case 5u:
            v26 = *v10;
            *v9 = *v10;
            v27 = v26;
            goto LABEL_34;
          case 6u:
            v28 = sub_1DD0DB4BC();
            (*(*(v28 - 8) + 16))(v9, v10, v28);
            v29 = type metadata accessor for USOParse();
            v30 = v29[5];
            v31 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v30], 1, v31))
            {
              v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v30], &v10[v30], *(*(v32 - 8) + 64));
            }

            else
            {
              (*(*(v31 - 8) + 16))(&v9[v30], &v10[v30], v31);
              __swift_storeEnumTagSinglePayload(&v9[v30], 0, 1, v31);
            }

            v59 = v29[6];
            v60 = &v9[v59];
            v61 = &v10[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);
            v62 = v29[7];
            v63 = &v9[v62];
            v64 = &v10[v62];
            v65 = *v64;
            v63[4] = v64[4];
            *v63 = v65;

            goto LABEL_34;
          case 7u:
            v19 = sub_1DD0DB4BC();
            (*(*(v19 - 8) + 16))(v9, v10, v19);
            v20 = type metadata accessor for USOParse();
            v21 = v20[5];
            v22 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v22))
            {
              v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v9[v21], &v10[v21], *(*(v23 - 8) + 64));
            }

            else
            {
              (*(*(v22 - 8) + 16))(&v9[v21], &v10[v21], v22);
              __swift_storeEnumTagSinglePayload(&v9[v21], 0, 1, v22);
            }

            v42 = v20[6];
            v43 = &v9[v42];
            v44 = &v10[v42];
            *v43 = *v44;
            *(v43 + 1) = *(v44 + 1);
            v45 = v20[7];
            v46 = &v9[v45];
            v47 = &v10[v45];
            v48 = *v47;
            v46[4] = v47[4];
            *v46 = v48;
            v49 = type metadata accessor for LinkParse();
            v50 = v49[5];
            v51 = &v9[v50];
            v52 = &v10[v50];
            *v51 = *v52;
            *(v51 + 1) = *(v52 + 1);
            v53 = v49[6];
            v54 = &v9[v53];
            v55 = &v10[v53];
            *v54 = *v55;
            *(v54 + 1) = *(v55 + 1);
            v56 = v49[7];
            v57 = &v9[v56];
            v58 = &v10[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);

            goto LABEL_34;
          case 8u:
            v33 = sub_1DD0DD12C();
            (*(*(v33 - 8) + 16))(v9, v10, v33);
            v34 = type metadata accessor for NLRouterParse();
            v35 = *(v34 + 20);
            v36 = &v9[v35];
            v37 = &v10[v35];
            *v36 = *v37;
            *(v36 + 1) = *(v37 + 1);
            v38 = *(v34 + 24);
            v86 = v34;
            __dst = &v9[v38];
            v39 = &v10[v38];
            v40 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v39, 1, v40))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v39, *(*(v41 - 8) + 64));
            }

            else
            {
              v66 = sub_1DD0DB4BC();
              (*(*(v66 - 8) + 16))(__dst, v39, v66);
              v67 = v40[5];
              v85 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v39[v67], 1, v85))
              {
                v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v67], &v39[v67], *(*(v68 - 8) + 64));
              }

              else
              {
                (*(*(v85 - 8) + 16))(&__dst[v67], &v39[v67]);
                __swift_storeEnumTagSinglePayload(&__dst[v67], 0, 1, v85);
              }

              v69 = v40[6];
              v70 = &__dst[v69];
              v71 = &v39[v69];
              *v70 = *v71;
              *(v70 + 1) = *(v71 + 1);
              v72 = v40[7];
              v73 = &__dst[v72];
              v74 = &v39[v72];
              v75 = *v74;
              v73[4] = v74[4];
              *v73 = v75;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v40);
            }

            v76 = *(v86 + 28);
            v77 = *&v10[v76];
            *&v9[v76] = v77;
            v78 = v77;
            goto LABEL_34;
          case 9u:
            v18 = sub_1DD0DD08C();
            (*(*(v18 - 8) + 16))(v9, v10, v18);
LABEL_34:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v9, v10, *(*(v11 - 8) + 64));
            break;
        }

        *(a1 + v7[6]) = *(a2 + v7[6]);
        v79 = v7[7];
        v80 = a1 + v79;
        v81 = (a2 + v79);
        v82 = *(a2 + v79 + 24);

        if (v82)
        {
          *(v80 + 3) = v82;
          *(v80 + 4) = *(v81 + 4);
          (**(v82 - 8))(v80, v81, v82);
        }

        else
        {
          v83 = *v81;
          v84 = v81[1];
          *(v80 + 4) = *(v81 + 4);
          *v80 = v83;
          *(v80 + 1) = v84;
        }

        *(a1 + v7[8]) = *(a2 + v7[8]);
        goto LABEL_39;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 4u:
        v13 = *a2;
        v14 = *a2;
        *a1 = v13;
        *(a1 + 8) = *(a2 + 8);
LABEL_39:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v5 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  return a1;
}

char *sub_1DCC31E30(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v27 = type metadata accessor for USOParse();
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v28], &v12[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v11[v28], &v12[v28], v29);
          __swift_storeEnumTagSinglePayload(&v11[v28], 0, 1, v29);
        }

        *&v11[v27[6]] = *&v12[v27[6]];
        v43 = v27[7];
        v44 = &v11[v43];
        v45 = &v12[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v11, v12, v31);
        v32 = type metadata accessor for USOParse();
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v33], &v12[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v11[v33], &v12[v33], v34);
          __swift_storeEnumTagSinglePayload(&v11[v33], 0, 1, v34);
        }

        *&v11[v32[6]] = *&v12[v32[6]];
        v46 = v32[7];
        v47 = &v11[v46];
        v48 = &v12[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v11[v49[5]] = *&v12[v49[5]];
        *&v11[v49[6]] = *&v12[v49[6]];
        *&v11[v49[7]] = *&v12[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v11, v12, v15);
        v16 = type metadata accessor for NLRouterParse();
        *&v11[*(v16 + 20)] = *&v12[*(v16 + 20)];
        v60 = v16;
        v17 = *(v16 + 24);
        v18 = &v11[v17];
        v19 = &v12[v17];
        v20 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v59 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v58 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v59;
            memcpy(&v59[v58], &v19[v58], *(*(v41 - 8) + 64));
          }

          else
          {
            v57 = v40;
            (*(*(v40 - 8) + 32))(&v59[v58], &v19[v58], v40);
            v42 = v59;
            __swift_storeEnumTagSinglePayload(&v59[v58], 0, 1, v57);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v11[*(v60 + 28)] = *&v12[*(v60 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v53 = v9[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v9[8]] = a2[v9[8]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *sub_1DCC325B4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v27 = type metadata accessor for USOParse();
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v28], &v12[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v11[v28], &v12[v28], v29);
          __swift_storeEnumTagSinglePayload(&v11[v28], 0, 1, v29);
        }

        *&v11[v27[6]] = *&v12[v27[6]];
        v43 = v27[7];
        v44 = &v11[v43];
        v45 = &v12[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v11, v12, v31);
        v32 = type metadata accessor for USOParse();
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v33], &v12[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v11[v33], &v12[v33], v34);
          __swift_storeEnumTagSinglePayload(&v11[v33], 0, 1, v34);
        }

        *&v11[v32[6]] = *&v12[v32[6]];
        v46 = v32[7];
        v47 = &v11[v46];
        v48 = &v12[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse();
        *&v11[v49[5]] = *&v12[v49[5]];
        *&v11[v49[6]] = *&v12[v49[6]];
        *&v11[v49[7]] = *&v12[v49[7]];
        goto LABEL_27;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v11, v12, v15);
        v16 = type metadata accessor for NLRouterParse();
        *&v11[*(v16 + 20)] = *&v12[*(v16 + 20)];
        v60 = v16;
        v17 = *(v16 + 24);
        v18 = &v11[v17];
        v19 = &v12[v17];
        v20 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v59 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v58 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v59;
            memcpy(&v59[v58], &v19[v58], *(*(v41 - 8) + 64));
          }

          else
          {
            v57 = v40;
            (*(*(v40 - 8) + 32))(&v59[v58], &v19[v58], v40);
            v42 = v59;
            __swift_storeEnumTagSinglePayload(&v59[v58], 0, 1, v57);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v11[*(v60 + 28)] = *&v12[*(v60 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v53 = v9[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v9[8]] = a2[v9[8]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(v5 + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCC32D8C(uint64_t a1, __int16 a2)
{
  if (!HIBYTE(a2))
  {
    OUTLINED_FUNCTION_32_5();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_72_3();
    sub_1DD0DEDBC();
    return v7;
  }

  v2 = a2;
  if (HIBYTE(a2) == 1)
  {
    OUTLINED_FUNCTION_32_5();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_31_6();
    v3 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v3);

    OUTLINED_FUNCTION_47_6();
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v4, v5);

    return v7;
  }

  if (a1 | a2)
  {
    return 0x6577736E616E752ELL;
  }

  else
  {
    return 0x6C6C65636E61632ELL;
  }
}

uint64_t sub_1DCC32EE8(uint64_t a1, __int16 a2)
{
  if (!HIBYTE(a2))
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD114A10);
    sub_1DD0DEDBC();
    return v7[0];
  }

  v2 = a2;
  if (HIBYTE(a2) == 1)
  {
    sub_1DD0DEC1C();

    strcpy(v7, ".error error: ");
    HIBYTE(v7[1]) = -18;
    swift_getErrorValue();
    v3 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v3);

    MEMORY[0x1E12A6780](0x64656C646E616820, 0xEA0000000000203ALL);
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v4, v5);

    return v7[0];
  }

  if (a1 | a2)
  {
    return 0x6577736E616E752ELL;
  }

  else
  {
    return 0x6C6C65636E61632ELL;
  }
}

uint64_t sub_1DCC330B0(uint64_t a1, __int16 a2)
{
  if (!HIBYTE(a2))
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD114A10);
    type metadata accessor for AppDisambiguationResponse();
    sub_1DD0DEDBC();
    return v7[0];
  }

  v2 = a2;
  if (HIBYTE(a2) == 1)
  {
    sub_1DD0DEC1C();

    strcpy(v7, ".error error: ");
    HIBYTE(v7[1]) = -18;
    swift_getErrorValue();
    v3 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v3);

    MEMORY[0x1E12A6780](0x64656C646E616820, 0xEA0000000000203ALL);
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v4, v5);

    return v7[0];
  }

  if (a1 | a2)
  {
    return 0x6577736E616E752ELL;
  }

  else
  {
    return 0x6C6C65636E61632ELL;
  }
}

uint64_t sub_1DCC3327C(uint64_t a1, __int16 a2)
{
  if (!HIBYTE(a2))
  {
    OUTLINED_FUNCTION_32_5();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_72_3();
    sub_1DD0DEDBC();
    return v7;
  }

  v2 = a2;
  if (HIBYTE(a2) == 1)
  {
    OUTLINED_FUNCTION_32_5();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_31_6();
    v3 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v3);

    OUTLINED_FUNCTION_47_6();
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1E12A6780](v4, v5);

    return v7;
  }

  if (a1 | a2)
  {
    return 0x6577736E616E752ELL;
  }

  else
  {
    return 0x6C6C65636E61632ELL;
  }
}

uint64_t sub_1DCC333DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_55Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

id sub_1DCC334AC(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

void sub_1DCC334C8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1DCC334E4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return sub_1DCC2EC2C(v6, v7, v1);
}

uint64_t sub_1DCC33578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCC335D4()
{
  v1 = OUTLINED_FUNCTION_70();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DCC33634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return v4;
}

uint64_t sub_1DCC33680()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return sub_1DCC2D694(v6, v7, v1);
}

uint64_t sub_1DCC33790()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();
  return sub_1DCC25788(v3);
}

void sub_1DCC337F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2598, &qword_1DD0E5A20);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_79_1();

  sub_1DCC25218();
}

double OUTLINED_FUNCTION_89_5()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];

  return static ExecuteResponse.complete()();
}

uint64_t sub_1DCC33894()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = sub_1DD0DB04C();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v0[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC33980, 0, 0);
}

uint64_t sub_1DCC33980()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "AppResolutionOutputFactory: makeAppResolutionCancelledResponse.", v4, 2u);
    MEMORY[0x1E12A8390](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1DCC33AC8;

  return sub_1DCC1F388();
}

uint64_t sub_1DCC33AC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);
    v7 = *(v3 + 40);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCC33C24, 0, 0);
  }
}

void sub_1DCC33C24()
{
  if (qword_1EDE4EB90 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = qword_1EDE4EB98;
  v7 = unk_1EDE4EBA0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v22 = v2[8];
  *(v1 + v2[9]) = 256;
  v20 = v2[10];
  v21 = v6;
  *(v1 + v2[11]) = 0;
  v8 = v2[12];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_1_20();
  v19 = v2[13];
  v9 = (v1 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + v2[15]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  v11 = v1 + v2[19];
  *v11 = 0;
  *(v11 + 4) = 512;
  *(v1 + v2[20]) = 0;
  *(v1 + v2[21]) = 0;
  *(v1 + v2[22]) = 0;
  *(v1 + v2[23]) = 0;
  *(v1 + v2[24]) = 0;
  *(v1 + v2[25]) = 0;
  v12 = (v1 + v2[26]);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + v2[27]) = 0;
  *(v1 + v2[28]) = MEMORY[0x1E69E7CC0];
  v13 = v2[29];
  v14 = *MEMORY[0x1E69D0678];
  v15 = sub_1DD0DD15C();
  (*(*(v15 - 8) + 104))(v1 + v13, v14, v15);
  v16 = v2[30];
  v17 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  *(v1 + v2[31]) = 2;
  *v1 = v21;
  v1[1] = v7;
  v18 = v2[5];

  sub_1DCB67914();
}

uint64_t sub_1DCC33F28()
{
  OUTLINED_FUNCTION_42();
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DCC340B8;
  }

  else
  {
    v3 = sub_1DCC34038;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCC34038()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_1DCB6970C(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DCC340B8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  sub_1DCB6970C(v1);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

void *sub_1DCC34138()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1ECCD2580 = result;
  return result;
}

uint64_t sub_1DCC34178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC34208(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    OUTLINED_FUNCTION_2_25();
    v6 = sub_1DD0DEB3C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A72C0](v8, a1);
        }

        else
        {
          v9 = *(a1 + 8 * v8 + 32);
        }

        ++v8;
        sub_1DCB10E5C(0, a2, a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BE0, &qword_1DD0E1698);
        swift_dynamicCast();
        sub_1DD0DECDC();
        v10 = *(v11 + 16);
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      while (v6 != v8);
      return v11;
    }
  }

  return result;
}

void sub_1DCC34390(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD0DEB3C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1DCE06B08();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v8;
      do
      {
        if ((a1 & 0xC000000000000001) == 0)
        {
          v5 = *(a1 + 8 * v3 + 32);
          sub_1DD0DCF8C();
        }

        MEMORY[0x1E12A72C0](v3, a1);
        sub_1DD0DD1FC();
        swift_dynamicCast();
        v8 = v4;
        v6 = *(v4 + 16);
        if (v6 >= *(v4 + 24) >> 1)
        {
          sub_1DCE06B08();
          v4 = v8;
        }

        ++v3;
        *(v4 + 16) = v6 + 1;
        sub_1DCB20B30(&v7, (v4 + 32 * v6 + 32));
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_1DCC344D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_21();
    sub_1DCE06C48();
    v4 = (a1 + 32);
    v2 = v9;
    do
    {
      v7 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D20, &qword_1DD0E5A48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25D0, &unk_1DD0E5A50);
      swift_dynamicCast();
      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_1DCE06C48();
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 8 * v5 + 32) = v8;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DCC345FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_21();
    sub_1DCE06B08();
    v2 = v8;
    v4 = a1 + 32;
    do
    {
      sub_1DCB0DF6C(v4, v7);
      v8 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1DCE06B08();
        v2 = v8;
      }

      *(v2 + 16) = v5 + 1;
      sub_1DCB20B30(v7, (v2 + 32 * v5 + 32));
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DCC346C4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = &v20 - v10;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1DCE06B68();
  v13 = v24;
  for (i = (a3 + 48); ; i += 3)
  {
    v15 = *(i - 1);
    v16 = *i;
    v23[0] = *(i - 2);
    v23[1] = v15;
    v23[2] = v16;

    v17 = v16;
    v21(v23);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v24 = v13;
    v18 = *(v13 + 16);
    if (v18 >= *(v13 + 24) >> 1)
    {
      sub_1DCE06B68();
      v13 = v24;
    }

    *(v13 + 16) = v18 + 1;
    sub_1DCC36690(v11, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

void sub_1DCC34890()
{
  OUTLINED_FUNCTION_4_13();
  v20 = v3;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DD0DEB3C())
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DCE06C28();
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v26;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12A72C0](v6, v1);
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v1 + 8 * v6 + 32);
      }

      v2 = v9;
      v21 = v9;
      v20(&v22, &v21);
      if (v0)
      {
        goto LABEL_20;
      }

      v0 = 0;

      v10 = v22;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v26 = v7;
      v14 = *(v7 + 16);
      v2 = (v14 + 1);
      if (v14 >= *(v7 + 24) >> 1)
      {
        v18 = v24;
        v19 = v23;
        v17 = v25;
        v16 = v22;
        sub_1DCE06C28();
        v10 = v16;
        v13 = v17;
        v12 = v18;
        v11 = v19;
        v7 = v26;
      }

      *(v7 + 16) = v2;
      v15 = v7 + 56 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 56) = v12;
      *(v15 + 72) = v13;
      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_2_25();
  }
}

uint64_t sub_1DCC34A48()
{
  OUTLINED_FUNCTION_4_13();
  v10 = v2;
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD0DEB3C())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v13 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if ((v1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v11 = MEMORY[0x1E12A72C0](j, v1);
      v10(&v12, &v11);
      if (v0)
      {
        goto LABEL_19;
      }

      v0 = 0;

      sub_1DD0DECDC();
      v9 = *(v13 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (v7 == i)
      {
        return v13;
      }
    }

    if (j < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v1 + 8 * j + 32);
      sub_1DD0DCF8C();
    }

LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_2_25();
  }

  return result;
}

void sub_1DCC34BBC()
{
  OUTLINED_FUNCTION_4_13();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  do
  {
    if (v6 == v4)
    {
      break;
    }

    v7 = *(sub_1DD0DB5BC() - 8);
    v3(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4++);
  }

  while (!v0);
}

uint64_t sub_1DCC34C84()
{
  OUTLINED_FUNCTION_4_13();
  v3 = v2;
  result = sub_1DCB08B14(v4);
  v6 = result;
  for (i = 0; v6 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (i < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v1 + 8 * i + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_12;
    }

    result = MEMORY[0x1E12A72C0](i, v1);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v9 = result;
    v3(&v9);

    if (v0)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1DCC34D60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = v6[1];
      v14[0] = *v6;
      v14[1] = v7;
      v9 = *v6;
      v8 = v6[1];
      v15[0] = v6[2];
      *(v15 + 9) = *(v6 + 41);
      v12[0] = v9;
      v12[1] = v8;
      v13[0] = v6[2];
      *(v13 + 9) = *(v6 + 41);
      sub_1DCB32880(v14, &v11);
      v10 = v4(v12);
      if (v3)
      {
        break;
      }

      result = OUTLINED_FUNCTION_0_15(v10);
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_0_15(v10);
  }

  return result;
}

uint64_t sub_1DCC34E1C(uint64_t result, uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v9 = result;
  while (!(a5 <= 0 ? a3 <= a4 : a3 >= a4))
  {
    v11 = a3;
    result = v9(&v11);
    if (v5)
    {
      break;
    }

    if (__OFADD__(a3, a5))
    {
      a3 = ((a3 + a5) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      a3 += a5;
    }
  }

  return result;
}

void static AppResolutionResponse.makeDisambiguationViews(apps:utteranceViews:disambiguationList:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_23(a1, a2, a3, a4);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_initStackObject();
  v4 = v11;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(&v9[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  sub_1DCF96994();
}

void static AppResolutionResponse.makeDisambiguationViews(apps:utteranceViews:disambiguationList:deviceState:compact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_23(a1, a2, a3, a4);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_initStackObject();
  v4 = v11;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 104);
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  sub_1DCF96994();
}

id sub_1DCC35224()
{
  v4 = MEMORY[0x1E69E7CC0];
  v0 = sub_1DCC34A48();
  if (v0 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46208, 0x1E69C9F08);
    v1 = sub_1DD0DEE0C();
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46208, 0x1E69C9F08);
    v1 = v0;
  }

  sub_1DCB10E5C(0, &unk_1ECCA25E0, 0x1E69C7770);
  v2 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)(v1, 1, 0x6C7070612E6D6F63, 0xEE00697269732E65, v4);

  return v2;
}

void sub_1DCC3537C(uint64_t *a1, void *a2)
{
  v4 = sub_1DD0DB0FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = *a1;
  v8 = static SAAppInfoFactory.createAppInfo(app:)();
  sub_1DCC3550C();
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v9 + 152))(v10, v9);
  sub_1DCC355CC(v7, v8);
}

uint64_t sub_1DCC3550C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E15D0;
  v1 = sub_1DCC35DA4();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  v5 = sub_1DCFA15B4(inited);
  swift_setDeallocating();
  sub_1DCB19D2C();
  *(v0 + 32) = v5;
  return v0;
}

void sub_1DCC355CC(uint64_t a1, void *a2)
{
  type metadata accessor for AppInformationResolver();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a1;
  v5 = a2;
  sub_1DD0DCF8C();
}

id sub_1DCC35664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD0E32B0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v10 = MEMORY[0x1E12A6960](a1, v9);
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1DCB34060();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 64) = v14;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;

  sub_1DD0DD7EC();

  v15 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
  sub_1DCC36428(a2, a3, v15);
  sub_1DCC36480(a1, v15);
  v16 = v15;
  sub_1DCC364F8(a2, a3, v16);

  if (a4)
  {
    [v16 setObject_];
  }

  return v16;
}

void sub_1DCC35810(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v30 = a3;
  v33 = a6;
  v8 = sub_1DD0DB0FC();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1DD0DB04C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_1DCC35DA4();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = sub_1DCFA15B4(inited);
  swift_setDeallocating();
  sub_1DCB19D2C();
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v12 + 8))(v16, v11);
  v23 = sub_1DD0DDF8C();

  [v22 setAceId_];

  v24 = swift_unknownObjectRetain();
  MEMORY[0x1E12A6920](v24);
  sub_1DCBBF95C(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DD0DE3AC();
  v25 = static SAAppInfoFactory.createAppInfo(app:)();
  v26 = v30[3];
  v27 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v26);
  (*(v27 + 152))(v26, v27);
  sub_1DCC355CC(v17, v25);
}

id sub_1DCC35B18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD0E32B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  sub_1DD0DEDBC();
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DCB34060();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;

  sub_1DD0DD7EC();

  v12 = [objc_allocWithZone(MEMORY[0x1E69CA3B0]) init];
  sub_1DCB10E5C(0, &qword_1ECCA25F8, 0x1E69CA3A0);

  v13 = sub_1DCC35ED0(a2, a3);
  [v12 setLeadingText_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD0E15D0;
  v15 = v12;
  *(v14 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)(a1);
  sub_1DCFA3898(v14, v15);

  if (a5)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69C9E98]) init];
    sub_1DCC36550(a4, a5, v16);
    v17 = v16;
    [v17 setSize_];
    [v15 setImage_];
  }

  return v15;
}

uint64_t sub_1DCC35DA4()
{
  type metadata accessor for MachineUtteranceBuilder();
  *(swift_initStackObject() + 16) = MEMORY[0x1E69E7CC0];
  v0 = static SAAppInfoFactory.createAppInfo(app:)();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DCF7316C(v0);
    if (v3)
    {
      sub_1DCB5D23C(0x656D614E707061, 0xE700000000000000, v2, v3);
    }
  }

  v4 = sub_1DD0DD1BC();
  if (v5)
  {
    sub_1DCB5D23C(0x746163696C707061, 0xED000064496E6F69, v4, v5);
  }

  sub_1DCB5D40C();
  v7 = v6;

  return v7;
}

id sub_1DCC35ED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD0DDF8C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

id static AppResolutionResponse.makeConfirmationView(confirmDialog:cancelDialog:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return sub_1DCCA3878(__dst, v4);
}

uint64_t static AppResolutionResponse.makeDisambiguationList(apps:inLocale:)(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1DCC34C84();
  sub_1DCC34390(a1);
  v3 = v2;
  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  return SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(v3, v5, 1, 0);
}

void sub_1DCC360A0()
{
  v0 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AppInformationResolver();
  swift_initStackObject();
  sub_1DD0DCF8C();
}

void sub_1DCC363A4(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCAB500, 0x1E69C7B70);
  v3 = sub_1DD0DE2DC();

  [a2 setItems_];
}

void sub_1DCC36428(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setTitle_];
}

void sub_1DCC36480(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();
  [a2 setCommands_];
}

void sub_1DCC364F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setSpeakableText_];
}

void sub_1DCC36550(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setBundleIdentifier_];
}

void sub_1DCC365C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DCC3603C(a1);
}

_BYTE *storeEnumTagSinglePayload for AppResolutionResponse(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCC36690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DCC367AC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v22 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  (*(v3 + 176))(v5, v3);
  OUTLINED_FUNCTION_7_3();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v22;
  v20[5] = v7;
  v20[6] = v14;
  v20[7] = v12;
  v20[8] = v10;
  v20[9] = v1;
  v21 = *(swift_getAssociatedConformanceWitness() + 272);
  sub_1DD0DCF8C();
}

void sub_1DCC36974(_BYTE *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v18 = a1[72];
  if ((v18 & 1) == 0)
  {
    v24 = a2;
    v22 = *(a9 + 152);
    memcpy(__dst, a1, 0x48uLL);
    __dst[72] = v18;
    sub_1DCBBF670(__dst, v28);
    v22(a8, a9);
    v23 = swift_allocObject();
    v23[2] = a8;
    v23[3] = a9;
    v23[4] = v24;
    v23[5] = a3;
    v23[6] = a4;
    v23[7] = a6;
    v23[8] = a5;
    memcpy(v23 + 9, a1, 0x48uLL);
    v23[18] = a7;
    v25 = *(swift_getAssociatedConformanceWitness() + 96);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v19 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000001BLL, 0x80000001DD115180);
  sub_1DCC16724(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v20 = swift_allocError();
  *v21 = v19;
  a2(v20, 1);
}

uint64_t sub_1DCC36D34(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  if ((a2 & 1) == 0)
  {
    v24 = a4;
    v21 = *(a11 + 192);

    v21(a10, a11);
    v22 = swift_allocObject();
    v22[2] = a10;
    v22[3] = a11;
    memcpy(v22 + 4, a8, 0x48uLL);
    v22[13] = a9;
    v22[14] = a1;
    v22[15] = a5;
    v22[16] = a6;
    v22[17] = a7;
    v22[18] = a3;
    v22[19] = v24;
    v23 = *(swift_getAssociatedConformanceWitness() + 80);
    sub_1DCBBF670(a8, &v28);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1DCB34060();
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  return a3(a1, 1);
}

void sub_1DCC37080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a8;
  v38 = a6;
  v39 = a7;
  v33 = a5;
  v35 = a4;
  v36 = a10;
  v40 = a9;
  v14 = type metadata accessor for AceOutput();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v34 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v30 - v21;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v30[1] = qword_1EDE57E18;
  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v23 = swift_allocObject();
  v31 = xmmword_1DD0E07C0;
  *(v23 + 16) = xmmword_1DD0E07C0;
  sub_1DCB09910(a1, v22, &unk_1ECCA3270, &qword_1DD0E0F70);
  v24 = sub_1DD0DE02C();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1DCB34060();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1DD0DD7EC();

  memcpy(__dst, a2, sizeof(__dst));
  v27 = *(*(a3 + 16) + 16);
  v28 = a2[7];
  v29 = *(a11 + 320);
  v32 = a11;
  v29(v38, v36, a11);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void sub_1DCC374BC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v53 = v4;
  v48 = v6;
  v49 = v5;
  v50 = v7;
  v9 = v8;
  v47 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v54 = v13;
  v55 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_1DD0DB0FC();
  v19 = OUTLINED_FUNCTION_9(v18);
  v51 = v20;
  v52 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19, v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD0E07C0;
  v28 = sub_1DD0DD1FC();
  v29 = MEMORY[0x1E12A6960](v9, v28);
  v31 = v30;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1DCB34060();
  *(v27 + 32) = v29;
  *(v27 + 40) = v31;
  sub_1DD0DD7EC();

  v32 = v0[11];
  v33 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v32);
  v34 = *(v33 + 152);
  v46 = v26;
  v35 = v34(v32, v33);
  v56 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v46 - 2) = v26;
  *(&v46 - 1) = &v56;
  sub_1DCC34C84();
  sub_1DCC34390(v9);
  v38 = v37;
  v39 = v56;
  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  v40 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(v38, v39, 1, 0);
  v41 = v49;
  v42 = v47;
  (*(v3 + 176))(v47, v3);
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v3;
  v43[4] = v1;
  v43[5] = v41;
  v43[6] = v50;
  v43[7] = v9;
  v44 = v48;
  v43[8] = v40;
  v43[9] = v44;
  v43[10] = v53;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = *(AssociatedConformanceWitness + 264);
  v48 = AssociatedConformanceWitness + 264;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC378D0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a4;
  v43 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v45 = &v37 - v20;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v41 = a6;
    v23 = a2[2];
    memcpy(v47, a1, sizeof(v47));
    v42 = v17;
    v39 = a8;
    v25 = a2[11];
    v24 = a2[12];
    __swift_project_boxed_opaque_existential_1(a2 + 8, v25);
    v40 = AssociatedTypeWitness;
    v37 = a7;
    v38 = a5;
    v26 = *(v24 + 96);
    sub_1DCBBF670(__dst, v46);
    v27 = v26(v25, v24);
    if (__dst[7] == 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    if (__dst[7] == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = v44;
    v31 = v43;
    v32 = (*(a10 + 320))();
    v33 = (*(*v23 + 96))(v47, v29 & 1, v32 & 1);
    (*(a10 + 152))(a9, a10);
    v34 = swift_allocObject();
    v34[2] = a9;
    v34[3] = a10;
    v35 = v39;
    v34[4] = v37;
    v34[5] = v35;
    v34[6] = v31;
    v34[7] = v30;
    v34[8] = v38;
    v34[9] = a2;
    memcpy(v34 + 10, a1, 0x48uLL);
    v34[19] = v33;
    v36 = *(swift_getAssociatedConformanceWitness() + 88);
    sub_1DD0DCF8C();
  }

  v21 = __dst[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  return a7(v21, 1);
}

uint64_t sub_1DCC37CD8(uint64_t a1, char a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a5;
  v55 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v20);
  v24 = &v45 - v23;
  v25 = qword_1EDE4F908;
  if ((a2 & 1) == 0)
  {
    v30 = a1;
    v31 = a8;
    v49 = v21;
    v50 = v22;
    v51 = a7;
    v52 = a3;
    v32 = v30;
    v53 = a4;
    v48 = a10;

    if (v25 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DD0E07C0;
    v34 = sub_1DCBCFB38();
    v35 = MEMORY[0x1E12A6960](v32, v34);
    AssociatedConformanceWitness = v32;
    v36 = v35;
    v38 = v37;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1DCB34060();
    *(v33 + 32) = v36;
    *(v33 + 40) = v38;
    sub_1DD0DD7EC();

    v39 = *(a12 + 192);
    v47 = v24;
    v40 = v54;
    v39(a11, a12);
    v41 = swift_allocObject();
    v41[2] = a11;
    v41[3] = a12;
    v41[4] = v31;
    memcpy(v41 + 5, a9, 0x48uLL);
    v42 = AssociatedConformanceWitness;
    v41[14] = v48;
    v41[15] = v42;
    v43 = v55;
    v41[16] = v40;
    v41[17] = v43;
    v44 = v52;
    v41[18] = v51;
    v41[19] = v44;
    v41[20] = v53;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v52 = *(AssociatedConformanceWitness + 72);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DD0E07C0;
  v57 = 0;
  v58 = 0xE000000000000000;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v27 = v57;
  v28 = v58;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1DCB34060();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  sub_1DD0DD7EC();

  return a3(a1, 1);
}

void sub_1DCC38120(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a4;
  v41 = a5;
  v38 = a6;
  v39 = a11;
  v45 = a10;
  v46 = a8;
  v43 = a9;
  v44 = a7;
  v15 = type metadata accessor for AceOutput();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v42 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v35 - v22;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v35[1] = qword_1EDE57E18;
  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v24 = swift_allocObject();
  v36 = xmmword_1DD0E07C0;
  *(v24 + 16) = xmmword_1DD0E07C0;
  sub_1DCB09910(a1, v23, &unk_1ECCA3270, &qword_1DD0E0F70);
  v25 = sub_1DD0DE02C();
  v27 = v26;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1DCB34060();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_1DD0DD7EC();

  memcpy(__dst, a3, sizeof(__dst));
  v28 = *(a12 + 320);
  v37 = a12;
  v28(v44, v39, a12);
  v29 = a2[11];
  v30 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, v29);
  (*(v30 + 96))(v29, v30);
  a3[7];
  v31 = v42;
  sub_1DCECC6D0();
  sub_1DD0DE6CC();
  v32 = swift_allocObject();
  *(v32 + 16) = v36;
  v33 = sub_1DCB08B14(*v31);
  v34 = MEMORY[0x1E69E65A8];
  *(v32 + 56) = MEMORY[0x1E69E6530];
  *(v32 + 64) = v34;
  *(v32 + 32) = v33;
  sub_1DD0DD7EC();

  sub_1DCB82888();
}

uint64_t sub_1DCC38538(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v29[1] = a8;
  v30 = a7;
  v14 = type metadata accessor for SiriKitEventPayload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    sub_1DCB35460(0, (a5 & 0xC000000000000001) == 0, a5);
    if ((a5 & 0xC000000000000001) == 0)
    {
      v22 = *(a5 + 32);
      sub_1DD0DCF8C();
    }

    v28 = MEMORY[0x1E12A72C0](0, a5);
    v24 = *a6;
    v23 = a6[1];
    v25 = a3[17];
    __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    *v18 = 27;
    *(v18 + 1) = a4;
    *(v18 + 2) = v28;
    *(v18 + 3) = 3;
    *(v18 + 16) = 0;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *(v18 + 7) = v24;
    *(v18 + 8) = v23;
    *(v18 + 9) = 0;
    *(v18 + 10) = 0;
    v18[88] = 125;
    swift_storeEnumTagMultiPayload();
    v26 = a4;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E07C0;
  v32 = 0;
  v33 = 0xE000000000000000;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v20 = v32;
  v21 = v33;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1DCB34060();
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_1DD0DD7EC();

  return v30(a1, 1);
}

void sub_1DCC387F4()
{
  OUTLINED_FUNCTION_50();
  v91 = v1;
  v92 = v0;
  v3 = v2;
  v5 = v4;
  v90 = v6;
  v94 = v7;
  v9 = v8;
  v87 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v80 = &v80 - v17;
  v18 = sub_1DD0DD2DC();
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19, v24);
  OUTLINED_FUNCTION_16();
  v27 = (v26 - v25);
  v86 = v3;
  v88 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v93 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v80 - v33;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v35 = qword_1EDE57E18;
  sub_1DD0DE6CC();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  v82 = xmmword_1DD0E07C0;
  *(v36 + 16) = xmmword_1DD0E07C0;
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_1DD0DEDBC();
  v37 = v9;
  v38 = v96;
  v39 = v97;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v84 = sub_1DCB34060();
  *(v36 + 64) = v84;
  *(v36 + 32) = v38;
  *(v36 + 40) = v39;
  v83 = v35;
  sub_1DD0DD7EC();

  v40 = v86;
  v41 = v87;
  v42 = v88;
  (*(v86 + 176))(v88, v86);
  (*(v21 + 16))(v27, v37, v18);
  v43 = (*(v21 + 88))(v27, v18);
  v44 = *MEMORY[0x1E69CE230];
  v89 = v34;
  if (v43 == v44)
  {
    (*(v21 + 96))(v27, v18);
    v45 = *v27;
    sub_1DD0DE6CC();
    OUTLINED_FUNCTION_4_0();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_9_15(v46);
    OUTLINED_FUNCTION_2_26();
    sub_1DCC16724(v47, v48);
    v49 = sub_1DD0DF03C();
    v50 = v84;
    v37[7] = MEMORY[0x1E69E6158];
    v37[8] = v50;
    v37[4] = v49;
    v37[5] = v51;
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_7_3();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_3_24(v52);
    v53 = *(swift_getAssociatedConformanceWitness() + 144);
    sub_1DD0DCF8C();
  }

  v55 = v84;
  v54 = v85;
  if (v43 == *MEMORY[0x1E69CE238])
  {
    (*(v21 + 96))(v27, v18);
    v56 = *v27;
    sub_1DD0DE6CC();
    OUTLINED_FUNCTION_4_0();
    v57 = swift_allocObject();
    OUTLINED_FUNCTION_9_15(v57);
    OUTLINED_FUNCTION_2_26();
    sub_1DCC16724(v58, v59);
    v60 = sub_1DD0DF03C();
    v54[7] = MEMORY[0x1E69E6158];
    v54[8] = v55;
    v54[4] = v60;
    v54[5] = v61;
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_7_3();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_3_24(v62);
    v63 = *(swift_getAssociatedConformanceWitness() + 152);
    sub_1DD0DCF8C();
  }

  if (v43 == *MEMORY[0x1E69CE228])
  {
    OUTLINED_FUNCTION_4_0();
    v64 = swift_allocObject();
    v64[2] = v42;
    v64[3] = v40;
    v65 = v91;
    v64[4] = v90;
    v64[5] = v65;
    v64[6] = v92;
    v64[7] = v41;
    v64[8] = v94;
    v66 = *(swift_getAssociatedConformanceWitness() + 280);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v67 = sub_1DD0DD8FC();
  v68 = __swift_project_value_buffer(v67, qword_1EDE57E00);
  v69 = *(v67 - 8);
  v70 = v80;
  (*(v69 + 16))(v80, v68, v67);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v67);
  v71 = v70;
  v72 = v81;
  sub_1DCB09910(v71, v81, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v72, 1, v67) == 1)
  {
    sub_1DCB0E9D8(v81, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v73 = sub_1DD0DD8EC();
    v74 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v96 = v76;
      *v75 = 136315650;
      v77 = sub_1DD0DEC3C();
      v79 = sub_1DCB10E9C(v77, v78, &v96);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 216;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_1DCB10E9C(0xD00000000000002DLL, 0x80000001DD114D20, &v96);
      _os_log_impl(&dword_1DCAFC000, v73, v74, "FatalError at %s:%lu - %s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v76, -1, -1);
      MEMORY[0x1E12A8390](v75, -1, -1);
    }

    (*(v69 + 8))(v81, v67);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000002DLL, 0x80000001DD114D20);
}

void sub_1DCC390F0(__int128 *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for AceOutput();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v22 = *(a1 + 72);
  if ((v22 & 1) == 0)
  {
    v39 = a2;
    v40 = a3;
    v26 = a1[1];
    v55 = *a1;
    v56 = v26;
    v27 = a1[1];
    v28 = *a1;
    v57 = a1[2];
    v49 = *a1;
    v50 = v27;
    v51 = a1[2];
    v30 = *(a1 + 7);
    v29 = *(a1 + 8);
    v58 = *(a1 + 6);
    v52 = *(a1 + 6);
    v53 = v30;
    v54 = v29;
    v34[1] = *(*(a4 + 16) + 16);
    v44[0] = v28;
    v44[1] = v27;
    v31 = a1[2];
    v32 = *(a8 + 320);
    v44[2] = v31;
    v45 = v52;
    v46 = v30;
    v36 = v30;
    v38 = v29;
    v47 = v29;
    v48 = v22;
    sub_1DCBBF670(v44, v42);
    v37 = a6;
    v35 = a8;
    v32(a6, v41, a8);
    v33 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v33);
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v23 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000017, 0x80000001DD114E60);
  sub_1DCC16724(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v24 = swift_allocError();
  *v25 = v23;
  a2(v24, 1);
}

uint64_t sub_1DCC39614(uint64_t a1, char a2, void *a3, void *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v12 = type metadata accessor for SiriKitEventPayload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DD0E07C0;
    v26 = 0;
    v27 = 0xE000000000000000;
    v25[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    v18 = v26;
    v19 = v27;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1DCB34060();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_1DD0DD7EC();

    return a6(a1, 1);
  }

  else
  {
    v21 = *a5;
    v22 = a5[1];
    v23 = a3[17];
    __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    v25[0] = a6;
    *v16 = 6;
    *(v16 + 1) = a4;
    *(v16 + 1) = xmmword_1DD0E5A80;
    *(v16 + 16) = 0;
    *(v16 + 5) = 0;
    *(v16 + 6) = 0;
    *(v16 + 7) = v21;
    *(v16 + 8) = v22;
    *(v16 + 9) = 0;
    *(v16 + 10) = 0;
    v16[88] = 28;
    swift_storeEnumTagMultiPayload();
    v24 = a4;

    SiriKitEvent.__allocating_init(_:builder:)(v16, 0);
    (*(v23 + 8))();

    return (v25[0])(0, 0);
  }
}

void sub_1DCC398A0(__int128 *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v45 = a5;
  v46 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v36 - v18;
  v20 = type metadata accessor for AceOutput();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v23 = *(a1 + 72);
  if ((v23 & 1) == 0)
  {
    v40 = a4;
    v41 = a6;
    v42 = a7;
    v43 = a2;
    v44 = a3;
    v27 = *(a1 + 7);
    v28 = *(a1 + 8);
    v29 = a1[1];
    v63 = *a1;
    v64 = v29;
    v65 = a1[2];
    v66 = *(a1 + 6);
    v58[0] = v63;
    v58[1] = v29;
    v58[2] = v65;
    v59 = v66;
    v60 = v27;
    v61 = v28;
    v62 = v23;
    sub_1DCBBF670(v58, &v51);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v36[0] = qword_1EDE57E18;
    LODWORD(v39) = sub_1DD0DE6CC();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v30 = swift_allocObject();
    v37 = xmmword_1DD0E07C0;
    *(v30 + 16) = xmmword_1DD0E07C0;
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    v31 = a1[1];
    v51 = *a1;
    v52 = v31;
    v53 = a1[2];
    v54 = *(a1 + 6);
    v55 = v27;
    v56 = v28;
    v57 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DEDBC();
    v32 = v48;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DCB34060();
    *(v30 + 32) = v32;
    sub_1DD0DD7EC();

    v33 = a1[1];
    v51 = *a1;
    v52 = v33;
    v53 = a1[2];
    v54 = *(a1 + 6);
    v55 = v27;
    v36[1] = v27;
    v56 = v28;
    v34 = *(*(v40 + 16) + 16);
    v39 = v28;
    (*(v46 + 320))(v41, v47, v46);
    v35 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v35);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v24 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000020, 0x80000001DD114F00);
  sub_1DCC16724(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v25 = swift_allocError();
  *v26 = v24;
  a2(v25, 1);
}

void sub_1DCC39EA8(__int128 *a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 72);
  if ((v10 & 1) == 0)
  {
    v16 = a1[1];
    v48[0] = *a1;
    v48[1] = v16;
    v18 = *a1;
    v17 = a1[1];
    v48[2] = a1[2];
    v20 = *(a1 + 7);
    v19 = *(a1 + 8);
    v21 = a4[2];
    v49 = *(a1 + 6);
    v50 = v20;
    v51 = v19;
    v22 = (v20 - 3) < 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a9 + 320);
    v43[0] = v18;
    v43[1] = v17;
    v43[2] = a1[2];
    v44 = v49;
    v45 = v20;
    v37 = v20;
    v38 = v19;
    v46 = v19;
    v47 = v10;
    sub_1DCBBF670(v43, v42);
    v26 = v23(a6, a8, a9);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = (*(*v21 + 168))(v48, MEMORY[0x1E69E7CC0], v22, v26 & 1);
    v42[0] = v27;
    v28;
    MEMORY[0x1E12A6920]();
    if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    v29 = v42[0];
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD0E07C0;
    v31 = sub_1DCB08B14(v29);
    v32 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = MEMORY[0x1E69E6530];
    *(v30 + 64) = v32;
    *(v30 + 32) = v31;
    sub_1DD0DD7EC();

    v33 = a4[7];
    __swift_project_boxed_opaque_existential_1(a4 + 3, a4[6]);
    v34 = swift_allocObject();
    v35 = a1[1];
    *(v34 + 72) = *a1;
    *(v34 + 16) = a8;
    *(v34 + 24) = a9;
    *(v34 + 32) = a2;
    *(v34 + 40) = a3;
    *(v34 + 48) = a4;
    *(v34 + 56) = a6;
    *(v34 + 64) = a7;
    *(v34 + 88) = v35;
    *(v34 + 104) = a1[2];
    *(v34 + 120) = *(a1 + 6);
    *(v34 + 128) = v37;
    *(v34 + 136) = v38;
    v36 = *(v33 + 72);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v11 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000001BLL, 0x80000001DD114F50);
  sub_1DCC16724(qword_1EDE49B80, type metadata accessor for CommandFailure);
  v12 = swift_allocError();
  *v13 = v11;
  a2(v12, 1);
}

void sub_1DCC3A310(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v14 = type metadata accessor for SiriKitEventPayload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  if (v19 == 255)
  {
    v31[1] = a2;
    v27 = *a7;
    v28 = a7[1];
    v29 = a4[17];
    __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    type metadata accessor for SiriKitEvent(0);
    v31[0] = a3;
    *v18 = 6;
    *(v18 + 1) = a5;
    *(v18 + 2) = a6;
    *(v18 + 3) = 3;
    *(v18 + 16) = 0;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *(v18 + 7) = v27;
    *(v18 + 8) = v28;
    *(v18 + 9) = 0;
    *(v18 + 10) = 0;
    v18[88] = 23;
    swift_storeEnumTagMultiPayload();
    v30 = a5;
    sub_1DD0DCF8C();
  }

  v20 = *a1;
  sub_1DCB6DECC(*a1, *(a1 + 8));
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD0E07C0;
  v31[2] = v20;
  v32 = v19;
  v22 = SubmitCommandError.description.getter();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DCB34060();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  sub_1DD0DD7EC();

  sub_1DCB66C54();
  v25 = swift_allocError();
  *v26 = v20;
  *(v26 + 8) = v19;
  sub_1DCB6DECC(v20, v19);
  a2(v25, 1);

  sub_1DCBCC7B0(v20, v19);
}

void sub_1DCC3A600()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v22 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  (*(v3 + 176))(v5, v3);
  OUTLINED_FUNCTION_7_3();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v22;
  v20[5] = v7;
  v20[6] = v1;
  v20[7] = v14;
  v20[8] = v10;
  v20[9] = v12;
  v21 = *(swift_getAssociatedConformanceWitness() + 256);
  sub_1DD0DCF8C();
}

void sub_1DCC3A7CC(uint64_t *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a8;
  v36 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for AceOutput();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v22 = *(a1 + 72);
  if (v22)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v23 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000001BLL, 0x80000001DD114BE0);
    sub_1DCC16724(qword_1EDE49B80, type metadata accessor for CommandFailure);
    v24 = swift_allocError();
    *v25 = v23;
    v36(v24, 1);
  }

  else
  {
    v34[5] = a7;
    v26 = a1[1];
    if (v26)
    {
      v34[4] = a3;
      v27 = *a1;
      v28 = *(a1 + 2);
      v51 = *(a1 + 1);
      v52 = v28;
      v30 = *(a1 + 1);
      v29 = *(a1 + 2);
      v53 = *(a1 + 3);
      v54 = a1[8];
      v39 = v27;
      v40 = v26;
      v41 = v30;
      v42 = v29;
      v43 = *(a1 + 3);
      v44 = a1[8];
      v45[0] = v27;
      v31 = *(*(a4 + 16) + 16);
      v32 = *(a9 + 320);
      v34[3] = v27;
      v45[1] = v26;
      v49 = v44;
      v47 = v29;
      v48 = v43;
      v46 = v30;
      v50 = v22;
      v34[1] = v26;
      sub_1DCB09910(v45, v37, &qword_1ECCA2608, &qword_1DD0E5AC8);
      v34[2] = a9;
      v32(a6, v35, a9);
      v33 = type metadata accessor for NLContextUpdate();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v33);
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    }

    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v36(0, 0);
  }
}

void sub_1DCC3AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = type metadata accessor for SiriKitEventPayload(0);
  v39 = OUTLINED_FUNCTION_2(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  OUTLINED_FUNCTION_16();
  v45 = v44 - v43;
  if ((v35 & 1) == 0)
  {
    v49 = *v27;
    v48 = v27[1];
    v50 = v33[17];
    __swift_project_boxed_opaque_existential_1(v33 + 13, v33[16]);
    type metadata accessor for SiriKitEvent(0);
    *v45 = a23;
    *(v45 + 8) = v31;
    *(v45 + 16) = v29;
    *(v45 + 24) = 3;
    *(v45 + 32) = 0;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = v49;
    *(v45 + 64) = v48;
    *(v45 + 72) = 0;
    *(v45 + 80) = 0;
    *(v45 + 88) = a24;
    swift_storeEnumTagMultiPayload();
    v51 = v31;
    sub_1DD0DCF8C();
  }

  v46 = v25;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1DCB34060();
  *(v47 + 32) = 0;
  *(v47 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  v46(v37, 1);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCC3B0F4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 128);
  v6 = *(v2 + 24);
  return sub_1DCC39614(a1, a2 & 1, *(v2 + 32), *(v2 + 40), (v2 + 48), *(v2 + 120));
}

void sub_1DCC3B198(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DCC3A310(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), (v1 + 72));
}

uint64_t sub_1DCC3B290(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_1DCC38538(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + 56), *(v2 + 128), *(v2 + 136));
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 48));
  v4 = *(v1 + 64);

  v5 = *(v1 + 72);

  v6 = *(v1 + 80);

  v7 = *(v1 + 88);

  v8 = *(v1 + 96);

  if (*(v1 + 112) >= 3uLL)
  {
  }

  v9 = *(v1 + 120);

  v10 = *(v1 + 136);

  return swift_deallocObject();
}

uint64_t AppShortcutGeneralizedInvocation.appShortcutIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AppShortcutGeneralizedInvocation.parameterIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AppShortcutGeneralizedInvocation.bundleId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AppShortcutGeneralizedInvocation.ExtractionError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  result = 0x6C616E7265746E49;
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_4_14();
      sub_1DD0DEC1C();

      v4 = 0xD00000000000001ALL;
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_4_14();
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD115290);
      v7 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v7);

      MEMORY[0x1E12A6780](0xD000000000000026, 0x80000001DD1152B0);
      v8 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v8);

      v5 = 41;
      v6 = 0xE100000000000000;
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_4_14();
      sub_1DD0DEC1C();

      v4 = 0xD000000000000023;
LABEL_4:
      v9 = v4;
      v5 = v2;
      v6 = v1;
LABEL_6:
      MEMORY[0x1E12A6780](v5, v6);
      return v9;
  }
}

uint64_t AppShortcutGeneralizedInvocation.init(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[5] = a1;
  a9[6] = a2;
  a9[3] = a5;
  a9[4] = a6;
  a9[1] = a3;
  a9[2] = a4;
  *a9 = a8;
  return sub_1DCAFF9E8(a7, (a9 + 7));
}

uint64_t sub_1DCC3B744()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v3 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 24) = v12;
  *v12 = v0;
  v12[1] = sub_1DCC3B8A8;

  return v14(v4, v5, v6, v7, v8, v9, v2, v3);
}

uint64_t sub_1DCC3B8A8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1DCC3B9A8()
{
  v1 = [**(v0 + 24) languageCode];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = sub_1DD0DDFBC();
    v6 = v5;

    *(v0 + 32) = v6;
    v7 = v3[10];
    v8 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
    v9 = v3[5];
    v10 = v3[6];
    v11 = *(v8 + 16);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 40) = v13;
    *v13 = v0;
    v13[1] = sub_1DCC3BC08;

    return v21(v9, v10, v4, v6, v7, v8);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "#AppShortcutGeneralizedInvocation cannot get Siri language", v18, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_69();
    v20 = MEMORY[0x1E69E7CC0];

    return v19(v20);
  }
}

uint64_t sub_1DCC3BC08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v8 + 48) = v7;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1DCC3BEC8;
  }

  else
  {
    v9 = sub_1DCC3BD2C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCC3BD2C()
{
  v1 = v0[6];
  v0[2] = v1;
  v2 = v0[7];
  v3 = v0[3];
  v4 = sub_1DCB08B14(v1);
  v5 = sub_1DCC3C02C(v4);
  if (v2)
  {
    v6 = v0[6];

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = v2;
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v11, 0xCu);
      sub_1DCC3C9EC(v12);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    sub_1DCC3C218(v5, 0);
    v15 = v0[2];
  }

  OUTLINED_FUNCTION_69();

  return v16();
}

uint64_t sub_1DCC3BEC8()
{
  v1 = *(v0 + 56);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v6, 0xCu);
    sub_1DCC3C9EC(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_69();
  v11 = MEMORY[0x1E69E7CC0];

  return v10(v11);
}

uint64_t sub_1DCC3C02C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  sub_1DCB1C4D8();

  v7 = sub_1DD0DEA5C();

  if (*(v7 + 16) < 2uLL)
  {

    sub_1DCC3CFE0();
    OUTLINED_FUNCTION_34();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
LABEL_11:

LABEL_16:
    swift_willThrow();
    return v3;
  }

  v9 = sub_1DCCD2C74(v7);
  v11 = v10;
  v13 = v12;

  if (!v13)
  {
    sub_1DCC3CFE0();
    OUTLINED_FUNCTION_34();
    *v22 = 0;
    *(v22 + 8) = 0;
    v23 = 3;
LABEL_15:
    *(v22 + 16) = v23;
    goto LABEL_16;
  }

  if (!((v9 ^ v11) >> 14))
  {

    goto LABEL_10;
  }

  v33 = a1;
  v14 = OUTLINED_FUNCTION_5_17();
  v19 = sub_1DCBCBEC0(v14, v15, v16, v17, v18);
  if ((v20 & 0x100) == 0)
  {
    v3 = v19;
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1DCC3CFE0();
    OUTLINED_FUNCTION_34();
    *v31 = v5;
    *(v31 + 8) = v6;
    *(v31 + 16) = 1;
    goto LABEL_11;
  }

  v24 = OUTLINED_FUNCTION_5_17();
  v3 = sub_1DCBC9030(v24, v25, v26, v27, v28);
  v30 = v29;

  if (v30)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v3 < 0 || v3 >= v33)
  {
    sub_1DCC3CFE0();
    OUTLINED_FUNCTION_34();
    *v22 = v3;
    *(v22 + 8) = v33;
    v23 = 2;
    goto LABEL_15;
  }

  return v3;
}

void sub_1DCC3C218(uint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1DCB35460(a1, v6 == 0, *v2);
    if (v6)
    {
      v7 = MEMORY[0x1E12A72C0](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    v8 = v7;
    sub_1DCB35460(a2, v6 == 0, v5);
    if (v6)
    {
      v9 = MEMORY[0x1E12A72C0](a2, v5);
    }

    else
    {
      v9 = *(v5 + 8 * a2 + 32);
    }

    v10 = v9;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1DCF343D4(v5);
      v11 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

    if ((v5 & 0x8000000000000000) != 0 || v11)
    {
      v5 = sub_1DCF343D4(v5);
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v12 + 16) > a2)
        {
          v14 = v12 + 8 * a2;
          v15 = *(v14 + 32);
          *(v14 + 32) = v8;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t AppShortcutGeneralizedInvocation.hash(into:)()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1DD0DDF2C();
  v3 = v0[1];
  v4 = v0[2];
  sub_1DD0DDF2C();
  if (v0[4])
  {
    v5 = v0[3];
    sub_1DD0DF1FC();
    sub_1DD0DDF2C();
  }

  else
  {
    sub_1DD0DF1FC();
  }

  v6 = *v0;
  return sub_1DD0DE8FC();
}

uint64_t static AppShortcutGeneralizedInvocation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5] == a2[5] && a1[6] == a2[6];
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {
    v5 = a1[1] == a2[1] && a1[2] == a2[2];
    if (v5 || (sub_1DD0DF0AC() & 1) != 0)
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (v7)
        {
          v8 = a1[3] == a2[3] && v6 == v7;
          if (v8 || (sub_1DD0DF0AC() & 1) != 0)
          {
            goto LABEL_18;
          }
        }
      }

      else if (!v7)
      {
LABEL_18:
        sub_1DCB525A0();
        v9 = *a1;
        v10 = *a2;
        return sub_1DD0DE8EC() & 1;
      }
    }
  }

  return 0;
}

uint64_t AppShortcutGeneralizedInvocation.extractedActionIdentifier.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  v10[2] = v11;
  v4 = sub_1DCC3C83C(sub_1DCC3CA80, v10, v2, v3);
  if ((v5 & 1) == 0 && v4 >= 0x4000)
  {
    v6 = sub_1DD0DE0DC();
    v7 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v7 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 >> 14 == 4 * v7)
    {
      return 0;
    }

    else
    {
      v8 = sub_1DD0DE1EC();
      v1 = MEMORY[0x1E12A66E0](v8);
    }
  }

  return v1;
}

uint64_t AppShortcutGeneralizedInvocation.hashValue.getter()
{
  sub_1DD0DF1DC();
  AppShortcutGeneralizedInvocation.hash(into:)();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC3C5E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC3C670;

  return AppShortcutGeneralizedInvocation.action.getter();
}

uint64_t sub_1DCC3C670()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1DCC3C75C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return AppShortcutGeneralizedInvocation.appShortcuts.getter();
}

uint64_t sub_1DCC3C7FC()
{
  sub_1DD0DF1DC();
  AppShortcutGeneralizedInvocation.hash(into:)();
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC3C83C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1DD0DE0EC();
    v13[0] = sub_1DD0DE1CC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1DCC3C940(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_1DCC3C9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA8AD0, &qword_1DD0E4F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DCC3CAA4()
{
  result = qword_1EDE468A0;
  if (!qword_1EDE468A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE468A0);
  }

  return result;
}

uint64_t destroy for AppShortcutGeneralizedInvocation(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 32);

  v4 = *(a1 + 48);

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
}

uint64_t initializeWithCopy for AppShortcutGeneralizedInvocation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 80);
  *(a1 + 80) = v8;
  v9 = v8;
  v10 = **(v8 - 8);
  v11 = v4;

  v10(a1 + 56, a2 + 56, v9);
  return a1;
}

uint64_t assignWithCopy for AppShortcutGeneralizedInvocation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  __swift_assign_boxed_opaque_existential_1((a1 + 56), (a2 + 56));
  return a1;
}

uint64_t assignWithTake for AppShortcutGeneralizedInvocation(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v7 = *(a2 + 32);
  v8 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  v9 = *(a2 + 48);
  v10 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCC3CDF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1DCC3CE18(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1DCC3CE30(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC3CDF0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AppShortcutGeneralizedInvocation.ExtractionError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCC3CDF0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCC3CE18(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AppShortcutGeneralizedInvocation.ExtractionError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCC3CE18(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutGeneralizedInvocation.ExtractionError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppShortcutGeneralizedInvocation.ExtractionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCC3CFA0(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DCC3CFB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DCC3CFE0()
{
  result = qword_1ECCA2610;
  if (!qword_1ECCA2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2610);
  }

  return result;
}

uint64_t AppShortcutExactInvocation.AppShortcutExactInvocationError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t AppShortcutExactInvocation.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t AppShortcutExactInvocation.actionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t AppShortcutExactInvocation.baseTemplatePhrase.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t AppShortcutExactInvocation.propertyIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppShortcutExactInvocation(0) + 28);

  return sub_1DCC3D1B4(v3, a1);
}

uint64_t sub_1DCC3D1B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppShortcutExactInvocation.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppShortcutExactInvocation(0) + 32);

  return sub_1DCB17CA0(v3, a1);
}

id AppShortcutExactInvocation.preferences.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppShortcutExactInvocation(0) + 36));

  return v1;
}

uint64_t AppShortcutExactInvocation.init(directInvocationData:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - v14;

  sub_1DCB90D40(0x6449656C646E7562, 0xE800000000000000, a1);
  if (!v32)
  {
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_40_8() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = v35;
  v16 = v36;
  sub_1DCB90D40(0xD000000000000012, 0x80000001DD115330, a1);

  if (!v32)
  {
LABEL_9:

    sub_1DCB0E9D8(v31, &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_11:
    sub_1DCC3D714();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  if (!OUTLINED_FUNCTION_40_8())
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1DCC3D578(v31);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  else
  {
    v20 = v31[1];
    v29 = v31[2];
    v30 = v31[0];
    v37 = v32;
    v21 = v34;
    v28[1] = v33;

    if (v21)
    {

      sub_1DD0DAFEC();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v22 = sub_1DD0DB04C();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v22);
    }

    v23 = v20;
    v24 = type metadata accessor for AppShortcutExactInvocation(0);
    sub_1DCB17CA0(a2, a4 + v24[8]);
    v25 = [objc_opt_self() sharedPreferences];
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    *a4 = v17;
    a4[1] = v16;
    v26 = v29;
    a4[2] = v30;
    a4[3] = v23;
    v27 = v37;
    a4[4] = v26;
    a4[5] = v27;
    result = sub_1DCC3D768(v15, a4 + v24[7]);
    *(a4 + v24[9]) = v25;
  }

  return result;
}

uint64_t sub_1DCC3D578@<X0>(void *a1@<X8>)
{
  sub_1DCB1C4D8();
  v2 = sub_1DD0DEA0C();
  v3 = v2[2];
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:

    sub_1DCC3D714();
    swift_allocError();
    *v5 = v4;
    return swift_willThrow();
  }

  v8 = v2[4];
  v7 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  if (v3 == 3)
  {
    v12 = v2[8];
    v11 = v2[9];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v12;
  a1[5] = v11;
  return result;
}

uint64_t AppShortcutExactInvocation.init(bundleId:actionIdentifier:baseTemplatePhrase:propertyIdentifier:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v13 = type metadata accessor for AppShortcutExactInvocation(0);
  sub_1DCC3D768(a7, a9 + v13[7]);
  result = sub_1DCAFF9E8(a8, a9 + v13[8]);
  *(a9 + v13[9]) = a10;
  return result;
}

unint64_t sub_1DCC3D714()
{
  result = qword_1ECCA2620;
  if (!qword_1ECCA2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2620);
  }

  return result;
}

uint64_t sub_1DCC3D768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppShortcutExactInvocation.action.getter()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v0;
  v2 = type metadata accessor for AppShortcutExactInvocation(0);
  v1[3] = v2;
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  v1[4] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DD85C();
  v1[5] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[6] = v6;
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v9 = sub_1DD0DD88C();
  v1[9] = v9;
  OUTLINED_FUNCTION_99(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v13);
  v15 = *(v14 + 64);
  v1[12] = OUTLINED_FUNCTION_38();
  v16 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCC3D92C()
{
  v51 = v0;
  v1 = v0[12];
  v2 = v0[2];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[4];
  v6 = v2[5];
  sub_1DCC3D1B4(v2 + *(v0[3] + 28), v1);
  objc_allocWithZone(MEMORY[0x1E69ACDB0]);

  v7 = sub_1DCC411B8(0x646573756E55, 0xE600000000000000, v3, v4, v5, v6, v1, 0);
  v0[13] = v7;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[4];
  v12 = v0[2];
  v13 = __swift_project_value_buffer(v10, qword_1EDE57DD0);
  (*(v9 + 16))(v8, v13, v10);
  sub_1DD0DD87C();
  sub_1DD0DD82C();
  OUTLINED_FUNCTION_13_11();
  sub_1DCC413B8(v12, v11, v14);
  v15 = sub_1DD0DD87C();
  v16 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v17 = v0[8];
    v18 = v0[4];
    v19 = OUTLINED_FUNCTION_151();
    v20 = swift_slowAlloc();
    v50 = v20;
    *v19 = 136315138;
    v21 = *v18;
    v22 = v18[1];

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v18, v23);
    v24 = sub_1DCB10E9C(v21, v22, &v50);

    *(v19 + 4) = v24;
    v25 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v15, v16, v25, "FetchActionForAppShortcutPhrase", "BundleId: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v26 = v0[4];

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v26, v27);
  }

  v28 = v0[7];
  v29 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  v33 = v0[2];
  v32 = v0[3];
  v34 = *(v31 + 16);
  v35 = OUTLINED_FUNCTION_68();
  v36(v35);
  v37 = sub_1DD0DD8CC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_34_5();
  v0[14] = sub_1DD0DD8BC();
  (*(v31 + 8))(v29, v30);
  v40 = (v33 + *(v32 + 32));
  v41 = v40[3];
  v42 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v43 = *(v42 + 24);
  OUTLINED_FUNCTION_24_0();
  v49 = (v44 + *v44);
  v46 = *(v45 + 4);
  v47 = swift_task_alloc();
  v0[15] = v47;
  *v47 = v0;
  v47[1] = sub_1DCC3DCB4;

  return v49(v7, v41, v42);
}

uint64_t sub_1DCC3DCB4(uint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 128) = v1;

  if (!v1)
  {
    *(v5 + 136) = a1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCC3DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_8();

  (*(v16 + 8))(v12, v14);

  OUTLINED_FUNCTION_69();
  v17 = *(v13 + 136);
  OUTLINED_FUNCTION_117();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1DCC3DE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_8();

  (*(v16 + 8))(v12, v14);

  v17 = *(v13 + 8);
  v18 = *(v13 + 128);
  OUTLINED_FUNCTION_117();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1DCC3DF28()
{
  v0 = sub_1DD0DD89C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = sub_1DD0DD85C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t AppShortcutExactInvocation.appShortcuts.getter()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v0;
  v2 = sub_1DD0DD89C();
  v1[4] = v2;
  OUTLINED_FUNCTION_99(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for AppShortcutExactInvocation(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_38();
  v9 = sub_1DD0DD85C();
  v1[9] = v9;
  OUTLINED_FUNCTION_99(v9);
  v1[10] = v10;
  v12 = *(v11 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v13 = sub_1DD0DD88C();
  v1[14] = v13;
  OUTLINED_FUNCTION_99(v13);
  v1[15] = v14;
  v16 = *(v15 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v17 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DCC3E2F0()
{
  v60 = v0;
  v1 = [*(v0[3] + *(v0[7] + 36)) languageCode];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DD0DDFBC();
    v5 = v4;

    v0[17] = v5;
    if (qword_1EDE4EC80 != -1)
    {
      OUTLINED_FUNCTION_14_5();
    }

    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[14];
    v9 = v0[8];
    v10 = v0[3];
    v11 = __swift_project_value_buffer(v8, qword_1EDE57DD0);
    (*(v6 + 16))(v7, v11, v8);
    sub_1DD0DD87C();
    sub_1DD0DD82C();
    OUTLINED_FUNCTION_13_11();
    sub_1DCC413B8(v10, v9, v12);
    v13 = sub_1DD0DD87C();
    v14 = sub_1DD0DE7FC();
    if (sub_1DD0DE92C())
    {
      v57 = v0[13];
      v15 = v5;
      v16 = v3;
      v17 = v0[8];
      v18 = OUTLINED_FUNCTION_151();
      v19 = swift_slowAlloc();
      v59 = v19;
      *v18 = 136315138;
      v21 = *v17;
      v20 = v17[1];

      OUTLINED_FUNCTION_0_16();
      sub_1DCC4155C(v17, v22);
      v23 = sub_1DCB10E9C(v21, v20, &v59);

      *(v18 + 4) = v23;
      v3 = v16;
      v5 = v15;
      v24 = sub_1DD0DD83C();
      _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v13, v14, v24, "AppShortcutFirstRunFlowFetchAppShortcuts", "BundleId: %s)", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
      v32 = v0[8];

      OUTLINED_FUNCTION_0_16();
      sub_1DCC4155C(v32, v33);
    }

    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[9];
    v37 = v0[10];
    v38 = v0[7];
    v39 = v0[3];
    v40 = *(v37 + 16);
    v41 = OUTLINED_FUNCTION_194();
    v42(v41);
    v43 = sub_1DD0DD8CC();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_34_5();
    v0[18] = sub_1DD0DD8BC();
    v46 = *(v37 + 8);
    v0[19] = v46;
    v0[20] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v34, v36);
    v47 = (v39 + *(v38 + 32));
    v48 = v47[3];
    v49 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v50 = *v39;
    v51 = v39[1];
    v52 = *(v49 + 16);
    OUTLINED_FUNCTION_24_0();
    v58 = (v53 + *v53);
    v55 = *(v54 + 4);
    v56 = swift_task_alloc();
    v0[21] = v56;
    *v56 = v0;
    v56[1] = sub_1DCC3E780;

    return v58(v50, v51, v3, v5, v48, v49);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DCAFC000, v26, v27, "#AutoShortcutFirstRunFlow cannot get Siri language", v28, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_29_5();

    OUTLINED_FUNCTION_69();
    v30 = MEMORY[0x1E69E7CC0];

    return v29(v30);
  }
}

uint64_t sub_1DCC3E780()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 176) = v9;
  *(v10 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCC3E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  v12[2] = v12[22];
  v13 = v12[18];
  v14 = v12[16];
  v15 = v12[11];

  v16 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    v17 = v12[18];
    v18 = v12[5];
    v19 = v12[6];
    v20 = v12[4];
    sub_1DD0DCF8C();
  }

  v22 = v12[22];
  v21 = v12[23];
  v24 = v12[19];
  v23 = v12[20];
  v25 = v12[11];
  v26 = v12[9];
  v27 = v12[3];

  v24(v25, v26);
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  sub_1DCC3ED8C(sub_1DCC4131C, v28, v22);
  v30 = v29;
  LOBYTE(v23) = v31;

  v32 = v12[18];
  v34 = v12[15];
  v33 = v12[16];
  v35 = v12[14];
  if (v23)
  {
    (*(v34 + 8))(v12[16], v12[14]);
  }

  else
  {
    sub_1DCC3C218(v30, 0);

    (*(v34 + 8))(v33, v35);
  }

  v36 = v12[2];
  v37 = v12[16];
  v39 = v12[12];
  v38 = v12[13];
  v40 = v12[11];
  v41 = v12[8];
  v42 = v12[6];

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_117();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1DCC3EB1C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_69();
  v7 = MEMORY[0x1E69E7CC0];

  return v6(v7);
}

BOOL sub_1DCC3EBE4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1DCC3EC94(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12A72C0](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void sub_1DCC3ED8C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1DCB08B14(a3);
  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12A72C0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v7 = *(a3 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1DCC3EE8C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v10 = *(v7 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    result = swift_unknownObjectRelease();
    if (v3)
    {
      return result;
    }

    if (v8)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_1DCC3EF48(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = type metadata accessor for SnippetManager.SnippetRecord(0);
    OUTLINED_FUNCTION_99(v8);
    result = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t AppShortcutExactInvocation.hash(into:)()
{
  v1 = sub_1DD0DB04C();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_27_7();
  v16 = *v0;
  v17 = v0[1];
  sub_1DD0DDF2C();
  v18 = v0[2];
  v19 = v0[3];
  sub_1DD0DDF2C();
  v20 = v0[4];
  v21 = v0[5];
  sub_1DD0DDF2C();
  v22 = type metadata accessor for AppShortcutExactInvocation(0);
  sub_1DCC3D1B4(v0 + *(v22 + 28), v0);
  v23 = OUTLINED_FUNCTION_34_5();
  if (__swift_getEnumTagSinglePayload(v23, v24, v1) == 1)
  {
    sub_1DD0DF1FC();
  }

  else
  {
    (*(v4 + 32))(v10, v0, v1);
    sub_1DD0DF1FC();
    OUTLINED_FUNCTION_3_25();
    sub_1DCC41350(v25, v26);
    sub_1DD0DDF1C();
    (*(v4 + 8))(v10, v1);
  }

  v27 = *(v0 + *(v22 + 36));
  return sub_1DD0DE8FC();
}

uint64_t static AppShortcutExactInvocation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1DD0DB04C();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2628, &qword_1DD0E5C70);
  OUTLINED_FUNCTION_2(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v45 - v26;
  v28 = *a1 == *a2 && a1[1] == a2[1];
  if (!v28 && (sub_1DD0DF0AC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v29 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v29 && (sub_1DD0DF0AC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v30 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v30 && (sub_1DD0DF0AC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v31 = type metadata accessor for AppShortcutExactInvocation(0);
  v32 = *(v31 + 28);
  v33 = *(v21 + 48);
  sub_1DCC3D1B4(a1 + v32, v27);
  sub_1DCC3D1B4(a2 + v32, &v27[v33]);
  OUTLINED_FUNCTION_41_1(v27);
  if (v28)
  {
    OUTLINED_FUNCTION_41_1(&v27[v33]);
    if (v28)
    {
      sub_1DCB0E9D8(v27, &qword_1ECCA2618, &unk_1DD0E5C50);
LABEL_28:
      sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);
      v42 = *(v31 + 36);
      v43 = *(a1 + v42);
      v44 = *(a2 + v42);
      v35 = sub_1DD0DE8EC();
      return v35 & 1;
    }

    goto LABEL_24;
  }

  sub_1DCC3D1B4(v27, v20);
  OUTLINED_FUNCTION_41_1(&v27[v33]);
  if (v34)
  {
    (*(v7 + 8))(v20, v4);
LABEL_24:
    sub_1DCB0E9D8(v27, &qword_1ECCA2628, &qword_1DD0E5C70);
    goto LABEL_25;
  }

  (*(v7 + 32))(v13, &v27[v33], v4);
  OUTLINED_FUNCTION_3_25();
  sub_1DCC41350(v37, v38);
  v39 = sub_1DD0DDF7C();
  v40 = *(v7 + 8);
  v41 = OUTLINED_FUNCTION_35_3();
  v40(v41);
  (v40)(v20, v4);
  sub_1DCB0E9D8(v27, &qword_1ECCA2618, &unk_1DD0E5C50);
  if (v39)
  {
    goto LABEL_28;
  }

LABEL_25:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1DCC3F528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC3C670;

  return AppShortcutExactInvocation.action.getter();
}

uint64_t sub_1DCC3F5B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return AppShortcutExactInvocation.appShortcuts.getter();
}

uint64_t AppShortcutInvocation.bundleId.getter()
{
  v1 = type metadata accessor for AppShortcutExactInvocation(0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  v9 = type metadata accessor for AppShortcutInvocation(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_1_22();
  sub_1DCC413B8(v0, v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));

    sub_1DCC41414(__dst);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_194();
    sub_1DCC41468(v15, v16);
    v17 = *v8;
    v18 = v8[1];

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v8, v19);
  }

  return OUTLINED_FUNCTION_68();
}

uint64_t AppShortcutInvocation.actionIdentifier.getter()
{
  v1 = type metadata accessor for AppShortcutExactInvocation(0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = type metadata accessor for AppShortcutInvocation(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_1_22();
  sub_1DCC413B8(v0, v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));
    AppShortcutGeneralizedInvocation.extractedActionIdentifier.getter();
    sub_1DCC41414(__dst);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_194();
    sub_1DCC41468(v15, v16);
    v17 = *(v8 + 16);
    v18 = *(v8 + 24);

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v8, v19);
  }

  return OUTLINED_FUNCTION_68();
}

uint64_t AppShortcutInvocation.exists(siriLanguage:provider:)()
{
  OUTLINED_FUNCTION_42();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = type metadata accessor for AppShortcutExactInvocation(0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[30] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for AppShortcutInvocation(0);
  v1[31] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_38();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCC3F934()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  AppShortcutInvocation.bundleId.getter();
  v0[33] = v4;
  v5 = *(v3 + 16);
  OUTLINED_FUNCTION_24_0();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_1DCC3FA64;
  v10 = v0[26];
  v11 = v0[27];
  v12 = OUTLINED_FUNCTION_19_9();

  return v13(v12);
}

uint64_t sub_1DCC3FA64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  v3[35] = v7;
  v3[36] = v0;

  if (!v0)
  {
    v8 = v3[33];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC3FB70()
{
  OUTLINED_FUNCTION_125();
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  OUTLINED_FUNCTION_1_22();
  sub_1DCC413B8(v4, v2, v5);
  OUTLINED_FUNCTION_194();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(v0 + 2, v0[32], 0x60uLL);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = v0[35];
    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    sub_1DCC414CC((v0 + 2), (v0 + 14));

    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6DC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[35];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136315394;
      v14 = v0[15];
      v15 = v0[16];

      sub_1DCC41414((v0 + 14));
      v16 = sub_1DCB10E9C(v14, v15, &v38);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = sub_1DCB08B14(v11);

      _os_log_impl(&dword_1DCAFC000, v8, v9, "Existence check for generalized match. App Shortcut Identifier: %s. MaxRank: %ld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_92_0();
    }

    else
    {
      v24 = v0[35];

      sub_1DCC41414((v0 + 14));
    }

    v25 = v0[36];
    v26 = sub_1DCB08B14(v0[35]);

    sub_1DCC3C02C(v26);
    if (v25)
    {
      v27 = v25;
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v28, v29))
      {
        OUTLINED_FUNCTION_151();
        v30 = OUTLINED_FUNCTION_28_5();
        *v26 = 138412290;
        v31 = v25;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v32;
        *v30 = v32;
        OUTLINED_FUNCTION_30_2(&dword_1DCAFC000, v33, v29, "Could not extract app shortcut rank. Error: %@");
        sub_1DCB0E9D8(v30, qword_1ECCA8AD0, &qword_1DD0E4F90);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {
      }

      sub_1DCC41414((v0 + 2));
      v22 = 0;
    }

    else
    {
      sub_1DCC41414((v0 + 2));
      v22 = 1;
    }
  }

  else
  {
    v17 = v0[35];
    v18 = v0[36];
    v19 = v0[30];
    sub_1DCC41468(v0[32], v19);
    v20 = swift_task_alloc();
    *(v20 + 16) = v19;
    sub_1DCC3EC94(sub_1DCC4131C, v20, v17, sub_1DCB08B14);
    v22 = v21;

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v19, v23);
  }

  v34 = v0[32];
  v35 = v0[30];

  OUTLINED_FUNCTION_69();

  return v36(v22 & 1);
}

uint64_t sub_1DCC3FEF4()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[33];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = v0[36];
  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[36];
  if (v8)
  {
    OUTLINED_FUNCTION_151();
    v10 = OUTLINED_FUNCTION_28_5();
    *v1 = 138412290;
    v11 = v9;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_30_2(&dword_1DCAFC000, v13, v7, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@");
    sub_1DCB0E9D8(v10, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v14 = v0[32];
  v15 = v0[30];

  OUTLINED_FUNCTION_69();

  return v16(0);
}

uint64_t sub_1DCC4006C(id *a1, uint64_t a2, uint64_t (*a3)(id *))
{
  v5 = [*a1 orderedPhrases];
  sub_1DCB10E5C(0, &qword_1ECCA2660, 0x1E69ACDB0);
  v6 = sub_1DD0DE2EC();

  v9[2] = a2;
  sub_1DCC3EC94(a3, v9, v6, sub_1DCB08B14);
  LOBYTE(a3) = v7;

  return a3 & 1;
}

uint64_t AppShortcutInvocation.getAppShortcuts(siriLanguage:provider:)()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = type metadata accessor for AppShortcutExactInvocation(0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for AppShortcutInvocation(0);
  v1[20] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_38();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCC401D8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  AppShortcutInvocation.bundleId.getter();
  v0[22] = v4;
  v5 = *(v3 + 16);
  OUTLINED_FUNCTION_24_0();
  v15 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1DCC40308;
  v10 = v0[15];
  v11 = v0[16];
  v12 = OUTLINED_FUNCTION_19_9();

  return v13(v12);
}

uint64_t sub_1DCC40308()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;
  v3[25] = v0;

  if (!v0)
  {
    v8 = v3[22];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC40414()
{
  OUTLINED_FUNCTION_33();
  v0[14] = v0[24];
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  OUTLINED_FUNCTION_1_22();
  sub_1DCC413B8(v4, v1, v5);
  OUTLINED_FUNCTION_68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[25];
  v8 = v0[24];
  if (EnumCaseMultiPayload == 1)
  {
    memcpy(v0 + 2, v0[21], 0x60uLL);
    v9 = sub_1DCB08B14(v8);
    v10 = sub_1DCC3C02C(v9);
    if (v7)
    {
    }

    else
    {
      sub_1DCC3C218(v10, 0);
    }

    sub_1DCC41414((v0 + 2));
  }

  else
  {
    v11 = v0[19];
    sub_1DCC41468(v0[21], v11);
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    sub_1DCC3ED8C(sub_1DCC41528, v12, v8);
    v14 = v13;
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      sub_1DCC3C218(v14, 0);
    }

    v17 = v0[19];
    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v18, v19);
  }

  v20 = v0[14];
  v21 = v0[21];
  v22 = v0[19];

  OUTLINED_FUNCTION_69();

  return v23(v20);
}

uint64_t sub_1DCC40584()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[22];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = v0[25];
  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[25];
    OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_28_5();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_30_2(&dword_1DCAFC000, v12, v7, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@");
    sub_1DCB0E9D8(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  v13 = v0[25];

  v14 = v0[21];
  v15 = v0[19];

  OUTLINED_FUNCTION_69();
  v17 = MEMORY[0x1E69E7CC0];

  return v16(v17);
}

uint64_t sub_1DCC406F4(id *a1, uint64_t a2)
{
  v3 = [*a1 basePhraseTemplate];
  v4 = sub_1DD0DDFBC();
  v6 = v5;

  if (v4 == *(a2 + 32) && v6 == *(a2 + 40))
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_35_3();
    v8 = sub_1DD0DF0AC();
  }

  return v8 & 1;
}

uint64_t AppShortcutInvocation.enableAppShortcuts()()
{
  *(v1 + 144) = v0;
  v2 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DCC407B4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[18];
  v2 = [objc_opt_self() standardClient];
  v0[19] = v2;
  AppShortcutInvocation.bundleId.getter();
  v3 = sub_1DD0DDF8C();
  v0[20] = v3;

  v0[2] = v0;
  v0[3] = sub_1DCC40918;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCC40AF8;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 setSiriAutoShortcutsEnablement:1 forBundleIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC40918()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC40A18()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DCC40A78()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 160);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DCC40AF8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1DCEA2438(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t AppShortcutInvocation.hash(into:)()
{
  v1 = sub_1DD0DB04C();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_27_7();
  v16 = type metadata accessor for AppShortcutExactInvocation(0);
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  OUTLINED_FUNCTION_16();
  v23 = (v22 - v21);
  v24 = type metadata accessor for AppShortcutInvocation(0);
  v25 = OUTLINED_FUNCTION_2(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  OUTLINED_FUNCTION_16();
  v31 = (v30 - v29);
  OUTLINED_FUNCTION_1_22();
  sub_1DCC413B8(v0, v31, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v31, sizeof(__dst));
    sub_1DD0DDF2C();
    sub_1DD0DDF2C();
    if (__dst[4])
    {
      sub_1DD0DF1FC();
      sub_1DD0DDF2C();
    }

    else
    {
      sub_1DD0DF1FC();
    }

    sub_1DD0DE8FC();
    return sub_1DCC41414(__dst);
  }

  else
  {
    sub_1DCC41468(v31, v23);
    v33 = *v23;
    v34 = v23[1];
    sub_1DD0DDF2C();
    v35 = v23[2];
    v36 = v23[3];
    sub_1DD0DDF2C();
    v37 = v23[4];
    v38 = v23[5];
    sub_1DD0DDF2C();
    sub_1DCC3D1B4(v23 + *(v16 + 28), v0);
    v39 = OUTLINED_FUNCTION_34_5();
    if (__swift_getEnumTagSinglePayload(v39, v40, v1) == 1)
    {
      sub_1DD0DF1FC();
    }

    else
    {
      v41 = *(v4 + 32);
      v42 = OUTLINED_FUNCTION_35_3();
      v43(v42);
      sub_1DD0DF1FC();
      OUTLINED_FUNCTION_3_25();
      sub_1DCC41350(v44, v45);
      sub_1DD0DDF1C();
      (*(v4 + 8))(v10, v1);
    }

    v46 = *(v23 + *(v16 + 36));
    sub_1DD0DE8FC();
    OUTLINED_FUNCTION_0_16();
    return sub_1DCC4155C(v23, v47);
  }
}

uint64_t static AppShortcutInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppShortcutExactInvocation(0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_27_7();
  v10 = type metadata accessor for AppShortcutInvocation(0);
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = (__dst - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = __dst - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2640, &qword_1DD0E5CA0);
  OUTLINED_FUNCTION_20_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = __dst - v27;
  v29 = *(v26 + 56);
  sub_1DCC413B8(a1, __dst - v27, type metadata accessor for AppShortcutInvocation);
  sub_1DCC413B8(a2, &v28[v29], type metadata accessor for AppShortcutInvocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_22();
    sub_1DCC413B8(v28, v17, v30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(__dst, &v28[v29], sizeof(__dst));
      v31 = static AppShortcutGeneralizedInvocation.== infix(_:_:)(v17, __dst);
      sub_1DCC41414(__dst);
      sub_1DCC41414(v17);
LABEL_9:
      sub_1DCC4155C(v28, type metadata accessor for AppShortcutInvocation);
      return v31 & 1;
    }

    sub_1DCC41414(v17);
  }

  else
  {
    OUTLINED_FUNCTION_1_22();
    sub_1DCC413B8(v28, v20, v32);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DCC41468(&v28[v29], v2);
      v34 = OUTLINED_FUNCTION_35_3();
      v31 = static AppShortcutExactInvocation.== infix(_:_:)(v34, v35);
      sub_1DCC4155C(v2, type metadata accessor for AppShortcutExactInvocation);
      sub_1DCC4155C(v20, type metadata accessor for AppShortcutExactInvocation);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_16();
    sub_1DCC4155C(v20, v33);
  }

  sub_1DCB0E9D8(v28, &qword_1ECCA2640, &qword_1DD0E5CA0);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1DCC41108(void (*a1)(_BYTE *))
{
  sub_1DD0DF1DC();
  a1(v3);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC41170(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1DD0DF1DC();
  a4(v6);
  return sub_1DD0DF20C();
}

id sub_1DCC411B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = sub_1DD0DDF8C();

  v11 = sub_1DD0DDF8C();

  v12 = sub_1DD0DDF8C();

  v13 = sub_1DD0DB04C();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v13) != 1)
  {
    v14 = sub_1DD0DB00C();
    (*(*(v13 - 8) + 8))(a7, v13);
  }

  v15 = sub_1DD0DDF8C();

  v16 = [v18 initWithLocalizedPhrase:v10 bundleIdentifier:v11 basePhraseTemplate:v12 parameterIdentifier:v14 primary:a8 & 1 signature:v15];

  return v16;
}

uint64_t sub_1DCC41350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCC413B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCC41468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutExactInvocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4155C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DCC415B8()
{
  result = qword_1ECCA2648;
  if (!qword_1ECCA2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2648);
  }

  return result;
}

uint64_t dispatch thunk of AppShortcutInvoking.action.getter()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_24_0();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_26(v6);

  return v8(v7);
}

uint64_t sub_1DCC4179C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_69();

  return v7(v2);
}

uint64_t dispatch thunk of AppShortcutInvoking.appShortcuts.getter()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_24_0();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_26(v6);

  return v8(v7);
}

char *initializeBufferWithCopyOfBuffer for AppShortcutExactInvocation(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v8;
  v9 = a3[7];
  v10 = sub_1DD0DB04C();

  if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v10);
  }

  v12 = a3[8];
  v13 = *&a2[v12 + 24];
  *&a1[v12 + 24] = v13;
  (**(v13 - 8))();
  v14 = a3[9];
  v15 = *&a2[v14];
  *&a1[v14] = v15;
  v16 = v15;
  return a1;
}

void destroy for AppShortcutExactInvocation(char *a1, int *a2)
{
  v4 = *(a1 + 1);

  v5 = *(a1 + 3);

  v6 = *(a1 + 5);

  v7 = a2[7];
  v8 = sub_1DD0DB04C();
  if (!__swift_getEnumTagSinglePayload(&a1[v7], 1, v8))
  {
    (*(*(v8 - 8) + 8))(&a1[v7], v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&a1[a2[8]]);
  v9 = *&a1[a2[9]];
}

char *initializeWithCopy for AppShortcutExactInvocation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v8;
  v9 = a3[7];
  v10 = sub_1DD0DB04C();

  if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v10);
  }

  v12 = a3[8];
  v13 = *&a2[v12 + 24];
  *&a1[v12 + 24] = v13;
  (**(v13 - 8))();
  v14 = a3[9];
  v15 = *&a2[v14];
  *&a1[v14] = v15;
  v16 = v15;
  return a1;
}

char *assignWithCopy for AppShortcutExactInvocation(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);

  *(a1 + 4) = *(a2 + 4);
  v8 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);

  v9 = a3[7];
  v10 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v9], 1, v10);
  v12 = __swift_getEnumTagSinglePayload(&a2[v9], 1, v10);
  if (!EnumTagSinglePayload)
  {
    v13 = *(v10 - 8);
    if (!v12)
    {
      (*(v13 + 24))(&a1[v9], &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v13 + 8))(&a1[v9], v10);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v9], &a2[v9], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  __swift_storeEnumTagSinglePayload(&a1[v9], 0, 1, v10);
LABEL_7:
  __swift_assign_boxed_opaque_existential_1(&a1[a3[8]], &a2[a3[8]]);
  v15 = a3[9];
  v16 = *&a2[v15];
  v17 = *&a1[v15];
  *&a1[v15] = v16;
  v18 = v16;

  return a1;
}

char *initializeWithTake for AppShortcutExactInvocation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 2);
  v7 = a3[7];
  v8 = sub_1DD0DB04C();
  if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
  }

  v10 = a3[8];
  v11 = a3[9];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *(v12 + 4) = *(v13 + 4);
  *&a1[v11] = *&a2[v11];
  return a1;
}

char *assignWithTake for AppShortcutExactInvocation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = *(a2 + 5);
  v11 = *(a1 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v10;

  v12 = a3[7];
  v13 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v12], 1, v13);
  v15 = __swift_getEnumTagSinglePayload(&a2[v12], 1, v13);
  if (!EnumTagSinglePayload)
  {
    v16 = *(v13 - 8);
    if (!v15)
    {
      (*(v16 + 40))(&a1[v12], &a2[v12], v13);
      goto LABEL_7;
    }

    (*(v16 + 8))(&a1[v12], v13);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    memcpy(&a1[v12], &a2[v12], *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
LABEL_7:
  v18 = a3[8];
  v19 = &a1[v18];
  v20 = &a2[v18];
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[v18]);
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  *(v19 + 4) = *(v20 + 4);
  v22 = a3[9];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  return a1;
}

void sub_1DCC4227C()
{
  sub_1DCC42330();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCC42330()
{
  if (!qword_1EDE4F1E8)
  {
    sub_1DD0DB04C();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE4F1E8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppShortcutExactInvocation.AppShortcutExactInvocationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for AppShortcutInvocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    v7 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v7;
    v8 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
    *(a1 + 48) = *(a2 + 48);
    v9 = *(a2 + 80);
    *(a1 + 80) = v9;
    v10 = v9;
    v11 = **(v9 - 8);
    v12 = v5;

    v11(a1 + 56, a2 + 56, v10);
  }

  else
  {
    v13 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v13;
    v14 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v14;
    v15 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v15;
    v16 = type metadata accessor for AppShortcutExactInvocation(0);
    v17 = v16[7];
    v18 = sub_1DD0DB04C();

    if (__swift_getEnumTagSinglePayload(a2 + v17, 1, v18))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy((a1 + v17), (a2 + v17), *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
      __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
    }

    v20 = v16[8];
    v21 = *(a2 + v20 + 24);
    *(a1 + v20 + 24) = v21;
    (**(v21 - 8))();
    v22 = v16[9];
    v23 = *(a2 + v22);
    *(a1 + v22) = v23;
    v24 = v23;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for AppShortcutInvocation(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = *(a1 + 16);

    v3 = *(a1 + 32);

    v4 = *(a1 + 48);

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  else
  {
    v5 = *(a1 + 8);

    v6 = *(a1 + 24);

    v7 = *(a1 + 40);

    v8 = type metadata accessor for AppShortcutExactInvocation(0);
    v9 = v8[7];
    v10 = sub_1DD0DB04C();
    if (!__swift_getEnumTagSinglePayload(a1 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(a1 + v9, v10);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8[8]));
    v11 = *(a1 + v8[9]);
  }
}

uint64_t initializeWithCopy for AppShortcutInvocation(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v6;
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    *(a1 + 48) = *(a2 + 48);
    v8 = *(a2 + 80);
    *(a1 + 80) = v8;
    v9 = v8;
    v10 = **(v8 - 8);
    v11 = v4;

    v10(a1 + 56, a2 + 56, v9);
  }

  else
  {
    v12 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v12;
    v13 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v13;
    v14 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v14;
    v15 = type metadata accessor for AppShortcutExactInvocation(0);
    v16 = v15[7];
    v17 = sub_1DD0DB04C();

    if (__swift_getEnumTagSinglePayload(a2 + v16, 1, v17))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
      memcpy((a1 + v16), (a2 + v16), *(*(v18 - 8) + 64));
    }

    else
    {
      (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
      __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v17);
    }

    v19 = v15[8];
    v20 = *(a2 + v19 + 24);
    *(a1 + v19 + 24) = v20;
    (**(v20 - 8))();
    v21 = v15[9];
    v22 = *(a2 + v21);
    *(a1 + v21) = v22;
    v23 = v22;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}