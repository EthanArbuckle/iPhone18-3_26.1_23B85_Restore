uint64_t sub_267C4FE88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C4FE9C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[3];
  v2 = sub_267C4FEFC(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_267C4FEFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF43F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_267EF2E38();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267BAF0DC(a1);
  v13 = MEMORY[0x277D84F90];
  v35 = v7;
  if (!v12)
  {
LABEL_9:
    v20 = v2[5];
    v21 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v20);
    (*(v21 + 8))(&v37, v20, v21);
    __swift_project_boxed_opaque_existential_0(&v37, v38);
    sub_267EF3B68();
    v22 = v2[5];
    v23 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v22);
    (*(v23 + 8))(v36, v22, v23);
    type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
    swift_initStackObject();
    sub_267E6F8FC(v13, v11, v36);
    __swift_destroy_boxed_opaque_existential_0(v36);
    (*(v8 + 8))(v11, v34);
    __swift_destroy_boxed_opaque_existential_0(&v37);
    sub_267DA84BC(v13);

    v24 = sub_267EF3998();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_267EF3978();
    v28 = v2[5];
    v29 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v28);
    (*(v29 + 8))(&v37, v28, v29);
    v30 = v35;
    sub_267EF43E8();
    v31 = type metadata accessor for DisambiguationListAdapter();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    return sub_267CF1BD0(v27, &v37, v30, 1);
  }

  v14 = v12;
  *&v37 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D609870](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      sub_267E59EF0();

      sub_267EF9BD8();
      v19 = *(v37 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v14 != v16);
    v13 = v37;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_267C50234()
{
  OUTLINED_FUNCTION_48_0();
  v139 = v0;
  v2 = v1;
  v150 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v141 = (&v136 - v8);
  OUTLINED_FUNCTION_26_2();
  v140 = type metadata accessor for DirectInvocationUseCases();
  v9 = OUTLINED_FUNCTION_22(v140);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v136 - v16;
  v18 = sub_267EF4BE8();
  v19 = OUTLINED_FUNCTION_58(v18);
  v142 = v20;
  v143 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  v151 = sub_267EF4C08();
  v26 = OUTLINED_FUNCTION_58(v151);
  v149 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_60();
  v145 = v30 - v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  v146 = &v136 - v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  v148 = &v136 - v35;
  OUTLINED_FUNCTION_26_2();
  v36 = sub_267EF4BA8();
  v37 = OUTLINED_FUNCTION_58(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_0();
  v44 = v43 - v42;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  v46 = __swift_project_value_buffer(v45, qword_280240FB0);
  v47 = *(v39 + 16);
  v152 = v2;
  v47(v44, v2, v36);
  v147 = v46;
  v48 = sub_267EF89F8();
  v49 = sub_267EF95C8();
  v50 = os_log_type_enabled(v48, v49);
  v144 = v25;
  v138 = v14;
  v137 = v17;
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_48();
    v52 = OUTLINED_FUNCTION_52();
    v155[0] = v52;
    *v51 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v53, v54);
    v55 = sub_267EF9E58();
    v57 = v56;
    (*(v39 + 8))(v44, v36);
    v58 = sub_267BA33E8(v55, v57, v155);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_267B93000, v48, v49, "#actionForPromptForContactDisambiguationInput(send) Received input %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v39 + 8))(v44, v36);
  }

  v59 = v148;
  sub_267EF4B88();
  v60 = v149;
  v61 = *(v149 + 88);
  v62 = v151;
  v63 = v61(v59, v151);
  v64 = *MEMORY[0x277D5C168];
  v65 = *(v60 + 8);
  v65(v59, v62);
  if (v63 == v64)
  {
    v66 = sub_267EF89F8();
    v67 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v67))
    {
      v68 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v68);
      v71 = "#actionForPromptForContactDisambiguationInput(send) Empty parse -> ignore";
LABEL_20:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v69, v70, v71);
      OUTLINED_FUNCTION_32_0();
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v72 = v146;
  sub_267EF4B88();
  v73 = OUTLINED_FUNCTION_53_1();
  if ((v61)(v73) == *MEMORY[0x277D5C150])
  {
    v74 = *(v60 + 96);
    v75 = OUTLINED_FUNCTION_53_1();
    v76(v75);
    v77 = v142;
    v78 = v143;
    v79 = v144;
    (*(v142 + 32))(v144, v72, v143);
    v80 = v141;
    sub_267B9CC04(v79, v141);
    if (__swift_getEnumTagSinglePayload(v80, 1, v140) == 1)
    {
      (*(v77 + 8))(v79, v78);
      sub_267B9F98C(v80, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_17_6();
      v120 = v137;
      sub_267C58820(v80, v137, v121);
      OUTLINED_FUNCTION_16_5();
      v122 = v138;
      sub_267C588D8(v120, v138, v123);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_18_8();
        sub_267C58880(v122, v124);
        sub_267EF3E58();
        sub_267C58880(v120, v80);
        (*(v77 + 8))(v144, v78);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_18_8();
      sub_267C58880(v120, v125);
      (*(v77 + 8))(v144, v78);
      sub_267C58880(v122, v80);
    }
  }

  else
  {
    v81 = OUTLINED_FUNCTION_53_1();
    (v65)(v81);
  }

  v82 = v145;
  sub_267EF4B88();
  sub_267E57DFC(v82, &v153);
  v83 = OUTLINED_FUNCTION_53_1();
  (v65)(v83);
  if (!v154)
  {
    sub_267B9F98C(&v153, &unk_28022BBF0, &unk_267F01C60);
    v66 = sub_267EF89F8();
    v93 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v93))
    {
      v94 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v94);
      v71 = "#actionForPromptForContactDisambiguationInput(send) Not and SMS input -> ignore";
      goto LABEL_20;
    }

LABEL_21:

    sub_267EF3E68();
    goto LABEL_41;
  }

  sub_267B9A5E8(&v153, v155);
  v84 = v157;
  __swift_project_boxed_opaque_existential_0(v155, v156);
  v85 = *(v84 + 96);
  v86 = OUTLINED_FUNCTION_26_0();
  if (v87(v86))
  {
    v88 = sub_267EF89F8();
    v89 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v89))
    {
      v90 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v90);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v91, v92, "#actionForPromptForContactDisambiguationInput Cancelled");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF3E48();
  }

  else
  {
    v95 = *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 24);
    v96 = *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 32);
    __swift_project_boxed_opaque_existential_0((v139 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver), v95);
    v97 = sub_267EBE108(v155, v95, v96);
    v98 = sub_267EF89F8();
    v99 = sub_267EF95D8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_48();
      *v100 = 134217984;
      *(v100 + 4) = *(v97 + 16);
      OUTLINED_FUNCTION_59_2(&dword_267B93000, v101, v102, "#actionForPromptForContactDisambiguationInput Found %ld recipients in SRR");
      OUTLINED_FUNCTION_32_0();
    }

    if (*(v97 + 16) && (v103 = *(v97 + 32), , , sub_267BAF0DC(v103)))
    {
      sub_267BBD0EC(0, (v103 & 0xC000000000000001) == 0, v103);
      if ((v103 & 0xC000000000000001) != 0)
      {
        v104 = MEMORY[0x26D609870](0, v103);
      }

      else
      {
        v104 = *(v103 + 32);
      }

      v105 = v104;

      v106 = v105;
      v107 = sub_267EF89F8();
      v108 = sub_267EF95D8();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = OUTLINED_FUNCTION_48();
        v110 = OUTLINED_FUNCTION_52();
        *&v153 = v110;
        *v109 = 136315138;
        v111 = [v106 displayName];
        v112 = sub_267EF9028();
        v114 = v113;

        v115 = sub_267BA33E8(v112, v114, &v153);

        *(v109 + 4) = v115;
        OUTLINED_FUNCTION_59_2(&dword_267B93000, v116, v117, "#actionForPromptForContactDisambiguationInput Found recipient '%s' in RRaaS");
        __swift_destroy_boxed_opaque_existential_0(v110);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v118 = *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
      *(v139 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson) = v106;
      v119 = v106;

      sub_267EF3E58();
    }

    else
    {

      v126 = v156;
      v127 = v157;
      __swift_project_boxed_opaque_existential_0(v155, v156);
      if (sub_267E58398(v126, v127) && (sub_267EC4E04(), v129 = v128, , v130 = *(v129 + 16), , v130))
      {
        sub_267EF3E58();
      }

      else
      {
        v131 = sub_267EF89F8();
        v132 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v132))
        {
          v133 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v133);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v134, v135, "actionForPromptForContactDisambiguationInput# No contacts -> ignore");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v155);
LABEL_41:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C50C34()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229780, &qword_267EFE4B8);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_2();
  v8 = type metadata accessor for SmsContactIntentNode();
  v1[15] = v8;
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v14 = type metadata accessor for DirectInvocationUseCases();
  v1[18] = v14;
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = sub_267EF4C08();
  v1[21] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[22] = v18;
  v20 = *(v19 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v21 = sub_267EF4BE8();
  v1[25] = v21;
  OUTLINED_FUNCTION_30_0(v21);
  v1[26] = v22;
  v24 = *(v23 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v25 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

void sub_267C50DF0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[11];
  sub_267EF4B88();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_26_0();
  v8 = &unk_280240000;
  if (v7(v6) != *MEMORY[0x277D5C150])
  {
    (*(v0[22] + 8))(v0[24], v0[21]);
    goto LABEL_5;
  }

  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[17];
  v13 = v0[18];
  (*(v0[22] + 96))(v12, v0[21]);
  (*(v10 + 32))(v9, v12, v11);
  sub_267B9CC04(v9, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    v15 = v0[17];
    (*(v0[26] + 8))(v0[27], v0[25]);
    sub_267B9F98C(v15, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_5;
  }

  v46 = v0[19];
  v47 = v0[20];
  v48 = v0[17];
  v49 = v0[18];
  OUTLINED_FUNCTION_17_6();
  sub_267C58820(v50, v47, v51);
  OUTLINED_FUNCTION_16_5();
  v52 = OUTLINED_FUNCTION_66();
  sub_267C588D8(v52, v53, v54);
  OUTLINED_FUNCTION_26_0();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v87 = v0[26];
    v86 = v0[27];
    v88 = v0[25];
    v89 = v0[19];
    sub_267C58880(v0[20], type metadata accessor for DirectInvocationUseCases);
    v90 = *(v87 + 8);
    v91 = OUTLINED_FUNCTION_66();
    v92(v91);
    v93 = OUTLINED_FUNCTION_37_1();
    sub_267C58880(v93, v94);
    goto LABEL_5;
  }

  v55 = v0[19];
  v57 = *v55;
  v56 = *(v55 + 8);
  if (qword_280228818 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v58 = sub_267EF8A08();
    __swift_project_value_buffer(v58, qword_280240FB0);

    v59 = sub_267EF89F8();
    v60 = sub_267EF95D8();

    v137 = v56;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_48();
      v62 = OUTLINED_FUNCTION_52();
      v139 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_267BA33E8(v57, v56, &v139);
      OUTLINED_FUNCTION_57(&dword_267B93000, v63, v64, "#actionForPromptForContactDisambiguationInput(send) Item selection direct action with itemIdentifier=%s");
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v65 = v0[12];
    v66 = v0[13];
    v67 = sub_267C516E8();
    v68 = sub_267BAF0DC(v67);
    for (i = 0; ; ++i)
    {
      if (v68 == i)
      {
        v56 = v57;

        v71 = 0;
        goto LABEL_42;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x26D609870](i, v67);
      }

      else
      {
        if (i >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v70 = *(v67 + 8 * i + 32);
      }

      v71 = v70;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_267BBDEAC() == v57 && v72 == v137)
      {
        v56 = v57;

LABEL_41:

LABEL_42:
        v104 = v0[13];
        v8 = &unk_280240000;
        v105 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson;
        v106 = *(v104 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
        *(v104 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson) = v71;
        v107 = v71;

        if (!v71)
        {
          v125 = v0[26];
          v124 = v0[27];
          v126 = v0[25];
          v127 = v0[20];
          v139 = 0;
          v140 = 0xE000000000000000;
          sub_267EF9B68();
          MEMORY[0x26D608E60](0xD00000000000002ELL, 0x8000000267F13050);
          MEMORY[0x26D608E60](v56, v137);

          MEMORY[0x26D608E60](0x756F6620746F6E20, 0xEA0000000000646ELL);
          v128 = v139;
          v129 = v140;
          sub_267C266B0();
          OUTLINED_FUNCTION_61_1();
          *v130 = v128;
          v130[1] = v129;
          swift_willThrow();
          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v127, v131);
          v132 = *(v125 + 8);
          v133 = OUTLINED_FUNCTION_44_0();
          v134(v133);
          goto LABEL_32;
        }

        v108 = v0[13];

        v109 = sub_267EF89F8();
        v110 = sub_267EF95D8();

        v111 = os_log_type_enabled(v109, v110);
        v112 = v0[26];
        v113 = v0[27];
        v114 = v0[25];
        v115 = v0[20];
        if (v111)
        {
          v138 = v0[27];
          v116 = OUTLINED_FUNCTION_48();
          v117 = OUTLINED_FUNCTION_52();
          v139 = v117;
          *v116 = 136315138;
          v118 = *(v104 + v105);
          v0[9] = v118;
          v119 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
          v120 = sub_267EF9098();
          v122 = sub_267BA33E8(v120, v121, &v139);

          *(v116 + 4) = v122;
          _os_log_impl(&dword_267B93000, v109, v110, "#actionForPromptForContactDisambiguationInput(send) Selected person by direct invocation %s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v117);
          v8 = &unk_280240000;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();

          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v115, v123);
          (*(v112 + 8))(v138, v114);
        }

        else
        {

          OUTLINED_FUNCTION_4_13();
          sub_267C58880(v115, v135);
          (*(v112 + 8))(v113, v114);
        }

LABEL_5:
        v16 = *(v0[13] + v8[204]);
        if (v16)
        {
          v17 = v0[10];
          sub_267BA9F38(0, &qword_280229788, 0x277D47630);
          v18 = v16;
          v19 = sub_267E7E128(v18);
          v0[8] = v19;
          sub_267EF4508();

          goto LABEL_7;
        }

        v29 = v0[22];
        v28 = v0[23];
        v30 = v0[21];
        v31 = v0[11];
        sub_267EF4B88();
        sub_267E57DFC(v28, v0 + 2);
        v32 = *(v29 + 8);
        v33 = OUTLINED_FUNCTION_26_0();
        v34(v33);
        if (v0[5])
        {
          v35 = v0[6];
          __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
          v36 = OUTLINED_FUNCTION_66();
          v38 = sub_267E58398(v36, v37);
          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
          if (v38)
          {
            v40 = v0[14];
            v39 = v0[15];
            sub_267EC4E04();
            sub_267C8F068(v41, v40);

            if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
            {
              v42 = v0[14];

              v43 = &unk_280229780;
              v44 = &unk_267EFE4B8;
              v45 = v42;
              goto LABEL_30;
            }

            v95 = v0[13];
            v96 = v0[12];
            sub_267C58820(v0[14], v0[16], type metadata accessor for SmsContactIntentNode);
            sub_267C516E8();
            v97 = OUTLINED_FUNCTION_37_1();
            v99 = sub_267E63E64(v97, v98);

            v100 = v0[16];
            if (v99)
            {
              v101 = v0[10];
              sub_267BA9F38(0, &qword_280229788, 0x277D47630);
              v102 = v99;
              v103 = sub_267E7E128(v102);
              v0[7] = v103;
              sub_267EF4508();

              OUTLINED_FUNCTION_23_5();
LABEL_7:
              v20 = v0[27];
              v21 = v0[23];
              v22 = v0[24];
              v24 = v0[19];
              v23 = v0[20];
              v26 = v0[16];
              v25 = v0[17];
              v27 = v0[14];

              OUTLINED_FUNCTION_1();
LABEL_33:
              OUTLINED_FUNCTION_15();

              __asm { BRAA            X1, X16 }
            }

            sub_267C266B0();
            OUTLINED_FUNCTION_61_1();
            *v136 = 0xD00000000000003FLL;
            v136[1] = 0x8000000267F13010;
            swift_willThrow();

            OUTLINED_FUNCTION_23_5();
LABEL_32:
            v76 = v0[27];
            v78 = v0[23];
            v77 = v0[24];
            v80 = v0[19];
            v79 = v0[20];
            v82 = v0[16];
            v81 = v0[17];
            v83 = v0[14];

            OUTLINED_FUNCTION_17();
            goto LABEL_33;
          }
        }

        else
        {
          v43 = &unk_28022BBF0;
          v44 = &unk_267F01C60;
          v45 = (v0 + 2);
LABEL_30:
          sub_267B9F98C(v45, v43, v44);
        }

        sub_267C266B0();
        OUTLINED_FUNCTION_61_1();
        *v75 = 0xD000000000000030;
        v75[1] = 0x8000000267F12FD0;
        swift_willThrow();
        goto LABEL_32;
      }

      v56 = v57;
      v74 = sub_267EF9EA8();

      if (v74)
      {
        goto LABEL_41;
      }

      v57 = v56;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }
}

uint64_t sub_267C516E8()
{
  v0 = sub_267EF39C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229778, &qword_267EFE4B0);
  v5 = sub_267EF4698();
  v17 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v14 = v5;
    v15 = v8;
    v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = *(v7 + 56);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v15(v4, v9, v0);
      sub_267EF39B8();
      (*(v7 - 8))(v4, v0);
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v12 = swift_dynamicCast();
      if ((v12 & 1) != 0 && v16)
      {
        MEMORY[0x26D608F90](v12);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v11 = v17;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_267C518F8()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = sub_267EF4228();
  v1[23] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[24] = v6;
  v8 = *(v7 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4158();
  v1[26] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[27] = v10;
  v12 = *(v11 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF2E38();
  v1[29] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[30] = v14;
  v16 = *(v15 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267C51A38()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v27 = v0[28];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = sub_267C516E8();
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v8);
  OUTLINED_FUNCTION_14_4();
  v10(v8, v9);
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  swift_initStackObject();
  sub_267E6F8FC(v7, v2, v0 + 2);
  (*(v1 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267DA84BC(v7);
  v12 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v12);
  v0[32] = sub_267EF3978();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  v13 = v4[5];
  v14 = v4[6];
  OUTLINED_FUNCTION_21_4(v4 + 2);
  v15 = OUTLINED_FUNCTION_10_0();
  v16(v15);
  v17 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  v18 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider + 8);
  sub_267DA149C();
  v0[33] = v19;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v20 = v4[5];
  v21 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v20);
  (*(v21 + 8))(v20, v21);
  sub_267C54F98();

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v22 = *(MEMORY[0x277D5C000] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[34] = v23;
  *v23 = v24;
  v23[1] = sub_267C51CB0;
  v25 = v0[25];

  return MEMORY[0x2821BB9A8](v25);
}

uint64_t sub_267C51CB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (v0)
  {
    v9 = *(v3 + 264);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C51DB0()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = swift_task_alloc();
  v0[36] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v5;
  OUTLINED_FUNCTION_10(dword_267F00B20);
  v12 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[37] = v8;
  *v8 = v9;
  v8[1] = sub_267C51EA0;
  v10 = v0[19];

  return v12(v10, sub_267C58720, v6);
}

uint64_t sub_267C51EA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[38] = v0;

  if (!v0)
  {
    v9 = v3[36];
    v10 = v3[33];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C51FAC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 256);

  v2 = *(v0 + 280);
  v3 = OUTLINED_FUNCTION_45_5();
  v4(v3);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C52038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = v10[31];
  v11 = v10[32];
  v14 = v10[27];
  v13 = v10[28];
  v16 = v10[25];
  v15 = v10[26];
  v17 = v10[23];
  v18 = v10[24];

  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_44_0();
  v21(v20);
  v22 = *(v14 + 8);
  v23 = OUTLINED_FUNCTION_26_0();
  v24(v23);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_267C520E4()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_37_1();
  v9(v8);
  v10 = v0[38];
  v11 = OUTLINED_FUNCTION_45_5();
  v12(v11);

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267C521A8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v49 = a1;
  v43 = a3;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v37 - v10;
  v11 = sub_267EF4CC8();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_267EF4158();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_267EF4228();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a7[5];
  v20 = a7[6];
  __swift_project_boxed_opaque_existential_0(a7 + 2, v21);
  (*(v20 + 8))(v55, v21, v20);
  v38 = a7[15];
  __swift_project_boxed_opaque_existential_0(v55, v56);
  LOBYTE(v20) = sub_267EF3C78();
  __swift_project_boxed_opaque_existential_0(v55, v56);
  if (v20)
  {
    LODWORD(v42) = sub_267BCD18C();
    v22 = *(v17 + 16);
    v37 = v16;
    v22(&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v16);
    sub_267B9AFEC(v55, &v51);
    v23 = v44;
    (*(v14 + 16))(v45, v46, v44);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v14 + 80) + v26 + 8) & ~*(v14 + 80);
    v28 = swift_allocObject();
    v29 = v50;
    *(v28 + 16) = v49;
    *(v28 + 24) = v29;
    (*(v17 + 32))(v28 + v24, v19, v37);
    sub_267B9A5E8(&v51, v28 + v25);
    *(v28 + v26) = v48;
    (*(v14 + 32))(v28 + v27, v45, v23);

    sub_267CF1150(v43, v55, v38, (v42 & 1) == 0, sub_267C58730, v28);
  }

  else
  {
    sub_267EF3BC8();
    v30 = v39;
    v31 = v44;
    (*(v14 + 16))(v39, v46, v44);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v32 = v40;
    sub_267EF3F68();
    sub_267B9F98C(&v51, &unk_28022CF80, &unk_267EFED50);
    sub_267B9F98C(v30, &unk_28022AE40, &unk_267EFCB60);
    v33 = v42;
    *(&v52 + 1) = v42;
    v53 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v51);
    v35 = v41;
    (*(v41 + 16))(boxed_opaque_existential_0, v32, v33);
    v54 = 0;
    v49(&v51);
    (*(v35 + 8))(v32, v33);
    sub_267B9F98C(&v51, &unk_28022A480, &unk_267F029F0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

void sub_267C526E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF3E78();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v74 = (v10 - v11);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  v15 = sub_267EF3868();
  v16 = OUTLINED_FUNCTION_58(v15);
  v81 = v17;
  v82 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v79 = v21 - v20;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF4C08();
  v23 = OUTLINED_FUNCTION_58(v22);
  v77 = v24;
  v78 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v76 = v28 - v27;
  OUTLINED_FUNCTION_26_2();
  v29 = sub_267EF4BA8();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_0();
  v37 = v36 - v35;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v38 = sub_267EF8A08();
  v39 = __swift_project_value_buffer(v38, qword_280240FB0);
  v40 = *(v32 + 16);
  v80 = v1;
  v40(v37, v1, v29);
  v75 = v39;
  v41 = sub_267EF89F8();
  v42 = sub_267EF95C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_48();
    v72 = v3;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_52();
    v73 = v4;
    v71 = v45;
    v83 = v45;
    *v44 = 136315138;
    OUTLINED_FUNCTION_5_13();
    sub_267C58938(v46, v47);
    v48 = sub_267EF9E58();
    v49 = v14;
    v50 = v7;
    v52 = v51;
    (*(v32 + 8))(v37, v29);
    v53 = sub_267BA33E8(v48, v52, &v83);
    v7 = v50;
    v14 = v49;

    *(v44 + 4) = v53;
    _os_log_impl(&dword_267B93000, v41, v42, "actionForPromptForContactDisambiguationInput# Received input %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v4 = v73;
    OUTLINED_FUNCTION_32_0();
    v3 = v72;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v32 + 8))(v37, v29);
  }

  v54 = v76;
  sub_267EF4B88();
  v55 = v79;
  sub_267EBF390(v79);
  (*(v77 + 8))(v54, v78);
  v57 = v81;
  v56 = v82;
  v58 = (*(v81 + 88))(v55, v82);
  if (v58 == *MEMORY[0x277D5B970])
  {
    sub_267EF3E48();
  }

  else if (v58 == *MEMORY[0x277D5B978] || v58 == *MEMORY[0x277D5B968])
  {
    sub_267EF3E58();
  }

  else
  {
    sub_267EF3E68();
    (*(v57 + 8))(v55, v56);
  }

  v60 = *(v7 + 16);
  v60(v14, v3, v4);
  v61 = sub_267EF89F8();
  v62 = sub_267EF95D8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_48();
    v64 = v7;
    v65 = OUTLINED_FUNCTION_52();
    v83 = v65;
    *v63 = 136315138;
    v60(v74, v14, v4);
    sub_267EF9098();
    (*(v64 + 8))(v14, v4);
    v66 = OUTLINED_FUNCTION_44_0();
    v69 = sub_267BA33E8(v66, v67, v68);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_267B93000, v61, v62, "actionForPromptForContactDisambiguationInput# Result action %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v7 + 8))(v14, v4);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C52C54()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_267EF3868();
  v0[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4C08();
  v0[7] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C52D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = v10[8];
  v11 = v10[9];
  v14 = v10[6];
  v13 = v10[7];
  v15 = v10[4];
  v16 = v10[5];
  v17 = v10[3];
  sub_267EF4B88();
  sub_267EBF390(v14);
  v18 = *(v12 + 8);
  v19 = OUTLINED_FUNCTION_26_0();
  v20(v19);
  v21 = *(v16 + 88);
  v22 = OUTLINED_FUNCTION_44_0();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D5B978])
  {
    v25 = MEMORY[0x277D5BED8];
LABEL_5:
    v26 = v10[9];
    v27 = v10[6];
    v28 = v10[2];
    v29 = *v25;
    v30 = sub_267EF44F8();
    OUTLINED_FUNCTION_22(v30);
    (*(v31 + 104))(v28, v29);

    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277D5B968])
  {
    v25 = MEMORY[0x277D5BED0];
    goto LABEL_5;
  }

  v32 = v10[9];
  v34 = v10[5];
  v33 = v10[6];
  v35 = v10[4];
  sub_267C266B0();
  OUTLINED_FUNCTION_61_1();
  *v36 = 0xD000000000000041;
  v36[1] = 0x8000000267F12F80;
  swift_willThrow();
  (*(v34 + 8))(v33, v35);

  OUTLINED_FUNCTION_17();
LABEL_7:
  OUTLINED_FUNCTION_36_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_267C52EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C52F0C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses;
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_10(dword_267EFE490);
  v12 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_267C52FCC;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v1 + v2, v3);
}

uint64_t sub_267C52FCC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C530AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_267EF8178();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v11 = sub_267EF48A8();
  v6[22] = v11;
  v12 = *(v11 - 8);
  v6[23] = v12;
  v13 = *(v12 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C531FC, 0, 0);
}

uint64_t sub_267C531FC()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = sub_267EF8F28();
  *(v0 + 200) = v1;
  v2 = *(MEMORY[0x277D5BFE8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_267C532D4;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  return MEMORY[0x2821BB980](v5, v4, v1);
}

uint64_t sub_267C532D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  *v4 = *v1;
  v3[27] = v7;
  v3[28] = v0;

  if (!v0)
  {
    v8 = v3[25];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C533DC()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[17];
  sub_267EF3C98();
  sub_267EF47A8();
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v4);
  OUTLINED_FUNCTION_14_4();
  v6(v4, v5);
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_26_0();
  LOBYTE(v1) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    v8 = v0[27];
    v9 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v9);
    v0[29] = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v10 = OUTLINED_FUNCTION_47_3();
    v0[30] = v10;
    *(v10 + 16) = xmmword_267EFCA40;
    *(v10 + 32) = v8;
    v32 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v11 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[31] = v12;
    *v12 = v13;
    v12[1] = sub_267C5372C;
    v14 = v0[24];
    v15 = v0[12];

    return (v32)(v15, v10, v14);
  }

  else
  {
    v17 = v0[27];
    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[18];
    v21 = v0[16];
    OUTLINED_FUNCTION_22_0();
    sub_267DA18D4();
    v22 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v22);
    v0[32] = sub_267EF4188();
    v0[10] = v20;
    OUTLINED_FUNCTION_19_6();
    v0[11] = sub_267C58938(v23, v24);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    (*(v19 + 16))(boxed_opaque_existential_0, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v26 = OUTLINED_FUNCTION_47_3();
    v0[33] = v26;
    *(v26 + 16) = xmmword_267EFCA40;
    *(v26 + 32) = v17;
    v33 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD40]);
    v27 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[34] = v28;
    *v28 = v29;
    v28[1] = sub_267C538D0;
    v30 = v0[24];
    v31 = OUTLINED_FUNCTION_54_4();

    return (v33)(v31);
  }
}

uint64_t sub_267C536AC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[20];
  v3 = v0[21];

  OUTLINED_FUNCTION_17();
  v6 = v0[28];

  return v5();
}

uint64_t sub_267C5372C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[31];
  v3 = v1[30];
  v4 = v1[29];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C53848()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_43_5();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267C538D0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[32];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C539F4()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v7 = OUTLINED_FUNCTION_43_5();
  v8(v7);

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267C53A98()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v5 = *(MEMORY[0x277D5C090] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAE0](v4, v2);
}

uint64_t sub_267C53B34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C53B4C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding;
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses;
  v4 = *(v1 + 112);
  OUTLINED_FUNCTION_10(dword_267EFE480);
  v12 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v6;
  *v6 = v7;
  v6[1] = sub_267C53C1C;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v1 + v2, v1 + v3, v4);
}

uint64_t sub_267C53C1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C53CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a2;
  v6[14] = a4;
  v6[12] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v6[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v9 = sub_267EF83E8();
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v11 = *(v10 + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = sub_267EF8178();
  v6[22] = v12;
  v13 = *(v12 - 8);
  v6[23] = v13;
  v14 = *(v13 + 64) + 15;
  v6[24] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v16 = sub_267EF2BA8();
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();
  v19 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v20 = sub_267EF48A8();
  v6[30] = v20;
  v21 = *(v20 - 8);
  v6[31] = v21;
  v22 = *(v21 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C53F78, 0, 0);
}

uint64_t sub_267C53F78()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0(*(v0 + 112), *(*(v0 + 112) + 24));
  v1 = sub_267EF8F28();
  *(v0 + 264) = v1;
  v2 = *(MEMORY[0x277D5BFF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_267C54050;
  v4 = *(v0 + 104);

  return MEMORY[0x2821BB988](v4, v1);
}

uint64_t sub_267C54050()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  v3[35] = v7;
  v3[36] = v0;

  if (!v0)
  {
    v8 = v3[33];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C54158()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[16];
  sub_267EF3C88();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v5 = [v1 catId];
  sub_267EF9028();

  OUTLINED_FUNCTION_37_1();
  sub_267EF47D8();
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  OUTLINED_FUNCTION_14_4();
  v7 = OUTLINED_FUNCTION_26_0();
  v8(v7);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_66();
  LOBYTE(v2) = sub_267DBF878();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v2 & 1) == 0)
  {
    v34 = v0[35];
    v35 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v35);
    v0[37] = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v36 = OUTLINED_FUNCTION_47_3();
    v0[38] = v36;
    *(v36 + 16) = xmmword_267EFCA40;
    *(v36 + 32) = v34;
    OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v37 = v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[39] = v38;
    *v38 = v39;
    v38[1] = sub_267C54658;
    v40 = v0[32];
    v41 = v0[12];
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  v10 = v0[25];
  v11 = v0[26];
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result != 1)
  {
    v13 = v0[27];
    v14 = v0[28];
    v15 = v0[26];
    v44 = v0[24];
    v45 = v0[23];
    v16 = v0[21];
    v46 = v0[22];
    v47 = v0[35];
    v18 = v0[19];
    v17 = v0[20];
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[15];
    (*(v13 + 32))(v14, v0[25], v15);
    (*(v13 + 16))(v16, v14, v15);
    (*(v17 + 104))(v16, *MEMORY[0x277D5D6E0], v18);
    sub_267C7FE68();
    sub_267EFA028();
    sub_267B9F98C(v19, &qword_2802295B8, &qword_267EFDCB0);
    sub_267EF83F8();
    (*(v45 + 104))(v44, *MEMORY[0x277D5D358], v46);
    v22 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v22);
    v0[40] = sub_267EF4188();
    v0[10] = v46;
    OUTLINED_FUNCTION_19_6();
    v0[11] = sub_267C58938(v23, v24);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    (*(v45 + 16))(boxed_opaque_existential_0, v44, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v26 = OUTLINED_FUNCTION_47_3();
    v0[41] = v26;
    *(v26 + 16) = xmmword_267EFCA40;
    *(v26 + 32) = v47;
    OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD40]);
    v28 = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v29;
    *v29 = v30;
    v29[1] = sub_267C5481C;
    v31 = v0[32];
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_15();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_267C545AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = v10[32];
  v11 = v10[33];
  v14 = v10[28];
  v13 = v10[29];
  v16 = v10[24];
  v15 = v10[25];
  v17 = v10[21];
  v18 = v10[18];

  OUTLINED_FUNCTION_17();
  v19 = v10[36];
  OUTLINED_FUNCTION_36_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_267C54658()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[39];
  v3 = v1[38];
  v4 = v1[37];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C54774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();

  v11 = OUTLINED_FUNCTION_30_3();
  v12(v11);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267C5481C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[42];
  v6 = v4[41];
  v7 = v4[40];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C54940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 216);
  v11 = *(v10 + 224);
  v13 = *(v10 + 208);
  v15 = *(v10 + 184);
  v14 = *(v10 + 192);
  v16 = *(v10 + 176);

  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_37_1();
  v19(v18);
  v20 = *(v12 + 8);
  v21 = OUTLINED_FUNCTION_66();
  v22(v21);
  v23 = OUTLINED_FUNCTION_30_3();
  v24(v23);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_267C54A20()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4228();
  v1[21] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v1[23] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C54B1C()
{
  v13 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v2[13];
  sub_267EF7AE8();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v4);
  (*(v5 + 8))(v12, v4, v5);
  v6 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = sub_267DE77AC(v12, v1);
  v0[24] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[25] = v8;
  *v8 = v9;
  v8[1] = sub_267C54C4C;
  v10 = v0[23];

  return sub_267E4AEA0(v10, v7);
}

uint64_t sub_267C54C4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 208) = v0;

  if (!v0)
  {
    v9 = *(v3 + 192);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C54D4C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v24 = *(v0 + 160);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = v5[5];
  v8 = v5[6];
  OUTLINED_FUNCTION_21_4(v5 + 2);
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  v11 = v5[5];
  v12 = v5[6];
  OUTLINED_FUNCTION_21_4(v5 + 2);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v16 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v17 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v6[3] = v17;
  v6[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F98();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v19 = *(v2 + 8);
  v20 = OUTLINED_FUNCTION_44_0();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_1();

  return v22();
}

uint64_t sub_267C54F18()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];

  OUTLINED_FUNCTION_17();
  v6 = v0[26];

  return v5();
}

void sub_267C54F98()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v84 = v2;
  v83 = v3;
  v4 = sub_267EF53D8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v86 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v81 = (v9 - v10);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  v82 = (&v77 - v12);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  v16 = sub_267EF2E38();
  v17 = OUTLINED_FUNCTION_58(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v24 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  v85 = v15;
  v26 = qword_280241050;
  v27 = sub_267EF54C8();
  v28 = MEMORY[0x277D5E210];
  *(inited + 56) = v27;
  *(inited + 64) = v28;
  *(inited + 32) = v26;
  v29 = qword_280228888;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_280241040;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(inited + 104) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 72) = v30;
  v31 = qword_280228870;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_280241028;
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(inited + 144) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(inited + 112) = v32;
  v33 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);

  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  v34 = swift_initStackObject();
  v35 = v84;
  sub_267E6FE5C(v84, v24, v34, v36, v37, v38, v39, v40, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0], v87[1]);
  v42 = v41;
  v43 = *(v19 + 8);
  v44 = OUTLINED_FUNCTION_50_1();
  v45(v44);
  sub_267C37CA8(inited, v42, v1);

  swift_setDeallocating();
  sub_267DB70BC();
  v46 = v85;
  sub_267C55710(v35);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v47 = sub_267EF8A08();
  __swift_project_value_buffer(v47, qword_280240FB0);
  v48 = v86;
  v49 = *(v86 + 16);
  v50 = v82;
  v49(v82, v46, v4);
  v51 = sub_267EF89F8();
  HIDWORD(v80) = sub_267EF95D8();
  if (os_log_type_enabled(v51, BYTE4(v80)))
  {
    v52 = OUTLINED_FUNCTION_48();
    v78 = v52;
    v79 = OUTLINED_FUNCTION_52();
    v88 = v79;
    *v52 = 136315138;
    v53 = v81;
    v49(v81, v50, v4);
    sub_267EF5458();
    v87[3] = v4;
    v87[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v87);
    v49(boxed_opaque_existential_0, v53, v4);
    v55 = sub_267EF5448();
    v57 = v56;
    v77 = v49;
    v58 = v4;
    v59 = *(v86 + 8);
    v59(v53, v4);
    v82 = v59;
    v59(v50, v4);
    __swift_destroy_boxed_opaque_existential_0(v87);
    v60 = sub_267BA33E8(v55, v57, &v88);
    v48 = v86;

    v61 = v78;
    *(v78 + 1) = v60;
    _os_log_impl(&dword_267B93000, v51, BYTE4(v80), "UnsetRelationshipContactDisambiguation# submitting NLv4 dialog act: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v46 = v85;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v62 = v77;
  }

  else
  {

    v82 = *(v48 + 8);
    v82(v50, v4);
    v62 = v49;
    v58 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v63 = *(v48 + 72);
  v64 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_267EFC020;
  v62(v65 + v64, v46, v58);
  sub_267EF4088();
  v66 = sub_267E7151C(v84);

  v67 = sub_267EF89F8();
  v68 = sub_267EF95D8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_48();
    v70 = OUTLINED_FUNCTION_52();
    v87[0] = v70;
    *v69 = 136315138;
    v71 = sub_267EF8AE8();
    v72 = MEMORY[0x26D608FD0](v66, v71);
    v74 = sub_267BA33E8(v72, v73, v87);

    *(v69 + 4) = v74;
    v46 = v85;
    OUTLINED_FUNCTION_57(&dword_267B93000, v75, v76, "UnsetRelationshipContactDisambiguation# Donating RRaaS entities: %s");
    __swift_destroy_boxed_opaque_existential_0(v70);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4058();
  v82(v46, v58);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C55710(uint64_t a1)
{
  v19 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(a1);
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);
      v8 = v6;
      v9 = sub_267EF89F8();
      v10 = sub_267EF95D8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_48();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_267B93000, v9, v10, "SendContactDisambiguation# adding context for intentPerson %@", v11, 0xCu);
        sub_267B9F98C(v12, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v14 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v14);
      sub_267EF6258();
      v15 = sub_267EF6168();
      OUTLINED_FUNCTION_97(v15);
      sub_267EF6158();
      v16 = [v8 displayName];
      sub_267EF9028();

      OUTLINED_FUNCTION_50_1();
      sub_267EF6148();

      sub_267EF6218();

      v17 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v17);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      ++v4;
      OUTLINED_FUNCTION_50_1();
      sub_267EF9368();
    }

    while (v3 != v4);
  }

  sub_267BC8938();
}

void sub_267C559F8()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  v2 = sub_267EF42F8();
  OUTLINED_FUNCTION_22(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses));
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson);
}

uint64_t *sub_267C55A88()
{
  v0 = sub_267B9DCC8();
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  v2 = sub_267EF42F8();
  OUTLINED_FUNCTION_22(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses));

  return v0;
}

uint64_t sub_267C55B18()
{
  v0 = *sub_267C55A88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageUnsetRelationshipFlowStrategy()
{
  result = qword_280229738;
  if (!qword_280229738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267C55BC0()
{
  result = sub_267EF42F8();
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

uint64_t sub_267C55C64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return sub_267C4ECD4(a1);
}

uint64_t sub_267C55D00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C4ED80();
}

uint64_t sub_267C55DB0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return sub_267C53B34(a1, a2);
}

uint64_t sub_267C55E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C53A98();
}

uint64_t sub_267C55EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B718] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BA148](a1, a2, v10, a4);
}

uint64_t sub_267C55FE8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return sub_267C4F4C0(a1, a2);
}

uint64_t sub_267C56094()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267C4F960();
}

uint64_t sub_267C56140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B720] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BA150](a1, a2, a3, v12, a5);
}

uint64_t sub_267C56210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B728] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BA158](a1, a2, a3, v12, a5);
}

uint64_t sub_267C562E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B710] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BA140](a1, a2, a3, v12, a5);
}

void sub_267C563B0()
{
  type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();

  JUMPOUT(0x26D602FC0);
}

uint64_t sub_267C5642C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_267C564C8;

  return sub_267C4FE88(a2);
}

uint64_t sub_267C564C8()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_267C565C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267C50C34();
}

uint64_t sub_267C56674()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267C518F8();
}

uint64_t sub_267C56728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B730] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BA160](a1, a2, a3, v12, a5);
}

uint64_t sub_267C567F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B738] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BA168](a1, a2, a3, v12, a5);
}

uint64_t sub_267C568E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C52C54();
}

uint64_t sub_267C56980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return sub_267C52EF4(a1, a2, a3);
}

uint64_t sub_267C56A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6E8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BA110](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267C56B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6F0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BA118](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267C56BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B700] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BA128](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267C56CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BA120](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267C56DB4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267C54A20();
}

uint64_t sub_267C56E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v53 - v6;
  v8 = sub_267EF5B58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SmsContactIntentNode();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v65);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_267EF59A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v64 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v53 - v22;
  MEMORY[0x28223BE20](v21);
  if (a1)
  {
    v58 = v9;
    v54 = v53 - v24;
    v56 = a2;

    v55 = a1;
    sub_267EC4E04();
    v26 = *(v25 + 16);
    if (v26)
    {
      v63 = v8;
      v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v53[1] = v25;
      v28 = v25 + v27;
      v62 = *(v12 + 72);
      v29 = v58++;
      v59 = (v29 + 4);
      v57 = v17 + 32;
      v30 = MEMORY[0x277D84F90];
      v60 = v7;
      do
      {
        sub_267C588D8(v28, v15, type metadata accessor for SmsContactIntentNode);
        if (qword_280228850 != -1)
        {
          swift_once();
        }

        sub_267C58938(&qword_2802297A0, type metadata accessor for SmsContactIntentNode);
        sub_267EF5B08();
        v31 = v63;
        if (__swift_getEnumTagSinglePayload(v7, 1, v63) == 1)
        {
          sub_267C58880(v15, type metadata accessor for SmsContactIntentNode);
          sub_267B9F98C(v7, &qword_280229798, &unk_267EFE4D0);
        }

        else
        {
          v32 = v7;
          v33 = v16;
          v34 = v23;
          v35 = v61;
          (*v59)(v61, v32, v31);
          sub_267EF5998();
          (*v58)(v35, v31);
          sub_267C58880(v15, type metadata accessor for SmsContactIntentNode);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = *(v30 + 16);
            sub_267C7139C();
            v30 = v38;
          }

          v36 = *(v30 + 16);
          v23 = v34;
          if (v36 >= *(v30 + 24) >> 1)
          {
            sub_267C7139C();
            v30 = v39;
          }

          v16 = v33;
          *(v30 + 16) = v36 + 1;
          (*(v17 + 32))(v30 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v36, v64, v33);
          v7 = v60;
        }

        v28 += v62;
        --v26;
      }

      while (v26);
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    v42 = 0;
    v43 = *(v30 + 16);
    while (1)
    {
      if (v43 == v42)
      {

        v45 = sub_267EF4788();
        v46 = v56;
        v47 = 1;
        return __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
      }

      if (v42 >= *(v30 + 16))
      {
        break;
      }

      (*(v17 + 16))(v23, v30 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v42, v16);
      sub_267EF5D68();
      if (v44)
      {

        v48 = v54;
        (*(v17 + 32))(v54, v23, v16);
        v49 = sub_267EF5DC8();
        v64 = v50;
        v65 = v49;
        sub_267EF5DA8();
        v63 = v51;
        sub_267EF5D38();
        sub_267EF5D98();
        sub_267EF5DB8();
        v52 = v56;
        sub_267EF4778();

        (*(v17 + 8))(v48, v16);
        v45 = sub_267EF4788();
        v46 = v52;
        v47 = 0;
        return __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
      }

      ++v42;
      result = (*(v17 + 8))(v23, v16);
    }

    __break(1u);
  }

  else
  {
    v41 = sub_267EF4788();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v41);
  }

  return result;
}

uint64_t sub_267C57590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v15 = *(a1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons);
      }

      if (sub_267EF9A68())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      sub_267BBD0EC(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v5 = sub_267EF8A08();
      __swift_project_value_buffer(v5, qword_280240FB0);

      v6 = sub_267EF89F8();
      v7 = sub_267EF95D8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136315138;
        sub_267EF5C28();

        v10 = sub_267EF9098();
        v12 = sub_267BA33E8(v10, v11, &v17);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_267B93000, v6, v7, "UnsetRelationship# Found relationship person %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x26D60A7B0](v9, -1, -1);
        MEMORY[0x26D60A7B0](v8, -1, -1);
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5EE8();
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5EF8();
      }

      if (sub_267EF5BF8())
      {
        sub_267EF5F08();
      }

      sub_267EF5C18();
      if (sub_267EF5BF8())
      {
        sub_267EF5ED8();
      }

      sub_267EF4778();

      v13 = sub_267EF4788();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
    }
  }

  v16 = sub_267EF4788();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
}

uint64_t sub_267C578DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v13 = swift_allocObject();
  v49 = xmmword_267EFC020;
  *(v13 + 16) = xmmword_267EFC020;
  *(v13 + 32) = sub_267BB90E4(1);
  *(v13 + 40) = v14;
  sub_267EF4108();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  *(v15 + 32) = sub_267BCEF14();
  *(v15 + 40) = v16;
  if (qword_280228870 != -1)
  {
    swift_once();
  }

  *(v15 + 48) = sub_267BCEF2C();
  *(v15 + 56) = v17;
  if (qword_280228888 != -1)
  {
    swift_once();
  }

  *(v15 + 64) = sub_267BCEF48();
  *(v15 + 72) = v18;
  sub_267EF4118();
  sub_267EF4098();
  sub_267C583EC();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  v20 = v3[2];
  v50 = v12;
  v20(v10, v12, v2);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = a1;
    v24 = v23;
    v46 = v23;
    v47 = swift_slowAlloc();
    v52 = v47;
    *v24 = 136315138;
    v20(v7, v10, v2);
    sub_267EF5458();
    v51[3] = v2;
    v51[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
    v20(boxed_opaque_existential_0, v7, v2);
    v44 = sub_267EF5448();
    v26 = v10;
    v27 = v2;
    v29 = v28;
    v45 = v22;
    v30 = v3[1];
    v31 = v7;
    v32 = v3;
    v30(v31, v27);
    v30(v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v33 = sub_267BA33E8(v44, v29, &v52);

    v34 = v46;
    *(v46 + 4) = v33;
    v35 = v34;
    _os_log_impl(&dword_267B93000, v21, v45, "UnsetRelationship# Sending SDA for prompt: %s", v34, 0xCu);
    v36 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x26D60A7B0](v36, -1, -1);
    MEMORY[0x26D60A7B0](v35, -1, -1);
  }

  else
  {

    v30 = v3[1];
    v32 = v3;
    v30(v10, v2);
    v27 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v37 = v32[9];
  v38 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v49;
  v40 = v39 + v38;
  v41 = v50;
  v20(v40, v50, v27);
  sub_267EF4088();
  return (v30)(v41, v27);
}

uint64_t sub_267C57E40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  sub_267EF47F8();
  sub_267EF4858();
  sub_267C57F04(v3);
  v4 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  return sub_267EF4818();
}

uint64_t sub_267C57F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFCC90;
  *(v12 + 32) = sub_267BB90E4(1);
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_267BB90E4(0);
  *(v12 + 56) = v14;
  sub_267EF4108();
  v15 = swift_allocObject();
  v45 = xmmword_267EFC020;
  *(v15 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v15 + 32) = sub_267BC9500();
  *(v15 + 40) = v16;
  sub_267EF4118();
  sub_267EF4098();
  sub_267C585AC();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = *(v3 + 16);
  v18(v9, v11, v2);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v21;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v21 = 136315138;
    v22 = v44;
    v18(v44, v9, v2);
    sub_267EF5458();
    v39 = v20;
    v46[3] = v2;
    v46[4] = sub_267C58938(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
    v18(boxed_opaque_existential_0, v22, v2);
    v24 = sub_267EF5448();
    v42 = a1;
    v43 = v11;
    v26 = v25;
    v38 = v18;
    v27 = *(v3 + 8);
    v27(v22, v2);
    v27(v9, v2);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v28 = sub_267BA33E8(v24, v26, &v47);
    v11 = v43;

    v29 = v40;
    *(v40 + 1) = v28;
    v30 = v29;
    _os_log_impl(&dword_267B93000, v19, v39, "UnsetRelationship# Sending SDA for Save confirmation: %s", v29, 0xCu);
    v31 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x26D60A7B0](v31, -1, -1);
    MEMORY[0x26D60A7B0](v30, -1, -1);

    v32 = v38;
  }

  else
  {

    v32 = v18;
    v27 = *(v3 + 8);
    v27(v9, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v33 = *(v3 + 72);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  v32(v35 + v34, v11, v2);
  sub_267EF4088();
  return (v27)(v11, v2);
}

uint64_t sub_267C583EC()
{
  v0 = sub_267EF6268();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267EF6258();
  v3 = sub_267EF6168();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_267EF6158();
  sub_267EF6148();

  sub_267EF6218();

  v6 = sub_267EF6448();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_267EF6438();
  sub_267EF61F8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "UnsetRelationship# sending SystemPrompted dialog act for Unset Relationship Prompt", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267DFDDC4();
}

uint64_t sub_267C585AC()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267B93000, v1, v2, "UnsetRelationship# sending SystemOffered.UserWantedToProceed dialog act for Unset Relationship Prompt", v3, 2u);
    MEMORY[0x26D60A7B0](v3, -1, -1);
  }

  v4 = sub_267EF6448();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_267EF6438();
  sub_267BBB050();
}

uint64_t sub_267C586C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267C58730(uint64_t a1)
{
  v3 = sub_267EF4228();
  OUTLINED_FUNCTION_30_0(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_267EF4158();
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = v1 + ((v8 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_267CF0C8C(a1, v11, v12, v1 + v5, (v1 + v7), v13, v14);
}

uint64_t sub_267C58820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267C58880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267C588D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267C58938(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267C589E0()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v8, v63[0]);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v63[0]);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v63 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v24);
  v26 = v63 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_16(v27, xmmword_267EFE4F0);
  v28 = *v0;
  if (*v0)
  {
    v29 = sub_267EF7958();
    v30 = v28;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_38();
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
  }

  v31 = OUTLINED_FUNCTION_20_2(v29, v30);
  v32 = type metadata accessor for EditMessageAskForPayloadParameters(v31);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v32[5]);
  v33 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v26);
  if (v34)
  {

    sub_267B9F98C(v26, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 96) = 0u;
    *(v27 + 112) = 0u;
  }

  else
  {
    *(v27 + 120) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 96));
    OUTLINED_FUNCTION_2_2();
    v36 = *(v35 + 32);
    OUTLINED_FUNCTION_36_5();
    v37();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 128) = 0xD00000000000001CLL;
  *(v27 + 136) = v38;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v32[6]);
  OUTLINED_FUNCTION_0_11(v3);
  if (v34)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 144) = 0u;
    *(v27 + 160) = 0u;
  }

  else
  {
    *(v27 + 168) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v39 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 176) = 0xD000000000000011;
  *(v27 + 184) = v40;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v32[7]);
  OUTLINED_FUNCTION_0_11(v2);
  if (v34)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 192) = 0u;
    *(v27 + 208) = 0u;
  }

  else
  {
    *(v27 + 216) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v41 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v27 + 224) = v42;
  *(v27 + 232) = v43;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, v32[8]);
  OUTLINED_FUNCTION_0_11(v1);
  if (v34)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 240) = 0u;
    *(v27 + 256) = 0u;
  }

  else
  {
    *(v27 + 264) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v44 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 272) = 0xD000000000000017;
  *(v27 + 280) = v45;
  v46 = MEMORY[0x277D839B0];
  *(v27 + 288) = 0;
  *(v27 + 312) = v46;
  *(v27 + 320) = 0x70756F7267;
  *(v27 + 328) = 0xE500000000000000;
  v47 = *(v0 + v32[9]);
  if (v47)
  {
    type metadata accessor for MessagesGroup(0);
    v48 = v47;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v27 + 344) = 0;
    *(v27 + 352) = 0;
  }

  *(v27 + 336) = v48;
  OUTLINED_FUNCTION_43_6();
  *(v27 + 360) = v49;
  *(v27 + 368) = v50;
  *(v27 + 376) = 0xE700000000000000;
  sub_267C2FB6C(v0 + v32[10], v21, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v21);
  if (v34)
  {

    sub_267B9F98C(v21, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 384) = 0u;
    *(v27 + 400) = 0u;
  }

  else
  {
    *(v27 + 408) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 384));
    OUTLINED_FUNCTION_2_2();
    (*(v51 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 416) = 0xD000000000000014;
  *(v27 + 424) = v52;
  v53 = v63[0];
  sub_267C2FB6C(v0 + v32[11], v63[0], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v53);
  v54 = v63[1];
  if (v34)
  {
    sub_267B9F98C(v53, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 432) = 0u;
    *(v27 + 448) = 0u;
  }

  else
  {
    *(v27 + 456) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v55 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v27 + 464) = 0xD000000000000013;
  *(v27 + 472) = v56;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v32[12]);
  OUTLINED_FUNCTION_0_11(v54);
  if (v34)
  {
    sub_267B9F98C(v54, &unk_28022AE30, &qword_267EFC0B0);
    *(v27 + 480) = 0u;
    *(v27 + 496) = 0u;
  }

  else
  {
    *(v27 + 504) = v33;
    __swift_allocate_boxed_opaque_existential_0((v27 + 480));
    OUTLINED_FUNCTION_2_2();
    v58 = *(v57 + 32);
    OUTLINED_FUNCTION_36_5();
    v59();
  }

  OUTLINED_FUNCTION_22_3();
  *(v27 + 512) = v60;
  *(v27 + 520) = 0xE900000000000074;
  v61 = *(v0 + v32[13]);
  if (v61)
  {
    v62 = sub_267EF77C8();
  }

  else
  {
    v62 = 0;
    *(v27 + 536) = 0u;
  }

  *(v27 + 528) = v61;
  *(v27 + 552) = v62;

  OUTLINED_FUNCTION_47();
}

void sub_267C58FF4()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v8, v89);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v89);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v94 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v93 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v92 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v91 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v90 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v89 = v29;
  OUTLINED_FUNCTION_115();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v89 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v36);
  v38 = &v89 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_16(v39, xmmword_267EFE500);
  v40 = *v0;
  if (*v0)
  {
    v41 = sub_267EF7958();
    v42 = v40;
  }

  else
  {
    v41 = OUTLINED_FUNCTION_38();
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
  }

  *(v39 + 48) = v42;
  *(v39 + 72) = v41;
  *(v39 + 80) = 0x4468736153707061;
  *(v39 + 88) = 0xEB00000000617461;
  v43 = type metadata accessor for EditMessageConfirmEditParameters(0);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v43[5]);
  v44 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v38);
  if (v45)
  {

    sub_267B9F98C(v38, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 96) = 0u;
    *(v39 + 112) = 0u;
  }

  else
  {
    *(v39 + 120) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 96));
    OUTLINED_FUNCTION_2_2();
    v47 = *(v46 + 32);
    OUTLINED_FUNCTION_36_5();
    v48();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 128) = 0xD000000000000012;
  *(v39 + 136) = v49;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v43[6]);
  OUTLINED_FUNCTION_0_11(v3);
  if (v45)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 144) = 0u;
    *(v39 + 160) = 0u;
  }

  else
  {
    *(v39 + 168) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v50 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 176) = 0xD000000000000012;
  *(v39 + 184) = v51;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v43[7]);
  OUTLINED_FUNCTION_0_11(v2);
  v52 = v89;
  if (v45)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 192) = 0u;
    *(v39 + 208) = 0u;
  }

  else
  {
    *(v39 + 216) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v53 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 224) = 0xD00000000000001CLL;
  *(v39 + 232) = v54;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, v43[8]);
  OUTLINED_FUNCTION_0_11(v1);
  v55 = v90;
  if (v45)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 240) = 0u;
    *(v39 + 256) = 0u;
  }

  else
  {
    *(v39 + 264) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v56 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 272) = 0xD000000000000014;
  *(v39 + 280) = v57;
  sub_267C2FB6C(v0 + v43[9], v33, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v33);
  v58 = v92;
  if (v45)
  {
    sub_267B9F98C(v33, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 288) = 0u;
    *(v39 + 304) = 0u;
  }

  else
  {
    *(v39 + 312) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 288));
    OUTLINED_FUNCTION_2_2();
    (*(v59 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 320) = 0xD000000000000011;
  *(v39 + 328) = v60;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v43[10]);
  OUTLINED_FUNCTION_0_11(v52);
  v61 = v91;
  if (v45)
  {
    sub_267B9F98C(v52, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 336) = 0u;
    *(v39 + 352) = 0u;
  }

  else
  {
    *(v39 + 360) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 336));
    OUTLINED_FUNCTION_2_2();
    (*(v62 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v39 + 368) = v63;
  *(v39 + 376) = v64;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v43[11]);
  OUTLINED_FUNCTION_0_11(v55);
  if (v45)
  {
    sub_267B9F98C(v55, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 384) = 0u;
    *(v39 + 400) = 0u;
  }

  else
  {
    *(v39 + 408) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 384));
    OUTLINED_FUNCTION_2_2();
    (*(v65 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 416) = 0xD000000000000012;
  *(v39 + 424) = v66;
  sub_267C2FB6C(v0 + v43[12], v61, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v61);
  if (v45)
  {
    sub_267B9F98C(v61, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 432) = 0u;
    *(v39 + 448) = 0u;
  }

  else
  {
    *(v39 + 456) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v67 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 464) = 0xD000000000000017;
  *(v39 + 472) = v68;
  v69 = MEMORY[0x277D839B0];
  *(v39 + 480) = 0;
  *(v39 + 504) = v69;
  *(v39 + 512) = 0x6D614E70756F7267;
  *(v39 + 520) = 0xE900000000000065;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, v43[13]);
  OUTLINED_FUNCTION_0_11(v58);
  if (v45)
  {
    sub_267B9F98C(v58, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 528) = 0u;
    *(v39 + 544) = 0u;
  }

  else
  {
    *(v39 + 552) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 528));
    OUTLINED_FUNCTION_2_2();
    (*(v70 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 560) = 0xD000000000000011;
  *(v39 + 568) = v71;
  LOBYTE(v71) = *(v0 + v43[14]);
  *(v39 + 600) = v69;
  *(v39 + 576) = v71;
  OUTLINED_FUNCTION_43_6();
  *(v39 + 608) = v72;
  *(v39 + 616) = 0xE700000000000000;
  v73 = v93;
  sub_267C2FB6C(v0 + v43[15], v93, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v73);
  if (v45)
  {
    sub_267B9F98C(v73, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 624) = 0u;
    *(v39 + 640) = 0u;
  }

  else
  {
    *(v39 + 648) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 624));
    OUTLINED_FUNCTION_2_2();
    (*(v74 + 32))();
  }

  v75 = v94;
  OUTLINED_FUNCTION_12_1();
  *(v39 + 656) = 0xD000000000000014;
  *(v39 + 664) = v76;
  sub_267C2FB6C(v0 + v43[16], v75, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v75);
  if (v45)
  {
    sub_267B9F98C(v75, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 672) = 0u;
    *(v39 + 688) = 0u;
  }

  else
  {
    *(v39 + 696) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v77 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v39 + 704) = 0xD000000000000013;
  *(v39 + 712) = v78;
  v79 = v95;
  sub_267C2FB6C(v0 + v43[17], v95, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v79);
  if (v45)
  {
    sub_267B9F98C(v79, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 720) = 0u;
    *(v39 + 736) = 0u;
  }

  else
  {
    *(v39 + 744) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 720));
    OUTLINED_FUNCTION_2_2();
    v81 = *(v80 + 32);
    OUTLINED_FUNCTION_36_5();
    v82();
  }

  OUTLINED_FUNCTION_22_3();
  *(v39 + 752) = v83;
  *(v39 + 760) = 0xEA00000000007374;
  v84 = *(v0 + v43[18]);
  *(v39 + 792) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v39 + 768) = v84;
  OUTLINED_FUNCTION_37_2();
  *(v39 + 800) = v85;
  *(v39 + 808) = 0xEF617461446E6F6FLL;
  v86 = v0 + v43[19];
  v87 = v96;
  sub_267C2FB6C(v86, v96, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v87);
  if (v45)
  {

    sub_267B9F98C(v87, &unk_28022AE30, &qword_267EFC0B0);
    *(v39 + 816) = 0u;
    *(v39 + 832) = 0u;
  }

  else
  {
    *(v39 + 840) = v44;
    __swift_allocate_boxed_opaque_existential_0((v39 + 816));
    OUTLINED_FUNCTION_2_2();
    (*(v88 + 32))();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C59A54()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_10(v8, v60);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v60);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v61 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26_5();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_16(v29, xmmword_267EFE4F0);
  v30 = *v0;
  if (*v0)
  {
    v31 = sub_267EF7958();
    v32 = v30;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_38();
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
  }

  v33 = OUTLINED_FUNCTION_20_2(v31, v32);
  v34 = type metadata accessor for EditMessageMessageEditedParameters(v33);
  sub_267C2FB6C(v0 + v34[5], v28, &unk_28022AE30, &qword_267EFC0B0);
  v35 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v28);
  if (v36)
  {

    sub_267B9F98C(v28, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
  }

  else
  {
    *(v29 + 120) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 96));
    OUTLINED_FUNCTION_8_9();
    (*(v37 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v29 + 128) = 0xD000000000000012;
  *(v29 + 136) = v38;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v34[6]);
  OUTLINED_FUNCTION_7_0(v26);
  if (v36)
  {
    sub_267B9F98C(v26, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 144) = 0u;
    *(v29 + 160) = 0u;
  }

  else
  {
    *(v29 + 168) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 144));
    OUTLINED_FUNCTION_8_9();
    (*(v39 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v29 + 176) = 0xD000000000000012;
  *(v29 + 184) = v40;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v34[7]);
  OUTLINED_FUNCTION_7_0(v3);
  v41 = v62;
  if (v36)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 192) = 0u;
    *(v29 + 208) = 0u;
  }

  else
  {
    *(v29 + 216) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 192));
    OUTLINED_FUNCTION_8_9();
    (*(v42 + 32))();
  }

  OUTLINED_FUNCTION_9_10();
  *(v29 + 224) = v43;
  *(v29 + 232) = v44;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v34[8]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v36)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 240) = 0u;
    *(v29 + 256) = 0u;
  }

  else
  {
    *(v29 + 264) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 240));
    OUTLINED_FUNCTION_8_9();
    (*(v45 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v29 + 272) = 0xD000000000000017;
  *(v29 + 280) = v46;
  v47 = MEMORY[0x277D839B0];
  *(v29 + 288) = 0;
  *(v29 + 312) = v47;
  *(v29 + 320) = 0x6D614E70756F7267;
  *(v29 + 328) = 0xE900000000000065;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, v34[9]);
  OUTLINED_FUNCTION_7_0(v1);
  if (v36)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 336) = 0u;
    *(v29 + 352) = 0u;
  }

  else
  {
    *(v29 + 360) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 336));
    OUTLINED_FUNCTION_8_9();
    (*(v48 + 32))();
  }

  *(v29 + 368) = 0x7463617265746E69;
  *(v29 + 376) = 0xEF617461446E6F69;
  v49 = v61;
  sub_267C2FB6C(v0 + v34[10], v61, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v49);
  if (v36)
  {
    sub_267B9F98C(v49, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 384) = 0u;
    *(v29 + 400) = 0u;
  }

  else
  {
    *(v29 + 408) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 384));
    OUTLINED_FUNCTION_8_9();
    (*(v50 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v29 + 416) = 0xD000000000000013;
  *(v29 + 424) = v51;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v34[11]);
  OUTLINED_FUNCTION_7_0(v41);
  if (v36)
  {
    sub_267B9F98C(v41, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 432) = 0u;
    *(v29 + 448) = 0u;
  }

  else
  {
    *(v29 + 456) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 432));
    OUTLINED_FUNCTION_8_9();
    (*(v52 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v29 + 464) = v53;
  *(v29 + 472) = 0xEA00000000007374;
  v54 = *(v0 + v34[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v29 + 480) = v54;
  OUTLINED_FUNCTION_37_2();
  *(v29 + 504) = v55;
  *(v29 + 512) = v56;
  *(v29 + 520) = 0xEF617461446E6F6FLL;
  v57 = v0 + v34[13];
  v58 = v63;
  sub_267C2FB6C(v57, v63, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v58);
  if (v36)
  {

    sub_267B9F98C(v58, &unk_28022AE30, &qword_267EFC0B0);
    *(v29 + 528) = 0u;
    *(v29 + 544) = 0u;
  }

  else
  {
    *(v29 + 552) = v35;
    __swift_allocate_boxed_opaque_existential_0((v29 + 528));
    OUTLINED_FUNCTION_8_9();
    (*(v59 + 32))();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C5A0E4()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for EditMessageAskForPayloadParameters(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C5A170()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  *v1 = 0;
  v4 = v2[5];
  v5 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[6];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = v2[7];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  v17 = v2[8];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
  *(v1 + v2[9]) = 0;
  v21 = v2[10];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v5);
  v25 = v2[11];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v5);
  v29 = v2[12];
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  *(v1 + v2[13]) = 0;
  OUTLINED_FUNCTION_1_3();
  v39 = v33;
  v34 = *(v3 + 4);
  v35 = swift_task_alloc();
  v0[7] = v35;
  *v35 = v0;
  v35[1] = sub_267C5A2F4;
  v36 = v0[6];
  v37 = v0[3];

  return v39(v36);
}

uint64_t sub_267C5A2F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5A3F0()
{
  v1 = v0[6];
  sub_267C589E0();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_267C5A4A4;
  v4 = v0[4];
  v5 = OUTLINED_FUNCTION_30_4();

  return v6(v5);
}

uint64_t sub_267C5A4A4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 72);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C5A5D8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_267C5A648()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C5A6B4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_5_14();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C5A720()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 112) = v5;
  v6 = type metadata accessor for EditMessageConfirmEditParameters(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5A7B0()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 112);
  v6 = v2[5];
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[12]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  OUTLINED_FUNCTION_3_13(v2[15]);
  OUTLINED_FUNCTION_3_13(v2[16]);
  OUTLINED_FUNCTION_3_13(v2[17]);
  OUTLINED_FUNCTION_3_13(v2[19]);
  *v1 = 0;
  *(v1 + v2[14]) = v5;
  *(v1 + v2[18]) = v3;

  OUTLINED_FUNCTION_1_3();
  v16 = v11;
  v12 = *(v4 + 4);
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_34_0(v13);

  return v16(v14);
}

uint64_t sub_267C5A920()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5AA1C()
{
  v1 = v0[7];
  sub_267C58FF4();
  v3 = v2;
  v0[10] = v2;
  v4 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_267C5AAE4;
  v5 = v0[5];

  return v7(0xD000000000000017, 0x8000000267F131A0, v3);
}

uint64_t sub_267C5AAE4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C5AC18()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267C5AC88()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C5ACF4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_6_8();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C5AD60()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for EditMessageMessageEditedParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C5ADEC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v2[5];
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  *v1 = 0;
  *(v1 + v2[12]) = v3;

  OUTLINED_FUNCTION_1_3();
  v15 = v10;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_34_0(v12);

  return v15(v13);
}

uint64_t sub_267C5AF24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C5B020()
{
  v1 = v0[7];
  sub_267C59A54();
  v0[10] = v2;
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_267C5B0D4;
  v4 = v0[5];
  v5 = OUTLINED_FUNCTION_30_4();

  return v6(v5);
}

uint64_t sub_267C5B0D4()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C5B208()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267C5B278()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C5B2E4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_4_14();
  sub_267C5B564(v2, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

void sub_267C5B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_267C2FB6C(v25, &a9 - v35, &qword_280229E20, &unk_267EFDCC0);
  (*(v27 + 16))(v30, v23, v26);
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9F98C(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C5B564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267C5B604()
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267C5B934(319, &qword_2802297E8, type metadata accessor for MessagesGroup, MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_267C5B934(319, &qword_2802297F0, MEMORY[0x277D55B70], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_267C5B7C4()
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267C5B934(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_267C5B934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_267C5B9C0()
{
  sub_267C5B934(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267C5B934(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267C5B934(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for MessagesSlotValidationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesSlotValidationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C5BC80()
{
  result = qword_280229820;
  if (!qword_280229820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229820);
  }

  return result;
}

uint64_t sub_267C5BCFC(unsigned __int8 a1)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a1);
  return sub_267EFA018();
}

void sub_267C5BD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_267EF2CC8();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v65 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  LODWORD(v19) = *(a1 + 16);
  *&v76 = *a1;
  *(&v76 + 1) = v18;
  v77 = v19;
  sub_267C5DD80(&v76, v20, v21, v22, v23, v24, v25, v26, v60, v61, v62);
  v28 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    v60 = v16;
    v29 = v17;
    v63 = v18;
    v64 = v17;
    v30 = v9;
    v32 = *(v3 + 24);
    v31 = *(v3 + 32);
    v69 = __swift_project_boxed_opaque_existential_0(v3, v32);
    *&v76 = v29;
    *(&v76 + 1) = v18;
    v77 = v19;
    v33 = ConversationEventStore.Event.rawValue.getter();
    v70 = v19;
    v73 = v33;
    v74 = v34;

    v35 = OUTLINED_FUNCTION_4_15();
    MEMORY[0x26D608E60](v35);

    v36 = *(v31 + 56);
    v61 = v28;
    v36(v28, v73, v74, v32, v31);

    v37 = *(v3 + 24);
    v38 = *(v3 + 32);
    v62 = __swift_project_boxed_opaque_existential_0(v3, v37);
    v78 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
    v67 = a2;
    v68 = v30;
    v40 = *(v30 + 16);
    v69 = v6;
    v66 = v40;
    v40(boxed_opaque_existential_0, a2, v6);
    a2 = v63;
    v28 = v64;
    v73 = v64;
    v74 = v63;
    v75 = v70;
    v71 = ConversationEventStore.Event.rawValue.getter();
    v72 = v41;

    v42 = OUTLINED_FUNCTION_3_14();
    MEMORY[0x26D608E60](v42);

    (*(v38 + 64))(&v76, v71, v72, v37, v38);
    LODWORD(v19) = v70;

    sub_267B9FF34(&v76, &qword_28022AEF0, &qword_267EFCDE0);
    if (!v19)
    {
      OUTLINED_FUNCTION_30_5();
      v43 = v69;
      v78 = v69;
      v44 = __swift_allocate_boxed_opaque_existential_0(&v76);
      v66(v44, v67, v43);
      (*(v37 + 64))(&v76, 0x614C664F65746144, 0xEE00746E69487473, v30, v37);
      sub_267B9FF34(&v76, &qword_28022AEF0, &qword_267EFCDE0);
      v76 = xmmword_267EFE6F0;
      v77 = 4;
      sub_267C5DEC0(&v76);
    }

    v45 = sub_267C28E68();
    v16 = v69;
    if (v45)
    {
      v76 = xmmword_267EFE6F0;
      v77 = 4;
      v37 = v60;
      sub_267EF2CB8();
      sub_267C5BD60(&v76, v37);
      (*(v68 + 8))(v37, v16);
    }

    v6 = v65;
    if (!v19)
    {
      if (v28)
      {
        if (v28 == 8)
        {
          v46 = 0xEE006C617373696DLL;
          v47 = 0x736944796C726165;
        }

        else
        {
          if (v28 != 1)
          {
            goto LABEL_18;
          }

          v46 = 0x8000000267F13500;
          v47 = 0xD000000000000015;
        }
      }

      else
      {
        v46 = 0xE600000000000000;
        v47 = 0x746165706572;
      }

      OUTLINED_FUNCTION_30_5();
      v78 = MEMORY[0x277D837D0];
      *&v76 = v47;
      *(&v76 + 1) = v46;
      (*(v37 + 64))(&v76, 0x746E69487473614CLL, 0xEC00000064616552, v16, v37);
      sub_267B9FF34(&v76, &qword_28022AEF0, &qword_267EFCDE0);
      if (v28)
      {
        v16 = v69;
        LOBYTE(v19) = v70;
        if (v28 != 1)
        {
          goto LABEL_18;
        }

        v19 = "AnnounceMessagesInterruption";
        v48 = 0xD00000000000001DLL;
      }

      else
      {
        v48 = 0xD00000000000001ALL;
        v19 = "ExcessiveNotificationHintRead";
      }

      OUTLINED_FUNCTION_30_5();
      (*(v37 + 48))(1, v48, v19 | 0x8000000000000000, v16, v37);

      v16 = v69;
      LOBYTE(v19) = v70;
    }

LABEL_18:
    if (qword_280228818 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_0_10();
  swift_once();
LABEL_19:
  v49 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
  v66(v6, v67, v16);
  sub_267C5E960(v28, a2, v19);
  v50 = sub_267EF89F8();
  v51 = v19;
  v52 = sub_267EF95D8();
  sub_267C5E97C(v28, a2, v51);
  if (os_log_type_enabled(v50, v52))
  {
    OUTLINED_FUNCTION_52();
    v73 = OUTLINED_FUNCTION_33_2();
    *v3 = 136315650;
    *&v76 = v28;
    *(&v76 + 1) = a2;
    v77 = v51;
    v53 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v53, v54, &v73);
    v55 = v16;
    OUTLINED_FUNCTION_45_3();
    *(v3 + 4) = v16;
    *(v3 + 12) = 2048;
    *(v3 + 14) = v61;
    *(v3 + 22) = 2080;
    sub_267C5EDC0();
    v56 = sub_267EF9E58();
    v58 = v57;
    (*(v68 + 8))(v6, v55);
    v59 = sub_267BA33E8(v56, v58, &v73);

    *(v3 + 24) = v59;
    _os_log_impl(&dword_267B93000, v50, v52, "Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v3, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_9_11();
  }

  else
  {

    (*(v68 + 8))(v6, v16);
  }
}

uint64_t sub_267C5C400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = sub_267EF2CC8();
  v11 = OUTLINED_FUNCTION_58(v10);
  v70 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60();
  v71 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  OUTLINED_FUNCTION_44_6();
  v76[0] = v19;
  v76[1] = v20;
  v77 = v21;
  v74 = ConversationEventStore.Event.rawValue.getter();
  v75 = v24;

  v25 = OUTLINED_FUNCTION_3_14();
  MEMORY[0x26D608E60](v25);

  v26 = v75;
  (*(v23 + 40))(&v78, v74, v75, v22, v23);

  if (v81)
  {
    v27 = swift_dynamicCast();
    OUTLINED_FUNCTION_34_5(v9, v27 ^ 1u);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v28 = v70;
      v29 = v72;
      v69 = *(v70 + 32);
      v69(v72, v9, v10);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v30 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
      v31 = v71;
      (*(v28 + 16))(v71, v29, v10);
      v32 = OUTLINED_FUNCTION_13_9();
      sub_267C5E960(v32, v33, v34);
      v35 = sub_267EF89F8();
      v36 = sub_267EF95D8();
      v37 = OUTLINED_FUNCTION_13_9();
      sub_267C5E97C(v37, v38, v39);
      if (os_log_type_enabled(v35, v36))
      {
        v40 = v28;
        v41 = OUTLINED_FUNCTION_35_0();
        v68 = swift_slowAlloc();
        v76[0] = v68;
        *v41 = 136315394;
        v78 = v19;
        v79 = v20;
        v80 = v21;
        v42 = ConversationEventStore.Event.rawValue.getter();
        v44 = sub_267BA33E8(v42, v43, v76);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        sub_267C5EDC0();
        v45 = v71;
        v46 = sub_267EF9E58();
        v48 = v47;
        (*(v40 + 8))(v45, v10);
        v49 = sub_267BA33E8(v46, v48, v76);
        v29 = v72;

        *(v41 + 14) = v49;
        OUTLINED_FUNCTION_43_7(&dword_267B93000, v50, v51, "Read lastUsageTimestamp for event %s: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        (*(v28 + 8))(v31, v10);
      }

      v65 = v73;
      v69(v73, v29, v10);
      v64 = 0;
      return OUTLINED_FUNCTION_34_5(v65, v64);
    }
  }

  else
  {
    sub_267B9FF34(&v78, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_34_5(v9, 1);
  }

  sub_267B9FF34(v9, &qword_28022BD90, &unk_267EFCDD0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v52 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
  v53 = OUTLINED_FUNCTION_13_9();
  sub_267C5E960(v53, v54, v55);
  v56 = sub_267EF89F8();
  v57 = sub_267EF95D8();
  v58 = OUTLINED_FUNCTION_13_9();
  sub_267C5E97C(v58, v59, v60);
  if (os_log_type_enabled(v56, v57))
  {
    OUTLINED_FUNCTION_48();
    v76[0] = OUTLINED_FUNCTION_20_3();
    *v26 = 136315138;
    v78 = v19;
    v79 = v20;
    v80 = v21;
    v61 = ConversationEventStore.Event.rawValue.getter();
    v63 = sub_267BA33E8(v61, v62, v76);

    *(v26 + 4) = v63;
    _os_log_impl(&dword_267B93000, v56, v57, "No lastUsageTimestamp for event %s", v26, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  v64 = 1;
  v65 = v73;
  return OUTLINED_FUNCTION_34_5(v65, v64);
}

uint64_t ConversationEventStore.setDisabled(event:)()
{
  OUTLINED_FUNCTION_28_10();
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
  v7 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v7, v8, v9);
  v10 = sub_267EF89F8();
  sub_267EF95D8();
  v11 = OUTLINED_FUNCTION_2_20();
  if (OUTLINED_FUNCTION_39_3(v11, v12, v13))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *v1 = 136315138;
    v14 = OUTLINED_FUNCTION_32_5();
    v17 = OUTLINED_FUNCTION_46_3(v14, v15, v16);

    *(v1 + 4) = v17;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  v23 = v0[3];
  v24 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v23);
  v28 = OUTLINED_FUNCTION_32_5();
  v29 = v25;

  OUTLINED_FUNCTION_6_9();

  (*(v24 + 48))(1, v28, v29, v23, v24);
  OUTLINED_FUNCTION_27_1();
}

SiriMessagesFlow::ConversationEventStore::Hint_optional __swiftcall ConversationEventStore.Hint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267EF9D38();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ConversationEventStore.Hint.rawValue.getter()
{
  result = 0xD000000000000019;
  switch(*v0)
  {
    case 1:
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 8:
      result = 0xD000000000000022;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 9:
    case 0xC:
      result = 0xD000000000000025;
      break;
    case 0xA:
      result = 0xD000000000000027;
      break;
    case 0xB:
      result = 0xD00000000000002BLL;
      break;
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C5CBF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_267C27C0C();
}

unint64_t sub_267C5CC28@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationEventStore.Hint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConversationEventStore.Event.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_40_3();
      v7 = v8 - 8;
      goto LABEL_9;
    case 2:
      OUTLINED_FUNCTION_40_3();
      v7 = v6 - 1;
LABEL_9:
      v23 = v7;
      goto LABEL_10;
    case 3:
      v23 = 0x6269726373627553;
LABEL_10:
      MEMORY[0x26D608E60](v1, v2);
      result = v23;
      break;
    case 4:
      v4 = *v0;
      switch(v1)
      {
        case 1:
          OUTLINED_FUNCTION_1_21();
          result = v13 + 17;
          break;
        case 2:
          OUTLINED_FUNCTION_1_21();
          result = v10 + 7;
          break;
        case 3:
          OUTLINED_FUNCTION_1_21();
          result = v11 + 8;
          break;
        case 4:
          OUTLINED_FUNCTION_1_21();
          result = v9 - 7;
          break;
        case 5:
          OUTLINED_FUNCTION_1_21();
          result = v14 + 11;
          break;
        case 6:
          goto LABEL_20;
        case 7:
          OUTLINED_FUNCTION_1_21();
          result = v12 - 3;
          break;
        default:
          OUTLINED_FUNCTION_1_21();
          result = v5 + 3;
          break;
      }

      break;
    default:
      switch(*v0)
      {
        case 1u:
        case 5u:
          OUTLINED_FUNCTION_1_21();
          result = v18 | 6;
          break;
        case 2u:
LABEL_20:
          OUTLINED_FUNCTION_1_21();
          result = v17 + 1;
          break;
        case 3u:
        case 8u:
          OUTLINED_FUNCTION_1_21();
          result = v22 + 9;
          break;
        case 4u:
        case 6u:
          OUTLINED_FUNCTION_1_21();
          result = v20 + 5;
          break;
        case 7u:
          result = 0xD000000000000019;
          break;
        case 9u:
        case 0xCu:
          OUTLINED_FUNCTION_1_21();
          result = v16 + 12;
          break;
        case 0xAu:
          OUTLINED_FUNCTION_1_21();
          result = v21 + 14;
          break;
        case 0xBu:
          OUTLINED_FUNCTION_1_21();
          result = v15 + 18;
          break;
        case 0xDu:
          OUTLINED_FUNCTION_1_21();
          result = v19 | 4;
          break;
        default:
          result = 0xD000000000000019;
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_267C5CF54@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationEventStore.Event.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_267C5CF7C(uint64_t a1, char a2)
{
  v5 = v2;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  OUTLINED_FUNCTION_2_20();
  if (sub_267C28E68())
  {
    oslog = a2;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    OUTLINED_FUNCTION_18_9();
    v10 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
    v11 = OUTLINED_FUNCTION_2_20();
    sub_267C5E960(v11, v12, v13);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    v16 = OUTLINED_FUNCTION_2_20();
    sub_267C5E97C(v16, v17, v18);
    if (os_log_type_enabled(v14, v15))
    {
      v4 = OUTLINED_FUNCTION_35_0();
      v48 = swift_slowAlloc();
      *v4 = 136315394;
      v53 = v7;
      v54 = v8;
      v55 = v9;
      v50 = ConversationEventStore.Event.rawValue.getter();
      v51 = v19;

      MEMORY[0x26D608E60](0x6F466C6576654C2ELL, v3);

      v20 = sub_267BA33E8(v50, v51, &v48);

      *(v4 + 4) = v20;
      *(v4 + 12) = 2080;
      v21 = 0xE700000000000000;
      v22 = 0x6C6F72746E6F63;
      switch(oslog)
      {
        case 1:
          v23 = 1701998445;
          goto LABEL_17;
        case 2:
          v22 = 0xD000000000000011;
          v21 = 0x8000000267F0F8F0;
          break;
        case 3:
          v23 = 1936942444;
LABEL_17:
          v22 = v23 | 0x746E694800000000;
          v21 = 0xE900000000000073;
          break;
        default:
          break;
      }

      v3 = sub_267BA33E8(v22, v21, &v48);

      *(v4 + 14) = v3;
      OUTLINED_FUNCTION_43_7(&dword_267B93000, v38, v39, "#ConversationEventStore Storing %s with value of %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      OUTLINED_FUNCTION_18_9();
    }

    else
    {
    }

    v40 = v5[3];
    v41 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v40);
    v42 = 0xE700000000000000;
    v43 = 0x6C6F72746E6F63;
    switch(oslog)
    {
      case 0:
        goto LABEL_24;
      case 1:
        v44 = 1701998445;
        goto LABEL_23;
      case 2:
        v43 = 0xD000000000000011;
        v42 = 0x8000000267F0F8F0;
        goto LABEL_24;
      case 3:
        v44 = 1936942444;
LABEL_23:
        v43 = v44 | 0x746E694800000000;
        v42 = 0xE900000000000073;
LABEL_24:
        v56 = MEMORY[0x277D837D0];
        v53 = v43;
        v54 = v42;
        v50 = v7;
        v51 = v8;
        v52 = v9;
        v48 = ConversationEventStore.Event.rawValue.getter();
        v49 = v45;

        MEMORY[0x26D608E60](v4, v3);

        (*(v41 + 64))(&v53, v48, v49, v40, v41);

        sub_267B9FF34(&v53, &qword_28022AEF0, &qword_267EFCDE0);
        break;
      default:
        JUMPOUT(0);
    }

    goto LABEL_25;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v24 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
  v25 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v25, v26, v27);
  osloga = sub_267EF89F8();
  v28 = sub_267EF95E8();
  v29 = OUTLINED_FUNCTION_2_20();
  sub_267C5E97C(v29, v30, v31);
  if (os_log_type_enabled(osloga, v28))
  {
    v32 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    v50 = v33;
    *v32 = 136315138;
    v53 = v7;
    v54 = v8;
    v55 = v9;
    v34 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v34, v35, &v50);
    OUTLINED_FUNCTION_43();

    *(v32 + 4) = &v53;
    _os_log_impl(&dword_267B93000, osloga, v28, "#ConversationEventStore levelForFactor should not be used for %s events", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

LABEL_25:
    OUTLINED_FUNCTION_41_0();
    return;
  }

  OUTLINED_FUNCTION_41_0();
}

void sub_267C5D410(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_5_15();
  if (sub_267C28E68())
  {
    v5 = v1[3];
    v6 = v1[4];
    v7 = __swift_project_boxed_opaque_existential_0(v1, v5);
    v52 = v3;
    v53 = v2;
    v54 = v4;
    v50 = ConversationEventStore.Event.rawValue.getter();
    v51 = v8;

    MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

    (*(v6 + 40))(v55, v50, v51, v5, v6);

    if (v55[3])
    {
      if (swift_dynamicCast())
      {
        v9 = sub_267C3C61C();
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v10 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
        v11 = OUTLINED_FUNCTION_5_15();
        sub_267C5E960(v11, v12, v13);
        v14 = sub_267EF89F8();
        v15 = sub_267EF95D8();
        v16 = OUTLINED_FUNCTION_5_15();
        sub_267C5E97C(v16, v17, v18);
        if (os_log_type_enabled(v14, v15))
        {
          OUTLINED_FUNCTION_35_0();
          v50 = OUTLINED_FUNCTION_33_2();
          *v7 = 136315394;
          v52 = OUTLINED_FUNCTION_31_6();
          v53 = v19;

          MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

          sub_267BA33E8(v52, v53, &v50);
          OUTLINED_FUNCTION_43();

          *(v7 + 4) = &v52;
          *(v7 + 6) = 2080;
          v20 = 0xE700000000000000;
          v21 = 0x6C6F72746E6F63;
          switch(v9)
          {
            case 0:
              goto LABEL_24;
            case 1:
              v22 = 1701998445;
              goto LABEL_23;
            case 2:
              v20 = 0x8000000267F0F8F0;
              v21 = 0xD000000000000011;
              goto LABEL_24;
            case 3:
              v22 = 1936942444;
LABEL_23:
              v21 = v22 | 0x746E694800000000;
              v20 = 0xE900000000000073;
LABEL_24:
              sub_267BA33E8(v21, v20, &v50);
              OUTLINED_FUNCTION_43();

              *(v7 + 14) = &v52;
              _os_log_impl(&dword_267B93000, v14, v15, "#ConversationEventStore Reading %s value: %s", v7, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_9_11();
              break;
            default:
              goto LABEL_15;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_267B9FF34(v55, &qword_28022AEF0, &qword_267EFCDE0);
    }

LABEL_15:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = OUTLINED_FUNCTION_5_15();
    sub_267C5E960(v39, v40, v41);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    v44 = OUTLINED_FUNCTION_5_15();
    sub_267C5E97C(v44, v45, v46);
    if (os_log_type_enabled(v42, v43))
    {
      v47 = OUTLINED_FUNCTION_48();
      v48 = OUTLINED_FUNCTION_52();
      v50 = v48;
      *v47 = 136315138;
      v52 = OUTLINED_FUNCTION_31_6();
      v53 = v49;

      MEMORY[0x26D608E60](0x6F466C6576654C2ELL, 0xEF726F7463614672);

      sub_267BA33E8(v52, v53, &v50);
      OUTLINED_FUNCTION_43();

      *(v47 + 4) = &v52;
      _os_log_impl(&dword_267B93000, v42, v43, "#ConversationEventStore No %s value in user defaults", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_9_11();
    }

    goto LABEL_20;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v23 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
  v24 = OUTLINED_FUNCTION_5_15();
  sub_267C5E960(v24, v25, v26);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();
  v29 = OUTLINED_FUNCTION_5_15();
  sub_267C5E97C(v29, v30, v31);
  if (os_log_type_enabled(v27, v28))
  {
    v32 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    v52 = v33;
    *v32 = 136315138;
    v34 = OUTLINED_FUNCTION_31_6();
    sub_267BA33E8(v34, v35, &v52);
    OUTLINED_FUNCTION_43();

    *(v32 + 4) = v1;
    OUTLINED_FUNCTION_42_4(&dword_267B93000, v36, v37, "#ConversationEventStore levelForFactor should not used for %s events");
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_32_0();
  }

LABEL_20:
  OUTLINED_FUNCTION_41_0();
}

uint64_t sub_267C5D908@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = sub_267EF2CC8();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v20);
  (*(v21 + 40))(v44, 0x614C664F65746144, 0xEE00746E69487473, v20, v21);
  if (v44[3])
  {
    v22 = swift_dynamicCast();
    OUTLINED_FUNCTION_34_5(v7, v22 ^ 1u);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v23 = *(v11 + 32);
      v23(v19, v7, v8);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v24 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
      (*(v11 + 16))(v16, v19, v8);
      v25 = sub_267EF89F8();
      v26 = sub_267EF95D8();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_35_0();
        v41 = OUTLINED_FUNCTION_33_2();
        v44[0] = v41;
        *v21 = 136315394;
        *(v21 + 4) = OUTLINED_FUNCTION_21_5();
        *(v21 + 12) = 2080;
        sub_267C5EDC0();
        v27 = sub_267EF9E58();
        v42 = v23;
        v29 = v28;
        (*(v11 + 8))(v16, v8);
        v30 = sub_267BA33E8(v27, v29, v44);
        v23 = v42;

        *(v21 + 14) = v30;
        _os_log_impl(&dword_267B93000, v25, v26, "Read lastUsageTimestamp for %s: %s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_9_11();
      }

      else
      {

        (*(v11 + 8))(v16, v8);
      }

      v35 = v43;
      v23(v43, v19, v8);
      v38 = 0;
      return OUTLINED_FUNCTION_34_5(v35, v38);
    }
  }

  else
  {
    sub_267B9FF34(v44, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_34_5(v7, 1);
  }

  sub_267B9FF34(v7, &qword_28022BD90, &unk_267EFCDD0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v31 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v43;
  if (v34)
  {
    v36 = OUTLINED_FUNCTION_48();
    v37 = OUTLINED_FUNCTION_52();
    v44[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = OUTLINED_FUNCTION_21_5();
    _os_log_impl(&dword_267B93000, v32, v33, "No lastUsageTimestamp for event %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v38 = 1;
  return OUTLINED_FUNCTION_34_5(v35, v38);
}

void sub_267C5DD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = *(v11 + 24);
  v17 = *(v11 + 32);
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_22_7();
  v18 = OUTLINED_FUNCTION_4_15();
  MEMORY[0x26D608E60](v18);

  v19 = *(v17 + 24);
  OUTLINED_FUNCTION_14_12();
  v21 = v20();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v23, v24, v25);
  v26 = sub_267EF89F8();
  sub_267EF95D8();
  v27 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v27, v28, v29))
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315394;
    v30 = OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_46_3(v30, v31, v32);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v13;
    *(a11 + 12) = 2048;
    *(a11 + 14) = v21;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

void sub_267C5DEC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v5);
  *&v31 = v2;
  *(&v31 + 1) = v3;
  LOBYTE(v32) = v4;
  v29 = ConversationEventStore.Event.rawValue.getter();
  v30 = v7;

  v8 = OUTLINED_FUNCTION_4_15();
  MEMORY[0x26D608E60](v8);

  (*(v6 + 56))(0, v29, v30, v5, v6);

  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v9);
  v31 = 0u;
  v32 = 0u;
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_22_7();
  v11 = OUTLINED_FUNCTION_3_14();
  MEMORY[0x26D608E60](v11);

  (*(v10 + 64))(&v31, v27, v28, v9, v10);

  sub_267B9FF34(&v31, &qword_28022AEF0, &qword_267EFCDE0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
  v13 = OUTLINED_FUNCTION_2_20();
  sub_267C5E960(v13, v14, v15);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  v18 = OUTLINED_FUNCTION_2_20();
  sub_267C5E97C(v18, v19, v20);
  if (os_log_type_enabled(v16, v17))
  {
    v21 = OUTLINED_FUNCTION_48();
    v22 = OUTLINED_FUNCTION_52();
    v29 = v22;
    *v21 = 136315138;
    *&v31 = v2;
    *(&v31 + 1) = v3;
    LOBYTE(v32) = v4;
    v23 = ConversationEventStore.Event.rawValue.getter();
    sub_267BA33E8(v23, v24, &v29);
    OUTLINED_FUNCTION_43();

    *(v21 + 4) = &v31;
    OUTLINED_FUNCTION_42_4(&dword_267B93000, v25, v26, "Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0");
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_32_0();
  }
}

void sub_267C5E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = *(v11 + 24);
  v17 = *(v11 + 32);
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_9();

  v18 = *(v17 + 8);
  OUTLINED_FUNCTION_14_12();
  v20 = v19();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v22, v23, v24);
  v25 = sub_267EF89F8();
  sub_267EF95D8();
  v26 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v26, v27, v28))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315394;
    v29 = OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_46_3(v29, v30, v31);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v13;
    *(a11 + 12) = 1024;
    *(a11 + 14) = v20 & 1;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v32, v33, v34, v35, v36, 0x12u);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

void sub_267C5E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_28_10();
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = *(v11 + 24);
  v17 = *(v11 + 32);
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_6_9();

  v18 = *(v17 + 8);
  OUTLINED_FUNCTION_14_12();
  v19();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v20 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
  v21 = OUTLINED_FUNCTION_7_11();
  sub_267C5E960(v21, v22, v23);
  v24 = sub_267EF89F8();
  sub_267EF95D8();
  v25 = OUTLINED_FUNCTION_7_11();
  if (OUTLINED_FUNCTION_39_3(v25, v26, v27))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_38_6();
    *a11 = 136315138;
    v28 = OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_46_3(v28, v29, v30);
    OUTLINED_FUNCTION_45_3();
    *(a11 + 4) = v13;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_11_11();
  }

  OUTLINED_FUNCTION_27_1();
}

BOOL sub_267C5E360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  sub_267C5D908(&v26 - v4);
  v6 = sub_267EF2CC8();
  v7 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_267B9FF34(v5, &qword_28022BD90, &unk_267EFCDD0);
  if (EnumTagSinglePayload == 1)
  {
    LOBYTE(v27) = 0;
    sub_267C5DD80(&v26, v9, v10, v11, v12, v13, v14, v15, 13, 0, v27);
    if (!v23)
    {
      LOBYTE(v27) = 0;
      sub_267C5DD80(&v26, v16, v17, v18, v19, v20, v21, v22, 0, 0, v27);
      return v24 != 0;
    }
  }

  return v7;
}

uint64_t sub_267C5E458@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_267C5EE18(v1 + 40, &v26);
  if (v27)
  {
    sub_267B9A5E8(&v26, &v28);
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_267BEB478(0xD00000000000001CLL, 0x8000000267F13580);
    v11 = v10;
    if (v10)
    {
      v10 = sub_267BEB4DC();
      v12 = &off_2878D36E8;
    }

    else
    {
      v12 = 0;
      *(&v28 + 1) = 0;
      v29 = 0;
    }

    *&v28 = v11;
    v30 = v10;
    v31 = v12;
    if (v27)
    {
      sub_267B9FF34(&v26, &qword_280229840, &qword_267EFE9E0);
    }
  }

  if (v30)
  {
    sub_267B9A5E8(&v28, v32);
    v13 = v33;
    v14 = v34;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    (*(v14 + 40))(&v28, 0xD00000000000001ALL, 0x8000000267F135A0, v13, v14);
    if (v30)
    {
      v15 = sub_267EF2CC8();
      v16 = swift_dynamicCast() ^ 1;
      v17 = v8;
      v18 = v15;
    }

    else
    {
      sub_267B9FF34(&v28, &qword_28022AEF0, &qword_267EFCDE0);
      v18 = sub_267EF2CC8();
      v17 = v8;
      v16 = 1;
    }

    __swift_storeEnumTagSinglePayload(v17, v16, 1, v18);
    sub_267C5EE88(v8, a1);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    sub_267B9FF34(&v28, &qword_280229840, &qword_267EFE9E0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "Couldn't open suite com.apple.assistant.backedup", v22, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v23 = sub_267EF2CC8();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

uint64_t sub_267C5E738()
{
  v1 = v0;
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_29_4();
  v5(v4);
  v6 = v12[3];
  sub_267B9FF34(v12, &qword_28022AEF0, &qword_267EFCDE0);
  if (!v6)
  {
    return 0;
  }

  v7 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_29_4();
  if (v10(v9))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_267C5E80C(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v5);
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = a1;
  v9[1] = a2;
  v7 = *(v6 + 64);

  v7(v9, 0xD00000000000002CLL, 0x8000000267F13520, v5, v6);
  return sub_267B9FF34(v9, &qword_28022AEF0, &qword_267EFCDE0);
}

uint64_t sub_267C5E8F4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_267BA33E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_267C5E950(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_267C5E960(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_267C5E97C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 2)
  {
  }

  return result;
}

unint64_t sub_267C5E99C()
{
  result = qword_280229828;
  if (!qword_280229828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229828);
  }

  return result;
}

unint64_t sub_267C5E9F4()
{
  result = qword_280229830;
  if (!qword_280229830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229838, &qword_267EFE7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229830);
  }

  return result;
}

uint64_t sub_267C5EA60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_267C5EAA0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ConversationEventStore.Hint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConversationEventStore.Hint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow22ConversationEventStoreV0E0O(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_267C5ECA0(uint64_t a1, unsigned int a2)
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

uint64_t sub_267C5ECE0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267C5ED24(uint64_t result, unsigned int a2)
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

void *sub_267C5ED48(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_267C5ED90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_267C5EDC0()
{
  result = qword_28022BDE0;
  if (!qword_28022BDE0)
  {
    sub_267EF2CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BDE0);
  }

  return result;
}

uint64_t sub_267C5EE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229840, &qword_267EFE9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C5EE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C5EEF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_267EFA0A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_267EF9B58();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v25[0] = a1;
          v25[1] = v24;
          v13 = v25 + v10;
          v15 = *(v25 + v10);
          if (*(v25 + v10) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v19 = v13[1] & 0x3F | ((v15 & 0x1F) << 6);
                v17 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v20 = ((v15 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
                v17 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v21 = ((v15 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
                v17 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v23;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v12 = sub_267EF9BC8();
          }

          v13 = (v12 + v10);
          v14 = *(v12 + v10);
          v15 = *(v12 + v10);
          if (v14 < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v17 = 1;
      }

LABEL_15:
      sub_267EFA0B8();
      v18 = sub_267EFA098();
      (*v11)(v8, v4);
      if ((v18 & 1) == 0)
      {
        v10 += v17;
        if (v10 < v9)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_267C5F164(uint64_t a1)
{
  v3 = v2;
  v122 = sub_267EF4C08();
  v5 = OUTLINED_FUNCTION_58(v122);
  v121 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v120 = v10 - v9;
  OUTLINED_FUNCTION_26_2();
  v126 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  v11 = OUTLINED_FUNCTION_22(v126);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6();
  v125 = v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  v127 = &v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  OUTLINED_FUNCTION_18(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  v130 = v21;
  v22 = OUTLINED_FUNCTION_26_2();
  v23 = type metadata accessor for FollowupOfferFlow.State(v22);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  v128 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  v131 = &v117 - v29;
  OUTLINED_FUNCTION_26_2();
  v30 = sub_267EF4BA8();
  v31 = OUTLINED_FUNCTION_58(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v38 = v37 - v36;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v39 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
  v40 = *(v33 + 16);
  v124 = v33 + 16;
  v123 = v40;
  v40(v38, a1, v30);
  v129 = v2;
  v41 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_48();
    v119 = v2;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_52();
    v135[0] = v45;
    *v44 = 136315138;
    sub_267C6AD98(&qword_28022AF50, MEMORY[0x277D5C118]);
    v46 = sub_267EF9E58();
    v47 = v38;
    v48 = v30;
    (*(v33 + 8))(v47, v30);
    v49 = OUTLINED_FUNCTION_108();
    sub_267BA33E8(v49, v50, v51);
    OUTLINED_FUNCTION_54();

    *(v44 + 4) = v46;
    _os_log_impl(&dword_267B93000, v41, v1, "#FollowupOfferFlow received input: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_45_2();
    v3 = v119;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v52 = v38;
    v48 = v30;
    (*(v33 + 8))(v52, v30);
  }

  v53 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_4_16();
  v54 = v131;
  sub_267C6AC8C(v3 + v53, v131);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7 || ((1 << EnumCaseMultiPayload) & 0xB0) == 0)
  {

    v63 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v64 = OUTLINED_FUNCTION_64_2();
      v135[0] = v64;
      *a1 = 136315138;
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v3 + v53, v128);
      v65 = sub_267EF9098();
      v67 = sub_267BA33E8(v65, v66, v135);

      *(a1 + 4) = v67;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_1_22();
    sub_267BA0810(v54, v73);
    return 0;
  }

  v56 = v130;
  sub_267C63E8C(v130);
  v57 = type metadata accessor for FollowupOfferResponse();
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    v58 = v129;
    v59 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_56_2();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v61);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v59, v58, "#FollowupOfferFlow response not returned by strategy, ignoring input");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  if (__swift_getEnumTagSinglePayload(v56, 1, v126) != 1)
  {
    OUTLINED_FUNCTION_6_10();
    sub_267C6ACF4(v56, v127);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v76 = v125;
    __swift_storeEnumTagSinglePayload(v125, 1, 9, v75);
    v77 = OUTLINED_FUNCTION_61_0();
    v79 = sub_267E0B668(v77, v78);
    OUTLINED_FUNCTION_0_12();
    sub_267BA0810(v76, v80);
    if ((v79 & 1) != 0 && *(*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 88))
    {
      v81 = v129;
      v82 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_56_2();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v84);
        OUTLINED_FUNCTION_48_3(&dword_267B93000, v82, v81, "#FollowupOfferFlow user rejected spoken message followup. Closing Siri.");
        OUTLINED_FUNCTION_26();
      }

      v85 = v3[6];
      __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
      v86 = *(v85 + 24);
      v87 = OUTLINED_FUNCTION_43();
      v88(v87, v85);
      __swift_project_boxed_opaque_existential_0(v135, v135[3]);
      v89 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
      sub_267EF45E8();

      OUTLINED_FUNCTION_0_12();
      sub_267BA0810(v127, v90);
      __swift_destroy_boxed_opaque_existential_0(v135);
      return 0;
    }

    v91 = v120;
    sub_267EF4B88();
    v92 = sub_267E57DFC(v91, v135);
    (*(v121 + 8))(v91, v122, v92);
    sub_267C6AD4C(v135, v132, &unk_28022BBF0, &unk_267F01C60);
    v118 = a1;
    if (v133)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
      type metadata accessor for SmsNLv3Intent();
      if (swift_dynamicCast())
      {
        if (sub_267EC2D80() & 1) == 0 && sub_267EC4C40() == 8 && (sub_267EC3C50())
        {
          v93 = v3[6];
          __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
          v94 = *(v93 + 8);
          v95 = OUTLINED_FUNCTION_43();
          v96(v95, v93);
          v97 = v134;
          __swift_project_boxed_opaque_existential_0(v132, v133);
          OUTLINED_FUNCTION_43();
          v98 = sub_267EF3C48();
          __swift_destroy_boxed_opaque_existential_0(v132);
          if ((v98 & 1) == 0)
          {
            v112 = v129;
            v113 = sub_267EF89F8();
            sub_267EF95C8();
            OUTLINED_FUNCTION_56_2();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_61(v115);
              _os_log_impl(&dword_267B93000, v113, v112, "#FollowupOfferFlow received content-only reply", v97, 2u);
              OUTLINED_FUNCTION_40_0();
            }

            v99 = sub_267EC4D94();
            v100 = v116;

            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      sub_267B9F98C(v132, &unk_28022BBF0, &unk_267F01C60);
    }

    v99 = 0;
    v100 = 0;
LABEL_32:
    v101 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager);
    sub_267C6AD4C(v135, v132, &unk_28022BBF0, &unk_267F01C60);
    if (v133)
    {
      v102 = v134;
      __swift_project_boxed_opaque_existential_0(v132, v133);
      v103 = *(v102 + 17);
      v104 = OUTLINED_FUNCTION_54();
      v106 = v105(v104, v102);
      __swift_destroy_boxed_opaque_existential_0(v132);
    }

    else
    {
      sub_267B9F98C(v132, &unk_28022BBF0, &unk_267F01C60);
      v106 = 0;
    }

    *(v101 + 426) = v106 & 1;
    sub_267C48258(v135, v101);
    sub_267B9F98C(v135, &unk_28022BBF0, &unk_267F01C60);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v108 = *(v107 + 48);
    v109 = v128;
    v110 = (v128 + *(v107 + 64));
    OUTLINED_FUNCTION_6_10();
    sub_267C6ACF4(v111, v109);
    v123(v109 + v108, v118, v48);
    *v110 = v99;
    v110[1] = v100;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    sub_267BF8DEC(v109, v3 + v53);
    goto LABEL_36;
  }

  v62 = v128;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  sub_267BF8DEC(v62, v3 + v53);
LABEL_36:
  swift_endAccess();
  return 1;
}

uint64_t sub_267C5FB7C()
{
  OUTLINED_FUNCTION_12();
  v1[85] = v0;
  v1[84] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229950, &unk_267EFEBB0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[86] = OUTLINED_FUNCTION_50();
  v1[87] = swift_task_alloc();
  v6 = sub_267EF4C08();
  v1[88] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[89] = v7;
  v9 = *(v8 + 64);
  v1[90] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  v1[91] = OUTLINED_FUNCTION_50();
  v1[92] = swift_task_alloc();
  v13 = sub_267EF4BA8();
  v1[93] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[94] = v14;
  v16 = *(v15 + 64);
  v1[95] = OUTLINED_FUNCTION_2();
  v17 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  v1[96] = v17;
  OUTLINED_FUNCTION_18(v17);
  v19 = *(v18 + 64);
  v1[97] = OUTLINED_FUNCTION_50();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v20 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[101] = v20;
  OUTLINED_FUNCTION_18(v20);
  v22 = *(v21 + 64);
  v1[102] = OUTLINED_FUNCTION_50();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_267C5FD70()
{
  v339 = v2;
  v3 = v2;
  v4 = *(v2 + 840);
  v5 = *(v2 + 808);
  v6 = *(v3 + 680);
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  *(v3 + 848) = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_4_16();
  sub_267C6AC8C(v6 + v7, v4);
  OUTLINED_FUNCTION_61_6();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v318 = v7;
      v320 = v6;
      v8 = *(v3 + 840);
      v9 = *(v3 + 824);
      v10 = *(v3 + 800);
      v11 = *(v3 + 792);
      v12 = *(v3 + 760);
      v13 = *(v3 + 752);
      v325 = v3;
      v14 = *(v3 + 744);
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v15, v9);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
      v17 = *(v16 + 48);
      v18 = (v9 + *(v16 + 64));
      v20 = *v18;
      v19 = v18[1];
      OUTLINED_FUNCTION_6_10();
      sub_267C6ACF4(v9, v10);
      (*(v13 + 32))(v12, v9 + v17, v14);
      OUTLINED_FUNCTION_7_12();
      sub_267C6AC8C(v10, v11);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 9, v21);
      if (EnumTagSinglePayload == 9)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v141 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v141, qword_280240FB0);
        v142 = sub_267EF89F8();
        v143 = sub_267EF95C8();
        v3 = v325;
        if (OUTLINED_FUNCTION_7_2(v143))
        {
          v144 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_59(v144);
          OUTLINED_FUNCTION_38_1(&dword_267B93000, v145, v146, "#FollowupOfferFlow empty response, waiting for input");
          OUTLINED_FUNCTION_42_0();
        }

        v132 = *(v325 + 800);
        v147 = *(v325 + 760);
        v148 = *(v325 + 752);
        v149 = *(v325 + 744);
        v150 = *(v325 + 672);

        sub_267EF3FB8();
        v151 = *(v148 + 8);
        v152 = OUTLINED_FUNCTION_26_0();
        v153(v152);
LABEL_89:
        OUTLINED_FUNCTION_0_12();
        v155 = v132;
LABEL_96:
        sub_267BA0810(v155, v154);
        goto LABEL_97;
      }

      if (EnumTagSinglePayload == 6)
      {
        if (!v19)
        {
          v203 = swift_task_alloc();
          *(v325 + 968) = v203;
          *v203 = v325;
          v203[1] = sub_267C626D0;
          v204 = *(v325 + 760);
          v205 = *(v325 + 680);
          OUTLINED_FUNCTION_39_0();

          return sub_267C6643C();
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v128 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v128, qword_280240FB0);
        v129 = sub_267EF89F8();
        v130 = sub_267EF95C8();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = OUTLINED_FUNCTION_32();
          *v131 = 0;
          _os_log_impl(&dword_267B93000, v129, v130, "#FollowupOfferFlow pushing flow to confirm reply", v131, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v132 = *(v325 + 800);
        v133 = *(v325 + 760);
        v134 = *(v325 + 752);
        v135 = *(v325 + 744);
        v136 = *(v325 + 680);
        v137 = *(v325 + 672);

        sub_267C68164(v133, v20, v19, v137);

        v138 = *(v134 + 8);
        v139 = OUTLINED_FUNCTION_44_0();
        v140(v139);
        v3 = v325;
        goto LABEL_89;
      }

      v3 = v325;
      if (EnumTagSinglePayload)
      {
        v156 = *(v325 + 792);

        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v156, v157);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v158 = *(v325 + 800);
        v159 = *(v325 + 784);
        v160 = sub_267EF8A08();
        __swift_project_value_buffer(v160, qword_280240FB0);
        OUTLINED_FUNCTION_7_12();
        v161 = OUTLINED_FUNCTION_61_6();
        sub_267C6AC8C(v161, v162);
        v163 = sub_267EF89F8();
        sub_267EF95D8();
        OUTLINED_FUNCTION_64();
        v165 = os_log_type_enabled(v163, v164);
        v166 = *(v325 + 784);
        if (v165)
        {
          v167 = *(v325 + 776);
          v168 = *(v325 + 768);
          OUTLINED_FUNCTION_48();
          v169 = OUTLINED_FUNCTION_64_2();
          v338[0] = v169;
          *v20 = 136315138;
          OUTLINED_FUNCTION_7_12();
          sub_267C6AC8C(v166, v167);
          OUTLINED_FUNCTION_86_1();
          sub_267EF9098();
          OUTLINED_FUNCTION_0_12();
          sub_267BA0810(v166, v170);
          v171 = OUTLINED_FUNCTION_86_1();
          v174 = sub_267BA33E8(v171, v172, v173);

          *(v20 + 4) = v174;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v169);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_26();
        }

        else
        {

          OUTLINED_FUNCTION_0_12();
          sub_267BA0810(v166, v180);
        }

        v181 = *(v325 + 832);
        v182 = *(v325 + 808);
        v183 = *(v325 + 800);
        v184 = *(v325 + 760);
        v185 = *(v325 + 752);
        v186 = *(v325 + 744);
        v187 = *(v325 + 672);
        OUTLINED_FUNCTION_7_12();
        v188 = OUTLINED_FUNCTION_61_0();
        sub_267C6AC8C(v188, v189);
        OUTLINED_FUNCTION_61_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267BF8DEC(v181, v320 + v318);
        swift_endAccess();
        sub_267EF4018();
        (*(v185 + 8))(v184, v186);
        OUTLINED_FUNCTION_0_12();
        v155 = v183;
        goto LABEL_96;
      }

      v23 = *(v325 + 792);
      v24 = *(v325 + 736);
      v25 = *(v325 + 680);

      v26 = OUTLINED_FUNCTION_61_6();
      sub_267BBE184(v26, v27, v28, v29);
      v30 = *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);
      OUTLINED_FUNCTION_83();
      v316 = v30;
      v317 = *(v30 + 24);
      v323 = *(v317 + 16);
      if (v323)
      {
        v7 = v325 + 336;

        v6 = 0;
        v31 = MEMORY[0x277D84F90];
        v24 = &qword_280229968;
        while (1)
        {
          v32 = v24;
          sub_267B9AFEC(v317 + 32 + 40 * v6, v3 + 16);
          v34 = *(v3 + 40);
          v33 = *(v3 + 48);
          __swift_project_boxed_opaque_existential_0((v3 + 16), v34);
          v30 = (*(v33 + 16))(v34, v33);

          __swift_destroy_boxed_opaque_existential_0((v3 + 16));
          v24 = (v30 >> 62);
          if (v30 >> 62)
          {
            v35 = sub_267EF9A68();
          }

          else
          {
            v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v31 >> 62;
          if (v31 >> 62)
          {
            v36 = sub_267EF9A68();
          }

          else
          {
            v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v37 = (v36 + v35);
          if (__OFADD__(v36, v35))
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            v312 = sub_267EABBB0();
            v313 = *(*(v24 - 1) + 8);
            v314 = OUTLINED_FUNCTION_61_6();
            v315(v314);
            v234 = 0xE700000000000000;
            v235 = 0x696A6F6D6E6567;
            switch(v312)
            {
              case 1:
                v234 = 0xE500000000000000;
                v235 = 0x696A6F6D65;
                break;
              case 2:
                v234 = 0xE600000000000000;
                v235 = 0x696A6F6D656DLL;
                break;
              case 3:
                v235 = 0x72656B63697473;
                break;
              case 4:
                goto LABEL_116;
              default:
                goto LABEL_117;
            }

            goto LABEL_117;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v1)
            {
              goto LABEL_19;
            }

            v38 = v31 & 0xFFFFFFFFFFFFFF8;
            v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
            if (v39 >= v37)
            {
              v334 = v31;
              goto LABEL_21;
            }
          }

          else
          {
            if (v1)
            {
LABEL_19:
              sub_267EF9A68();
              goto LABEL_20;
            }

            v38 = v31 & 0xFFFFFFFFFFFFFF8;
          }

          v40 = *(v38 + 16);
LABEL_20:
          v334 = sub_267EF9BB8();
          v38 = v334 & 0xFFFFFFFFFFFFFF8;
          v39 = *((v334 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_21:
          v331 = v6;
          v332 = v35;
          v41 = *(v38 + 16);
          v42 = v39 - v41;
          v37 = (v38 + 8 * v41);
          v327 = v38;
          if (v24)
          {
            v43 = sub_267EF9A68();
            if (!v43)
            {
LABEL_35:

              v31 = v334;
              v24 = v32;
              if (v35 > 0)
              {
                goto LABEL_153;
              }

              goto LABEL_36;
            }

            v44 = v43;
            v45 = sub_267EF9A68();
            if (v42 < v45)
            {
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              OUTLINED_FUNCTION_0();
LABEL_55:
              v81 = sub_267EF8A08();
              OUTLINED_FUNCTION_30_1(v81, qword_280240FB0);
              v82 = sub_267EF89F8();
              v83 = sub_267EF95C8();
              if (OUTLINED_FUNCTION_7_2(v83))
              {
                v84 = OUTLINED_FUNCTION_32();
                OUTLINED_FUNCTION_59(v84);
                OUTLINED_FUNCTION_38_1(&dword_267B93000, v85, v86, "#FollowupOfferFlow readout stopped, hanging in there");
                OUTLINED_FUNCTION_42_0();
              }

              swift_task_alloc();
              OUTLINED_FUNCTION_76_3();
              *(v3 + 992) = v87;
              *v87 = v88;
              OUTLINED_FUNCTION_39_4(v87);
              OUTLINED_FUNCTION_39_0();

              return sub_267C64F04();
            }

            if (v44 < 1)
            {
              goto LABEL_160;
            }

            v6 = v45;
            v46 = v37 + 4;
            v24 = v32;
            v1 = sub_267BC1E20(&qword_28022A360, v32, &unk_267EFEBC0);
            for (i = 0; i != v44; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_267EFEBC0);
              v48 = OUTLINED_FUNCTION_44_0();
              v50 = sub_267C73FD8(v48, v49, v30);
              v52 = *v51;
              v50(v7, 0);
              v24 = v32;
              v46[i].isa = v52;
              v37 = &unk_267EFEBC0;
            }

            v3 = v325;
          }

          else
          {
            v6 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v6)
            {
              goto LABEL_35;
            }

            if (v42 < v6)
            {
              goto LABEL_159;
            }

            sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
            swift_arrayInitWithCopy();
            v24 = v32;
          }

          v31 = v334;
          if (v6 < v332)
          {
            goto LABEL_153;
          }

          if (v6 > 0)
          {
            v53 = *(v327 + 16);
            v54 = __OFADD__(v53, v6);
            v55 = v53 + v6;
            if (v54)
            {
              __break(1u);
              goto LABEL_157;
            }

            *(v327 + 16) = v55;
          }

LABEL_36:
          v6 = v331 + 1;
          if (v331 + 1 == v323)
          {

            goto LABEL_104;
          }
        }
      }

      v31 = MEMORY[0x277D84F90];
LABEL_104:
      v207 = sub_267BF6698();
      *(v3 + 888) = v207;
      if (!v207)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v241 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v241, qword_280240FB0);
        v242 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_56_2();
        if (os_log_type_enabled(v242, v243))
        {
          v244 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v244);
          _os_log_impl(&dword_267B93000, v242, v30, "#FollowupOfferFlow failed to get a targetMessage, a requirement for SendTapbackFlow", v24, 2u);
          OUTLINED_FUNCTION_40_0();
        }

        v245 = *(v3 + 832);
        v246 = *(v3 + 808);
        v247 = *(v3 + 800);
        v248 = *(v3 + 760);
        v249 = *(v325 + 752);
        v250 = *(v325 + 744);
        v251 = *(v325 + 736);
        v252 = *(v325 + 672);

        sub_267C266B0();
        v253 = OUTLINED_FUNCTION_61_1();
        *v254 = 0xD00000000000003BLL;
        v254[1] = 0x8000000267F137D0;
        *v245 = v253;
        OUTLINED_FUNCTION_86_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267BF8DEC(v245, v320 + v318);
        swift_endAccess();
        sub_267EF4018();
        (*(v249 + 8))(v248, v250);
        v3 = v325;
        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v247, v255);
        sub_267B9F98C(v251, &qword_280229920, &unk_267F0ABD0);
        goto LABEL_97;
      }

      v208 = v207;
      v209 = v31;
      v210 = *(v3 + 760);
      v211 = *(v3 + 720);
      v212 = *(v3 + 712);
      v213 = *(v3 + 704);
      v214 = *(v3 + 680);
      sub_267EF4B88();
      LOBYTE(v210) = sub_267EBF874();
      v215 = *(v212 + 8);
      v215(v211, v213);
      v216 = sub_267C68D98(v210 & 1);
      *(v3 + 896) = v216;
      v217 = sub_267C68E2C(v208, v216);
      *(v3 + 904) = v217;
      v218 = *(v316 + 128);

      LOBYTE(v211) = sub_267BE84FC();

      if (v211)
      {
        v219 = *(v3 + 736);
        v220 = sub_267EF8198();
        v221 = v209;
        if (__swift_getEnumTagSinglePayload(v219, 1, v220) == 1)
        {
          v222 = *(v3 + 760);
          v223 = *(v3 + 720);
          v224 = *(v3 + 704);
          sub_267EF4B88();
          v225 = sub_267E57DFC(v223, (v3 + 296));
          (v215)(v223, v224, v225);
          if (*(v3 + 320))
          {
            v226 = *(v3 + 328);
            __swift_project_boxed_opaque_existential_0((v3 + 296), *(v3 + 320));
            v227 = OUTLINED_FUNCTION_61_6();
            v229 = sub_267E583B0(v227, v228);
            *(v3 + 912) = v229;
            __swift_destroy_boxed_opaque_existential_0((v3 + 296));
            if (v229)
            {
              v230 = *(v229 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoReactionType);
              *(v3 + 920) = v230;
              if (v230)
              {

                v231 = sub_267EF60C8();
                *(v3 + 928) = v231;
                if (v231)
                {

                  if (qword_280228818 != -1)
                  {
                    OUTLINED_FUNCTION_0();
                  }

                  v232 = sub_267EF8A08();
                  __swift_project_value_buffer(v232, qword_280240FB0);
                  OUTLINED_FUNCTION_54();

                  v37 = sub_267EF89F8();
                  LOBYTE(v7) = sub_267EF95C8();

                  if (os_log_type_enabled(v37, v7))
                  {
                    v233 = *(v3 + 696);
                    v31 = OUTLINED_FUNCTION_48();
                    v6 = OUTLINED_FUNCTION_52();
                    v338[0] = v6;
                    *v31 = 136315138;
                    sub_267EF63B8();
                    v24 = sub_267EF63C8();
                    if (__swift_getEnumTagSinglePayload(v233, 1, v24) != 1)
                    {
                      goto LABEL_154;
                    }

                    sub_267B9F98C(*(v3 + 696), &qword_280229950, &unk_267EFEBB0);
LABEL_116:
                    v234 = 0xE700000000000000;
                    v235 = 0x6E776F6E6B6E75;
LABEL_117:
                    v236 = sub_267BA33E8(v235, v234, v338);

                    *(v31 + 4) = v236;
                    _os_log_impl(&dword_267B93000, v37, v7, "#FollowupOfferFlow: reaction category not supported: %s", v31, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v6);
                    OUTLINED_FUNCTION_45_2();
                    OUTLINED_FUNCTION_18_2();
                  }

                  v237 = *(v3 + 688);
                  sub_267EF63B8();
                  v238 = sub_267EF63C8();
                  v239 = __swift_getEnumTagSinglePayload(v237, 1, v238);
                  v240 = *(v3 + 688);
                  if (v239 == 1)
                  {
                    sub_267B9F98C(*(v3 + 688), &qword_280229950, &unk_267EFEBB0);
                  }

                  else
                  {
                    v277 = *(v3 + 688);
                    sub_267EABBB0();
                    (*(*(v238 - 8) + 8))(v240, v238);
                  }

                  swift_task_alloc();
                  OUTLINED_FUNCTION_76_3();
                  *(v3 + 936) = v278;
                  *v278 = v279;
                  OUTLINED_FUNCTION_39_4(v278);
                  goto LABEL_143;
                }

                v266 = sub_267EF60D8();
                if (v267)
                {
                  v268 = sub_267C5EEF8(v266, v267);

                  if (v268)
                  {

                    if (qword_280228818 != -1)
                    {
                      OUTLINED_FUNCTION_0();
                    }

                    v269 = sub_267EF8A08();
                    OUTLINED_FUNCTION_30_1(v269, qword_280240FB0);
                    v270 = sub_267EF89F8();
                    v271 = sub_267EF95C8();
                    if (OUTLINED_FUNCTION_7_2(v271))
                    {
                      v272 = OUTLINED_FUNCTION_32();
                      OUTLINED_FUNCTION_59(v272);
                      OUTLINED_FUNCTION_38_1(&dword_267B93000, v273, v274, "#FollowupOfferFlow: emoji tapback requested");
                      OUTLINED_FUNCTION_42_0();
                    }

                    swift_task_alloc();
                    OUTLINED_FUNCTION_76_3();
                    *(v3 + 944) = v275;
                    *v275 = v276;
                    OUTLINED_FUNCTION_39_4(v275);
LABEL_143:
                    OUTLINED_FUNCTION_39_0();

                    return sub_267C696D0();
                  }
                }
              }

              else
              {
              }
            }
          }

          else
          {
            sub_267B9F98C(v3 + 296, &unk_28022BBF0, &unk_267F01C60);
          }
        }

        v281 = *(v3 + 736);
        v282 = *(v3 + 728);
        v283 = *(v3 + 680);
        v329 = sub_267BAF0DC(v221);
        v333 = v208;

        sub_267B9AFEC(v283 + 16, v3 + 256);
        v284 = OUTLINED_FUNCTION_61_6();
        sub_267C6AD4C(v284, v285, v286, v287);

        v337 = v217;

        v288 = sub_267D53340();
        *(v3 + 240) = &type metadata for TapbackSender;
        *(v3 + 248) = &off_2878D3898;
        *(v3 + 216) = v288;
        *(v3 + 224) = v289;
        __swift_mutable_project_boxed_opaque_existential_1(v3 + 216, &type metadata for TapbackSender);
        OUTLINED_FUNCTION_23();
        v291 = v290;
        v293 = *(v292 + 64) + 15;
        v294 = swift_task_alloc();
        v295 = *(v291 + 16);
        OUTLINED_FUNCTION_90_2();
        v295();
        v296 = *v294;
        *(v3 + 200) = &type metadata for TapbackSender;
        *(v3 + 208) = &off_2878D3898;
        *(v3 + 176) = v296;
        v297 = type metadata accessor for SendTapbackFlow(0);
        v298 = OUTLINED_FUNCTION_97(v297);
        v299 = __swift_mutable_project_boxed_opaque_existential_1(v3 + 176, &type metadata for TapbackSender);
        v300 = swift_task_alloc();
        OUTLINED_FUNCTION_90_2();
        v295();
        v301 = *v300;
        *(v3 + 160) = &type metadata for TapbackSender;
        *(v3 + 168) = &off_2878D3898;
        *(v3 + 136) = v301;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v302 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v302, qword_280240FB0);
        v303 = sub_267EF89F8();
        v304 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v304))
        {
          v305 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v305);
          OUTLINED_FUNCTION_48_3(&dword_267B93000, v303, v299, "#SendTapbackFlow initialized");
          OUTLINED_FUNCTION_26();
        }

        v306 = v329 > 1;
        v322 = *(v3 + 760);
        v324 = *(v3 + 800);
        v307 = *(v3 + 752);
        v308 = *(v3 + 744);
        v330 = *(v3 + 736);
        v309 = *(v3 + 728);
        v310 = *(v325 + 680);
        v319 = *(v325 + 672);
        v321 = v308;

        *(v298 + 56) = v333;
        *(v298 + 64) = v306;
        sub_267BBE184(v309, v298 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, &qword_280229920, &unk_267F0ABD0);
        type metadata accessor for SendTapbackFlow.State(0);
        swift_storeEnumTagMultiPayload();
        sub_267B9A5E8((v325 + 136), v298 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender);
        *(v298 + 72) = v216;
        *(v298 + 80) = v337;
        type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
        swift_storeEnumTagMultiPayload();
        sub_267B9A5E8((v325 + 256), v298 + 16);
        __swift_destroy_boxed_opaque_existential_0((v325 + 176));

        __swift_destroy_boxed_opaque_existential_0((v325 + 216));

        *(v325 + 648) = v298;
        sub_267C6AD98(&qword_280229960, type metadata accessor for SendTapbackFlow);

        sub_267EF3FA8();
        v3 = v325;

        (*(v307 + 8))(v322, v321);
        OUTLINED_FUNCTION_0_12();
        sub_267BA0810(v324, v311);
        sub_267B9F98C(v330, &qword_280229920, &unk_267F0ABD0);

LABEL_97:
        v190 = *(v3 + 840);
        v191 = *(v3 + 832);
        v192 = *(v3 + 824);
        v193 = *(v3 + 816);
        v194 = *(v3 + 800);
        v195 = *(v3 + 792);
        v196 = v3;
        v197 = *(v3 + 784);
        v198 = v196[97];
        v199 = v196[95];
        v326 = v196[92];
        v328 = v196[91];
        OUTLINED_FUNCTION_51_2();
        v336 = v196[86];
        OUTLINED_FUNCTION_1_22();
        sub_267BA0810(v190, v200);

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_39_0();

        __asm { BRAA            X1, X16 }
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v256 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v256, qword_280240FB0);
      v257 = sub_267EF89F8();
      v258 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v258))
      {
        v259 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v259);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v260, v261, "#FollowupOfferFlow: 3P app cannot send tapback");
        OUTLINED_FUNCTION_42_0();
      }

      *(v325 + 952) = *(v316 + 128);

      v262 = swift_task_alloc();
      *(v325 + 960) = v262;
      *v262 = v325;
      v262[1] = sub_267C62478;
      v263 = *(v325 + 680);
      v264 = *(v325 + 672);
      OUTLINED_FUNCTION_39_0();

      return sub_267C68F88();
    case 2u:
      v68 = *(v3 + 840);
      v69 = *(v3 + 816);
      OUTLINED_FUNCTION_4_16();
      sub_267C6AC8C(v70, v69);
      *(v3 + 656) = *v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      if (!swift_dynamicCast())
      {

LABEL_73:
        if (qword_280228818 != -1)
        {
LABEL_157:
          OUTLINED_FUNCTION_0();
        }

        v109 = *(v3 + 680);
        v110 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v110, qword_280240FB0);

        v111 = sub_267EF89F8();
        sub_267EF95E8();

        if (OUTLINED_FUNCTION_116_0())
        {
          v112 = *(v3 + 832);
          v113 = v7;
          v114 = *(v3 + 808);
          OUTLINED_FUNCTION_48();
          v338[0] = OUTLINED_FUNCTION_64_2();
          *v1 = 136315138;
          OUTLINED_FUNCTION_4_16();
          sub_267C6AC8C(v6 + v113, v112);
          v115 = sub_267EF9098();
          v117 = sub_267BA33E8(v115, v116, v338);

          *(v1 + 4) = v117;
          v7 = v113;
          OUTLINED_FUNCTION_21();
          _os_log_impl(v118, v119, v120, v121, v122, 0xCu);
          OUTLINED_FUNCTION_26_4();
          OUTLINED_FUNCTION_26();
        }

        v123 = *(v3 + 832);
        v124 = *(v3 + 808);
        v125 = *(v3 + 672);
        sub_267C266B0();
        v126 = OUTLINED_FUNCTION_61_1();
        *v127 = 0xD00000000000002DLL;
        v127[1] = 0x8000000267F137A0;
        *v123 = v126;
        OUTLINED_FUNCTION_61_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267BF8DEC(v123, v6 + v7);
        swift_endAccess();
LABEL_77:
        sub_267EF4018();
        goto LABEL_97;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v71 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
      v72 = sub_267EF89F8();
      v73 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v74);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v75, v76, "#FollowupOfferFlow handling SendTapbackFlowError");
        OUTLINED_FUNCTION_42_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_76_3();
      *(v3 + 1000) = v77;
      *v77 = v78;
      OUTLINED_FUNCTION_39_4(v77);
      OUTLINED_FUNCTION_39_0();

      return sub_267C69E1C();
    case 3u:
      *(v3 + 120) = &type metadata for Features;
      v56 = sub_267BAFCAC();
      *(v3 + 96) = 12;
      *(v3 + 128) = v56;
      v57 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0((v3 + 96));
      if (v57)
      {
        v58 = *(v3 + 680);
        v59 = *(*(v58 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 416);
        if (v59)
        {
          if (*(v59 + 82) == 1)
          {
            v60 = *(v3 + 832);
            v61 = *(v3 + 808);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3();
            sub_267BF8DEC(v60, v6 + v7);
            swift_endAccess();
            OUTLINED_FUNCTION_80_2((v58 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy));
            v62 = *(v0 + 40);
            v335 = v62 + *v62;
            v63 = v62[1];
            swift_task_alloc();
            OUTLINED_FUNCTION_76_3();
            *(v3 + 856) = v64;
            *v64 = v65;
            v64[1] = sub_267C61970;
            OUTLINED_FUNCTION_39_0();

            __asm { BRAA            X3, X16 }
          }
        }
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v100 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v100, qword_280240FB0);
      v101 = sub_267EF89F8();
      v102 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v102))
      {
        v103 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v103);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v104, v105, "#FollowupOfferFlow prompting followup offer");
        OUTLINED_FUNCTION_42_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_76_3();
      *(v3 + 880) = v106;
      *v106 = v107;
      OUTLINED_FUNCTION_39_4(v106);
      OUTLINED_FUNCTION_39_0();

      return sub_267C65A5C();
    case 6u:
      if (qword_280228818 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_161;
    case 9u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v90 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v90, qword_280240FB0);
      v91 = sub_267EF89F8();
      v92 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v92))
      {
        v93 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v93);
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v94, v95, "#FollowupOfferFlow reply completed");
        OUTLINED_FUNCTION_42_0();
      }

      v96 = *(v3 + 832);
      v97 = *(v3 + 808);
      v98 = *(v3 + 672);

      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      __swift_storeEnumTagSinglePayload(v96, 5, 9, v99);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3();
      sub_267BF8DEC(v96, v6 + v7);
      swift_endAccess();
      goto LABEL_77;
    default:
      goto LABEL_73;
  }
}

uint64_t sub_267C61970()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 856);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[108] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v3[109] = v12;
    *v12 = v13;
    v12[1] = sub_267C61ACC;
    v14 = v3[85];
    v15 = v3[84];

    return sub_267BF8E50();
  }
}

uint64_t sub_267C61ACC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 872);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C61BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  __swift_destroy_boxed_opaque_existential_0((v17 + 56));
  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C61CA4()
{
  v32 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[108];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[108];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_52();
    v31 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[76];
    v11 = v0[77];
    v12 = v0[78];
    v13 = sub_267EF9F68();
    v15 = sub_267BA33E8(v13, v14, &v31);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_108_2(&dword_267B93000, v16, v17, "#FollowupOfferFlow failed to prompt for full read: %s, offering reply...");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v18 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v20);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[110] = v26;
  *v26 = v27;
  v26[1] = sub_267C61EDC;
  v28 = v0[85];
  v29 = v0[84];

  return sub_267C65A5C();
}

uint64_t sub_267C61EDC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 880);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C61FC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 936);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C620A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[116];
  v18 = v16[115];
  v19 = v16[114];
  v20 = v16[113];
  v21 = v16[112];
  v22 = v16[111];
  v23 = v16[100];
  v24 = v16[95];
  v25 = v16[94];
  v26 = v16[93];
  v46 = v16[92];

  (*(v25 + 8))(v24, v26);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v23, v27);
  sub_267B9F98C(v46, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v42 = v29;
  v43 = v28;
  OUTLINED_FUNCTION_51_2();
  v44 = v31;
  v45 = v30;
  v47 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v19, v32);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v47, a14, a15, a16);
}

uint64_t sub_267C62224()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 944);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C62308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[115];
  v18 = v16[114];
  v19 = v16[113];
  v20 = v16[112];
  v21 = v16[111];
  v22 = v16[100];
  v23 = v16[95];
  v24 = v16[94];
  v25 = v16[93];
  v26 = v16[92];

  (*(v24 + 8))(v23, v25);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v22, v27);
  sub_267B9F98C(v26, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v42 = v29;
  v43 = v28;
  OUTLINED_FUNCTION_51_2();
  v44 = v31;
  v45 = v30;
  v46 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v20, v32);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, a14, a15, a16);
}

uint64_t sub_267C62478()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 960);
  v3 = *(v1 + 952);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C62578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = v16[113];
  v18 = v16[112];
  v19 = v16[111];
  v20 = v16[100];
  v21 = v16[95];
  v22 = v16[94];
  v23 = v16[93];
  v24 = v16[92];

  (*(v22 + 8))(v21, v23);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v20, v25);
  sub_267B9F98C(v24, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_3_15();
  v40 = v27;
  v41 = v26;
  OUTLINED_FUNCTION_51_2();
  v42 = v29;
  v43 = v28;
  v44 = v16[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v21, v30);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, a14, a15, a16);
}

uint64_t sub_267C626D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 968);
  *v3 = *v1;
  *(v2 + 976) = v6;
  *(v2 + 984) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C627D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_56_2();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v22);
    _os_log_impl(&dword_267B93000, v20, v17, "#FollowupOfferFlow response was confirmed and reply flow is available, pushing reply flow", v16, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v23 = v18[122];
  v24 = v18[106];
  v25 = v18[104];
  v26 = v18[101];
  v49 = v18[95];
  v51 = v18[100];
  v27 = v18[94];
  v28 = v18[93];
  v29 = v18[85];
  v30 = v18[84];

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  sub_267BF8DEC(v25, v29 + v24);
  swift_endAccess();
  v18[79] = v23;
  type metadata accessor for SendMessageFlow(0);
  sub_267C6AD98(&qword_280229478, type metadata accessor for SendMessageFlow);

  sub_267EF3FA8();

  (*(v27 + 8))(v49, v28);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v51, v31);

  OUTLINED_FUNCTION_3_15();
  v46 = v33;
  v47 = v32;
  OUTLINED_FUNCTION_51_2();
  v48 = v35;
  v50 = v34;
  v52 = v18[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v24, v36);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, v50, v52, a14, a15, a16);
}

uint64_t sub_267C62A54()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 992);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C62B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C62C24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1000);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C62D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_3_15();
  v32 = v19;
  v33 = v18;
  OUTLINED_FUNCTION_51_2();
  v34 = v21;
  v35 = v20;
  v36 = *(v17 + 688);
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v16, v22);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v36, a14, a15, a16);
}

uint64_t sub_267C62DFC()
{
  v34 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[123];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[123];
    v7 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[60];
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v33);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_267B93000, v4, v5, "#FollowupOfferFlow failed to create reply flow: %s", v7, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v14 = v0[123];
  v15 = v0[106];
  v16 = v0[104];
  v17 = v0[101];
  v18 = v0[100];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[93];
  v22 = v0[85];
  v23 = v0[84];
  OUTLINED_FUNCTION_93_1();
  OUTLINED_FUNCTION_66_3();
  v24 = v14;
  sub_267BF8DEC(v16, v22 + v15);
  swift_endAccess();
  sub_267EF4018();

  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_44_0();
  v27(v26);
  OUTLINED_FUNCTION_0_12();
  sub_267BA0810(v18, v28);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_51_2();
  v32 = v0[86];
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v18, v29);

  OUTLINED_FUNCTION_17();

  return v30();
}

uint64_t sub_267C6307C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_267EF4BA8();
  v69 = *(v67 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v68 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v66 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v62 - v14;
  v70 = type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  v15 = *(*(v70 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v70);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = (v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v62 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v62 - v27;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v29 = sub_267EF8A08();
  v30 = __swift_project_value_buffer(v29, qword_280240FB0);
  v73 = a1;
  sub_267C6AD4C(a1, v28, &qword_280229958, &unk_267F09110);
  v64 = v30;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v63 = a2;
    v34 = v33;
    v35 = swift_slowAlloc();
    v62[1] = v4;
    v36 = v35;
    v74[0] = v35;
    *v34 = 136315138;
    sub_267C6AD4C(v28, v26, &qword_280229958, &unk_267F09110);
    v37 = sub_267EF9098();
    v62[0] = v19;
    v39 = v38;
    sub_267B9F98C(v28, &qword_280229958, &unk_267F09110);
    v40 = sub_267BA33E8(v37, v39, v74);
    v19 = v62[0];

    *(v34 + 4) = v40;
    _os_log_impl(&dword_267B93000, v31, v32, "#FollowupOfferFlow SendTapbackFlow completed with exit value: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D60A7B0](v36, -1, -1);
    v41 = v34;
    a2 = v63;
    MEMORY[0x26D60A7B0](v41, -1, -1);
  }

  else
  {

    sub_267B9F98C(v28, &qword_280229958, &unk_267F09110);
  }

  v42 = v72;
  v43 = v71;
  sub_267C6AD4C(v73, v71, &qword_280229958, &unk_267F09110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v7 = *v43;
    goto LABEL_15;
  }

  sub_267C6ACF4(v43, v19);
  sub_267C6AC8C(v19, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_267BA0810(v19, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
LABEL_14:
    sub_267BA0810(v42, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v42 = v19;
    goto LABEL_14;
  }

  v45 = v19;
  v46 = v65;
  sub_267BBE184(v42, v65, &qword_280229970, &unk_267F0E300);
  v47 = v66;
  sub_267C6AD4C(v46, v66, &qword_280229970, &unk_267F0E300);
  v48 = v67;
  if (__swift_getEnumTagSinglePayload(v47, 1, v67) == 1)
  {
    sub_267B9F98C(v47, &qword_280229970, &unk_267F0E300);
    sub_267C6AA68();
    v49 = swift_allocError();
    *v50 = 1;
    sub_267B9F98C(v46, &qword_280229970, &unk_267F0E300);
    sub_267BA0810(v19, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    *v7 = v49;
  }

  else
  {
    v53 = *(v69 + 32);
    v69 += 32;
    v53(v68, v47, v48);
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_267B93000, v54, v55, "#FollowupOfferFlow received tapbackUnsupported from SendTapbackFlow", v56, 2u);
      MEMORY[0x26D60A7B0](v56, -1, -1);
    }

    sub_267B9F98C(v46, &qword_280229970, &unk_267F0E300);
    sub_267BA0810(v45, type metadata accessor for SendTapbackFlow.SendTapbackStatus);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298F8, &qword_267EFEB58);
    v58 = *(v57 + 48);
    v59 = (v7 + *(v57 + 64));
    v60 = sub_267EF8198();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v60);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    __swift_storeEnumTagSinglePayload(v7, 0, 9, v61);
    v53(v7 + v58, v68, v48);
    *v59 = 0;
    v59[1] = 0;
  }

LABEL_15:
  swift_storeEnumTagMultiPayload();
  v51 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_beginAccess();
  sub_267BF8DEC(v7, a2 + v51);
  return swift_endAccess();
}

uint64_t sub_267C6380C(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for FollowupOfferFlow.State(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = *(v8 + 16);
  v16(v14, a1, v7);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v6;
    v22 = v21;
    v34[0] = v21;
    *v20 = 136315138;
    v16(v12, v14, v7);
    v23 = sub_267EF9098();
    v25 = v24;
    (*(v8 + 8))(v14, v7);
    v26 = sub_267BA33E8(v23, v25, v34);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_267B93000, v17, v18, "#FollowupOfferFlow reply flow completed with exit value: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    v6 = v31;
    MEMORY[0x26D60A7B0](v27, -1, -1);
    v28 = v20;
    a2 = v32;
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  swift_storeEnumTagMultiPayload();
  v29 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_beginAccess();
  sub_267BF8DEC(v6, a2 + v29);
  return swift_endAccess();
}

uint64_t sub_267C63B84()
{
  v1 = type metadata accessor for FollowupOfferFlow.State(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_4_16();
  sub_267C6AC8C(v0 + v8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_10();
    v9 = OUTLINED_FUNCTION_3();
    return sub_267C6ACF4(v9, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v12 = OUTLINED_FUNCTION_75_1();
    __swift_storeEnumTagSinglePayload(v12, 2, 9, v13);
    OUTLINED_FUNCTION_1_22();
    return sub_267BA0810(v7, v14);
  }
}

uint64_t sub_267C63C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF3868();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_100_0();
  __swift_project_boxed_opaque_existential_0(v15, v16);
  v17 = *(v14 + 320);
  v18 = OUTLINED_FUNCTION_12_0();
  v19(v18);
  v20 = (*(v7 + 88))(v12, v4);
  if (v20 == *MEMORY[0x277D5B970])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v21 = OUTLINED_FUNCTION_75_1();
    v23 = 2;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v21, v23, 9, v22);
LABEL_6:
    type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    type metadata accessor for FollowupOfferResponse();
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_9();
    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  if (v20 == *MEMORY[0x277D5B978])
  {
    (*(*(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy + 8) + 16))(**(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy));
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D5B968])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v21 = OUTLINED_FUNCTION_75_1();
    v23 = 1;
    goto LABEL_3;
  }

  type metadata accessor for FollowupOfferResponse();
  v33 = OUTLINED_FUNCTION_75_1();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  return (*(v7 + 8))(v12, v4);
}

void sub_267C63E8C(uint64_t a1@<X8>)
{
  v289 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v274[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v277 = v10;
  v11 = OUTLINED_FUNCTION_26_2();
  v278 = type metadata accessor for TapbackAction(v11);
  v12 = OUTLINED_FUNCTION_22(v278);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v276 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  v275 = v274 - v17;
  v18 = OUTLINED_FUNCTION_26_2();
  v280 = type metadata accessor for FollowupOfferFlow.State(v18);
  v19 = OUTLINED_FUNCTION_22(v280);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v279 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v286 = v28;
  OUTLINED_FUNCTION_26_2();
  v290 = type metadata accessor for FollowupOfferResponse();
  v29 = OUTLINED_FUNCTION_22(v290);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v282 = v33 - v32;
  OUTLINED_FUNCTION_26_2();
  v34 = sub_267EF4BE8();
  v35 = OUTLINED_FUNCTION_58(v34);
  v284 = v36;
  v285 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  v283 = v40 - v39;
  OUTLINED_FUNCTION_26_2();
  v41 = sub_267EF4C08();
  v42 = OUTLINED_FUNCTION_58(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6();
  v287 = v47;
  OUTLINED_FUNCTION_115();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = v274 - v50;
  MEMORY[0x28223BE20](v49);
  sub_267EF4B88();
  v52 = v44[11];
  v53 = OUTLINED_FUNCTION_86_1();
  v54 = v52(v53);
  v55 = *MEMORY[0x277D5C168];
  v56 = v44[1];
  v57 = OUTLINED_FUNCTION_86_1();
  v59 = v58;
  v288 = v60;
  (v60)(v57);
  if (v54 == v55)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v61 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
    v62 = sub_267EF89F8();
    v63 = sub_267EF95C8();
    v64 = OUTLINED_FUNCTION_27(v63);
    v65 = v290;
    if (v64)
    {
      v66 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v66);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v67, v68, "#FollowupOfferFlow received empty input");
      OUTLINED_FUNCTION_40_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v69 = OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_85_2(v69, 9, v70, v71);
    v72 = OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_115_0(v72, v73, v74, v75);
    OUTLINED_FUNCTION_9();
    v79 = v65;
    goto LABEL_40;
  }

  sub_267EF4B88();
  v80 = v41;
  if ((v52)(v51, v41) == *MEMORY[0x277D5C150])
  {
    v81 = v44[12];
    v82 = OUTLINED_FUNCTION_44_0();
    v83(v82);
    v85 = v283;
    v84 = v284;
    v86 = v51;
    v87 = v285;
    (*(v284 + 32))(v283, v86, v285);
    v88 = v286;
    sub_267D7129C(v85, v286);
    (*(v84 + 8))(v85, v87);
    v89 = v290;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v290);
    v91 = v288;
    if (EnumTagSinglePayload != 1)
    {
      v136 = v88;
      v137 = v282;
      sub_267C6ACF4(v136, v282);
      v138 = v137;
      v139 = v289;
      sub_267C6ACF4(v138, v289);
      v76 = v139;
      v77 = 0;
LABEL_39:
      v78 = 1;
      v79 = v89;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
      return;
    }

    sub_267B9F98C(v88, &qword_280229930, &qword_267EFEB88);
  }

  else
  {
    v92 = OUTLINED_FUNCTION_44_0();
    v91 = v288;
    (v288)(v92);
    v89 = v290;
  }

  v93 = v287;
  sub_267EF4B88();
  v94 = sub_267EBC978(v93, v291);
  v91(v93, v80, v94);
  if (*(&v291[1] + 1))
  {
    sub_267B9A5E8(v291, v294);
    v95 = *&v294[2];
    __swift_project_boxed_opaque_existential_0(v294, *(&v294[1] + 1));
    v96 = *(v95 + 8);
    v97 = OUTLINED_FUNCTION_16_1();
    v98(v97);
    OUTLINED_FUNCTION_87();
    if (v100)
    {
      if (!v99)
      {
        OUTLINED_FUNCTION_0();
      }

      v101 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v101, qword_280240FB0);
      v102 = sub_267EF89F8();
      v103 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v103))
      {
        v104 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v104);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v105, v106, "#FollowupOfferFlow phone call intent -> call");
        OUTLINED_FUNCTION_40_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v107 = OUTLINED_FUNCTION_14_13();
      OUTLINED_FUNCTION_85_2(v107, 7, v108, v109);
      v110 = OUTLINED_FUNCTION_36_6();
      v114 = OUTLINED_FUNCTION_115_0(v110, v111, v112, v113);
      v115 = 0;
    }

    else
    {
      if (!v99)
      {
        OUTLINED_FUNCTION_0();
      }

      v140 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v140, qword_280240FB0);
      v141 = sub_267EF89F8();
      v142 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v142))
      {
        v143 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v143);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v144, v145, "#FollowupOfferFlow phone call intent -> call person name");
        OUTLINED_FUNCTION_40_0();
      }

      v114 = v289;
      v115 = 1;
    }

    __swift_storeEnumTagSinglePayload(v114, v115, 1, v89);
    v146 = v294;
    goto LABEL_76;
  }

  sub_267B9F98C(v291, &qword_280229938, &unk_267EFEB90);
  sub_267EF4B88();
  v116 = sub_267E57DFC(v93, v294);
  v91(v93, v80, v116);
  if (!*(&v294[1] + 1))
  {
    sub_267B9F98C(v294, &unk_28022BBF0, &unk_267F01C60);
    OUTLINED_FUNCTION_87();
    if (!v99)
    {
      OUTLINED_FUNCTION_0();
    }

    v147 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v147, qword_280240FB0);
    v148 = sub_267EF89F8();
    v149 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v149))
    {
      v150 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v150);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v151, v152, "#FollowupOfferFlow unsupported input");
      OUTLINED_FUNCTION_40_0();
    }

    v76 = v289;
    v77 = 1;
    goto LABEL_39;
  }

  sub_267B9A5E8(v294, v295);
  v117 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  v118 = v281;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_4_16();
  v119 = v118 + v117;
  v120 = v279;
  sub_267C6AC8C(v119, v279);
  LODWORD(v117) = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v120, v121);
  if (v117 == 4)
  {
    OUTLINED_FUNCTION_5_16();
    v123 = *(v122 + 112);
    v124 = OUTLINED_FUNCTION_16_1();
    if (v125(v124))
    {
      OUTLINED_FUNCTION_87();
      if (!v99)
      {
        OUTLINED_FUNCTION_0();
      }

      v126 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v126, qword_280240FB0);
      v127 = sub_267EF89F8();
      v128 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v128))
      {
        v129 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v129);
        OUTLINED_FUNCTION_28_11(&dword_267B93000, v130, v131, "#FollowupOfferFlow going from offerFullRead to reread");
        OUTLINED_FUNCTION_40_0();
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_16();
    v154 = *(v153 + 104);
    v155 = OUTLINED_FUNCTION_16_1();
    if (v156(v155))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v132 = OUTLINED_FUNCTION_14_13();
      v135 = 1;
      goto LABEL_70;
    }
  }

  v157 = OUTLINED_FUNCTION_41_4();
  if (sub_267E58714(v157, v158) & 1) != 0 || (v159 = OUTLINED_FUNCTION_41_4(), (sub_267E587AC(v159, v160)))
  {
    OUTLINED_FUNCTION_87();
    if (!v99)
    {
      OUTLINED_FUNCTION_0();
    }

    v161 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v161, qword_280240FB0);
    v162 = sub_267EF89F8();
    v163 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v163))
    {
      v164 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v164);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v165, v166, "#FollowupOfferFlow fresh request, restarting from root");
      OUTLINED_FUNCTION_40_0();
    }

LABEL_50:
    v167 = v289;
    v168 = 1;
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_87();
  if (!v99)
  {
    OUTLINED_FUNCTION_0();
  }

  v169 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v169, qword_280240FB0);
  sub_267B9AFEC(v295, v294);
  v170 = sub_267EF89F8();
  v171 = sub_267EF95C8();
  if (os_log_type_enabled(v170, v171))
  {
    v59 = OUTLINED_FUNCTION_48();
    *&v291[0] = OUTLINED_FUNCTION_52();
    *v59 = 136446210;
    v172 = *&v294[2];
    __swift_project_boxed_opaque_existential_0(v294, *(&v294[1] + 1));
    v173 = *(v172 + 416);
    v174 = OUTLINED_FUNCTION_4_1();
    LOBYTE(v292) = v175(v174);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229948, &qword_267EFEBA8);
    v176 = sub_267EF9098();
    v178 = v177;
    __swift_destroy_boxed_opaque_existential_0(v294);
    v179 = sub_267BA33E8(v176, v178, v291);

    *(v59 + 4) = v179;
    _os_log_impl(&dword_267B93000, v170, v171, "#FollowupOfferFlow have smsIntent, about to enter switch with smsIntent verb: %{public}s", v59, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v294);
  }

  OUTLINED_FUNCTION_5_16();
  v181 = *(v180 + 16);
  v182 = OUTLINED_FUNCTION_16_1();
  if (v183(v182) & 1) != 0 || (OUTLINED_FUNCTION_5_16(), v185 = *(v184 + 24), v186 = OUTLINED_FUNCTION_16_1(), (v187(v186)) || (OUTLINED_FUNCTION_5_16(), v189 = *(v188 + 32), v190 = OUTLINED_FUNCTION_16_1(), (v191(v190)))
  {
    *(&v294[1] + 1) = &type metadata for Features;
    *&v294[2] = sub_267BAFCAC();
    LOBYTE(v294[0]) = 25;
    v192 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v294);
    if (v192)
    {
      __swift_project_boxed_opaque_existential_0(v295, v295[3]);
      v193 = v277;
      OUTLINED_FUNCTION_108();
      sub_267E58838(v194, v195);
      if (__swift_getEnumTagSinglePayload(v193, 1, v278) == 1)
      {
        sub_267B9F98C(v193, &qword_280229928, &qword_267EFEB80);
      }

      else
      {
        sub_267C6ACF4(v193, v275);
        v208 = v276;
        OUTLINED_FUNCTION_90_2();
        sub_267C6ACF4(v209, v210);
        if (!swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_90_2();
          sub_267BBE184(v219, v220, v221, &unk_267F0ABD0);
          v222 = v289;
          OUTLINED_FUNCTION_90_2();
          sub_267BBE184(v223, v224, v225, &unk_267F0ABD0);
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
          OUTLINED_FUNCTION_85_2(v222, 0, v227, v226);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
          v167 = v222;
          goto LABEL_72;
        }

        sub_267BA0810(v208, type metadata accessor for TapbackAction);
      }

      sub_267EF8198();
      v211 = OUTLINED_FUNCTION_14_13();
      __swift_storeEnumTagSinglePayload(v211, 1, 1, v212);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v132 = OUTLINED_FUNCTION_36_6();
      goto LABEL_70;
    }
  }

  OUTLINED_FUNCTION_5_16();
  v197 = *(v196 + 128);
  v198 = OUTLINED_FUNCTION_16_1();
  if (v199(v198))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v132 = OUTLINED_FUNCTION_14_13();
    v135 = 4;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_5_16();
  v201 = *(v200 + 136);
  v202 = OUTLINED_FUNCTION_16_1();
  if (v203(v202))
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_16();
  v205 = *(v204 + 208);
  v206 = OUTLINED_FUNCTION_16_1();
  if (v207(v206) & 1) != 0 || (OUTLINED_FUNCTION_30_6(), v232 = *(v59 + 288), v233 = OUTLINED_FUNCTION_16_1(), (v234(v233) & 1) == 0) && (OUTLINED_FUNCTION_30_6(), v235 = *(v59 + 304), v236 = OUTLINED_FUNCTION_16_1(), (v237(v236)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v132 = OUTLINED_FUNCTION_14_13();
    v135 = 6;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_5_16();
  v239 = *(v238 + 184);
  v240 = OUTLINED_FUNCTION_16_1();
  if ((v241(v240) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_16();
    v254 = *(v253 + 168);
    v255 = OUTLINED_FUNCTION_16_1();
    if (v256(v255))
    {
      type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
      v213 = OUTLINED_FUNCTION_14_13();
      v214 = 1;
      goto LABEL_71;
    }

    v257 = OUTLINED_FUNCTION_41_4();
    if (sub_267E58398(v257, v258) && (v259 = sub_267EC2B64(), , (v259 & 1) != 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v132 = OUTLINED_FUNCTION_14_13();
      v135 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_30_6();
      v260 = *(v59 + 256);
      v261 = OUTLINED_FUNCTION_16_1();
      if ((v262(v261) & 1) == 0)
      {
        OUTLINED_FUNCTION_5_16();
        v264 = *(v263 + 120);
        v265 = OUTLINED_FUNCTION_16_1();
        if ((v266(v265) & 1) == 0)
        {
          sub_267C63C70(v295);
          goto LABEL_75;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v267 = OUTLINED_FUNCTION_14_13();
        OUTLINED_FUNCTION_85_2(v267, 5, v268, v269);
        v270 = OUTLINED_FUNCTION_36_6();
        OUTLINED_FUNCTION_115_0(v270, v271, v272, v273);
        OUTLINED_FUNCTION_9();
        v218 = v290;
LABEL_74:
        __swift_storeEnumTagSinglePayload(v167, v168, v217, v218);
LABEL_75:
        v146 = v295;
LABEL_76:
        __swift_destroy_boxed_opaque_existential_0(v146);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v132 = OUTLINED_FUNCTION_14_13();
      v135 = 8;
    }

LABEL_70:
    OUTLINED_FUNCTION_85_2(v132, v135, v133, v134);
    v213 = OUTLINED_FUNCTION_36_6();
LABEL_71:
    v167 = OUTLINED_FUNCTION_115_0(v213, v214, v215, v216);
LABEL_72:
    v168 = 0;
LABEL_73:
    v217 = 1;
    v218 = v89;
    goto LABEL_74;
  }

  v242 = *(*(v281 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) + 416);
  if (!v242 || (OUTLINED_FUNCTION_83(), v243 = *(v242 + 24), (v244 = *(v243 + 16)) == 0))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v132 = OUTLINED_FUNCTION_14_13();
    v135 = 3;
    goto LABEL_70;
  }

  v245 = v243 + 32;
  v285 = v242;
  v286 = 0x8000000267F13710;

  v246 = 0;
  v247 = &qword_280229250;
  v248 = &qword_267EFFBF0;
  v287 = v244;
  v288 = v243;
  while (v246 < *(v243 + 16))
  {
    sub_267B9AFEC(v245, &v292);
    __swift_instantiateConcreteTypeFromMangledNameV2(v247, v248);
    if (swift_dynamicCast())
    {
      v244 = v248;
      v248 = v247;
      memcpy(v294, v291, sizeof(v294));
      v249 = sub_267E77D14(*&v294[4]);
      if (v250)
      {
        v247 = v249;
        v251 = v250;
        *&v291[0] = v249;
        *(&v291[0] + 1) = v250;
        v292 = 0xD000000000000010;
        v293 = v286;
        v89 = sub_267BB5034();
        v243 = MEMORY[0x277D837D0];
        if (OUTLINED_FUNCTION_111_1())
        {
          *&v291[0] = v247;
          *(&v291[0] + 1) = v251;
          v292 = 4024639;
          v293 = 0xE300000000000000;
          v252 = OUTLINED_FUNCTION_111_1();
          sub_267C6AC38(v294);

          OUTLINED_FUNCTION_97_2();
          if (v252)
          {

            goto LABEL_50;
          }

          goto LABEL_93;
        }
      }

      sub_267C6AC38(v294);
      OUTLINED_FUNCTION_97_2();
    }

    else
    {
      memset(v291, 0, sizeof(v291));
      sub_267B9F98C(v291, &qword_280229940, &qword_267EFEBA0);
    }

LABEL_93:
    v246 = (v246 + 1);
    v245 += 40;
    if (v244 == v246)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_267C64F04()
{
  OUTLINED_FUNCTION_12();
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[28] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF4CC8();
  v1[32] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[33] = v13;
  v15 = *(v14 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267C65024()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_80_2((*(v0 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy));
  OUTLINED_FUNCTION_89_3();
  v9 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 280) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_78_2(v4);

  return v7(v6);
}

uint64_t sub_267C65144()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267C65240()
{
  v1 = v0[31];
  v2 = v0[32];
  sub_267B9AFEC((v0 + 2), (v0 + 7));
  sub_267B9AFEC((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  if (swift_dynamicCast())
  {
    v3 = v0;
    v6 = v0 + 33;
    v5 = v0[33];
    v4 = v6[1];
    v8 = v3[31];
    v7 = v3[32];
    v52 = v3;
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    v12 = *(v5 + 32);
    v13 = OUTLINED_FUNCTION_108();
    v14(v13);
    v15 = sub_267EF4CB8();
    v60 = MEMORY[0x277D84F90];
    v16 = sub_267BAF0DC(v15);
    for (i = 0; v16 != i; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D609870](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
      }

      else
      {
        sub_267EF9BD8();
        v20 = *(v60 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v22 = v60;
    v23 = sub_267BAF0DC(v60);
    if (!v23)
    {
LABEL_39:

      v42 = v52[33];
      v41 = v52[34];
      v43 = v52[30];
      v44 = MEMORY[0x277D5C1D8];
      v52[20] = v52[32];
      v52[21] = v44;
      __swift_allocate_boxed_opaque_existential_0(v52 + 17);
      sub_267EF4C78();
      sub_267EF4C88();
      sub_267EF4C98();
      v45 = *(v42 + 8);
      v46 = OUTLINED_FUNCTION_108();
      v47(v46);
      v0 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52 + 7);
      sub_267B9A5E8((v0 + 17), (v0 + 7));
      goto LABEL_40;
    }

    v24 = v23;
    v59 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      v26 = v60 & 0xC000000000000001;
      v53 = v60 + 32;
      v54 = v60 & 0xC000000000000001;
      v27 = 0x277D47000uLL;
      v55 = v24;
      v56 = v60;
      while (1)
      {
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_47;
        }

        if (v26)
        {
          v29 = MEMORY[0x26D609870]();
        }

        else
        {
          if (v25 >= *(v22 + 16))
          {
            goto LABEL_48;
          }

          v29 = *(v53 + 8 * v25);
        }

        v30 = v29;
        v31 = *(v27 + 2536);
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v57 = v32;
          v58 = v30;
          v33 = sub_267D99704(v57);
          if (v33)
          {
            v34 = v33;
            v61 = MEMORY[0x277D84F90];
            v35 = sub_267BAF0DC(v33);
            for (j = 0; ; ++j)
            {
              if (v35 == j)
              {

                sub_267E7F03C(v61, v57);
                v24 = v55;
                v22 = v56;
                v26 = v54;
                v27 = 0x277D47000;
                goto LABEL_37;
              }

              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x26D609870](j, v34);
              }

              else
              {
                if (j >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v37 = *(v34 + 8 * j + 32);
              }

              v38 = v37;
              if (__OFADD__(j, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
              }

              else
              {
                sub_267EF9BD8();
                v39 = *(v61 + 16);
                sub_267EF9C08();
                OUTLINED_FUNCTION_26_0();
                sub_267EF9C18();
                sub_267EF9BE8();
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_37:
        }

        sub_267EF9BD8();
        v40 = *(v59 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v25 = v28;
        if (v28 == v24)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_49:
    __break(1u);
  }

  else
  {
    v21 = v0[31];
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v0[32]);
    sub_267B9F98C(v21, &qword_28022BB70, &unk_267F0BA10);
LABEL_40:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v48;
    *v48 = v49;
    v48[1] = sub_267C65720;
    v50 = v0[26];
    v51 = v0[27];

    sub_267BF8E50();
  }
}