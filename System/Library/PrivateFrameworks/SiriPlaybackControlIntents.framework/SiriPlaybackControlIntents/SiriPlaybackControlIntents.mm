uint64_t sub_2688BD764@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_4();
  *a1 = result;
  return result;
}

uint64_t sub_2688BD790(uint64_t a1, id *a2)
{
  result = sub_268B37BD4();
  *a2 = 0;
  return result;
}

uint64_t sub_2688BD808(uint64_t a1, id *a2)
{
  v3 = sub_268B37BE4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2688BD888()
{
  sub_268B37BF4();
  v0 = sub_268B37BC4();

  return v0;
}

uint64_t sub_2688BD8C0()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2688BD91C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2688BD888();
  *a1 = result;
  return result;
}

uint64_t sub_2688BD944(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26891F56C();
}

uint64_t sub_2688BD950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2688EEF80(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2688BD9A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_268B37BC4();

  *a2 = v5;
  return result;
}

uint64_t sub_2688BD9E8()
{
  OUTLINED_FUNCTION_0();
  result = sub_2688E04CC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2688BDA1C(uint64_t a1)
{
  v2 = sub_2688BDCE4(&qword_2802A5228);
  v3 = sub_2688BDCE4(&unk_2802A5230);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2688BDAB4()
{
  v0 = sub_268B37BF4();
  v1 = MEMORY[0x26D625680](v0);

  return v1;
}

uint64_t sub_2688BDAEC()
{
  sub_268B37BF4();
  sub_268B37C54();
}

uint64_t sub_2688BDB40()
{
  sub_268B37BF4();
  sub_268B38514();
  sub_268B37C54();
  v0 = sub_268B38544();

  return v0;
}

void sub_2688BDC30(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2688BDCE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Port(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688BDDCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!sub_268B372F4() || (sub_2689619F4(), v6 = v5, v7 = v5, , v7 == 5))
  {
    (*(a2 + 32))(a1, a2);
    if (v8)
    {

      return 1;
    }

    else
    {
      return 5;
    }
  }

  return v6;
}

uint64_t sub_2688BDE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!sub_268B372F4())
  {
    return 0;
  }

  sub_268962000();
  v4 = v3;

  return v4;
}

void sub_2688BDEE0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v113 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  v101 = &v98 - v7;
  OUTLINED_FUNCTION_9();
  v8 = sub_268B35434();
  v9 = OUTLINED_FUNCTION_1(v8);
  v111 = v10;
  v112 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v104 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v98 - v21;
  OUTLINED_FUNCTION_9();
  v103 = type metadata accessor for MediaPlayerIntent();
  v22 = OUTLINED_FUNCTION_4(v103);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v99 = v25;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B35494();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v106 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v35 = &v98 - v34;
  v36 = sub_268B37A54();
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v100 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v107 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  v98 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v48 = __swift_project_value_buffer(v36, qword_2802CDA10);
  v49 = *(v39 + 16);
  v108 = v48;
  v109 = v49;
  v110 = v39 + 16;
  (v49)(v0);
  v50 = sub_268B37A34();
  v51 = sub_268B37F04();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_14();
    v105 = v29;
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "ResumeMediaRoutingFlow#on called", v52, 2u);
    v1 = v0;
    v29 = v105;
    OUTLINED_FUNCTION_12();
  }

  v53 = *(v39 + 8);
  v53(v0, v36);
  sub_268B35414();
  v54 = (*(v29 + 88))(v35, v26);
  if (v54 == *MEMORY[0x277D5C128] || v54 == *MEMORY[0x277D5C148] || v54 == *MEMORY[0x277D5C160])
  {
    (*(v29 + 8))(v35, v26);
    v57 = v106;
    sub_268B35414();
    v58 = v102;
    sub_26893BC0C(v57, 1, v59, v60, v61, v62, v63, v64, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    v65 = v103;
    if (__swift_getEnumTagSinglePayload(v58, 1, v103) == 1)
    {
      sub_2688C058C(v58, &qword_2802A5650, &unk_268B3BAC0);
      v66 = v98;
      v109(v98, v108, v36);
      v67 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v69);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v70, v71, "ResumeMediaRoutingFlow#on unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_6();
      }

      v53(v66, v36);
    }

    else
    {
      v86 = v58;
      v87 = v99;
      sub_2688C0464(v86, v99);
      sub_2688C0464(v87, v20);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v65);
      v88 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v20, v1 + v88, &qword_2802A5650, &unk_268B3BAC0);
      swift_endAccess();
      v89 = v100;
      v109(v100, v108, v36);
      v90 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v92);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v93, v94, "ResumeMediaRoutingFlow#on supported parse");
        OUTLINED_FUNCTION_12();
      }

      v53(v89, v36);
      v95 = v112;
      v96 = v101;
      (*(v111 + 16))(v101, v113, v112);
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v95);
      v97 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input;
      OUTLINED_FUNCTION_24();
      sub_2688C06A8(v96, v1 + v97, &qword_2802A5660, &qword_268B3B8E8);
      swift_endAccess();
    }
  }

  else
  {
    v102 = v26;
    v103 = v35;
    v72 = v107;
    v109(v107, v108, v36);
    v73 = v104;
    (*(v111 + 16))(v104, v113, v112);
    v74 = sub_268B37A34();
    v75 = sub_268B37EE4();
    if (os_log_type_enabled(v74, v75))
    {
      v77 = v73;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v113 = v53;
      v114 = v79;
      v80 = v79;
      *v78 = 136315138;
      sub_268B35414();
      v81 = v102;
      v82 = sub_268B37C24();
      v105 = v29;
      v84 = v83;
      (*(v111 + 8))(v77, v112);
      v85 = sub_26892CDB8(v82, v84, &v114);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_2688BB000, v74, v75, "ResumeMediaRoutingFlow#on received an unsupported parse type %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_6();

      v113(v107, v36);
      v29 = v105;
    }

    else
    {

      (*(v111 + 8))(v73, v112);
      v53(v72, v36);
      v81 = v102;
    }

    (*(v29 + 8))(v103, v81);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688BE6E0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v64 = v2;
  v65 = v3;
  v58 = *v0;
  v59 = sub_268B36C04();
  v4 = OUTLINED_FUNCTION_1(v59);
  v57 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v56 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for MediaPlayerIntent();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v62 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v60 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v61 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v30 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v31 = *(v23 + 16);
  v63 = v30;
  v31(v0);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    v55 = v14;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "ResumeMediaRoutingFlow#execute called", v34, 2u);
    v1 = v0;
    v14 = v55;
    OUTLINED_FUNCTION_12();
  }

  v35 = *(v23 + 8);
  v35(v0, v20);
  v36 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent;
  swift_beginAccess();
  sub_2688C053C(v1 + v36, v14, &qword_2802A5650, &unk_268B3BAC0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2688C058C(v14, &qword_2802A5650, &unk_268B3BAC0);
    v37 = v60;
    (v31)(v60, v63, v20);
    v38 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v40);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v41, v42, "ResumeMediaRoutingFlow#execute mediaPlayerIntent is nil, falling back to ResumeMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v35(v37, v20);
    v43 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2688BFA7C();
  }

  else
  {
    v44 = v62;
    sub_2688C0464(v14, v62);
    v45 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2689A8C9C(v44);
    sub_2689781E0();
    if (v46)
    {
      v48 = v56;
      v47 = v57;
      v49 = v59;
      (*(v57 + 104))(v56, *MEMORY[0x277D5F660], v59);
      v50 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceSelector);
      v51 = v45;

      sub_26894E810();

      (*(v47 + 8))(v48, v49);
    }

    else
    {
      (v31)(v61, v63, v20);
      v52 = sub_268B37A34();
      v53 = sub_268B37F04();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_14();
        *v54 = 0;
        _os_log_impl(&dword_2688BB000, v52, v53, "ResumeMediaRoutingFlow#execute not necessary to check for HomeAutomation redirect, pushing PauseMediaFlow", v54, 2u);
        v44 = v62;
        OUTLINED_FUNCTION_12();
      }

      v35(v61, v20);
      sub_2688BFA7C();
    }

    sub_2688C05E4(v44, type metadata accessor for MediaPlayerIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688BEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v191 = v23;
  v192 = v24;
  v193 = v25;
  v190 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_268B34F84();
  v32 = OUTLINED_FUNCTION_1(v31);
  v183 = v33;
  v184 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v180 = v36;
  OUTLINED_FUNCTION_9();
  v37 = sub_268B34E44();
  v38 = OUTLINED_FUNCTION_1(v37);
  v181 = v39;
  v182 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v179 = v42;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5658, &qword_268B3B8E0);
  OUTLINED_FUNCTION_1(v175);
  v174 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v46);
  v173 = v169 - v47;
  OUTLINED_FUNCTION_9();
  v172 = type metadata accessor for DevicesWithParse();
  v48 = OUTLINED_FUNCTION_4(v172);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2();
  v178 = v51;
  OUTLINED_FUNCTION_9();
  v187 = sub_268B35494();
  v52 = OUTLINED_FUNCTION_1(v187);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  v171 = v57;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  v170 = v59;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  v177 = v61;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v62);
  v186 = v169 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v67);
  v69 = v169 - v68;
  v189 = sub_268B35434();
  v70 = OUTLINED_FUNCTION_1(v189);
  v185 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_3();
  v176 = v74;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v75);
  v188 = v169 - v76;
  OUTLINED_FUNCTION_9();
  v77 = sub_268B37A54();
  v78 = OUTLINED_FUNCTION_1(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  v83 = MEMORY[0x28223BE20](v78);
  v84 = MEMORY[0x28223BE20](v83);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = v169 - v86;
  v88 = MEMORY[0x28223BE20](v85);
  v90 = v169 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = v169 - v92;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_15();
  if (!v28)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v77, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v104(v20);
    v105 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v107);
      OUTLINED_FUNCTION_20(&dword_2688BB000, v108, v90, "ResumeMediaRoutingFlow#execute setting devices in intent and pushing ResumeMediaFlow");
      OUTLINED_FUNCTION_6();
    }

    v109 = *(v80 + 8);
    v80 += 8;
    v109(v20, v77);
    v110 = sub_2688EFD0C(v30);
    v111 = MEMORY[0x277D84F90];
    if (v110)
    {
      v195 = MEMORY[0x277D84F90];
      sub_268B38234();
      if (v110 < 0)
      {
        __break(1u);
        goto LABEL_40;
      }

      sub_2688C063C();
      v112 = 0;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v113 = MEMORY[0x26D625BD0](v112, v30);
        }

        else
        {
          v113 = *(v30 + 8 * v112 + 32);
        }

        v114 = v113;
        ++v112;
        v115 = sub_268B38054();
        [v114 setIsPreResolved_];

        sub_268B38214();
        v116 = *(v195 + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      while (v110 != v112);
      v111 = v195;
    }

    sub_2688C04C8(v111, v190);
LABEL_26:
    sub_2688BFA7C();
    goto LABEL_27;
  }

  if (v28 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v77, qword_2802CDA10);
    OUTLINED_FUNCTION_17();
    v117(v93);
    v118 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v120);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v121, v122, "ResumeMediaRoutingFlow#execute pushing PauseMediaFlow so we can dialog a relevant error");
      OUTLINED_FUNCTION_6();
    }

    (*(v80 + 8))(v93, v77);
    goto LABEL_26;
  }

  v169[5] = v95;
  v169[4] = v94;
  v96 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input;
  v97 = v193;
  swift_beginAccess();
  sub_2688C053C(v97 + v96, v69, &qword_2802A5660, &qword_268B3B8E8);
  v98 = v189;
  if (__swift_getEnumTagSinglePayload(v69, 1, v189) == 1)
  {
    sub_2688C058C(v69, &qword_2802A5660, &qword_268B3B8E8);
    if (qword_2802A4F30 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v77, qword_2802CDA10);
      OUTLINED_FUNCTION_17();
      v99(v90);
      v100 = sub_268B37A34();
      v101 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v101))
      {
        v102 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v102);
        OUTLINED_FUNCTION_20(&dword_2688BB000, v103, v90, "ResumeMediaRoutingFlow#execute input is nil, can't redirect to HomeAutomation");
        OUTLINED_FUNCTION_6();
      }

      (*(v80 + 8))(v90, v77);
      goto LABEL_26;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_5;
  }

  v193 = v77;
  v123 = v185;
  v124 = v188;
  (*(v185 + 32))(v188, v69, v98);
  v125 = v186;
  sub_268B35414();
  v126 = v187;
  if ((*(v54 + 88))(v125, v187) == *MEMORY[0x277D5C128])
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v127 = __swift_project_value_buffer(v193, qword_2802CDA10);
    v128 = *(v80 + 16);
    v169[1] = v127;
    v169[2] = v128;
    v128(v87);
    v129 = sub_268B37A34();
    v130 = sub_268B37EE4();
    v131 = v54;
    if (OUTLINED_FUNCTION_19(v130))
    {
      v132 = OUTLINED_FUNCTION_14();
      *v132 = 0;
      _os_log_impl(&dword_2688BB000, v129, v87, "ResumeMediaRoutingFlow#execute input is NLv3IntentOnly, transform to HomeAutomationNLV3Intent parse", v132, 2u);
      v126 = v187;
      OUTLINED_FUNCTION_12();
    }

    v190 = *(v80 + 8);
    v169[3] = v80 + 8;
    (v190)(v87, v193);
    v133 = v178;
    sub_268B35414();
    *(v133 + *(v172 + 20)) = v30;
    v134 = v133;

    v135 = v173;
    sub_268B36764();
    v136 = v175;
    v137 = sub_268B36774();
    (v174[1])(v135, v136);
    v138 = v177;
    v139 = v126;
    v137(v134);

    v143 = OUTLINED_FUNCTION_11(&a9);
    v144(v143);
    v145 = v170;
    v146 = v138;
    v147 = *(v131 + 16);
    v147(v170, v146, v126);
    v148 = sub_268B37A34();
    sub_268B37EC4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v148, v149))
    {
      v151 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v194 = v174;
      *v151 = 136315138;
      v152 = v171;
      v147(v171, v145, v139);
      v153 = sub_268B37C24();
      v154 = v145;
      v155 = v153;
      v175 = v147;
      v157 = v156;
      v187 = *(v131 + 8);
      v187(v154, v139);
      v158 = sub_26892CDB8(v155, v157, &v194);
      v147 = v175;

      *(v151 + 4) = v158;
      _os_log_impl(&dword_2688BB000, v148, OS_LOG_TYPE_DEFAULT, "ResumeMediaRoutingFlow#execute transformed home automation NLV3 parse %s", v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v174);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      OUTLINED_FUNCTION_16();
      v159();
      v161 = v183;
      v160 = v184;
      v162 = v181;
    }

    else
    {

      v187 = *(v131 + 8);
      v187(v145, v126);
      OUTLINED_FUNCTION_16();
      v163();
      v161 = v183;
      v160 = v184;
      v162 = v181;
      v152 = v171;
    }

    v164 = v177;
    v147(v152, v177, v139);
    sub_268B35424();
    v165 = v179;
    sub_268B34E34();
    v166 = v180;
    sub_268B34F74();
    v191(v166);
    (*(v161 + 8))(v166, v160);
    (*(v162 + 8))(v165, v182);
    v167 = v187;
    v187(v164, v139);
    OUTLINED_FUNCTION_5();
    sub_2688C05E4(v178, v168);
    (*(v185 + 8))(v188, v189);
    v167(v186, v139);
  }

  else
  {
    v140 = v98;
    (*(v123 + 16))(v176, v124, v98);
    v141 = v179;
    sub_268B34E34();
    v142 = v180;
    sub_268B34F74();
    v191(v142);
    (*(v183 + 8))(v142, v184);
    (*(v181 + 8))(v141, v182);
    (*(v123 + 8))(v124, v140);
    (*(v54 + 8))(v125, v126);
  }

LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688BFA7C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider + 24);
  v8 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider), v7);
  v9 = OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_analyticsService;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v2;
  v10[4] = v0;
  v10[5] = v6;

  sub_268AD35F4(v6, &off_287953B28, v0 + v9, sub_2688C03B0, v10, v7, v8);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688BFB54(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B34F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory), *(a3 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory + 24));
  sub_268B0494C();
  sub_268B34F54();

  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2688BFC6C()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_mediaPlayerIntent, &qword_2802A5650, &unk_268B3BAC0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_analyticsService));
  v1 = *(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceSelector);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory));
  return v0;
}

uint64_t sub_2688BFD24()
{
  sub_2688BFC6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResumeMediaRoutingFlow()
{
  result = qword_2802A5630;
  if (!qword_2802A5630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2688BFDD0()
{
  sub_2688BFEF0(319, &qword_2802A5640, MEMORY[0x277D5C118]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2688BFEF0(319, &qword_2802A5648, type metadata accessor for MediaPlayerIntent);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2688BFEF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268B380A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2688BFF44()
{
  v1 = *v0;
  sub_2688BDEE0();
  return v2 & 1;
}

uint64_t sub_2688BFF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2688C001C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2688C001C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2688C013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2688C01F0;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2688C01F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2688C02E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResumeMediaRoutingFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2688C0368()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2688C0464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2688C04C8(uint64_t a1, void *a2)
{
  type metadata accessor for Device();
  v3 = sub_268B37CE4();

  [a2 setDevices_];
}

uint64_t sub_2688C053C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2688C058C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2688C05E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2688C063C()
{
  result = qword_2802A5920;
  if (!qword_2802A5920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5920);
  }

  return result;
}

uint64_t sub_2688C06A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 360);
  v4 = *(v1 - 352);
  return result;
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

id sub_2688C0980()
{
  result = [objc_allocWithZone(type metadata accessor for SkipTimeIntentHandler()) init];
  qword_2802CD8D0 = result;
  return result;
}

uint64_t sub_2688C09B4()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_2688C300C(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD8D8 = result;
  return result;
}

uint64_t sub_2688C0C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v65 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SkipTimeFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v75;
  v40 = v73;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v68;
    v34(v68, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SkipTimeFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_16_0();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v24 + 8);
    v47 = v72;
    sub_268B35414();
    v49 = v70;
    v48 = v71;
    v50 = (*(v70 + 88))(v47, v71);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v69, v33, v21);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v40, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v48 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "SkipTimeFlowStrategy#actionForInput received no valid parse %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v49 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v38(v69, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_16_0();
      sub_268B34ED4();
      return (*(v49 + 8))(v72, v48);
    }
  }
}

uint64_t sub_2688C128C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4D28 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CD8D8;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_2688C2D5C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_2688C300C(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_2688C1654(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SkipTimeFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "SkipTimeFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = -124;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for SkipTimeIntent()) init];
    }

    v55 = v74;
    sub_268A7AFBC(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953B68, (v56 + 7), sub_2688C2F60, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_2688C1CEC(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SkipTimeFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_2688C1EA8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2688C1F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C1FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_2688C2004()
{
  if (qword_2802A4D20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8D0;

  return v1;
}

uint64_t sub_2688C2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C20CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2688C2894@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, void **a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = *a2;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *a3;
  a4(0);
  v11 = v10;
  v12 = a1;
  sub_268B34B24();
  v13 = sub_268B34B34();

  return __swift_storeEnumTagSinglePayload(a5, 0, 1, v13);
}

uint64_t sub_2688C2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2688C29B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2688C2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2688C2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2688C2BF4(uint64_t a1, uint64_t a2)
{
  result = sub_2688C300C(&qword_2802A5670, a2, type metadata accessor for SkipTimeFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688C2C94()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_2688C2D5C()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_2688C1654(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_2688C2E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2688C2ECC()
{
  result = qword_2802A6D80;
  if (!qword_2802A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6D80);
  }

  return result;
}

uint64_t sub_2688C2F20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2688C2F6C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2688C2FC8()
{
  result = qword_2802A7320;
  if (!qword_2802A7320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7320);
  }

  return result;
}

uint64_t sub_2688C300C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2688C3054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_16_0()
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
}

uint64_t sub_2688C3240()
{
  if (sub_268B34CB4())
  {
    v0 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v0 = sub_268B34C84() ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_2688C32AC()
{
  if (sub_268B34D24())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();

  return sub_268B34D04();
}

uint64_t sub_2688C3308()
{
  if (sub_268B34CE4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  if (sub_268B34CC4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();
  if (sub_268B34CD4())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_1();

  return sub_268B34D14();
}

id sub_2688C337C(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  result = [a1 nowPlayingState];
  v2 = result;
  if (result != 1)
  {
LABEL_5:
    OUTLINED_FUNCTION_0_1();
    return (sub_268B34D04() & (v2 == 2));
  }

  return result;
}

uint64_t OpenAccessoryItemAppIntent.init(destination:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_268B369C4();
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenAccessoryItemAppIntent(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for OpenAccessoryItemAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2688C3604()
{
  v0 = sub_268B344F4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268B344E4();
  qword_2802A5690 = result;
  return result;
}

void sub_2688C3644(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x277D84F90];
  v5 = sub_2688EFD0C(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D625BD0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x26D6256C0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }
  }
}

void sub_2688C3798()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
  v11 = OUTLINED_FUNCTION_139(v8);
  v12(v11);
  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_64();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "ResumeMediaDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v15, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_190();
  v18(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v19 = sub_268B35244();
  sub_268AE2278(v19);
  v21 = v20;

  v22 = sub_268B35244();
  sub_268AE23DC(v22);
  v24 = v23;

  v25 = *(v0 + 56);
  sub_268AB07FC(v21, v24 & 1, v4, v2);

  OUTLINED_FUNCTION_23();
}

uint64_t *sub_2688C3970()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  return v0;
}

uint64_t sub_2688C39B8()
{
  sub_2688C3970();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_2688C3A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688E1900;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E1944;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688E1970, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C3CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688EA15C;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E8CB8;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C3FD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688EA15C;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E64E0;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C42B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688E60C0;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E6104;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C4590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688E6A38;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E6A7C;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C4870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688E6DAC;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E6DC8;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C4B50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688E711C;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E7160;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DAA64(v22, v28, sub_2688E7190, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C4E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688EA1D4;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E8970;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DA838(v22, v28, sub_2688EA31C, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C5110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688EA1D4;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E95BC;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DAA64(v22, v28, sub_2688EA328, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_2688C53F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v6;
    v19 = a4;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "DeviceDisambiguationStrategy.makeContextUpdate() called", v18, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v27;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35244();
  sub_2688E4594(v6 + 104, v28);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a4;
  v23[4] = a5;
  v24 = swift_allocObject();
  v24[2] = sub_2688EA1D4;
  v24[3] = v6;
  v24[4] = v22;
  v24[5] = sub_2688E8600;
  v24[6] = v23;
  swift_retain_n();
  v25 = a1;

  sub_2688DAA64(v22, v28, sub_2688EA328, v24);

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

void sub_2688C56D8()
{
  type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

void sub_2688C5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v29);
  v165 = sub_268B35494();
  v30 = OUTLINED_FUNCTION_1(v165);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_78();
  v169 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v170 = v41;
  OUTLINED_FUNCTION_9();
  v172 = type metadata accessor for MediaPlayerIntent();
  v42 = OUTLINED_FUNCTION_4(v172);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  v171 = v45;
  OUTLINED_FUNCTION_9();
  v46 = sub_268B37A54();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v46, qword_2802CDA10);
  v58 = v49 + 16;
  v168 = *(v49 + 16);
  (v168)(v20);
  v59 = sub_268B37A34();
  v60 = sub_268B37ED4();
  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_64();
    v61 = swift_slowAlloc();
    v157 = v32;
    OUTLINED_FUNCTION_279(v61);
    OUTLINED_FUNCTION_306(&dword_2688BB000, v62, v63, "DeviceDisambiguationStrategy.actionForInput() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v64 = *(v49 + 8);
  v65 = OUTLINED_FUNCTION_138();
  v67 = v66;
  v66(v65);
  sub_268B35414();
  sub_26893BC0C(v169, 1, v68, v69, v70, v71, v72, v73, v156, v157, v158, v159, v160, v161, v163, v164, v165, v166, v167, v20);
  v74 = OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_135(v74, v75, v172);
  if (v76)
  {
    sub_2688C058C(v170, &qword_2802A5650, &unk_268B3BAC0);
    sub_268B34ED4();
    goto LABEL_29;
  }

  v77 = v24;
  OUTLINED_FUNCTION_37();
  sub_2688E7348();
  switch(*(v171 + *(v172 + 36)))
  {
    case 2:

      goto LABEL_16;
    case 3:
      goto LABEL_10;
    default:
      v78 = OUTLINED_FUNCTION_207();

      if (v78)
      {
LABEL_16:
        OUTLINED_FUNCTION_175(&a15);
        OUTLINED_FUNCTION_73();
        OUTLINED_FUNCTION_176();
        v95();
        v96 = sub_268B37A34();
        sub_268B37ED4();
        v97 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v97, v98))
        {
          OUTLINED_FUNCTION_64();
          v99 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v99);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v100, v101, v102, v103, v104, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v105 = OUTLINED_FUNCTION_192();
        v67(v105);
        sub_268B34EB4();
LABEL_28:
        sub_2688E73C0(v171, type metadata accessor for MediaPlayerIntent);
        goto LABEL_29;
      }

LABEL_10:
      OUTLINED_FUNCTION_217();
      v80 = v79[12];
      __swift_project_boxed_opaque_existential_1(v79 + 8, v79[11]);
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F54() & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_268B35414();
      if (!sub_268A40454())
      {
        v106 = OUTLINED_FUNCTION_265();
        v107(v106);
        OUTLINED_FUNCTION_203();
        goto LABEL_20;
      }

      sub_2689CD68C(&v174);

      v81 = OUTLINED_FUNCTION_265();
      v82(v81);
      if (!v175)
      {
LABEL_20:
        sub_2688C058C(&v174, &qword_2802A5928, &unk_268B41110);
LABEL_21:
        if (*(v171 + *(v172 + 92) + 8))
        {
          OUTLINED_FUNCTION_73();
          OUTLINED_FUNCTION_176();
          v108();
          v109 = sub_268B37A34();
          sub_268B37F04();
          v110 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v110, v111))
          {
            OUTLINED_FUNCTION_64();
            v112 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v112);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v113, v114, v115, v116, v117, 2u);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v118 = OUTLINED_FUNCTION_122();
          v67(v118);
          sub_268B34EC4();
        }

        else
        {
          OUTLINED_FUNCTION_73();
          OUTLINED_FUNCTION_176();
          v119();
          v120 = sub_268B37A34();
          sub_268B37ED4();
          v121 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v121, v122))
          {
            OUTLINED_FUNCTION_64();
            v123 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v123);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v124, v125, v126, v127, v128, 2u);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v129 = OUTLINED_FUNCTION_122();
          v67(v129);
          sub_268B34ED4();
        }

        goto LABEL_28;
      }

      sub_2688E6514(&v174, v176);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_176();
      v83();
      OUTLINED_FUNCTION_320();
      v84 = sub_268B37A34();
      sub_268B37ED4();
      v85 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v85, v86))
      {
        OUTLINED_FUNCTION_68();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_69();
        v173[0] = swift_slowAlloc();
        OUTLINED_FUNCTION_262(4.8149e-34);
        v77 = sub_268B385B4();
        OUTLINED_FUNCTION_319();
        v87 = OUTLINED_FUNCTION_97();
        sub_26892CDB8(v87, v88, v89);
        OUTLINED_FUNCTION_296();

        *(v58 + 4) = v77;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v174);
      }

      (v67)(v162, v46);
      if (OUTLINED_FUNCTION_199())
      {
        goto LABEL_36;
      }

      v130 = v177;
      __swift_project_boxed_opaque_existential_1(v176, v176[3]);
      v131 = *(v130 + 16);
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_129();
      sub_268B376D4();
      v132 = sub_268B37124();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v132);
      sub_2688C058C(v58, &qword_2802A58C0, &unk_268B3F080);
      if (EnumTagSinglePayload != 1)
      {
LABEL_36:
        OUTLINED_FUNCTION_73();
        v168();
        OUTLINED_FUNCTION_320();
        v144 = sub_268B37A34();
        sub_268B37ED4();
        v145 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v145, v146))
        {
          OUTLINED_FUNCTION_68();
          v147 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v173[5] = swift_slowAlloc();
          *v147 = 136315138;
          sub_2688E4594(&v174, v173);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
          v148 = v77;
          v149 = sub_268B37C24();
          OUTLINED_FUNCTION_319();
          v150 = OUTLINED_FUNCTION_97();
          sub_26892CDB8(v150, v151, v152);
          OUTLINED_FUNCTION_296();

          *(v147 + 4) = v149;
          OUTLINED_FUNCTION_169(&dword_2688BB000, v153, v154, "Got a valid uso parse as a response to the disambiguation prompt with task: %s. Handling...");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v155 = v148;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v174);
          v155 = v77;
        }

        (v67)(v155, v46);
        sub_268B34EC4();
      }

      else
      {
        OUTLINED_FUNCTION_175(&v177);
        OUTLINED_FUNCTION_73();
        v168();
        v134 = sub_268B37A34();
        sub_268B37F04();
        v135 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v135, v136))
        {
          OUTLINED_FUNCTION_64();
          v137 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v137);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v138, v139, v140, v141, v142, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v143 = OUTLINED_FUNCTION_192();
        v67(v143);
        sub_268B34ED4();
      }

      sub_2688E73C0(v171, type metadata accessor for MediaPlayerIntent);
      __swift_destroy_boxed_opaque_existential_0Tm(v176);
LABEL_29:
      OUTLINED_FUNCTION_23();
      return;
  }
}

void sub_2688C61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v27);
  v146 = sub_268B35494();
  v28 = OUTLINED_FUNCTION_1(v146);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_78();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v150 = v36;
  OUTLINED_FUNCTION_9();
  v37 = type metadata accessor for MediaIntent();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v41 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v41, qword_2802CDA10);
  v53 = OUTLINED_FUNCTION_76();
  v54(v53);
  v55 = sub_268B37A34();
  v56 = sub_268B37ED4();
  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_64();
    v57 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v57);
    OUTLINED_FUNCTION_306(&dword_2688BB000, v58, v59, "DeviceDisambiguationStrategy.actionForInput() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v60 = *(v44 + 8);
  v61 = OUTLINED_FUNCTION_228();
  v60(v61);
  sub_268B35414();
  v62 = OUTLINED_FUNCTION_149();
  sub_26892E9C4(v62, v63, v64);
  OUTLINED_FUNCTION_124(v150);
  if (v65)
  {
    sub_2688C058C(v150, &qword_2802A59A0, &unk_268B3F0C0);
    sub_268B34ED4();
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_189();
  sub_2688E7348();
  switch(*(v20 + 24))
  {
    case 2:

      goto LABEL_16;
    case 3:
      goto LABEL_10;
    default:
      v66 = OUTLINED_FUNCTION_207();

      if (v66)
      {
LABEL_16:
        OUTLINED_FUNCTION_41();
        v85();
        v86 = sub_268B37A34();
        sub_268B37ED4();
        v87 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v87, v88))
        {
          OUTLINED_FUNCTION_64();
          v89 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v89);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v90, v91, v92, v93, v94, 2u);
          OUTLINED_FUNCTION_260();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        (v60)(v148, v41);
        sub_268B34EB4();
LABEL_28:
        sub_2688E73C0(v20, type metadata accessor for MediaIntent);
        goto LABEL_29;
      }

LABEL_10:
      OUTLINED_FUNCTION_217();
      v68 = v67[12];
      __swift_project_boxed_opaque_existential_1(v67 + 8, v67[11]);
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F54() & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_268B35414();
      if (!sub_268A40454())
      {
        OUTLINED_FUNCTION_153(&a12);
        v95(v145, v146);
        OUTLINED_FUNCTION_203();
        goto LABEL_20;
      }

      sub_2689CD68C(&v153);

      OUTLINED_FUNCTION_153(&a12);
      v69(v145, v146);
      if (!v154)
      {
LABEL_20:
        sub_2688C058C(&v153, &qword_2802A5928, &unk_268B41110);
LABEL_21:
        if (*(v20 + *(v37 + 76) + 8))
        {
          OUTLINED_FUNCTION_109(&a17);
          OUTLINED_FUNCTION_41();
          v96();
          v97 = sub_268B37A34();
          sub_268B37F04();
          v98 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v98, v99))
          {
            OUTLINED_FUNCTION_64();
            v100 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v100);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v101, v102, v103, v104, v105, 2u);
            OUTLINED_FUNCTION_260();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          (v60)(v149, v41);
          sub_268B34EC4();
        }

        else
        {
          OUTLINED_FUNCTION_109(&a14);
          OUTLINED_FUNCTION_41();
          v106();
          v107 = sub_268B37A34();
          sub_268B37ED4();
          v108 = OUTLINED_FUNCTION_28();
          if (os_log_type_enabled(v108, v109))
          {
            OUTLINED_FUNCTION_64();
            v110 = swift_slowAlloc();
            OUTLINED_FUNCTION_81(v110);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v111, v112, v113, v114, v115, 2u);
            OUTLINED_FUNCTION_260();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          (v60)(v147, v41);
          sub_268B34ED4();
        }

        goto LABEL_28;
      }

      v151 = v20;
      sub_2688E6514(&v153, v155);
      v70 = v144;
      OUTLINED_FUNCTION_41();
      v71();
      OUTLINED_FUNCTION_320();
      v72 = sub_268B37A34();
      sub_268B37ED4();
      v73 = OUTLINED_FUNCTION_28();
      v75 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_68();
        v70 = swift_slowAlloc();
        OUTLINED_FUNCTION_69();
        v152[0] = swift_slowAlloc();
        OUTLINED_FUNCTION_262(4.8149e-34);
        v76 = sub_268B385B4();
        OUTLINED_FUNCTION_319();
        v77 = OUTLINED_FUNCTION_97();
        sub_26892CDB8(v77, v78, v79);
        OUTLINED_FUNCTION_296();
        v75 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;

        *(v70 + 4) = v76;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v153);
      }

      (v60)(v144, v41);
      if (OUTLINED_FUNCTION_199())
      {
        goto LABEL_36;
      }

      v116 = v156;
      __swift_project_boxed_opaque_existential_1(v155, v155[3]);
      v117 = *(v116 + 16);
      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_129();
      sub_268B376D4();
      v118 = sub_268B37124();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v118);
      sub_2688C058C(v70, &qword_2802A58C0, &unk_268B3F080);
      if (EnumTagSinglePayload != 1)
      {
LABEL_36:
        OUTLINED_FUNCTION_41();
        v131();
        OUTLINED_FUNCTION_320();
        v132 = sub_268B37A34();
        sub_268B37ED4();
        v133 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v133, v134))
        {
          OUTLINED_FUNCTION_68();
          v135 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v152[5] = swift_slowAlloc();
          *v135 = v75[259];
          sub_2688E4594(&v153, v152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
          v136 = sub_268B37C24();
          OUTLINED_FUNCTION_319();
          v137 = OUTLINED_FUNCTION_97();
          sub_26892CDB8(v137, v138, v139);
          OUTLINED_FUNCTION_296();

          *(v135 + 4) = v136;
          OUTLINED_FUNCTION_169(&dword_2688BB000, v140, v141, "Got a valid uso parse as a response to the disambiguation prompt with task: %s. Handling...");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v142 = OUTLINED_FUNCTION_122();
          v60(v142);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v153);
          v143 = OUTLINED_FUNCTION_97();
          v60(v143);
        }

        sub_268B34EC4();
      }

      else
      {
        OUTLINED_FUNCTION_175(&v156);
        OUTLINED_FUNCTION_41();
        v120();
        v121 = sub_268B37A34();
        sub_268B37F04();
        v122 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v122, v123))
        {
          OUTLINED_FUNCTION_64();
          v124 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v124);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v125, v126, v127, v128, v129, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v130 = OUTLINED_FUNCTION_97();
        v60(v130);
        sub_268B34ED4();
      }

      sub_2688E73C0(v151, type metadata accessor for MediaIntent);
      __swift_destroy_boxed_opaque_existential_0Tm(v155);
LABEL_29:
      OUTLINED_FUNCTION_23();
      return;
  }
}

uint64_t sub_2688C6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2688F290C(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_2688C6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_26();
  v100 = v25;
  v92 = v26;
  v91 = v27;
  v101 = a25;
  v96 = a21;
  v97 = a22;
  v98 = a24;
  v99 = v28;
  v93 = a23;
  v29 = sub_268B37AB4();
  v103 = OUTLINED_FUNCTION_1(v29);
  v104 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2();
  v102 = v33;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1(v89);
  v88 = v34;
  v90 = *(v35 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v106 = v37;
  OUTLINED_FUNCTION_9();
  v86 = sub_268B35434();
  v38 = OUTLINED_FUNCTION_1(v86);
  v105 = v39;
  v87 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_38(v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_268B37F44();
  v43 = OUTLINED_FUNCTION_1(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v50 = v49 - v48;
  v51 = sub_268B37F34();
  v52 = OUTLINED_FUNCTION_4(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v55 = sub_268B37B14();
  v56 = OUTLINED_FUNCTION_1(v55);
  v94 = v57;
  v95 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v62 = v61 - v60;
  v84 = sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  v82[1] = v62;
  sub_268B37AF4();
  v108[0] = MEMORY[0x277D84F90];
  sub_2688EA07C(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  v85 = MEMORY[0x277D83970];
  sub_2688E44B8(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v45 + 104))(v50, *MEMORY[0x277D85260], v42);
  v84 = sub_268B37F74();
  v64 = v105;
  v65 = v83;
  v66 = v86;
  (*(v105 + 16))(v83, v91, v86);
  OUTLINED_FUNCTION_214();
  v67 = v89;
  (*(v63 + 16))(v106, v92, v89);
  v68 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v69 = (v87 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (*(v63 + 80) + v69 + 16) & ~*(v63 + 80);
  v71 = (v90 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v105 + 32))(v72 + v68, v65, v66);
  v73 = (v72 + v69);
  v74 = v97;
  *v73 = v96;
  v73[1] = v74;
  v75 = *(v63 + 32);
  v63 += 32;
  v75(v72 + v70, v106, v67);
  v76 = v99;
  *(v72 + v71) = v100;
  *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v108[4] = v98;
  v108[5] = v72;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 1107296256;
  v108[2] = sub_268A0B300;
  v108[3] = v101;
  v77 = _Block_copy(v108);

  v78 = v76;
  OUTLINED_FUNCTION_202();
  sub_268B37AE4();
  v107 = MEMORY[0x277D84F90];
  sub_2688EA07C(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688E44B8(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v80 = v102;
  v79 = v103;
  sub_268B38124();
  v81 = v84;
  MEMORY[0x26D625950](0, v63, v80, v77);
  _Block_release(v77);

  (*(v104 + 8))(v80, v79);
  (*(v94 + 8))(v63, v95);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C7630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v75 = a7;
  v68 = a3;
  v69 = a8;
  v71 = a6;
  v72 = a4;
  v70 = a2;
  v73 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v66 = *(v9 - 8);
  v67 = v9;
  v64 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v59 - v10;
  v11 = sub_268B367A4();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v23 = v15[2];
  v23(v21, v22, v14);
  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "DeviceDisambiguationStrategy.makePromptForDisambiguation() called", v26, 2u);
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  v27 = v15[1];
  v27(v21, v14);
  sub_268B36754();
  v28 = sub_268B36734();
  if (!v28)
  {
    v28 = sub_268B36744();
  }

  v29 = v28;
  v63 = a9;
  v23(v19, v22, v14);

  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();

  v32 = os_log_type_enabled(v30, v31);
  v74 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v77 = v34;
    *v33 = 136315138;
    sub_268B36714();
    v59 = v27;
    v35 = v60;
    sub_268B36B14();

    v36 = sub_268B36784();
    v38 = v37;
    (*(v61 + 8))(v35, v62);
    v39 = sub_26892CDB8(v36, v38, &v77);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_2688BB000, v30, v31, "DeviceDisambiguationStrategy.makePromptForDisambiguation cached responseMode = %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x26D6266E0](v34, -1, -1);
    MEMORY[0x26D6266E0](v33, -1, -1);

    v59(v19, v14);
  }

  else
  {

    v27(v19, v14);
  }

  v40 = v65;
  v41 = v66;
  v42 = v67;
  (*(v66 + 16))(v65, v75, v67);
  v43 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v44 = (v64 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 2) = v74;
  *(v46 + 3) = v47;
  v49 = v70;
  v48 = v71;
  *(v46 + 4) = v70;
  *(v46 + 5) = v48;
  (*(v41 + 32))(&v46[v43], v40, v42);
  v50 = &v46[v44];
  v51 = v68;
  v52 = v63;
  *v50 = v69;
  *(v50 + 1) = v52;
  v53 = &v46[v45];
  v55 = v72;
  v54 = v73;
  *v53 = v51;
  *(v53 + 1) = v55;
  *&v46[(v45 + 23) & 0xFFFFFFFFFFFFFFF8] = v54;

  v56 = v49;
  v57 = v48;

  sub_2688C3798();
}

void sub_2688C7C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(uint64_t))
{
  OUTLINED_FUNCTION_26();
  v98 = v26;
  v99 = v24;
  v92 = v27;
  v93 = v28;
  v95 = v30;
  v96 = v29;
  v94 = v31;
  v97 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v34 = OUTLINED_FUNCTION_1(v33);
  v90 = v35;
  v91 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_21();
  v88 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  v89 = v40;
  OUTLINED_FUNCTION_9();
  v41 = sub_268B367A4();
  v42 = OUTLINED_FUNCTION_1(v41);
  v86 = v43;
  v87 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  v85 = v46;
  OUTLINED_FUNCTION_9();
  v47 = sub_268B37A54();
  v48 = OUTLINED_FUNCTION_1(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v54 = __swift_project_value_buffer(v47, qword_2802CDA10);
  v55 = *(v50 + 16);
  v55(v24, v54, v47);
  v56 = sub_268B37A34();
  v57 = sub_268B37ED4();
  v58 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v58, v59))
  {
    OUTLINED_FUNCTION_64();
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2688BB000, v56, v57, "DeviceDisambiguationStrategy.makePromptForDisambiguation() called", v60, 2u);
    v61 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v61);
  }

  v62 = *(v50 + 8);
  v63 = OUTLINED_FUNCTION_189();
  v62(v63);
  sub_268B36754();
  v64 = sub_268B36734();
  if (!v64)
  {
    v64 = sub_268B36744();
  }

  v65 = v64;
  v66 = OUTLINED_FUNCTION_221();
  (v55)(v66);

  v67 = sub_268B37A34();
  v68 = sub_268B37ED4();

  if (os_log_type_enabled(v67, v68))
  {
    OUTLINED_FUNCTION_68();
    v69 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v100 = swift_slowAlloc();
    *v69 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v70 = sub_268B36784();
    (*(v86 + 8))(v85, v87);
    v71 = OUTLINED_FUNCTION_103();
    sub_26892CDB8(v71, v72, v73);
    OUTLINED_FUNCTION_129();

    *(v69 + 4) = v70;
    _os_log_impl(&dword_2688BB000, v67, v68, "DeviceDisambiguationStrategy.makePromptForDisambiguation cached responseMode = %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    v74 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v74);

    OUTLINED_FUNCTION_176();
    v75();
  }

  else
  {

    (v62)(v25, v47);
  }

  OUTLINED_FUNCTION_152();
  v76(v89, v98, v91);
  v77 = (*(v90 + 80) + 48) & ~*(v90 + 80);
  v78 = (v88 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 2) = v65;
  *(v80 + 3) = v99;
  *(v80 + 4) = v94;
  *(v80 + 5) = v95;
  (*(v90 + 32))(&v80[v77], v89, v91);
  v81 = &v80[v78];
  *v81 = v93;
  *(v81 + 1) = a21;
  v82 = &v80[v79];
  *v82 = v92;
  *(v82 + 1) = v96;
  *&v80[(v79 + 23) & 0xFFFFFFFFFFFFFFF8] = v97;

  v94;
  v83 = v95;

  v84 = OUTLINED_FUNCTION_123();
  a24(v84);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C83CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2688C847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2688C852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2688C85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

void sub_2688C87BC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v32 = v3;
  v4 = v0;
  v33 = v5;
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v19 = swift_once();
  }

  OUTLINED_FUNCTION_61(v19, qword_2802CDA10);
  v20 = OUTLINED_FUNCTION_139(v16);
  v21(v20);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_64();
    v10 = v12;
    v12 = v2;
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "DeviceDisambiguationStrategy.makeFlowCancelledResponse()", v2, 2u);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v24 = *(v16 + 8);
  v25 = OUTLINED_FUNCTION_103();
  v26(v25);
  v27 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_129();
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = v0[7];
  v30 = swift_allocObject();
  v30[2] = v32;
  v30[3] = v34;
  v30[4] = v33;
  v30[5] = v8;
  v30[6] = v10;
  v30[7] = v4;
  v30[8] = v12;
  v30[9] = v28;

  v31 = v10;

  sub_268ABDE34(v2, v30);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688C8A1C()
{
  type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2688C8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C8B94;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2688C8B94()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  OUTLINED_FUNCTION_222();

  return v5();
}

uint64_t sub_2688C8C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_2688EA0F0;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_2688C8EBC(uint64_t a1, uint64_t a2)
{
  result = sub_2688EA07C(&qword_2802A56C8, a2, type metadata accessor for ResumeMediaDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

void sub_2688C8F5C(uint64_t (*a1)(id *), uint64_t (*a2)(id *), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  v8 = a4(a3);
  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  v15 = v5;
  v16 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if (v10)
    {
      v14 = OUTLINED_FUNCTION_122();
      v11 = MEMORY[0x26D625BD0](v14);
    }

    else
    {
      if (v9 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v17 = v11;
    v13 = a1(&v17);
    if (v4)
    {

      return;
    }

    if (v13)
    {
      sub_268B38214();
      v10 = a1;
      a1 = a2;
      a2 = *(v18 + 16);
      sub_268B38244();
      OUTLINED_FUNCTION_273();
      v5 = v15;
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_2688C90CC()
{
  OUTLINED_FUNCTION_197();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v34 = sub_268B372A4();
  v5 = OUTLINED_FUNCTION_1(v34);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v28 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = 0;
  v33 = *(v2 + 16);
  v30 = v7 + 16;
  v15 = (v7 + 8);
  v27 = (v7 + 32);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v14)
    {

LABEL_15:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v14 >= *(v2 + 16))
    {
      break;
    }

    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = *(v7 + 72);
    v18 = v2;
    (*(v7 + 16))(v13, v2 + v16 + v17 * v14, v34);
    v19 = v31(v13);
    if (v0)
    {
      (*v15)(v13, v34);

      goto LABEL_15;
    }

    if (v19)
    {
      v26 = *v27;
      v26(v28, v13, v34);
      v20 = v29;
      v35 = v29;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v20;
      }

      else
      {
        v22 = *(v20 + 16);
        sub_26894482C();
        v21 = v35;
      }

      v2 = v18;
      v23 = *(v21 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v21 + 24) >> 1)
      {
        v29 = v23 + 1;
        v25 = v23;
        sub_26894482C();
        v24 = v29;
        v23 = v25;
        v2 = v18;
        v21 = v35;
      }

      ++v14;
      *(v21 + 16) = v24;
      v29 = v21;
      v26((v21 + v16 + v23 * v17), v28, v34);
    }

    else
    {
      (*v15)(v13, v34);
      ++v14;
    }
  }

  __break(1u);
}

void sub_2688C9364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_197();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2688EFD0C(v23);
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {
      goto LABEL_13;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D625BD0](i, v24);
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v29 = *(v24 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    v31 = v26(&a10);
    if (v20)
    {

LABEL_13:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v31)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_2688C9440()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v26 = v5;
  v27 = v4;
  v6 = sub_268B372A4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v12 = 0;
  v13 = *(v3 + 16);
  v14 = (v9 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      v21 = 1;
      v22 = v26;
      goto LABEL_9;
    }

    v15 = *(v9 + 80);
    OUTLINED_FUNCTION_258();
    (*(v9 + 16))(v1, v3 + v16 + *(v9 + 72) * v12, v6);
    v17 = v27(v1);
    if (v0)
    {
      v23 = *v14;
      v24 = OUTLINED_FUNCTION_122();
      v25(v24);
      goto LABEL_10;
    }

    if (v17)
    {
      break;
    }

    v18 = *v14;
    v19 = OUTLINED_FUNCTION_122();
    v20(v19);
    ++v12;
  }

  v22 = v26;
  (*(v9 + 32))(v26, v1, v6);
  v21 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v22, v21, 1, v6);
LABEL_10:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688C95C8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v184 = a6;
  v185 = a4;
  v191 = a3;
  v192 = a2;
  v188 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v178 = &v170 - v8;
  v180 = sub_268B37124();
  v173 = *(v180 - 8);
  v9 = *(v173 + 64);
  v10 = MEMORY[0x28223BE20](v180);
  v172 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v170 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C8, &qword_268B3BEB0);
  v182 = *(v13 - 8);
  v183 = v13;
  v14 = *(v182 + 64);
  MEMORY[0x28223BE20](v13);
  v181 = &v170 - v15;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58D0, &qword_268B3BEB8);
  v16 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v190 = (&v170 - v17);
  v18 = sub_268B35494();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v170 - v24;
  v26 = type metadata accessor for MediaPlayerIntent();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v186 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_268B37A54();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v177 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v170 = &v170 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v171 = &v170 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v174 = &v170 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v176 = &v170 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v175 = &v170 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v187 = &v170 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v170 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v170 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v170 - v52;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v29, qword_2802CDA10);
  v55 = v30;
  v56 = *(v30 + 16);
  v193 = v30 + 16;
  v194 = v54;
  v197 = v29;
  v195 = v56;
  (v56)(v53);
  v57 = sub_268B37A34();
  v58 = sub_268B37ED4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_2688BB000, v57, v58, "DeviceDisambiguationStrategy.parseDisambiguationResult() called", v59, 2u);
    MEMORY[0x26D6266E0](v59, -1, -1);
  }

  v60 = *(v55 + 8);
  v61 = v197;
  v196 = v55 + 8;
  v60(v53, v197);
  sub_268B35414();
  sub_26893BC0C(v21, 1, v62, v63, v64, v65, v66, v67, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    v75 = v186;
    sub_2688E7348();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v77 = sub_268B35254();
    MEMORY[0x28223BE20](v77);
    *(&v170 - 2) = v75;
    sub_2688C9364(sub_2688EA338, (&v170 - 4), v77, v78, v79, v80, v81, v82, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
    v84 = v83;

    v85 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    if (v84)
    {
      v86 = v197;
      v195(v48, v194, v197);
      v87 = v84;
      v88 = sub_268B37A34();
      v89 = sub_268B37F04();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412290;
        *(v90 + 4) = v87;
        *v91 = v84;
        v92 = v87;
        _os_log_impl(&dword_2688BB000, v88, v89, "Found device using destination device id: %@", v90, 0xCu);
        sub_2688C058C(v91, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v91, -1, -1);
        v93 = v90;
        v86 = v197;
        MEMORY[0x26D6266E0](v93, -1, -1);
      }

      v60(v48, v86);
      goto LABEL_13;
    }

    v188 = v76;
    sub_2688EA07C(&qword_2802A58E0, 255, type metadata accessor for MediaPlayerIntent);
    v109 = sub_268B37834();
    v86 = v197;
    if (v109)
    {
      v110 = v176;
      v195(v176, v194, v197);
      v111 = sub_268B37A34();
      v112 = sub_268B37F04();
      v113 = os_log_type_enabled(v111, v112);
      v94 = v184;
      if (v113)
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_2688BB000, v111, v112, "Found homeAutomation nodes in the intent. Mapping the user's selection to a device from the disambiguation list", v114, 2u);
        MEMORY[0x26D6266E0](v114, -1, -1);
      }

      v60(v110, v86);
      v115 = sub_268B35254();
      sub_2688E4FF0(v75, v115, sub_2688E44FC, sub_2688E4574, v116, v117, v118, v119, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
      v121 = v120;

      if (sub_2688EFD0C(v121))
      {
        v122 = v174;
        v195(v174, v194, v86);

        v123 = sub_268B37A34();
        v124 = sub_268B37F04();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v198[0] = v126;
          *v125 = 136315138;
          v127 = type metadata accessor for Device();
          v128 = MEMORY[0x26D6256F0](v121, v127);
          v130 = sub_26892CDB8(v128, v129, v198);

          *(v125 + 4) = v130;
          v75 = v186;
          _os_log_impl(&dword_2688BB000, v123, v124, "Matching devices: %s", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v126);
          v131 = v126;
          v86 = v197;
          MEMORY[0x26D6266E0](v131, -1, -1);
          MEMORY[0x26D6266E0](v125, -1, -1);
        }

        v60(v122, v86);
        v85 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
        if (sub_2688EFD0C(v121) == 1)
        {
          sub_2688EFD10(0, (v121 & 0xC000000000000001) == 0, v121);
          if ((v121 & 0xC000000000000001) != 0)
          {
            v132 = MEMORY[0x26D625BD0](0, v121);
          }

          else
          {
            v132 = *(v121 + 32);
          }

          v87 = v132;

          v84 = v87;
          goto LABEL_14;
        }

        v158 = v170;
        v195(v170, v194, v86);
        v159 = sub_268B37A34();
        v160 = sub_268B37EE4();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&dword_2688BB000, v159, v160, "Too many devices matched. Returning an error", v161, 2u);
          MEMORY[0x26D6266E0](v161, -1, -1);
        }

        v60(v158, v86);
        sub_2688C2ECC();
        v155 = swift_allocError();
        v157 = 7;
      }

      else
      {

        v151 = v171;
        v195(v171, v194, v86);
        v152 = sub_268B37A34();
        v153 = sub_268B37EE4();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_2688BB000, v152, v153, "Could not match any devices. Returning an error", v154, 2u);
          MEMORY[0x26D6266E0](v154, -1, -1);
        }

        v60(v151, v86);
        sub_2688C2ECC();
        v155 = swift_allocError();
        v157 = 6;
      }
    }

    else
    {
      v133 = v75 + *(v26 + 44);
      v134 = v178;
      sub_2688E451C();
      v135 = v180;
      if (__swift_getEnumTagSinglePayload(v134, 1, v180) == 1)
      {
        sub_2688C058C(v134, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        v136 = v173;
        v137 = v179;
        (*(v173 + 32))(v179, v134, v135);
        v195(v177, v194, v86);
        v138 = v172;
        (*(v136 + 16))(v172, v137, v135);
        v139 = sub_268B37A34();
        v140 = sub_268B37F04();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v198[0] = v142;
          *v141 = 136315138;
          v143 = sub_268B37104();
          v145 = v144;
          v146 = v138;
          v147 = *(v136 + 8);
          v147(v146, v180);
          v148 = sub_26892CDB8(v143, v145, v198);

          *(v141 + 4) = v148;
          _os_log_impl(&dword_2688BB000, v139, v140, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v142);
          v149 = v142;
          v86 = v197;
          MEMORY[0x26D6266E0](v149, -1, -1);
          v150 = v141;
          v135 = v180;
          MEMORY[0x26D6266E0](v150, -1, -1);
        }

        else
        {

          v162 = v138;
          v147 = *(v136 + 8);
          v147(v162, v135);
        }

        v60(v177, v86);
        sub_268B35254();
        v163 = v179;
        sub_2688CC6AC();
        v87 = v164;

        v147(v163, v135);
        v75 = v186;
        if (v87)
        {
          v84 = v87;
LABEL_13:
          v94 = v184;
LABEL_14:
          v95 = v87;
          sub_2688DBC64(v95);
          v195(v187, v194, v86);
          v96 = v95;
          v97 = sub_268B37A34();
          v98 = sub_268B37F04();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            *v99 = v85[368];
            *(v99 + 4) = v96;
            *v100 = v96;
            v101 = v96;
            _os_log_impl(&dword_2688BB000, v97, v98, "Found matching device from previous request, injecting it in the intent: %@", v99, 0xCu);
            sub_2688C058C(v100, &qword_2802A6420, &unk_268B3C680);
            MEMORY[0x26D6266E0](v100, -1, -1);
            v102 = v99;
            v86 = v197;
            MEMORY[0x26D6266E0](v102, -1, -1);
          }

          v60(v187, v86);
          v198[3] = type metadata accessor for Device();
          v198[0] = v96;
          type metadata accessor for ResumeMediaIntent();
          v103 = v96;
          v104 = v94;
          v105 = v181;
          sub_268B35184();
          v106 = v190;
          v107 = v183;
          sub_268B351E4();
          (*(v182 + 8))(v105, v107);
          swift_storeEnumTagMultiPayload();
          v192(v106);

          v108 = v106;
          goto LABEL_44;
        }
      }

      v165 = v175;
      v195(v175, v194, v86);
      v166 = sub_268B37A34();
      v167 = sub_268B37EE4();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&dword_2688BB000, v166, v167, "Unable to match the user's selection to any items we presented in the disambiguation list", v168, 2u);
        MEMORY[0x26D6266E0](v168, -1, -1);
      }

      v60(v165, v86);
      sub_2688C2ECC();
      v155 = swift_allocError();
      v157 = 8;
    }

    *v156 = v157;
    v169 = v190;
    *v190 = v155;
    swift_storeEnumTagMultiPayload();
    v192(v169);
    v108 = v169;
LABEL_44:
    sub_2688C058C(v108, &unk_2802A58D0, &qword_268B3BEB8);
    return sub_2688E73C0(v75, type metadata accessor for MediaPlayerIntent);
  }

  sub_2688C058C(v25, &qword_2802A5650, &unk_268B3BAC0);
  v195(v51, v194, v61);
  v68 = sub_268B37A34();
  v69 = sub_268B37EE4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_2688BB000, v68, v69, "Unable to get intent type from parse", v70, 2u);
    MEMORY[0x26D6266E0](v70, -1, -1);
  }

  v60(v51, v61);
  sub_2688C2ECC();
  v71 = swift_allocError();
  *v72 = 5;
  v73 = v190;
  *v190 = v71;
  swift_storeEnumTagMultiPayload();
  v192(v73);
  return sub_2688C058C(v73, &unk_2802A58D0, &qword_268B3BEB8);
}

void sub_2688CA880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void), void (*a25)(void), uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_26();
  a19 = v31;
  a20 = v32;
  OUTLINED_FUNCTION_173(v33, v34, v35, v36, v32, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v42);
  v273 = sub_268B37124();
  v43 = OUTLINED_FUNCTION_1(v273);
  v255 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v48);
  v49 = OUTLINED_FUNCTION_103();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  v52 = OUTLINED_FUNCTION_156(v51);
  OUTLINED_FUNCTION_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v56);
  v287 = v29;
  v288 = v28;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v28);
  OUTLINED_FUNCTION_4(v285);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v60 = sub_268B35494();
  v61 = OUTLINED_FUNCTION_22(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_75();
  v68 = type metadata accessor for MediaPlayerIntent();
  v69 = OUTLINED_FUNCTION_4(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2();
  v283 = v72;
  OUTLINED_FUNCTION_9();
  v73 = sub_268B37A54();
  v74 = OUTLINED_FUNCTION_1(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v88 = OUTLINED_FUNCTION_82(v73, qword_2802CDA10);
  v89 = v76;
  v91 = OUTLINED_FUNCTION_172(v88, v90);
  v92(v91);
  v93 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v93, v94))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_304(&dword_2688BB000, v95, v96, "DeviceDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v97 = *(v89 + 8);
  v98 = v291;
  (v97)(v27);
  sub_268B35414();
  v99 = OUTLINED_FUNCTION_286();
  sub_26893BC0C(v99, v100, v101, v102, v103, v104, v105, v106, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279);
  OUTLINED_FUNCTION_124(v30);
  if (!v107)
  {
    OUTLINED_FUNCTION_37();
    v122 = v283;
    sub_2688E7348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v123 = sub_268B35254();
    MEMORY[0x28223BE20](v123);
    OUTLINED_FUNCTION_59();
    *(v124 - 16) = v283;
    v125 = OUTLINED_FUNCTION_216();
    sub_2688C9364(v125, v126, v127, v128, v129, v130, v131, v132, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280);
    OUTLINED_FUNCTION_101();

    OUTLINED_FUNCTION_108();
    sub_2688EA07C(v152, 255, v153);
    OUTLINED_FUNCTION_148();
    v154 = sub_268B37834();
    v155 = v282;
    if (v154)
    {
      v156 = a27;
      OUTLINED_FUNCTION_109(&a15);
      OUTLINED_FUNCTION_30();
      v157();
      v158 = sub_268B37A34();
      v159 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v159))
      {
        OUTLINED_FUNCTION_64();
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_2688BB000, v158, v159, "Found homeAutomation nodes in the intent. Mapping the user's selection to a device from the disambiguation list", v160, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      OUTLINED_FUNCTION_95();
      v97();
      sub_268B35254();
      v161 = OUTLINED_FUNCTION_227();
      sub_2688E4FF0(v161, v162, v163, v164, v165, v166, v167, v168, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281);
      OUTLINED_FUNCTION_154();

      if (sub_2688EFD0C(v156))
      {
        v169 = OUTLINED_FUNCTION_17_1(&a11);
        v170(v169);

        v171 = sub_268B37A34();
        v172 = sub_268B37F04();

        if (os_log_type_enabled(v171, v172))
        {
          OUTLINED_FUNCTION_68();
          v173 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v174 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v174);
          *v173 = 136315138;
          type metadata accessor for Device();
          v175 = OUTLINED_FUNCTION_148();
          v176 = MEMORY[0x26D6256F0](v175);
          sub_26892CDB8(v176, v177, &v292);
          OUTLINED_FUNCTION_241();
          *(v173 + 4) = v291;
          v98 = v291;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v178, v179, v180, v181, v182, 0xCu);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          v183 = OUTLINED_FUNCTION_34();
          MEMORY[0x26D6266E0](v183);
        }

        OUTLINED_FUNCTION_95();
        v97();
        if (sub_2688EFD0C(v156) == 1)
        {
          sub_2688EFD10(0, (v156 & 0xC000000000000001) == 0, v156);
          if ((v156 & 0xC000000000000001) != 0)
          {
            v217 = MEMORY[0x26D625BD0](0, v156);
          }

          else
          {
            v217 = *(v156 + 32);
          }

          v218 = v217;

LABEL_36:
          v232 = v218;
          v133 = v98;
          v134 = a24;
          v135 = a25;
          v136 = v218;
          v134();
          v290(v284, v289, v133);
          v137 = v136;
          v138 = sub_268B37A34();
          v139 = sub_268B37F04();

          if (os_log_type_enabled(v138, v139))
          {
            OUTLINED_FUNCTION_68();
            v140 = swift_slowAlloc();
            v141 = OUTLINED_FUNCTION_236();
            *v140 = 138412290;
            *(v140 + 4) = v137;
            *v141 = v137;
            v142 = v137;
            OUTLINED_FUNCTION_247();
            _os_log_impl(v143, v144, v145, v146, v140, 0xCu);
            sub_2688C058C(v141, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v97();
          v294 = type metadata accessor for Device();
          v292 = v137;
          v135(0);
          v147 = v137;
          v148 = v155;
          OUTLINED_FUNCTION_209();
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_153(&a17);
          v149 = OUTLINED_FUNCTION_179();
          v150(v149);
          swift_storeEnumTagMultiPayload();
          v286(v139);

          v151 = v139;
          goto LABEL_41;
        }

        v219 = OUTLINED_FUNCTION_17_1(&v293);
        v220(v219);
        v204 = sub_268B37A34();
        sub_268B37EE4();
        v221 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v221, v222))
        {
          OUTLINED_FUNCTION_64();
          v223 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v223);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v224, v225, v226, v227, v228, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v229 = OUTLINED_FUNCTION_58();
        (v97)(v229);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v214 = swift_allocError();
        v216 = 7;
      }

      else
      {

        v202 = OUTLINED_FUNCTION_17_1(&v294);
        v203(v202);
        v204 = sub_268B37A34();
        sub_268B37EE4();
        v205 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v205, v206))
        {
          OUTLINED_FUNCTION_64();
          v207 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v207);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v208, v209, v210, v211, v212, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v213 = OUTLINED_FUNCTION_58();
        (v97)(v213);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v214 = swift_allocError();
        v216 = 6;
      }
    }

    else
    {
      v184 = *(v68 + 44);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_135(v185, v186, 0);
      if (v107)
      {
        sub_2688C058C(v283, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        OUTLINED_FUNCTION_133(&v295);
        v187 = OUTLINED_FUNCTION_123();
        v188(v187);
        OUTLINED_FUNCTION_109(&a10);
        OUTLINED_FUNCTION_30();
        v189();
        OUTLINED_FUNCTION_120();
        v190 = OUTLINED_FUNCTION_230();
        v191(v190);
        v192 = sub_268B37A34();
        v193 = sub_268B37F04();
        v194 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v194, v195))
        {
          OUTLINED_FUNCTION_68();
          v196 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v197 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v197);
          *v196 = 136315138;
          sub_268B37104();
          OUTLINED_FUNCTION_226();
          OUTLINED_FUNCTION_143();
          v291();
          v198 = OUTLINED_FUNCTION_190();
          sub_26892CDB8(v198, v199, v200);
          OUTLINED_FUNCTION_226();

          *(v196 + 4) = v254;
          OUTLINED_FUNCTION_204(&dword_2688BB000, v192, v193, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_214();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();

          v201 = v263;
        }

        else
        {

          OUTLINED_FUNCTION_143();
          (v291)(v254, 0);
          v201 = v283;
        }

        (v97)(v201);
        sub_268B35254();
        OUTLINED_FUNCTION_103();
        sub_2688CC6AC();
        v218 = v230;

        v231 = OUTLINED_FUNCTION_189();
        (v291)(v231);
        v155 = v282;
        v122 = v283;
        v98 = v291;
        if (v218)
        {
          goto LABEL_36;
        }
      }

      v233 = OUTLINED_FUNCTION_17_1(&a9);
      v234(v233);
      v204 = sub_268B37A34();
      sub_268B37EE4();
      v235 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v235, v236))
      {
        OUTLINED_FUNCTION_64();
        v237 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v237);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v238, v239, v240, v241, v242, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v243 = OUTLINED_FUNCTION_58();
      (v97)(v243);
      sub_2688C2ECC();
      OUTLINED_FUNCTION_99();
      v214 = swift_allocError();
      v216 = 8;
    }

    OUTLINED_FUNCTION_83(v214, v215, v216);
    v244 = OUTLINED_FUNCTION_269();
    v245(v244);
    v151 = v204;
LABEL_41:
    sub_2688C058C(v151, v287, v288);
    sub_2688E73C0(v122, type metadata accessor for MediaPlayerIntent);
    goto LABEL_42;
  }

  sub_2688C058C(v30, &qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_30();
  v108();
  v109 = sub_268B37A34();
  sub_268B37EE4();
  v110 = OUTLINED_FUNCTION_28();
  if (os_log_type_enabled(v110, v111))
  {
    OUTLINED_FUNCTION_64();
    v112 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v112);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v113, v114, v115, v116, v117, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  OUTLINED_FUNCTION_95();
  v97();
  sub_2688C2ECC();
  OUTLINED_FUNCTION_99();
  v118 = swift_allocError();
  OUTLINED_FUNCTION_83(v118, v119, 5);
  v120 = OUTLINED_FUNCTION_269();
  v121(v120);
  sub_2688C058C(v109, v287, v288);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

void sub_2688CB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(void), uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_26();
  a19 = v30;
  a20 = v31;
  OUTLINED_FUNCTION_173(v32, v33, v34, v35, v31, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v41);
  v260 = sub_268B37124();
  v42 = OUTLINED_FUNCTION_1(v260);
  v250 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v47);
  v48 = OUTLINED_FUNCTION_103();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  v51 = OUTLINED_FUNCTION_156(v50);
  OUTLINED_FUNCTION_1(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v55);
  v271 = v28;
  v272 = v27;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v27);
  OUTLINED_FUNCTION_4(v269);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v59 = sub_268B35494();
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_75();
  v67 = type metadata accessor for MediaIntent();
  v68 = OUTLINED_FUNCTION_4(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_2();
  v267 = v71;
  OUTLINED_FUNCTION_9();
  v72 = sub_268B37A54();
  v73 = OUTLINED_FUNCTION_1(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v87 = OUTLINED_FUNCTION_82(v72, qword_2802CDA10);
  v88 = v75;
  v90 = OUTLINED_FUNCTION_172(v87, v89);
  v91(v90);
  v92 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v92, v93))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_304(&dword_2688BB000, v94, v95, "DeviceDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v96 = *(v88 + 8);
  v97 = v275;
  (v96)(v26);
  sub_268B35414();
  v98 = OUTLINED_FUNCTION_286();
  sub_26892E9C4(v98, v99, v100);
  OUTLINED_FUNCTION_124(v29);
  if (!v101)
  {
    OUTLINED_FUNCTION_35();
    v116 = v267;
    sub_2688E7348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    v117 = sub_268B35254();
    MEMORY[0x28223BE20](v117);
    OUTLINED_FUNCTION_59();
    *(v118 - 16) = v267;
    v119 = OUTLINED_FUNCTION_216();
    sub_2688C9364(v119, v120, v121, v122, v123, v124, v125, v126, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, v262, v264);
    OUTLINED_FUNCTION_101();

    OUTLINED_FUNCTION_116();
    sub_2688EA07C(v145, 255, v146);
    OUTLINED_FUNCTION_148();
    v147 = sub_268B37834();
    v148 = v266;
    if (v147)
    {
      v149 = a26;
      OUTLINED_FUNCTION_109(&a15);
      OUTLINED_FUNCTION_30();
      v150();
      v151 = sub_268B37A34();
      v152 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v152))
      {
        OUTLINED_FUNCTION_64();
        v153 = swift_slowAlloc();
        *v153 = 0;
        OUTLINED_FUNCTION_247();
        _os_log_impl(v154, v155, v156, v157, v153, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      OUTLINED_FUNCTION_95();
      v96();
      sub_268B35254();
      v158 = OUTLINED_FUNCTION_227();
      sub_2688E7530(v158, v159, v160, v161, v162, v163, v164, v165, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, v263, v265);
      OUTLINED_FUNCTION_154();

      if (sub_2688EFD0C(v149))
      {
        v166 = OUTLINED_FUNCTION_17_1(&a11);
        v167(v166);

        v168 = sub_268B37A34();
        v169 = sub_268B37F04();

        if (os_log_type_enabled(v168, v169))
        {
          OUTLINED_FUNCTION_68();
          v170 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v171 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v171);
          *v170 = 136315138;
          type metadata accessor for Device();
          v172 = OUTLINED_FUNCTION_148();
          v173 = MEMORY[0x26D6256F0](v172);
          sub_26892CDB8(v173, v174, &v276);
          OUTLINED_FUNCTION_241();
          *(v170 + 4) = v275;
          v97 = v275;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          v180 = OUTLINED_FUNCTION_34();
          MEMORY[0x26D6266E0](v180);
        }

        OUTLINED_FUNCTION_95();
        v96();
        if (sub_2688EFD0C(v149) == 1)
        {
          sub_2688EFD10(0, (v149 & 0xC000000000000001) == 0, v149);
          if ((v149 & 0xC000000000000001) != 0)
          {
            v213 = MEMORY[0x26D625BD0](0, v149);
          }

          else
          {
            v213 = *(v149 + 32);
          }

          v214 = v213;

LABEL_36:
          v228 = v214;
          v127 = v97;
          v128 = a24;
          v129 = v214;
          sub_2688DC348(v129);
          v274(v268, v273, v127);
          v130 = v129;
          v131 = sub_268B37A34();
          v132 = sub_268B37F04();

          if (os_log_type_enabled(v131, v132))
          {
            OUTLINED_FUNCTION_68();
            v133 = swift_slowAlloc();
            v134 = OUTLINED_FUNCTION_236();
            *v133 = 138412290;
            *(v133 + 4) = v130;
            *v134 = v130;
            v135 = v130;
            OUTLINED_FUNCTION_247();
            _os_log_impl(v136, v137, v138, v139, v133, 0xCu);
            sub_2688C058C(v134, &qword_2802A6420, &unk_268B3C680);
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
            OUTLINED_FUNCTION_55();
            MEMORY[0x26D6266E0]();
          }

          v96();
          v278 = type metadata accessor for Device();
          v276 = v130;
          v128(0);
          v140 = v130;
          v141 = v148;
          OUTLINED_FUNCTION_209();
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_153(&a17);
          v142 = OUTLINED_FUNCTION_179();
          v143(v142);
          swift_storeEnumTagMultiPayload();
          v270(v132);

          v144 = v132;
          goto LABEL_41;
        }

        v215 = OUTLINED_FUNCTION_17_1(&v277);
        v216(v215);
        v200 = sub_268B37A34();
        sub_268B37EE4();
        v217 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v217, v218))
        {
          OUTLINED_FUNCTION_64();
          v219 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v219);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v220, v221, v222, v223, v224, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v225 = OUTLINED_FUNCTION_58();
        (v96)(v225);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v210 = swift_allocError();
        v212 = 7;
      }

      else
      {

        v198 = OUTLINED_FUNCTION_17_1(&v278);
        v199(v198);
        v200 = sub_268B37A34();
        sub_268B37EE4();
        v201 = OUTLINED_FUNCTION_28();
        if (os_log_type_enabled(v201, v202))
        {
          OUTLINED_FUNCTION_64();
          v203 = swift_slowAlloc();
          OUTLINED_FUNCTION_81(v203);
          OUTLINED_FUNCTION_27();
          _os_log_impl(v204, v205, v206, v207, v208, 2u);
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        v209 = OUTLINED_FUNCTION_58();
        (v96)(v209);
        sub_2688C2ECC();
        OUTLINED_FUNCTION_99();
        v210 = swift_allocError();
        v212 = 6;
      }
    }

    else
    {
      v181 = *(v67 + 36);
      OUTLINED_FUNCTION_301();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_135(v182, v183, 0);
      if (v101)
      {
        sub_2688C058C(v267, &qword_2802A58C0, &unk_268B3F080);
      }

      else
      {
        OUTLINED_FUNCTION_133(&a9);
        v184 = OUTLINED_FUNCTION_123();
        v185(v184);
        OUTLINED_FUNCTION_30();
        v186();
        OUTLINED_FUNCTION_120();
        v187 = OUTLINED_FUNCTION_230();
        v188(v187);
        v189 = sub_268B37A34();
        v190 = sub_268B37F04();
        v191 = OUTLINED_FUNCTION_71();
        if (os_log_type_enabled(v191, v192))
        {
          OUTLINED_FUNCTION_68();
          v193 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v194 = swift_slowAlloc();
          OUTLINED_FUNCTION_280(v194);
          *v193 = 136315138;
          sub_268B37104();
          OUTLINED_FUNCTION_226();
          OUTLINED_FUNCTION_143();
          v275();
          v195 = OUTLINED_FUNCTION_190();
          sub_26892CDB8(v195, v196, v197);
          OUTLINED_FUNCTION_226();

          *(v193 + 4) = v249;
          OUTLINED_FUNCTION_204(&dword_2688BB000, v189, v190, "Found list position index: (%s) in the intent. Mapping the user's selection to a device from the disambiguation list");
          OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
          OUTLINED_FUNCTION_214();
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0]();
        }

        else
        {

          OUTLINED_FUNCTION_143();
          (v275)(v249, 0);
        }

        (v96)(v247);
        sub_268B35254();
        OUTLINED_FUNCTION_103();
        sub_2688CC6AC();
        v214 = v226;

        v227 = OUTLINED_FUNCTION_189();
        (v275)(v227);
        v148 = v266;
        v116 = v267;
        v97 = v275;
        if (v214)
        {
          goto LABEL_36;
        }
      }

      v229 = OUTLINED_FUNCTION_17_1(&a10);
      v230(v229);
      v200 = sub_268B37A34();
      sub_268B37EE4();
      v231 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v231, v232))
      {
        OUTLINED_FUNCTION_64();
        v233 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v233);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v234, v235, v236, v237, v238, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v239 = OUTLINED_FUNCTION_58();
      (v96)(v239);
      sub_2688C2ECC();
      OUTLINED_FUNCTION_99();
      v210 = swift_allocError();
      v212 = 8;
    }

    OUTLINED_FUNCTION_83(v210, v211, v212);
    v240 = OUTLINED_FUNCTION_269();
    v241(v240);
    v144 = v200;
LABEL_41:
    sub_2688C058C(v144, v271, v272);
    sub_2688E73C0(v116, type metadata accessor for MediaIntent);
    goto LABEL_42;
  }

  sub_2688C058C(v29, &qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_30();
  v102();
  v103 = sub_268B37A34();
  sub_268B37EE4();
  v104 = OUTLINED_FUNCTION_28();
  if (os_log_type_enabled(v104, v105))
  {
    OUTLINED_FUNCTION_64();
    v106 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v106);
    OUTLINED_FUNCTION_27();
    _os_log_impl(v107, v108, v109, v110, v111, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  OUTLINED_FUNCTION_95();
  v96();
  sub_2688C2ECC();
  OUTLINED_FUNCTION_99();
  v112 = swift_allocError();
  OUTLINED_FUNCTION_83(v112, v113, 5);
  v114 = OUTLINED_FUNCTION_269();
  v115(v114);
  sub_2688C058C(v103, v28, v272);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

BOOL sub_2688CC504(void *a1, uint64_t a2)
{
  v3 = [a1 routeId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;

    v8 = (a2 + *(type metadata accessor for MediaPlayerIntent() + 92));
    v9 = v8[1];
    if (v9)
    {
      if (v5 == *v8 && v9 == v7)
      {

        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_278();
        sub_268B38444();
        OUTLINED_FUNCTION_270();

        return a2 & 1;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for MediaPlayerIntent();
    return OUTLINED_FUNCTION_292(*(v12 + 92));
  }
}

BOOL sub_2688CC5D8(void *a1, uint64_t a2)
{
  v3 = [a1 routeId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;

    v8 = (a2 + *(type metadata accessor for MediaIntent() + 76));
    v9 = v8[1];
    if (v9)
    {
      if (v5 == *v8 && v9 == v7)
      {

        return 1;
      }

      else
      {
        OUTLINED_FUNCTION_278();
        sub_268B38444();
        OUTLINED_FUNCTION_270();

        return a2 & 1;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for MediaIntent();
    return OUTLINED_FUNCTION_292(*(v12 + 76));
  }
}

void sub_2688CC6AC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = sub_268B37114();
  v15 = sub_2688CC9E8(v14, v1);
  v16 = v15;
  if (v15)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v15 = swift_once();
    }

    OUTLINED_FUNCTION_61(v15, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v17(v13);

    v18 = v16;
    v19 = sub_268B37A34();
    v20 = sub_268B37F04();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_69();
      v21 = swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_69();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v21 = 136315650;
      v22 = type metadata accessor for Device();
      v23 = MEMORY[0x26D6256F0](v1, v22);
      v47 = v19;
      v24 = v16;
      v25 = v23;
      v46 = v20;
      v27 = v26;

      v28 = v25;
      v29 = v24;
      v30 = sub_26892CDB8(v28, v27, &v50);

      *(v21 + 4) = v30;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v14;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v18;
      v31 = v48;
      *v48 = v29;
      v32 = v18;
      v33 = v47;
      _os_log_impl(&dword_2688BB000, v47, v46, "Matching item from list: %s at index: %ld is: %@", v21, 0x20u);
      sub_2688C058C(v31, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    else
    {
    }

    (*(v5 + 8))(v13, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v15 = swift_once();
    }

    OUTLINED_FUNCTION_61(v15, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v34 = OUTLINED_FUNCTION_290();
    v35(v34);
    v36 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_64();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v38);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      v44 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v44);
    }

    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688CC9E8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = -v3;
  if (__OFSUB__(0, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 += result;
  if (__OFSUB__(result, v6))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    return 0;
  }

LABEL_7:
  if (v4)
  {
    v7 = sub_268B382A4();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= v7)
  {
    return 0;
  }

  sub_2688EFD10(v3, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D625BD0](v3, a2);
  }

  else
  {
    return *(a2 + 8 * v3 + 32);
  }
}

uint64_t sub_2688CCAB4()
{
  OUTLINED_FUNCTION_252();
  sub_268B36754();
  OUTLINED_FUNCTION_191();
  return sub_268B366F4();
}

uint64_t sub_2688CCB64(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = a2;
  v67 = a7;
  v68 = a8;
  v75 = a5;
  v69 = a3;
  v70 = a4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v66 = *(v74 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v62 = *(v14 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - v15;
  v16 = sub_268B367A4();
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x28223BE20](v16);
  v57 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B37A54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v72 = a11;
  v60 = a9;
  v61 = a10;
  v24 = __swift_project_value_buffer(v19, qword_2802CDA10);
  (*(v20 + 16))(v23, v24, v19);

  v25 = sub_268B37A34();
  v26 = sub_268B37ED4();

  v27 = os_log_type_enabled(v25, v26);
  v59 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = a6;
    v29 = v28;
    v30 = swift_slowAlloc();
    v54 = v16;
    v55 = v30;
    v76 = v30;
    *v29 = 136315138;
    sub_268B36714();
    v31 = v57;
    sub_268B36B14();

    v32 = sub_268B36784();
    v34 = v33;
    (*(v58 + 8))(v31, v54);
    v35 = sub_26892CDB8(v32, v34, &v76);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_2688BB000, v25, v26, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before ContextUpdate  = %s", v29, 0xCu);
    v36 = v55;
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x26D6266E0](v36, -1, -1);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  (*(v20 + 8))(v23, v19);
  sub_2688E451C();
  v37 = v66;
  (*(v66 + 16))(v73, v75, v74);
  v38 = (v63 + ((*(v62 + 80) + 24) & ~*(v62 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = &v57[*(v37 + 80) + 8] & ~*(v37 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v59;
  sub_2688E43D8();
  v42 = (v41 + v38);
  v43 = v68;
  *v42 = v67;
  v42[1] = v43;
  v44 = (v41 + v39);
  v45 = v61;
  *v44 = v60;
  v44[1] = v45;
  v47 = v69;
  v46 = v70;
  v48 = v62;
  *(v41 + v63) = v69;
  *(v41 + v48) = v46;
  v49 = v57;
  *(v41 + v58) = v71;
  v50 = v73;
  *&v49[v41] = v72;
  (*(v37 + 32))(v41 + v40, v50, v74);

  v51 = v47;
  v52 = v46;

  sub_2688C3A10(v51, v52, v75, sub_2688E18E8, v41);
}

void sub_2688CD138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t))
{
  OUTLINED_FUNCTION_197();
  a19 = v26;
  a20 = v27;
  v106 = v28;
  v101 = v29;
  v102 = v30;
  v110 = v31;
  v103 = v32;
  v104 = v33;
  v35 = v34;
  v105 = a26;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1(v109);
  v100 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_74();
  v108 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_19_0(v41);
  v96 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  v98 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v47 = sub_268B367A4();
  v48 = OUTLINED_FUNCTION_156(v47);
  v49 = OUTLINED_FUNCTION_1(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v54 = v53 - v52;
  v55 = sub_268B37A54();
  v56 = OUTLINED_FUNCTION_1(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v63 = v62 - v61;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v107 = a23;
  v94 = a21;
  v95 = a22;
  __swift_project_value_buffer(v55, qword_2802CDA10);
  v64 = OUTLINED_FUNCTION_104(v58);
  v65(v64);

  v66 = sub_268B37A34();
  v67 = sub_268B37ED4();

  v93 = v35;
  if (os_log_type_enabled(v66, v67))
  {
    OUTLINED_FUNCTION_68();
    v68 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v91 = v55;
    v69 = swift_slowAlloc();
    a10 = v69;
    *v68 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v70 = sub_268B36784();
    v72 = v71;
    OUTLINED_FUNCTION_153(&a17);
    v73(v54);
    v74 = sub_26892CDB8(v70, v72, &a10);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_2688BB000, v66, v67, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before ContextUpdate  = %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    v75 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v75);
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v58 + 8))(v63, v91);
  }

  else
  {

    v76 = *(v58 + 8);
    v77 = OUTLINED_FUNCTION_191();
    v79(v77, v78);
  }

  sub_2688E451C();
  OUTLINED_FUNCTION_120();
  v80(v108, v110, v109);
  v81 = (v98 + ((*(v96 + 80) + 24) & ~*(v96 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = (((v97 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v100 + 80) + v92 + 8) & ~*(v100 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v93;
  sub_2688E43D8();
  v85 = (v84 + v81);
  *v85 = v101;
  v85[1] = v102;
  v86 = (v84 + v82);
  *v86 = v94;
  v86[1] = v95;
  *(v84 + v99) = v103;
  *(v84 + v97) = v104;
  OUTLINED_FUNCTION_176();
  *(v84 + v87) = v106;
  *(v84 + v92) = v107;
  (*(v100 + 32))(v84 + v83, v108, v109);

  v88 = v103;
  v89 = v104;

  v90 = OUTLINED_FUNCTION_189();
  v105(v90);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688CD694()
{
  OUTLINED_FUNCTION_252();
  sub_268B36754();
  return sub_268B366F4();
}

uint64_t sub_2688CD74C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v88 = a6;
  v89 = a8;
  v100 = a7;
  v87 = a5;
  v101 = a3;
  v102 = a4;
  v92 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v90 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v76 - v19;
  v98 = sub_268B34E24();
  v96 = *(v98 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v26 = *(*(v94 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v94);
  v91 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v80 = &v76 - v30;
  MEMORY[0x28223BE20](v29);
  v93 = &v76 - v31;
  v82 = sub_268B367A4();
  v81 = *(v82 - 8);
  v32 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_268B37A54();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v86 = (&v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v41 = &v76 - v40;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v35, qword_2802CDA10);
  v43 = *(v36 + 16);
  v84 = v42;
  v85 = v36 + 16;
  v83 = v43;
  (v43)(v41);

  v44 = v36;
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v79 = v25;
    v48 = v47;
    v77 = swift_slowAlloc();
    v103[0] = v77;
    *v48 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v49 = sub_268B36784();
    v78 = v22;
    v76 = v44;
    v51 = v50;
    (*(v81 + 8))(v34, v82);
    v52 = sub_26892CDB8(v49, v51, v103);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_2688BB000, v45, v46, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s", v48, 0xCu);
    v53 = v77;
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x26D6266E0](v53, -1, -1);
    v54 = v48;
    v25 = v79;
    MEMORY[0x26D6266E0](v54, -1, -1);

    v55 = *(v76 + 8);
  }

  else
  {

    v55 = *(v44 + 8);
  }

  v55(v41, v35);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    v56 = v86;
    v83(v86, v84, v35);
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v57, v58, "DeviceDisambiguationStrategy.makeDialogForDisambiguation Unable to generate dialog.", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    v55(v56, v35);
    sub_2688C2ECC();
    v60 = swift_allocError();
    *v61 = -60;
    v103[0] = v60;
    v104 = 1;
    v101(v103);
    return sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v92 = a12;
    v86 = a11;
    v85 = a10;
    sub_2688E43D8();
    sub_2688E1FD4(0, 2, v87, v88, v100, 0x6E776F6E6B6E75, 0xE700000000000000, v89, sub_2688EA0E4, sub_268921060, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v63 = __swift_project_boxed_opaque_existential_1((a9 + 144), *(a9 + 168));
    (*(v96 + 104))(v95, *MEMORY[0x277D5BB60], v98);
    v64 = v80;
    sub_2688E451C();

    v65 = sub_268B350F4();
    v66 = *(v65 - 8);
    v67 = v97;
    (*(v66 + 32))(v97, v64, v65);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v65);
    v68 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v68);
    v69 = *v63;
    v70 = v90;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v70, 1, v65) == 1)
    {
      sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v66 + 8))(v70, v65);
    }

    v71 = v95;
    v72 = v99;
    sub_2688E3B38();

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v97, &unk_2802A57B0, &unk_268B3CE00);
    (*(v96 + 8))(v71, v98);
    v73 = v93;
    v74 = v91;
    sub_2688E451C();
    v75 = *(v74 + *(v94 + 48));
    sub_2688CFE60(v86, v74, v75, v92, v101, v102);

    sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v66 + 8))(v74, v65);
  }
}

uint64_t sub_2688CE210(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v88 = a6;
  v89 = a8;
  v100 = a7;
  v87 = a5;
  v101 = a3;
  v102 = a4;
  v92 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v90 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v76 - v19;
  v98 = sub_268B34E24();
  v96 = *(v98 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v26 = *(*(v94 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v94);
  v91 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v80 = &v76 - v30;
  MEMORY[0x28223BE20](v29);
  v93 = &v76 - v31;
  v82 = sub_268B367A4();
  v81 = *(v82 - 8);
  v32 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_268B37A54();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v86 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v76 - v40;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v35, qword_2802CDA10);
  v43 = *(v36 + 16);
  v84 = v42;
  v85 = v36 + 16;
  v83 = v43;
  (v43)(v41);

  v44 = v36;
  v45 = sub_268B37A34();
  v46 = sub_268B37ED4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v79 = v25;
    v48 = v47;
    v77 = swift_slowAlloc();
    v103[0] = v77;
    *v48 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v49 = sub_268B36784();
    v78 = v22;
    v76 = v44;
    v51 = v50;
    (*(v81 + 8))(v34, v82);
    v52 = sub_26892CDB8(v49, v51, v103);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_2688BB000, v45, v46, "DeviceDisambiguationStrategy.makePromptForDisambiguation responseMode before creating output = %s", v48, 0xCu);
    v53 = v77;
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x26D6266E0](v53, -1, -1);
    v54 = v48;
    v25 = v79;
    MEMORY[0x26D6266E0](v54, -1, -1);

    v55 = *(v76 + 8);
  }

  else
  {

    v55 = *(v44 + 8);
  }

  v55(v41, v35);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    v56 = v86;
    v83(v86, v84, v35);
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v57, v58, "DeviceDisambiguationStrategy.makeDialogForDisambiguation Unable to generate dialog.", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    v55(v56, v35);
    sub_2688C2ECC();
    v60 = swift_allocError();
    *v61 = -60;
    v103[0] = v60;
    v104 = 1;
    v101(v103);
    return sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v92 = a12;
    v86 = a11;
    v85 = a10;
    sub_2688E43D8();
    sub_2688E1C2C();
    v63 = __swift_project_boxed_opaque_existential_1((a9 + 144), *(a9 + 168));
    (*(v96 + 104))(v95, *MEMORY[0x277D5BB60], v98);
    v64 = v80;
    sub_2688E451C();

    v65 = sub_268B350F4();
    v66 = *(v65 - 8);
    v67 = v97;
    (*(v66 + 32))(v97, v64, v65);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v65);
    v68 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v68);
    v69 = *v63;
    v70 = v90;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v70, 1, v65) == 1)
    {
      sub_2688C058C(v70, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v66 + 8))(v70, v65);
    }

    v71 = v95;
    v72 = v99;
    sub_2688E3B38();

    sub_2688C058C(v72, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v97, &unk_2802A57B0, &unk_268B3CE00);
    (*(v96 + 8))(v71, v98);
    v73 = v93;
    v74 = v91;
    sub_2688E451C();
    v75 = *(v74 + *(v94 + 48));
    sub_2688D25D4(v86, v74, v75, v92, v101, v102);

    sub_2688C058C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v66 + 8))(v74, v65);
  }
}

void sub_2688CECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, void (*)(void (*)(void, void, void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(void (*)(void, void, void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a27)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_197();
  a19 = v29;
  a20 = v30;
  OUTLINED_FUNCTION_147(v31, v32, v33, v34, v35, v36, v37, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_74();
  v184 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v175 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_78();
  v182 = v50;
  OUTLINED_FUNCTION_9();
  v183 = sub_268B34E24();
  v51 = OUTLINED_FUNCTION_1(v183);
  v181 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2();
  v180 = v55;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v177);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v58);
  v60 = &v163 - v59;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v61 = OUTLINED_FUNCTION_4(v179);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3();
  v176 = v64;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_78();
  v178 = v67;
  OUTLINED_FUNCTION_9();
  v168 = sub_268B367A4();
  v68 = OUTLINED_FUNCTION_1(v168);
  v167 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_2();
  v73 = v72;
  OUTLINED_FUNCTION_9();
  v74 = sub_268B37A54();
  v75 = OUTLINED_FUNCTION_1(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_136();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v74, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v170 = v81;
  v171 = v82;
  v169 = v83;
  v83(v28);

  v84 = sub_268B37A34();
  v85 = sub_268B37ED4();

  if (os_log_type_enabled(v84, v85))
  {
    OUTLINED_FUNCTION_68();
    v86 = swift_slowAlloc();
    v166 = v27;
    v87 = v86;
    OUTLINED_FUNCTION_69();
    v164 = swift_slowAlloc();
    v188[0] = v164;
    *v87 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v88 = sub_268B36784();
    OUTLINED_FUNCTION_259(&a9);
    OUTLINED_FUNCTION_153(&a11);
    v89(v73, v168);
    v90 = OUTLINED_FUNCTION_138();
    sub_26892CDB8(v90, v91, v92);
    OUTLINED_FUNCTION_285();
    v77 = v165;

    *(v87 + 4) = v88;
    OUTLINED_FUNCTION_267();
    _os_log_impl(v93, v94, v95, v96, v97, v98);
    v99 = OUTLINED_FUNCTION_109(&v189);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v100 = *(v77 + 8);
  v100(v28, v74);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v60, &qword_2802A6300, &unk_268B3BD80);
    v101 = OUTLINED_FUNCTION_175(&a16);
    v169(v101, v170, v74);
    v102 = sub_268B37A34();
    sub_268B37EE4();
    v103 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v103, v104))
    {
      OUTLINED_FUNCTION_64();
      v105 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v105);
      OUTLINED_FUNCTION_72();
      _os_log_impl(v106, v107, v108, v109, v60, 2u);
      v110 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v110);
    }

    v111 = OUTLINED_FUNCTION_97();
    (v100)(v111);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v112 = swift_allocError();
    v114 = OUTLINED_FUNCTION_39(v112, v113, 196);
    v115(v114);
    sub_2688C058C(v188, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v177 = a27;
    OUTLINED_FUNCTION_181();
    v169 = a22;
    v116 = a21;
    v170 = a26;
    v117 = a25;
    OUTLINED_FUNCTION_282();
    sub_2688E43D8();
    v118 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_206(v118, v119, v120, v121, v122, v123, v124, v125, sub_2688E0310, v117, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
    v127 = v126;
    v129 = v128;
    v130 = __swift_project_boxed_opaque_existential_1((v116 + 144), *(v116 + 168));
    (*(v181 + 104))(v180, *MEMORY[0x277D5BB60], v183);
    v131 = v173;
    OUTLINED_FUNCTION_282();
    sub_2688E451C();
    OUTLINED_FUNCTION_256();

    v133 = sub_268B350F4();
    OUTLINED_FUNCTION_182(v133);
    v135 = v134;
    (*(v134 + 32))(v182, v131, v133);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v133);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
    v143 = *v130;
    v144 = v175;
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(v144, 1, v133) == 1)
    {
      sub_2688C058C(v144, &unk_2802A57B0, &unk_268B3CE00);
      v145 = 0;
      v146 = 0;
    }

    else
    {
      v145 = sub_268B350B4();
      v146 = v147;
      v148 = *(v135 + 8);
      v149 = OUTLINED_FUNCTION_278();
      v150(v149);
    }

    v162 = v143;
    v151 = v180;
    v152 = v184;
    v170(v169, v180, v185, v145, v146, v127, v129, v184, v162);

    sub_2688C058C(v152, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v182, &unk_2802A57B0, &unk_268B3CE00);
    (*(v181 + 8))(v151, v183);
    v153 = v176;
    sub_2688E451C();
    OUTLINED_FUNCTION_256();
    v155 = *(v153 + v154);
    v177(v171, v153, v155, v172, v186, v187);

    OUTLINED_FUNCTION_268();
    sub_2688C058C(v156, v157, v158);
    v159 = *(v135 + 8);
    v160 = OUTLINED_FUNCTION_192();
    v161(v160);
  }

  OUTLINED_FUNCTION_198();
}

void sub_2688CF550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_197();
  a19 = v32;
  a20 = v33;
  OUTLINED_FUNCTION_147(v34, v35, v36, v37, v38, v39, v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_74();
  v168 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  v160 = v51;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_78();
  v166 = v53;
  OUTLINED_FUNCTION_9();
  v167 = sub_268B34E24();
  v54 = OUTLINED_FUNCTION_1(v167);
  v165 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2();
  v164 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_74();
  v162 = v63;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v64 = OUTLINED_FUNCTION_4(v163);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3();
  v161 = v67;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v151 = sub_268B367A4();
  v70 = OUTLINED_FUNCTION_1(v151);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v73);
  v74 = sub_268B37A54();
  v75 = OUTLINED_FUNCTION_1(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_136();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v74, qword_2802CDA10);
  v153 = *(v77 + 16);
  v153(v30);

  v81 = sub_268B37A34();
  v82 = sub_268B37ED4();

  if (os_log_type_enabled(v81, v82))
  {
    OUTLINED_FUNCTION_68();
    v148 = v29;
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v147 = v74;
    v145 = swift_slowAlloc();
    v169[0] = v145;
    *v83 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v84 = sub_268B36784();
    OUTLINED_FUNCTION_259(&v171);
    OUTLINED_FUNCTION_153(&a12);
    v85(v149, v151);
    v86 = OUTLINED_FUNCTION_138();
    sub_26892CDB8(v86, v87, v88);
    OUTLINED_FUNCTION_285();
    v31 = v146;

    *(v83 + 4) = v84;
    OUTLINED_FUNCTION_267();
    _os_log_impl(v89, v90, v91, v92, v93, v94);
    v95 = OUTLINED_FUNCTION_109(&v170);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v96 = *(v77 + 8);
  v96(v30, v74);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v162, &qword_2802A6300, &unk_268B3BD80);
    OUTLINED_FUNCTION_217();
    v153(v97);
    v98 = sub_268B37A34();
    sub_268B37EE4();
    v99 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_64();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v101);
      OUTLINED_FUNCTION_72();
      _os_log_impl(v102, v103, v104, v105, v59, 2u);
      v106 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v106);
    }

    v96(v31, v74);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v107 = swift_allocError();
    v109 = OUTLINED_FUNCTION_39(v107, v108, 196);
    v110(v109);
    sub_2688C058C(v169, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v156 = a29;
    v155 = a24;
    v154 = a23;
    v111 = a21;
    v152 = a27;
    v150 = a26;
    v112 = a25;
    OUTLINED_FUNCTION_282();
    sub_2688E43D8();
    v113 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_206(v113, v114, v115, v116, v117, v118, v119, v120, sub_2688DF9AC, v112, v145, v146, v147, v148, v149, v150, v152, v154, v155, v156, v157, v159);
    v121 = __swift_project_boxed_opaque_existential_1((v111 + 144), *(v111 + 168));
    (*(v165 + 104))(v164, *MEMORY[0x277D5BB60], v167);
    OUTLINED_FUNCTION_282();
    sub_2688E451C();
    OUTLINED_FUNCTION_256();

    v123 = sub_268B350F4();
    OUTLINED_FUNCTION_182(v123);
    v125 = v124;
    v126 = *(v124 + 32);
    v127 = OUTLINED_FUNCTION_275();
    v128(v127);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v123);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
    v136 = *v121;
    sub_2688E451C();
    v137 = OUTLINED_FUNCTION_257();
    if (__swift_getEnumTagSinglePayload(v137, v138, v123) == 1)
    {
      sub_2688C058C(v160, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v125 + 8))(v160, v123);
    }

    sub_2688E2F9C();

    sub_2688C058C(v168, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v166, &unk_2802A57B0, &unk_268B3CE00);
    (*(v165 + 8))(v164, v167);
    sub_2688E451C();
    OUTLINED_FUNCTION_256();
    v140 = *(v161 + v139);
    OUTLINED_FUNCTION_217();
    v141();

    OUTLINED_FUNCTION_268();
    sub_2688C058C(v142, v143, v144);
    (*(v125 + 8))(v161, v123);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_2688CFE60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BE18;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D51EC(v84, v24, v46, v83, v86);

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D0634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BEF8;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D0E1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BF28;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D1604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BF48;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D1DEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BF68;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D25D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BF88;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D2DBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BFB0;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D35A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BFD0;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D3D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3BFF0;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

uint64_t sub_2688D4574(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a5;
  v87 = a6;
  v83 = a4;
  v84 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v12;
  v13 = sub_268B35044();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = v15;
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_268B36A54();
  v85 = *(v89 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - v26;
  v73 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = sub_268B350F4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v30, a2, v31);
  *&v30[*(v20 + 48)] = a3;
  v34 = v7[11];
  v33 = v7[12];
  v82 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 8, v34);
  v35 = a3;
  if (sub_268B36FA4())
  {
    v36 = v32;
    v70 = v31;
    v37 = v82;
    v71 = v24;
    v80 = v30;
    sub_2688E451C();
    v38 = *&v27[*(v20 + 48)];
    v39 = [v38 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v40 = sub_268B37CF4();

    if (sub_2688EFD0C(v40))
    {
      sub_2688EFD10(0, (v40 & 0xC000000000000001) == 0, v40);
      v41 = v37;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D625BD0](0, v40);
      }

      else
      {
        v42 = *(v40 + 32);
      }

      v43 = v42;
      v44 = v70;

      v45 = [v43 fullPrint];

      sub_268B37BF4();
    }

    else
    {

      v41 = v37;
      v44 = v70;
    }

    (*(v36 + 8))(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
    sub_268B35254();
    v48 = v88;
    sub_2688D4D5C();

    v49 = __swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v50 = v89;
    v90[3] = v89;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v90);
    v52 = *(v85 + 16);
    v52(boxed_opaque_existential_0Tm, v48, v50);
    v53 = *v49;
    sub_268948494(v90);
    sub_2688C058C(v90, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    v54 = sub_268B36734();
    if (v54)
    {
      v55 = v84;
      v83 = v54;
    }

    else
    {
      v83 = sub_268B36744();
      v55 = v84;
    }

    v56 = v77;
    v57 = v78;
    v58 = v79;
    (*(v78 + 16))(v77, v55, v79);
    sub_2688E451C();
    v59 = v76;
    v52(v76, v88, v89);
    v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v61 = v85;
    v62 = (v73 + *(v85 + 80) + ((v75 + *(v72 + 80) + v60) & ~*(v72 + 80))) & ~*(v85 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v83;
    (*(v57 + 32))(v63 + v60, v56, v58);
    sub_2688E43D8();
    v64 = v63 + v62;
    v65 = v89;
    (*(v61 + 32))(v64, v59, v89);
    v66 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v66);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = &unk_268B3C010;
    v67[5] = v63;
    v68 = v87;
    v67[6] = v86;
    v67[7] = v68;

    sub_2688DB634();

    (*(v61 + 8))(v88, v65);
    return sub_2688C058C(v80, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688E451C();
    v46 = *&v24[*(v20 + 48)];
    sub_2688D550C();

    sub_2688C058C(v30, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v32 + 8))(v24, v31);
  }
}

void sub_2688D4D5C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v51 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E8, &unk_268B3BE60);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_9();
  v50 = sub_268B36A44();
  v8 = OUTLINED_FUNCTION_1(v50);
  v52 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v12, qword_2802CDA10);
  v18 = OUTLINED_FUNCTION_139(v15);
  v19(v18);

  v20 = sub_268B37A34();
  v21 = sub_268B37F04();

  v54 = v2;
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_68();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v23 = swift_slowAlloc();
    v55 = v23;
    v24 = OUTLINED_FUNCTION_244(4.8149e-34);
    v25 = MEMORY[0x26D6256F0](v2, v24);
    v27 = sub_26892CDB8(v25, v26, &v55);

    *(v22 + 4) = v27;
    v2 = v54;
    OUTLINED_FUNCTION_204(&dword_2688BB000, v20, v21, "DeviceDisambiguationStrategy.snippetDisambiguationItems Creating disambiguation view with devices: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v15 + 8))(v0, v12);
  v12 = sub_2688EFD0C(v2);
  v28 = 0;
  v15 = v2 & 0xC000000000000001;
  v0 = v2 & 0xFFFFFFFFFFFFFF8;
  v53 = MEMORY[0x277D84F90];
  while (v12 != v28)
  {
    if (v15)
    {
      v29 = MEMORY[0x26D625BD0](v28, v2);
    }

    else
    {
      if (v28 >= *(v0 + 16))
      {
        goto LABEL_23;
      }

      v29 = *(v2 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_268988580(v29);
    if (v32 || (sub_268988568(v30), v33))
    {
      sub_26892D418(v30);
      if (!v34)
      {

        v2 = v54;
        goto LABEL_14;
      }

      sub_268B34534();
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      sub_268B36A34();

      v39 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = *(v53 + 16);
        OUTLINED_FUNCTION_88();
        sub_2689879FC();
        v39 = v45;
      }

      v2 = v54;
      v40 = *(v39 + 16);
      if (v40 >= *(v39 + 24) >> 1)
      {
        sub_2689879FC();
        v39 = v46;
      }

      *(v39 + 16) = v40 + 1;
      v41 = *(v52 + 80);
      OUTLINED_FUNCTION_258();
      v53 = v39;
      (*(v43 + 32))(v39 + v42 + *(v43 + 72) * v40);
      v28 = v31;
    }

    else
    {
LABEL_14:

      ++v28;
    }
  }

  sub_268B36AB4();
  v47 = *MEMORY[0x277D55558];
  v48 = sub_268B36A54();
  OUTLINED_FUNCTION_4(v48);
  (*(v49 + 104))(v51, v47);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D51EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  v20 = sub_268B350F4();
  (*(*(v20 - 8) + 16))(v19, a2, v20);
  *&v19[*(v16 + 56)] = a3;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v22 = sub_268B35254();
  sub_2688D57F8(v22);
  v24 = v23;

  v25 = __swift_project_boxed_opaque_existential_1(v6 + 18, v6[21]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v33[0] = v24;
  v26 = *v25;

  sub_268948494(v33);
  sub_2688C058C(v33, &byte_2802A6450, &byte_268B3BE10);
  v27 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_268B34CA4();
  v28 = sub_268B35044();
  (*(*(v28 - 8) + 16))(v14, a1, v28);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
  v29 = sub_268B354F4();
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v34 = v29;
  v35 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_0Tm(v33);
  sub_268B34F34();

  sub_2688C058C(v31, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v14, &qword_2802A57F0, &qword_268B3DDB0);
  v36 = 0;
  a5(v33);
  sub_2688C058C(v19, &unk_2802A56E0, &unk_268B3CDF0);
  return sub_2688C058C(v33, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2688D550C()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_94();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 16);
  v20 = OUTLINED_FUNCTION_275();
  v21(v20);
  *&v16[v12[14]] = v5;
  v22 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  sub_268B35254();
  sub_2688D5B00();
  v24 = v23;

  v25 = __swift_project_boxed_opaque_existential_1(v2 + 18, v2[21]);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v38[0] = v24;
  v26 = *v25;

  sub_268948494(v38);
  sub_2688C058C(v38, &byte_2802A6450, &byte_268B3BE10);
  v27 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_129();
  sub_268B34CA4();
  v28 = sub_268B35044();
  OUTLINED_FUNCTION_4(v28);
  (*(v29 + 16))(v1, v7, v28);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  v33 = sub_268B354F4();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v39 = v33;
  v40 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_0Tm(v38);
  sub_268B34F34();

  sub_2688C058C(v36, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v1, &qword_2802A57F0, &qword_268B3DDB0);
  v41 = 0;
  v35(v38);
  sub_2688C058C(v16, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v38, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

double sub_2688D57F8(uint64_t a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v7, v8, v3);

  v9 = sub_268B37A34();
  v10 = sub_268B37F04();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = type metadata accessor for Device();
    v14 = MEMORY[0x26D6256F0](a1, v13);
    v16 = sub_26892CDB8(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2688BB000, v9, v10, "Creating disambiguation view with devices: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D6266E0](v12, -1, -1);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  v17 = (*(v4 + 8))(v7, v3);
  MEMORY[0x28223BE20](v17);
  *(&v22 - 2) = &v24;
  sub_2688C3644(sub_2688EA370, (&v22 - 4), a1);
  v18 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
  sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
  v19 = sub_268B37CE4();

  [v18 setItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v20 = swift_allocObject();
  *&result = 1;
  *(v20 + 16) = xmmword_268B3BBA0;
  *(v20 + 32) = v18;
  return result;
}

void sub_2688D5B00()
{
  OUTLINED_FUNCTION_26();
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v30 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v3, qword_2802CDA10);
  (*(v6 + 16))(v1);

  v9 = sub_268B37A34();
  v10 = sub_268B37F04();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_68();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    type metadata accessor for Device();
    v13 = OUTLINED_FUNCTION_148();
    v14 = MEMORY[0x26D6256F0](v13);
    sub_26892CDB8(v14, v15, &v29);
    OUTLINED_FUNCTION_234();
    *(v11 + 4) = v2;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v16, v17, "Creating disambiguation view with devices: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v18 = *(v6 + 8);
  v19 = OUTLINED_FUNCTION_122();
  v21 = v20(v19);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_59();
  *(v22 - 16) = &v30;
  v23 = OUTLINED_FUNCTION_290();
  sub_2688C3644(v23, v24, v25);
  v26 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
  sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
  OUTLINED_FUNCTION_148();
  v27 = sub_268B37CE4();

  [v26 setItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  OUTLINED_FUNCTION_220();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_268B3BBA0;
  *(v28 + 32) = v26;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D5D88(void (*a1)(uint64_t), void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9)
{
  v77 = a8;
  v83 = a6;
  v84 = a7;
  v72 = a5;
  v71 = a4;
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v9 = sub_268B37A54();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 8);
  MEMORY[0x28223BE20](v9);
  v81 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = sub_268B34E24();
  v82 = *(v24 - 1);
  v25 = *(v82 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v79 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v70 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = (&v70 - v39);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v31, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v76;
    v42 = __swift_project_value_buffer(v76, qword_2802CDA10);
    v43 = v75;
    (*(v75 + 2))(v81, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "DeviceDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    (*(v43 + 8))(v81, v41);
    sub_2688C2ECC();
    v47 = swift_allocError();
    *v48 = -78;
    v87[0] = v47;
    v88 = 1;
    v85(v87);
    return sub_2688C058C(v87, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v76 = a9;
    sub_2688E43D8();
    sub_2688E1FD4(0, 1, v71, v72, v83, 0x6E776F6E6B6E75, 0xE700000000000000, 0, sub_2688EA0E4, sub_268921060, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    v72 = v50;
    v51 = __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    v52 = *MEMORY[0x277D5BC08];
    v53 = *(v82 + 104);
    v75 = v27;
    v80 = v24;
    v53(v27, v52, v24);
    v81 = v40;
    sub_2688E451C();

    v54 = sub_268B350F4();
    v55 = *(v54 - 8);
    (*(v55 + 32))(v23, v38, v54);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v54);
    v56 = sub_268B34B94();
    v57 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v56);
    v58 = *v51;
    v59 = v73;
    sub_2688E451C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v54);
    v70 = v32;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v59, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v55 + 8))(v59, v54);
    }

    v61 = v75;
    sub_2688E3B38();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v23, &unk_2802A57B0, &unk_268B3CE00);
    (*(v82 + 8))(v61, v80);
    v62 = v84[26];
    v63 = v84[27];
    __swift_project_boxed_opaque_existential_1(v84 + 23, v62);
    v64 = v79;
    sub_2688E451C();
    v65 = *(v64 + *(v70 + 48));
    v66 = sub_268B35044();
    v67 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v66);
    v68 = v76;
    if (v76 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v64 = v79;
      v69 = sub_268B38294();

      v68 = v69;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v63 + 32))(v64, v65, v67, v68, v85, v86, v62, v63);

    sub_2688C058C(v67, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v81, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v55 + 8))(v64, v54);
  }
}

uint64_t sub_2688D66CC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9)
{
  v77 = a8;
  v83 = a6;
  v84 = a7;
  v72 = a5;
  v71 = a4;
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v9 = sub_268B37A54();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 8);
  MEMORY[0x28223BE20](v9);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = sub_268B34E24();
  v81 = *(v24 - 8);
  v25 = *(v81 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v79 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v70 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v70 - v39;
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v31, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v76;
    v42 = __swift_project_value_buffer(v76, qword_2802CDA10);
    v43 = v75;
    (*(v75 + 2))(v82, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "DeviceDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v46, 2u);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    v43[1](v82, v41);
    sub_2688C2ECC();
    v47 = swift_allocError();
    *v48 = -78;
    v87[0] = v47;
    v88 = 1;
    v85(v87);
    return sub_2688C058C(v87, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v76 = a9;
    sub_2688E43D8();
    sub_2688E1C2C();
    v71 = v50;
    v51 = __swift_project_boxed_opaque_existential_1(v84 + 18, v84[21]);
    v52 = *MEMORY[0x277D5BC08];
    v53 = *(v81 + 104);
    v75 = v27;
    v80 = v24;
    v53(v27, v52, v24);
    v82 = v40;
    sub_2688E451C();

    v54 = sub_268B350F4();
    v55 = *(v54 - 8);
    (*(v55 + 32))(v23, v38, v54);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v54);
    v56 = sub_268B34B94();
    v57 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v56);
    v58 = *v51;
    v59 = v73;
    sub_2688E451C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v54);
    v72 = v55;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v59, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v55 + 8))(v59, v54);
    }

    v61 = v75;
    sub_2688E3B38();

    sub_2688C058C(v57, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v23, &unk_2802A57B0, &unk_268B3CE00);
    (*(v81 + 8))(v61, v80);
    v62 = v84[26];
    v63 = v84[27];
    __swift_project_boxed_opaque_existential_1(v84 + 23, v62);
    v64 = v79;
    sub_2688E451C();
    v65 = *&v64[*(v32 + 48)];
    v66 = sub_268B35044();
    v67 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v66);
    v68 = v76;
    if (v76 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v64 = v79;
      v69 = sub_268B38294();

      v68 = v69;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v63 + 32))(v64, v65, v67, v68, v85, v86, v62, v63);

    sub_2688C058C(v67, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v82, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v72 + 8))(v64, v54);
  }
}

void sub_2688D6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_26();
  v141 = v28;
  OUTLINED_FUNCTION_231(v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_268B37A54();
  v37 = OUTLINED_FUNCTION_1(v36);
  v138 = v38;
  v139 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2();
  v144 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_74();
  v142 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_74();
  v136 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v53 = OUTLINED_FUNCTION_22(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v134 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  v58 = sub_268B34E24();
  v59 = OUTLINED_FUNCTION_1(v58);
  v145 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_75();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v68 = OUTLINED_FUNCTION_4(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_3();
  v143 = v71;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v73);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = sub_2688C058C(v27, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v74 = swift_once();
    }

    OUTLINED_FUNCTION_61(v74, qword_2802CDA10);
    (*(v138 + 16))(v144);
    v75 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_64();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v77);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v78, v79, v80, v81, v82, 2u);
      v83 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v83);
    }

    (*(v138 + 8))(v144, v139);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v84 = swift_allocError();
    v86 = OUTLINED_FUNCTION_39(v84, v85, 178);
    v87(v86);
    sub_2688C058C(&v147, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_97();
    sub_2688E43D8();
    v88 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_177(v88, v89, v90, v91, v92, v93, v94, v95, sub_2688DF9AC, a22, v129, a22, v130, v131, a25, v132, v133, v134, v136, v138, a21, v141);
    OUTLINED_FUNCTION_156(v96);
    v97 = __swift_project_boxed_opaque_existential_1(v146 + 18, v146[21]);
    v98 = *MEMORY[0x277D5BC08];
    v99 = OUTLINED_FUNCTION_288();
    v100(v99);
    OUTLINED_FUNCTION_240();

    v101 = sub_268B350F4();
    OUTLINED_FUNCTION_182(v101);
    v103 = v102;
    v104 = *(v102 + 32);
    v105 = OUTLINED_FUNCTION_138();
    v106(v105);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v101);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
    v114 = *v97;
    sub_2688E451C();
    OUTLINED_FUNCTION_135(v135, 1, v101);
    if (v115)
    {
      sub_2688C058C(v135, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v116 = OUTLINED_FUNCTION_194();
      v117(v116);
    }

    OUTLINED_FUNCTION_217();
    OUTLINED_FUNCTION_128();
    sub_2688E2F9C();

    sub_2688C058C(v137, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v25, &unk_2802A57B0, &unk_268B3CE00);
    (*(v145 + 8))(v135, v58);
    v118 = v146[27];
    __swift_project_boxed_opaque_existential_1(v146 + 23, v146[26]);
    sub_2688E451C();
    v119 = *(v143 + *(v67 + 48));
    sub_268B35044();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
    if (v140 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      OUTLINED_FUNCTION_190();
      sub_268B38294();
      OUTLINED_FUNCTION_129();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v124 = OUTLINED_FUNCTION_121();
    v125(v124);

    sub_2688C058C(v142, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v144, &unk_2802A56E0, &unk_268B3CDF0);
    v126 = *(v103 + 8);
    v127 = OUTLINED_FUNCTION_150();
    v128(v127);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688D7740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v145 = v26;
  OUTLINED_FUNCTION_231(v27, v28, v29, v30, v31, v32, v33);
  v150 = v34;
  v35 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v35);
  v142 = v37;
  v144 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v141 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_74();
  v146 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74();
  v139 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  v137 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_15();
  v57 = sub_268B34E24();
  v58 = OUTLINED_FUNCTION_1(v57);
  v152 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_75();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v67 = OUTLINED_FUNCTION_4(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3();
  v148 = v70;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v72);
  sub_2688E451C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = sub_2688C058C(v25, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v73 = swift_once();
    }

    OUTLINED_FUNCTION_61(v73, qword_2802CDA10);
    v74 = OUTLINED_FUNCTION_104(v142);
    v75(v74);
    v76 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v76, v77))
    {
      OUTLINED_FUNCTION_64();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_10(v78);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      v84 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v84);
    }

    v85 = *(v142 + 8);
    v86 = OUTLINED_FUNCTION_230();
    v87(v86);
    sub_2688C2ECC();
    OUTLINED_FUNCTION_99();
    v88 = swift_allocError();
    v90 = OUTLINED_FUNCTION_39(v88, v89, 178);
    v91(v90);
    sub_2688C058C(&v154, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_97();
    sub_2688E43D8();
    v92 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_177(v92, v93, v94, v95, v96, v97, v98, v99, sub_2688E0310, a22, a23, v135, v136, v137, v139, v141, a21, v144, v145, v146, v148, v150);
    OUTLINED_FUNCTION_156(v100);
    v101 = __swift_project_boxed_opaque_existential_1(v153 + 18, v153[21]);
    v102 = *MEMORY[0x277D5BC08];
    v103 = OUTLINED_FUNCTION_288();
    v104(v103);
    OUTLINED_FUNCTION_240();

    v105 = sub_268B350F4();
    OUTLINED_FUNCTION_182(v105);
    v107 = v106;
    v108 = *(v106 + 32);
    v109 = OUTLINED_FUNCTION_138();
    v110(v109);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v105);
    sub_268B34B94();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
    v118 = *v101;
    sub_2688E451C();
    OUTLINED_FUNCTION_135(v138, 1, v105);
    if (v119)
    {
      sub_2688C058C(v138, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      v120 = OUTLINED_FUNCTION_194();
      v121(v120);
    }

    OUTLINED_FUNCTION_128();
    v134(v122);

    sub_2688C058C(v140, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v23, &unk_2802A57B0, &unk_268B3CE00);
    (*(v152 + 8))(v138, v57);
    v123 = v153[27];
    __swift_project_boxed_opaque_existential_1(v153 + 23, v153[26]);
    sub_2688E451C();
    v124 = *(v149 + *(v66 + 48));
    sub_268B35044();
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
    if (v143 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      OUTLINED_FUNCTION_190();
      sub_268B38294();
      OUTLINED_FUNCTION_129();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v129 = OUTLINED_FUNCTION_121();
    v130(v129);

    sub_2688C058C(v147, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v151, &unk_2802A56E0, &unk_268B3CDF0);
    v131 = *(v107 + 8);
    v132 = OUTLINED_FUNCTION_150();
    v133(v132);
  }

  OUTLINED_FUNCTION_23();
}

id sub_2688D7E68(void *a1, void *a2)
{
  sub_268988580(a1);
  if (!v4)
  {
    sub_268988568(a1);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = [a1 routeId];
  if (v6)
  {
    sub_268B37BF4();

    v6 = [objc_allocWithZone(MEMORY[0x277D47AB8]) init];
    v7 = sub_268B37BC4();

    [v6 setTitle_];

    type metadata accessor for DirectInvocationHelper();
    v8 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    OUTLINED_FUNCTION_186();
    v9 = sub_268B34D34();
    OUTLINED_FUNCTION_268();
    sub_268A691D8();
    v11 = v10;

    if (v11 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
      OUTLINED_FUNCTION_229();
      sub_268B38294();
      OUTLINED_FUNCTION_226();
    }

    else
    {
      sub_268B38454();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    OUTLINED_FUNCTION_229();
    v12 = sub_268B37CE4();

    [v6 setCommands_];
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2688D804C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = a2(0);
  OUTLINED_FUNCTION_245(v4);
  return a3();
}

uint64_t sub_2688D8090()
{
  v0 = sub_268B36434();
  OUTLINED_FUNCTION_245(v0);
  return sub_268B36424();
}

void sub_2688D80C8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v62 = v4;
  v6 = v5;
  v8 = v7;
  v61 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v61);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = sub_268B35044();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v64 = v6;
  v1(0);
  v29 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5950, &qword_268B3BF18);
  if (swift_dynamicCast())
  {
    v60 = v3;
    sub_2688E6514(v63, v65);
    v58 = v23;
    v59 = v20;
    (*(v23 + 16))(v28, v8, v20);
    v30 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v31 = sub_268B35294();
    OUTLINED_FUNCTION_245(v31);
    sub_268B35284();
    (*(v30 + 8))();
    OUTLINED_FUNCTION_129();

    v32 = sub_268B35274();
    v34 = v33;

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v61, qword_2802CDA10);
    v35 = OUTLINED_FUNCTION_104(v11);
    v36(v35);

    v37 = sub_268B37A34();
    v38 = sub_268B37F04();

    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_68();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v40 = swift_slowAlloc();
      *&v63[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_26892CDB8(v32, v34, v63);
      OUTLINED_FUNCTION_267();
      _os_log_impl(v41, v42, v43, v44, v45, v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v47 = *(v11 + 8);
    v48 = OUTLINED_FUNCTION_191();
    v49(v48);
    v50 = v59;
    sub_268B35024();
    v62(v28);
    (*(v58 + 8))(v28, v50);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
  }

  else
  {
    OUTLINED_FUNCTION_203();
    sub_2688C058C(v63, &qword_2802A5958, &qword_268B3BF20);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v51 = v61;
    __swift_project_value_buffer(v61, qword_2802CDA10);
    v52 = OUTLINED_FUNCTION_76();
    v53(v52);
    v54 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_161();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_64();
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v54, v19, "Intent is not a machineUtteranceProvidingIntent. Returning the contextUpdate as is without providing an NL input", v56, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v11 + 8))(v16, v51);
    v62(v8);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688D8540()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35044();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v43 = v24;
  (*(v18 + 16))(v22 - v21, v5);
  v25 = sub_268B35294();
  OUTLINED_FUNCTION_245(v25);
  v42 = v3;
  sub_268B35284();
  sub_268B35264();
  OUTLINED_FUNCTION_154();

  v26 = sub_268B35274();
  v28 = v27;

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v6, qword_2802CDA10);
  v29 = OUTLINED_FUNCTION_104(v9);
  v30(v29);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_68();
    v40 = v6;
    v33 = v26;
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v41 = v1;
    v35 = swift_slowAlloc();
    v44 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_26892CDB8(v33, v28, &v44);
    OUTLINED_FUNCTION_204(&dword_2688BB000, v31, v32, "Adding machine utterance: %s as nlInput to the context update");
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v1 = v41;
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v9 + 8))(v14, v40);
  }

  else
  {

    v36 = *(v9 + 8);
    v37 = OUTLINED_FUNCTION_192();
    v39(v37, v38);
  }

  sub_268B35024();
  v1(v23);
  (*(v18 + 8))(v23, v43);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688D8858(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B35044();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SkipContentIntent();
  v46 = &off_287956B90;
  v44[0] = a2;
  v18 = *(v14 + 16);
  v42 = v13;
  v18(v17, a1, v13);
  v19 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v20 = sub_268B35294();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = a2;
  sub_268B35284();
  v24 = *v19;
  sub_2689EA290();

  v41 = sub_268B35274();
  v26 = v25;

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v12, v27, v8);

  v28 = sub_268B37A34();
  v29 = v8;
  v30 = sub_268B37F04();

  if (os_log_type_enabled(v28, v30))
  {
    v31 = swift_slowAlloc();
    v40 = a3;
    v32 = v31;
    v33 = swift_slowAlloc();
    v39 = a4;
    v34 = v33;
    v43 = v33;
    *v32 = 136315138;
    v38 = v29;
    *(v32 + 4) = sub_26892CDB8(v41, v26, &v43);
    _os_log_impl(&dword_2688BB000, v28, v30, "Adding machine utterance: %s as nlInput to the context update", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x26D6266E0](v34, -1, -1);
    v35 = v32;
    a3 = v40;
    MEMORY[0x26D6266E0](v35, -1, -1);

    (*(v9 + 8))(v12, v38);
  }

  else
  {

    (*(v9 + 8))(v12, v29);
  }

  sub_268B35024();
  a3(v17);
  (*(v14 + 8))(v17, v42);
  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

void sub_2688D8BF8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v12 = sub_268B35044();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2688D9250(1, a1);
  sub_2688D95E0();
  v17 = v16;

  sub_2688D9A20(a2, a3, a4);
  v43 = a1;

  sub_268984794(v17);
  v38 = v15;
  sub_2688D9BB0();

  v18 = sub_2688EFD0C(a4);
  v41 = a6;
  v42 = a5;
  if (v18)
  {
    v19 = v18;
    if (v18 >= 1)
    {
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = (a4 & 0xC000000000000001) != 0 ? MEMORY[0x26D625BD0](v20, a4) : *(a4 + 8 * v20 + 32);
        v23 = v22;
        sub_2689841C4();
        v25 = *(v24 + 16);
        v26 = *(v21 + 16);
        if (__OFADD__(v26, v25))
        {
          break;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native() || (v28 = *(v21 + 24) >> 1, v28 < v26 + v25))
        {
          sub_268987774();
          v21 = v29;
          v28 = *(v29 + 24) >> 1;
        }

        if (*(v27 + 16))
        {
          v30 = v28 - *(v21 + 16);
          v31 = *(sub_268B37A94() - 8);
          if (v30 < v25)
          {
            goto LABEL_21;
          }

          v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v33 = *(v31 + 72);
          swift_arrayInitWithCopy();

          if (v25)
          {
            v34 = *(v21 + 16);
            v35 = __OFADD__(v34, v25);
            v36 = v34 + v25;
            if (v35)
            {
              goto LABEL_22;
            }

            *(v21 + 16) = v36;
          }
        }

        else
        {

          if (v25)
          {
            goto LABEL_20;
          }
        }

        ++v20;

        if (v19 == v20)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v37 = v38;
    sub_268B34F94();
    v42(v37);
    (*(v39 + 8))(v37, v40);
  }
}