uint64_t AppMatcher.getInteractionStats(intent:bundleIds:groupBySiriDonation:)(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  v10 = 1;
  v7.super.isa = a1;
  v8 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v7, v6, &v10, a2, a3, 2u);

  return v8;
}

uint64_t AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(INIntent a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v13 = *a3;
  AppMatcher.getEntityQuery(intent:)();
  if (v7)
  {
    return v6;
  }

  if (v53)
  {
    v47 = __PAIR64__(a5, v13);
    v48 = a2;
    v49 = a4;
    v54 = a6;
    v50 = v53;
    v15 = v51[0];
    v16 = v51[1];
    v18 = v51[2];
    v17 = v51[3];
    v19 = AppMatcher.getIsGroupInteraction(intent:)(a1);
    if (v20)
    {
      OUTLINED_FUNCTION_26();
      sub_231412628(v21, v22, v23, v24, v52, v53);
    }

    else
    {
      HIDWORD(v46) = v19;
      v45 = v52;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v33 = sub_231477B68();
      OUTLINED_FUNCTION_38(v33, qword_280C3D970);
      v34 = sub_231477B58();
      v35 = sub_2314782A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 4) = BYTE4(v46) & 1;
        _os_log_impl(&dword_2313E1000, v34, v35, "AppMatcher#getInteractionStats: isGroupInteraction: %{BOOL}d", v36, 8u);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v37 = v45;
      LOBYTE(v52) = v45;
      v38 = v50;
      v55 = v47;
      AppMatcher.getInteractionStats(entityQuery:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:isGroupInteraction:)(v51, v48, &v55, v49, BYTE4(v47) & 1, v54, BYTE4(v46) & 1, v39, v45, v46, v47, v48, v49, v50, v15, v16, v18, v17, v52, v50);
      v6 = v40;
      OUTLINED_FUNCTION_26();
      sub_231412628(v41, v42, v43, v44, v37, v38);
    }

    return v6;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v25 = sub_231477B68();
  OUTLINED_FUNCTION_38(v25, qword_280C3D970);
  v26 = sub_231477B58();
  sub_2314782A8();
  v27 = OUTLINED_FUNCTION_28_1();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_32();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_46(v29);
    OUTLINED_FUNCTION_29_0(&dword_2313E1000, v30, v31, "AppMatcher#getInteractionStats: Can not construct entity query");
    v32 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v32);
  }

  type metadata accessor for HistoryStats();
  return sub_231477DC8();
}

void AppMatcher.getEntityQuery(intent:)()
{
  OUTLINED_FUNCTION_64();
  v1.super.isa = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v91 - v12;
  v108 = OUTLINED_FUNCTION_40_0();
  v14 = AppMatcher.getEntities(intent:)(v1);
  if (!v15)
  {
    v16 = v14;
    if (v14)
    {
      v101 = 0;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v17 = sub_231477B68();
      OUTLINED_FUNCTION_38(v17, qword_280C3D970);

      v18 = sub_231477B58();
      v19 = sub_2314782A8();

      v20 = os_log_type_enabled(v18, v19);
      v100 = v13;
      v102 = v3;
      v96 = v4;
      v97 = v10;
      if (v20)
      {
        OUTLINED_FUNCTION_24();
        v21 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v22 = swift_slowAlloc();
        *&v103 = v22;
        *v21 = 136315138;
        v23 = type metadata accessor for Entity();
        v24 = MEMORY[0x23192E1F0](v16, v23);
        v26 = sub_2313EB684(v24, v25, &v103);

        *(v21 + 4) = v26;
        OUTLINED_FUNCTION_57(&dword_2313E1000, v27, v28, "AppMatcher#getEntityQuery: entities extracted from intent: %s");
        __swift_destroy_boxed_opaque_existential_0(v22);
        v29 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v29);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v30 = AppMatcher.getSiriMatcherEntities(intent:)(v1);
      if (v31)
      {

        v32 = &loc_231479000;
      }

      else
      {
        v32 = &loc_231479000;
        if (v30)
        {
          *&v103 = v30;
          sub_2314135C4(v16);
        }
      }

      v43 = sub_231477B58();
      sub_2314782A8();
      v44 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_24();
        v46 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v47 = swift_slowAlloc();
        *&v103 = v47;
        *v46 = v32[160];
        v48 = type metadata accessor for Entity();

        v50 = MEMORY[0x23192E1F0](v49, v48);
        v52 = v51;

        v53 = sub_2313EB684(v50, v52, &v103);

        *(v46 + 4) = v53;
        OUTLINED_FUNCTION_57(&dword_2313E1000, v54, v55, "AppMatcher#getEntityQuery: entities queried: %s");
        __swift_destroy_boxed_opaque_existential_0(v47);
        v56 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v56);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      AppMatcher.getEntityQuery(entities:)(v57, &v103);

      if (v107)
      {
        v95 = v107;
        v58 = *(&v103 + 1);
        v59 = v103;
        v101 = v104;
        v98 = v106;
        v99 = v105;
        v60 = AppMatcher.includePersonEntity(intent:)(v1);
        v61 = sub_231477B58();
        v62 = sub_2314782A8();
        v63 = OUTLINED_FUNCTION_28_1();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 67109120;
          *(v65 + 4) = v60;
          _os_log_impl(&dword_2313E1000, v61, v62, "AppMatcher#getEntityQuery: includePersonEntity: %{BOOL}d", v65, 8u);
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        if (v60)
        {
          v66 = v100;
          *v100 = 0x476567617373654DLL;
          v66[1] = 0xEC00000070756F72;
          type metadata accessor for QueryValue();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_2313E95CC(v66, v97, &unk_27DD4D680, &qword_2314795C0);
          v96 = v58;
          sub_2313E9688(v59, v58, v101, v99, v98);
          v67 = v95;

          sub_2313E8CDC();
          v94 = *(&v103 + 1);
          v97 = v103;
          v93 = v104;
          v92 = v105;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v67;
          v70 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v88 = *(v67 + 16);
            OUTLINED_FUNCTION_3_0();
            sub_2313F3244();
            v69 = v95;
            v70 = v89;
          }

          v72 = *(v70 + 16);
          v71 = *(v70 + 24);
          v91 = v72 + 1;
          if (v72 >= v71 >> 1)
          {
            OUTLINED_FUNCTION_20(v71);
            sub_2313F3244();
            v69 = v95;
            v70 = v90;
          }

          v73 = v101;
          v75 = v98;
          v74 = v99;
          v58 = v96;
          sub_231412628(v59, v96, v101, v99, v98, v69);
          sub_2313E937C(v100, &unk_27DD4D680, &qword_2314795C0);
          *(v70 + 16) = v91;
          v76 = v70 + 32 * v72;
          v77 = v94;
          *(v76 + 32) = v97;
          *(v76 + 40) = v77;
          *(v76 + 48) = v93;
          *(v76 + 56) = v92;
        }

        else
        {

          v73 = v101;
          v75 = v98;
          v74 = v99;
          v70 = v95;
        }

        v87 = v102;
        *v102 = v59;
        v87[1] = v58;
        v87[2] = v73;
        v87[3] = v74;
        v87[4] = v75;
        v87[5] = v70;
      }

      else
      {
        v78 = sub_231477B58();
        sub_2314782A8();
        v79 = OUTLINED_FUNCTION_44();
        if (os_log_type_enabled(v79, v80))
        {
          OUTLINED_FUNCTION_32();
          v81 = swift_slowAlloc();
          *v81 = 0;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v82, v83, v84, v85, v81, 2u);
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        v86 = v102;
        v102[1] = 0u;
        v86[2] = 0u;
        *v86 = 0u;
      }
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v33 = sub_231477B68();
      OUTLINED_FUNCTION_38(v33, qword_280C3D970);
      v34 = sub_231477B58();
      sub_2314782A8();
      v35 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_32();
        v37 = swift_slowAlloc();
        OUTLINED_FUNCTION_46(v37);
        OUTLINED_FUNCTION_56();
        _os_log_impl(v38, v39, v40, v41, 0, 2u);
        v42 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x23192F1F0](v42);
      }

      v3[1] = 0u;
      v3[2] = 0u;
      *v3 = 0u;
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getIsGroupInteraction(intent:)(INIntent intent)
{
  v1 = AppMatcher.getEntities(intent:)(intent);
  if (!v3)
  {
    v4 = v1;
    if (v1)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v5 = sub_231477B68();
      OUTLINED_FUNCTION_38(v5, qword_280C3D970);

      v6 = sub_231477B58();
      v7 = sub_2314782A8();

      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_24();
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v9 = swift_slowAlloc();
        v27 = v9;
        *v8 = 136315138;
        v10 = type metadata accessor for Entity();
        v11 = MEMORY[0x23192E1F0](v4, v10);
        v13 = sub_2313EB684(v11, v12, &v27);

        *(v8 + 4) = v13;
        OUTLINED_FUNCTION_58(&dword_2313E1000, v14, v15, "AppMatcher#getIsGroupInteraction: entities extracted from intent: %s");
        __swift_destroy_boxed_opaque_existential_0(v9);
        v16 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v16);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v17 = *(v4 + 16);

      return v17 > 1;
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v18 = sub_231477B68();
      OUTLINED_FUNCTION_38(v18, qword_280C3D970);
      v19 = sub_231477B58();
      sub_2314782A8();
      v20 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_32();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_46(v22);
        OUTLINED_FUNCTION_29_0(&dword_2313E1000, v23, v24, "AppMatcher#getIsGroupInteraction: Can not extract entities from intent");
        v25 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x23192F1F0](v25);
      }

      return 0;
    }
  }

  return v2;
}

void AppMatcher.getInteractionStats(entityQuery:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:isGroupInteraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v198 = v20;
  LODWORD(v193) = v23;
  v201 = v24;
  HIDWORD(v197) = v25;
  v202 = v26;
  v28 = v27;
  v206 = v29;
  v31 = v30;
  v192 = sub_231476CA8();
  v32 = OUTLINED_FUNCTION_4(v192);
  v191 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47_0(v37 - v36);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  v38 = OUTLINED_FUNCTION_3(v189);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_0(&v188 - v41);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v42 = OUTLINED_FUNCTION_3(v195);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47_0(&v188 - v50);
  v51 = *v31;
  v52 = *(v31 + 8);
  v54 = *(v31 + 16);
  v53 = *(v31 + 24);
  v55 = *(v31 + 32);
  v56 = *(v31 + 40);
  v200 = *v28;
  v216 = OUTLINED_FUNCTION_40_0();
  LOBYTE(v208) = 0;
  v57 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  sub_2313E9688(v51, v52, v54, v53, v55);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_23141D258();
    v57 = v173;
  }

  v59 = *(v57 + 16);
  v58 = *(v57 + 24);
  if (v59 >= v58 >> 1)
  {
    OUTLINED_FUNCTION_10(v58);
    sub_23141D258();
    v218 = v174;
  }

  else
  {
    v218 = v57;
  }

  v60 = MEMORY[0x277D84F90];
  swift_bridgeObjectRelease_n();
  v218[2] = v59 + 1;
  v61 = &v218[6 * v59];
  v61[4] = v51;
  v61[5] = v52;
  v61[6] = v54;
  v61[7] = v53;
  *(v61 + 64) = v55;
  v61[9] = v56;
  LOBYTE(v212) = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
  Value = type metadata accessor for QueryValue();
  v63 = *(*(Value - 8) + 72);
  v64 = (*(*(Value - 8) + 80) + 32) & ~*(*(Value - 8) + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_231479580;
  *(v65 + v64) = v193 & 1;
  v193 = Value;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v60 = v175;
  }

  v67 = *(v60 + 16);
  v66 = *(v60 + 24);
  if (v67 >= v66 >> 1)
  {
    OUTLINED_FUNCTION_10(v66);
    sub_2313F3244();
    v60 = v176;
  }

  *(v60 + 16) = v67 + 1;
  v68 = v60 + 32 * v67;
  *(v68 + 32) = xmmword_231479590;
  *(v68 + 48) = 0;
  *(v68 + 56) = v65;
  OUTLINED_FUNCTION_52(&a12);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22();
  sub_2313E95CC(v69, v70, v71, v72);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v73 = v208;
  v188 = v209;
  v74 = v210;
  v75 = v211;
  v76 = v60;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v76 = v177;
  }

  v78 = *(v76 + 16);
  v77 = *(v76 + 24);
  if (v78 >= v77 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v77);
    sub_2313F3244();
    v76 = v178;
  }

  sub_2313E937C(v203, &unk_27DD4D680, &qword_2314795C0);
  *(v76 + 16) = v78 + 1;
  v79 = v76 + 32 * v78;
  v80 = v188;
  *(v79 + 32) = v73;
  *(v79 + 40) = v80;
  *(v79 + 48) = v74;
  *(v79 + 56) = v75;
  v81 = v207;
  OUTLINED_FUNCTION_52(&v214);
  sub_231476C88();
  sub_231476BE8();
  (*(v191 + 8))(v73, v192);
  swift_storeEnumTagMultiPayload();
  sub_231403238();
  v215 = v81;
  OUTLINED_FUNCTION_22();
  sub_2313E95CC(v82, v83, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v84 = v208;
  v85 = v209;
  v86 = v210;
  v87 = v211;
  v88 = v76;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v179 = *(v76 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v88 = v180;
  }

  v90 = *(v88 + 16);
  v89 = *(v88 + 24);
  v91 = v201;
  if (v90 >= v89 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v89);
    sub_2313F3244();
    v88 = v181;
  }

  v92 = v218;

  sub_2313E937C(v204, &unk_27DD4D680, &qword_2314795C0);
  sub_2313E937C(v205, &qword_27DD4D568, &qword_2314795C8);
  *(v88 + 16) = v90 + 1;
  v93 = v88 + 32 * v90;
  *(v93 + 32) = v84;
  *(v93 + 40) = v85;
  *(v93 + 48) = v86;
  *(v93 + 56) = v87;
  if (v202)
  {

    OUTLINED_FUNCTION_52(&v217);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v94, v95, v96, v97);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v98 = v208;
    v92 = v209;
    v99 = v210;
    v100 = v211;
    v101 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v101 = v182;
    }

    v103 = *(v101 + 16);
    v102 = *(v101 + 24);
    if (v103 >= v102 >> 1)
    {
      OUTLINED_FUNCTION_10(v102);
      sub_2313F3244();
      v101 = v183;
    }

    sub_2313E937C(v199, &unk_27DD4D680, &qword_2314795C0);
    *(v101 + 16) = v103 + 1;
    v104 = v101 + 32 * v103;
    *(v104 + 32) = v98;
    *(v104 + 40) = v92;
    *(v104 + 48) = v99;
    *(v104 + 56) = v100;
    OUTLINED_FUNCTION_31_0();
    v88 = v101;
  }

  v105 = v206;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v106 = sub_231477B68();
  __swift_project_value_buffer(v106, qword_280C3D970);

  v107 = sub_231477B58();
  v108 = sub_2314782A8();

  v109 = &loc_231479000;
  if (os_log_type_enabled(v107, v108))
  {
    OUTLINED_FUNCTION_24();
    v110 = swift_slowAlloc();
    OUTLINED_FUNCTION_23();
    v92 = swift_slowAlloc();
    v208 = v92;
    *v110 = 136315138;
    v111 = MEMORY[0x23192E1F0](v105, MEMORY[0x277D837D0]);
    v113 = sub_2313EB684(v111, v112, &v208);

    *(v110 + 4) = v113;
    v109 = &loc_231479000;
    OUTLINED_FUNCTION_56();
    _os_log_impl(v114, v115, v116, v117, v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    v118 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v118);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v119 = v200;
  if (v200 != 3)
  {
    v120 = sub_231477B58();
    v121 = sub_2314782A8();
    if (os_log_type_enabled(v120, v121))
    {
      OUTLINED_FUNCTION_24();
      v122 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v92 = swift_slowAlloc();
      v208 = v92;
      *v122 = 136315138;
      v207 = v119;
      v123 = sub_231477EB8();
      v109 = sub_2313EB684(v123, v124, &v208);
      v119 = v200;

      *(v122 + 4) = v109;
      OUTLINED_FUNCTION_61_0(&dword_2313E1000, v125, v126, "AppMatcher#getInteractionStats query param interactionDirection passed in: %s");
      __swift_destroy_boxed_opaque_existential_0(v92);
      v127 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v127);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    *v194 = v119;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v128, v129, v130, v131);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v132 = v88;
    if ((OUTLINED_FUNCTION_63() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v132 = v184;
    }

    v134 = *(v132 + 16);
    v133 = *(v132 + 24);
    if (v134 >= v133 >> 1)
    {
      OUTLINED_FUNCTION_10(v133);
      sub_2313F3244();
      v132 = v185;
    }

    sub_2313E937C(v194, &unk_27DD4D680, &qword_2314795C0);
    *(v132 + 16) = v134 + 1;
    v135 = v132 + 32 * v134;
    *(v135 + 32) = v121;
    *(v135 + 40) = v92;
    *(v135 + 48) = v119;
    *(v135 + 56) = v109;
    OUTLINED_FUNCTION_31_0();
    v88 = v132;
    v91 = v201;
    v109 = &loc_231479000;
  }

  if (v91 != 2)
  {
    v136 = sub_231477B58();
    v137 = sub_2314782A8();
    if (os_log_type_enabled(v136, v137))
    {
      OUTLINED_FUNCTION_24();
      v138 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v92 = swift_slowAlloc();
      v208 = v92;
      *v138 = 136315138;
      if (v91)
      {
        v139 = 1702195828;
      }

      else
      {
        v139 = 0x65736C6166;
      }

      if (v91)
      {
        v119 = 0xE400000000000000;
      }

      else
      {
        v119 = 0xE500000000000000;
      }

      v109 = sub_2313EB684(v139, v119, &v208);

      *(v138 + 4) = v109;
      OUTLINED_FUNCTION_61_0(&dword_2313E1000, v140, v141, "AppMatcher#getInteractionStats query param isDonatedBySiri passed in: %s");
      __swift_destroy_boxed_opaque_existential_0(v92);
      v142 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v142);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    *v196 = v91 & 1;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v143, v144, v145, v146);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v147 = v88;
    if ((OUTLINED_FUNCTION_63() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v147 = v186;
    }

    v149 = *(v147 + 16);
    v148 = *(v147 + 24);
    if (v149 >= v148 >> 1)
    {
      OUTLINED_FUNCTION_10(v148);
      sub_2313F3244();
      v147 = v187;
    }

    sub_2313E937C(v196, &unk_27DD4D680, &qword_2314795C0);
    *(v147 + 16) = v149 + 1;
    v150 = v147 + 32 * v149;
    *(v150 + 32) = v137;
    *(v150 + 40) = v92;
    *(v150 + 48) = v119;
    *(v150 + 56) = v109;
    OUTLINED_FUNCTION_31_0();
    v88 = v147;
  }

  v212 = v218;
  v213 = v88;
  OUTLINED_FUNCTION_6_1(v215);
  v151 = OUTLINED_FUNCTION_51();
  v152 = v198;
  InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(v151, v153, v154, v155, v156, v157, v158, v159, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
  if (v152)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();

    v160 = sub_231477B58();
    sub_2314782A8();
    v161 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v161, v162))
    {
      OUTLINED_FUNCTION_24();
      v163 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v164 = swift_slowAlloc();
      v208 = v164;
      *v163 = 136315138;
      type metadata accessor for HistoryStats();

      v165 = sub_231477DB8();
      v167 = v166;

      v168 = sub_2313EB684(v165, v167, &v208);

      *(v163 + 4) = v168;
      OUTLINED_FUNCTION_59_0(&dword_2313E1000, v169, v170, "AppMatcher#getInteractionStats stats: %s");
      __swift_destroy_boxed_opaque_existential_0(v164);
      v171 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v171);
      v172 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v172);
    }
  }

  OUTLINED_FUNCTION_62();
}

uint64_t AppMatcher.getInteractionStatsNonEntity(intent:bundleIds:groupBySiriDonation:)(void *a1)
{
  static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  AppMatcher.getInteractionStatsNonEntity(interactionTypes:bundleIds:groupBySiriDonation:)();
  v2 = v1;

  return v2;
}

void AppMatcher.getInteractionStatsNonEntity(interactionTypes:bundleIds:groupBySiriDonation:)()
{
  AppMatcher.getInteractionStatsNonEntity(interactionTypes:bundleIds:groupBySiriDonation:)();
}

{
  OUTLINED_FUNCTION_64();
  v102 = v0;
  HIDWORD(v101) = v1;
  v104 = v2;
  v96 = v3;
  v100 = sub_231476CA8();
  v4 = OUTLINED_FUNCTION_4(v100);
  v99 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47_0(v9 - v8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  v10 = OUTLINED_FUNCTION_3(v97);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_0(&v94 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v94 - v24);
  v116 = OUTLINED_FUNCTION_40_0();
  *v25 = 1;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v113) = 0;
  sub_2313E95CC(v25, v23, &unk_27DD4D680, &qword_2314795C0);
  v26 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_30();
  v118 = v23;
  sub_2313E8CDC();
  v27 = v110;
  v95 = v109;
  v28 = v111;
  v94 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v26 = v84;
  }

  v30 = *(v26 + 16);
  v29 = *(v26 + 24);
  if (v30 >= v29 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v29);
    sub_2313F3244();
    v26 = v85;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v25, &unk_27DD4D680, &qword_2314795C0);
  *(v26 + 16) = v30 + 1;
  v31 = v26 + 32 * v30;
  *(v31 + 32) = v95;
  *(v31 + 40) = v27;
  *(v31 + 48) = v28;
  *(v31 + 56) = v94;
  v32 = v105;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_45();
  sub_2313E95CC(v32, v118, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v33 = v109;
  v34 = v110;
  v35 = v111;
  v96 = v112;
  v36 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v36 = v86;
  }

  v38 = *(v36 + 16);
  v37 = *(v36 + 24);
  if (v38 >= v37 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v37);
    sub_2313F3244();
    v36 = v87;
  }

  sub_2313E937C(v105, &unk_27DD4D680, &qword_2314795C0);
  *(v36 + 16) = v38 + 1;
  v39 = v36 + 32 * v38;
  *(v39 + 32) = v33;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  *(v39 + 56) = v96;
  v40 = v108;
  OUTLINED_FUNCTION_52(&v117);
  sub_231476C88();
  sub_231476BE8();
  (*(v99 + 8))(v33, v100);
  swift_storeEnumTagMultiPayload();
  v41 = v106;
  sub_231403238();
  v115 = v40;
  sub_2313E95CC(v41, v118, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v42 = v109;
  v43 = v110;
  v44 = v111;
  v45 = v112;
  v46 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v88 = *(v36 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v46 = v89;
  }

  v48 = *(v46 + 16);
  v47 = *(v46 + 24);
  if (v48 >= v47 >> 1)
  {
    OUTLINED_FUNCTION_20(v47);
    sub_2313F3244();
    v46 = v90;
  }

  v49 = MEMORY[0x277D84F90];

  sub_2313E937C(v106, &unk_27DD4D680, &qword_2314795C0);
  sub_2313E937C(v107, &qword_27DD4D568, &qword_2314795C8);
  *(v46 + 16) = v48 + 1;
  v50 = v46 + 32 * v48;
  *(v50 + 32) = v42;
  *(v50 + 40) = v43;
  *(v50 + 48) = v44;
  *(v50 + 56) = v45;
  if (v104)
  {
    v51 = v115;

    v52 = v103;
    OUTLINED_FUNCTION_65();
    v108 = v51;
    sub_2313E95CC(v52, v118, &unk_27DD4D680, &qword_2314795C0);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v53 = v109;
    v54 = v110;
    v55 = v111;
    v56 = v112;
    v57 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = *(v46 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v57 = v92;
    }

    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_20(v58);
      sub_2313F3244();
      v57 = v93;
    }

    sub_2313E937C(v103, &unk_27DD4D680, &qword_2314795C0);
    *(v57 + 16) = v59 + 1;
    v60 = v57 + 32 * v59;
    *(v60 + 32) = v53;
    *(v60 + 40) = v54;
    *(v60 + 48) = v55;
    *(v60 + 56) = v56;
    OUTLINED_FUNCTION_31_0();
    v46 = v57;
  }

  v113 = v49;
  v114 = v46;
  OUTLINED_FUNCTION_6_1(v115);
  v61 = OUTLINED_FUNCTION_51();
  v62 = v102;
  InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(v61, v63, v64, v65, v66, v67, v68, v69, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  if (v62)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v70 = sub_231477B68();
    OUTLINED_FUNCTION_38(v70, qword_280C3D970);
    v71 = sub_231477B58();
    sub_2314782A8();
    v72 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v72, v73))
    {
      OUTLINED_FUNCTION_24();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v75 = swift_slowAlloc();
      v109 = v75;
      *v74 = 136315138;
      type metadata accessor for HistoryStats();

      v76 = sub_231477DB8();
      v78 = v77;

      v79 = sub_2313EB684(v76, v78, &v109);

      *(v74 + 4) = v79;
      OUTLINED_FUNCTION_59_0(&dword_2313E1000, v80, v81, "AppMatcher#getInteractionStatsNonEntity stats: %s");
      __swift_destroy_boxed_opaque_existential_0(v75);
      v82 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v82);
      v83 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v83);
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getEntities(intent:)(INIntent intent)
{
  [(objc_class *)intent.super.isa copy];
  sub_231478468();
  swift_unknownObjectRelease();
  sub_2313EB848(v45, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v39, v42);
    sub_2313EB848(v45, v39);
    sub_2313E4AFC(0, &qword_27DD4D580, 0x277CD4078);
    if (swift_dynamicCast())
    {
      v2 = v41;
      sub_23140EC00(v41);
    }

    v3 = v43;
    v4 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v5 = *(v4 + 24);
    v6 = OUTLINED_FUNCTION_53();
    v8 = v7(v6);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_0(v45);
      __swift_destroy_boxed_opaque_existential_0(v42);
    }

    else
    {
      v18 = v8;
      v19 = v8 + 64;
      v20 = 1 << *(v8 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v8 + 64);
      v23 = (v20 + 63) >> 6;

      v25 = 0;
      v3 = MEMORY[0x277D84F90];
      v46 = v24;
      do
      {
        while (1)
        {
          if (!v22)
          {
            while (1)
            {
              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v26 >= v23)
              {
                goto LABEL_29;
              }

              v22 = *(v19 + 8 * v26);
              ++v25;
              if (v22)
              {
                v25 = v26;
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_18:
          v27 = *(*(v18 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v22)))));
          v28 = *(v27 + 16);
          v29 = *(v3 + 16);
          if (__OFADD__(v29, v28))
          {
            goto LABEL_32;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v3 + 24) >> 1)
          {
            sub_23141CB80();
            v3 = v30;
          }

          v22 &= v22 - 1;
          if (!*(v27 + 16))
          {
            break;
          }

          v31 = (*(v3 + 24) >> 1) - *(v3 + 16);
          v32 = type metadata accessor for Entity();
          v33 = *(v32 - 1);
          if (v31 < v28)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v35 = *(v33 + 72);
          swift_arrayInitWithCopy();

          v18 = v46;
          if (v28)
          {
            v36 = *(v3 + 16);
            v37 = __OFADD__(v36, v28);
            v38 = v36 + v28;
            if (v37)
            {
              goto LABEL_35;
            }

            *(v3 + 16) = v38;
          }
        }

        v18 = v46;
      }

      while (!v28);
      __break(1u);
LABEL_29:

      __swift_destroy_boxed_opaque_existential_0(v45);

      __swift_destroy_boxed_opaque_existential_0(v42);
    }
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_2313E937C(v39, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v10 = sub_231477B68();
    OUTLINED_FUNCTION_38(v10, qword_280C3D970);
    v11 = sub_231477B58();
    sub_2314782A8();
    v12 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_32();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_46(v14);
      OUTLINED_FUNCTION_29_0(&dword_2313E1000, v15, v16, "AppMatcher#getEntities: Intent is not DonationExtractable.");
      v17 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v17);
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
    v3 = 0;
  }

  v32 = v3;
LABEL_36:
  result.value._rawValue = v32;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getSiriMatcherEntities(intent:)(INIntent intent)
{
  [(objc_class *)intent.super.isa copy];
  sub_231478468();
  swift_unknownObjectRelease();
  sub_2313EB848(v34, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v31, v33);
    sub_2313EB848(v34, v31);
    sub_2313E4AFC(0, &qword_27DD4D580, 0x277CD4078);
    if (swift_dynamicCast())
    {
      v1 = v30[0];
      sub_23140EC00(v30[0]);
    }

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v2 = sub_231477B68();
    OUTLINED_FUNCTION_38(v2, qword_280C3D970);
    sub_2314137BC(v33, v31);
    v3 = sub_231477B58();
    sub_2314782A8();
    v4 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_24();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v7 = swift_slowAlloc();
      v35 = v7;
      *v6 = 136315138;
      sub_2314137BC(v31, v30);
      v8 = sub_231477EB8();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v31);
      v11 = sub_2313EB684(v8, v10, &v35);

      *(v6 + 4) = v11;
      OUTLINED_FUNCTION_58(&dword_2313E1000, v12, v13, "AppMatcher#getSiriMatcherEntities: The donationExtractableIntent: %s");
      __swift_destroy_boxed_opaque_existential_0(v7);
      v14 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v14);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v25 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v26 = *(v25 + 32);
    v27 = OUTLINED_FUNCTION_53();
    v24 = v28(v27);
    __swift_destroy_boxed_opaque_existential_0(v34);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_2313E937C(v31, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_231477B68();
    OUTLINED_FUNCTION_38(v15, qword_280C3D970);
    v16 = sub_231477B58();
    sub_2314782A8();
    v17 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_32();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_46(v19);
      OUTLINED_FUNCTION_29_0(&dword_2313E1000, v20, v21, "AppMatcher#getSiriMatcherEntities: Intent is not DonationExtractable.");
      v22 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v22);
    }

    __swift_destroy_boxed_opaque_existential_0(v34);
    v24 = 0;
  }

  v29 = v24;
  result.value._rawValue = v29;
  result.is_nil = v23;
  return result;
}

double AppMatcher.getEntityQuery(entities:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for Entity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v48 = *(v5 + 72);
    do
    {
      sub_231413E28(v10, v7, type metadata accessor for Entity);
      v49 = *(v7 + 4);
      v50 = 0;
      v51 = 5;

      sub_2314479DC(v11, &v52);
      sub_231403090(v49, v50, v51);
      sub_231413E84(v7, type metadata accessor for Entity);
      v12 = v56;
      v14 = v52;
      v13 = v53;
      v16 = v54;
      v15 = v55;
      if (v56 == 255)
      {
        sub_231412668(v52, v53, v54, v55, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = *(v9 + 16);
          OUTLINED_FUNCTION_3_0();
          sub_23141D16C();
          v9 = v22;
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v9;
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_20(v17);
          sub_23141D16C();
          v19 = v23;
        }

        *(v19 + 16) = v18 + 1;
        v9 = v19;
        v20 = v19 + 40 * v18;
        *(v20 + 32) = v14;
        *(v20 + 40) = v13;
        *(v20 + 48) = v16;
        *(v20 + 56) = v15;
        *(v20 + 64) = v12;
      }

      v10 += v48;
      --v8;
    }

    while (v8);
  }

  if (*(v9 + 16))
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v24 = sub_231477B68();
    __swift_project_value_buffer(v24, qword_280C3D970);

    v25 = sub_231477B58();
    v26 = sub_2314782A8();

    v27 = os_log_type_enabled(v25, v26);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      OUTLINED_FUNCTION_24();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      v52 = v9;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v34 = sub_231423790(v30, v31, v32, v33);
      v36 = sub_2313EB684(v34, v35, &v49);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2313E1000, v25, v26, "AppMatcher#getEntityQuery: EntityQuery filter: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v37 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v37);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    sub_231412668(0, 0, 0, 0, 255);
    v38 = v47;
    *v47 = v9;
    result = 0.0;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 5) = v28;
  }

  else
  {

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v40 = sub_231477B68();
    __swift_project_value_buffer(v40, qword_280C3D970);
    v41 = sub_231477B58();
    v42 = sub_2314782A8();
    v43 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_32();
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2313E1000, v41, v42, "AppMatcher#getEntityQuery: No entity filter generated", v45, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    result = 0.0;
    v46 = v47;
    v47[1] = 0u;
    v46[2] = 0u;
    *v46 = 0u;
  }

  return result;
}

Swift::Bool __swiftcall AppMatcher.includePersonEntity(intent:)(INIntent intent)
{
  isa = intent.super.isa;
  sub_2313E4AFC(0, &qword_280C3BBD0, 0x277CD3D30);
  v2 = intent.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D570, &qword_2314795D8);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v16, v19);
    v3 = v20;
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2313E937C(v16, &qword_27DD4D578, &qword_2314795E0);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v6 = sub_231477B68();
    __swift_project_value_buffer(v6, qword_280C3D970);
    v7 = sub_231477B58();
    sub_2314782A8();
    v8 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_32();
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_56();
      _os_log_impl(v11, v12, v13, v14, v10, 2u);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_23140EC00(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v2 = sub_231433338(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  result = sub_2313F3038(v3);
  if (!result)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_18:
    sub_231433440(v14);
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23192E5D0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      sub_231430174(v7);
      if (v9)
      {
      }

      else
      {
        [v8 hash];
        v10 = sub_231478798();
        sub_231413B18(v10, v11, v8);
      }

      v12 = v8;
      MEMORY[0x23192E1C0]();
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_20(v13);
        sub_231478158();
      }

      sub_231478188();
    }

    v14 = v15;

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_23140ED90(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_231476CA8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_2313E95CC(a1, &v27 - v16, &qword_27DD4D900, &qword_2314795B8);
  v18 = *(v17 + 1);

  v19 = *(v11 + 56);
  v20 = v4[2];
  v20(v9, &v17[v19], v3);
  sub_231413E84(&v17[v19], type metadata accessor for HistoryStats);
  sub_2313E95CC(v30, v15, &qword_27DD4D900, &qword_2314795B8);
  v21 = *(v15 + 1);

  v22 = *(v11 + 56);
  v23 = v29;
  v20(v29, &v15[v22], v3);
  sub_231413E84(&v15[v22], type metadata accessor for HistoryStats);
  v24 = v28;
  LOBYTE(v22) = sub_231476C08();
  v25 = v4[1];
  v25(v23, v3);
  v25(v24, v3);
  return v22 & 1;
}

uint64_t sub_23140EFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a1;
  v8 = sub_231476CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v38 - v19);
  *v20 = a2;
  v20[1] = a3;
  sub_231413E28(v40, &v38 + *(v18 + 48) - v19, type metadata accessor for HistoryStats);
  sub_2313E95CC(v20, v17, &qword_27DD4D900, &qword_2314795B8);
  v21 = *v17;
  v39 = v17[1];
  v40 = v21;
  v22 = *(v13 + 48);

  sub_231413E84(v17 + v22, type metadata accessor for HistoryStats);
  sub_2313E95CC(v20, v17, &qword_27DD4D900, &qword_2314795B8);
  v23 = v17[1];

  v24 = *(v13 + 48);
  (*(v9 + 16))(v12, v17 + v24, v8);
  v25 = v17 + v24;
  v26 = v41;
  sub_231413E84(v25, type metadata accessor for HistoryStats);
  sub_231476C38();
  v28 = v27;
  result = (*(v9 + 8))(v12, v8);
  if (__OFADD__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = fabs(v28);
    v31 = 1.0 / (fmin((v26 + 1), 10.0) * sqrt(v30 / 60.0));
    sub_2313E95CC(v20, v17, &qword_27DD4D900, &qword_2314795B8);
    v32 = v17[1];

    v33 = *(v13 + 48);
    v34 = HistoryStats.frequency.getter();
    sub_231413E84(v17 + v33, type metadata accessor for HistoryStats);
    v35 = log10(v34);
    result = sub_2313E937C(v20, &qword_27DD4D900, &qword_2314795B8);
    v36 = 0.1;
    if (v35 / 0.477121255 > 0.1)
    {
      v36 = v35 / 0.477121255;
    }

    v37 = v39;
    *a5 = v40;
    *(a5 + 8) = v37;
    *(a5 + 16) = v26;
    *(a5 + 24) = v30;
    *(a5 + 32) = v31;
    *(a5 + 40) = v35 / 0.477121255;
    *(a5 + 48) = v31 * v36;
  }

  return result;
}

void __swiftcall AppMatcherSignals.init(bundleId:recencyOrder:secondsAgo:recencyScore:frequencyScore:overallScore:)(SiriRemembers::AppMatcherSignals *__return_ptr retstr, Swift::String bundleId, Swift::Int recencyOrder, Swift::Double secondsAgo, Swift::Double recencyScore, Swift::Double frequencyScore, Swift::Double overallScore)
{
  retstr->bundleId = bundleId;
  retstr->recencyOrder = recencyOrder;
  retstr->secondsAgo = secondsAgo;
  retstr->recencyScore = recencyScore;
  retstr->frequencyScore = frequencyScore;
  retstr->overallScore = overallScore;
}

uint64_t AppMatcherResult.resolution.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_231413820(v2, v3, v4);
}

uint64_t static AppMatchResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_18();
        v10 = sub_2314787C8();
        v33 = OUTLINED_FUNCTION_36_0();
        v35 = OUTLINED_FUNCTION_14_0(v33, v34, 1u);
        v37 = OUTLINED_FUNCTION_14_0(v35, v36, 1u);
        sub_231413840(v37, v38, 1u);
        v17 = OUTLINED_FUNCTION_36_0();
        v19 = 1;
        goto LABEL_22;
      }

      v48 = 1;
      v49 = OUTLINED_FUNCTION_18();
      v51 = OUTLINED_FUNCTION_14_0(v49, v50, 1u);
      v53 = OUTLINED_FUNCTION_14_0(v51, v52, 1u);
      sub_231413840(v53, v54, 1u);
      v55 = OUTLINED_FUNCTION_18();
      sub_231413840(v55, v56, 1u);
      return v48;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_23;
      }

      v10 = sub_23140FC70(*a1, *a2);
      v20 = OUTLINED_FUNCTION_36_0();
      v22 = OUTLINED_FUNCTION_14_0(v20, v21, 2u);
      v24 = OUTLINED_FUNCTION_14_0(v22, v23, 2u);
      sub_231413840(v24, v25, 2u);
      v17 = OUTLINED_FUNCTION_36_0();
      v19 = 2;
      goto LABEL_22;
    case 3u:
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_23;
      }

      v27 = OUTLINED_FUNCTION_18();
      sub_231413840(v27, v28, 3u);
      v29 = 0;
      v30 = 0;
      v31 = 3;
      goto LABEL_26;
    default:
      if (*(a2 + 16))
      {
LABEL_23:
        v40 = OUTLINED_FUNCTION_36_0();
        v42 = OUTLINED_FUNCTION_14_0(v40, v41, v7);
        v44 = OUTLINED_FUNCTION_14_0(v42, v43, v4);
        sub_231413840(v44, v45, v4);
        v46 = OUTLINED_FUNCTION_36_0();
        sub_231413840(v46, v47, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v57 = OUTLINED_FUNCTION_14_0(v8, v2, 0);
        v59 = OUTLINED_FUNCTION_14_0(v57, v58, 0);
        sub_231413840(v59, v60, 0);
        v29 = OUTLINED_FUNCTION_18();
        v31 = 0;
LABEL_26:
        sub_231413840(v29, v30, v31);
        return 1;
      }

      v10 = sub_2314787C8();
      v11 = OUTLINED_FUNCTION_36_0();
      v13 = OUTLINED_FUNCTION_14_0(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_14_0(v13, v14, 0);
      sub_231413840(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_36_0();
      v19 = 0;
LABEL_22:
      sub_231413840(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_23140F540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v7 = *(v3 - 2);
    v8 = *v3;
    switch(*v4)
    {
      case 1:
        if (v8 != 1)
        {
          goto LABEL_33;
        }

        v46 = OUTLINED_FUNCTION_17();
        v48 = OUTLINED_FUNCTION_19_0(v46, v47, 1);
        sub_231403090(v48, v49, 1);
        if (*&v5 != *&v7)
        {
          return 0;
        }

        goto LABEL_26;
      case 2:
        if (v8 != 2)
        {
          goto LABEL_33;
        }

        v31 = *(v4 - 2);
        v32 = *(v3 - 2);
        v33 = OUTLINED_FUNCTION_17();
        v35 = OUTLINED_FUNCTION_19_0(v33, v34, 2);
        sub_231403090(v35, v36, 2);
        if (v5 != v7)
        {
          return 0;
        }

        goto LABEL_26;
      case 3:
        if (v8 != 3)
        {
          v72 = *(v4 - 1);
          goto LABEL_32;
        }

        if (*&v5 != *&v7 || *(v4 - 1) != *(v3 - 1))
        {
          v38 = *(v3 - 2);
          v39 = *(v3 - 1);
          v21 = sub_2314787C8();
          v40 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v40, v41, 3);
          v42 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v42, v43, 3);
          v44 = OUTLINED_FUNCTION_17();
          v28 = OUTLINED_FUNCTION_19_0(v44, v45, 3);
          v30 = 3;
          goto LABEL_25;
        }

        sub_231401AEC(*(v4 - 2), *(v4 - 1), 3);
        v64 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v64, v65, 3);
        v66 = OUTLINED_FUNCTION_17();
        sub_231403090(v66, v67, 3);
        v68 = OUTLINED_FUNCTION_17();
        sub_231403090(v68, v69, 3);
        goto LABEL_26;
      case 4:
        if (v8 != 4)
        {
          goto LABEL_30;
        }

        v13 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v13, v14, 4);
        v15 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v15, v16, 4);
        v17 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v17, v18, 4);
        v19 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v19, v20, 4);
        v21 = sub_23140F540(*&v5, *&v7);
        v22 = OUTLINED_FUNCTION_17();
        v24 = OUTLINED_FUNCTION_19_0(v22, v23, 4);
        v26 = OUTLINED_FUNCTION_19_0(v24, v25, 4);
        sub_231403090(v26, v27, 4);
        v28 = OUTLINED_FUNCTION_17();
        v30 = 4;
        goto LABEL_25;
      case 5:
        if (v8 == 5)
        {
          v50 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v50, v51, 5);
          v52 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v52, v53, 5);
          v54 = OUTLINED_FUNCTION_21();
          sub_231401AEC(v54, v55, 5);
          v56 = OUTLINED_FUNCTION_17();
          sub_231401AEC(v56, v57, 5);
          v21 = sub_23141AB28(*&v5, *&v7);
          v58 = OUTLINED_FUNCTION_17();
          v60 = OUTLINED_FUNCTION_19_0(v58, v59, 5);
          v62 = OUTLINED_FUNCTION_19_0(v60, v61, 5);
          sub_231403090(v62, v63, 5);
          v28 = OUTLINED_FUNCTION_17();
          v30 = 5;
LABEL_25:
          sub_231403090(v28, v29, v30);
          if ((v21 & 1) == 0)
          {
            return 0;
          }

LABEL_26:
          v3 += 3;
          v4 += 24;
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

LABEL_30:
        v71 = *(v4 - 2);
LABEL_32:
        v73 = OUTLINED_FUNCTION_17();
        sub_231401AEC(v73, v74, v6);

LABEL_33:
        v75 = OUTLINED_FUNCTION_21();
        sub_231401AEC(v75, v76, v8);
        v77 = OUTLINED_FUNCTION_17();
        v79 = OUTLINED_FUNCTION_19_0(v77, v78, v6);
        sub_231403090(v79, v80, v8);
        v81 = OUTLINED_FUNCTION_17();
        sub_231403090(v81, v82, v6);
        return 0;
      default:
        if (*v3)
        {
          goto LABEL_33;
        }

        v9 = OUTLINED_FUNCTION_17();
        v11 = OUTLINED_FUNCTION_19_0(v9, v10, 0);
        sub_231403090(v11, v12, 0);
        if ((LODWORD(v7) ^ LODWORD(v5)))
        {
          return 0;
        }

        goto LABEL_26;
    }
  }
}

uint64_t sub_23140F83C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (2)
  {
    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v10 = *v4;
    v4 += 40;
    v9 = v10;
    v12 = *(v3 - 4);
    v11 = *(v3 - 3);
    v14 = *(v3 - 2);
    v13 = *(v3 - 1);
    v16 = *v3;
    v3 += 40;
    v15 = v16;
    v122[0] = v6;
    v122[1] = v5;
    v122[2] = v8;
    v122[3] = v7;
    v123 = v9;
    v124 = v12;
    v125 = v11;
    v126 = v14;
    v127 = v13;
    v128 = v16;
    v120 = v7;
    v121 = v8;
    switch(v9)
    {
      case 1:
        if (v15 != 1)
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_27_0();
        v71 = v70;
        OUTLINED_FUNCTION_26();
        sub_231412700(v72, v73, v74, v75, v76);
        v77 = OUTLINED_FUNCTION_25();
        sub_231412700(v77, v78, v71, v120, 1);
        v79 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v79, v80, v81, v82, 1);
        v83 = OUTLINED_FUNCTION_9_0();
        sub_231412700(v83, v84, v85, v86, 1);
        v119 = sub_23140F83C(v6, v12);
        sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
        v87 = OUTLINED_FUNCTION_2_0();
        sub_23141267C(v87, v88, v89, v90, 1);
        v38 = OUTLINED_FUNCTION_9_0();
        v42 = 1;
        goto LABEL_35;
      case 2:
        if (v15 != 2)
        {
          goto LABEL_44;
        }

        if (v6 != v12 || v5 != v11)
        {
          v44 = OUTLINED_FUNCTION_50();
          v55 = OUTLINED_FUNCTION_2_0();
          sub_231412700(v55, v56, v57, v58, 2);
          v49 = OUTLINED_FUNCTION_25();
          v52 = v120;
          v51 = v121;
          v53 = 2;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_26();
        v95 = 2;
        goto LABEL_41;
      case 3:
        if (v15 != 3)
        {
          goto LABEL_44;
        }

        v59 = v6 == v12 && v5 == v11;
        if (v59 || (OUTLINED_FUNCTION_25(), v60 = OUTLINED_FUNCTION_50(), v7 = v120, v8 = v121, (v60 & 1) != 0))
        {
          if (v8 == v14 && v7 == v13)
          {
            v91 = OUTLINED_FUNCTION_27_0();
            v93 = v96;
            v94 = v97;
            v95 = 3;
LABEL_41:
            sub_231412700(v91, v92, v93, v94, v95);
            v98 = OUTLINED_FUNCTION_25();
            sub_231412700(v98, v99, v121, v120, v9);
            sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
          }

          else
          {
            v119 = sub_2314787C8();
            v62 = OUTLINED_FUNCTION_2_0();
            sub_231412700(v62, v63, v64, v65, 3);
            v66 = OUTLINED_FUNCTION_9_0();
            sub_231412700(v66, v67, v68, v69, 3);
            sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
LABEL_36:
            if ((v119 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_42:
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        v113 = OUTLINED_FUNCTION_27_0();
        v115 = v114;
        v117 = v116;
        sub_231412700(v113, v118, v14, v13, 3);
        v108 = OUTLINED_FUNCTION_25();
        v110 = v115;
        v111 = v117;
        v112 = 3;
LABEL_45:
        sub_231412700(v108, v109, v110, v111, v112);
        sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
        return 0;
      case 4:
        if (v15 != 4)
        {
          goto LABEL_44;
        }

        if (v6 == v12 && v5 == v11)
        {
          OUTLINED_FUNCTION_26();
          v95 = 4;
          goto LABEL_41;
        }

        v44 = OUTLINED_FUNCTION_50();
        v45 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v45, v46, v47, v48, 4);
        v49 = OUTLINED_FUNCTION_25();
        v52 = v120;
        v51 = v121;
        v53 = 4;
LABEL_20:
        sub_231412700(v49, v50, v51, v52, v53);
        sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
        if ((v44 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_42;
      default:
        if (v15)
        {
LABEL_44:
          v101 = OUTLINED_FUNCTION_27_0();
          v103 = v102;
          v105 = v104;
          sub_231412700(v101, v106, v14, v13, v107);
          v108 = OUTLINED_FUNCTION_25();
          v110 = v103;
          v111 = v105;
          v112 = v9;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_27_0();
        v18 = v17;
        OUTLINED_FUNCTION_26();
        sub_231412700(v19, v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_25();
        sub_231412700(v24, v25, v18, v120, 0);
        v26 = OUTLINED_FUNCTION_2_0();
        sub_231412700(v26, v27, v28, v29, 0);
        v30 = OUTLINED_FUNCTION_9_0();
        sub_231412700(v30, v31, v32, v33, 0);
        v119 = sub_23140F83C(v6, v12);
        sub_2313E937C(v122, &qword_27DD4D5C8, &qword_23147A800);
        v34 = OUTLINED_FUNCTION_2_0();
        sub_23141267C(v34, v35, v36, v37, 0);
        v38 = OUTLINED_FUNCTION_9_0();
        v42 = 0;
LABEL_35:
        sub_23141267C(v38, v39, v40, v41, v42);
        goto LABEL_36;
    }
  }
}

uint64_t sub_23140FC14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23140FC70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23140FCFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppMatcherSignals.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_17();
}

uint64_t sub_23140FDB0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231449250(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23140FFD0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23140FE1C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231449264(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2314100C4(v7);
  *a1 = v3;
  return result;
}

size_t sub_23140FED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_23141D750(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v5 = sub_231413B7C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_231401B18();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23140FFD0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23141070C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23141020C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2314100C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_231410C60(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2314102B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23141020C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 56 * a3 + 48);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 + 48);
        v14 = *(v9 - 32);
        *(v9 + 8) = *(v9 - 48);
        v15 = *(v9 + 32);
        *(v9 + 24) = v14;
        *(v9 + 40) = *(v9 - 16);
        *(v9 + 56) = *v9;
        *(v9 - 48) = v10;
        *(v9 - 40) = v11;
        *(v9 - 32) = v12;
        *(v9 - 24) = v15;
        *(v9 - 8) = v13;
        *v9 = v7;
        v9 -= 56;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2314102B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_231476CA8();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v45 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v57 = &v45 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v66 = &v45 - v22;
  result = MEMORY[0x28223BE20](v21);
  v65 = &v45 - v25;
  v47 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v24 + 72);
    v55 = (v8 + 8);
    v56 = (v8 + 16);
    v28 = v26 + v27 * (a3 - 1);
    v52 = -v27;
    v53 = v26;
    v29 = a1 - a3;
    v46 = v27;
    v30 = v26 + v27 * a3;
    v64 = v13;
    while (2)
    {
      v50 = v28;
      v51 = a3;
      v48 = v30;
      v49 = v29;
      v62 = v29;
      do
      {
        v31 = v65;
        sub_2313E95CC(v30, v65, &qword_27DD4D900, &qword_2314795B8);
        v32 = v66;
        sub_2313E95CC(v28, v66, &qword_27DD4D900, &qword_2314795B8);
        v33 = v57;
        sub_2313E95CC(v31, v57, &qword_27DD4D900, &qword_2314795B8);
        v34 = *(v33 + 8);

        v35 = *(v13 + 48);
        v63 = *v56;
        v36 = v59;
        v37 = v61;
        v63(v59, v33 + v35, v61);
        sub_231413E84(v33 + v35, type metadata accessor for HistoryStats);
        v38 = v58;
        sub_2313E95CC(v32, v58, &qword_27DD4D900, &qword_2314795B8);
        v39 = *(v38 + 8);

        v40 = *(v64 + 48);
        v41 = v60;
        v63(v60, v38 + v40, v37);
        sub_231413E84(v38 + v40, type metadata accessor for HistoryStats);
        LOBYTE(v31) = sub_231476C08();
        v42 = *v55;
        v13 = v64;
        (*v55)(v41, v37);
        v42(v36, v37);
        sub_2313E937C(v66, &qword_27DD4D900, &qword_2314795B8);
        result = sub_2313E937C(v65, &qword_27DD4D900, &qword_2314795B8);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        v43 = v54;
        sub_2314125B8(v30, v54);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2314125B8(v43, v28);
        v28 += v52;
        v30 += v52;
      }

      while (!__CFADD__(v62++, 1));
      a3 = v51 + 1;
      v28 = v50 + v46;
      v29 = v49 - 1;
      v30 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23141070C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v92 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 48);
        v11 = *a3 + 56 * v7;
        v12 = *(v11 + 48);
        v13 = (v11 + 160);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 7;
          v18 = (v12 < v10) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 56 * v6 - 16;
            v20 = 56 * v7 + 40;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = *(v23 + v20 - 40);
                v26 = v23 + v19;
                v27 = *(v24 - 3);
                v28 = *(v24 - 1);
                v29 = *v24;
                v30 = *(v26 - 24);
                v31 = *(v26 - 8);
                v32 = *(v26 + 8);
                *(v24 - 40) = *(v26 - 40);
                *(v24 + 1) = v32;
                *(v24 - 8) = v31;
                *(v24 - 24) = v30;
                *(v26 - 40) = v25;
                *(v26 - 24) = v27;
                *(v26 - 16) = v28;
                *v26 = v29;
              }

              ++v22;
              v19 -= 56;
              v20 += 56;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 56 * v9 - 8;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 56 * v9 + 48);
              v37 = v35;
              v38 = v34;
              do
              {
                if (*v38 >= v36)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v39 = *(v38 + 8);
                v40 = *(v38 + 16);
                v41 = *(v38 + 24);
                v42 = *(v38 + 48);
                v43 = *(v38 - 32);
                *(v38 + 8) = *(v38 - 48);
                v44 = *(v38 + 32);
                *(v38 + 24) = v43;
                *(v38 + 40) = *(v38 - 16);
                *(v38 + 56) = *v38;
                *(v38 - 48) = v39;
                *(v38 - 40) = v40;
                *(v38 - 32) = v41;
                *(v38 - 24) = v44;
                *(v38 - 8) = v42;
                *v38 = v36;
                v38 -= 56;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 56;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v94 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v8[2];
        sub_23141CD28();
        v8 = v90;
      }

      v46 = v8[2];
      v47 = v46 + 1;
      if (v46 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v91;
      }

      v8[2] = v47;
      v48 = v8 + 4;
      v49 = &v8[2 * v46 + 4];
      *v49 = v7;
      v49[1] = v94;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v8[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v8[4];
            v54 = v8[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_91:
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
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = v84[1];
          sub_231411AB0((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v95);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = v8[2];
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          memmove(&v48[2 * v50], v84 + 2, 16 * (v87 - 1 - v50));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v94;
      a4 = v92;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_231411978(&v97, *a1, a3);
LABEL_89:
}

void sub_231410C60(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v158 = a1;
  v180 = sub_231476CA8();
  v6 = *(v180 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v180);
  v179 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v178 = &v154 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v167 = *(v11 - 8);
  v12 = *(v167 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v162 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v173 = &v154 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v177 = &v154 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v176 = &v154 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v185 = &v154 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v184 = &v154 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v154 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v154 - v29;
  v168 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_106:
    v185 = *v158;
    if (!v185)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_108;
    }

    goto LABEL_142;
  }

  v32 = 0;
  v175 = (v6 + 16);
  v174 = (v6 + 8);
  v181 = v28;
  v33 = MEMORY[0x277D84F90];
  v159 = a4;
  v155 = &v154 - v29;
  v164 = v27;
  while (1)
  {
    v34 = v32;
    v35 = v32 + 1;
    if (v35 >= v31)
    {
      goto LABEL_33;
    }

    v171 = v31;
    v156 = v33;
    v36 = v30;
    v37 = *v168;
    v38 = *(v167 + 72);
    v170 = v35;
    v39 = v37 + v38 * v35;
    v33 = &qword_2314795B8;
    sub_2313E95CC(v39, v30, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E95CC(v37 + v38 * v34, v27, &qword_27DD4D900, &qword_2314795B8);
    v40 = v169;
    LODWORD(v166) = sub_23140ED90(v36, v27);
    v169 = v40;
    if (v40)
    {
      sub_2313E937C(v27, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v36, &qword_27DD4D900, &qword_2314795B8);
LABEL_116:

      return;
    }

    sub_2313E937C(v27, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E937C(v36, &qword_27DD4D900, &qword_2314795B8);
    v157 = v34;
    v41 = v34 + 2;
    v42 = (v37 + v38 * (v34 + 2));
    v35 = v170;
    v43 = v171;
    v44 = v181;
    v165 = v38;
    while (1)
    {
      v45 = v41;
      v46 = v35 + 1;
      if (v46 >= v43)
      {
        break;
      }

      v182 = v41;
      v183 = v42;
      v47 = v184;
      v170 = v46;
      sub_2313E95CC(v42, v184, &qword_27DD4D900, &qword_2314795B8);
      v172 = v39;
      v48 = v185;
      sub_2313E95CC(v39, v185, &qword_27DD4D900, &qword_2314795B8);
      v49 = v47;
      v50 = v176;
      sub_2313E95CC(v49, v176, &qword_27DD4D900, &qword_2314795B8);
      v51 = *(v50 + 8);

      v52 = *(v44 + 48);
      v53 = *v175;
      v54 = v178;
      v55 = v180;
      (*v175)(v178, v50 + v52, v180);
      v33 = type metadata accessor for HistoryStats;
      sub_231413E84(v50 + v52, type metadata accessor for HistoryStats);
      v56 = v177;
      sub_2313E95CC(v48, v177, &qword_27DD4D900, &qword_2314795B8);
      v57 = *(v56 + 8);

      v58 = *(v181 + 48);
      v59 = v179;
      v53(v179, v56 + v58, v55);
      sub_231413E84(v56 + v58, type metadata accessor for HistoryStats);
      LODWORD(v58) = sub_231476C08() & 1;
      v60 = *v174;
      v61 = v59;
      v27 = v164;
      (*v174)(v61, v55);
      v62 = v54;
      v44 = v181;
      v63 = v55;
      v38 = v165;
      v60(v62, v63);
      sub_2313E937C(v185, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v184, &qword_27DD4D900, &qword_2314795B8);
      v45 = v182;
      v43 = v171;
      v42 = v183 + v38;
      v39 = v172 + v38;
      v41 = v182 + 1;
      v35 = v170;
      if ((v166 & 1) != v58)
      {
        goto LABEL_10;
      }
    }

    v35 = v43;
LABEL_10:
    if ((v166 & 1) == 0)
    {
      a4 = v159;
LABEL_31:
      v33 = v156;
      v34 = v157;
      goto LABEL_33;
    }

    v34 = v157;
    a4 = v159;
    if (v35 < v157)
    {
      goto LABEL_141;
    }

    if (v157 < v35)
    {
      if (v43 >= v45)
      {
        v64 = v45;
      }

      else
      {
        v64 = v43;
      }

      v170 = v35;
      v65 = v38 * (v64 - 1);
      v66 = v38 * v64;
      v67 = v157 * v38;
      v68 = v35;
      do
      {
        if (v34 != --v68)
        {
          v69 = *v168;
          if (!*v168)
          {
            goto LABEL_146;
          }

          sub_2314125B8(v69 + v67, v162);
          v70 = v67 < v65 || v69 + v67 >= (v69 + v66);
          if (v70)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_2314125B8(v162, v69 + v65);
          a4 = v159;
          v35 = v170;
        }

        ++v34;
        v65 -= v38;
        v66 -= v38;
        v67 += v38;
      }

      while (v34 < v68);
      goto LABEL_31;
    }

    v33 = v156;
LABEL_33:
    v71 = v168[1];
    if (v35 >= v71)
    {
      goto LABEL_53;
    }

    v72 = v35;
    v115 = __OFSUB__(v35, v34);
    v73 = v35 - v34;
    if (v115)
    {
      goto LABEL_138;
    }

    if (v73 < a4)
    {
      break;
    }

    v35 = v72;
LABEL_53:
    if (v35 < v34)
    {
      goto LABEL_137;
    }

    v170 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = *(v33 + 2);
      sub_23141CD28();
      v33 = v144;
    }

    v97 = *(v33 + 2);
    v98 = v97 + 1;
    v99 = v170;
    if (v97 >= *(v33 + 3) >> 1)
    {
      sub_23141CD28();
      v99 = v170;
      v33 = v145;
    }

    *(v33 + 2) = v98;
    v100 = v33 + 32;
    v101 = &v33[16 * v97 + 32];
    *v101 = v34;
    *(v101 + 1) = v99;
    v183 = *v158;
    if (!v183)
    {
      goto LABEL_147;
    }

    if (v97)
    {
      while (1)
      {
        v102 = v98 - 1;
        v103 = &v100[16 * v98 - 16];
        v104 = &v33[16 * v98];
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v105 = *(v33 + 4);
          v106 = *(v33 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_73:
          if (v108)
          {
            goto LABEL_124;
          }

          v120 = *v104;
          v119 = *(v104 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_127;
          }

          v124 = *(v103 + 1);
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_132;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v98 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v98 < 2)
        {
          goto LABEL_126;
        }

        v127 = *v104;
        v126 = *(v104 + 1);
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_88:
        if (v123)
        {
          goto LABEL_129;
        }

        v129 = *v103;
        v128 = *(v103 + 1);
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_131;
        }

        if (v130 < v122)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v102 - 1 >= v98)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
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
          goto LABEL_140;
        }

        if (!*v168)
        {
          goto LABEL_144;
        }

        v134 = &v100[16 * v102 - 16];
        v135 = *v134;
        v136 = v102;
        v137 = &v100[16 * v102];
        v138 = *(v137 + 1);
        v139 = v169;
        sub_231411C70(*v168 + *(v167 + 72) * *v134, *v168 + *(v167 + 72) * *v137, *v168 + *(v167 + 72) * v138, v183);
        v169 = v139;
        if (v139)
        {
          goto LABEL_116;
        }

        if (v138 < v135)
        {
          goto LABEL_119;
        }

        v140 = v27;
        v141 = v33;
        v33 = *(v33 + 2);
        if (v136 > v33)
        {
          goto LABEL_120;
        }

        *v134 = v135;
        *(v134 + 1) = v138;
        if (v136 >= v33)
        {
          goto LABEL_121;
        }

        v98 = (v33 - 1);
        sub_231449110(v137 + 16, &v33[-v136 - 1], v137);
        *(v141 + 2) = v33 - 1;
        v142 = v33 > 2;
        v33 = v141;
        v27 = v140;
        if (!v142)
        {
          goto LABEL_102;
        }
      }

      v109 = &v100[16 * v98];
      v110 = *(v109 - 8);
      v111 = *(v109 - 7);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_122;
      }

      v114 = *(v109 - 6);
      v113 = *(v109 - 5);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_123;
      }

      v116 = *(v104 + 1);
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_125;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_128;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = *(v103 + 1);
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_136;
        }

        if (v107 < v133)
        {
          v102 = v98 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v31 = v168[1];
    v32 = v170;
    a4 = v159;
    v30 = v155;
    if (v170 >= v31)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v34, a4))
  {
    goto LABEL_139;
  }

  if (v34 + a4 >= v71)
  {
    v74 = v168[1];
  }

  else
  {
    v74 = v34 + a4;
  }

  if (v74 < v34)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v33 = sub_2314490FC(v33);
LABEL_108:
    v146 = v33;
    v147 = (v33 + 16);
    for (i = *(v33 + 2); i >= 2; *v147 = i)
    {
      v149 = v169;
      if (!*v168)
      {
        goto LABEL_145;
      }

      v150 = &v146[16 * i];
      v33 = *v150;
      v151 = &v147[2 * i];
      v152 = *(v151 + 1);
      sub_231411C70(*v168 + *(v167 + 72) * *v150, *v168 + *(v167 + 72) * *v151, *v168 + *(v167 + 72) * v152, v185);
      v169 = v149;
      if (v149)
      {
        break;
      }

      if (v152 < v33)
      {
        goto LABEL_133;
      }

      if (i - 2 >= *v147)
      {
        goto LABEL_134;
      }

      *v150 = v33;
      *(v150 + 1) = v152;
      v153 = *v147 - i;
      if (*v147 < i)
      {
        goto LABEL_135;
      }

      i = *v147 - 1;
      sub_231449110(v151 + 16, v153, v151);
    }

    goto LABEL_116;
  }

  v35 = v72;
  if (v72 == v74)
  {
    goto LABEL_53;
  }

  v156 = v33;
  v75 = *v168;
  v76 = *(v167 + 72);
  v77 = *v168 + v76 * (v35 - 1);
  v171 = -v76;
  v157 = v34;
  v78 = v34 - v35;
  v172 = v75;
  v160 = v76;
  v79 = v75 + v35 * v76;
  v80 = v181;
  v161 = v74;
LABEL_43:
  v170 = v35;
  v163 = v79;
  v165 = v78;
  v166 = v77;
  v81 = v78;
  v82 = v77;
  while (1)
  {
    v182 = v81;
    v83 = v184;
    sub_2313E95CC(v79, v184, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E95CC(v82, v185, &qword_27DD4D900, &qword_2314795B8);
    v84 = v176;
    sub_2313E95CC(v83, v176, &qword_27DD4D900, &qword_2314795B8);
    v85 = *(v84 + 8);

    v86 = *(v80 + 48);
    v183 = *v175;
    v87 = v178;
    v88 = v180;
    v183(v178, v84 + v86, v180);
    sub_231413E84(v84 + v86, type metadata accessor for HistoryStats);
    v89 = v177;
    sub_2313E95CC(v185, v177, &qword_27DD4D900, &qword_2314795B8);
    v90 = *(v89 + 8);

    v91 = *(v80 + 48);
    v92 = v179;
    v183(v179, v89 + v91, v88);
    sub_231413E84(v89 + v91, type metadata accessor for HistoryStats);
    v93 = sub_231476C08();
    v94 = *v174;
    (*v174)(v92, v88);
    v94(v87, v88);
    sub_2313E937C(v185, &qword_27DD4D900, &qword_2314795B8);
    sub_2313E937C(v184, &qword_27DD4D900, &qword_2314795B8);
    if ((v93 & 1) == 0)
    {
      v80 = v181;
LABEL_50:
      v35 = v170 + 1;
      v77 = v166 + v160;
      v78 = v165 - 1;
      v79 = v163 + v160;
      if (v170 + 1 == v161)
      {
        v35 = v161;
        v33 = v156;
        v27 = v164;
        v34 = v157;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v95 = v182;
    if (!v172)
    {
      break;
    }

    v96 = v173;
    sub_2314125B8(v79, v173);
    v80 = v181;
    swift_arrayInitWithTakeFrontToBack();
    sub_2314125B8(v96, v82);
    v82 += v171;
    v79 += v171;
    v70 = __CFADD__(v95, 1);
    v81 = v95 + 1;
    if (v70)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_231411978(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_231411AB0((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_231411AB0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_23141D948(a1, (a2 - a1) / 56, a4);
    v10 = &v4[7 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[6] >= v6[6])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 7;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    v7[6] = v12[6];
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_23141D948(a2, (a3 - a2) / 56, a4);
  v10 = &v4[7 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v21 = v6 - 7;
      v13 = v5 + 56 == v6;
      v6 -= 7;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = v21[6];
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 7);
      v19 = *(v10 - 5);
      v20 = *(v10 - 3);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 7;
  }

LABEL_28:
  v25 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[7 * v25])
  {
    memmove(v6, v4, 56 * v25);
  }

  return 1;
}

uint64_t sub_231411C70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = sub_231476CA8();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v91);
  v90 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v78 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v13 = *(*(v97 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v97);
  v88 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v78 - v19;
  result = MEMORY[0x28223BE20](v18);
  v98 = &v78 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v24 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v24)
  {
    goto LABEL_60;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_61;
  }

  v27 = (a2 - a1) / v23;
  v101 = a1;
  v100 = a4;
  v85 = (v8 + 8);
  v86 = (v8 + 16);
  v28 = v25 / v23;
  if (v27 >= v25 / v23)
  {
    sub_23141D970(a2, v25 / v23, a4);
    v50 = a4 + v28 * v23;
    v51 = -v23;
    v52 = v50;
    v93 = a1;
    v94 = a4;
    v81 = v51;
LABEL_36:
    v96 = a2;
    v53 = a2 + v51;
    v54 = a3;
    v55 = v52;
    v82 = a2 + v51;
    v80 = v52;
    while (1)
    {
      if (v50 <= a4)
      {
        v101 = v96;
        v99 = v55;
        goto LABEL_58;
      }

      if (v96 <= a1)
      {
        break;
      }

      v79 = v55;
      v92 = v54 + v51;
      v83 = v50 + v51;
      v84 = v54;
      v56 = v98;
      sub_2313E95CC(v50 + v51, v98, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E95CC(v53, v95, &qword_27DD4D900, &qword_2314795B8);
      v57 = v50;
      v58 = v87;
      sub_2313E95CC(v56, v87, &qword_27DD4D900, &qword_2314795B8);
      v59 = *(v58 + 8);

      v60 = v97;
      v61 = *(v97 + 48);
      v62 = *v86;
      v63 = v89;
      v64 = v91;
      (*v86)(v89, v58 + v61, v91);
      sub_231413E84(v58 + v61, type metadata accessor for HistoryStats);
      v65 = v88;
      sub_2313E95CC(v95, v88, &qword_27DD4D900, &qword_2314795B8);
      v66 = *(v65 + 8);

      v67 = *(v60 + 48);
      v68 = v90;
      v62(v90, v65 + v67, v64);
      sub_231413E84(v65 + v67, type metadata accessor for HistoryStats);
      v69 = sub_231476C08();
      v70 = *v85;
      (*v85)(v68, v64);
      v70(v63, v64);
      sub_2313E937C(v95, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v98, &qword_27DD4D900, &qword_2314795B8);
      if (v69)
      {
        v50 = v57;
        a3 = v92;
        v75 = v84 < v96 || v92 >= v96;
        a4 = v94;
        if (v75)
        {
          a2 = v82;
          swift_arrayInitWithTakeFrontToBack();
          v52 = v79;
          a1 = v93;
          v51 = v81;
        }

        else
        {
          v76 = v79;
          v52 = v79;
          v51 = v81;
          v77 = v82;
          a2 = v82;
          a1 = v93;
          if (v84 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v77;
            v52 = v76;
          }
        }

        goto LABEL_36;
      }

      v71 = v92;
      v72 = v84 < v57 || v92 >= v57;
      a4 = v94;
      if (v72)
      {
        v73 = v83;
        swift_arrayInitWithTakeFrontToBack();
        v54 = v71;
        v50 = v73;
        v55 = v73;
        a1 = v93;
        v51 = v81;
        v53 = v82;
        v52 = v80;
      }

      else
      {
        v74 = v83;
        v55 = v83;
        v24 = v57 == v84;
        v54 = v92;
        v50 = v83;
        a1 = v93;
        v51 = v81;
        v53 = v82;
        v52 = v80;
        if (!v24)
        {
          swift_arrayInitWithTakeBackToFront();
          v54 = v71;
          v50 = v74;
          v55 = v74;
        }
      }
    }

    v101 = v96;
    v99 = v52;
  }

  else
  {
    sub_23141D970(a1, (a2 - a1) / v23, a4);
    v83 = v23;
    v84 = a4 + v27 * v23;
    v99 = v84;
    v92 = a3;
    while (a4 < v84 && a2 < a3)
    {
      v93 = a1;
      v30 = v98;
      sub_2313E95CC(a2, v98, &qword_27DD4D900, &qword_2314795B8);
      v31 = v95;
      sub_2313E95CC(a4, v95, &qword_27DD4D900, &qword_2314795B8);
      v32 = v30;
      v33 = v87;
      sub_2313E95CC(v32, v87, &qword_27DD4D900, &qword_2314795B8);
      v34 = *(v33 + 8);

      v35 = v97;
      v36 = *(v97 + 48);
      v94 = a4;
      v37 = *v86;
      v38 = v89;
      v39 = v91;
      (*v86)(v89, v33 + v36, v91);
      v96 = a2;
      sub_231413E84(v33 + v36, type metadata accessor for HistoryStats);
      v40 = v88;
      sub_2313E95CC(v31, v88, &qword_27DD4D900, &qword_2314795B8);
      v41 = *(v40 + 8);

      v42 = *(v35 + 48);
      v43 = v90;
      v37(v90, v40 + v42, v39);
      sub_231413E84(v40 + v42, type metadata accessor for HistoryStats);
      v44 = sub_231476C08();
      v45 = *v85;
      (*v85)(v43, v39);
      v45(v38, v39);
      sub_2313E937C(v31, &qword_27DD4D900, &qword_2314795B8);
      sub_2313E937C(v98, &qword_27DD4D900, &qword_2314795B8);
      if (v44)
      {
        v46 = v83;
        a2 = v96 + v83;
        v47 = v93;
        a4 = v94;
        if (v93 < v96 || v93 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v92;
        }

        else
        {
          a3 = v92;
          if (v93 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v96;
        v46 = v83;
        v47 = v93;
        a4 = v94 + v83;
        if (v93 < v94 || v93 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v92;
        }

        else
        {
          a3 = v92;
          if (v93 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v100 = a4;
      }

      a1 = v47 + v46;
      v101 = a1;
    }
  }

LABEL_58:
  sub_231412440(&v101, &v100, &v99);
  return 1;
}

uint64_t sub_231412440(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
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

uint64_t sub_231412578(uint64_t a1, int64_t a2, char a3)
{
  result = sub_231412980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_231412598()
{
  v1 = *v0;
  sub_231412E78();
  *v0 = v2;
}

uint64_t sub_2314125B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231412628(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_231412668(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_231412668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_23141267C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_23141267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 4:

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231412700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 4:

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

void *sub_231412784(void *a1, int64_t a2, char a3)
{
  result = sub_2314130E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2314127E8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2314131F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231412808(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2314132E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231412828(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2314133E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231412980(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D590, &qword_231479830);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_23141D894((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_231412A88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37();
  if (!v11)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231412B7C()
{
  OUTLINED_FUNCTION_54();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_43(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D9A0, &qword_2314798E8);
      v8 = OUTLINED_FUNCTION_49();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_33(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_41();
        sub_23141D8B8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D628, &unk_2314798F0);
    OUTLINED_FUNCTION_48();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_37();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_231412C48(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5F0, &qword_2314798B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_231412D60(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5F8, &qword_2314798B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D600, &qword_2314798C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_231412E78()
{
  OUTLINED_FUNCTION_54();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_43(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D618, &qword_2314798D8);
      v8 = OUTLINED_FUNCTION_49();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_33(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_41();
        sub_23141D948(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_48();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_37();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_231412F34()
{
  OUTLINED_FUNCTION_54();
  if (v3)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D620, &qword_2314798E0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_18:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8) - 8);
  if (v1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23141D970(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2314130E8(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8E0, &unk_2314798A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23141FBB4(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2314131F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D860, &qword_231479838);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_23141D984((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2314132E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5C0, &unk_231479870);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_23141D9A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2314133E0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B8, &qword_231479868);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23141D85C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2314134D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37();
  if (!v11)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2314135C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231413AA0(result, 1, sub_23141CB80);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Entity();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2314136D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_231413AA0(result, 1, sub_23141D410);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2314137BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231413820(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_231413840(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
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

uint64_t get_enum_tag_for_layout_string_13SiriRemembers18AppMatchResolutionO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314138AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2314138EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23141393C(uint64_t a1, unsigned int a2)
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

uint64_t sub_23141397C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2314139C0(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231413A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_231413A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231413AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_231413B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231477E58();

  [a3 setContactIdentifier_];
}

uint64_t sub_231413B7C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v39 = &v35 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
    v18 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v18;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v14) >> 6;
    v37 = a3;
    while (1)
    {
      if (v17 >= a3)
      {
        goto LABEL_25;
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v16 = 0;
            a3 = v17;
            a1 = v36;
            goto LABEL_20;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
          if (v16)
          {
            v42 = a2;
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

      v42 = a2;
      v21 = v18;
LABEL_16:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v21 << 6);
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = *(a4 + 56);
      v27 = (v25 + 16 * v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v26 + *(*(type metadata accessor for HistoryStats() - 8) + 72) * v23;
      v31 = v40;
      sub_231413E28(v30, &v40[*(v41 + 48)], type metadata accessor for HistoryStats);
      *v31 = v28;
      v31[1] = v29;
      v32 = v31;
      v33 = v39;
      sub_2314125B8(v32, v39);
      v34 = v42;
      sub_2314125B8(v33, v42);
      a3 = v37;
      if (v20 == v37)
      {
        break;
      }

      a2 = v34 + *(v38 + 72);

      v17 = v20;
      v18 = v21;
      a4 = v24;
    }

    v18 = v21;
    a1 = v36;
    a4 = v24;
LABEL_20:
    v14 = v35;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_231413E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_231413E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_29_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

__n128 OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  return *(v0 + 25);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_2314787C8();
}

void *static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(void *a1)
{
  v2 = [a1 _className];
  v3 = sub_231477E68();
  v5 = v4;

  v6 = v3 == 0xD000000000000011 && 0x8000000231481C90 == v5;
  if (v6 || (sub_2314787C8() & 1) != 0 || (v3 == 0xD000000000000016 ? (v7 = 0x8000000231481CB0 == v5) : (v7 = 0), v7))
  {

    return &unk_2846086A8;
  }

  v8 = sub_2314787C8();

  if (v8)
  {
    return &unk_2846086A8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231479580;
  v10 = [a1 _className];
  v11 = sub_231477E68();
  v13 = v12;

  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  return v9;
}

uint64_t static AppSelectionUtilityHelper.getBundleId(bundle:)(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  sub_23141413C(124, 0xE100000000000000, a1, a2);
  if (v3)
  {
  }

  else
  {
    v4 = sub_231478088();
    v2 = MEMORY[0x23192DFC0](v4);
  }

  return v2;
}

unint64_t sub_23141413C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_231477F58())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_231478068() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2314787C8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t static AppSelectionUtilityHelper.getCountryCode(handleId:)()
{
  if ((sub_2313F24D8() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_2313F2654(10);
  v1 = MEMORY[0x23192DFC0](v0);

  return v1;
}

uint64_t getEnumTagSinglePayload for AppSelectionUtilityHelper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppSelectionUtilityHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_23141439C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v26 = a5;
  v29 = a2;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = 0;
  v30 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v15)
    {

      return v28;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = *(v8 + 72);
    sub_231414684(a1 + v16 + v17 * v15, v14, a4);
    v19 = *v14;
    v18 = v14[1];

    LOBYTE(v18) = sub_23142AEEC(&v31, v19, v18);

    if (v18)
    {
      sub_23141473C(v14, v27, a4);
      v20 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v20;
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26(0, *(v20 + 16) + 1, 1);
        v22 = v32;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v28 = v24 + 1;
        v26(v23 > 1, v24 + 1, 1);
        v25 = v28;
        v22 = v32;
      }

      ++v15;
      *(v22 + 16) = v25;
      v28 = v22;
      result = sub_23141473C(v27, v22 + v16 + v24 * v17, a4);
    }

    else
    {
      result = sub_2314146E4(v14, a4);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2314145E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(BOOL, uint64_t, uint64_t))
{
  v4 = a1;
  if (*(a1 + 16) > 1uLL)
  {
    v10 = MEMORY[0x23192E2C0]();

    v4 = sub_23141439C(v8, &v10, a2, a3, a4);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_231414684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2314146E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23141473C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void CLPlacemark.entityId.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D630, &qword_231479970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479960;
  *(inited + 32) = sub_231414BC8(v1, &selRef_name);
  *(inited + 40) = v3;
  *(inited + 48) = sub_231414BC8(v1, &selRef_thoroughfare);
  *(inited + 56) = v4;
  *(inited + 64) = sub_231414BC8(v1, &selRef_subThoroughfare);
  *(inited + 72) = v5;
  *(inited + 80) = sub_231414BC8(v1, &selRef_locality);
  *(inited + 88) = v6;
  *(inited + 96) = sub_231414BC8(v1, &selRef_subLocality);
  *(inited + 104) = v7;
  *(inited + 112) = sub_231414BC8(v1, &selRef_administrativeArea);
  *(inited + 120) = v8;
  *(inited + 128) = sub_231414BC8(v1, &selRef_subAdministrativeArea);
  *(inited + 136) = v9;
  *(inited + 144) = sub_231414BC8(v1, &selRef_postalCode);
  *(inited + 152) = v10;
  *(inited + 160) = sub_231414BC8(v1, &selRef_country);
  *(inited + 168) = v11;
  *(inited + 176) = sub_231414BC8(v1, &selRef_inlandWater);
  *(inited + 184) = v12;
  v13 = 0;
  *(inited + 192) = sub_231414BC8(v1, &selRef_ocean);
  *(inited + 200) = v14;
  v15 = MEMORY[0x277D84F90];
LABEL_2:
  v16 = 16 * v13 + 40;
  while (1)
  {
    if (v13 == 11)
    {
      swift_setDeallocating();
      sub_231414B68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
      sub_2313EF69C();
      sub_231477E28();

      return;
    }

    if (v13 > 0xA)
    {
      break;
    }

    ++v13;
    v17 = v16 + 16;
    v18 = *(inited + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(inited + v17 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v15 + 16);
        sub_23141CC58();
        v15 = v23;
      }

      v20 = *(v15 + 16);
      if (v20 >= *(v15 + 24) >> 1)
      {
        sub_23141CC58();
        v15 = v24;
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_231414A00@<X0>(uint64_t *a1@<X8>)
{
  CLPlacemark.entityId.getter();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    a1[4] = MEMORY[0x277D84F98];
    v7 = a1 + *(type metadata accessor for Entity() + 28);
    sub_231476C98();
    *a1 = v6;
    a1[1] = v4;
    a1[2] = 0x6D6563616C504C43;
    a1[3] = 0xEB000000006B7261;

    v8 = a1[4];
    swift_isUniquelyReferenced_nonNull_native();
    v11 = a1[4];
    result = sub_2313F1184(v6, v4, 3, 0x73736572646461, 0xE700000000000000);
    a1[4] = v11;
  }

  else
  {

    sub_2313F17E0();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_231414B24()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231414B68()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231414BC8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231477E68();

  return v4;
}

NSObject *sub_231414C28()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D648, &qword_231479A18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v196 = v186 - v5;
  v197 = sub_231476D48();
  v6 = OUTLINED_FUNCTION_4(v197);
  v195 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v194 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D650, &unk_231479A20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v186 - v14;
  v16 = sub_231476D18();
  v17 = OUTLINED_FUNCTION_4(v16);
  v192 = v18;
  v193 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v190 = v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v189 = v186 - v24;
  MEMORY[0x28223BE20](v23);
  v191 = v186 - v25;
  v26 = sub_231476998();
  v27 = OUTLINED_FUNCTION_4(v26);
  *&v199 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v198 = v32 - v31;
  v33 = type metadata accessor for Entity();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v41 = (v40 - v39);
  v42 = sub_231414BC8(v2, &selRef_intentType);
  if (!v43)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v72 = sub_231477B68();
    __swift_project_value_buffer(v72, qword_280C3D970);
    v73 = sub_231477B58();
    v74 = sub_2314782A8();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_19;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "DeviceSelectionIntent is missing intentType. Cannot extract Entity.";
    goto LABEL_18;
  }

  v44 = v42;
  v45 = v43;
  v187 = v26;
  v188 = v36;
  v46 = sub_231414BC8(v2, &selRef_remoteDeviceID);
  if (!v47)
  {

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v77 = sub_231477B68();
    __swift_project_value_buffer(v77, qword_280C3D970);
    v73 = sub_231477B58();
    v74 = sub_2314782A8();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_19;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "DeviceSelectionIntent is missing remoteDeviceID. Cannot extract Entity.";
LABEL_18:
    _os_log_impl(&dword_2313E1000, v73, v74, v76, v75, 2u);
    MEMORY[0x23192F1F0](v75, -1, -1);
LABEL_19:

    sub_2313F17E0();
    swift_allocError();
    *v78 = 1;
    swift_willThrow();
    return v73;
  }

  v48 = v46;
  v49 = v47;
  v186[1] = v1;
  v41[4] = MEMORY[0x277D84F98];
  v50 = v41 + *(v33 + 28);
  sub_231476C98();
  v200 = v44;
  v201 = v45;

  MEMORY[0x23192E060](47, 0xE100000000000000);
  MEMORY[0x23192E060](v48, v49);
  MEMORY[0x23192E060](47, 0xE100000000000000);
  v202 = [v2 interactionType];
  v51 = sub_231478798();
  MEMORY[0x23192E060](v51);

  v52 = v201;
  *v41 = v200;
  v41[1] = v52;
  OUTLINED_FUNCTION_11_2();
  v41[2] = v53;
  OUTLINED_FUNCTION_10_1();
  v41[3] = v54;
  v55 = v41[4];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v48, v49, 3, 0x654465746F6D6572, 0xEE00444965636976);
  v41[4] = v200;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v44, v45, 3, 0x7954746E65746E69, 0xEA00000000006570);
  OUTLINED_FUNCTION_4_1();
  v56 = [v2 interactionType];
  v57 = v41[4];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_1();
  sub_2313F1184(v56, 0, 1, 0x7463617265746E69, 0xEF657079546E6F69);
  OUTLINED_FUNCTION_4_1();
  sub_231414BC8(v2, &selRef_voiceID);
  if (v58)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_1_1();
    v59 = OUTLINED_FUNCTION_8_2();
    sub_2313F1184(v59, v60, v61, v62, 0xE700000000000000);
    OUTLINED_FUNCTION_4_1();
  }

  sub_231414BC8(v2, &selRef_roomName);
  if (v63)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_1_1();
    v64 = OUTLINED_FUNCTION_8_2();
    sub_2313F1184(v64, v65, v66, v67, 0xE800000000000000);
    OUTLINED_FUNCTION_4_1();
  }

  v68 = [v2 requestTime];
  if (v68)
  {
    v69 = v68;
    v70 = v198;
    sub_2314768D8();

    sub_231476978();
    v71 = sub_231476D38();
    if (__swift_getEnumTagSinglePayload(v15, 1, v71) == 1)
    {
      sub_23140224C(v15, &qword_27DD4D650, &unk_231479A20);
    }

    else
    {
      v79 = v189;
      sub_231476D28();
      (*(*(v71 - 8) + 8))(v15, v71);
      v80 = v191;
      v81 = v192;
      v82 = v79;
      v83 = v193;
      (*(v192 + 32))(v191, v82, v193);
      (*(v81 + 16))(v190, v80, v83);
      sub_231477EB8();
      v84 = v41[4];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_12_4(v85, v86, v87, 0xD000000000000014, 0x8000000231482390);
      OUTLINED_FUNCTION_4_1();
      (*(v81 + 8))(v80, v83);
    }

    v88 = v196;
    sub_231476988();
    v89 = v197;
    if (__swift_getEnumTagSinglePayload(v88, 1, v197) == 1)
    {
      sub_23140224C(v88, &qword_27DD4D648, &qword_231479A18);
    }

    else
    {
      v90 = v194;
      v91 = v195;
      (*(v195 + 32))(v194, v88, v89);
      sub_2314158E4();
      sub_231478798();
      v92 = v41[4];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_12_4(v93, v94, v95, 0xD000000000000014, 0x8000000231482370);
      OUTLINED_FUNCTION_4_1();
      (*(v91 + 8))(v90, v89);
    }

    v96 = sub_2314768F8();
    if ((v97 & 1) == 0)
    {
      v200 = v96;
      sub_231478798();
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_1_1();
      v98 = OUTLINED_FUNCTION_8_2();
      sub_2313F1184(v98, v99, v100, 0x5474736575716572, v101);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476918();
    if ((v102 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v103 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v103, v104, v105, 0xD000000000000010, v106);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768C8();
    if ((v107 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v108 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v108, v109, v110, v111, v112);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476958();
    if ((v113 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v114 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v114, v115, v116, v117, v118);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476928();
    if ((v119 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v120 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v120, v121, v122, v123, v124);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768E8();
    if ((v125 & 1) == 0)
    {
      v126 = v41[4];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_1();
      v127 = OUTLINED_FUNCTION_2_1();
      sub_2313F1184(v127, v128, v129, 0x5474736575716572, v130);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476908();
    if ((v131 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v132 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v132, v133, v134, 0xD000000000000010, v135);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476938();
    if ((v136 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v137 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v137, v138, v139, v140, v141);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476948();
    if ((v142 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v143 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v143, v144, v145, v146, v147);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476888();
    if ((v148 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v149 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v149, v150, v151, v152, v153);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476898();
    if ((v154 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v155 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v155, v156, v157, v158, v159);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768A8();
    if ((v160 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v161 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v161, v162, v163, v164, v165);
      OUTLINED_FUNCTION_4_1();
    }

    sub_231476968();
    if ((v166 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v167 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v167, v168, v169, v170, v171);
      OUTLINED_FUNCTION_4_1();
    }

    sub_2314768B8();
    if ((v172 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_1_1();
      v173 = OUTLINED_FUNCTION_0_3();
      sub_2313F1184(v173, v174, v175, v176, v177);
      OUTLINED_FUNCTION_4_1();
    }

    (*(v199 + 8))(v70, v187);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
  inited = swift_initStackObject();
  v199 = xmmword_231479580;
  *(inited + 16) = xmmword_231479580;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_1();
  *(v179 + 32) = v181;
  *(v179 + 40) = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
  v182 = *(v188 + 72);
  v183 = (*(v188 + 80) + 32) & ~*(v188 + 80);
  v184 = swift_allocObject();
  *(v184 + 16) = v199;
  sub_2313F0868(v41, v184 + v183);
  *(inited + 48) = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
  v73 = sub_231477DC8();
  sub_2313F09B4(v41);
  return v73;
}

unint64_t sub_2314158E4()
{
  result = qword_27DD4D660;
  if (!qword_27DD4D660)
  {
    sub_231476D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D660);
  }

  return result;
}

uint64_t sub_23141593C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479A40;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000002314823B0;
  v3 = sub_231414BC8(v1, &selRef_candidateBundles);
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x80000002314823D0;
  v8 = sub_231414BC8(v1, &selRef_candidateActions);
  *(inited + 128) = v5;
  *(inited + 136) = &protocol witness table for String;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x80000002314823F0;
  result = sub_231414BC8(v1, &selRef_selectedCandidateIndex);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    result = 0;
    v14 = 0xE000000000000000;
  }

  v15 = HIBYTE(v14) & 0xF;
  v16 = result & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    *(inited + 184) = MEMORY[0x277D83B88];
    *(inited + 192) = &protocol witness table for Int;
    goto LABEL_86;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v19 = sub_231415D8C(result, v14, 10);
    v35 = v36;
LABEL_85:

    *(inited + 184) = MEMORY[0x277D83B88];
    *(inited + 192) = &protocol witness table for Int;
    if ((v35 & 1) == 0)
    {
LABEL_87:
      *(inited + 160) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
      return sub_231477DC8();
    }

LABEL_86:
    v19 = -1;
    goto LABEL_87;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_231478558();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v21 & v20)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_0_4();
              if (!v21)
              {
                goto LABEL_83;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_2_2();
              if (v21)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_74;
        }

        goto LABEL_83;
      }

      goto LABEL_93;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              goto LABEL_83;
            }

            v32 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_83;
            }

            v19 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_83;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_74;
      }

LABEL_83:
      v19 = 0;
      v24 = 1;
      goto LABEL_84;
    }

    if (v16 >= 1)
    {
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v21 & v20)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_0_4();
            if (!v21)
            {
              goto LABEL_83;
            }

            v19 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_2_2();
            if (v21)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_74:
        v24 = 0;
LABEL_84:
        v35 = v24;
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v15)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_4();
          if (!v21)
          {
            break;
          }

          v19 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v21)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        OUTLINED_FUNCTION_3_1();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_4();
          if (!v21)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v21)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_92;
  }

  if (v15)
  {
    if (v15 != 1)
    {
      OUTLINED_FUNCTION_3_1();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v21 & v20)
        {
          break;
        }

        OUTLINED_FUNCTION_0_4();
        if (!v21)
        {
          break;
        }

        v19 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        OUTLINED_FUNCTION_2_2();
        if (v21)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_94:
  __break(1u);
  return result;
}

unsigned __int8 *sub_231415D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_231478078();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_231416314();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_231478558();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_231416314()
{
  v0 = sub_231416380();
  v4 = sub_2314163B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2314163B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_231477F28();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_231478428();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2313F12D8(v9, 0);
  v12 = sub_231416514(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_231477F28();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_231478558();
LABEL_4:

  return sub_231477F28();
}

unint64_t sub_231416514(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_231431CE8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_231478028();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_231478558();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_231431CE8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_231478008();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t Donation.entities.getter()
{
  v1 = *(v0 + *(type metadata accessor for Donation() + 20));
}

uint64_t Donation.entities.setter()
{
  OUTLINED_FUNCTION_91();
  v2 = *(type metadata accessor for Donation() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*Donation.entities.modify())()
{
  OUTLINED_FUNCTION_91();
  v0 = *(type metadata accessor for Donation() + 20);
  return nullsub_1;
}

uint64_t Donation.updateStrategy.getter()
{
  OUTLINED_FUNCTION_92();
  result = type metadata accessor for Donation();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t Donation.updateStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Donation();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Donation.updateStrategy.modify())()
{
  OUTLINED_FUNCTION_91();
  v0 = *(type metadata accessor for Donation() + 24);
  return nullsub_1;
}

uint64_t Donation.userDonator.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for Donation() + 32);
  result = sub_2313EADE8(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t (*Donation.userDonator.modify())()
{
  OUTLINED_FUNCTION_91();
  v0 = *(type metadata accessor for Donation() + 32);
  return nullsub_1;
}

void Donation.init(interaction:entities:userDonator:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_73();
  v3 = v2;
  v5 = *v4;
  v6 = v4[1];
  v7 = type metadata accessor for Donation();
  v8 = OUTLINED_FUNCTION_132_0(v7);
  v10 = v3 + v9;
  *(v3 + v9) = xmmword_231479AA0;
  v11 = v8[9];
  v12 = v8[10];
  *(v3 + v12) = 0;
  *(v3 + v8[7]) = 0;
  OUTLINED_FUNCTION_9_2();
  sub_2313F31EC();
  *(v3 + *(v1 + 20)) = v0;
  sub_2313EADE8(*v10, *(v10 + 8));
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v3 + v11) = 1;
  *(v3 + v12) = 0;
  OUTLINED_FUNCTION_16();
}

uint64_t Donation.init(interaction:entities:isDirectDonation:devicePlatform:isLocal:userDonator:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, char *a3@<X3>, char a4@<W4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a5;
  v11 = a5[1];
  v12 = type metadata accessor for Donation();
  *(a6 + v12[6]) = 0;
  v13 = a6 + v12[8];
  *v13 = xmmword_231479AA0;
  v14 = v12[10];
  *(a6 + v14) = 0;
  v15 = a2 ^ 1;
  v16 = v12[9];
  *(a6 + v12[7]) = v15;
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_42();
  sub_2313F31EC();
  *(a6 + v12[5]) = a1;
  result = sub_2313EADE8(*v13, *(v13 + 8));
  *v13 = v10;
  *(v13 + 8) = v11;
  *(a6 + v16) = a4;
  *(a6 + v14) = v9;
  return result;
}

uint64_t sub_231416AC4(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v4 = sub_231477B68();
  __swift_project_value_buffer(v4, qword_280C3D970);
  v5 = a1;
  v6 = sub_231477B58();
  v7 = sub_2314782B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8D0, &qword_231479558);
    v11 = sub_231477EB8();
    v13 = sub_2313EB684(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2313E1000, v6, v7, "error when making donation: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23192F1F0](v9, -1, -1);
    MEMORY[0x23192F1F0](v8, -1, -1);
  }

  return a2(a1, 1);
}

void sub_231416C64(char a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v3 = sub_231477B68();
    __swift_project_value_buffer(v3, qword_280C3D970);
    v4 = sub_231477B58();
    v5 = sub_2314782A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2313E1000, v4, v5, "donation succeeded", v6, 2u);
      MEMORY[0x23192F1F0](v6, -1, -1);
    }

    a2(0, 0);
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v7 = sub_231477B68();
    __swift_project_value_buffer(v7, qword_280C3D970);
    v8 = sub_231477B58();
    v9 = sub_2314782B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2313E1000, v8, v9, "donation failed", v10, 2u);
      MEMORY[0x23192F1F0](v10, -1, -1);
    }

    sub_23141FA18();
    v11 = swift_allocError();
    *v12 = 0;
    a2(v11, 1);
  }
}

uint64_t sub_231416E68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void Donation.donate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v252 = v20;
  v253 = v21;
  v25 = OUTLINED_FUNCTION_97();
  v245 = type metadata accessor for Interaction(v25);
  v26 = OUTLINED_FUNCTION_3(v245);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_0();
  v244 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v31);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  v32 = OUTLINED_FUNCTION_3(v240);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v36);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v37 = OUTLINED_FUNCTION_3(v250);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_0();
  v243 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_39();
  v247 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_81();
  v251 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_81();
  v246 = v54;
  v55 = OUTLINED_FUNCTION_47();
  v242 = type metadata accessor for _NewInteraction(v55);
  v56 = OUTLINED_FUNCTION_3(v242);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_0();
  v249 = v59;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D698, &qword_231479AD8);
  v60 = OUTLINED_FUNCTION_3(v248);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_34();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = &v231 - v67;
  v69 = type metadata accessor for Donation();
  v70 = OUTLINED_FUNCTION_3(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_34();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_142();
  v77 = sub_231477008();
  v78 = OUTLINED_FUNCTION_4(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2();
  v85 = v84 - v83;
  v86 = v20[1];
  v256 = *v20;
  *v257 = v86;
  *&v257[9] = *(v20 + 25);
  v87 = v253;
  v88 = sub_2313F4D04();
  if (v87)
  {
    goto LABEL_29;
  }

  v235 = v75;
  Value = v22;
  v236 = v69;
  v234 = v68;
  v237 = 0;
  v253 = v88;
  sub_231477058();
  v89 = sub_231476FD8();
  v90 = (*(v80 + 8))(v85, v77);
  if (v89)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v91 = sub_231477B68();
    __swift_project_value_buffer(v91, qword_280C3D970);
    v92 = sub_231477B58();
    sub_2314782C8();
    v93 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_80(v95);
      OUTLINED_FUNCTION_32_0(&dword_2313E1000, v96, v97, "InteractionStore donation failed. Cannot write to a readonly db connection.");
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    sub_23141ECFC();
    swift_allocError();
    *v98 = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  v99 = v252;
  if (*(v252 + *(v236 + 24)))
  {
    v100 = v65;
  }

  else
  {
    MEMORY[0x28223BE20](v90);
    *(&v231 - 2) = v99;
    sub_2314770A8();
    v112 = v237;
    sub_2314770F8();
    v237 = v112;
    if (v112)
    {
LABEL_15:

      goto LABEL_29;
    }

    if (v256)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v131 = sub_231477B68();
      __swift_project_value_buffer(v131, qword_280C3D970);
      v132 = sub_231477B58();
      sub_2314782A8();
      v133 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v135);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v136, v137, "Donation stopped. The donation ID already exists in the db history.");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      goto LABEL_29;
    }

    v100 = v65;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v101 = sub_231477B68();
  v102 = __swift_project_value_buffer(v101, qword_280C3D970);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_105(v257);
  sub_2313EB328();
  v103 = sub_231477B58();
  v104 = sub_2314782A8();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v235 = v102;
    v106 = v105;
    *&v256 = swift_slowAlloc();
    v232 = v100;
    v107 = v256;
    *v106 = 136315138;
    OUTLINED_FUNCTION_11_3();
    sub_2313EB328();
    v108 = sub_231477EB8();
    v110 = v109;
    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
    v111 = sub_2313EB684(v108, v110, &v256);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_2313E1000, v103, v104, "InteractionStore donation started. Donation: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    v100 = v232;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    v102 = v235;
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_10_2();
    sub_2313EB380();
  }

  v113 = v234;
  v114 = v251;
  v115 = v248;
  v116 = v237;
  sub_231418314();
  if (v116)
  {
    goto LABEL_15;
  }

  v235 = v102;
  *&v113[*(v115 + 48)] = v117;
  OUTLINED_FUNCTION_138();
  sub_2313E93D4();
  v118 = *(v100 + *(v115 + 48));

  OUTLINED_FUNCTION_23_0();
  v119 = v249;
  sub_2313F31EC();
  OUTLINED_FUNCTION_138();
  sub_2313E93D4();
  v248 = *(v100 + *(v115 + 48));
  OUTLINED_FUNCTION_5_1();
  sub_2313EB380();
  v120 = v119[1];
  *v114 = *v119;
  v114[1] = v120;
  Value = type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  a10 = 0;
  sub_2313E93D4();

  v121 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_93();
  sub_2313E8CDC();
  v122 = v256;
  v123 = v257[0];
  v124 = *&v257[8];
  v125 = v121;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v210 = *(v121 + 16);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v125 = v211;
  }

  v127 = *(v125 + 16);
  v126 = *(v125 + 24);
  v128 = v127 + 1;
  if (v127 >= v126 >> 1)
  {
    OUTLINED_FUNCTION_37_0(v126);
    sub_2313F3244();
    v125 = v212;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v251, &unk_27DD4D680, &qword_2314795C0);
  *(v125 + 16) = v128;
  v129 = v125 + 32 * v127;
  *(v129 + 32) = v122;
  *(v129 + 48) = v123;
  *(v129 + 56) = v124;
  OUTLINED_FUNCTION_124();
  v130 = v246;
  sub_23143BA9C();
  v237 = 0;

  OUTLINED_FUNCTION_105(&a11);
  sub_2313E93D4();
  v138 = v245;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v128, 1, v245);
  sub_2313E937C(v128, &qword_27DD4D690, &qword_231479AD0);
  v140 = v249;
  if (EnumTagSinglePayload == 1)
  {
    v251 = *(v242 + 52);
    OUTLINED_FUNCTION_139(&a13);
    sub_231476BE8();
    swift_storeEnumTagMultiPayload();
    sub_231403238();
    v255 = 0;
    sub_2313E93D4();
    v141 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_150();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v213 = *(v141 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v141 = v214;
    }

    v142 = *(v141 + 24);
    if (*(v141 + 16) >= v142 >> 1)
    {
      OUTLINED_FUNCTION_20(v142);
      sub_2313F3244();
      v141 = v215;
    }

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_83(&a12);
    sub_2313E937C(v239, &qword_27DD4D568, &qword_2314795C8);
    OUTLINED_FUNCTION_107();
    v143 = v255;
    sub_231476BE8();
    swift_storeEnumTagMultiPayload();
    sub_231403238();
    v254 = v143;
    OUTLINED_FUNCTION_130();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_70();
    v144 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v216 = *(v141 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v144 = v217;
    }

    v146 = *(v144 + 16);
    v145 = *(v144 + 24);
    if (v146 >= v145 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v145);
      sub_2313F3244();
      v144 = v218;
    }

    OUTLINED_FUNCTION_83(&a15);
    sub_2313E937C(v241, &qword_27DD4D568, &qword_2314795C8);
    *(v144 + 16) = v146 + 1;
    OUTLINED_FUNCTION_71(v144 + 32 * v146);
    v147 = v254;
    v148 = v249[5];
    OUTLINED_FUNCTION_79(v249[4]);
    OUTLINED_FUNCTION_115();
    v255 = v147;
    OUTLINED_FUNCTION_104();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    OUTLINED_FUNCTION_70();
    v149 = v144;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v219 = *(v144 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v149 = v220;
    }

    v151 = *(v149 + 16);
    v150 = *(v149 + 24);
    if (v151 >= v150 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v150);
      sub_2313F3244();
      v149 = v221;
    }

    OUTLINED_FUNCTION_83(&a17);
    *(v149 + 16) = v151 + 1;
    OUTLINED_FUNCTION_71(v149 + 32 * v151);
    v152 = v255;
    v153 = v249[7];
    OUTLINED_FUNCTION_79(v249[6]);
    OUTLINED_FUNCTION_115();
    v254 = v152;
    OUTLINED_FUNCTION_104();
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    OUTLINED_FUNCTION_70();
    v154 = v149;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v222 = *(v149 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v154 = v223;
    }

    v156 = *(v154 + 16);
    v155 = *(v154 + 24);
    if (v156 >= v155 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v155);
      sub_2313F3244();
      v154 = v224;
    }

    OUTLINED_FUNCTION_83(&a18);
    *(v154 + 16) = v156 + 1;
    OUTLINED_FUNCTION_71(v154 + 32 * v156);
    v157 = v254;
    v140 = v249;
    v158 = v249[9];
    OUTLINED_FUNCTION_79(v249[8]);
    OUTLINED_FUNCTION_115();
    v255 = v157;
    sub_2313E93D4();

    OUTLINED_FUNCTION_93();
    sub_2313E8CDC();
    v160 = *(&v256 + 1);
    v159 = v256;
    v161 = v257[0];
    v162 = *&v257[8];
    v163 = v154;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = *(v154 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v163 = v226;
    }

    v165 = *(v163 + 16);
    v164 = *(v163 + 24);
    if (v165 >= v164 >> 1)
    {
      OUTLINED_FUNCTION_38_0(v164);
      sub_2313F3244();
      v163 = v227;
    }

    sub_2313E937C(v243, &unk_27DD4D680, &qword_2314795C0);
    *(v163 + 16) = v165 + 1;
    v166 = v163 + 32 * v165;
    *(v166 + 32) = v159;
    *(v166 + 40) = v160;
    *(v166 + 48) = v161;
    *(v166 + 56) = v162;
    v167 = *(v140 + *(v242 + 64));
    a10 = v255;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
    OUTLINED_FUNCTION_120();
    v169 = *(v168 + 72);
    v128 = OUTLINED_FUNCTION_114();
    *(v128 + 16) = xmmword_231479580;
    *(v128 + v160) = v167;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();

    v170 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v228 = *(v163 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_2313F3244();
      v170 = v229;
    }

    v172 = *(v170 + 16);
    v171 = *(v170 + 24);
    v173 = v244;
    if (v172 >= v171 >> 1)
    {
      OUTLINED_FUNCTION_20(v171);
      sub_2313F3244();
      v170 = v230;
    }

    *(v170 + 16) = v172 + 1;
    v174 = v170 + 32 * v172;
    *(v174 + 32) = xmmword_231479A90;
    *(v174 + 48) = 0;
    *(v174 + 56) = v128;
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_133(&v258);
    v175 = v237;
    sub_23143BA9C();
    if (v175)
    {

      v176 = OUTLINED_FUNCTION_96();
      sub_2313E937C(v176, v177, v178);
      sub_2313E937C(v246, &qword_27DD4D690, &qword_231479AD0);
      OUTLINED_FUNCTION_5_1();
      sub_2313EB380();
      goto LABEL_29;
    }

    v179 = &qword_231479AD0;
    v130 = v246;
    sub_2313E937C(v246, &qword_27DD4D690, &qword_231479AD0);
    OUTLINED_FUNCTION_99();
    sub_2314030BC();
    v138 = v245;
  }

  else
  {
    v179 = v237;
    v173 = v244;
  }

  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_105(&a10);
  sub_2313EB328();
  OUTLINED_FUNCTION_110(&v257[24]);
  v181 = 0x30200u >> (8 * v180);
  if (v182)
  {
    LOBYTE(v181) = 1;
  }

  *(v128 + *(v138 + 64)) = v181;
  v183 = v238;
  sub_2313E93D4();
  if (__swift_getEnumTagSinglePayload(v183, 1, v138) == 1)
  {
    v184 = v179;
    v185 = sub_2313E937C(v183, &qword_27DD4D690, &qword_231479AD0);
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    sub_2313F31EC();
    v184 = v179;
    if (*(v173 + 80) == 1)
    {
      v186 = sub_231477B58();
      sub_2314782A8();
      v187 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_80(v189);
        OUTLINED_FUNCTION_32_0(&dword_2313E1000, v190, v191, "donation is replacing existing interaction");
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      *(v140 + 81) = 1;
      *(v128 + 80) = 1;
      v193 = *v173;
      v192 = v173[1];

      OUTLINED_FUNCTION_4_2();
      sub_2313EB380();
      v194 = *(v128 + 8);

      *v128 = v193;
      *(v128 + 8) = v192;
    }

    else
    {
      OUTLINED_FUNCTION_4_2();
      v185 = sub_2313EB380();
    }
  }

  MEMORY[0x28223BE20](v185);
  *(&v231 - 4) = v130;
  *(&v231 - 3) = v140;
  *(&v231 - 2) = v248;
  sub_2314770A8();
  sub_2314770F8();
  if (v184)
  {

    v195 = sub_231477B58();
    sub_2314782A8();
    v196 = OUTLINED_FUNCTION_44();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_80(v198);
      OUTLINED_FUNCTION_32_0(&dword_2313E1000, v199, v200, "Failed to write to legacy SiriRemembersDB");
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }
  }

  else
  {
  }

  v201 = sub_231477B58();
  sub_2314782A8();
  v202 = OUTLINED_FUNCTION_44();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_80(v204);
    OUTLINED_FUNCTION_32_0(&dword_2313E1000, v205, v206, "InteractionStore donation succeeded");
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v207 = OUTLINED_FUNCTION_96();
  sub_2313E937C(v207, v208, v209);
  sub_2313E937C(v130, &qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_5_1();
  sub_2313EB380();
  OUTLINED_FUNCTION_4_2();
  sub_2313EB380();
LABEL_29:
  OUTLINED_FUNCTION_62();
}

void sub_231418314()
{
  OUTLINED_FUNCTION_64();
  v236 = v1;
  v3 = v0;
  v207 = v4;
  v242 = *MEMORY[0x277D85DE8];
  v5 = sub_231477D58();
  v6 = OUTLINED_FUNCTION_4(v5);
  v221 = v7;
  v222 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v10);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210);
  OUTLINED_FUNCTION_4(v217);
  v218 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v235 = &v197 - v15;
  v16 = OUTLINED_FUNCTION_47();
  v216 = type metadata accessor for _NewEntity(v16);
  v17 = OUTLINED_FUNCTION_3(v216);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v20);
  v214 = type metadata accessor for Entity();
  v21 = OUTLINED_FUNCTION_4(v214);
  v219 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  v233 = v25;
  OUTLINED_FUNCTION_47();
  v226 = sub_231477D88();
  v26 = OUTLINED_FUNCTION_4(v226);
  v223 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  v237 = v30;
  OUTLINED_FUNCTION_47();
  v31 = sub_231476CA8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  v37 = *(v3 + 1);
  v210 = *v3;
  v38 = *(v3 + 3);
  v209 = *(v3 + 2);
  v39 = *(v3 + 5);
  v206 = *(v3 + 4);
  v40 = *(v3 + 9);
  v205 = *(v3 + 8);
  v41 = *(v3 + 7);
  v204 = *(v3 + 6);
  v234 = v41;
  v212 = type metadata accessor for Donation();
  LODWORD(v201) = v3[v212[7]];
  v200 = v3[80];
  OUTLINED_FUNCTION_140(v3[82]);
  v202 = v3[81];
  v42 = type metadata accessor for Interaction(0);
  v43 = v42[12];
  v227 = v2;
  v228 = v34;
  v45 = *(v34 + 16);
  v44 = v34 + 16;
  v224 = v31;
  v213 = v45;
  v45(v2, &v3[v43], v31);
  v199 = *&v3[v42[13]];
  v46 = *&v3[v42[19]];
  v47 = sub_2314767B8();
  OUTLINED_FUNCTION_74(v47);
  swift_allocObject();
  v229 = v37;

  v230 = v38;

  v231 = v39;

  v232 = v40;

  sub_2314767A8();
  v48 = v236;
  v49 = sub_2313F6380();
  v211 = v50;
  v236 = v48;
  if (v48)
  {
    (*(v228 + 8))(v227, v224);

    goto LABEL_62;
  }

  v51 = v49;
  v52 = v227;
  v225 = v47;
  v208 = v44;

  v53 = v3[v212[9]];
  v54 = v3[v212[10]];
  v55 = *&v3[v212[8] + 8];
  v197 = v3;
  if (v55 > 2)
  {
    v56 = 1;
  }

  else
  {
    v56 = qword_23147A348[v55];
  }

  v198 = v56;
  OUTLINED_FUNCTION_135();
  v57 = v206;
  v58 = v205;
  v59 = v204;
  v60 = v203;
  v61 = v202;
  v62 = v201;
  v63 = v200;
  *v64 = v66;
  *(v64 + 8) = v65;
  *(v64 + 16) = v68;
  *(v64 + 24) = v67;
  *(v64 + 32) = v57;
  *(v64 + 40) = v69;
  *(v64 + 48) = v58;
  *(v64 + 56) = v70;
  *(v64 + 64) = v59;
  *(v64 + 72) = v71;
  *(v64 + 80) = v62;
  *(v64 + 81) = v63;
  *(v64 + 88) = v60;
  *(v64 + 96) = v61;
  v72 = v64;
  v73 = type metadata accessor for _NewInteraction(0);
  v74 = OUTLINED_FUNCTION_125(v73);
  v75(v74, v52, v224);
  *(v72 + SHIDWORD(v239)) = v199;
  v76 = (v72 + v240);
  v77 = v211;
  *v76 = v51;
  v76[1] = v77;
  v78 = v241;
  *(v72 + v241) = 0;
  *(v72 + v242) = v53;
  *(v72 + SHIDWORD(v242)) = v54;
  *(v72 + v243) = v198;
  sub_231477D78();
  v238 = sub_231401864(v46);
  v79 = v236;
  sub_231401B20(&v238);
  if (v79)
  {
LABEL_76:

    __break(1u);
    return;
  }

  v201 = v78;
  v236 = 0;
  v80 = v238;
  v81 = v226;
  v82 = v233;
  v232 = *(v238 + 16);
  if (v232)
  {
    v83 = 0;
    v84 = (v238 + 64);
    v231 = v238;
    while (2)
    {
      if (v83 >= *(v80 + 16))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v86 = *(v84 - 2);
      v85 = *(v84 - 1);
      v87 = *v84;
      v234 = v83 + 1;
      v89 = *(v84 - 4);
      v88 = *(v84 - 3);

      v90 = OUTLINED_FUNCTION_128();
      sub_231401AEC(v90, v91, v87);
      v92 = sub_231401D64(v89, v88);
      v93 = v92;
      v95 = v94;
      switch(v94 >> 62)
      {
        case 1uLL:
          if (v92 >> 32 < v92)
          {
            goto LABEL_67;
          }

          v230 = v85;
          if (!sub_231476848() || !__OFSUB__(v93, sub_231476868()))
          {
            goto LABEL_22;
          }

          goto LABEL_73;
        case 2uLL:
          v100 = *(v92 + 16);
          v229 = *(v92 + 24);
          v101 = sub_231476848();
          v230 = v85;
          if (v101 && __OFSUB__(v100, sub_231476868()))
          {
            goto LABEL_71;
          }

          if (__OFSUB__(v229, v100))
          {
            goto LABEL_68;
          }

LABEL_22:
          sub_231476858();
          OUTLINED_FUNCTION_78();
          sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540]);
          OUTLINED_FUNCTION_17();
          v81 = v226;
          sub_231477D48();
          sub_2313EB8A4(v93, v95);
LABEL_23:
          switch(v87)
          {
            case 1:
              v238 = v86;
              sub_23141F9C4();
              sub_231478458();
              goto LABEL_28;
            case 2:
              sub_2314781C8();
              goto LABEL_28;
            case 4:
              OUTLINED_FUNCTION_74(v225);
              swift_allocObject();
              sub_2314767A8();
              v79 = v236;
              sub_231447358();
              v82 = v233;
              v236 = v79;
              if (v79)
              {
                goto LABEL_75;
              }

              v103 = OUTLINED_FUNCTION_128();
              v105 = 4;
              goto LABEL_31;
            case 5:
              OUTLINED_FUNCTION_74(v225);
              swift_allocObject();
              sub_2314767A8();
              v79 = v236;
              sub_2313F6380();
              v82 = v233;
              v236 = v79;
              if (!v79)
              {

                v103 = OUTLINED_FUNCTION_128();
                v105 = 5;
LABEL_31:
                sub_231403090(v103, v104, v105);
LABEL_32:
                v106 = OUTLINED_FUNCTION_128();
                v108 = sub_231401D64(v106, v107);
                v109 = v108;
                v111 = v110;
                switch(v110 >> 62)
                {
                  case 1uLL:
                    if (v108 >> 32 < v108)
                    {
                      goto LABEL_69;
                    }

                    if (!sub_231476848() || !__OFSUB__(v109, sub_231476868()))
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_74;
                  case 2uLL:
                    v116 = *(v108 + 16);
                    v117 = *(v108 + 24);
                    if (sub_231476848() && __OFSUB__(v116, sub_231476868()))
                    {
                      goto LABEL_72;
                    }

                    if (__OFSUB__(v117, v116))
                    {
                      goto LABEL_70;
                    }

LABEL_43:
                    sub_231476858();
                    OUTLINED_FUNCTION_78();
                    sub_2313F7138(&qword_280C3C920, MEMORY[0x277CC5540]);
                    OUTLINED_FUNCTION_17();
LABEL_44:
                    sub_231477D48();
                    v119 = OUTLINED_FUNCTION_109();
                    sub_2313EB8A4(v119, v120);
                    v80 = v231;
                    v83 = v234;
                    v84 += 40;
                    if (v232 == v234)
                    {
                      goto LABEL_45;
                    }

                    continue;
                  case 3uLL:
                    OUTLINED_FUNCTION_2_3();
                    sub_2313F7138(&qword_280C3C920, v118);
                    OUTLINED_FUNCTION_30_0();
                    goto LABEL_44;
                  default:
                    LOBYTE(v238) = v108;
                    OUTLINED_FUNCTION_129(SBYTE1(v108));
                    OUTLINED_FUNCTION_127(SBYTE4(v109));
                    OUTLINED_FUNCTION_123(SBYTE6(v109));
                    HIBYTE(v238) = v112;
                    LOBYTE(v239) = v111;
                    OUTLINED_FUNCTION_121(SBYTE1(v111));
                    BYTE3(v239) = v113;
                    BYTE4(v239) = v114;
                    BYTE5(v239) = BYTE5(v111);
                    OUTLINED_FUNCTION_2_3();
                    sub_2313F7138(&qword_280C3C920, v115);
                    OUTLINED_FUNCTION_77();
                    goto LABEL_44;
                }
              }

LABEL_75:

              OUTLINED_FUNCTION_131();
              swift_unexpectedError();
              __break(1u);
              break;
            default:
LABEL_28:
              v82 = v233;
              goto LABEL_32;
          }

          break;
        case 3uLL:
          OUTLINED_FUNCTION_2_3();
          sub_2313F7138(&qword_280C3C920, v102);
          OUTLINED_FUNCTION_30_0();
          goto LABEL_18;
        default:
          LOBYTE(v238) = v92;
          OUTLINED_FUNCTION_129(SBYTE1(v92));
          OUTLINED_FUNCTION_127(SBYTE4(v93));
          OUTLINED_FUNCTION_123(SBYTE6(v93));
          HIBYTE(v238) = v96;
          LOBYTE(v239) = v95;
          OUTLINED_FUNCTION_121(SBYTE1(v95));
          BYTE3(v239) = v97;
          BYTE4(v239) = v98;
          BYTE5(v239) = BYTE5(v95);
          OUTLINED_FUNCTION_2_3();
          sub_2313F7138(&qword_280C3C920, v99);
          OUTLINED_FUNCTION_77();
LABEL_18:
          sub_231477D48();
          sub_2313EB8A4(v93, v95);
          goto LABEL_23;
      }

      goto LABEL_76;
    }
  }

LABEL_45:

  v121 = *(v197 + v212[5]);
  v122 = *(v121 + 64);
  v205 = v121 + 64;
  v123 = *(v121 + 32);
  OUTLINED_FUNCTION_36();
  v126 = v125 & v124;
  v204 = (v127 + 63) >> 6;
  v206 = v128;

  v129 = 0;
  v130 = MEMORY[0x277D84F90];
  v131 = v221;
  v132 = v220;
  v133 = v223;
  while (v126)
  {
    v134 = v129;
LABEL_51:
    v203 = (v126 - 1) & v126;
    v202 = v134;
    v135 = __clz(__rbit64(v126)) | (v134 << 6);
    v136 = *(v206 + 56);
    v137 = (*(v206 + 48) + 16 * v135);
    v138 = v137[1];
    v209 = *v137;
    v139 = *(v136 + 8 * v135);
    v212 = *(v139 + 16);
    v211 = v138;

    v140 = 0;
    v210 = v139;
    while (v212 != v140)
    {
      if (v140 >= *(v139 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v234 = v130;
      v141 = *(v219 + 80);
      OUTLINED_FUNCTION_59();
      v143 = *(v142 + 72);
      v233 = v144;
      OUTLINED_FUNCTION_63_0();
      sub_2313EB328();
      v145 = v82[2];
      v146 = v82[3];

      v232 = v145;
      sub_231401D64(v145, v146);
      OUTLINED_FUNCTION_126();
      v147 = v236;
      v148 = v237;
      sub_2314027B0(v149, v150);
      v151 = v147;
      v152 = OUTLINED_FUNCTION_17();
      sub_2313EB8A4(v152, v153);
      v154 = *v82;
      v155 = v82[1];

      v231 = v154;
      sub_231401D64(v154, v155);
      OUTLINED_FUNCTION_126();
      sub_2314027B0(v156, v157);
      v158 = OUTLINED_FUNCTION_17();
      sub_2313EB8A4(v158, v159);
      v160 = v82[4];
      sub_231402974();
      v161 = v82;
      v163 = v162;
      OUTLINED_FUNCTION_74(v225);
      swift_allocObject();
      sub_2314767A8();
      v164 = sub_2313F6380();
      if (v151)
      {
        OUTLINED_FUNCTION_96();

        OUTLINED_FUNCTION_145();

        OUTLINED_FUNCTION_5_1();
        sub_2313EB380();
        (*(v223 + 8))(v148, v226);

        OUTLINED_FUNCTION_13_4();
        sub_2313EB380();
        goto LABEL_62;
      }

      v236 = 0;
      v229 = v165;
      v230 = v164;

      v238 = v163;
      v239 = 0;
      LOBYTE(v240) = 5;

      v166 = sub_231402B08(0, 0xE000000000000000);
      v227 = v167;
      v228 = v166;

      sub_231403090(v238, v239, v240);
      v168 = *(v214 + 28);
      v169 = v216;
      v170 = v215;
      v171 = v224;
      v172 = v146;
      v173 = v213;
      v213(v215 + *(v216 + 32), v161 + v168, v224);
      v173(v170 + *(v169 + 36), v161 + v168, v171);
      v174 = v232;
      *v170 = v231;
      v170[1] = v155;
      v170[2] = v174;
      v170[3] = v172;
      v175 = v229;
      v170[4] = v230;
      v170[5] = v175;
      v176 = v227;
      v170[6] = v228;
      v170[7] = v176;
      v177 = *(v217 + 48);
      OUTLINED_FUNCTION_57_0();
      sub_2313F31EC();

      v130 = v234;
      v82 = v161;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = *(v130 + 16);
        v186 = OUTLINED_FUNCTION_3_0();
        v130 = sub_231403A1C(v186, v187, v188, v130);
      }

      v131 = v221;
      v132 = v220;
      v179 = *(v130 + 16);
      v178 = *(v130 + 24);
      v81 = v226;
      v180 = v218;
      v133 = v223;
      if (v179 >= v178 >> 1)
      {
        v189 = OUTLINED_FUNCTION_20(v178);
        v190 = sub_231403A1C(v189, v179 + 1, 1, v130);
        v180 = v218;
        v130 = v190;
      }

      *(v130 + 16) = v179 + 1;
      v181 = *(v180 + 80);
      OUTLINED_FUNCTION_59();
      v184 = v130 + v182 + *(v183 + 72) * v179;
      sub_2314030BC();
      OUTLINED_FUNCTION_13_4();
      sub_2313EB380();
      v140 = (v233 + 1);
      v139 = v210;
    }

    v129 = v202;
    v126 = v203;
  }

  while (1)
  {
    v134 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      goto LABEL_66;
    }

    if (v134 >= v204)
    {
      break;
    }

    v126 = *(v205 + 8 * v134);
    ++v129;
    if (v126)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_96();

  v192 = v237;
  sub_231477D68();
  v193 = sub_231403B58(v132);
  v194 = *(v131 + 8);
  v195 = OUTLINED_FUNCTION_90();
  v196(v195);
  (*(v133 + 8))(v192, v81);
  *(v207 + v201) = v193;
LABEL_62:
  v191 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2314193A8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F707365526F6ELL;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x8000000231481F60;
  }

  else
  {
    v4 = 0xEA00000000006573;
  }

  if (a2)
  {
    v5 = 0x6E6F707365526F6ELL;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = 0xEA00000000006573;
  }

  else
  {
    v6 = 0x8000000231481F60;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82();
  }

  return v8 & 1;
}

uint64_t sub_231419444(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000797469746ELL;
  v3 = 0x4564696C61766E69;
  v4 = a1;
  v5 = 0x4564696C61766E69;
  v6 = 0xED0000797469746ELL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x6564646962726F66;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x6B53746E65746E69;
      v6 = 0xED00006465707069;
      break;
    default:
      v5 = 0xD000000000000012;
      v6 = 0x8000000231481D90;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x6564646962726F66;
      v2 = 0xE90000000000006ELL;
      break;
    case 3:
      v3 = 0x6B53746E65746E69;
      v2 = 0xED00006465707069;
      break;
    default:
      v3 = 0xD000000000000012;
      v2 = 0x8000000231481D90;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2314787C8();
  }

  return v8 & 1;
}

uint64_t sub_2314195BC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "SendMessageIntent";
  v4 = "SendMessageIntent";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "databaseURLIsInvalid";
      break;
    case 2:
      v4 = "databaseWouldNotOpen";
      v6 = 0xD00000000000001DLL;
      break;
    case 3:
      v4 = "cannotWriteToReadonlyDatabase";
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "databaseURLIsInvalid";
      break;
    case 2:
      v3 = "databaseWouldNotOpen";
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v3 = "cannotWriteToReadonlyDatabase";
      v2 = 0xD000000000000016;
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
    v8 = OUTLINED_FUNCTION_82();
  }

  return v8 & 1;
}

uint64_t sub_2314196D0(unsigned __int8 a1, char a2)
{
  v2 = 0x6449656369766564;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6449656369766564;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E69616D6F64;
      break;
    case 2:
      v6 = 0x656C646E7562;
      goto LABEL_8;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v5 = 0x676E696C646E6168;
      v3 = 0xEE00737574617453;
      break;
    case 5:
      v5 = 0x6F69746365726964;
      v3 = 0xE90000000000006ELL;
      break;
    case 6:
      v5 = 0x6574616E6F447369;
      v3 = 0xEF69726953794264;
      break;
    case 7:
      v6 = 0x797469746E65;
LABEL_8:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v5 = 0x7954797469746E65;
      v3 = 0xEA00000000006570;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x6C61636F4C7369;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x6E69616D6F64;
      break;
    case 2:
      v8 = 0x656C646E7562;
      goto LABEL_19;
    case 3:
      v7 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    case 4:
      v2 = 0x676E696C646E6168;
      v7 = 0xEE00737574617453;
      break;
    case 5:
      v2 = 0x6F69746365726964;
      v7 = 0xE90000000000006ELL;
      break;
    case 6:
      v2 = 0x6574616E6F447369;
      v7 = 0xEF69726953794264;
      break;
    case 7:
      v8 = 0x797469746E65;
LABEL_19:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v2 = 0x7954797469746E65;
      v7 = 0xEA00000000006570;
      break;
    case 9:
      v7 = 0xE700000000000000;
      v2 = 0x6C61636F4C7369;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_82();
  }

  return v10 & 1;
}

uint64_t sub_231419940(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15649;
      break;
    case 2:
      v4 = 60;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 15676;
      break;
    case 4:
      v4 = 62;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 15678;
      break;
    case 6:
      v3 = 0xE200000000000000;
      v4 = 20041;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v4 = 1162561868;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15649;
      break;
    case 2:
      v6 = 60;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 15676;
      break;
    case 4:
      v6 = 62;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 15678;
      break;
    case 6:
      v5 = 0xE200000000000000;
      v6 = 20041;
      break;
    case 7:
      v5 = 0xE400000000000000;
      v6 = 1162561868;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82();
  }

  return v8 & 1;
}

uint64_t sub_231419A88(unsigned __int8 a1, char a2)
{
  v2 = 0x79636E65636572;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x79636E65636572;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7156326;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1831874918;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1919431014;
      break;
    case 4:
      v5 = 1919432294;
      v3 = 0xE400000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x7961643166;
      break;
    case 6:
      v5 = 0x7961643766;
      v3 = 0xE500000000000000;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x796164383266;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1718511974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7156326;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1831874918;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1919431014;
      break;
    case 4:
      v2 = 1919432294;
      v6 = 0xE400000000000000;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x7961643166;
      break;
    case 6:
      v2 = 0x7961643766;
      v6 = 0xE500000000000000;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x796164383266;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1718511974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_82();
  }

  return v8 & 1;
}