void static SignpostLogger.end(_:_:)()
{
  sub_222E40044();
  v0 = OUTLINED_FUNCTION_0_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1_4();
  sub_222E3FAC4();
}

void sub_222E13C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v7(a4, a5);
  sub_222E3FAD4();
  sub_222E40054();
  v8 = (v7)(a4, a5);
  sub_222E3FAB4();
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_222E13C7C(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_222E3FAD4();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_222E40054();
    v16 = (v12)(a9, a10);
    OUTLINED_FUNCTION_1_4();
    sub_222E3FAC4();
  }

  else
  {
    sub_222E3FC24();
    sub_222E40054();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D540, &unk_222E41960);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_222E41650;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_222E143F8();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    OUTLINED_FUNCTION_1_4();
    sub_222E3FAB4();
  }
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{
  *(a1 + 8) = sub_222E254C4;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return v1 + 16;
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x223DD12D0);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  *(a1 + 8) = sub_222E199B0;
  v2 = *(v1 + 240);
  v3 = *(v1 + 224);
  return v1 + 16;
}

void OUTLINED_FUNCTION_1_3()
{

  JUMPOUT(0x223DD12D0);
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

void sub_222E14108(_DWORD *a1)
{
  sub_222E3F924();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    LOBYTE(v4) = sub_222E1C51C(v4);

    if (v4)
    {
      return;
    }
  }

  v6 = sub_222E14578(a1);
  if ((*(*v6 + 128))())
  {
    v7 = a1;
    v8 = sub_222E3FB04();
    v9 = sub_222E3FF94();

    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_10();
      v10 = OUTLINED_FUNCTION_11_0();
      v23 = v10;
      *a1 = 136315138;
      v11 = [v7 debugDescription];
      v12 = sub_222E3FCB4();
      v14 = v13;

      v15 = sub_222E16068(v12, v14, &v23);

      *(a1 + 1) = v15;
      v16 = "Could not find a handler for message: %s";
LABEL_10:
      _os_log_impl(&dword_222E12000, v8, v9, v16, a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6();

      return;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (((*(*v6 + 120))(v1) & 1) == 0)
  {
    v17 = a1;
    v8 = sub_222E3FB04();
    v9 = sub_222E3FFC4();

    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_10();
      v10 = OUTLINED_FUNCTION_11_0();
      v23 = v10;
      *a1 = 136315138;
      v18 = [v17 debugDescription];
      v19 = sub_222E3FCB4();
      v21 = v20;

      v22 = sub_222E16068(v19, v21, &v23);

      *(a1 + 1) = v22;
      v16 = "This is usually not a problem. Could not find a handler for message: %s";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  (*(*v6 + 104))(v1, a1);
LABEL_13:
}

unint64_t sub_222E143F8()
{
  result = qword_28131F1F8;
  if (!qword_28131F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_222E14578(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
  v8 = sub_222E3FCF4();
  v10 = v9;
  sub_222E15AB4();
  ObjectType = v8;
  v22 = v10;
  v11 = *(v3 + 80);
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  sub_222E3FC24();
  sub_222E3FC64();

  v12 = v18;
  if (v18)
  {
  }

  else
  {
    v23 = sub_222E3F984();
    ObjectType = a1;
    v13 = a1;
    sub_222E40374();
    v14 = sub_222E40394();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
    sub_222E225C4();
    v12 = v15;
    sub_222E16CA0(v7, &unk_27D04D630, &unk_222E420B0);
    v19 = v10;
    v20 = v12;
    v18 = v8;
    swift_beginAccess();
    sub_222E3FC54();

    sub_222E3FC74();
    swift_endAccess();
  }

  return v12;
}

void sub_222E1479C(_DWORD *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F8, &qword_222E41670);
  v5 = OUTLINED_FUNCTION_0(v4);
  v151 = v6;
  v152 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  v150 = &v141 - v10;
  OUTLINED_FUNCTION_37_0();
  v12 = *(v11 + 80);
  v158 = v1;
  v13 = *(v3 + 88);
  v14 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v15 = sub_222E400C4();
  v16 = OUTLINED_FUNCTION_0(v15);
  v149 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16();
  v143 = v20;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v21);
  v145 = &v141 - v22;
  OUTLINED_FUNCTION_29_0();
  v24 = MEMORY[0x28223BE20](v23);
  v153 = &v141 - v25;
  v154 = v14;
  v156 = *(v14 - 8);
  v26 = *(v156 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16();
  v142 = v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v28);
  v144 = &v141 - v29;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v30);
  v147 = &v141 - v31;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v141 - v33;
  v35 = sub_222E3F794();
  v36 = OUTLINED_FUNCTION_0(v35);
  v155 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_55();
  v157 = v40;
  if (qword_28131FB48 != -1)
  {
    OUTLINED_FUNCTION_19_0();
  }

  v41 = sub_222E3FB14();
  v42 = __swift_project_value_buffer(v41, qword_281320008);
  v43 = a1;
  v146 = v42;
  v44 = sub_222E3FB04();
  v45 = sub_222E3FF94();

  v46 = os_log_type_enabled(v44, v45);
  v148 = v34;
  if (v46)
  {
    a1 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v141 = v15;
    v48 = v35;
    v49 = v47;
    v34 = swift_slowAlloc();
    v159[0] = v34;
    *a1 = 136315906;
    OUTLINED_FUNCTION_60();
    v51 = v50(v12, v13);
    v53 = sub_222E16068(v51, v52, v159);

    *(a1 + 1) = v53;
    *(a1 + 6) = 2082;
    swift_getObjectType();
    v54 = sub_222E403A4();
    v56 = sub_222E16068(v54, v55, v159);

    *(a1 + 14) = v56;
    *(a1 + 11) = 2082;
    v12 = v157;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v57, v58);
    v59 = sub_222E40264();
    v61 = v60;
    v62 = *(v155 + 8);
    v63 = OUTLINED_FUNCTION_59();
    v64(v63);
    v42 = sub_222E16068(v59, v61, v159);

    *(a1 + 3) = v42;
    *(a1 + 16) = 2112;
    *(a1 + 34) = v43;
    *v49 = v43;
    v65 = v43;
    _os_log_impl(&dword_222E12000, v44, v45, "%s received %{public}s with messageId: %{public}s: %@", a1, 0x2Au);
    sub_222E16CA0(v49, &qword_27D04D460, &qword_222E41680);
    v35 = v48;
    OUTLINED_FUNCTION_7();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v66 = v156;
  sub_222E3F844();
  v67 = OUTLINED_FUNCTION_51();
  v68 = v153;
  v69 = v154;
  if (v67)
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4();
    OUTLINED_FUNCTION_40_0();
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_17();
      v72(v71);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v75 = v148;
      v76 = OUTLINED_FUNCTION_30_0();
      v77(v76);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_30_0();
      v78 = sub_222E3F764();
      v79 = *(v155 + 8);
      v79(v68, v35);
      if (v78)
      {
        v80 = v43;
        v81 = sub_222E3FB04();
        v82 = sub_222E3FFA4();

        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_10();
          v159[0] = OUTLINED_FUNCTION_25_0();
          *v80 = 136315138;
          v83 = v157;
          sub_222E3F934();
          OUTLINED_FUNCTION_0_4();
          sub_222E16AC8(v84, v85);
          OUTLINED_FUNCTION_31_1();
          v86 = sub_222E40264();
          v79(v83, v35);
          v87 = OUTLINED_FUNCTION_39_0();
          sub_222E16068(v87, v88, v89);
          OUTLINED_FUNCTION_65();
          *(v80 + 1) = v86;
          _os_log_impl(&dword_222E12000, v81, v82, "Received SessionStartedMessage for an existing session: %s, ignoring", v80, 0xCu);
          OUTLINED_FUNCTION_10_1();
          OUTLINED_FUNCTION_9();

          (*(v156 + 8))(v148, v154);
        }

        else
        {

          (*(v156 + 8))(v148, v69);
        }

        return;
      }

      (*(v66 + 8))(v75, v69);
    }

    v90 = v147;
    sub_222E16CF4(v34, v147);
    v91 = *(v69 + 44);
    v160 = a1;
    v161 = sub_222E16AC8(&qword_28131FF70, MEMORY[0x277D5CB48]);
    v159[0] = v34;
    v92 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
    v93 = v150;
    sub_222E3FE94();
    (*(v151 + 8))(v93, v152);
    (*(v66 + 8))(v90, v69);
    return;
  }

  sub_222E3F824();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4();
    OUTLINED_FUNCTION_40_0();
    if (v70)
    {
      v73 = OUTLINED_FUNCTION_17();
      v74(v73);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v96 = v144;
      v97 = OUTLINED_FUNCTION_30_0();
      v98(v97);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_30_0();
      sub_222E3F764();
      v99 = OUTLINED_FUNCTION_38_0();
      v100(v99);
      if (v42)
      {
        v101 = *(v69 + 44);
        v160 = a1;
        v102 = &unk_28131FF78;
        v103 = MEMORY[0x277D5CB18];
LABEL_33:
        v161 = sub_222E16AC8(v102, v103);
        v159[0] = v34;
        v130 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
        v131 = v150;
        sub_222E3FE94();
        (*(v151 + 8))(v131, v152);
        (*(v66 + 8))(v96, v69);
        return;
      }

      (*(v66 + 8))(v96, v69);
    }

    v104 = v43;
    v105 = sub_222E3FB04();
    v106 = sub_222E3FFA4();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = OUTLINED_FUNCTION_29();
      v158 = swift_slowAlloc();
      v159[0] = v158;
      OUTLINED_FUNCTION_50(4.8151e-34);
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v108, v109);
      OUTLINED_FUNCTION_33_0();
      v110 = OUTLINED_FUNCTION_28_0();
      v12(v110);
      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_33_0();
      v111 = OUTLINED_FUNCTION_54();
      v12(v111);
      v112 = OUTLINED_FUNCTION_39_0();
      sub_222E16068(v112, v113, v114);
      OUTLINED_FUNCTION_65();
      *(v107 + 14) = v34;
      v115 = "Received SessionEndedMessage: %s for a non-existing session: %s, ignoring";
LABEL_37:
      _os_log_impl(&dword_222E12000, v105, v156, v115, v107, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  sub_222E3F944();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4();
    OUTLINED_FUNCTION_40_0();
    if (v70)
    {
      v94 = OUTLINED_FUNCTION_17();
      v95(v94);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v96 = v142;
      v125 = OUTLINED_FUNCTION_30_0();
      v126(v125);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_30_0();
      sub_222E3F764();
      v127 = OUTLINED_FUNCTION_38_0();
      v128(v127);
      if (v42)
      {
        v129 = *(v69 + 44);
        v160 = a1;
        v102 = &unk_28131FF68;
        v103 = MEMORY[0x277D5CD80];
        goto LABEL_33;
      }

      (*(v66 + 8))(v96, v69);
    }

    v132 = v43;
    v105 = sub_222E3FB04();
    v133 = sub_222E3FFA4();

    if (os_log_type_enabled(v105, v133))
    {
      v107 = OUTLINED_FUNCTION_29();
      v158 = swift_slowAlloc();
      v159[0] = v158;
      OUTLINED_FUNCTION_50(4.8151e-34);
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v134, v135);
      OUTLINED_FUNCTION_33_0();
      v136 = OUTLINED_FUNCTION_28_0();
      v12(v136);
      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_33_0();
      v137 = OUTLINED_FUNCTION_54();
      v12(v137);
      v138 = OUTLINED_FUNCTION_39_0();
      sub_222E16068(v138, v139, v140);
      OUTLINED_FUNCTION_65();
      *(v107 + 14) = v34;
      v115 = "Received SessionMessage: %s for a non-existing session: %s, ignoring";
      goto LABEL_37;
    }

LABEL_38:

    return;
  }

  v116 = v43;
  v117 = sub_222E3FB04();
  v118 = sub_222E3FFA4();

  if (OUTLINED_FUNCTION_43_0())
  {
    v119 = OUTLINED_FUNCTION_10();
    v120 = swift_slowAlloc();
    v159[0] = v120;
    *v119 = 136315138;
    v121 = v157;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v122, v123);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    (*(v155 + 8))(v121, v35);
    v124 = OUTLINED_FUNCTION_48();

    *(v119 + 4) = v124;
    _os_log_impl(&dword_222E12000, v117, v118, "Received non-Session message %s, ignoring", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v120);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_7();
  }
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_8_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[20];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_222E15578(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = *v3;
  v39 = a1;
  v7 = *(v5 + 152);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v8 = *(v6 + 160);
    if (swift_dynamicCastClass())
    {
      v10 = v3[3];
      v9 = v3[4];
      v11 = *(v3 + 40);
      v12 = a2;
      OUTLINED_FUNCTION_9_2();
      sub_222E15AC8();
      v10();
      v13 = OUTLINED_FUNCTION_16_0();
      v14(v13);
      if (v11 == 1)
      {
        OUTLINED_FUNCTION_9_2();
        sub_222E19234();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_9_2();
        sub_222E19234();
      }
    }

    else
    {
      v28 = a2;
      v29 = sub_222E3FB04();
      v30 = sub_222E3FFA4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        v39 = OUTLINED_FUNCTION_45();
        *v31 = 136446466;
        swift_getObjectType();
        v32 = sub_222E403A4();
        sub_222E16068(v32, v33, &v39);

        v34 = OUTLINED_FUNCTION_24_1();
        v36 = sub_222E16068(v34, v35, &v39);

        *(v31 + 14) = v36;
        OUTLINED_FUNCTION_33_1(&dword_222E12000, v37, v38, "Input message type: %{public}s but expected type: %{public}s");
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_7();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v15 = sub_222E3FB04();
    v16 = sub_222E3FFA4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_29();
      v39 = OUTLINED_FUNCTION_45();
      *v17 = 136446466;
      swift_getObjectType();
      v18 = sub_222E403A4();
      v20 = v19;
      sub_222E16068(v18, v19, &v39);

      v21 = OUTLINED_FUNCTION_25_1();
      sub_222E16068(v21, v22, &v39);
      OUTLINED_FUNCTION_30_1();

      *(v17 + 14) = v20;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_7();
    }
  }
}

uint64_t MessageDispatchingBridgeBase.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E3FC24();
  return v1;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_3_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_once();
}

uint64_t sub_222E15AD0()
{
  v1 = *(*v0 + 152);
  v2 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v2, v3, v4, v5, v6, v7, v8, v9, v12);
  v10 = swift_dynamicCast();
  if (v10)
  {
    swift_unknownObjectRelease();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_slowAlloc();
}

uint64_t sub_222E15C2C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return sub_222E3FC24();
}

uint64_t sub_222E15C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222E15CF4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_222E3FD44())
  {
    result = sub_222E15E0C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222E40134();
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
          result = sub_222E40174();
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

void *sub_222E15E0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D448, &qword_222E41350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_222E15E7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_222E15CF4(a1, a2);
  sub_222E15EC8(&unk_283635378);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_222E15EC8(uint64_t result)
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

    result = sub_222E2656C(result, v8, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_222E16068(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_222E3FC24();
  v6 = sub_222E16274(v11, 0, 0, 1, a1, a2);
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
    sub_222E16374(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_222E1619C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

void sub_222E16224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_222E16690(sub_222E1671C, v4, a3, MEMORY[0x277D84F78] + 8, a4);
}

unint64_t sub_222E16274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_222E15E7C(a5, a6);
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
    result = sub_222E40174();
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

uint64_t sub_222E16374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222E163D0(void *a1)
{
  v2 = v1;

  v4 = a1;
  v5 = sub_222E3FB04();
  v6 = sub_222E3FF94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_29();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_9_0();
    v21 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_222E16068(*(v2 + 16), *(v2 + 24), &v21);
    *(v7 + 12) = 2114;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_222E12000, v5, v6, "Bridge %{public}s received message: %{public}@", v7, 0x16u);
    sub_222E16CA0(v8, &qword_27D04D460, &qword_222E41680);
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_7();
  }

  v11 = sub_222E14578(v4);
  if ((*(*v11 + 128))())
  {
    v12 = v4;
    v13 = sub_222E3FB04();
    v14 = sub_222E3FFA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_10();
      v16 = OUTLINED_FUNCTION_9_0();
      v21 = v16;
      *v15 = 136446210;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
      v17 = sub_222E3FCF4();
      v19 = sub_222E16068(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_222E12000, v13, v14, "handleMessage got message type %{public}s which is not registered with the bridge", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    (*(*v11 + 104))(v2, v4);
  }
}

uint64_t sub_222E1671C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_222E16744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  swift_beginAccess();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v8 = sub_222E400C4();
  return (*(*(v8 - 8) + 16))(a2, a1 + v5, v8);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_1()
{
}

BOOL OUTLINED_FUNCTION_19_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_222E1690C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_222E3F794();
  v7 = OUTLINED_FUNCTION_58(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    v14 = OUTLINED_FUNCTION_58(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[10];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
      v16 = a3[11];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[9]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_222E40264();
}

void OUTLINED_FUNCTION_33_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222E16AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222E16B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222E16B58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_222E16BE4()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = OUTLINED_FUNCTION_32_0();
  sub_222E16224(sub_222E16180, v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v2 = *(v1 - 88);
  v3 = **(v1 - 96);
  return v0;
}

uint64_t sub_222E16CA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_222E16CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v88 = a2;
  v3 = *v2;
  v4 = sub_222E3F794();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_55();
  v87 = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900) - 8) + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  v93 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D528, &qword_222E41908);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
  v19 = OUTLINED_FUNCTION_0(v18);
  v85 = v20;
  v86 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16();
  v83 = v23;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v24);
  v80 = &v74 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  v26 = OUTLINED_FUNCTION_0(v91);
  v96 = v27;
  v79 = *(v28 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v92 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  OUTLINED_FUNCTION_37_0();
  v95 = *(v33 + 80);
  OUTLINED_FUNCTION_37_0();
  v94 = *(v34 + 88);
  v77 = v2;
  v82 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v90 = sub_222E400C4();
  v35 = OUTLINED_FUNCTION_0(v90);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v74 = &v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v74 - v41;
  v89 = v2[15];
  v81 = &v74 - v41;
  sub_222E16BE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  (*(v12 + 104))(v17, *MEMORY[0x277D85778], v10);
  v75 = v32;
  sub_222E3FE84();
  (*(v12 + 8))(v17, v10);
  v43 = v93;
  sub_222E3FE54();
  v44 = sub_222E3FE74();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  v45 = v37;
  v46 = v90;
  (*(v37 + 16))(&v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v90);
  v47 = v96;
  v76 = *(v96 + 16);
  v48 = v91;
  v76(v92, v32, v91);
  v49 = *(v37 + 80);
  v78 = v37;
  v50 = (v49 + 56) & ~v49;
  v51 = (v39 + *(v47 + 80) + v50) & ~*(v47 + 80);
  v52 = (v79 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  v54 = v94;
  *(v53 + 4) = v95;
  *(v53 + 5) = v54;
  v55 = v84;
  *(v53 + 6) = v84;
  v56 = &v53[v50];
  v57 = v74;
  (*(v45 + 32))(v56, v74, v46);
  v58 = v92;
  (*(v96 + 32))(&v53[v51], v92, v48);
  *&v53[v52] = v77;
  *&v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8] = v89;
  v59 = v55;

  sub_222E25D9C();
  v61 = v60;
  v62 = v87;
  sub_222E3F934();
  v63 = v75;
  v76(v58, v75, v48);
  v65 = v85;
  v64 = v86;
  v66 = v83;
  v67 = v80;
  (*(v85 + 16))(v83, v80, v86);
  v68 = v88;
  sub_222E175FC(v62, v61, v58, v66, v88);
  OUTLINED_FUNCTION_14(v82);
  v70 = v68;
  v72 = v71;
  (*(v69 + 16))(v57, v70);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v72);

  sub_222E17730(v57);

  (*(v65 + 8))(v67, v64);
  (*(v96 + 8))(v63, v91);
  return (*(v78 + 8))(v81, v90);
}

uint64_t sub_222E17378()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v4 = sub_222E400C4();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v9 = *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v13 = *(v11 + 80);
  v30 = *(v14 + 64);
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();

  v16 = v0 + v7;
  if (__swift_getEnumTagSinglePayload(v0 + v7, 1, v3))
  {
    v17 = *(v12 + 8);
  }

  else
  {
    v18 = sub_222E3F794();
    OUTLINED_FUNCTION_4_0(v18);
    (*(v19 + 8))(v0 + v7);
    v20 = *(v16 + v3[9]);

    v17 = *(v12 + 8);
    v17(v16 + v3[10], v10);
    v21 = v3[11];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
    OUTLINED_FUNCTION_4_0(v22);
    (*(v23 + 8))(v16 + v21);
  }

  v24 = (v7 + v9 + v13) & ~v13;
  v25 = (v30 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17(v0 + v24, v10);
  v27 = *(v0 + v25);

  v28 = *(v0 + v26);

  return MEMORY[0x2821FE8E8](v0, v26 + 8, v6 | v13 | 7);
}

uint64_t sub_222E175FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_222E3F794();
  OUTLINED_FUNCTION_4(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  *(a5 + v12[9]) = a2;
  v13 = v12[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_4(v14);
  (*(v15 + 32))(a5 + v13, a3);
  v16 = v12[11];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 32);

  return v19(a5 + v16, a4);
}

uint64_t sub_222E17730(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4 + 4);
  sub_222E17804();
  os_unfair_lock_unlock(v4 + 4);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0(v7);
  return (*(v8 + 8))(a1);
}

uint64_t sub_222E17804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_222E1784C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_222E3F794();
  result = OUTLINED_FUNCTION_58(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    v14 = OUTLINED_FUNCTION_58(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[10];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
      v16 = a4[11];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_222E17988(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  swift_beginAccess();
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v8 = sub_222E400C4();
  (*(*(v8 - 8) + 24))(a1 + v5, a2, v8);
  return swift_endAccess();
}

uint64_t sub_222E17A70()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_5(v4);

  return v6(v5);
}

uint64_t sub_222E17B10()
{
  OUTLINED_FUNCTION_64();
  v2 = v0[4];
  v3 = v0[5];
  v4 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_20_0(v9);
  v12 = (*(v11 + 64) + ((v6 + v8 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[6];
  v16 = *(v0 + v12);
  v17 = *(v0 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v1 + 16) = v18;
  *v18 = v1;
  v18[1] = sub_222E1B99C;
  OUTLINED_FUNCTION_62();

  return sub_222E17E30(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_222E17CCC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222E1F2E0;

  return v7(a1);
}

uint64_t OUTLINED_FUNCTION_65()
{
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, unint64_t a2)
{

  return sub_222E16068(a1, a2, (v2 - 88));
}

uint64_t sub_222E17E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  v9 = *a7;
  v10 = sub_222E3FB14();
  v8[25] = v10;
  v11 = *(v10 - 8);
  v8[26] = v11;
  v12 = *(v11 + 64) + 15;
  v8[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D530, &qword_222E41920);
  v8[28] = v13;
  v14 = *(v13 - 8);
  v8[29] = v14;
  v15 = *(v14 + 64) + 15;
  v8[30] = swift_task_alloc();
  v16 = sub_222E3FAF4();
  v8[31] = v16;
  v17 = *(v16 - 8);
  v8[32] = v17;
  v18 = *(v17 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = *(v9 + 80);
  v8[36] = *(v9 + 88);
  v8[37] = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v19 = sub_222E400C4();
  v8[38] = v19;
  v20 = *(v19 - 8);
  v8[39] = v20;
  v21 = *(v20 + 64) + 15;
  v8[40] = swift_task_alloc();
  v22 = sub_222E3F794();
  v8[41] = v22;
  v23 = *(v22 - 8);
  v8[42] = v23;
  v24 = *(v23 + 64) + 15;
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E180D0);
}

uint64_t sub_222E180D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v72 = v14;
  if (qword_28131FB48 != -1)
  {
    OUTLINED_FUNCTION_19_0();
  }

  v15 = *(v14 + 160);
  v16 = __swift_project_value_buffer(*(v14 + 200), qword_281320008);
  *(v14 + 352) = v16;
  v17 = v15;
  v18 = sub_222E3FB04();
  sub_222E3FF84();

  if (OUTLINED_FUNCTION_43_0())
  {
    OUTLINED_FUNCTION_18();
    v71 = OUTLINED_FUNCTION_25_0();
    *v17 = 136315138;
    sub_222E3F934();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v19, v20);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    v21 = OUTLINED_FUNCTION_9_1();
    v23 = v22(v21);
    OUTLINED_FUNCTION_67(v23, v24, &v71);
    OUTLINED_FUNCTION_27_1();

    *(v17 + 1) = v16;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  v30 = *(v14 + 320);
  v31 = *(v14 + 296);
  (*(*(v14 + 312) + 16))(v30, *(v14 + 168), *(v14 + 304));
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  v33 = *(v14 + 320);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v14 + 312) + 8))(*(v14 + 320), *(v14 + 304));
    v34 = *(v14 + 352);
    v35 = *(v14 + 160);
    v36 = sub_222E3FB04();
    sub_222E3FF94();

    if (OUTLINED_FUNCTION_43_0())
    {
      OUTLINED_FUNCTION_18();
      v71 = OUTLINED_FUNCTION_25_0();
      *v35 = 136315138;
      sub_222E3F934();
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v37, v38);
      OUTLINED_FUNCTION_31_1();
      sub_222E40264();
      v39 = OUTLINED_FUNCTION_9_1();
      v41 = v40(v39);
      OUTLINED_FUNCTION_67(v41, v42, &v71);
      OUTLINED_FUNCTION_27_1();

      *(v35 + 1) = v34;
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_9();
    }

    v48 = *(v14 + 240);
    v49 = *(v14 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    sub_222E3FEC4();
    v50 = *(MEMORY[0x277D85798] + 4);
    v51 = swift_task_alloc();
    v52 = OUTLINED_FUNCTION_24_0(v51);
    *v52 = v53;
    v54 = OUTLINED_FUNCTION_1_1(v52);

    return MEMORY[0x2822003E8](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v62 = *(v14 + 296);
    *(v14 + 360) = *(v33 + *(v62 + 36));
    OUTLINED_FUNCTION_14(v62);
    v64 = *(v63 + 8);

    v64(v33, v62);
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v65 = *(v14 + 272);
    v66 = qword_281320000;
    *(v14 + 368) = qword_281320000;
    v67 = v66;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    sub_222E3FAB4();
    v68 = *(MEMORY[0x277D85A10] + 4);
    v69 = swift_task_alloc();
    *(v14 + 376) = v69;
    *v69 = v14;
    v69[1] = sub_222E222C4;

    return MEMORY[0x282200830]();
  }
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_7_0()
{

  JUMPOUT(0x223DD12D0);
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_222E400F4();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();

  return sub_222E400C4();
}

double OUTLINED_FUNCTION_32_2(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v1;
  *(a1 + 88) = v3;
  return result;
}

void OUTLINED_FUNCTION_10_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 160) = a8;
  *(v8 - 152) = a3;
  *(v8 - 144) = a6;
  *(v8 - 136) = a7;
}

unint64_t sub_222E18808(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_222E40334();
  sub_222E3FD24();
  v6 = sub_222E40354();

  return sub_222E19374(a1, a2, v6);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  return sub_222E403A4();
}

uint64_t sub_222E188E4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 24))(*(v0 + 40));
  *(v0 + 96) = v3;
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_222E1B5A4;
  v6 = *(v0 + 88);
  v7 = *(v0 + 16);

  return v9(v7, v6);
}

id sub_222E189EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D730, qword_222E41B10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_222E3F794();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_222E3F734();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_222E2CF20(v3);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v14, v3, v4);
    sub_222E1BB7C();
    (*(v7 + 16))(v12, v14, v4);
    v15 = sub_222E1BBC0(v12);
    (*(v7 + 8))(v14, v4);
  }

  return v15;
}

void *sub_222E18BB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_222E189EC();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59618]) init];
    v8 = v7;
    if (v7)
    {
      [v7 setRequestId_];
      v9 = v8;
      if (a4)
      {
        a4 = sub_222E3FCA4();
      }

      [v8 setResultCandidateId_];
    }
  }

  else
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v10 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v10, qword_28131FFA0);
    v6 = sub_222E3FB04();
    v11 = sub_222E3FFA4();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222E12000, v6, v11, "The requestId is not a valid UUID. Will return a nil EventMetadata. We might still emit ORCHClientEvent for some events that are not in request grain", v12, 2u);
      OUTLINED_FUNCTION_7();
    }

    v8 = 0;
  }

  return v8;
}

id sub_222E18CFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = sub_222E18BB0(a1, a2, a3, a4);
  v8 = [objc_allocWithZone(MEMORY[0x277D59610]) init];
  [v8 setEventMetadata_];
  if ((a5 & 1) != 0 && v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D597D8]);
    v10 = v8;
    v11 = [v9 init];
    if (v11)
    {
      v12 = objc_allocWithZone(MEMORY[0x277D596F0]);
      ru_maxrss = v11;
      v13 = [v12 init];
      [ru_maxrss setMemoryUsageMetadata_];
    }

    bzero(&v27, 0x90uLL);
    if (getrusage(0, &v27))
    {
      if (qword_28131F210 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v14 = sub_222E3FB14();
      OUTLINED_FUNCTION_4_2(v14, qword_28131FFA0);
      v15 = sub_222E3FB04();
      v16 = sub_222E3FFA4();
      if (!OUTLINED_FUNCTION_3_2(v16))
      {
        goto LABEL_11;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Not logging maxRSS since getrusage() did not succeed";
      goto LABEL_10;
    }

    ru_maxrss = v27.ru_maxrss;
    if (v27.ru_maxrss < 0)
    {
      if (qword_28131F210 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v25 = sub_222E3FB14();
      OUTLINED_FUNCTION_4_2(v25, qword_28131FFA0);
      v15 = sub_222E3FB04();
      v26 = sub_222E3FFA4();
      if (!OUTLINED_FUNCTION_3_2(v26))
      {
        goto LABEL_11;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Not logging maxRSS since it is negative";
LABEL_10:
      _os_log_impl(&dword_222E12000, v15, ru_maxrss, v18, v17, 2u);
      OUTLINED_FUNCTION_1_3();
LABEL_11:

LABEL_12:
      [v10 setResourceUtilizationMetadata_];

      goto LABEL_13;
    }

    if (!v11)
    {
      goto LABEL_12;
    }

    v21 = [v11 memoryUsageMetadata];
    if (!v21)
    {
      goto LABEL_12;
    }

    v15 = v21;
    v22 = ceil(log10(ru_maxrss));
    if (v22 <= 2.0)
    {
LABEL_22:
      [v15 setMaxRSS:ru_maxrss];
      goto LABEL_11;
    }

    v23 = __exp10(v22 + -2.0);
    v24 = v23 * rint(ru_maxrss / v23);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -1.0)
    {
      if (v24 < 1.84467441e19)
      {
        ru_maxrss = v24;
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_222E190B4()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[23];

  OUTLINED_FUNCTION_22();

  return v4();
}

uint64_t sub_222E19128()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_222E19224(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_222E1923C(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{

  oslog = sub_222E3FB04();
  v5 = a3();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = a1();
    v9 = static InsightRequestSummaryLogger.constructLogJsonString(_:)(v8);
    v11 = v10;

    v12 = sub_222E16068(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_222E12000, oslog, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }
}

unint64_t sub_222E19374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222E40294() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_222E19428(void *a1)
{
  v2 = sub_222E40394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = a1[3];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  v34[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
  sub_222E40374();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
  v33 = (v3 + 16);
  v20 = (v3 + 8);
  while (1)
  {
    sub_222E19D10(v16, v14);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v2);
    sub_222E16CA0(v14, &unk_27D04D630, &unk_222E420B0);
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    if (!__swift_getEnumTagSinglePayload(v16, 1, v2))
    {
      (*v33)(v6, v16, v2);
      v22 = sub_222E40384();
      (*v20)(v6, v2);
      v34[0] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D518, &qword_222E418E0);
      v23 = sub_222E3FCF4();
      v25 = *(v32 + 120);
      if (*(v25 + 16))
      {
        v26 = sub_222E18808(v23, v24);
        v28 = v27;

        if (v28)
        {
          v30 = *(v25 + 56);
          *(swift_allocObject() + 16) = *(v30 + 16 * v26);

          v31 = &unk_222E418F0;
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    if (__swift_getEnumTagSinglePayload(v16, 1, v2))
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v2);
    }

    else
    {
      (*v33)(v6, v16, v2);
      sub_222E40364();
      (*v20)(v6, v2);
    }

    sub_222E23FE4(v11, v16);
  }

  v31 = 0;
LABEL_13:
  sub_222E16CA0(v16, &unk_27D04D630, &unk_222E420B0);
  return v31;
}

uint64_t sub_222E197DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_13(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_222E16068(v3, v2, va);
}

void OUTLINED_FUNCTION_13_3(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  *v3 = 0xD000000000000013;
  v3[1] = (v1 - 32) | 0x8000000000000000;
}

unint64_t OUTLINED_FUNCTION_13_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0;
  v3[1] = 0xE000000000000000;

  return sub_222E1DC7C();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  return sub_222E403A4();
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v2 = *(v0 - 168);

  return sub_222E40034();
}

uint64_t sub_222E199B0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_222E19A98()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 184);
    sub_222E19C30((v0 + 16), v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    DynamicType = swift_getDynamicType();
    v3 = *(v0 + 88);
    *(v0 + 136) = DynamicType;
    *(v0 + 144) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D538, &qword_222E41928);
    *(v0 + 392) = sub_222E3FCF4();
    *(v0 + 400) = v4;
    *(v0 + 408) = *(v1 + 112);

    return MEMORY[0x2822009F8](sub_222E19C48);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    OUTLINED_FUNCTION_46();

    OUTLINED_FUNCTION_22();

    return v5();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_222E19C30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222E19C48()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[51];
  v0[52] = sub_222E19428(v0 + 7);
  v0[53] = v2;
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8]();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_222E19D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222E19D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57();
  v57 = v14;
  v15 = v14[52];
  v16 = v14[44];
  if (v15)
  {
    v17 = v14[53];
    (*(v14[26] + 16))(v14[27], v14[44], v14[25]);
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v18 = v14[33];
    v19 = qword_281320000;
    v14[54] = qword_281320000;
    v20 = v19;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    sub_222E3FAB4();
    v21 = swift_task_alloc();
    v14[55] = v21;
    *v21 = v14;
    v21[1] = sub_222E19128;
    v22 = v14[49];
    v23 = v14[50];
    v24 = v14[35];
    v25 = v14[27];
    v59 = v14[36];

    return sub_222E1A044(v21, v25, (v14 + 7), v15, v17, v22, v23, v24);
  }

  else
  {
    v27 = v14[50];
    sub_222E3FC24();
    v28 = sub_222E3FB04();
    sub_222E3FF84();

    v29 = OUTLINED_FUNCTION_43_0();
    v30 = v14[50];
    if (v29)
    {
      v31 = v14[49];
      v33 = v14[35];
      v32 = v14[36];
      OUTLINED_FUNCTION_29();
      v56 = OUTLINED_FUNCTION_49();
      *v27 = 136446466;
      sub_222E16068(v31, v30, &v56);
      OUTLINED_FUNCTION_41_0();

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v34 = *(v32 + 32);
      v35 = OUTLINED_FUNCTION_59();
      v37 = v36(v35);
      sub_222E16068(v37, v38, &v56);
      OUTLINED_FUNCTION_41_0();

      *(v27 + 14) = v31;
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v14 + 7);
    v44 = *(MEMORY[0x277D85798] + 4);
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_24_0(v45);
    *v46 = v47;
    v48 = OUTLINED_FUNCTION_1_1();

    return MEMORY[0x2822003E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_222E1A044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v19;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v9 = sub_222E3F7C4();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  v12 = sub_222E3FE44();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v15 = sub_222E3FB14();
  v8[27] = v15;
  v16 = *(v15 - 8);
  v8[28] = v16;
  v8[29] = *(v16 + 64);
  v8[30] = swift_task_alloc();

  return (MEMORY[0x2822009F8])(sub_222E1A2F8, 0, 0);
}

uint64_t sub_222E1A1D8(uint64_t a1)
{
  v4 = sub_222E3FB14();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_222E2BA2C;

  return sub_222E1A724(a1, v1 + v6, v1 + v8, v10, v11);
}

uint64_t sub_222E1A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  v14 = *(v12 + 232);
  v13 = *(v12 + 240);
  v15 = *(v12 + 216);
  v16 = *(v12 + 224);
  v18 = *(v12 + 120);
  v17 = *(v12 + 128);
  v19 = *(v12 + 112);
  (*(v16 + 16))(v13, *(v12 + 104), v15);
  sub_222E15C70(v19, v12 + 16);
  v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v12 + 248) = v22;
  (*(v16 + 32))(v22 + v20, v13, v15);
  sub_222E19C30((v12 + 16), v22 + v21);
  v23 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v18;
  v23[1] = v17;
  v24 = *(MEMORY[0x277D61CC0] + 4);

  v25 = swift_task_alloc();
  *(v12 + 256) = v25;
  *v25 = v12;
  v25[1] = sub_222E1AC88;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2821C8618](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_222E1A46C()
{
  v1 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_222E1A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  v26 = v22[7];
  sub_222E15C70(v22[8], (v22 + 2));
  v27 = sub_222E3FB04();
  v28 = sub_222E3FF94();
  if (os_log_type_enabled(v27, v28))
  {
    v30 = v22[12];
    v29 = v22[13];
    v55 = v22[11];
    OUTLINED_FUNCTION_10();
    a11 = OUTLINED_FUNCTION_25_0();
    *v23 = 136315138;
    v31 = v22[6];
    __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
    OUTLINED_FUNCTION_27_1();
    sub_222E3F9A4();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v32, v33);
    OUTLINED_FUNCTION_31_1();
    v34 = sub_222E40264();
    (*(v30 + 8))(v29, v55);
    v35 = __swift_destroy_boxed_opaque_existential_0(v22 + 2);
    OUTLINED_FUNCTION_67(v35, v36, &a11);
    OUTLINED_FUNCTION_27_1();

    *(v23 + 4) = v34;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v22 + 2);
  }

  v56 = v22[9] + *v22[9];
  v42 = *(v22[9] + 4);
  v43 = swift_task_alloc();
  v22[14] = v43;
  *v43 = v22;
  v43[1] = sub_222E1BA7C;
  v44 = v22[10];
  v45 = v22[8];
  OUTLINED_FUNCTION_36_0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v56, a11, a12, a13, a14);
}

uint64_t sub_222E1A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v6 = sub_222E3F794();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E1A510);
}

uint64_t sub_222E1A7E8()
{
  v1 = v0[19];
  v2 = v0[10];
  sub_222E15C70(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  if (swift_dynamicCast())
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    v6 = v0[10];
    v7 = v0[8];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v4 + 32))(v3, v5, v6);
    v28 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_222E1B7EC;
    v10 = v0[21];
    v11 = v0[16];
    v12 = v0[9];

    return v28(v10, v11);
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    v17 = v0[12];
    v18 = v0[10];
    v19 = v0[7];
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    (*(v15 + 8))(v14, v16);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    DynamicType = swift_getDynamicType();
    v21 = v19[4];
    sub_222E3DB48();
    swift_allocError();
    *v22 = v18;
    v22[1] = v17;
    v22[2] = DynamicType;
    v22[3] = v21;
    swift_willThrow();
    v23 = v0[21];
    v24 = v0[19];
    v26 = v0[15];
    v25 = v0[16];

    OUTLINED_FUNCTION_22();

    return v27();
  }
}

uint64_t sub_222E1AA70(uint64_t a1)
{
  v15 = v1[2];
  v13 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_222E1B704;

  return sub_222E1AB6C(a1, v8, v9, v10, v15, v13, v4, v5);
}

uint64_t sub_222E1AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v15;
  v8[8] = v16;
  v8[5] = a4;
  v8[6] = a7;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = *(a7 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v12 = *(a8 + 8);
  sub_222E3FE34();

  return MEMORY[0x2822009F8](sub_222E188E4);
}

uint64_t sub_222E1AC88()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *(v2 + 256);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
    v7 = *(v3 + 248);
  }

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_222E1ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  v25 = *(v22 + 432);
  v26 = *(v22 + 400);
  v28 = *(v22 + 256);
  v27 = *(v22 + 264);
  v29 = *(v22 + 248);
  sub_222E40044();
  sub_222E3FAC4();

  (*(v28 + 8))(v27, v29);
  sub_222E15C70(v22 + 56, v22 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  sub_222E3F824();
  if (swift_dynamicCast())
  {
    v30 = *(v22 + 216);
    v31 = *(v22 + 152);
    v32 = sub_222E3FB04();
    v33 = sub_222E3FF94();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v22 + 336);
      v35 = *(v22 + 344);
      v36 = *(v22 + 328);
      v37 = OUTLINED_FUNCTION_10();
      a10 = swift_slowAlloc();
      a11 = a10;
      *v37 = 136315138;
      sub_222E3F934();
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v38, v39);
      v40 = sub_222E40264();
      v41 = v31;
      v43 = v42;
      (*(v34 + 8))(v35, v36);
      v44 = sub_222E16068(v40, v43, &a11);
      v31 = v41;

      *(v37 + 4) = v44;
      _os_log_impl(&dword_222E12000, v32, v33, "Ending session %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7_0();
    }

    v45 = *(v22 + 216);
    v46 = *(v22 + 192);
    v47 = swift_task_alloc();
    *(v47 + 16) = *(v22 + 280);
    *(v47 + 32) = v31;
    sub_222E1ED9C();

    v48 = sub_222E3FB04();
    v49 = sub_222E3FF94();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_222E12000, v48, v49, "Ending the message event loop", v50, 2u);
      OUTLINED_FUNCTION_9();
      v51 = v31;
    }

    else
    {
      v51 = v48;
      v48 = v31;
    }

    v68 = *(v22 + 424);
    v70 = *(v22 + 232);
    v69 = *(v22 + 240);
    v72 = *(v22 + 216);
    v71 = *(v22 + 224);
    v73 = *(v22 + 200);
    v74 = *(v22 + 208);
    sub_222E19224(*(v22 + 416));

    (*(v70 + 8))(v69, v71);
    (*(v74 + 8))(v72, v73);
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
    OUTLINED_FUNCTION_46();

    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_36_0();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v52 = *(v22 + 424);
    v54 = *(v22 + 208);
    v53 = *(v22 + 216);
    v55 = *(v22 + 200);
    sub_222E19224(*(v22 + 416));
    (*(v54 + 8))(v53, v55);
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
    v56 = *(MEMORY[0x277D85798] + 4);
    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_24_0(v57);
    *v58 = v59;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822003E8](v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_222E1B1A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222E1B99C;

  return sub_222E1B254(a1, v5);
}

uint64_t sub_222E1B254(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222E1B99C;

  return v6();
}

uint64_t sub_222E1B348(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_222E1B998;

  return sub_222E1B424(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_222E1B424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v10 = *(a6 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v12 = sub_222E400C4();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v15 = *(a5 - 8);
  v8[20] = v15;
  v16 = *(v15 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E1A7E8);
}

uint64_t sub_222E1B5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222E3D458);
  }

  else
  {
    v8 = *(v2 + 80);
    v7 = *(v2 + 88);

    OUTLINED_FUNCTION_22();

    return v9();
  }
}

uint64_t sub_222E1B704()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_22();

  return v4();
}

uint64_t sub_222E1B7EC()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  if (v0)
  {
    v5 = sub_222E3D224;
  }

  else
  {
    v5 = sub_222E1B8F4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_222E1B8F4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  (*(v0[20] + 8))(v0[21], v0[10]);

  OUTLINED_FUNCTION_22();

  return v4();
}

uint64_t sub_222E1B99C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_22();

  return v5();
}

uint64_t sub_222E1BA7C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_22();

  return v6();
}

unint64_t sub_222E1BB7C()
{
  result = qword_28131F1C0;
  if (!qword_28131F1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F1C0);
  }

  return result;
}

id sub_222E1BBC0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_222E3F754();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_222E3F794();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_222E1BC88()
{
  v1 = qword_281320058;
  OUTLINED_FUNCTION_27_0();
  v2 = *(v0 + v1);
  return sub_222E3FC24();
}

void *OUTLINED_FUNCTION_31_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 328);
  v6 = *(v3 - 216);
  v5 = *(v3 - 208);
  result[2] = v4;
  result[3] = v6;
  result[4] = v2;
  result[5] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_46()
{
  v2 = v0[43];
  v3 = v0[40];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v7 = v0[27];
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_beginAccess();
}

uint64_t sub_222E1BD80(uint64_t a1)
{
  v3 = qword_281320058;
  OUTLINED_FUNCTION_40();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t type metadata accessor for InsightRequestSummaryLogger()
{
  result = qword_28131FF30;
  if (!qword_28131FF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t static InsightRequestSummaryLogger.constructLogJsonString(_:)(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = sub_222E3FCE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222E3FC04();
  v6 = *(a1 + 16);
  v46 = a1;
  if (v6)
  {
    v7 = (a1 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *v7;
      v48 = *(v7 - 1);
      sub_222E3FC24();
      sub_222E3FC24();
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v5;
      v11 = sub_222E18808(v9, v8);
      if (__OFADD__(v5[2], (v12 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D558, &unk_222E41990);
      if (sub_222E40224())
      {
        v15 = sub_222E18808(v9, v8);
        if ((v14 & 1) != (v16 & 1))
        {
          result = sub_222E402C4();
          __break(1u);
          return result;
        }

        v13 = v15;
      }

      if (v14)
      {

        v5 = v49;
        v17 = (v49[7] + 16 * v13);
        v18 = v17[1];
        *v17 = v48;
        v17[1] = v10;
      }

      else
      {
        v5 = v49;
        v49[(v13 >> 6) + 8] |= 1 << v13;
        v19 = (v5[6] + 16 * v13);
        *v19 = v9;
        v19[1] = v8;
        v20 = (v5[7] + 16 * v13);
        *v20 = v48;
        v20[1] = v10;
        v21 = v5[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_19;
        }

        v5[2] = v23;
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v24 = objc_opt_self();
  v25 = sub_222E3FBD4();
  v49 = 0;
  v26 = [v24 dataWithJSONObject:v25 options:0 error:&v49];

  v27 = v49;
  if (v26)
  {

    v28 = sub_222E3F724();
    v30 = v29;

    sub_222E3FCD4();
    v31 = sub_222E3FCC4();
    if (v32)
    {
      v33 = v31;
      sub_222E1C420(v28, v30);
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_222E40144();
      MEMORY[0x223DD0550](0xD00000000000003BLL, 0x8000000222E42E70);
      v42 = MEMORY[0x223DD0980](v46, &type metadata for InsightRequestSummaryKey, MEMORY[0x277D837D0]);
      MEMORY[0x223DD0550](v42);

      MEMORY[0x223DD0550](32034, 0xE200000000000000);
      sub_222E1C420(v28, v30);
      v33 = v49;
    }
  }

  else
  {
    v34 = v27;
    v35 = sub_222E3F714();

    swift_willThrow();
    v52 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F0, &unk_222E415A0);
    sub_222E2C6B8(0, &qword_27D04D560, 0x277CCA9B8);
    swift_dynamicCast();

    v36 = v51;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_222E40144();
    MEMORY[0x223DD0550](0xD000000000000024, 0x8000000222E42E40);
    v37 = [v36 description];
    v38 = sub_222E3FCB4();
    v40 = v39;

    MEMORY[0x223DD0550](v38, v40);

    MEMORY[0x223DD0550](0x72617020726F6620, 0xEC00000020736D61);
    v41 = MEMORY[0x223DD0980](v46, &type metadata for InsightRequestSummaryKey, MEMORY[0x277D837D0]);
    MEMORY[0x223DD0550](v41);

    MEMORY[0x223DD0550](32034, 0xE200000000000000);

    v33 = v49;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_222E1C420(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_getWitnessTable();
}

BOOL OUTLINED_FUNCTION_5_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_222E1C51C(void *a1)
{
  v2 = sub_222E14578(a1);
  v3 = a1;
  v4 = sub_222E3FB04();
  v5 = sub_222E3FF94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_29();
    v7 = swift_slowAlloc();
    v62 = OUTLINED_FUNCTION_9_0();
    *v6 = 138543618;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2082;
    v8 = 0xE700000000000000;
    v9 = 0x636972656E6567;
    switch(*(v2 + 16))
    {
      case 1:
        v9 = 0xD000000000000014;
        v8 = 0x8000000222E429C0;
        break;
      case 2:
        OUTLINED_FUNCTION_12_0();
        v9 = v11 | 1;
        break;
      case 3:
        OUTLINED_FUNCTION_12_0();
        v9 = v12 | 3;
        break;
      case 4:
        OUTLINED_FUNCTION_12_0();
        v9 = v10 + 4;
        break;
      case 5:
        v8 = 0xEF72656873696E69;
        v9 = 0x4674736575716572;
        break;
      default:
        break;
    }

    v13 = v3;
    v14 = sub_222E16068(v9, v8, &v62);

    *(v6 + 14) = v14;
    OUTLINED_FUNCTION_25();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_222E1D890(v7, &qword_27D04D460, &qword_222E41680);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
  }

  switch(*(v2 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_5_0();
      sub_222E1CDD0();
      goto LABEL_34;
    case 2:
      OUTLINED_FUNCTION_5_0();
      sub_222E22990();
      goto LABEL_34;
    case 3:
      OUTLINED_FUNCTION_5_0();
      sub_222E28C2C();
      goto LABEL_34;
    case 4:
      v41 = OUTLINED_FUNCTION_5_0();
      v42 = sub_222E230AC(v41);
      goto LABEL_34;
    case 5:
      v43 = OUTLINED_FUNCTION_5_0();
      v42 = sub_222E22F6C(v43);
LABEL_34:
      v44 = v42;
      goto LABEL_35;
    default:
      v20 = sub_222E1F59C();
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = v20;
      v23 = *(v20 + 64);
      v22 = *(v20 + 72);
      sub_222E3FC24();
      if (v23 == sub_222E3F914() && v22 == v24)
      {

LABEL_38:
        sub_222E21160();
        v44 = v46;

LABEL_35:

        return v44 & 1;
      }

      v26 = sub_222E40294();

      if (v26 & 1) != 0 || ((*(*v21 + 224))(v3))
      {
        goto LABEL_38;
      }

LABEL_18:
      sub_222E3F914();
      v27 = sub_222E1BC88();
      v28 = OUTLINED_FUNCTION_34();
      v30 = sub_222E1F444(v28, v29, v27);

      if (v30)
      {
        goto LABEL_38;
      }

      v31 = sub_222E1BC88();
      v32 = v31 + 64;
      v33 = 1 << *(v31 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v31 + 64);
      v36 = (v33 + 63) >> 6;
      v60 = v31;
      sub_222E3FC24();
      v37 = 0;
      if (v35)
      {
        while (1)
        {
          v38 = v37;
LABEL_26:
          v39 = __clz(__rbit64(v35)) | (v38 << 6);
          v40 = *(*(v60 + 48) + 16 * v39 + 8);
          v61 = *(**(*(v60 + 56) + 8 * v39) + 224);
          sub_222E3FC24();

          if (v61(v3))
          {
            break;
          }

          v35 &= v35 - 1;

          v37 = v38;
          if (!v35)
          {
            goto LABEL_23;
          }
        }

        sub_222E21160();
        v44 = v59;

        return v44 & 1;
      }

      while (1)
      {
LABEL_23:
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          JUMPOUT(0x222E1CADCLL);
        }

        if (v38 >= v36)
        {
          break;
        }

        v35 = *(v32 + 8 * v38);
        ++v37;
        if (v35)
        {
          goto LABEL_26;
        }
      }

      v47 = v3;
      v48 = sub_222E3FB04();
      v49 = sub_222E3FF94();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_29();
        v62 = OUTLINED_FUNCTION_45();
        *v50 = 136446466;
        swift_getObjectType();
        v51 = sub_222E403A4();
        v53 = sub_222E16068(v51, v52, &v62);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2082;
        v54 = sub_222E3F914();
        v56 = sub_222E16068(v54, v55, &v62);

        *(v50 + 14) = v56;
        OUTLINED_FUNCTION_39(&dword_222E12000, v57, v58, "Not handling message: %{public}s with requestId: %{public}s since no handlers were found");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_6();
      }

      return 0;
  }
}

uint64_t sub_222E1CB0C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = a2;
  if (a5)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  LODWORD(v10) = *(v5 + 16);
  if (v10 == 2)
  {
    v10 = objc_opt_self();
    sub_222E3FC24();
    v11 = sub_222E3FCA4();
    LOBYTE(v10) = [v10 isNLServerFallbackDisabledForLocale_];
  }

  else
  {
    sub_222E3FC24();
  }

  LODWORD(v12) = *(v5 + 17);
  if (v12 == 2)
  {
    v12 = objc_opt_self();
    v13 = sub_222E3FCA4();
    LOBYTE(v12) = [v12 isDomainServerFallbackDisabledForLocale_];
  }

  if (a1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = &selRef_shouldDisableServerFallbackDomain;
  if ((a1 & 1) == 0)
  {
    v15 = &selRef_shouldDisableServerFallbackNL;
  }

  v16 = [*(v5 + 24) *v15];
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v17 = sub_222E3FB14();
  __swift_project_value_buffer(v17, qword_28131FFA0);
  sub_222E3FC24();
  sub_222E3FC24();
  v18 = sub_222E3FB04();
  v19 = sub_222E3FFC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 67110146;
    *(v20 + 4) = v14 & v16 & 1;
    *(v20 + 8) = 1024;
    *(v20 + 10) = v14 & 1;
    *(v20 + 14) = 1024;
    *(v20 + 16) = v16 & 1;
    *(v20 + 20) = 2080;
    *(v20 + 22) = sub_222E16068(v25, a3, &v26);
    *(v20 + 30) = 2082;
    v22 = sub_222E16068(v8, v9, &v26);

    *(v20 + 32) = v22;
    _os_log_impl(&dword_222E12000, v18, v19, "[ServerFallbackUtils] shouldDisableServerFallback returns %{BOOL}d with disabledByFeatureFlag = %{BOOL}d and disabledByABExperiment = %{BOOL}d for requestId: %s and locale %{public}s", v20, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v21, -1, -1);
    MEMORY[0x223DD12D0](v20, -1, -1);
  }

  else
  {
  }

  return v14 & v16 & 1;
}

void sub_222E1CDD0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v121 = v3;
  v5 = v4;
  v112 = sub_222E3FBA4();
  v6 = OUTLINED_FUNCTION_0(v112);
  v111 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v109 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v106 - v12;
  v13 = sub_222E3FB34();
  v14 = OUTLINED_FUNCTION_0(v13);
  v108 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v120 = sub_222E3F794();
  v21 = OUTLINED_FUNCTION_0(v120);
  v115 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v114 = v26 - v25;
  v27 = sub_222E3FB54();
  v28 = OUTLINED_FUNCTION_0(v27);
  v118 = v29;
  v119 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = sub_222E3FB84();
  v36 = OUTLINED_FUNCTION_0(v35);
  v116 = v37;
  v117 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v40 = qword_28131FFC0;
  v41 = v5;
  v123 = v40;
  v42 = sub_222E3FB04();
  v43 = sub_222E3FF94();

  v44 = OUTLINED_FUNCTION_44();
  v113 = v13;
  v107 = v20;
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_10();
    *&v124 = OUTLINED_FUNCTION_9_0();
    *v45 = 136446210;
    swift_getObjectType();
    v46 = sub_222E403A4();
    v48 = v41;
    v49 = sub_222E16068(v46, v47, &v124);

    *(v45 + 4) = v49;
    v41 = v48;
    _os_log_impl(&dword_222E12000, v42, v43, "Starting active request with message: %{public}s", v45, 0xCu);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7_0();
  }

  v50 = sub_222E3F914();
  v52 = v51;
  sub_222E1BC88();
  v53 = OUTLINED_FUNCTION_30();
  v54 = sub_222E1F444(v53, v52, v2);

  v122 = v50;
  if (v54)
  {
    v120 = v41;
    sub_222E3FC24();
    v115 = v2;
    v55 = OUTLINED_FUNCTION_43();
    v56 = sub_222E3FF94();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_10();
      *&v124 = OUTLINED_FUNCTION_9_0();
      *v57 = 136446210;
      *(v57 + 4) = sub_222E16068(v50, v52, &v124);
      _os_log_impl(&dword_222E12000, v55, v56, "Found an existing candidate RequestProcessor for requestId: %{public}s", v57, 0xCu);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v58 = *(v54 + 80);
    v59 = *(v54 + 88);
    v126 = sub_222E29A48;
    v127 = v54;
    *&v124 = MEMORY[0x277D85DD0];
    *(&v124 + 1) = 1107296256;
    OUTLINED_FUNCTION_0_2();
    *&v125 = v60;
    *(&v125 + 1) = &block_descriptor_41;
    v61 = _Block_copy(&v124);

    sub_222E3FB64();
    v128 = MEMORY[0x277D84F90];
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    v62 = v119;
    sub_222E400F4();
    v63 = OUTLINED_FUNCTION_35();
    MEMORY[0x223DD0840](v63);
    _Block_release(v61);
    (*(v118 + 8))(v34, v62);
    (*(v116 + 8))(v1, v117);

    v2 = v115;
    OUTLINED_FUNCTION_24();
    sub_222E2996C(v122, v52);
    swift_endAccess();

    v41 = v120;
  }

  else
  {
    v128 = v41;
    sub_222E3F924();
    v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4E0, &qword_222E41590);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
      OUTLINED_FUNCTION_30();
      v119 = sub_222E3F9D4();
      v77 = v76;
      __swift_destroy_boxed_opaque_existential_0(&v124);
    }

    else
    {
      v126 = 0;
      v124 = 0u;
      v125 = 0u;
      sub_222E1D890(&v124, &qword_27D04D4E8, &qword_222E41598);
      v119 = sub_222E3F914();
      v77 = v78;
    }

    v79 = sub_222E3F954();
    v81 = v80;
    v82 = v114;
    sub_222E3F934();
    (*(*v2 + 472))(v122, v52, v79, v81, v82, 0, v119, v77);
    v83 = OUTLINED_FUNCTION_37();
    v84(v83);
  }

  v64 = sub_222E1F59C();
  if (v64)
  {
    v65 = v64;
    v66 = *(v2 + qword_28131FED0);

    if ((v66 & 1) == 0)
    {
      goto LABEL_22;
    }

    v120 = v41;

    v67 = OUTLINED_FUNCTION_43();
    v68 = sub_222E3FF94();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_10();
      v70 = OUTLINED_FUNCTION_9_0();
      *&v124 = v70;
      *v69 = 136315138;
      v71 = v107;
      sub_222E27690(v107);
      v72 = sub_222E3FCF4();
      v74 = sub_222E16068(v72, v73, &v124);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_222E12000, v67, v68, "Will wait up to %s for the current active request to finish", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7_0();

      v75 = v113;
    }

    else
    {

      v75 = v113;
      v71 = v107;
    }

    v85 = v65[11];
    v86 = v109;
    sub_222E3FB94();
    sub_222E27690(v71);
    v87 = v110;
    MEMORY[0x223DD03D0](v86, v71);
    (*(v108 + 8))(v71, v75);
    v88 = *(v111 + 8);
    v89 = v86;
    v90 = v112;
    v88(v89, v112);
    sub_222E3FFE4();
    v88(v87, v90);
    if (sub_222E3FB44())
    {

      v91 = OUTLINED_FUNCTION_43();
      sub_222E3FFA4();

      if (OUTLINED_FUNCTION_44())
      {
        v92 = OUTLINED_FUNCTION_10();
        v93 = OUTLINED_FUNCTION_9_0();
        *&v124 = v93;
        *v92 = 136315138;
        v94 = v65[8];
        v95 = v65[9];
        sub_222E3FC24();
        v96 = OUTLINED_FUNCTION_22_0();
        v99 = sub_222E16068(v96, v97, v98);

        *(v92 + 4) = v99;
        OUTLINED_FUNCTION_25();
        _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_9();
      }
    }

    else
    {
LABEL_22:
    }
  }

  else
  {
  }

  sub_222E21118(v105);
  sub_222E21160();

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E1D890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_222E1D92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_4(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  v17 = v16;
  v40 = v18;
  v44 = sub_222E40004();
  v19 = OUTLINED_FUNCTION_4(v44);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_42_0();
  v43 = sub_222E40014();
  v22 = OUTLINED_FUNCTION_0(v43);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  v30 = sub_222E3FB84();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_3();
  v11[11] = dispatch_group_create();
  v32 = (v11 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  *v32 = 0;
  v32[1] = 0;
  v11[12] = v17;
  v11[13] = v15;
  v33 = sub_222E3F794();
  OUTLINED_FUNCTION_8_4(v33);
  v35 = v34;
  v36 = OUTLINED_FUNCTION_11_3(v34);
  v37(v36);
  v11[8] = v40;
  v11[9] = v13;
  sub_222E15C70(v12, (v11 + 3));
  v11[2] = a9;
  v38 = (v11 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  *v38 = a10;
  v38[1] = a11;
  sub_222E1DC7C();
  sub_222E3FC24();
  swift_unknownObjectRetain();
  sub_222E40144();

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x223DD0550]();

  MEMORY[0x223DD0550](46, 0xE100000000000000);
  MEMORY[0x223DD0550](v40, v13);

  sub_222E3FB74();
  (*(v24 + 104))(v29, *MEMORY[0x277D85268], v43);
  sub_222E200C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D800, &qword_222E426C0);
  sub_222E20140();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_6_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v41);
  (*(v35 + 8))(v42, v17);
  return OUTLINED_FUNCTION_9_4();
}

unint64_t sub_222E1DC7C()
{
  result = qword_28131F1A0;
  if (!qword_28131F1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F1A0);
  }

  return result;
}

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222E3FB14();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900) - 8) + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  sub_222E1DE5C(a3, &v21 - v14);
  if (qword_28131F208 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_28131FF88);
  (*(v7 + 16))(v11, v15, v4);
  v16 = type metadata accessor for AsyncSequentialExecutor();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:logger:)();
  sub_222E1D92C(a3);
  return v19;
}

uint64_t sub_222E1DE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_222E1DEF8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = [a1 groupIdentifier];
  if (v11)
  {
    v12 = v11;
    v78 = a2;
    v13 = sub_222E3FCB4();
    v15 = v14;

    sub_222E1E620();
    v79 = v13;
    v80 = v15;
    v16 = *(v10 + 80);
    type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase();
    sub_222E3FC54();
    sub_222E3FC64();

    if (v81)
    {
      v17 = [a1 encodedClassName];
      if (v17)
      {
        v18 = v17;
        v19 = sub_222E3FCB4();
        v21 = v20;

        v79 = v19;
        v80 = v21;
        sub_222E3FC64();

        v22 = v81;
        v23 = a1;
        v24 = sub_222E3FB04();
        v25 = sub_222E3FF94();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_10();
          v73 = OUTLINED_FUNCTION_9_0();
          v79 = v73;
          *v26 = 136446210;
          v76 = v23;
          v27 = [v23 debugDescription];
          v28 = a4;
          v29 = sub_222E3FCB4();
          v30 = a3;
          v32 = v31;

          v33 = v29;
          a4 = v28;
          sub_222E16068(v33, v32, &v79);
          OUTLINED_FUNCTION_13_1();
          a3 = v30;

          *(v26 + 4) = v27;
          v23 = v76;
          OUTLINED_FUNCTION_26_0(&dword_222E12000, v34, v25, "Dispatching command %{public}s to the handle method");
          __swift_destroy_boxed_opaque_existential_0(v73);
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_7();
        }

        (*(*v22 + 88))(v5, v23, v78, a3, a4);

        return;
      }

      v59 = a1;
      v53 = sub_222E3FB04();
      v60 = sub_222E3FFA4();

      if (os_log_type_enabled(v53, v60))
      {
        v61 = OUTLINED_FUNCTION_10();
        v75 = OUTLINED_FUNCTION_9_0();
        v79 = v75;
        *v61 = 136446210;
        v62 = [v59 debugDescription];
        v63 = sub_222E3FCB4();
        v65 = v64;

        sub_222E16068(v63, v65, &v79);
        OUTLINED_FUNCTION_13_1();

        *(v61 + 4) = v62;
        OUTLINED_FUNCTION_26_0(&dword_222E12000, v66, v60, "Command %{public}s does not have encodedClassName");
        __swift_destroy_boxed_opaque_existential_0(v75);
        goto LABEL_16;
      }
    }

    else
    {
      v52 = a1;

      v53 = sub_222E3FB04();
      v54 = sub_222E3FFA4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_29();
        v79 = OUTLINED_FUNCTION_45();
        *v55 = 136446466;
        *(v55 + 4) = sub_222E16068(v5[2], v5[3], &v79);
        *(v55 + 12) = 2082;
        v74 = v54;
        v56 = [v52 debugDescription];
        sub_222E3FCB4();
        OUTLINED_FUNCTION_19_1();
        v57 = OUTLINED_FUNCTION_14_0();
        sub_222E16068(v57, a3, v58);
        OUTLINED_FUNCTION_13_1();

        *(v55 + 14) = v56;
        _os_log_impl(&dword_222E12000, v53, v74, "%{public}s was not able to handle: %{public}s: Command group is not registered with bridge", v55, 0x16u);
        swift_arrayDestroy();
LABEL_16:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_7();
      }
    }

    type metadata accessor for MessageDispatchingBridgeBase();
    OUTLINED_FUNCTION_5_1();
    v67 = OUTLINED_FUNCTION_10_2();
    Bridge.defaultHandle(_:executionContextInfo:reply:)(v67, v68, v69, v70, v71, v72);
    return;
  }

  v35 = a1;
  v36 = sub_222E3FB04();
  v37 = sub_222E3FFA4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_10();
    v77 = OUTLINED_FUNCTION_9_0();
    v79 = v77;
    *v38 = 136446210;
    v39 = [v35 debugDescription];
    sub_222E3FCB4();
    v41 = v40;

    v42 = OUTLINED_FUNCTION_14_0();
    sub_222E16068(v42, v41, v43);
    OUTLINED_FUNCTION_13_1();

    *(v38 + 4) = v39;
    OUTLINED_FUNCTION_26_0(&dword_222E12000, v44, v37, "Command %{public}s does not have group identifier");
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v45 = *(v10 + 80);
  type metadata accessor for MessageDispatchingBridgeBase();
  OUTLINED_FUNCTION_5_1();
  v46 = OUTLINED_FUNCTION_10_2();

  Bridge.defaultHandle(_:executionContextInfo:reply:)(v46, v47, v48, v49, v50, v51);
}

void sub_222E1E644(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *v5;
  v53 = a1;
  v12 = *(v10 + 120);
  v13 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v13, v14, v15, v16, v17, v18, v19, v20, v51);
  if (swift_dynamicCast())
  {
    v21 = *(v11 + 128);
    if (swift_dynamicCastUnknownClass())
    {
      v23 = v5[2];
      v22 = v5[3];
      v24 = a2;
      v23(v52);
      v25 = OUTLINED_FUNCTION_16_0();
      v26(v25, a3, a4, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = a2;
      v41 = sub_222E3FB04();
      v42 = sub_222E3FFA4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_29();
        v53 = OUTLINED_FUNCTION_45();
        *v43 = 136446466;
        swift_getObjectType();
        v44 = sub_222E403A4();
        sub_222E16068(v44, v45, &v53);

        v46 = OUTLINED_FUNCTION_24_1();
        v48 = sub_222E16068(v46, v47, &v53);

        *(v43 + 14) = v48;
        OUTLINED_FUNCTION_33_1(&dword_222E12000, v49, v50, "Input command type: %{public}s but expected type: %{public}s");
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_7();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v27 = sub_222E3FB04();
    v28 = sub_222E3FF94();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_29();
      v53 = OUTLINED_FUNCTION_45();
      *v29 = 136446466;
      swift_getObjectType();
      v30 = sub_222E403A4();
      v32 = v31;
      sub_222E16068(v30, v31, &v53);

      v33 = OUTLINED_FUNCTION_25_1();
      sub_222E16068(v33, v34, &v53);
      OUTLINED_FUNCTION_30_1();

      *(v29 + 14) = v32;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_7();
    }
  }
}

void sub_222E1E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_11();
  v68 = v24;
  v69 = v23;
  v71 = v26;
  v72 = v25;
  v73 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *v21;
  v35 = sub_222E3FB54();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v43 = v42 - v41;
  v74 = sub_222E3FB84();
  v44 = OUTLINED_FUNCTION_0(v74);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v49 = [v33 refId];
  if (v49)
  {

    v66 = *(v31 + 88);
    v67 = *(v31 + 80);
    OUTLINED_FUNCTION_33();
    v50 = swift_allocObject();
    v50[2] = *(v34 + 328);
    v50[3] = v68;
    v50[4] = a21;
    v50[5] = v69;
    v50[6] = v71;
    v50[7] = v31;
    v50[8] = v33;
    v50[9] = v29;
    v70 = v46;
    v50[10] = v72;
    v50[11] = v73;
    OUTLINED_FUNCTION_2_0(v50);
    v76[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v76[2] = v51;
    v76[3] = &block_descriptor_18;
    v52 = _Block_copy(v76);

    v53 = v33;
    v54 = v29;
    sub_222E1F6C8(v72);
    sub_222E3FB64();
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    MEMORY[0x223DD0840](v66, v22, v43, v52);
    _Block_release(v52);
    (*(v38 + 8))(v43, v35);
    (*(v70 + 8))(v22, v74);

LABEL_5:
    OUTLINED_FUNCTION_12();
    return;
  }

  v55 = v33;
  v75 = sub_222E3FB04();
  v56 = sub_222E3FFA4();

  if (os_log_type_enabled(v75, v56))
  {
    v57 = OUTLINED_FUNCTION_10();
    v58 = OUTLINED_FUNCTION_9_0();
    v76[0] = v58;
    *v57 = 136315138;
    v59 = [v55 debugDescription];
    sub_222E3FCB4();

    v60 = OUTLINED_FUNCTION_34();
    v63 = sub_222E16068(v60, v61, v62);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_222E12000, v75, v56, "Could not find a refId on this command: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12();
}

void sub_222E1ED9C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_222E2BA34();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_222E1EE08(uint64_t *a1, uint64_t (*a2)(char *))
{
  v24 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  v7 = sub_222E400C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(v6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - v17;
  v19 = *(v3 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v14, a1 + v19, v7);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    return (*(v8 + 8))(v14, v7);
  }

  (*(v15 + 32))(v18, v14, v6);
  v21 = v24(v18);
  result = (*(v15 + 8))(v18, v6);
  if (v21)
  {
    v22 = v23;
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v6);
    swift_beginAccess();
    (*(v8 + 40))(a1 + v19, v22, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_222E1F0DC()
{
  v0 = sub_222E3F794();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E3F934();
  v5 = sub_222E3F764();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_222E1F1C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_222E1F0DC();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_222E16068(v0, v1, (v2 - 128));
}

uint64_t sub_222E1F1FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_22();

  return v5();
}

uint64_t sub_222E1F2E0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t OUTLINED_FUNCTION_43()
{
  v3 = v0 + *(v1 - 168);

  return sub_222E3FB04();
}

BOOL OUTLINED_FUNCTION_43_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t sub_222E1F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222E18808(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_222E1F4D8()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_222E2BA2C;

  return sub_222E1F70C(v3, v0);
}

uint64_t sub_222E1F59C()
{
  v1 = qword_281320050;
  OUTLINED_FUNCTION_27_0();
  v2 = *(v0 + v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

unint64_t sub_222E1F60C()
{
  result = qword_28131F1F0;
  if (!qword_28131F1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D04D7E0, &qword_222E41418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1F0);
  }

  return result;
}

unint64_t sub_222E1F670()
{
  result = qword_28131F200;
  if (!qword_28131F200)
  {
    sub_222E3FB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F200);
  }

  return result;
}

uint64_t sub_222E1F6C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_222E1F70C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857E0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222E1F1FC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](a1, a2, v7);
}

uint64_t dispatch thunk of InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 120))();
}

NSObject *sub_222E1F7E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v12)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v22 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v22, qword_28131FFA0);
    v13 = sub_222E3FB04();
    v23 = sub_222E3FFA4();
    if (os_log_type_enabled(v13, v23))
    {
      v24 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_222E40074();
      v27 = sub_222E16068(v25, v26, &v60);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_222E40074();
      v30 = sub_222E16068(v28, v29, &v60);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_222E12000, v13, v23, "Failed to create RequestLink event for source component: %s and target component: %s during buildRequestLinkEvent", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_16;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v14)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v31 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v31, qword_28131FFA0);
    v32 = sub_222E3FB04();
    v33 = sub_222E3FFA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_10();
      v35 = OUTLINED_FUNCTION_9_0();
      v60 = v35;
      *v34 = 136315138;
      v36 = sub_222E40074();
      v38 = sub_222E16068(v36, v37, &v60);

      *(v34 + 4) = v38;
      OUTLINED_FUNCTION_8_2(&dword_222E12000, v39, v40, "Failed to create source link event for source component: %s during buildRequestLinkEvent");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

LABEL_16:
    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v16)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v41 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v41, qword_28131FFA0);
    v42 = sub_222E3FB04();
    v43 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_3_2(v43))
    {
      v44 = OUTLINED_FUNCTION_10();
      v45 = OUTLINED_FUNCTION_9_0();
      v60 = v45;
      *v44 = 136315138;
      v46 = sub_222E40074();
      v48 = sub_222E16068(v46, v47, &v60);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_222E12000, v42, a2, "Failed to create target link event for target component: %s during buildRequestLinkEvent", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_27;
  }

  v17 = v16;
  v18 = sub_222E189EC();
  if (!v18)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v49 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v49, qword_28131FFA0);
    sub_222E3FC24();
    v50 = sub_222E3FB04();
    v51 = sub_222E3FFA4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_10();
      v53 = OUTLINED_FUNCTION_9_0();
      v60 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_222E16068(a2, a3, &v60);
      _os_log_impl(&dword_222E12000, v50, v51, "Invaid sourceUUID = %s during buildRequestLinkEvent ", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_3();
    }

LABEL_27:
    return 0;
  }

  v19 = v18;
  v20 = sub_222E189EC();
  if (!v20)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v55 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v55, qword_28131FFA0);
    sub_222E3FC24();
    v56 = sub_222E3FB04();
    v57 = sub_222E3FFA4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_10();
      v59 = OUTLINED_FUNCTION_9_0();
      v60 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_222E16068(a5, a6, &v60);
      _os_log_impl(&dword_222E12000, v56, v57, "Invaid targetUUID = %s during buildRequestLinkEvent ", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    return 0;
  }

  v21 = v20;
  [v15 setComponent_];
  [v15 setUuid_];
  [v17 setComponent_];
  [v17 setUuid_];
  [v13 setSource:v15];
  [v13 setTarget:v17];

  return v13;
}

char *OUTLINED_FUNCTION_12_3(uint64_t a1)
{
  v6 = *(v3 - 176);
  v7 = *(v3 - 168);

  return MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(v6, v7, (v3 - 120), v1, a1, (v3 - 160), v2);
}

uint64_t sub_222E1FE44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = (*(v0 + 40))(*(v0 + 56));
  v6(v2, v3, v4, v5);
}

void sub_222E1FEC4()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D440, &unk_222E41270);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  swift_bridgeObjectRetain_n();

  v18 = sub_222E3FB04();
  v19 = sub_222E3FF94();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_10();
    v26[0] = v5;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_9_0();
    v26[1] = v1;
    v27[0] = v22;
    v23 = v10;
    v24 = v9;
    v25 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_222E16068(v24, v7, v27);
    _os_log_impl(&dword_222E12000, v18, v19, "#AsyncSequentialExecutor Submitting async task: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v9 = v24;
    v10 = v23;
    OUTLINED_FUNCTION_7();
    v5 = v26[0];
    OUTLINED_FUNCTION_7();
  }

  v27[0] = v5;
  v27[1] = v3;
  v27[2] = v9;
  v27[3] = v7;
  sub_222E3FC24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  sub_222E3FE94();

  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_12();
}

unint64_t sub_222E200C4()
{
  result = qword_28131F1A8;
  if (!qword_28131F1A8)
  {
    sub_222E40004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1A8);
  }

  return result;
}

unint64_t sub_222E20140()
{
  result = qword_28131F1E8;
  if (!qword_28131F1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04D800, &qword_222E426C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222E201B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t storeEnumTagSinglePayload for SimpleSubscriptionRegistrar.Error(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  if (*(v0 + 80))
  {
    v3 = *(v0 + 88);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

void sub_222E202B0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v65 = v3;
  v4 = sub_222E3F794();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  sub_222E3F924();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    if ((*(v0 + qword_28131FCF0) & 1) == 0)
    {
      v66 = v65;

      v12 = sub_222E3FB04();
      sub_222E3FFA4();

      if (!OUTLINED_FUNCTION_28_3())
      {

        goto LABEL_36;
      }

      v13 = OUTLINED_FUNCTION_10();
      v14 = OUTLINED_FUNCTION_9_0();
      v68 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_222E16068(*(v2 + 16), *(v2 + 24), &v68);
      OUTLINED_FUNCTION_8_3();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_6();

LABEL_10:
      OUTLINED_FUNCTION_12();
      return;
    }

    v9 = v8;
    sub_222E3F834();
    if (swift_dynamicCastClass())
    {
      v65;
      sub_222E2091C();
LABEL_36:
      OUTLINED_FUNCTION_12();

      return;
    }

    sub_222E3F804();
    if (swift_dynamicCastClass())
    {
      v65;
      sub_222E23868();
      goto LABEL_36;
    }

    v20 = sub_222E210A0();
    if (v20)
    {
      v22 = *(v20 + 64);
      v21 = *(v20 + 72);
      v23 = v65;
      sub_222E3FC24();
    }

    else
    {
      v24 = v65;
      v22 = 0;
      v21 = 0;
    }

    v25 = sub_222E3F914();
    if (v21)
    {
      if (v22 == v25 && v21 == v26)
      {

LABEL_32:
        sub_222E21784();
        goto LABEL_36;
      }

      v28 = sub_222E40294();

      if (v28)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    if ((*(v0 + qword_28131FCF8) & 1) == 0)
    {
      if (!sub_222E210A0())
      {
        v29 = v65;
        v67 = sub_222E3FB04();
        v47 = sub_222E3FF94();

        if (os_log_type_enabled(v67, v47))
        {
          v48 = OUTLINED_FUNCTION_9_0();
          v68 = OUTLINED_FUNCTION_27_2();
          *v48 = 136315650;
          sub_222E3F974();
          OUTLINED_FUNCTION_0_8();
          sub_222E16B58(v49, v50);
          sub_222E40264();
          v51 = OUTLINED_FUNCTION_17_1();
          v52(v51);
          v53 = OUTLINED_FUNCTION_23_0();
          v55 = sub_222E16068(v53, v1, v54);

          *(v48 + 4) = v55;
          *(v48 + 12) = 2080;
          swift_getObjectType();
          v56 = sub_222E403A4();
          v58 = OUTLINED_FUNCTION_22_2(v56, v57);

          *(v48 + 14) = v58;
          *(v48 + 22) = 2080;
          v59 = sub_222E3F914();
          OUTLINED_FUNCTION_22_2(v59, v60);
          OUTLINED_FUNCTION_25_3();

          *(v48 + 24) = v9;
          _os_log_impl(&dword_222E12000, v67, v47, "Receiving message id: %s of type: %s for request Id: %s but current request id not set", v48, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7();
LABEL_41:
          OUTLINED_FUNCTION_7();

          goto LABEL_10;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v29 = v65;

    v67 = sub_222E3FB04();
    v30 = sub_222E3FFA4();

    if (os_log_type_enabled(v67, v30))
    {
      v31 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v31 = 136315906;
      sub_222E3F974();
      OUTLINED_FUNCTION_0_8();
      sub_222E16B58(v32, v33);
      sub_222E40264();
      v34 = OUTLINED_FUNCTION_17_1();
      v35(v34);
      v36 = OUTLINED_FUNCTION_23_0();
      v38 = sub_222E16068(v36, v1, v37);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      swift_getObjectType();
      v39 = sub_222E403A4();
      v41 = OUTLINED_FUNCTION_22_2(v39, v40);

      *(v31 + 14) = v41;
      *(v31 + 22) = 2080;
      v42 = sub_222E3F914();
      OUTLINED_FUNCTION_22_2(v42, v43);
      OUTLINED_FUNCTION_25_3();

      *(v31 + 24) = v9;
      *(v31 + 32) = 2080;
      v44 = sub_222E210A0();
      if (v44)
      {
        v46 = *(v44 + 64);
        v45 = *(v44 + 72);
        sub_222E3FC24();
      }

      else
      {
        v45 = 0xE700000000000000;
        v46 = 0x74657320746F4ELL;
      }

      v63 = OUTLINED_FUNCTION_23_0();
      sub_222E16068(v63, v45, v64);
      OUTLINED_FUNCTION_21_2();
      *(v31 + 34) = v46;
      _os_log_impl(&dword_222E12000, v67, v30, "Receiving message id: %s of type: %s for request Id: %s but current request id: %s", v31, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_12();

  sub_222E163D0(v10);
}

void sub_222E2091C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = sub_222E3FB34();
  v5 = OUTLINED_FUNCTION_0(v4);
  v89 = v6;
  v90 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = sub_222E3FBA4();
  v13 = OUTLINED_FUNCTION_0(v12);
  v88 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = sub_222E3F794();
  v23 = OUTLINED_FUNCTION_0(v22);
  v93 = v24;
  v94 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v92 = v28 - v27;
  v29 = sub_222E3F914();
  v31 = v30;
  v96 = v3;
  v91 = sub_222E3F954();
  v95 = v32;
  v33 = sub_222E210A0();
  if (!v33)
  {
LABEL_7:
    v87 = v29;
    v38 = sub_222E210A0();
    v39 = v31;
    if (!v38)
    {
      goto LABEL_22;
    }

    v40 = v38;
    v86 = qword_28131FFC0;
    v41 = sub_222E3FB04();
    v42 = sub_222E3FFA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_222E12000, v41, v42, "We still have previous processor checking waiting for it to finish", v43, 2u);
      v39 = v31;
      OUTLINED_FUNCTION_7();
    }

    v44 = *(v40 + 88);
    sub_222E3FB94();
    sub_222E39EEC(v11);
    MEMORY[0x223DD03D0](v19, v11);
    (*(v89 + 8))(v11, v90);
    v45 = *(v88 + 8);
    v45(v19, v12);
    sub_222E3FFE4();

    v45(v21, v12);
    v46 = sub_222E3FB44();

    v47 = sub_222E3FB04();
    if (v46)
    {
      sub_222E3FFA4();

      if (OUTLINED_FUNCTION_28_3())
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_222E3FF94();

      if (OUTLINED_FUNCTION_28_3())
      {
LABEL_20:
        v66 = OUTLINED_FUNCTION_10();
        v67 = OUTLINED_FUNCTION_9_0();
        v97 = v67;
        *v66 = 136315138;
        v68 = *(v40 + 64);
        v69 = *(v40 + 72);
        sub_222E3FC24();
        v70 = sub_222E16068(v68, v69, &v97);

        *(v66 + 4) = v70;
        OUTLINED_FUNCTION_8_3();
        _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_6();

        goto LABEL_22;
      }
    }

LABEL_22:
    v76 = v92;
    sub_222E3F934();
    v77 = (*(*v1 + 496))(v91, v95, v76, v87, v39);

    (*(v93 + 8))(v76, v94);
    if (v77)
    {

      sub_222E2172C(v78);
      sub_222E21784();
    }

    else
    {
      v79 = sub_222E3FB04();
      v80 = sub_222E3FFA4();
      if (os_log_type_enabled(v79, v80))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_3();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        OUTLINED_FUNCTION_6();
      }

      sub_222E2172C(0);
    }

    goto LABEL_27;
  }

  v35 = *(v33 + 64);
  v34 = *(v33 + 72);
  sub_222E3FC24();

  if (v35 == v29 && v34 == v31)
  {
  }

  else
  {
    v37 = sub_222E40294();

    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v48 = v96;
  sub_222E3FC24();
  v96 = sub_222E3FB04();
  v49 = sub_222E3FFA4();

  if (os_log_type_enabled(v96, v49))
  {
    v50 = OUTLINED_FUNCTION_9_0();
    v97 = OUTLINED_FUNCTION_27_2();
    *v50 = 136315650;
    v51 = sub_222E16068(v29, v31, &v97);

    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    v52 = v92;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_8();
    sub_222E16B58(v53, v54);
    v55 = v94;
    sub_222E40264();
    v57 = v56;
    (*(v93 + 8))(v52, v55);
    v58 = OUTLINED_FUNCTION_23_0();
    v60 = sub_222E16068(v58, v57, v59);

    *(v50 + 14) = v60;
    *(v50 + 22) = 2080;
    swift_getObjectType();
    v61 = sub_222E403A4();
    v63 = OUTLINED_FUNCTION_22_2(v61, v62);

    *(v50 + 24) = v63;
    _os_log_impl(&dword_222E12000, v96, v49, "Got a duplicate start request message to requestId: %s messageId: %s type: %s ignoring the new start", v50, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7();

LABEL_27:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E210A0()
{
  v1 = qword_281320028;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_37()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 192);
  return result;
}

uint64_t sub_222E21118(uint64_t a1)
{
  v3 = qword_281320050;
  OUTLINED_FUNCTION_40();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_222E21160()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_222E3FB54();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_222E3FB84();
  v17 = OUTLINED_FUNCTION_0(v16);
  v44 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  swift_getObjectType();
  if ((*(*v6 + 128))())
  {
    v21 = sub_222E3FB04();
    sub_222E3FFA4();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v21, v22))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v23 = *(*v6 + 136);
  v24 = OUTLINED_FUNCTION_22_0();
  if ((v25(v24) & 1) == 0)
  {
    v21 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v21, v32))
    {
LABEL_7:
      v33 = OUTLINED_FUNCTION_10();
      v34 = OUTLINED_FUNCTION_9_0();
      v45[0] = v34;
      *v33 = 136446210;
      v35 = sub_222E403A4();
      v37 = sub_222E16068(v35, v36, v45);

      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }

LABEL_8:

    goto LABEL_9;
  }

  v26 = *(v4 + 88);
  v43 = *(v4 + 80);
  v27 = swift_allocObject();
  v27[2] = v6;
  v27[3] = v4;
  v27[4] = v2;
  OUTLINED_FUNCTION_2_0(v27);
  v45[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  v45[2] = v28;
  v45[3] = &block_descriptor_32;
  v29 = _Block_copy(v45);

  v30 = v2;
  sub_222E3FB64();
  sub_222E1F670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
  sub_222E1F60C();
  OUTLINED_FUNCTION_21();
  v31 = OUTLINED_FUNCTION_35();
  MEMORY[0x223DD0840](v31);
  _Block_release(v29);
  (*(v10 + 8))(v15, v7);
  (*(v44 + 8))(v0, v16);

LABEL_9:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E2150C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E21554()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v3, v4, v5, v6, v7, v8, v9, v10, v13);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRelease();
    v12 = *(v1 + 160);
    return swift_dynamicCastClass() != 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21()
{

  return sub_222E400F4();
}

uint64_t OUTLINED_FUNCTION_21_2()
{
}

uint64_t sub_222E2172C(uint64_t a1)
{
  v3 = qword_281320028;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_222E21784()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v70 = *v0;
  v4 = sub_222E3F794();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v69 = v11 - v10;
  v12 = sub_222E3FB54();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v73 = v19 - v18;
  v20 = sub_222E3FB84();
  v21 = OUTLINED_FUNCTION_0(v20);
  v72 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = sub_222E210A0();
  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = v28;
  v64 = v7;
  v68 = v15;
  v30 = qword_28131FFC0;

  v31 = v3;
  v66 = v30;
  v32 = sub_222E3FB04();
  v33 = sub_222E3FF94();

  v65 = v4;
  v67 = v20;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v63 = v12;
    v35 = v29;
    v36 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_9_0();
    v74[0] = v37;
    *v34 = 136315394;
    *(v34 + 4) = sub_222E16068(v1[2], v1[3], v74);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v36 = v31;
    v38 = v31;
    _os_log_impl(&dword_222E12000, v32, v33, "Bridge %s received message: %@", v34, 0x16u);
    sub_222E21E14(v36);
    v29 = v35;
    v12 = v63;
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v39 = sub_222E14578(v31);
  if (((*(*v39 + 128))() & 1) == 0)
  {
    v52 = v29;
    v53 = *(v29 + 80);
    v54 = *(v29 + 88);
    OUTLINED_FUNCTION_18_2();
    v55 = swift_allocObject();
    v55[2] = *(v70 + 336);
    v55[3] = v39;
    v55[4] = v52;
    v55[5] = v31;
    OUTLINED_FUNCTION_2_0(v55);
    v74[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v74[2] = v56;
    v74[3] = &block_descriptor_16;
    v57 = _Block_copy(v74);
    v58 = v31;
    v59 = v53;
    v71 = v54;

    sub_222E3FB64();
    OUTLINED_FUNCTION_3_4();
    sub_222E16B58(v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    MEMORY[0x223DD0840](v54, v27, v73, v57);
    _Block_release(v57);

    (*(v68 + 8))(v73, v12);
    (*(v72 + 8))(v27, v67);
    goto LABEL_8;
  }

  v40 = v31;
  v41 = sub_222E3FB04();
  v42 = sub_222E3FFA4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v43 = 136315394;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7F0, &unk_222E426B0);
    v44 = sub_222E3FCF4();
    sub_222E16068(v44, v45, v74);
    OUTLINED_FUNCTION_21_2();
    *(v43 + 4) = v1 + v66;
    *(v43 + 12) = 2080;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_8();
    sub_222E16B58(v46, v47);
    v48 = sub_222E40264();
    v50 = v49;
    (*(v64 + 8))(v69, v65);
    v51 = sub_222E16068(v48, v50, v74);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_222E12000, v41, v42, "handleMessage got message type %s with message id: %s that is not registered in the bridge", v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();

LABEL_8:

LABEL_9:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E21DD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_222E21E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D460, &qword_222E41680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestProcessorBase.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_sessionId;
  v4 = sub_222E3F794();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t RequestProcessorBase.init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_10_4(a1, a2, a3, a4, a5, a6, a7, a8);
  v37 = v12;
  v14 = v13;
  v16 = v15;
  v41 = sub_222E40004();
  v17 = OUTLINED_FUNCTION_4(v41);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_42_0();
  v40 = sub_222E40014();
  v20 = OUTLINED_FUNCTION_0(v40);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = sub_222E3FB84();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_3();
  v9[11] = dispatch_group_create();
  v30 = (v9 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  *v30 = 0;
  v30[1] = 0;
  v9[12] = v16;
  v9[13] = v14;
  v31 = sub_222E3F794();
  OUTLINED_FUNCTION_8_4(v31);
  v33 = v32;
  v34 = OUTLINED_FUNCTION_11_3(v32);
  v35(v34);
  v9[8] = v37;
  v9[9] = v11;
  sub_222E15C70(v10, (v9 + 3));
  v9[2] = a9;
  OUTLINED_FUNCTION_13_4(OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  sub_222E3FC24();
  swift_unknownObjectRetain();
  sub_222E40144();

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x223DD0550]();

  MEMORY[0x223DD0550](46, 0xE100000000000000);
  MEMORY[0x223DD0550](v37, v11);

  sub_222E3FB74();
  (*(v22 + 104))(v27, *MEMORY[0x277D85268], v40);
  sub_222E200C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D800, &qword_222E426C0);
  sub_222E20140();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_6_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v38);
  (*(v33 + 8))(v39, v16);
  return OUTLINED_FUNCTION_9_4();
}

uint64_t RequestProcessorBase.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = *(v0 + 72);

  v3 = *(v0 + 104);

  v4 = OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_sessionId;
  v5 = sub_222E3F794();
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId + 8);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId + 8);

  return v0;
}

void sub_222E222C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v2 + 376);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_0();

    MEMORY[0x2822009F8](v6);
  }
}

uint64_t sub_222E223D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = *(v20 + 360);
  v24 = *(v20 + 368);
  v25 = *(v20 + 272);
  v26 = *(v20 + 248);
  v27 = *(v20 + 256);
  sub_222E40044();
  sub_222E3FAC4();
  (*(v27 + 8))(v25, v26);

  v28 = *(v20 + 352);
  v29 = *(v20 + 160);
  v30 = sub_222E3FB04();
  sub_222E3FF94();

  if (OUTLINED_FUNCTION_43_0())
  {
    OUTLINED_FUNCTION_18();
    a9 = OUTLINED_FUNCTION_25_0();
    *v29 = 136315138;
    sub_222E3F934();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v31, v32);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    v33 = OUTLINED_FUNCTION_9_1();
    v35 = v34(v33);
    OUTLINED_FUNCTION_67(v35, v36, &a9);
    OUTLINED_FUNCTION_27_1();

    *(v29 + 1) = v28;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  v42 = *(v20 + 240);
  v43 = *(v20 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  sub_222E3FEC4();
  v44 = *(MEMORY[0x277D85798] + 4);
  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_24_0(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_1_1(v46);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2822003E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t RequestProcessorBase.requestId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_222E3FC24();
  return v1;
}

void sub_222E225C4()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0) - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26[-1] - v9;
  v11 = sub_222E40394();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  sub_222E19D10(v3, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_222E16CA0(v10, &unk_27D04D630, &unk_222E420B0);
    v20 = *(v4 + 80);
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
    LOBYTE(v26[0]) = 0;
    sub_222E2EC40(v26);
  }

  else
  {
    (*(v14 + 32))(v19, v10, v11);
    v26[0] = sub_222E40384();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D518, &qword_222E418E0);
    v21 = sub_222E3FCF4();
    v23 = v22;
    sub_222E22984();
    v26[0] = v21;
    v26[1] = v23;
    v24 = *(v4 + 80);
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
    sub_222E3FC64();

    if (!v26[2])
    {
      sub_222E40364();
      sub_222E225C4(v8);
      sub_222E16CA0(v8, &unk_27D04D630, &unk_222E420B0);
    }

    (*(v14 + 8))(v19, v11);
  }

  OUTLINED_FUNCTION_12();
}

uint64_t static SignpostLogger.event(_:)()
{
  v0 = sub_222E3FAF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E40064();
  v5 = OUTLINED_FUNCTION_0_6();
  v7 = v6(v5);
  sub_222E3FAE4();
  OUTLINED_FUNCTION_1_4();
  sub_222E3FAC4();

  return (*(v1 + 8))(v4, v0);
}

void sub_222E22990()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = sub_222E3FB54();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = sub_222E3FB84();
  v11 = OUTLINED_FUNCTION_0(v10);
  v57 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v56 = v16 - v15;
  v17 = v3;
  v18 = sub_222E3FB04();
  v19 = sub_222E3FF94();

  if (OUTLINED_FUNCTION_44())
  {
    v58 = v17;
    v20 = OUTLINED_FUNCTION_10();
    v21 = OUTLINED_FUNCTION_9_0();
    v60[0] = v21;
    *v20 = 136446210;
    swift_getObjectType();
    v22 = sub_222E403A4();
    v24 = sub_222E16068(v22, v23, v60);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_222E12000, v18, v19, "Ending active request with message: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_7();
    v17 = v58;
    OUTLINED_FUNCTION_7();
  }

  v25 = sub_222E1F59C();
  if (!v25)
  {
    goto LABEL_10;
  }

  v19 = v25;
  if (sub_222E3F914() == *(v25 + 64) && v26 == *(v19 + 72))
  {
  }

  else
  {
    v28 = sub_222E40294();

    if ((v28 & 1) == 0)
    {

LABEL_10:
      v29 = v17;
      v30 = sub_222E3FB04();
      v31 = sub_222E3FF94();

      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_10();
        v32 = OUTLINED_FUNCTION_11_0();
        v60[0] = v32;
        *v19 = 136315138;
        v33 = sub_222E3F914();
        v35 = sub_222E16068(v33, v34, v60);

        *(v19 + 4) = v35;
        OUTLINED_FUNCTION_26(&dword_222E12000, v36, v31, "Active RequestProcessor for requestId: %s could not be found");
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_20;
    }
  }

  sub_222E21160();
  v37 = sub_222E3F914();
  v38 = v17;
  v40 = v39;
  if (*(v1 + qword_28131FED0) == 1)
  {
    v41 = v37;
    v59 = *(v19 + 88);
    v55 = v1[10];
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = v40;
    v42[4] = v1;
    v42[5] = v38;
    OUTLINED_FUNCTION_2_0(v42);
    v60[1] = 1107296256;
    v60[2] = sub_222E21700;
    v60[3] = &block_descriptor_38;
    v43 = _Block_copy(v60);
    v44 = v38;

    sub_222E3FB64();
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    sub_222E3FFF4();
    _Block_release(v43);
    v45 = *(v7 + 8);
    v46 = OUTLINED_FUNCTION_35();
    v47(v46);
    (*(v57 + 8))(v56, v10);
  }

  else
  {

    v48 = v17;

    v49 = sub_222E3FB04();
    v50 = sub_222E3FF94();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_29();
      v60[0] = OUTLINED_FUNCTION_45();
      *v51 = 136315394;
      v52 = sub_222E3F914();
      v54 = sub_222E16068(v52, v53, v60);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_222E16068(v1[2], v1[3], v60);
      _os_log_impl(&dword_222E12000, v49, v50, "Deiniting RequestProcessor with requestId %s for bridge %s", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7_0();
    }

    sub_222E21118(0);
  }

LABEL_20:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E22F24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222E22F6C(void *a1)
{
  sub_222E22990();
  if (v2)
  {
    v3 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v3, v4))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = sub_222E230AC(a1);
    v3 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    v7 = os_log_type_enabled(v3, v6);
    if ((v5 & 1) == 0)
    {
      if (!v7)
      {
        v13 = 0;
        goto LABEL_11;
      }

      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v13 = 0;
      goto LABEL_10;
    }

    if (v7)
    {
LABEL_6:
      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = 1;
LABEL_10:
      OUTLINED_FUNCTION_7();
      goto LABEL_11;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

uint64_t sub_222E230AC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_28131FFC0;
  v5 = sub_222E3FB04();
  v6 = sub_222E3FF94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_10();
    v8 = OUTLINED_FUNCTION_9_0();
    v33[0] = v8;
    *v7 = 136446210;
    v9 = sub_222E403A4();
    v11 = sub_222E16068(v9, v10, v33);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_222E12000, v5, v6, "Ending candidate request with message: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7_0();
  }

  sub_222E3F914();
  v12 = sub_222E1BC88();
  v13 = OUTLINED_FUNCTION_22_0();
  v15 = sub_222E1F444(v13, v14, v12);

  if (v15)
  {
    OUTLINED_FUNCTION_34();
    sub_222E21160();
    v17 = v16;
    v18 = sub_222E3F914();
    v20 = v19;
    OUTLINED_FUNCTION_24();
    sub_222E2996C(v18, v20);
    swift_endAccess();

    return v17 & 1;
  }

  else
  {
    v22 = a1;
    v23 = v2 + v4;
    v24 = sub_222E3FB04();
    v25 = sub_222E3FFA4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_29();
      v33[0] = OUTLINED_FUNCTION_45();
      *v26 = 136446466;
      v27 = sub_222E403A4();
      sub_222E16068(v27, v28, v33);
      OUTLINED_FUNCTION_30();

      *(v26 + 4) = v23;
      *(v26 + 12) = 2080;
      v29 = sub_222E3F914();
      sub_222E16068(v29, v30, v33);
      OUTLINED_FUNCTION_30();

      *(v26 + 14) = v22;
      OUTLINED_FUNCTION_39(&dword_222E12000, v31, v32, "Received finisher message: %{public}s while there is no CandidateRequestProcessor for requestId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }
}

BOOL OUTLINED_FUNCTION_44()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 - 144);

  return sub_222E3F934();
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_28_3()
{

  return os_log_type_enabled(v0, v1);
}

void sub_222E23404(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_222E1F59C();
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = *(v8 + 64);
  v9 = *(v8 + 72);
  sub_222E3FC24();

  if (v10 == a1 && v9 == a2)
  {
  }

  else
  {
    v12 = sub_222E40294();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      sub_222E3FC24();
      oslog = sub_222E3FB04();
      v13 = sub_222E3FF94();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_222E16068(a1, a2, &v25);
        _os_log_impl(&dword_222E12000, oslog, v13, "RequestProcessor with requestId:%s has already been replaced or deinited", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223DD12D0](v15, -1, -1);
        MEMORY[0x223DD12D0](v14, -1, -1);
      }

      return;
    }
  }

  v16 = a4;

  v17 = sub_222E3FB04();
  v18 = sub_222E3FF94();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315394;
    v21 = sub_222E3F914();
    v23 = sub_222E16068(v21, v22, &v25);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v25);
    _os_log_impl(&dword_222E12000, v17, v18, "Deiniting RequestProcessor with requestId %s for bridge %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v20, -1, -1);
    MEMORY[0x223DD12D0](v19, -1, -1);
  }

  sub_222E21118(0);
}

uint64_t AsyncSequentialExecutor.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation;
  (*(v4 + 16))(&v16 - v8, v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation, v2);
  sub_222E3FEA4();
  v11 = *(v4 + 8);
  v11(v9, v2);
  v11((v1 + v10), v2);
  v12 = *(v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_task);

  v13 = OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_logger;
  v14 = sub_222E3FB14();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncSequentialExecutor.__deallocating_deinit()
{
  AsyncSequentialExecutor.deinit();

  return MEMORY[0x282200960](v0);
}

void sub_222E23868()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = sub_222E3FB54();
  v5 = OUTLINED_FUNCTION_0(v4);
  v75 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = sub_222E3FB84();
  v13 = OUTLINED_FUNCTION_0(v12);
  v73 = v14;
  v74 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = sub_222E3F794();
  v72 = OUTLINED_FUNCTION_0(v20);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3();
  v77 = sub_222E3F914();
  v24 = v23;
  v25 = sub_222E210A0();
  if (!v25)
  {
LABEL_7:
    if ((*(v1 + qword_28131FCF8) & 1) == 0)
    {
      if (!sub_222E210A0())
      {
        v55 = v3;
        sub_222E3FC24();
        v76 = sub_222E3FB04();
        v56 = sub_222E3FFC4();

        if (os_log_type_enabled(v76, v56))
        {
          v57 = OUTLINED_FUNCTION_9_0();
          v78[0] = OUTLINED_FUNCTION_27_2();
          *v57 = 136315650;
          sub_222E3F974();
          OUTLINED_FUNCTION_0_8();
          sub_222E16B58(v58, v59);
          sub_222E40264();
          v60 = OUTLINED_FUNCTION_16_2();
          v61(v60, v72);
          v62 = OUTLINED_FUNCTION_14_2();
          v65 = sub_222E16068(v62, v63, v64);

          *(v57 + 4) = v65;
          *(v57 + 12) = 2080;
          swift_getObjectType();
          v66 = sub_222E403A4();
          v68 = v67;
          v69 = sub_222E16068(v66, v67, v78);

          *(v57 + 14) = v69;
          *(v57 + 22) = 2080;
          sub_222E16068(v77, v24, v78);
          OUTLINED_FUNCTION_21_2();
          *(v57 + 24) = v68;
          _os_log_impl(&dword_222E12000, v76, v56, "Got end request message for non-existing request, messageId: %s type: %s requestId: %s, current requestId is not set. Dropping the message", v57, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7();
LABEL_26:
          OUTLINED_FUNCTION_7();

          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }

    v30 = v3;
    sub_222E3FC24();

    v76 = sub_222E3FB04();
    v31 = sub_222E3FFA4();

    if (os_log_type_enabled(v76, v31))
    {
      v32 = swift_slowAlloc();
      v78[0] = swift_slowAlloc();
      *v32 = 136315906;
      sub_222E3F974();
      OUTLINED_FUNCTION_0_8();
      sub_222E16B58(v33, v34);
      sub_222E40264();
      v35 = OUTLINED_FUNCTION_16_2();
      v36(v35, v72);
      v37 = OUTLINED_FUNCTION_14_2();
      v40 = sub_222E16068(v37, v38, v39);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      swift_getObjectType();
      v41 = sub_222E403A4();
      v43 = v42;
      sub_222E16068(v41, v42, v78);
      OUTLINED_FUNCTION_25_3();

      *(v32 + 14) = v30;
      *(v32 + 22) = 2080;
      sub_222E16068(v77, v24, v78);
      OUTLINED_FUNCTION_21_2();
      *(v32 + 24) = v43;
      *(v32 + 32) = 2080;
      v44 = sub_222E210A0();
      if (v44)
      {
        v46 = *(v44 + 64);
        v45 = *(v44 + 72);
        sub_222E3FC24();
      }

      else
      {
        v45 = 0xE700000000000000;
        v46 = 0x74657320746F6ELL;
      }

      sub_222E16068(v46, v45, v78);
      OUTLINED_FUNCTION_21_2();
      *(v32 + 34) = v46;
      _os_log_impl(&dword_222E12000, v76, v31, "Got end request message to non exists request, messageId: %s type: %s requestId: %s, current requestId: %s dropping the message", v32, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      goto LABEL_26;
    }

LABEL_21:

    OUTLINED_FUNCTION_12();

    return;
  }

  v27 = *(v25 + 64);
  v26 = *(v25 + 72);
  sub_222E3FC24();

  if (v27 == v77 && v26 == v24)
  {
  }

  else
  {
    v29 = sub_222E40294();

    if ((v29 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_222E21784();
  v47 = sub_222E210A0();
  if (v47)
  {
    v48 = *(v47 + 88);
    OUTLINED_FUNCTION_25_3();

    v49 = *(v1 + 80);
    v50 = swift_allocObject();
    v50[2] = v77;
    v50[3] = v24;
    v50[4] = v1;
    OUTLINED_FUNCTION_2_0(v50);
    v78[1] = 1107296256;
    v78[2] = sub_222E21700;
    v78[3] = &block_descriptor_10;
    v51 = _Block_copy(v78);

    sub_222E3FB64();
    OUTLINED_FUNCTION_3_4();
    sub_222E16B58(v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    sub_222E3FFF4();
    _Block_release(v51);

    (*(v75 + 8))(v11, v4);
    (*(v73 + 8))(v19, v74);

LABEL_27:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E23FA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E23FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_222E24058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_222E210A0();
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = *(v6 + 64);
  v7 = *(v6 + 72);
  sub_222E3FC24();

  if (v8 == a1 && v7 == a2)
  {
  }

  else
  {
    v10 = sub_222E40294();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      sub_222E3FC24();

      oslog = sub_222E3FB04();
      v11 = sub_222E3FF94();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_222E16068(a1, a2, &v19);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v19);
        _os_log_impl(&dword_222E12000, oslog, v11, "Request %s for bridge %s was already changed, not setting processor to 'nil'", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD12D0](v13, -1, -1);
        MEMORY[0x223DD12D0](v12, -1, -1);
      }

      return;
    }
  }

  sub_222E3FC24();

  v14 = sub_222E3FB04();
  v15 = sub_222E3FF94();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_222E16068(a1, a2, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v19);
    _os_log_impl(&dword_222E12000, v14, v15, "Setting request processor of requestId %s for bridge %s to 'nil'", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v17, -1, -1);
    MEMORY[0x223DD12D0](v16, -1, -1);
  }

  sub_222E2172C(0);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_222E243C8()
{
  if (sub_222E3F914() == *(v0 + 64) && v1 == *(v0 + 72))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_222E40294();
  }

  return v3 & 1;
}

uint64_t sub_222E24480()
{
  OUTLINED_FUNCTION_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_222E3FB14();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12 + 8);

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_222E245CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222E24638()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222E246B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222E1F59C();
  *a2 = result;
  return result;
}

uint64_t sub_222E246EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222E1BC88();
  *a2 = result;
  return result;
}

uint64_t sub_222E2472C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222E24764(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E3FB14();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_222E247AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E3FB14();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_222E2495C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222E249D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  if (*(v0 + 72))
  {
    v4 = *(v0 + 80);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_222E24A38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222E210A0();
  *a2 = result;
  return result;
}

__n128 sub_222E24A6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_222E24AB4()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_222E24AE8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E24B30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_222E3C09C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_222E24B88()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_222E24BC8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222E24C90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222E1BE18();
  *a1 = result;
  return result;
}

void sub_222E24CD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_222E24D04();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_222E24D0C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_222E24D48(uint64_t a1, int a2)
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

uint64_t sub_222E24D68(uint64_t result, int a2, int a3)
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

void sub_222E24DA4(uint64_t a1, unint64_t *a2)
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

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:logger:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:logger:)();
  return v3;
}

void AsyncSequentialExecutor.init(label:priority:logger:)()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v66 = v2;
  v68 = v3;
  v62 = v4;
  v63 = v5;
  v60 = sub_222E3FB14();
  v6 = OUTLINED_FUNCTION_0(v60);
  v58 = v7;
  v61 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900) - 8) + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v67 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D430, &qword_222E41250);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  OUTLINED_FUNCTION_0(v65);
  v22 = v21;
  v56 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v25);
  v64 = &v53 - v26;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  v27 = OUTLINED_FUNCTION_0(v54);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v53 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v53 - v33;
  v57 = v1;
  swift_defaultActor_initialize();
  (*(v15 + 104))(v20, *MEMORY[0x277D85778], v13);
  v55 = v34;
  v35 = v64;
  sub_222E3FE84();
  (*(v15 + 8))(v20, v13);
  (*(v22 + 16))(v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation, v35, v65);
  v36 = v58;
  v37 = *(v58 + 16);
  v38 = v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_logger;
  v39 = v66;
  v40 = v60;
  v37(v38, v66, v60);
  sub_222E1DE5C(v68, v67);
  v41 = v54;
  (*(v29 + 16))(&v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v54);
  v42 = v59;
  v37(v59, v39, v40);
  v43 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v44 = v36;
  v45 = (v31 + *(v36 + 80) + v43) & ~*(v36 + 80);
  v46 = (v61 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = v41;
  (*(v29 + 32))(v47 + v43, v53, v41);
  (*(v44 + 32))(v47 + v45, v42, v40);
  v49 = (v47 + v46);
  v50 = v63;
  *v49 = v62;
  v49[1] = v50;
  sub_222E25D9C();
  v52 = v51;
  (*(v44 + 8))(v66, v40);
  sub_222E1D92C(v68);
  (*(v56 + 8))(v64, v65);
  (*(v29 + 8))(v55, v48);
  *(v57 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_task) = v52;
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E25364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D450, &qword_222E41370);
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E25434);
}

uint64_t sub_222E25434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_3_0();
  v15 = *(v14 + 128);
  v16 = *(v14 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  sub_222E3FEC4();
  v17 = *(MEMORY[0x277D85798] + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_8(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_1(v19);

  return MEMORY[0x2822003E8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_222E254C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_222E255B0);
}

uint64_t sub_222E255B0()
{
  v30 = v0;
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v0[18] = v0[3];
  v0[19] = v3;
  v0[20] = v2;
  if (v1)
  {
    v4 = v0[11];

    sub_222E3FC24();
    v5 = sub_222E3FB04();
    v6 = sub_222E3FF94();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_10();
      v8 = OUTLINED_FUNCTION_9_0();
      v29 = v8;
      *v7 = 136315138;
      sub_222E3FC24();
      v9 = sub_222E16068(v3, v2, &v29);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_222E12000, v5, v6, "#AsyncSequentialExecutor Starting async task: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v28 = (v1 + *v1);
    v10 = v1[1];
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_222E258E0;

    return v28();
  }

  v13 = v0[13];
  v14 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v15 = sub_222E3FF14();
  sub_222E3FC24();
  v16 = sub_222E3FB04();
  v17 = sub_222E3FF94();

  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v20 = v0[12];
      v19 = v0[13];
      v21 = OUTLINED_FUNCTION_10();
      v22 = OUTLINED_FUNCTION_9_0();
      v29 = v22;
      *(v21 + 4) = OUTLINED_FUNCTION_13(4.8149e-34, v22);
      v23 = "#AsyncSequentialExecutor main loop was canceled for %s";
LABEL_12:
      _os_log_impl(&dword_222E12000, v16, v17, v23, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }
  }

  else if (v18)
  {
    v25 = v0[12];
    v24 = v0[13];
    v21 = OUTLINED_FUNCTION_10();
    v22 = OUTLINED_FUNCTION_9_0();
    v29 = v22;
    *(v21 + 4) = OUTLINED_FUNCTION_13(4.8149e-34, v22);
    v23 = "#AsyncSequentialExecutor main loop ended cleanly for %s";
    goto LABEL_12;
  }

  v26 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_222E258E0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_222E25B74;
  }

  else
  {
    v7 = sub_222E259E4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_222E259E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = v14;
  v15 = v14[20];
  v16 = v14[18];
  v17 = v14[11];

  sub_222E3FC24();
  v18 = sub_222E3FB04();
  v19 = sub_222E3FF94();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[20];
  if (v20)
  {
    v22 = v14[18];
    v23 = v14[19];
    v24 = OUTLINED_FUNCTION_10();
    v25 = OUTLINED_FUNCTION_9_0();
    v41 = v25;
    *v24 = 136315138;
    sub_222E3FC24();
    v26 = sub_222E16068(v23, v21, &v41);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_222E12000, v18, v19, "#AsyncSequentialExecutor Ending async task: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v27 = v14[18];
  }

  v28 = *(MEMORY[0x277D85798] + 4);
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_8(v29);
  *v30 = v31;
  v32 = OUTLINED_FUNCTION_1(v30);

  return MEMORY[0x2822003E8](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_222E25B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v51 = v14;
  v15 = v14[22];
  v16 = v14[20];
  v17 = v14[18];
  v18 = v14[11];

  sub_222E3FC24();
  v19 = v15;
  v20 = sub_222E3FB04();
  v21 = sub_222E3FFA4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v14[22];
    v23 = v14[19];
    v24 = v14[20];
    v25 = v14[18];
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v26 = 136315394;
    sub_222E3FC24();
    v27 = sub_222E16068(v23, v24, &v50);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    swift_getErrorValue();
    v29 = v14[6];
    v28 = v14[7];
    v30 = v14[8];
    v31 = sub_222E402D4();
    v33 = sub_222E16068(v31, v32, &v50);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_222E12000, v20, v21, "#AsyncSequentialExecutor async task %s threw an exception: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v34 = v14[22];
    v35 = v14[20];
    v36 = v14[18];
  }

  v37 = *(MEMORY[0x277D85798] + 4);
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_8(v38);
  *v39 = v40;
  v41 = OUTLINED_FUNCTION_1(v39);

  return MEMORY[0x2822003E8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

void sub_222E25D9C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900) - 8) + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_222E1DE5C(v5, v23 - v10);
  v12 = sub_222E3FE74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_222E1D92C(v11);
  }

  else
  {
    sub_222E3FE64();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_222E3FE34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_222E3FD04() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_222E1D92C(v5);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_222E1D92C(v5);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E260E0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_task);
  v2 = *(MEMORY[0x277D857E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_222E2618C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](v3, v1, v4);
}

uint64_t sub_222E2618C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_222E26278);
}

uint64_t type metadata accessor for AsyncSequentialExecutor()
{
  result = qword_28131F7A8;
  if (!qword_28131F7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222E26300(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_222E3FB14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_222E1BB78;

  return sub_222E25364(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_222E2649C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_222E26510(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_222E16068(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_222E2656C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D448, &qword_222E41350);
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

_BYTE **sub_222E26660(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_222E26678()
{
  sub_222E26A30();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_222E3FB14();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AsyncSequentialExecutor.awaitMainLoopExit()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_222E2694C;

  return v6();
}

uint64_t sub_222E2694C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_222E26A30()
{
  if (!qword_28131F1D8)
  {
    v0 = sub_222E3FEB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28131F1D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SimpleSubscriptionRegistrar.Error(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222E26AD0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_5(v4);

  return v6(v5);
}

uint64_t static AutoBugCapture.generateSnapshot(type:subType:context:)()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = sub_222E3F7F4();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_222E3F7E4();
    sub_222E3F7D4();
  }

  return result;
}

void sub_222E26CBC(char a1)
{
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v2 = sub_222E3FB14();
  __swift_project_value_buffer(v2, qword_28131FFA0);
  oslog = sub_222E3FB04();
  v3 = sub_222E3FFC4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_222E12000, oslog, v3, "AutoBugCapture#generateSnapshot ABC result: %{BOOL}d", v4, 8u);
    MEMORY[0x223DD12D0](v4, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for InsightRequestSummaryMessageDescription(unsigned int *a1, int a2)
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

_BYTE *sub_222E26E3C(_BYTE *result, int a2, int a3)
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

void Bridge.defaultHandle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a3;
  v49 = a5;
  v9 = sub_222E3F794();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v13 = sub_222E3FB14();
  __swift_project_value_buffer(v13, qword_28131FFA0);
  swift_unknownObjectRetain();
  v14 = a1;
  v15 = sub_222E3FB04();
  v16 = sub_222E3FF94();

  swift_unknownObjectRelease();
  v17 = os_log_type_enabled(v15, v16);
  v47 = a6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = a4;
    v21 = v20;
    v52 = v20;
    *v18 = 136315394;
    v22 = sub_222E3FA64();
    v24 = sub_222E16068(v22, v23, &v52);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v14;
    v25 = v14;
    _os_log_impl(&dword_222E12000, v15, v16, "Bridge:%s received %@", v18, 0x16u);
    sub_222E21E14(v19);
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v26 = v48;
  if (v48)
  {
    v27 = objc_allocWithZone(MEMORY[0x277D47210]);

    v28 = [v27 init];
    sub_222E3F784();
    sub_222E3F744();
    (*(v45 + 8))(v12, v46);
    v29 = sub_222E3FCA4();

    [v28 setAceId_];

    v30 = v28;
    v31 = [v14 aceId];
    [v30 setRefId_];

    v52 = 0;
    v53 = 0xE000000000000000;
    sub_222E40144();

    v52 = 0x20656764697242;
    v53 = 0xE700000000000000;
    v32 = sub_222E3FA64();
    MEMORY[0x223DD0550](v32);

    MEMORY[0x223DD0550](0xD00000000000001ALL, 0x8000000222E42AE0);
    v33 = [v14 encodedClassName];
    if (v33)
    {
      v34 = v33;
      v35 = sub_222E3FCB4();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = objc_opt_self();
    v50 = v35;
    v51 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D458, "T&");
    v39 = sub_222E3FCF4();
    MEMORY[0x223DD0550](v39);

    v40 = sub_222E3FCA4();

    v41 = [v38 errorWithCode:2000 description:v40];

    v42 = v30;
    v43 = v41;
    v26(v30, v41);

    sub_222E19224(v26);
  }
}

uint64_t XPCListeningBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v8 = sub_222E3FB14();
  __swift_project_value_buffer(v8, qword_28131FFA0);
  v9 = sub_222E3FB04();
  v10 = sub_222E3FFA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_222E12000, v9, v10, "Attempting to initialize an XPCListeningBridge without an XPCListener, this is not supported. Please use a different implementation if an XPCListener is not required. ", v11, 2u);
    OUTLINED_FUNCTION_7();
  }

  sub_222E15C70(a3, v15);
  sub_222E15C70(a6, v14);
  type metadata accessor for EmptyBridgeConnectionListener();
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  sub_222E29BDC();
  v12 = sub_222E3FA24();
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v12;
}

void sub_222E27550(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_222E275C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_222E3FB34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_222E27704(v7);
}

uint64_t sub_222E27690@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_281320048;
  OUTLINED_FUNCTION_27_0();
  v4 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_222E27704(uint64_t a1)
{
  v3 = qword_281320048;
  OUTLINED_FUNCTION_24();
  v4 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_222E277D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222E21118(v4);
}

uint64_t sub_222E27850(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_222E3FC24();
  return sub_222E1BD80(v4);
}

void CandidateRequestAwareBridgeBase.__allocating_init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_222E3FB14();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  sub_222E15C70(v8, v24);
  sub_222E15C70(v2, v23);
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_28131FFA0);
  (*(v16 + 16))(v21, v22, v13);
  (*(v0 + 440))(v12, v10, v24, v6, v4, v23, v21, 1);
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.__allocating_init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)();
  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v28 = v7;
  v29 = v8;
  v10 = v9;
  v26 = v11;
  v27 = v12;
  v13 = sub_222E3FB14();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = qword_281320048;
  *(v0 + qword_281320048) = 500;
  v23 = *MEMORY[0x277D85178];
  v24 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v24);
  (*(v25 + 104))(v0 + v22, v23);
  *(v0 + qword_281320050) = 0;
  *(v0 + qword_281320058) = MEMORY[0x277D84F98];
  *(v0 + qword_28131FED0) = v2;
  sub_222E15C70(v10, v31);
  sub_222E15C70(v6, v30);
  (*(v16 + 16))(v21, v4, v13);
  MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(v26, v27, v31, v28, v29, v30, v21);
  (*(v16 + 8))(v4, v13);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E27C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222E18808(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  result = *v6;
  v8 = v6[1];
  return result;
}

void sub_222E27CA4()
{
  OUTLINED_FUNCTION_11();
  v29 = v1;
  v30 = v2;
  v3 = v0;
  v28 = v4;
  v6 = v5;
  v7 = *v3;
  v8 = sub_222E3FB14();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v27 = *v6;
  swift_getMetatypeMetadata();
  v17 = sub_222E3FCF4();
  v19 = v18;
  sub_222E22984();
  v31[0] = v17;
  v31[1] = v19;
  v20 = *(v7 + 328);
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  sub_222E3FC24();
  sub_222E3FC64();

  if (v32)
  {

    sub_222E3FC24();
    v21 = sub_222E3FB04();
    v22 = sub_222E3FFA4();

    if (OUTLINED_FUNCTION_41())
    {
      v23 = OUTLINED_FUNCTION_10();
      v24 = OUTLINED_FUNCTION_9_0();
      v31[0] = v24;
      *v23 = 136315138;
      v25 = sub_222E16068(v17, v19, v31);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_222E12000, v21, v22, "Message type: %s is already registered. Ignoring this request", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandler();
    (*(v11 + 16))(v16, v3 + qword_28131FFC0, v8);
    LOBYTE(v31[0]) = v27;

    v26 = v30(v28, v29, v16, v31);
    v33 = v19;
    v34 = v26;
    v32 = v17;
    OUTLINED_FUNCTION_24();
    sub_222E3FC54();
    sub_222E3FC74();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E27F7C(uint64_t a1, uint64_t a2)
{
  sub_222E29498();
  swift_allocError();
  *v4 = a1;
  v4[1] = a2;
  swift_willThrow();
  return sub_222E3FC24();
}

void sub_222E27FE0()
{
  OUTLINED_FUNCTION_11();
  v105 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v113 = *v0;
  v10 = sub_222E3FB54();
  v11 = OUTLINED_FUNCTION_0(v10);
  v108 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = sub_222E3FB84();
  v19 = OUTLINED_FUNCTION_0(v18);
  v106 = v20;
  v107 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = [v9 refId];
  if (v26)
  {
    v27 = v26;
    v103 = v10;
    v104 = v7;
    v109 = v5;
    v111 = v3;
    v28 = sub_222E3FCB4();
    v30 = v29;

    if (sub_222E1F59C())
    {
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;
        v33 = *(v31 + 64) == v28 && *(v31 + 72) == v30;
        if (v33 || (sub_222E40294() & 1) != 0)
        {

          v34 = sub_222E3FB04();
          sub_222E3FF94();
          OUTLINED_FUNCTION_20();
          if (os_log_type_enabled(v34, v35))
          {
            *OUTLINED_FUNCTION_28() = 0;
            OUTLINED_FUNCTION_25();
            _os_log_impl(v36, v37, v38, v39, v40, 2u);
            OUTLINED_FUNCTION_9();
          }

          v41 = *(v32 + 88);
          v101 = *(v32 + 80);
          v42 = v41;

          OUTLINED_FUNCTION_33();
          v43 = swift_allocObject();
          v44 = OUTLINED_FUNCTION_31_0(v43, v113);
          v44[6] = v105;
          v44[7] = v32;
          v44[8] = v9;
          v44[9] = v7;
          v44[10] = v109;
          v44[11] = v111;
          OUTLINED_FUNCTION_8_0(v44);
          v115 = 1107296256;
          OUTLINED_FUNCTION_0_2();
          v116 = v45;
          v117 = &block_descriptor_6;
          v46 = _Block_copy(&v114);

          v47 = v9;
          v48 = v7;
          sub_222E1F6C8(v109);
          sub_222E3FB64();
          sub_222E1F670();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
          sub_222E1F60C();
          OUTLINED_FUNCTION_38();
          sub_222E400F4();
          v49 = OUTLINED_FUNCTION_36();
          MEMORY[0x223DD0840](v49);
          _Block_release(v46);

          (*(v108 + 8))(v17, v103);
LABEL_21:
          (*(v106 + 8))(v25, v107);

          goto LABEL_27;
        }
      }
    }

    v68 = sub_222E1BC88();
    v69 = OUTLINED_FUNCTION_34();
    v71 = sub_222E1F444(v69, v70, v68);

    if (v71)
    {
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = v72;
        v74 = sub_222E3FB04();
        sub_222E3FF94();
        OUTLINED_FUNCTION_20();
        if (os_log_type_enabled(v74, v75))
        {
          *OUTLINED_FUNCTION_28() = 0;
          OUTLINED_FUNCTION_25();
          _os_log_impl(v76, v77, v78, v79, v80, 2u);
          OUTLINED_FUNCTION_9();
        }

        v81 = *(v73 + 88);
        v102 = *(v73 + 80);
        OUTLINED_FUNCTION_33();
        v82 = swift_allocObject();
        v83 = OUTLINED_FUNCTION_31_0(v82, v113);
        v83[6] = v105;
        v83[7] = v73;
        v83[8] = v9;
        v83[9] = v104;
        v83[10] = v109;
        v83[11] = v111;
        OUTLINED_FUNCTION_8_0(v83);
        v115 = 1107296256;
        OUTLINED_FUNCTION_0_2();
        v116 = v84;
        v117 = &block_descriptor;
        v85 = _Block_copy(&v114);

        v86 = v9;
        v87 = v104;
        sub_222E1F6C8(v109);
        v88 = v102;
        v89 = v81;

        sub_222E3FB64();
        sub_222E1F670();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
        sub_222E1F60C();
        OUTLINED_FUNCTION_38();
        sub_222E400F4();
        v90 = OUTLINED_FUNCTION_36();
        MEMORY[0x223DD0840](v90);
        _Block_release(v85);

        (*(v108 + 8))(v17, v103);
        goto LABEL_21;
      }
    }

    v91 = v9;
    v92 = sub_222E3FB04();
    v93 = sub_222E3FF94();

    if (OUTLINED_FUNCTION_41())
    {
      v94 = OUTLINED_FUNCTION_10();
      v95 = OUTLINED_FUNCTION_9_0();
      v114 = v95;
      *v94 = 136315138;
      v96 = [v91 debugDescription];
      sub_222E3FCB4();

      v97 = OUTLINED_FUNCTION_22_0();
      v100 = sub_222E16068(v97, v98, v99);

      *(v94 + 4) = v100;
      _os_log_impl(&dword_222E12000, v92, v93, "Could not find a RequestProcessor for this command: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v50 = v9;
    v51 = sub_222E3FB04();
    sub_222E3FFA4();

    if (OUTLINED_FUNCTION_44())
    {
      v112 = v3;
      v52 = OUTLINED_FUNCTION_10();
      v110 = v5;
      v53 = OUTLINED_FUNCTION_9_0();
      v114 = v53;
      *v52 = 136446210;
      v54 = [v50 debugDescription];
      v55 = sub_222E3FCB4();
      v56 = v7;
      v58 = v57;

      v59 = sub_222E16068(v55, v58, &v114);
      v7 = v56;

      *(v52 + 4) = v59;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      v5 = v110;
      OUTLINED_FUNCTION_7();
      v3 = v112;
      OUTLINED_FUNCTION_7();
    }

    v65 = *(v113 + 328);
    v66 = type metadata accessor for CandidateRequestAwareBridgeBase();
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();
    Bridge.defaultHandle(_:executionContextInfo:reply:)(v50, v7, v5, v3, v66, WitnessTable);
  }

LABEL_27:
  OUTLINED_FUNCTION_12();
}

void sub_222E28770(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v9 = *v4;
  sub_222E27FE0();
  if ((v10 & 1) == 0)
  {
    v11 = *(v9 + 328);
    v12 = type metadata accessor for CandidateRequestAwareBridgeBase();
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();

    Bridge.defaultHandle(_:executionContextInfo:reply:)(a1, a2, a3, a4, v12, WitnessTable);
  }
}

void sub_222E28834()
{
  OUTLINED_FUNCTION_11();
  v30 = v2;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_222E3FB54();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v34 = sub_222E3FB84();
  v21 = OUTLINED_FUNCTION_0(v34);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v32 = *(v9 + 88);
  v33 = *(v9 + 80);
  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = v31;
  v26[4] = v30;
  v26[5] = v7;
  v26[6] = v11;
  v26[7] = v0;
  OUTLINED_FUNCTION_2_0(v26);
  v35[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  v35[2] = v27;
  v35[3] = &block_descriptor_12;
  v28 = _Block_copy(v35);

  v29 = v11;

  sub_222E3FB64();
  sub_222E1F670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
  sub_222E1F60C();
  OUTLINED_FUNCTION_21();
  MEMORY[0x223DD0840](v32, v1, v20, v28);
  _Block_release(v28);
  (*(v15 + 8))(v20, v12);
  (*(v23 + 8))(v1, v34);

  OUTLINED_FUNCTION_12();
}

void sub_222E28C2C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = sub_222E3F794();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  swift_getObjectType();
  v13 = qword_28131FFC0;
  v14 = sub_222E3FB04();
  v15 = sub_222E3FF94();
  v47 = v12;
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_10();
    *&v49 = OUTLINED_FUNCTION_11_0();
    *v13 = 136446210;
    v16 = sub_222E403A4();
    v18 = sub_222E16068(v16, v17, &v49);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_222E12000, v14, v15, "Starting candidate request with message: %{public}s", v13, 0xCu);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v19 = sub_222E3F914();
  v21 = v20;
  v22 = sub_222E1BC88();
  v23 = OUTLINED_FUNCTION_35();
  v25 = sub_222E1F444(v23, v24, v22);

  if (v25)
  {
    sub_222E3FC24();
    v26 = sub_222E3FB04();
    v27 = sub_222E3FFA4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_29();
      *&v49 = OUTLINED_FUNCTION_45();
      *v28 = 136315394;
      v29 = sub_222E403A4();
      v31 = sub_222E16068(v29, v30, &v49);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_222E16068(v19, v21, &v49);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_222E12000, v26, v27, "Not creating a CandidateRequestProcessor for message: %s because there is already a candidate request started with requestId: %s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_0();
    }

    else
    {
    }

    sub_222E21160();
  }

  else
  {
    sub_222E3F924();
    v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4E0, &qword_222E41590);
    v46 = v19;
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      v33 = sub_222E3F9D4();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(&v49);
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      sub_222E1D890(&v49, &qword_27D04D4E8, &qword_222E41598);
      v33 = sub_222E3F914();
      v35 = v36;
    }

    v37 = sub_222E3F954();
    v39 = v38;
    sub_222E3F934();
    v40 = (*(*v1 + 472))(v46, v21, v37, v39, v47, 1, v33, v35);
    v41 = *(v7 + 8);
    v42 = OUTLINED_FUNCTION_22_0();
    v43(v42);

    v44 = qword_281320058;
    OUTLINED_FUNCTION_24();

    v45 = *(v1 + v44);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v1 + v44);
    sub_222E3D6DC(v40, v46, v21);
    *(v1 + v44) = v48;

    swift_endAccess();
    sub_222E21160();
  }

  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.__allocating_init(_:_:_:_:_:_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_222E29268()
{
  v1 = qword_281320048;
  v2 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_281320050);

  v5 = *(v0 + qword_281320058);
}

uint64_t CandidateRequestAwareBridgeBase.deinit()
{
  v0 = MessageDispatchingBridgeBase.deinit();
  v1 = qword_281320048;
  v2 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_281320050);

  v5 = *(v0 + qword_281320058);

  return v0;
}

uint64_t CandidateRequestAwareBridgeBase.__deallocating_deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static RequestProcessorCreationError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222E40294();
  }
}

unint64_t sub_222E29498()
{
  result = qword_27D04D468;
  if (!qword_27D04D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D468);
  }

  return result;
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

uint64_t sub_222E2954C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  return sub_222E28A4C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_222E2955C()
{
  result = sub_222E3FB34();
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

uint64_t dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)()
{
  return (*(*v0 + 448))();
}

{
  return (*(*v0 + 456))();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222E29880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_222E298C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_222E2996C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_222E18808(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4D8, &unk_222E428B0);
  sub_222E40224();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  type metadata accessor for RequestProcessorBase();
  sub_222E40234();
  *v3 = v13;
  return v11;
}

BOOL OUTLINED_FUNCTION_41()
{

  return os_log_type_enabled(v0, v1);
}

void sub_222E29AB8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_222E3F754();
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:v3];

  sub_222E3F774();
}

id sub_222E29BDC()
{
  OUTLINED_FUNCTION_0_3();
  v3 = objc_allocWithZone(v1);
  v4 = sub_222E3FCA4();

  v5 = sub_222E3FCA4();

  OUTLINED_FUNCTION_1_0();
  v8 = [v6 v7];

  return v8;
}

id sub_222E29C80()
{
  OUTLINED_FUNCTION_0_3();
  v3 = sub_222E3FCA4();

  v4 = sub_222E3FCA4();

  v9 = type metadata accessor for EmptyBridgeConnectionListener();
  OUTLINED_FUNCTION_1_0();
  v7 = objc_msgSendSuper2(v5, v6, v1, v9);

  return v7;
}

id sub_222E29E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyBridgeConnectionListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222E29EF0()
{
  sub_222E2B954();
  result = sub_222E400A4();
  qword_281320000 = result;
  return result;
}

uint64_t sub_222E29F58()
{
  v0 = sub_222E3FB14();
  __swift_allocate_value_buffer(v0, qword_281320008);
  __swift_project_value_buffer(v0, qword_281320008);
  if (qword_28131FB40 != -1)
  {
    swift_once();
  }

  v1 = qword_281320000;
  return sub_222E3FB24();
}

uint64_t sub_222E29FE4()
{
  OUTLINED_FUNCTION_61();
  if (v0)
  {
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v1 = qword_281320000;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_8_1();
    return sub_222E3FAB4();
  }

  else
  {
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v3 = qword_281320000;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_8_1();

    return sub_222E3FAC4();
  }
}

uint64_t sub_222E2A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_61();
  if (qword_28131FB40 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v11 = qword_281320000;
  sub_222E3FAD4();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_222E40054();
    OUTLINED_FUNCTION_8_1();

    return sub_222E3FAC4();
  }

  else
  {
    sub_222E3FC24();
    sub_222E40054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D540, &unk_222E41960);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222E41650;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222E143F8();
    *(v12 + 32) = a7;
    *(v12 + 40) = a8;
    sub_222E3FAB4();
  }
}

uint64_t sub_222E2A278()
{
  sub_222E40044();
  if (qword_28131FB40 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_8_1();

  return sub_222E3FAC4();
}

char *sub_222E2A304()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 2);

  os_unfair_lock_lock(v3 + 4);
  sub_222E2B930(v4, &v12);
  os_unfair_lock_unlock(v3 + 4);

  v5 = *(v0 + 2);

  v6 = *(*v0 + 104);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v9 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0(v9);
  (*(v10 + 8))(&v1[v6]);
  return v1;
}

uint64_t sub_222E2A408@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(*a1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  result = __swift_getEnumTagSinglePayload(v4, 1, v7);
  v9 = result;
  if (!result)
  {
    v10 = *(v4 + *(v7 + 36));

    sub_222E3FEE4();
  }

  *a2 = v9 != 0;
  return result;
}

uint64_t sub_222E2A50C()
{
  sub_222E2A304();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222E2A564()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_222E2A59C();
  return v3;
}

uint64_t *sub_222E2A59C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D520, &qword_222E418F8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[2] = v2;
  OUTLINED_FUNCTION_37_0();
  v4 = *(v3 + 104);
  v5 = *(v1 + 80);
  OUTLINED_FUNCTION_37_0();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v8);
  return v0;
}

uint64_t sub_222E2A67C(uint64_t a1)
{
  swift_defaultActor_initialize();
  swift_beginAccess();
  *(v1 + 112) = *(a1 + 16);
  swift_beginAccess();
  v3 = *(a1 + 24);
  sub_222E3FC24();
  sub_222E3FC24();

  *(v1 + 120) = v3;
  return v1;
}

uint64_t sub_222E2A708()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_222E2A738()
{
  v0 = sub_222E2A708();

  return MEMORY[0x282200960](v0);
}

uint64_t ActorBridgeWrapper.name.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_222E3FC24();
  return OUTLINED_FUNCTION_39_0();
}

uint64_t sub_222E2A79C()
{
  v1 = *(*(v0 + 112) + 112);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(*(v0 + 112) + 112);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = *(*(v1 + 56) + ((v8 << 10) | (16 * v11)));
    sub_222E3F984();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v13 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_222E2B378(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v14 = *(v9 + 16);
      v15 = *(v9 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v19 = v14 + 1;
        v17 = v9;
        v18 = *(v9 + 16);
        result = sub_222E2B378(v15 > 1, v14 + 1, 1, v17);
        v14 = v18;
        v16 = v19;
        v9 = result;
      }

      *(v9 + 16) = v16;
      *(v9 + 8 * v14 + 32) = v13;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222E2A91C()
{
  v1 = v0[54];
  v2 = v0[33];
  v6 = v0[32];
  v3 = v0[31];
  sub_222E40044();
  sub_222E3FAC4();
  v4 = *(v6 + 8);

  return v4(v2, v3);
}

uint64_t sub_222E2A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  v25 = *(v22 + 264);
  v26 = *(v22 + 248);
  v27 = *(v22 + 184);
  v28 = *(v22 + 168);

  *(v22 + 80) = v25;
  v29 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F0, &unk_222E415A0);
  v30 = swift_dynamicCast();
  v31 = *(v22 + 264);
  if (v30)
  {
    v32 = *(v22 + 144);
    v33 = *(v22 + 104);

    sub_222E3FC24();
    v34 = sub_222E3FB04();
    sub_222E3FFA4();

    if (OUTLINED_FUNCTION_43_0())
    {
      v35 = *(v22 + 152);
      v36 = *(v22 + 160);
      v38 = *(v22 + 136);
      v37 = *(v22 + 144);
      OUTLINED_FUNCTION_29();
      a11 = OUTLINED_FUNCTION_49();
      *v32 = 136446466;
      v39 = OUTLINED_FUNCTION_53();
      v41 = v40(v39);
      OUTLINED_FUNCTION_66(v41, v42, v43, v44);
      OUTLINED_FUNCTION_41_0();

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v45 = OUTLINED_FUNCTION_59();
      *(v32 + 14) = sub_222E16068(v45, v46, v47);
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    (*(*(v22 + 176) + 8))(*(v22 + 184), *(v22 + 168));
    v53 = *(v22 + 80);
  }

  else
  {
    v54 = *(v22 + 208);
    v55 = *(v22 + 192);

    *(v22 + 88) = v31;
    v56 = v31;
    v57 = swift_dynamicCast();
    v58 = *(v22 + 264);
    v59 = *(v22 + 144);
    v60 = *(v22 + 104);
    if (v57)
    {

      sub_222E3FC24();
      v61 = sub_222E3FB04();
      sub_222E3FF94();

      if (OUTLINED_FUNCTION_43_0())
      {
        v62 = *(v22 + 152);
        v63 = *(v22 + 160);
        v65 = *(v22 + 136);
        v64 = *(v22 + 144);
        OUTLINED_FUNCTION_29();
        a11 = OUTLINED_FUNCTION_49();
        *v59 = 136446466;
        v66 = OUTLINED_FUNCTION_59();
        *(v59 + 4) = sub_222E16068(v66, v67, v68);
        *(v59 + 12) = 2082;
        v69 = OUTLINED_FUNCTION_53();
        v71 = v70(v69);
        OUTLINED_FUNCTION_66(v71, v72, v73, v74);
        OUTLINED_FUNCTION_41_0();

        *(v59 + 14) = v63;
        OUTLINED_FUNCTION_7_1();
        _os_log_impl(v75, v76, v77, v78, v79, 0x16u);
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_9();
      }

      (*(*(v22 + 200) + 8))(*(v22 + 208), *(v22 + 192));
      v53 = *(v22 + 88);
    }

    else
    {

      sub_222E3FC24();
      v80 = v58;
      v81 = sub_222E3FB04();
      v82 = sub_222E3FFA4();

      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v22 + 264);
      if (v83)
      {
        v85 = *(v22 + 152);
        v86 = *(v22 + 160);
        v87 = *(v22 + 136);
        a9 = *(v22 + 144);
        a10 = v22 + 56;
        v88 = swift_slowAlloc();
        a11 = swift_slowAlloc();
        *v88 = 136446722;
        v89 = (*(v86 + 32))(v85, v86);
        v93 = OUTLINED_FUNCTION_66(v89, v90, v91, v92);

        *(v88 + 4) = v93;
        *(v88 + 12) = 2082;
        *(v88 + 14) = sub_222E16068(v87, a9, &a11);
        *(v88 + 22) = 2082;
        swift_getErrorValue();
        v95 = *(v22 + 56);
        v94 = *(v22 + 64);
        v96 = *(v22 + 72);
        v97 = sub_222E402D4();
        OUTLINED_FUNCTION_66(v97, v98, v99, v100);
        OUTLINED_FUNCTION_65();
        *(v88 + 24) = v22 + 80;
        _os_log_impl(&dword_222E12000, v81, v82, "Unknown error happened while %{public}s was processing %{public}s: %{public}s.", v88, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_7();

        goto LABEL_13;
      }

      v53 = v84;
    }
  }

LABEL_13:
  v101 = *(v22 + 240);
  v102 = *(v22 + 208);
  v103 = *(v22 + 184);

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36_0();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
}

uint64_t _s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_41_0();
  v8 = swift_allocObject();
  _s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufc(v4, a2, a3, a4);
  return v8;
}

void *_s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v5 = v4;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_35_0();
  type metadata accessor for ActorBridgeWrapper.TasksStorage();
  v4[15] = sub_222E2A564();
  v4[17] = (*(v8 + 32))(v9, v8);
  v4[18] = v18;
  v19 = type metadata accessor for SimpleSubscriptionRegistrar();
  swift_allocObject();
  v38 = sub_222E3D5DC();
  v20 = *(v8 + 40);
  v36 = a1;
  v37 = a2;
  v21 = v35;
  v22 = v20(a1, &v38, a2, v19, v34, &off_283636CC8, v17, v9, v8);
  if (v21)
  {
    (*(v31 + 32))(v33, v17, v32);

    v23 = v4[15];

    v24 = v4[18];

    OUTLINED_FUNCTION_35_0();
    type metadata accessor for ActorBridgeWrapper();
    swift_defaultActor_destroy();
    OUTLINED_FUNCTION_14(v37);
    (*(v25 + 8))();
    OUTLINED_FUNCTION_39_0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[16] = v22;
    OUTLINED_FUNCTION_35_0();
    type metadata accessor for ActorBridgeWrapper.MessageHandlersContainer();
    v26 = OUTLINED_FUNCTION_27_1();
    v27 = sub_222E2A640(v26);
    OUTLINED_FUNCTION_14(v37);
    (*(v28 + 8))();
    v5[14] = v27;
  }

  return v5;
}

void *ActorBridgeWrapper.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];
  swift_unknownObjectRelease();
  v4 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorBridgeWrapper.__deallocating_deinit()
{
  ActorBridgeWrapper.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_222E2B1C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for ActorBridgeWrapper();

  return Bridge.aceCommandsGroups()();
}

uint64_t sub_222E2B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for ActorBridgeWrapper();

  return Bridge.aceCommands(forGroup:)();
}

uint64_t sub_222E2B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = *(a5 + 88);
  v13 = type metadata accessor for ActorBridgeWrapper();

  return Bridge.handle(_:executionContextInfo:reply:)(a1, a2, a3, a4, v13, a6);
}

void *sub_222E2B2D8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&var1);
  if (!v2)
  {
    return var1;
  }

  return result;
}

uint64_t sub_222E2B310()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_27D04D550;
    v2 = &unk_222E42600;
  }

  else
  {
    v1 = &unk_27D04D548;
    v2 = &unk_222E41970;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_222E2B378(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_222E2B310();
      v11 = *(v10 + 52);
      v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      *(v13 + 16) = v8;
      *(v13 + 24) = 2 * ((v14 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_222E38330((a4 + 32), v8, (v13 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v13;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v13 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E2B46C(void (*a1)(void))
{
  a1();

  return sub_222E403A4();
}

uint64_t sub_222E2B4F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222E2B61C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer();
  result = sub_222E400C4();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_222E2B728()
{
  sub_222E3F794();
  if (v0 <= 0x3F)
  {
    sub_222E2B814();
    if (v1 <= 0x3F)
    {
      sub_222E2B878(319, &qword_28131F1D0, MEMORY[0x277D857B8]);
      if (v2 <= 0x3F)
      {
        sub_222E2B878(319, &qword_28131F1E0, MEMORY[0x277D85788]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222E2B814()
{
  if (!qword_28131F1C8)
  {
    v0 = sub_222E3FEF4();
    if (!v1)
    {
      atomic_store(v0, &qword_28131F1C8);
    }
  }
}

void sub_222E2B878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04D510, &qword_222E428A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_222E2B900@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222E2B2D8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_222E2B954()
{
  result = qword_28131F190;
  if (!qword_28131F190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F190);
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_47()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_222E3F934();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_50(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 144);
  *(v3 - 152) = v1;

  return sub_222E3F974();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_222E16068(a1, a2, va);
}