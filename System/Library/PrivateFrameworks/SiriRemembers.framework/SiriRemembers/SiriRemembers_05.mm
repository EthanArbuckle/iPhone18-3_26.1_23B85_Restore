unint64_t sub_23143B5B4()
{
  result = qword_27DD4E050;
  if (!qword_27DD4E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E050);
  }

  return result;
}

unint64_t sub_23143B60C()
{
  result = qword_27DD4E058;
  if (!qword_27DD4E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E058);
  }

  return result;
}

unint64_t sub_23143B664()
{
  result = qword_27DD4E060;
  if (!qword_27DD4E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E060);
  }

  return result;
}

unint64_t sub_23143B6BC()
{
  result = qword_27DD4E068;
  if (!qword_27DD4E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E068);
  }

  return result;
}

unint64_t sub_23143B710()
{
  result = qword_27DD4E070;
  if (!qword_27DD4E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E070);
  }

  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.init()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = v1;
  *(v0 + 16) = 0;
  return result;
}

void InteractionQuery.filter(includingEntitiesFromQuery:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 40);
  v9 = v0[1];
  v10 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v9;
  *(v1 + 16) = v10;
  v11 = *(v3 + 32);

  sub_2313E9688(v4, v5, v6, v7, v11);

  sub_23141CB50();
  v12 = *(*v2 + 16);
  sub_23141CB68(v12);
  v13 = *v2;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 48 * v12;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  *(v14 + 48) = v6;
  *(v14 + 56) = v7;
  *(v14 + 64) = v11;
  *(v14 + 72) = v8;
  OUTLINED_FUNCTION_16();
}

void InteractionQuery.filter<A>(field:value:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_38_1(v1);
  (*(v12 + 16))(v11, v3, v1);
  OUTLINED_FUNCTION_133_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_140_0();
  InteractionQuery.filter<A>(field:filter:)();
  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_133_0();
  v15(v14);
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(direction:)(SiriRemembers::InteractionDirection direction)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(isDonatedBySiri:)(Swift::Bool isDonatedBySiri)
{
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28_3();
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  *v2 = v5;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69();
  v14 = OUTLINED_FUNCTION_162();
  sub_2313E95CC(v14, v15, v16, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_148_0();
  v17 = OUTLINED_FUNCTION_36_0();
  sub_2313E937C(v17, v18, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(v3 + 1);
  OUTLINED_FUNCTION_36_1(v19 + 32 * v3);
  OUTLINED_FUNCTION_16();
  result.filters._rawValue = v21;
  result.entityQueries._rawValue = v20;
  result.includeRemote = v22;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(id:)(Swift::String id)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BA9C()
{
  OUTLINED_FUNCTION_64();
  v40 = v5;
  v41 = v1;
  v39 = v6;
  v7 = type metadata accessor for _Interaction(0);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_73_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E138, &qword_23147CDC8);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_119_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4(v50);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  OUTLINED_FUNCTION_76_0();
  sub_23143D8C4(0, v24, v25, v26, v27, v28, v29, v30, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v44 = v23;
  v31 = v41;
  sub_231477098();
  if (!v31)
  {
    v32 = v39;
    sub_2313E95CC(v4, v3, &qword_27DD4E138, &qword_23147CDC8);
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
    {
      v33 = OUTLINED_FUNCTION_191();
      sub_2314448B0(v33, v34, v35);
      sub_2314015B4(v0, v2, type metadata accessor for _Interaction);
      sub_23143909C(v2, v32);
      OUTLINED_FUNCTION_20_3();
      sub_23140166C(v0, v36);
    }

    sub_2313E937C(v4, &qword_27DD4E138, &qword_23147CDC8);
    v37 = type metadata accessor for Interaction(0);
    OUTLINED_FUNCTION_197(v37);
  }

  (*(v18 + 8))(v23, v50);
  OUTLINED_FUNCTION_62();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(domain:)(Swift::String domain)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BD40()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_43_1();
  v14 = *v0;
  v15 = v0[1];
  v16 = *(v0 + 16);
  *v1 = v6;
  v1[1] = v4;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v8 = v14;
  *(v8 + 8) = v15;
  *(v8 + 16) = v16;
  sub_2313E95CC(v1, v2, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  v17 = OUTLINED_FUNCTION_160();
  sub_2313E937C(v17, v18, &qword_2314795C0);
  OUTLINED_FUNCTION_44_1();
  *(v19 + 48) = v20;
  *(v19 + 56) = v21;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(type:)(Swift::String type)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(bundleId:)(Swift::String bundleId)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v23;
  a20 = v24;
  v177 = v25;
  v27 = v26;
  v29 = v28;
  v165 = v30;
  v164 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_171(v34);
  v189 = sub_231476CA8();
  v35 = OUTLINED_FUNCTION_4(v189);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_0();
  v188 = v40;
  OUTLINED_FUNCTION_47();
  Value = type metadata accessor for QueryValue();
  v41 = OUTLINED_FUNCTION_4(Value);
  v169 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v45);
  v47 = v162 - v46;
  v191 = sub_2314770C8();
  v48 = OUTLINED_FUNCTION_4(v191);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_0();
  v193 = v53;
  OUTLINED_FUNCTION_47();
  v54 = sub_231477468();
  v55 = OUTLINED_FUNCTION_0_0(v54, &a11);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v60);
  v61 = sub_231476EB8();
  v62 = OUTLINED_FUNCTION_0_0(v61, &v191);
  v162[7] = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v66);
  v67 = sub_2314770D8();
  v68 = OUTLINED_FUNCTION_0_0(v67, &v193);
  v162[9] = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v72);
  v73 = sub_231477668();
  v74 = OUTLINED_FUNCTION_14(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v77);
  v78 = sub_2314773C8();
  v79 = OUTLINED_FUNCTION_14(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA90, &qword_23147A7E0);
  OUTLINED_FUNCTION_0_0(v83, &v187);
  v162[3] = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_47_0(v88);
  v176 = v29;
  v178 = v27;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v27);
  v90 = OUTLINED_FUNCTION_4(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v93);
  v166 = v20;
  v94 = *(v20 + 5);
  v168 = v95;
  v96 = *(v95 + 16);
  v179 = v162 - v97;
  v180 = v98;
  v96();
  v174 = *(v94 + 16);
  if (v174)
  {
    v173 = v94 + 32;
    v186 = (v37 + 8);
    v187 = (v37 + 32);
    v190 = v50 + 32;
    v172 = v57 + 8;
    v99 = 0;
    v171 = v168 + 8;
    v170 = v168 + 32;
    do
    {
      v100 = v173 + 32 * v99;
      v101 = *v100;
      v102 = *(v100 + 16);
      v184 = *(v100 + 8);
      v185 = v102;
      v103 = *(v100 + 24);
      v104 = *(v103 + 16);
      if (v104)
      {
        v183 = v99;
        v181 = v101;
        v105 = OUTLINED_FUNCTION_192();
        sub_2313E8ABC(v105, v106);
        *&v198 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v104, 0);
        v107 = v198;
        OUTLINED_FUNCTION_6();
        v182 = v103;
        v109 = v103 + v108;
        v111 = *(v110 + 72);
        do
        {
          sub_2314015B4(v109, v47, type metadata accessor for QueryValue);
          sub_2314015B4(v47, v21, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              MEMORY[0x23192E2E0](*v21);
              break;
            case 2u:
              MEMORY[0x23192E290](*v21);
              break;
            case 3u:
              v119 = *v21;
              v120 = *(v21 + 1);
              sub_231477EE8();

              break;
            case 4u:
              v113 = v188;
              v114 = *v187;
              v115 = OUTLINED_FUNCTION_98();
              v116 = v189;
              v117(v115);
              v118 = sub_231476BC8();
              MEMORY[0x23192E290](v118);
              (*v186)(v113, v116);
              break;
            default:
              v112 = *v21;
              sub_2314781B8();
              break;
          }

          sub_23140166C(v47, type metadata accessor for QueryValue);
          *&v198 = v107;
          v122 = *(v107 + 16);
          v121 = *(v107 + 24);
          if (v122 >= v121 >> 1)
          {
            sub_2313E8C84(v121 > 1, v122 + 1, 1);
            v107 = v198;
          }

          *(v107 + 16) = v122 + 1;
          v123 = *(v50 + 80);
          OUTLINED_FUNCTION_59();
          (*(v50 + 32))(v107 + v124 + *(v50 + 72) * v122, v193, v191);
          v109 += v111;
          --v104;
        }

        while (v104);
        v99 = v183;
        v103 = v182;
        v101 = v181;
      }

      else
      {
        v125 = OUTLINED_FUNCTION_192();
        sub_2313E8ABC(v125, v126);

        v107 = MEMORY[0x277D84F90];
      }

      ++v99;
      OUTLINED_FUNCTION_192();
      *&v198 = sub_2313ED6C8();
      *(&v198 + 1) = v127;
      v128 = 0xE100000000000000;
      OUTLINED_FUNCTION_125_0();
      v129 = 61;
      switch(v185)
      {
        case 1:
          v128 = 0xE200000000000000;
          v129 = 15649;
          break;
        case 2:
          v129 = 60;
          break;
        case 3:
          v128 = 0xE200000000000000;
          v129 = 15676;
          break;
        case 4:
          v129 = 62;
          break;
        case 5:
          v128 = 0xE200000000000000;
          v129 = 15678;
          break;
        case 6:
          v128 = 0xE200000000000000;
          v129 = 20041;
          break;
        case 7:
          v128 = 0xE400000000000000;
          v129 = OUTLINED_FUNCTION_141_0();
          break;
        default:
          break;
      }

      MEMORY[0x23192E060](v129, v128);

      OUTLINED_FUNCTION_125_0();
      if (v185 == 6)
      {
        v130 = *(v103 + 16);
        v131 = sub_231478058();
        v194 = v131;
        v195 = v132;
        v133 = HIBYTE(v132) & 0xF;
        if ((v132 & 0x2000000000000000) == 0)
        {
          v133 = v131 & 0xFFFFFFFFFFFFLL;
        }

        if (v133)
        {
          OUTLINED_FUNCTION_19_6();
          OUTLINED_FUNCTION_153();
          sub_231477FC8();
        }

        sub_231477FB8();
        v134 = OUTLINED_FUNCTION_90_0();
        MEMORY[0x23192E060](v134);
        sub_2313ED930(v101, v184);

        v135 = v194;
        v136 = v195;
      }

      else
      {
        sub_2313ED930(v101, v184);

        v136 = 0xE100000000000000;
        v135 = 63;
      }

      MEMORY[0x23192E060](v135, v136);

      v33 = *(&v198 + 1);
      *&v198 = v107;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
      OUTLINED_FUNCTION_7_7();
      sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8);
      OUTLINED_FUNCTION_92_0(&a10);
      sub_231477478();
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_144_0(&a9);
      v94 = v180;
      sub_2314771B8();

      OUTLINED_FUNCTION_37_1(&v199 + 8);
      v137(&qword_23147A7E8, v175);
      OUTLINED_FUNCTION_37_1(&v199);
      v138 = OUTLINED_FUNCTION_134();
      v139(v138);
      OUTLINED_FUNCTION_37_1(&v198 + 8);
      v140 = OUTLINED_FUNCTION_154();
      v141(v140);
    }

    while (v99 != v174);
  }

  v142 = *(v166 + 32);
  if (v142 == 255)
  {
    (*(v168 + 32))(v167, v179, v180);
  }

  else
  {
    v143 = v166[1];
    v198 = *v166;
    v199 = v143;
    OUTLINED_FUNCTION_195(&v183);
    sub_231477378();
    OUTLINED_FUNCTION_132();
    v144 = sub_231477368();
    LOBYTE(v200) = v142;
    v194 = sub_231423790(v144, v145, v146, v147);
    v195 = v148;
    sub_231423704();
    sub_2314773B8();

    sub_231477368();
    OUTLINED_FUNCTION_139(&v184);
    sub_231477658();
    v200 = 0;
    v198 = 0u;
    v199 = 0u;
    OUTLINED_FUNCTION_145_0(&v185);
    sub_231476E78();
    v149 = sub_231476E98();
    v150 = *(v149 + 48);
    v151 = *(v149 + 52);
    swift_allocObject();

    sub_231476E88();
    *(&v199 + 1) = sub_2314776A8();
    v200 = MEMORY[0x277D0B7F8];
    __swift_allocate_boxed_opaque_existential_1(&v198);
    sub_231477698();
    OUTLINED_FUNCTION_92_0(&v189);
    sub_231476EA8();
    __swift_destroy_boxed_opaque_existential_0(&v198);
    OUTLINED_FUNCTION_107_0(&v188);
    v152 = v162[4];
    sub_231476E68();
    v153 = v163;
    v196 = v163;
    v197 = MEMORY[0x277D0B728];
    __swift_allocate_boxed_opaque_existential_1(&v194);
    OUTLINED_FUNCTION_105_0(&Value);
    (*(v154 + 16))();
    *(&v199 + 1) = v153;
    v200 = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(&v198);
    OUTLINED_FUNCTION_109_0();
    sub_231477208();
    OUTLINED_FUNCTION_13_1(&v190);
    v155(v33, v94);
    __swift_destroy_boxed_opaque_existential_0(&v194);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_109_0();
    sub_2314771C8();

    v156 = *(v21 + 1);
    v157 = OUTLINED_FUNCTION_84_0();
    v158(v157);
    OUTLINED_FUNCTION_13_1(&v186);
    v159(v22, v152);
    OUTLINED_FUNCTION_13_1(&v197);
    v160 = OUTLINED_FUNCTION_134();
    v161(v160);
    __swift_destroy_boxed_opaque_existential_0(&v198);
  }

  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(deviceId:)(Swift::String deviceId)
{
  sub_23143BD40();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(handlingStatus:)(SiriRemembers::InteractionHandlingStatus handlingStatus)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void sub_23143CAF4()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_43_1();
  v14 = *v6;
  v15 = *v0;
  v16 = v0[1];
  v17 = *(v0 + 16);
  *v1 = v14;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *v8 = v15;
  *(v8 + 8) = v16;
  *(v8 + 16) = v17;
  sub_2313E95CC(v1, v2, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_147_0();
  sub_2313E937C(v1, &unk_27DD4D680, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(v4 + 1);
  OUTLINED_FUNCTION_36_1(v18 + 32 * v4);
  OUTLINED_FUNCTION_16();
}

void sub_23143CC70()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  v16 = *v0;
  v15 = v0[1];
  v17 = *(v0 + 16);
  v3(*v5, *(v5 + 8));
  *v7 = v16;
  *(v7 + 8) = v15;
  *(v7 + 16) = v17;
  sub_2313E95CC(v14, v1, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  LOBYTE(v3) = v22[16];
  v18 = v23;
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  v19 = OUTLINED_FUNCTION_134_0();
  sub_2313E937C(v19, v20, &qword_2314795C0);
  OUTLINED_FUNCTION_44_1();
  *(v21 + 48) = v3;
  *(v21 + 56) = v18;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(isLocal:)(Swift::Bool isLocal)
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_73_0();
  v13 = *v2;
  v12 = v2[1];
  if (*(v2 + 16) == 1)
  {
    *v6 = v13;
    *(v6 + 8) = v12;
    *(v6 + 16) = 1;
LABEL_7:

    OUTLINED_FUNCTION_16();
  }

  else
  {
    v14 = *(v12 + 16) + 1;
    v15 = 40;
    while (--v14)
    {
      v16 = *(v12 + v15);
      v15 += 32;
      if (v16 == 15)
      {
        *v6 = v13;
        *(v6 + 8) = v12;
        *(v6 + 16) = 0;
        goto LABEL_7;
      }
    }

    *v1 = v4 & 1;
    type metadata accessor for QueryValue();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *v6 = v13;
    *(v6 + 8) = v12;
    *(v6 + 16) = 0;
    v21 = OUTLINED_FUNCTION_175();
    sub_2313E95CC(v21, v22, &unk_27DD4D680, &qword_2314795C0);

    OUTLINED_FUNCTION_71_0();
    sub_2313E8CDC();
    sub_2313F3390();
    v23 = *(*(v6 + 8) + 16);
    sub_2313F34A0(v23);
    sub_2313E937C(v1, &unk_27DD4D680, &qword_2314795C0);
    OUTLINED_FUNCTION_62_1(v23 + 1);
    v25 = v24 + 32 * v23;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    OUTLINED_FUNCTION_118_0(v25);
    OUTLINED_FUNCTION_16();
  }

  result.filters._rawValue = v19;
  result.entityQueries._rawValue = v18;
  result.includeRemote = v20;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.includingRemote()()
{
  v2 = v1[1];
  *v0 = *v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 1;

  result.filters._rawValue = v4;
  result.entityQueries._rawValue = v3;
  result.includeRemote = v5;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(devicePlatform:)(SiriRemembers::InteractionDevicePlatform devicePlatform)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filter(userDonatorType:)(SiriRemembers::UserDonatorType userDonatorType)
{
  sub_23143CAF4();
  result.filters._rawValue = v2;
  result.entityQueries._rawValue = v1;
  result.includeRemote = v3;
  return result;
}

void InteractionQuery.filter<A>(field:filter:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v14 = *v0;
  v15 = v0[1];
  v16 = *(v0 + 16);
  OUTLINED_FUNCTION_69();
  *(v1 + 16) = v17;
  (*(v18 + 16))(v13, v7);

  v19 = OUTLINED_FUNCTION_84_0();
  sub_23144F390(v19, v20, v13, v5, v3, v21);
  LOBYTE(v7) = v24[16];
  v22 = v25;
  sub_2313F3390();
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_44_1();
  *(v23 + 48) = v7;
  *(v23 + 56) = v22;
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filterDirectDonationsOnly()()
{
  OUTLINED_FUNCTION_143_0();
  sub_23143D178();
  result.filters._rawValue = v1;
  result.entityQueries._rawValue = v0;
  result.includeRemote = v2;
  return result;
}

void sub_23143D178()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28_3();
  v10 = *v0;
  v11 = v0[1];
  v12 = *(v0 + 16);
  *v1 = v4 & 1;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69();
  v13 = OUTLINED_FUNCTION_162();
  sub_2313E95CC(v13, v14, v15, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_148_0();
  v16 = OUTLINED_FUNCTION_36_0();
  sub_2313E937C(v16, v17, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(v2 + 1);
  OUTLINED_FUNCTION_36_1(v18 + 32 * v2);
  OUTLINED_FUNCTION_16();
}

SiriRemembers::InteractionQuery __swiftcall InteractionQuery.filterExcludeDirectDonations()()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_175();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_3();
  v12 = *v0;
  v13 = v0[1];
  v14 = *(v0 + 16);
  *v1 = 0;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_172();
  sub_2313E95CC(v1, v2, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  sub_2313F3390();
  OUTLINED_FUNCTION_148_0();
  v15 = OUTLINED_FUNCTION_16_5();
  sub_2313E937C(v15, v16, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(v4 + 1);
  v18 = v17 + 32 * v4;
  *(v18 + 32) = v22;
  *(v18 + 40) = v23;
  OUTLINED_FUNCTION_118_0(v18);
  OUTLINED_FUNCTION_16();
  result.filters._rawValue = v20;
  result.entityQueries._rawValue = v19;
  result.includeRemote = v21;
  return result;
}

void InteractionQuery.fetchAll(_:)()
{
  OUTLINED_FUNCTION_64();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_1();
  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *v0;
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  if (v13)
  {
    v39 = *v0;
    v41 = *(v0 + 8);
    v43 = *(v0 + 16);
    v17 = OUTLINED_FUNCTION_112_0(v13);
    sub_23143D660(&v44, v17);
  }

  else
  {
    v49 = v11;
    OUTLINED_FUNCTION_112_0(v13);
    v18 = sub_2313F4D04();
    if (!v1)
    {
      LOBYTE(v45) = v16;
      sub_23143D8C4(0, v19, v20, v21, v22, v23, v24, v25, v35, v18, v36, v38, v40, v42, v14, v15, v45, v46, v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v37 = v6;
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v26, xmmword_231479580);
      v27 = sub_231476D88();
      v28 = MEMORY[0x277D0B6A8];
      v26[3].n128_u64[1] = v27;
      v26[4].n128_u64[0] = v28;
      __swift_allocate_boxed_opaque_existential_1(&v26[2]);
      sub_231476D78();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v29, v30, v31);
      OUTLINED_FUNCTION_192();
      sub_2314773D8();

      v32 = *(v49 + 8);
      v33 = v32(v3, v37);
      MEMORY[0x28223BE20](v33);
      OUTLINED_FUNCTION_120_0();
      *(v34 - 32) = v14;
      *(v34 - 24) = v15;
      *(v34 - 16) = v16;
      *(v34 - 8) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E098, &qword_23147CCC8);
      sub_231477098();

      v32(v2, v37);
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_23143D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v25;
  a20 = v26;
  HIDWORD(v314) = v27;
  OUTLINED_FUNCTION_171(v28);
  v29 = sub_231477668();
  v30 = OUTLINED_FUNCTION_0_0(v29, &v344);
  v313 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E120, &qword_23147CDB0);
  v36 = OUTLINED_FUNCTION_0_0(v35, &v357);
  v312 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v41);
  v42 = sub_2314773C8();
  v43 = OUTLINED_FUNCTION_0_0(v42, &v328);
  v310 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v48);
  v49 = sub_231476EB8();
  v50 = OUTLINED_FUNCTION_0_0(v49, v349);
  v315 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  v56 = OUTLINED_FUNCTION_0_0(v55, &v358);
  v316 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E148, &qword_23147CDE8);
  OUTLINED_FUNCTION_0_0(v64, &v337);
  v319 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v69);
  v70 = sub_231477468();
  v71 = OUTLINED_FUNCTION_0_0(v70, &v363);
  v332 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0E0, &unk_23147CD70);
  OUTLINED_FUNCTION_14(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v80);
  v81 = sub_231476CA8();
  v82 = OUTLINED_FUNCTION_0_0(v81, &a13);
  v331 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v86);
  Value = type metadata accessor for QueryValue();
  v88 = OUTLINED_FUNCTION_0_0(Value, &a14);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_116_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_73_0();
  v92 = sub_2314770C8();
  v93 = OUTLINED_FUNCTION_0_0(v92, &a16);
  v95 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v101 = OUTLINED_FUNCTION_0_0(v100, &v367);
  v322 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_28_3();
  v108 = *(v21 + 8);
  v325 = *v21;
  v109 = OUTLINED_FUNCTION_176(*(v21 + 16));
  type metadata accessor for _Interaction(v109);
  sub_231400E2C(&qword_280C3C5E0, type metadata accessor for _Interaction);
  v340 = v22;
  sub_231476ED8();
  v110 = v108;
  v364 = v108;
  v111 = *(v108 + 16) + 1;
  v112 = 40;
  do
  {
    if (!--v111)
    {
      break;
    }

    v113 = *(v110 + v112);
    v112 += 32;
  }

  while (v113 != 15);
  *(&v366 + 1) = &unk_28460C4B0;
  v114 = sub_2313E3100();
  v367 = v114;
  LOBYTE(v365) = 0;
  v337 = v110;

  sub_231476D68();
  OUTLINED_FUNCTION_199();
  v115 = 2;
  LOBYTE(v365) = 2;
  v116 = sub_231476D68();
  OUTLINED_FUNCTION_199();
  LOBYTE(v365) = 1;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(&v365);
  if ((v116 & 1) == 0)
  {
    *(&v366 + 1) = &unk_28460C4B0;
    v367 = v114;
    LOBYTE(v365) = 0;
    sub_231476D68();
    OUTLINED_FUNCTION_199();
    LOBYTE(v365) = 2;
    sub_231476D68();
    OUTLINED_FUNCTION_199();
    LOBYTE(v365) = 1;
    v117 = sub_231476D68();
    __swift_destroy_boxed_opaque_existential_0(&v365);
    if ((v117 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (!v350)
  {
    if (!v111)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      OUTLINED_FUNCTION_180(&v353);
      v155 = v154 & ~v153;
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_231479580;
      *(v156 + v155) = 1;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_166();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v157 = v337;
      }

      else
      {
        v305 = *(v337 + 16);
        OUTLINED_FUNCTION_3_0();
        sub_2313F3244();
        v157 = v306;
      }

      v159 = *(v157 + 16);
      v158 = *(v157 + 24);
      if (v159 >= v158 >> 1)
      {
        OUTLINED_FUNCTION_20(v158);
        sub_2313F3244();
        v157 = v307;
      }

      *(v157 + 16) = v159 + 1;
      v160 = v157 + 32 * v159;
      *(v160 + 32) = xmmword_23147CC80;
      *(v160 + 48) = 0;
      *(v160 + 56) = v156;
      v364 = v157;
      OUTLINED_FUNCTION_64_0();
      goto LABEL_32;
    }

LABEL_12:
    OUTLINED_FUNCTION_64_0();
    v126 = v337;
    goto LABEL_32;
  }

  swift_bridgeObjectRetain_n();
  v118 = v337;
  swift_bridgeObjectRetain_n();
  v350 = sub_23144490C(v118);
  if (v119)
  {
    OUTLINED_FUNCTION_135_0(*(v118 + 16));
    v120 = v118;
    OUTLINED_FUNCTION_64_0();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    v115 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_87();
    v129 = 32 * v128 + 88;
    v120 = OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_64_0();
    while (1)
    {
      v130 = *(v120 + 16);
      if (v115 == v130)
      {
        break;
      }

      if (v115 >= v130)
      {
        goto LABEL_117;
      }

      v131 = *(v120 + v129 - 16);
      if (v131 != 15)
      {
        if (v115 != v350)
        {
          if (v350 >= v130)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_164();
          LODWORD(v342) = v132;
          v134 = *(v133 + 24);
          v24 = *(v135 - 24);
          OUTLINED_FUNCTION_165();
          v111 = *v136;
          v344 = v137;
          v343 = v138;
          sub_2313E8ABC(v137, v138);
          v338 = v134;

          v347 = v24;
          sub_2313E8ABC(v24, v131);
          v345 = v111;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2314285F0(v120);
            v120 = v152;
          }

          if (v350 >= *(v120 + 16))
          {
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v24 = v343;
          v139 = v344;
          OUTLINED_FUNCTION_87();
          v141 = (v120 + 32 * v140);
          v142 = v141[4];
          v143 = v141[5];
          v111 = v141[7];
          OUTLINED_FUNCTION_101_0(v141);
          *(v144 + 56) = v345;
          sub_2313ED930(v145, v146);

          if (v115 >= *(v120 + 16))
          {
            goto LABEL_120;
          }

          v147 = (v120 + v129);
          v148 = *(v120 + v129 - 24);
          v149 = *(v120 + v129 - 16);
          v150 = *(v120 + v129);
          *(v147 - 3) = v139;
          *(v147 - 2) = v24;
          *(v147 - 8) = v342;
          *v147 = v338;
          sub_2313ED930(v148, v149);

          v364 = v120;
          OUTLINED_FUNCTION_166();
        }

        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_135_0(v151 + 1);
      }

      OUTLINED_FUNCTION_64_0();
      ++v115;
      v129 += 32;
    }
  }

  v121 = *(v120 + 16);
  OUTLINED_FUNCTION_87();
  if (v122 < v123)
  {
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v124 = OUTLINED_FUNCTION_142_0();
  sub_23144472C(v124, v125);
  v126 = v364;
LABEL_32:
  v334 = *(v126 + 16);
  if (v334)
  {
    v161 = 0;
    v333 = v126 + 32;
    v347 = v331 + 32;
    v346 = v331 + 8;
    v350 = v95 + 32;
    v332 += 8;
    v331 = v322 + 8;
    v330 = v322 + 32;
    v337 = v126;
    do
    {
      if (v161 >= *(v126 + 16))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v342 = v161;
      v162 = v333 + 32 * v161;
      v163 = *v162;
      v164 = *(v162 + 8);
      v345 = *(v162 + 16);
      v165 = *(v162 + 24);
      v166 = *(v165 + 16);
      v344 = v164;
      v343 = v163;
      if (v166)
      {
        v167 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v167, v168);
        *&v365 = MEMORY[0x277D84F90];

        sub_2313E8C84(0, v166, 0);
        v169 = v365;
        OUTLINED_FUNCTION_6();
        v338 = v165;
        v171 = v165 + v170;
        v173 = *(v172 + 72);
        do
        {
          sub_2314015B4(v171, v20, type metadata accessor for QueryValue);
          sub_2314015B4(v20, v23, type metadata accessor for QueryValue);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v182 = *v23;
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E2E0]();
              break;
            case 2u:
              v179 = *v23;
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E290]();
              break;
            case 3u:
              v180 = *v23;
              v181 = v23[1];
              OUTLINED_FUNCTION_89();
              sub_231477EE8();

              break;
            case 4u:
              OUTLINED_FUNCTION_37_1(&a11);
              v175 = OUTLINED_FUNCTION_134();
              v176(v175);
              sub_231476BC8();
              OUTLINED_FUNCTION_89();
              MEMORY[0x23192E290]();
              OUTLINED_FUNCTION_37_1(&a10);
              v177 = OUTLINED_FUNCTION_98();
              v178(v177);
              break;
            default:
              v174 = *v23;
              OUTLINED_FUNCTION_89();
              sub_2314781B8();
              break;
          }

          OUTLINED_FUNCTION_8_13();
          sub_23140166C(v20, v183);
          *&v365 = v169;
          v185 = *(v169 + 16);
          v184 = *(v169 + 24);
          if (v185 >= v184 >> 1)
          {
            v188 = OUTLINED_FUNCTION_20(v184);
            sub_2313E8C84(v188, v185 + 1, 1);
            v169 = v365;
          }

          *(v169 + 16) = v185 + 1;
          v186 = *(v95 + 80);
          OUTLINED_FUNCTION_59();
          (*(v95 + 32))(v169 + v187 + *(v95 + 72) * v185, v352, v351);
          v171 += v173;
          --v166;
        }

        while (v166);
        v165 = v338;
        v164 = v344;
        v163 = v343;
      }

      else
      {
        v189 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v189, v190);

        v169 = MEMORY[0x277D84F90];
      }

      v191 = v341;
      if (v164 >= 0x12)
      {
        OUTLINED_FUNCTION_188();
        v196 = OUTLINED_FUNCTION_96_0();
        sub_2313E8ABC(v196, v197);
        MEMORY[0x23192E060](v163, v164);
        sub_2313ED930(v163, v164);
        OUTLINED_FUNCTION_105_0(&v352);
        sub_231477EE8();

        OUTLINED_FUNCTION_37_1(&a15);
        v198(v339, v163, v351);
        v199 = *(v169 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v199 >= *(v169 + 24) >> 1)
        {
          sub_23141CF98();
          v169 = v200;
        }

        v115 = v336;
        v201 = *(v95 + 80);
        OUTLINED_FUNCTION_59();
        v203 = v169 + v202;
        v204 = *(v95 + 72);
        swift_arrayDestroy();
        if (v204 < 0 || v204 >= *(v169 + 16) * v204)
        {
          OUTLINED_FUNCTION_181();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v204)
        {
          OUTLINED_FUNCTION_181();
          swift_arrayInitWithTakeBackToFront();
        }

        ++*(v169 + 16);
        if (v204 >= 1)
        {
          v205 = 0;
          v24 = -v204;
          v111 = v203;
          while ((v205 & 1) == 0)
          {
            OUTLINED_FUNCTION_37_1(&v345);
            v206(v111, v339, v351);
            v111 += v204;
            v205 = 1;
            if (v111 - v204 >= v203)
            {
              goto LABEL_63;
            }
          }

LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

LABEL_63:
        sub_2313E937C(v339, &qword_27DD4E0E0, &unk_23147CD70);
        OUTLINED_FUNCTION_196();

        *&v365 = 0xD000000000000025;
        *(&v365 + 1) = 0x8000000231482D80;
        v207 = 0xE200000000000000;
        v208 = 15649;
        switch(v345)
        {
          case 1:
            break;
          case 2:
            v207 = 0xE100000000000000;
            v208 = 60;
            break;
          case 3:
            v208 = 15676;
            break;
          case 4:
            v207 = 0xE100000000000000;
            v208 = 62;
            break;
          case 5:
            v208 = 15678;
            break;
          case 6:
            v208 = 20041;
            break;
          case 7:
            v207 = 0xE400000000000000;
            v208 = OUTLINED_FUNCTION_141_0();
            break;
          default:
            v207 = 0xE100000000000000;
            v208 = 61;
            break;
        }

        MEMORY[0x23192E060](v208, v207);

        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_158(&a9);
        if (v209)
        {
          v217 = OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_25_2(v217, v218);
          if (v219)
          {
            OUTLINED_FUNCTION_19_6();
            OUTLINED_FUNCTION_153();
            sub_231477FC8();
          }

          OUTLINED_FUNCTION_63_1();
          v220 = OUTLINED_FUNCTION_90_0();
          MEMORY[0x23192E060](v220);
          v221 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_200(v221);

          v224 = v354;
          v223 = v355;
        }

        else
        {
          v222 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_200(v222);

          v223 = 0xE100000000000000;
          v224 = 63;
        }

        MEMORY[0x23192E060](v224, v223);

        v111 = *(&v365 + 1);
        *&v365 = v169;
        v24 = &qword_23147A7E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_7_7();
        sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_155();
        sub_231477478();
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_280C3C8D8, &unk_27DD4D890, qword_23147F7F0);
        OUTLINED_FUNCTION_105_0(&v350);
        v191 = v341;
      }

      else
      {
        v192 = v165;
        OUTLINED_FUNCTION_96_0();
        *&v365 = sub_2313ED6C8();
        *(&v365 + 1) = v193;
        v194 = 0xE100000000000000;
        OUTLINED_FUNCTION_125_0();
        v195 = 61;
        v115 = v336;
        switch(v345)
        {
          case 1:
            v194 = 0xE200000000000000;
            v195 = 15649;
            break;
          case 2:
            v195 = 60;
            break;
          case 3:
            v194 = 0xE200000000000000;
            v195 = 15676;
            break;
          case 4:
            v195 = 62;
            break;
          case 5:
            v194 = 0xE200000000000000;
            v195 = 15678;
            break;
          case 6:
            v194 = 0xE200000000000000;
            v195 = 20041;
            break;
          case 7:
            v194 = 0xE400000000000000;
            v195 = OUTLINED_FUNCTION_141_0();
            break;
          default:
            break;
        }

        MEMORY[0x23192E060](v195, v194);

        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_158(&a9);
        if (v209)
        {
          v210 = *(v192 + 16);
          v211 = sub_231478058();
          OUTLINED_FUNCTION_25_2(v211, v212);
          if (v213)
          {
            OUTLINED_FUNCTION_19_6();
            OUTLINED_FUNCTION_153();
            sub_231477FC8();
          }

          OUTLINED_FUNCTION_63_1();
          v214 = OUTLINED_FUNCTION_90_0();
          MEMORY[0x23192E060](v214);
          OUTLINED_FUNCTION_200(v163);

          v216 = v354;
          v215 = v355;
        }

        else
        {
          OUTLINED_FUNCTION_200(v163);

          v215 = 0xE100000000000000;
          v216 = 63;
        }

        MEMORY[0x23192E060](v216, v215);

        v111 = *(&v365 + 1);
        *&v365 = v169;
        v24 = &qword_23147A7E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_7_7();
        sub_2313ED944(&qword_280C3CEB8, &qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_155();
        sub_231477478();
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_280C3C8D8, &unk_27DD4D890, qword_23147F7F0);
        OUTLINED_FUNCTION_105_0(&v351);
      }

      sub_2314771B8();
      v225 = v342 + 1;

      OUTLINED_FUNCTION_37_1(&v361);
      v226(v115, v335);
      v227 = OUTLINED_FUNCTION_33_1(&v360);
      v228(v227, v191);
      v229 = OUTLINED_FUNCTION_33_1(&v359);
      v230(v229, &qword_27DD4DAA0, v191);
      v161 = v225;
      v126 = v337;
    }

    while (v225 != v334);
  }

  v24 = v325;
  v111 = v321;
  if (!*(v325 + 16))
  {
    v253 = *(v322 + 32);
    OUTLINED_FUNCTION_131_0();
    v254();
    goto LABEL_113;
  }

  v231 = qword_27DD4D258;

  if (v231 != -1)
  {
LABEL_121:
    swift_once();
  }

  __swift_project_value_buffer(v320, qword_27DD5AC80);
  OUTLINED_FUNCTION_60_0(&qword_27DD4E150);
  OUTLINED_FUNCTION_138_0(&v335);
  sub_2314773D8();
  OUTLINED_FUNCTION_72_0(&qword_27DD4E158, &unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_49_0();
  sub_2313ED944(v232, v233, v234);
  OUTLINED_FUNCTION_195(&v334);
  OUTLINED_FUNCTION_126_0();
  sub_2314771D8();
  OUTLINED_FUNCTION_13_1(&v336);
  v235(v115);
  OUTLINED_FUNCTION_139(&v342);
  v237 = *(v236 + 8);
  v238 = OUTLINED_FUNCTION_154();
  v346 = v239;
  v345 = v240;
  v240(v238);
  OUTLINED_FUNCTION_131_0();
  v241();
  v242 = *(v24 + 16);
  v350 = v242 - 1;
  if (v242 != 1)
  {
    if (v242 + 0x4000000000000000 >= 0)
    {
      sub_231477378();
      v255 = 0;
      OUTLINED_FUNCTION_100_0(&v332);
      v349[1] = v256;
      OUTLINED_FUNCTION_100_0(&v333);
      v348 = v257;
      OUTLINED_FUNCTION_100_0(&v330);
      v347 = v258;
      v259 = v24 + 72;
      v352 = xmmword_231479580;
      v115 = MEMORY[0x277D0B7E8];
      v260 = v324;
      v349[0] = v312 + 8;
      while (1)
      {
        v261 = *(v24 + 16);
        if (v255 == v261)
        {
          break;
        }

        if (v255 >= v261)
        {
          goto LABEL_115;
        }

        v351 = v255;
        OUTLINED_FUNCTION_115_0();
        OUTLINED_FUNCTION_105_0(&v355);
        sub_231423254();
        sub_23144467C(&v365);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
        OUTLINED_FUNCTION_41_1();
        v262 = swift_allocObject();
        OUTLINED_FUNCTION_68(v262);
        v263 = sub_2314776A8();
        v262[3].n128_u64[1] = v263;
        v262[4].n128_u64[0] = v115;
        __swift_allocate_boxed_opaque_existential_1(&v262[2]);
        sub_231477698();
        OUTLINED_FUNCTION_2_10();
        sub_2313ED944(&qword_27DD4E168, &qword_27DD4DA78, &qword_23147CDE0);
        OUTLINED_FUNCTION_109_0();
        sub_2314773D8();

        OUTLINED_FUNCTION_41_1();
        v264 = swift_allocObject();
        OUTLINED_FUNCTION_68(v264);
        if (qword_280C3BD20 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v263, qword_280C3D868);
        v264[3].n128_u64[1] = v263;
        v264[4].n128_u64[0] = v115;
        __swift_allocate_boxed_opaque_existential_1(&v264[2]);
        OUTLINED_FUNCTION_38_1(v263);
        v266 = *(v265 + 16);
        v266();
        sub_231444824();
        OUTLINED_FUNCTION_139(&v346);
        sub_231476F08();

        OUTLINED_FUNCTION_107_0(&v352 + 8);
        sub_2314774D8();
        if (qword_280C3BD28 != -1)
        {
          swift_once();
        }

        v267 = __swift_project_value_buffer(v263, qword_280C3D880);
        v362 = v263;
        v363 = MEMORY[0x277D0B7F0];
        v268 = __swift_allocate_boxed_opaque_existential_1(&v360);
        (v266)(v268, v267, v263);
        v357 = sub_2314770D8();
        v358 = MEMORY[0x277D0B730];
        __swift_allocate_boxed_opaque_existential_1(&v354);
        OUTLINED_FUNCTION_130_0();
        sub_231477208();
        OUTLINED_FUNCTION_37_1(&a14);
        v269 = OUTLINED_FUNCTION_139_0();
        v270(v269);
        __swift_destroy_boxed_opaque_existential_0(&v360);
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_27DD4E170, &qword_27DD4E120, &qword_23147CDB0);
        OUTLINED_FUNCTION_107_0(&v356);
        v271 = v328;
        sub_2314771C8();
        v272 = *v349[0];
        (*v349[0])(v260, v271);
        __swift_destroy_boxed_opaque_existential_0(&v354);
        OUTLINED_FUNCTION_55_1();
        sub_2313ED944(&qword_27DD4E178, &qword_27DD4E120, &qword_23147CDB0);
        sub_2314773A8();
        OUTLINED_FUNCTION_87();
        v273 = v351;
        if (v351 < v274)
        {
          OUTLINED_FUNCTION_92_0(&v343);
          OUTLINED_FUNCTION_99_0();
          sub_231477398();
          OUTLINED_FUNCTION_37_1(&a11);
          v275(v271);
        }

        v272(v327, v328);
        v111 = v348;
        v276 = *v348;
        v260 = v324;
        v277 = v329;
        (*v348)(v324, v329);
        v276(v326, v277);
        v259 += 48;
        v255 = v273 + 1;
        v24 = v325;
        v115 = MEMORY[0x277D0B7E8];
      }

      OUTLINED_FUNCTION_92_0(&v327);
      (*(v278 + 16))();
      OUTLINED_FUNCTION_195(&v343);
      sub_231477658();
      sub_231477378();
      OUTLINED_FUNCTION_132();
      sub_231477368();
      sub_231477398();
      OUTLINED_FUNCTION_90_0();
      sub_231477368();
      v357 = v323;
      v358 = MEMORY[0x277D0B7D0];
      __swift_allocate_boxed_opaque_existential_1(&v354);
      sub_231477658();
      OUTLINED_FUNCTION_0_13();
      sub_2313ED944(v279, v280, v281);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_126_0();
      sub_2314771C8();
      v282 = OUTLINED_FUNCTION_33_1(&a11);
      v283(v282);
      v284 = *(v111 + 8);
      v285 = OUTLINED_FUNCTION_139_0();
      v286(v285);
      OUTLINED_FUNCTION_134();
      goto LABEL_112;
    }

    goto LABEL_123;
  }

  v243 = *(v24 + 16);
  if ((v314 & 0x100000000) == 0)
  {
    if (v243)
    {
      v287 = *(v24 + 48);
      v365 = *(v24 + 32);
      v366 = v287;
      OUTLINED_FUNCTION_61_1(*(v24 + 64));
      sub_231423254();
      sub_23144467C(&v365);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v288 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v288, xmmword_231479580);
      v289 = sub_2314776A8();
      v290 = MEMORY[0x277D0B7E8];
      v288[3].n128_u64[1] = v289;
      v288[4].n128_u64[0] = v290;
      __swift_allocate_boxed_opaque_existential_1(&v288[2]);
      sub_231477698();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v291, v292, v293);
      OUTLINED_FUNCTION_175();
      sub_2314773D8();

      sub_2314774D8();
      if (qword_27DD4D270 == -1)
      {
LABEL_111:
        v294 = sub_2314770D8();
        __swift_project_value_buffer(v294, qword_27DD5ACC8);
        v362 = v294;
        v363 = MEMORY[0x277D0B728];
        __swift_allocate_boxed_opaque_existential_1(&v360);
        OUTLINED_FUNCTION_38_1(v294);
        (*(v295 + 16))();
        v357 = v294;
        v358 = MEMORY[0x277D0B730];
        __swift_allocate_boxed_opaque_existential_1(&v354);
        sub_231477208();
        OUTLINED_FUNCTION_13_1(&v332);
        v296 = OUTLINED_FUNCTION_16_5();
        v297(v296);
        __swift_destroy_boxed_opaque_existential_0(&v360);
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(v298, v299, v300);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_126_0();
        sub_2314771C8();
        v301 = *(v316 + 8);
        v302 = OUTLINED_FUNCTION_144();
        v301(v302);
        v303 = OUTLINED_FUNCTION_84_0();
        v301(v303);
        OUTLINED_FUNCTION_154();
LABEL_112:
        OUTLINED_FUNCTION_183();
        v304();
        __swift_destroy_boxed_opaque_existential_0(&v354);
        goto LABEL_113;
      }

LABEL_127:
      swift_once();
      goto LABEL_111;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (!v243)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v244 = *(v24 + 48);
  v365 = *(v24 + 32);
  v366 = v244;
  OUTLINED_FUNCTION_61_1(*(v24 + 64));
  OUTLINED_FUNCTION_194();
  sub_23143BEA8(*(v245 - 256), v246, 0xE800000000000000, v247, v248, v249, v250, v251, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319);
  sub_23144467C(&v365);
  OUTLINED_FUNCTION_183();
  v252();
LABEL_113:
  OUTLINED_FUNCTION_16();
}

void sub_23143F668(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for _Interaction(0);
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Interaction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction);
  v13 = v28;
  v14 = sub_231476F58();
  if (!v13)
  {
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v27 = v9;
      v31 = MEMORY[0x277D84F90];
      v26 = v16;
      sub_23141288C(0, v16, 0);
      v17 = 0;
      v18 = v31;
      v19 = v30;
      v28 = v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      while (v17 < *(v15 + 16))
      {
        sub_2314015B4(v28 + *(v19 + 72) * v17, v7, type metadata accessor for _Interaction);
        sub_2314015B4(v7, v5, type metadata accessor for _Interaction);
        sub_23143909C(v5, v12);
        v20 = v15;
        sub_23140166C(v7, type metadata accessor for _Interaction);
        v31 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_23141288C(v21 > 1, v22 + 1, 1);
          v18 = v31;
        }

        ++v17;
        *(v18 + 16) = v22 + 1;
        sub_2314448B0(v12, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for Interaction);
        v23 = v29;
        v19 = v30;
        v15 = v20;
        if (v26 == v17)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
      v23 = v29;
LABEL_10:
      v24 = sub_23141479C(v18);

      *v23 = v24;
    }
  }
}

void sub_23143FA54(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_231477948();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Interaction(0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230]);
  v12 = v34;
  v13 = sub_231476F58();
  if (!v12)
  {
    v14 = v13;
    v15 = v26;
    v34 = v11;
    v16 = *(v13 + 16);
    if (v16)
    {
      v35 = MEMORY[0x277D84F90];
      v27 = v16;
      sub_23141288C(0, v16, 0);
      v17 = 0;
      v18 = v35;
      v30 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v28 = v14;
      v29 = v2 + 16;
      v31 = (v2 + 8);
      while (v17 < *(v14 + 16))
      {
        v19 = *(v2 + 16);
        v19(v7, v30 + *(v2 + 72) * v17, v1);
        v20 = v33;
        v19(v33, v7, v1);
        sub_2314393C4(v20, v34);
        v21 = v2;
        (*v31)(v7, v1);
        v35 = v18;
        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_23141288C(v22 > 1, v23 + 1, 1);
          v18 = v35;
        }

        ++v17;
        *(v18 + 16) = v23 + 1;
        sub_2314448B0(v34, v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23, type metadata accessor for Interaction);
        v14 = v28;
        v2 = v21;
        if (v27 == v17)
        {

          v15 = v26;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
LABEL_10:
      v24 = sub_23141479C(v18);

      *v15 = v24;
    }
  }
}

void InteractionQuery.fetchAllWithParameters(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = type metadata accessor for Interaction(0);
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = type metadata accessor for _Interaction(0);
  v34 = OUTLINED_FUNCTION_4(v33);
  v209 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  v208 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_81();
  v210 = v40;
  v41 = OUTLINED_FUNCTION_47();
  v42 = type metadata accessor for InteractionWithParameters(v41);
  v43 = OUTLINED_FUNCTION_0_0(v42, &a17);
  v205 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_0();
  v48 = OUTLINED_FUNCTION_28(v47);
  v49 = type metadata accessor for _Entity(v48);
  v50 = OUTLINED_FUNCTION_14(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_0();
  v214 = v53;
  OUTLINED_FUNCTION_47();
  v54 = type metadata accessor for Entity();
  v211 = *(v54 - 8);
  v55 = *(v211 + 64);
  MEMORY[0x28223BE20](v54 - 8);
  OUTLINED_FUNCTION_17_0();
  v218 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_81();
  v217 = v58;
  v59 = OUTLINED_FUNCTION_47();
  v60 = type metadata accessor for _InteractionWithEntity(v59);
  v61 = OUTLINED_FUNCTION_4(v60);
  v212 = v62;
  v213 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_12_0();
  v219 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_61();
  v70 = MEMORY[0x28223BE20](v69);
  v73 = &v196 - v72;
  v74 = *v25;
  v75 = *(v25 + 8);
  v77 = *v20;
  v76 = *(v20 + 8);
  v78 = *(v20 + 16);
  if (v75)
  {
    v220 = *v20;
    v221 = v76;
    v222 = v78;
    OUTLINED_FUNCTION_114_0(v75);
    sub_231440934(&v223, v79, v80, v81, v82, v83, v84, v85, v196, v197, v198, v199, v200, v201, v202, i, v204, v205, v206, v207);
  }

  else
  {
    v201 = v73;
    v199 = v71;
    v200 = v70;
    OUTLINED_FUNCTION_114_0(v75);
    sub_2313F4D04();
    v86 = v21;
    if (!v21)
    {
      v198 = v33;
      v202 = v32;
      v223 = v77;
      v224 = v76;
      v225 = v78;
      OUTLINED_FUNCTION_92_0(&a12);
      v88 = v87;
      sub_23143D8C4(0, v89, v90, v91, v92, v93, v94, v95, v196, v197, v198, v199, v200, v201, v202, i, v204, v205, v206, v207);
      MEMORY[0x28223BE20](v96);
      OUTLINED_FUNCTION_121_0();
      *(v97 - 32) = v77;
      *(v97 - 24) = v76;
      *(v97 - 16) = v78;
      *(v97 - 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A0, &unk_23147CCD0);
      sub_231477098();
      v196 = v88;
      v98 = v224;
      v197 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
      v99 = sub_231477DC8();
      v100 = 0;
      OUTLINED_FUNCTION_135_0(*(v98 + 16));
      v101 = v217;
      for (i = v98; ; v98 = i)
      {
        OUTLINED_FUNCTION_87();
        if (v102 == v100)
        {
          break;
        }

        if (v100 >= *(v98 + 16))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          sub_231478888();
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_6();
        v105 = v219;
        sub_2314015B4(v98 + v103 + *(v104 + 72) * v100, v219, type metadata accessor for _InteractionWithEntity);
        v106 = *v105;
        a10 = v105[1];
        v107 = v105[2];
        v108 = v105 + *(v213 + 24);
        v109 = v214;
        sub_2314015B4(v108, v214, type metadata accessor for _Entity);

        sub_23142011C(v109, v110, v111, v112, v113, v114, v115, v116, v196, v197, v198, v199, v200, v201, v202, i, v204, v205, v206, v207);
        if (v86)
        {
          OUTLINED_FUNCTION_65_1();

          OUTLINED_FUNCTION_102_0();

LABEL_43:
          OUTLINED_FUNCTION_13_1(&a10);
          v194(v201, v200);
          goto LABEL_44;
        }

        v215 = v100;
        v216 = 0;
        OUTLINED_FUNCTION_58_0();
        sub_2314015B4(v101, v218, v117);
        swift_isUniquelyReferenced_nonNull_native();
        v223 = v99;
        sub_23142F62C(v106);
        v118 = *(v99 + 16);
        OUTLINED_FUNCTION_190();
        if (__OFADD__(v121, v122))
        {
          goto LABEL_47;
        }

        v123 = v119;
        v124 = v120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A8, &qword_23147CCE0);
        v125 = sub_2314785F8();
        v126 = v223;
        if (v125)
        {
          v127 = sub_23142F62C(v106);
          if ((v124 & 1) != (v128 & 1))
          {
            goto LABEL_52;
          }

          v123 = v127;
        }

        if ((v124 & 1) == 0)
        {
          sub_231408A8C(&v223);
          OUTLINED_FUNCTION_187();
          *(v129 + 8 * v123) = v106;
          *(*(v126 + 56) + 8 * v123) = v130;
          v131 = *(v126 + 16);
          v132 = __OFADD__(v131, 1);
          v133 = v131 + 1;
          if (v132)
          {
            goto LABEL_49;
          }

          *(v126 + 16) = v133;
        }

        v134 = v126;
        v135 = *(v126 + 56);
        v136 = *(v135 + 8 * v123);
        swift_isUniquelyReferenced_nonNull_native();
        v223 = *(v135 + 8 * v123);
        v137 = v223;
        *(v135 + 8 * v123) = 0x8000000000000000;
        sub_2313F0604();
        v138 = *(v137 + 16);
        OUTLINED_FUNCTION_190();
        if (__OFADD__(v141, v142))
        {
          goto LABEL_48;
        }

        v143 = v139;
        v144 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
        v145 = sub_2314785F8();
        v146 = v223;
        if (v145)
        {
          v147 = sub_2313F0604();
          if ((v144 & 1) != (v148 & 1))
          {
            goto LABEL_52;
          }

          v143 = v147;
        }

        v149 = *(v135 + 8 * v123);
        *(v135 + 8 * v123) = v146;

        v150 = *(v135 + 8 * v123);
        if (v144)
        {

          v86 = v216;
          v99 = v134;
        }

        else
        {
          OUTLINED_FUNCTION_179(v150 + 8 * (v143 >> 6));
          v152 = (v151 + 16 * v143);
          *v152 = a10;
          v152[1] = v107;
          *(*(v150 + 56) + 8 * v143) = MEMORY[0x277D84F90];
          v153 = *(v150 + 16);
          v132 = __OFADD__(v153, 1);
          v154 = v153 + 1;
          v86 = v216;
          if (v132)
          {
            goto LABEL_50;
          }

          v99 = v134;
          *(v150 + 16) = v154;
        }

        v155 = *(v150 + 56);
        v156 = *(v155 + 8 * v143);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v155 + 8 * v143) = v156;
        v101 = v217;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v165 = *(v156 + 16);
          OUTLINED_FUNCTION_3_0();
          sub_23141CB80();
          v156 = v166;
          *(v155 + 8 * v143) = v166;
        }

        v159 = *(v156 + 16);
        v158 = *(v156 + 24);
        if (v159 >= v158 >> 1)
        {
          OUTLINED_FUNCTION_20(v158);
          sub_23141CB80();
          v156 = v167;
          *(v155 + 8 * v143) = v167;
        }

        *(v156 + 16) = v159 + 1;
        OUTLINED_FUNCTION_6();
        v161 = *(v160 + 72);
        OUTLINED_FUNCTION_57_1();
        sub_2314448B0(v218, v162, v163);
        OUTLINED_FUNCTION_56_1();
        sub_23140166C(v101, v164);
        OUTLINED_FUNCTION_65_1();
        v100 = v215 + 1;
      }

      v168 = v197;
      v169 = *(v197 + 16);
      if (v169)
      {
        v223 = MEMORY[0x277D84F90];
        sub_2314128E4(0, v169, 0);
        v170 = 0;
        v171 = v223;
        v172 = *(v209 + 80);
        OUTLINED_FUNCTION_59();
        v174 = v168 + v173;
        v175 = v99;
        while (v170 < *(v168 + 16))
        {
          v176 = v210;
          sub_2314015B4(v174 + *(v209 + 72) * v170, v210, type metadata accessor for _Interaction);
          v177 = v176;
          v178 = v208;
          sub_2314015B4(v177, v208, type metadata accessor for _Interaction);
          sub_23143909C(v178, v202);
          if (v86)
          {
            OUTLINED_FUNCTION_20_3();
            sub_23140166C(v210, v193);

            OUTLINED_FUNCTION_102_0();

            goto LABEL_43;
          }

          if (*(v99 + 16) && (v179 = sub_23142F62C(*v210), (v180 & 1) != 0))
          {
            v181 = *(*(v99 + 56) + 8 * v179);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
            v181 = sub_231477DC8();
          }

          v182 = v207;
          sub_2314448B0(v202, v207, type metadata accessor for Interaction);
          v183 = *(v210 + *(v198 + 68));
          OUTLINED_FUNCTION_20_3();
          sub_23140166C(v184, v185);
          v186 = v206;
          *(v182 + *(v206 + 20)) = v181;
          *(v182 + *(v186 + 24)) = v183;
          v223 = v171;
          v188 = *(v171 + 16);
          v187 = *(v171 + 24);
          if (v188 >= v187 >> 1)
          {
            v192 = OUTLINED_FUNCTION_20(v187);
            sub_2314128E4(v192, v188 + 1, 1);
            v171 = v223;
          }

          ++v170;
          *(v171 + 16) = v188 + 1;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_70_0(v191, v171 + v189 + *(v190 + 72) * v188);
          v86 = 0;
          v168 = v197;
          v99 = v175;
          if (v169 == v170)
          {

            goto LABEL_45;
          }
        }

        goto LABEL_51;
      }

      v171 = MEMORY[0x277D84F90];
LABEL_45:
      sub_2314147A0(v171);

      OUTLINED_FUNCTION_102_0();

      OUTLINED_FUNCTION_13_1(&a10);
      v195(v201, v200);
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_62();
}

void sub_231440934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v235 = v22;
  v26 = v25;
  v27 = type metadata accessor for Interaction(0);
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v232 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBA0, &qword_231480010);
  OUTLINED_FUNCTION_14(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13();
  v37 = OUTLINED_FUNCTION_28(v36);
  v38 = type metadata accessor for InteractionWithParameters(v37);
  v39 = OUTLINED_FUNCTION_0_0(v38, &a11);
  v213 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v44);
  v228 = sub_2314779E8();
  v45 = OUTLINED_FUNCTION_4(v228);
  v234 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_0();
  v227 = v49;
  OUTLINED_FUNCTION_47();
  v50 = type metadata accessor for Entity();
  v225 = *(v50 - 8);
  v51 = *(v225 + 64);
  MEMORY[0x28223BE20](v50 - 8);
  OUTLINED_FUNCTION_17_0();
  v236 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_81();
  v239 = v54;
  OUTLINED_FUNCTION_47();
  v229 = sub_231477948();
  v55 = OUTLINED_FUNCTION_4(v229);
  v218 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_73_0();
  v60 = type metadata accessor for IPInteractionWithEntity();
  v61 = OUTLINED_FUNCTION_4(v60);
  v230 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2();
  v67 = v66 - v65;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  OUTLINED_FUNCTION_4(v68);
  v231 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v72);
  v74 = &v209 - v73;
  v75 = v26[1];
  v237 = *v26;
  v238[0] = v75;
  *(v238 + 9) = *(v26 + 25);
  v76 = *v21;
  v77 = v21[1];
  v78 = *(v21 + 16);
  v79 = sub_2313F4D04();
  if (!v22)
  {
    v223 = v67;
    v222 = v60;
    v226 = v20;
    v224 = v68;
    *&v237 = v76;
    *(&v237 + 1) = v77;
    LOBYTE(v238[0]) = v78;
    v87 = v79;
    sub_2313FEEDC(0, v80, v81, v82, v83, v84, v85, v86, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
    MEMORY[0x28223BE20](v88);
    OUTLINED_FUNCTION_121_0();
    *(v89 - 32) = v76;
    *(v89 - 24) = v77;
    *(v89 - 16) = v78;
    *(v89 - 8) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E100, &qword_23147CD90);
    sub_231477098();
    v90 = 0;
    v209 = v87;
    v210 = v74;
    v92 = *(&v237 + 1);
    v211 = v237;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    v93 = sub_231477DC8();
    v94 = v92;
    v221 = *(v92 + 16);
    v220 = (v234 + 2);
    v95 = v231;
    v96 = v232;
    v97 = v223;
    v98 = v224;
    v99 = v226;
    v100 = v230;
    v219 = v94;
    while (1)
    {
      OUTLINED_FUNCTION_89();
      v103 = v222;
      if (v104 == v102)
      {
        break;
      }

      if (v102 >= *(v101 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        sub_231478888();
        __break(1u);
        return;
      }

      v105 = *(v100 + 80);
      OUTLINED_FUNCTION_59();
      v108 = *(v100 + 72);
      v234 = v109;
      sub_2314015B4(v106 + v107 + v108 * v109, v97, type metadata accessor for IPInteractionWithEntity);
      v110 = *v97;
      v111 = v97[1];
      v112 = v97;
      v113 = v97[2];
      v114 = v112 + *(v103 + 24);
      v115 = v227;
      (*v220)(v227, v114, v228);

      sub_2314204D8(v115, v116, v117, v118, v119, v120, v121, v122, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
      if (v90)
      {
        OUTLINED_FUNCTION_59_1();
        sub_23140166C(v223, v205);

        OUTLINED_FUNCTION_102_0();

        OUTLINED_FUNCTION_142_0();

        (*(v95 + 8))(v210, v98);
        goto LABEL_46;
      }

      v233 = 0;
      OUTLINED_FUNCTION_58_0();
      sub_2314015B4(v239, v236, v123);
      swift_isUniquelyReferenced_nonNull_native();
      *&v237 = v93;
      sub_23142F62C(v110);
      v124 = *(v93 + 16);
      OUTLINED_FUNCTION_190();
      if (__OFADD__(v127, v128))
      {
        goto LABEL_50;
      }

      v129 = v125;
      v130 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0A8, &qword_23147CCE0);
      v131 = sub_2314785F8();
      v132 = v237;
      if (v131)
      {
        v133 = sub_23142F62C(v110);
        if ((v130 & 1) != (v134 & 1))
        {
          goto LABEL_55;
        }

        v129 = v133;
      }

      if ((v130 & 1) == 0)
      {
        sub_231408A8C(&v237);
        OUTLINED_FUNCTION_187();
        *(v135 + 8 * v129) = v110;
        *(*(v132 + 56) + 8 * v129) = v136;
        v137 = *(v132 + 16);
        v138 = __OFADD__(v137, 1);
        v139 = v137 + 1;
        if (v138)
        {
          goto LABEL_53;
        }

        *(v132 + 16) = v139;
      }

      v235 = v132;
      v140 = *(v132 + 56);
      v141 = *(v140 + 8 * v129);
      swift_isUniquelyReferenced_nonNull_native();
      *&v237 = *(v140 + 8 * v129);
      v142 = v237;
      *(v140 + 8 * v129) = 0x8000000000000000;
      OUTLINED_FUNCTION_128();
      sub_2313F0604();
      v143 = *(v142 + 16);
      OUTLINED_FUNCTION_190();
      if (__OFADD__(v146, v147))
      {
        goto LABEL_51;
      }

      v148 = v144;
      v149 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A8, &unk_231479AE0);
      v150 = sub_2314785F8();
      v151 = v237;
      if (v150)
      {
        OUTLINED_FUNCTION_128();
        v152 = sub_2313F0604();
        if ((v149 & 1) != (v153 & 1))
        {
          goto LABEL_55;
        }

        v148 = v152;
      }

      v154 = *(v140 + 8 * v129);
      *(v140 + 8 * v129) = v151;

      v155 = *(v140 + 8 * v129);
      if (v149)
      {
      }

      else
      {
        OUTLINED_FUNCTION_179(v155 + 8 * (v148 >> 6));
        v157 = (v156 + 16 * v148);
        *v157 = v111;
        v157[1] = v113;
        *(*(v155 + 56) + 8 * v148) = MEMORY[0x277D84F90];
        v158 = *(v155 + 16);
        v138 = __OFADD__(v158, 1);
        v159 = v158 + 1;
        if (v138)
        {
          goto LABEL_54;
        }

        *(v155 + 16) = v159;
      }

      v160 = *(v155 + 56);
      v161 = *(v160 + 8 * v148);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v160 + 8 * v148) = v161;
      v95 = v231;
      v96 = v232;
      v98 = v224;
      v99 = v226;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v172 = *(v161 + 16);
        OUTLINED_FUNCTION_3_0();
        sub_23141CB80();
        v161 = v173;
        *(v160 + 8 * v148) = v173;
      }

      v164 = *(v161 + 16);
      v163 = *(v161 + 24);
      if (v164 >= v163 >> 1)
      {
        OUTLINED_FUNCTION_20(v163);
        sub_23141CB80();
        v161 = v174;
        *(v160 + 8 * v148) = v174;
      }

      v100 = v230;
      *(v161 + 16) = v164 + 1;
      OUTLINED_FUNCTION_6();
      v166 = *(v165 + 72);
      OUTLINED_FUNCTION_57_1();
      sub_2314448B0(v167, v168, v169);
      OUTLINED_FUNCTION_56_1();
      sub_23140166C(v239, v170);
      OUTLINED_FUNCTION_59_1();
      v97 = v223;
      sub_23140166C(v223, v171);
      v90 = v233;
      v93 = v235;
      OUTLINED_FUNCTION_142_0();
    }

    v175 = v96;
    v235 = v93;

    v176 = 0;
    v177 = v211;
    v240 = *(v211 + 16);
    v236 = v218 + 16;
    v233 = MEMORY[0x277D84F90];
    v234 = (v218 + 8);
    while (1)
    {
      v178 = v229;
      v179 = v217;
      if (v240 == v176)
      {

        sub_2314147A0(v233);

        v206 = OUTLINED_FUNCTION_159();
        v207(v206, v224);
        goto LABEL_46;
      }

      if (v176 >= *(v177 + 16))
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_6();
      v182 = *(v181 + 16);
      v182(v99, v177 + v180 + *(v181 + 72) * v176, v178);
      v182(v179, v99, v178);
      sub_2314393C4(v179, v175);
      if (v90)
      {
        break;
      }

      v183 = sub_2314778C8();
      if (v184)
      {
        OUTLINED_FUNCTION_66_0();
        v185 = 1;
        v186 = v216;
        v187 = v215;
      }

      else
      {
        v188 = v235;
        if (*(v235 + 16) && (v189 = sub_23142F62C(v183), (v190 & 1) != 0))
        {
          v191 = *(*(v188 + 56) + 8 * v189);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
          v191 = sub_231477DC8();
        }

        v175 = v232;
        v186 = v216;
        sub_2314015B4(v232, v216, type metadata accessor for Interaction);
        v192 = v226;
        v193 = sub_231477868();
        OUTLINED_FUNCTION_66_0();
        v185 = 0;
        v187 = v215;
        *(v186 + *(v215 + 20)) = v191;
        v99 = v192;
        *(v186 + *(v187 + 24)) = v193;
        v177 = v211;
      }

      v194 = v187;
      __swift_storeEnumTagSinglePayload(v186, v185, 1, v187);
      (*v234)(v99, v229);
      if (__swift_getEnumTagSinglePayload(v186, 1, v194) == 1)
      {
        sub_2313E937C(v186, &qword_27DD4EBA0, &qword_231480010);
        ++v176;
      }

      else
      {
        v195 = v212;
        sub_2314448B0(v186, v212, type metadata accessor for InteractionWithParameters);
        sub_2314448B0(v195, v214, type metadata accessor for InteractionWithParameters);
        v196 = v233;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = *(v196 + 16);
          OUTLINED_FUNCTION_3_0();
          sub_23141D5B0();
          v196 = v203;
        }

        v198 = *(v196 + 16);
        v197 = *(v196 + 24);
        if (v198 >= v197 >> 1)
        {
          OUTLINED_FUNCTION_20(v197);
          sub_23141D5B0();
          v196 = v204;
        }

        ++v176;
        *(v196 + 16) = v198 + 1;
        OUTLINED_FUNCTION_6();
        v233 = v196;
        OUTLINED_FUNCTION_70_0(v201, v196 + v199 + *(v200 + 72) * v198);
      }

      v90 = 0;
    }

    (*v234)(v99, v178);

    v208 = OUTLINED_FUNCTION_159();
    v91(v208, v224);
  }

LABEL_46:
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144157C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for _Interaction(0);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E120, &qword_23147CDB0);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E128, &qword_23147CDB8);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction);
  v17 = v56;
  result = sub_231476F58();
  if (!v17)
  {
    v19 = result;
    v20 = v51;
    v46 = 0;
    v47 = v12;
    v48 = v16;
    v56 = v13;
    v21 = *(result + 16);
    v22 = MEMORY[0x277D84F90];
    v49 = a1;
    v45 = result;
    if (v21)
    {
      v58[0] = MEMORY[0x277D84F90];
      sub_23141293C(0, v21, 0);
      v22 = v58[0];
      v23 = v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v24 = *(v20 + 72);
      v25 = v53;
      do
      {
        sub_2314015B4(v23, v6, type metadata accessor for _Interaction);
        v26 = *v6;
        sub_23140166C(v6, type metadata accessor for _Interaction);
        v58[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_23141293C(v27 > 1, v28 + 1, 1);
          v22 = v58[0];
        }

        *(v22 + 16) = v28 + 1;
        *(v22 + 8 * v28 + 32) = v26;
        v23 += v24;
        --v21;
      }

      while (v21);
    }

    else
    {
      v25 = v53;
    }

    v58[7] = sub_231441C90(v22);
    v29 = v55;
    v30 = v48;
    v31 = v52;
    if (qword_280C3BD20 != -1)
    {
      swift_once();
    }

    v32 = sub_2314776A8();
    v33 = __swift_project_value_buffer(v32, qword_280C3D868);
    v57[3] = v32;
    v57[4] = MEMORY[0x277D0B7F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v33, v32);
    v58[3] = sub_2314770D8();
    v58[4] = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E118, &qword_23147CDA8);
    sub_2313ED944(&qword_280C3C128, &qword_27DD4E118, &qword_23147CDA8);
    sub_231478098();
    __swift_destroy_boxed_opaque_existential_0(v57);

    sub_231444824();
    sub_231476EF8();
    __swift_destroy_boxed_opaque_existential_0(v58);
    v35 = v31;
    if (qword_280C3BD18 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E130, &qword_23147CDC0);
    __swift_project_value_buffer(v36, qword_280C3D850);
    sub_2313ED944(&qword_280C3C0D0, &qword_27DD4E120, &qword_23147CDB0);
    sub_2313ED944(&qword_280C3C0E0, &qword_27DD4E130, &qword_23147CDC0);
    v37 = v47;
    v38 = v54;
    sub_2314771D8();
    v39 = *(v25 + 8);
    v39(v35, v38);
    type metadata accessor for _InteractionWithEntity(0);
    sub_2314774C8();
    v39(v37, v38);
    sub_2313ED944(&qword_280C3C0C8, &qword_27DD4E128, &qword_23147CDB8);
    sub_231400E2C(&qword_280C3BCC0, type metadata accessor for _InteractionWithEntity);
    v40 = v56;
    v41 = v46;
    v42 = sub_231476F58();
    result = (*(v29 + 8))(v30, v40);
    if (v41)
    {
    }

    else
    {
      v43 = v50;
      *v50 = v45;
      v43[1] = v42;
    }
  }

  return result;
}

uint64_t sub_231441C90(uint64_t a1)
{
  v2 = MEMORY[0x23192E2C0](*(a1 + 16), MEMORY[0x277D84A28], MEMORY[0x277D84A38]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_23142B038(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_231441D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E108, &qword_23147CD98);
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = &v43 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D0, &qword_23147CD58);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v54);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E110, &qword_23147CDA0);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = sub_231477948();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230]);
  v17 = v59;
  result = sub_231476F58();
  if (!v17)
  {
    v45 = v12;
    v46 = v9;
    v47 = a1;
    v19 = *(result + 16);
    v44 = 0;
    v43 = result;
    if (v19)
    {
      v20 = *(v57 + 16);
      v21 = result + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v58 = *(v57 + 72);
      v59 = v20;
      v22 = (v57 + 8);
      v23 = MEMORY[0x277D84F90];
      v57 += 16;
      do
      {
        v59(v16, v21, v13);
        v24 = sub_2314778C8();
        v26 = v25;
        (*v22)(v16, v13);
        if ((v26 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = *(v23 + 16);
            sub_23141D688();
            v23 = v29;
          }

          v27 = *(v23 + 16);
          if (v27 >= *(v23 + 24) >> 1)
          {
            sub_23141D688();
            v23 = v30;
          }

          *(v23 + 16) = v27 + 1;
          *(v23 + 8 * v27 + 32) = v24;
        }

        v21 += v58;
        --v19;
      }

      while (v19);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v31 = sub_231441C90(v23);
    sub_231477988();
    v61[7] = v31;
    v60[3] = sub_2314776A8();
    v60[4] = MEMORY[0x277D0B7F8];
    __swift_allocate_boxed_opaque_existential_1(v60);
    sub_2314776B8();
    v61[3] = sub_2314770D8();
    v61[4] = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E118, &qword_23147CDA8);
    sub_2313ED944(&qword_280C3C128, &qword_27DD4E118, &qword_23147CDA8);
    sub_231478098();
    __swift_destroy_boxed_opaque_existential_0(v60);

    sub_231400E2C(&qword_280C3C190, MEMORY[0x277D1F240]);
    v32 = v49;
    sub_231476EF8();
    __swift_destroy_boxed_opaque_existential_0(v61);
    v33 = v51;
    sub_231477978();
    sub_2313ED944(&qword_280C3C8C8, &qword_27DD4E0D0, &qword_23147CD58);
    sub_2313ED944(&qword_280C3C8E0, &qword_27DD4E108, &qword_23147CD98);
    v34 = v50;
    v36 = v54;
    v35 = v55;
    sub_2314771D8();
    (*(v53 + 8))(v33, v35);
    v37 = *(v52 + 8);
    v37(v32, v36);
    type metadata accessor for IPInteractionWithEntity();
    v38 = v45;
    sub_2314774C8();
    v37(v34, v36);
    sub_2313ED944(&qword_280C3C8D0, &qword_27DD4E110, &qword_23147CDA0);
    sub_231400E2C(&qword_280C3C3A0, type metadata accessor for IPInteractionWithEntity);
    v39 = v46;
    v40 = v44;
    v41 = sub_231476F58();
    result = (*(v56 + 8))(v38, v39);
    if (v40)
    {
    }

    else
    {
      v42 = v48;
      *v48 = v43;
      v42[1] = v41;
    }
  }

  return result;
}

uint64_t *InteractionQuery.fetchOne(_:)(uint64_t a1)
{
  v3 = *a1;
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 16);
  if (*(a1 + 8))
  {
    result = OUTLINED_FUNCTION_88(a1);
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_185();
    sub_2313FEB98();
  }

  else
  {
    result = OUTLINED_FUNCTION_88(a1);
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_185();
    sub_23143BA9C();
  }
}

uint64_t sub_231442560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0);
  sub_231400E2C(&unk_280C3C5D0, type metadata accessor for _Interaction);
  return sub_231476F68();
}

uint64_t sub_2314429E4()
{
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0);
  result = sub_2314775E8();
  if (!v0)
  {
    v2 = sub_2313FA820();
    if (v2)
    {
      sub_231442C9C(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v10 = sub_231477B68();
      __swift_project_value_buffer(v10, qword_280C3D970);
      v11 = sub_231477B58();
      v12 = sub_2314782B8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446722;
        *(v13 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v16);
        *(v13 + 12) = 2082;
        *(v13 + 14) = sub_2313EB684(0xD00000000000002ALL, 0x8000000231482DB0, &v16);
        *(v13 + 22) = 2050;
        *(v13 + 24) = 376;
        _os_log_impl(&dword_2313E1000, v11, v12, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23192F1F0](v14, -1, -1);
        MEMORY[0x23192F1F0](v13, -1, -1);
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

void sub_231442C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64();
  v12 = v11;
  v13 = sub_231476CA8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  sub_231476BD8();
  v22 = sub_231478178();
  v22[2] = 8;
  v22[4] = 0;
  v22[5] = 0;
  v23 = *(type metadata accessor for HistoryStats() + 20);
  *(v12 + v23) = v22;
  sub_231477638();
  if (v101)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      sub_231476BB8();
      (*(v16 + 40))(v12, v21, v13);
    }
  }

  else
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5A0, &qword_231479850);
  inited = swift_initStackObject();
  inited[3] = 16;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v34 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v34, qword_280C3D970);
    v36 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v36))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v37 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v37);
    v38 = OUTLINED_FUNCTION_17_3(4.8754e-34);
    *(v10 + 4) = sub_2313EB684(v38, 0x8000000231482B90, v100);
    *(v10 + 12) = 2082;
    OUTLINED_FUNCTION_83_0();
    v41 = sub_2313EB684(0xD000000000000016, v39, v40);
    OUTLINED_FUNCTION_24_2(v41);
    v42 = 818;
    goto LABEL_69;
  }

  inited[4] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_36:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v43 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v43, qword_280C3D970);
    v44 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v44))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v45 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v45);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v49 = sub_2313EB684(v46, v47, v48);
    v50 = OUTLINED_FUNCTION_15_7(v49);
    OUTLINED_FUNCTION_24_2(v50);
    v42 = 819;
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_157();
  inited[5] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_41:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v51 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v51, qword_280C3D970);
    v52 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v52))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v53 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v53);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v57 = sub_2313EB684(v54, v55, v56);
    v58 = OUTLINED_FUNCTION_15_7(v57);
    OUTLINED_FUNCTION_24_2(v58);
    v42 = 820;
    goto LABEL_69;
  }

  inited[6] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_46;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_46:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v59 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v59, qword_280C3D970);
    v60 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v60))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v61 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v61);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v65 = sub_2313EB684(v62, v63, v64);
    v66 = OUTLINED_FUNCTION_15_7(v65);
    OUTLINED_FUNCTION_24_2(v66);
    v42 = 821;
    goto LABEL_69;
  }

  inited[7] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_51;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_51:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v67 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v67, qword_280C3D970);
    v68 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v68))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v69 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v69);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v73 = sub_2313EB684(v70, v71, v72);
    v74 = OUTLINED_FUNCTION_15_7(v73);
    OUTLINED_FUNCTION_24_2(v74);
    v42 = 822;
    goto LABEL_69;
  }

  inited[8] = a10;
  OUTLINED_FUNCTION_157();
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
LABEL_56:
    if (qword_280C3CF50 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_73;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
    goto LABEL_56;
  }

  inited[9] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_60;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_60:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v83 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v83, qword_280C3D970);
    v84 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v84))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v85 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v85);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v89 = sub_2313EB684(v86, v87, v88);
    v90 = OUTLINED_FUNCTION_15_7(v89);
    OUTLINED_FUNCTION_24_2(v90);
    v42 = 824;
    goto LABEL_69;
  }

  inited[10] = a10;
  sub_231477638();
  if (!v101)
  {
    sub_2313E937C(v100, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_65;
  }

  if ((OUTLINED_FUNCTION_30_2() & 1) == 0)
  {
LABEL_65:
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v91 = sub_231477B68();
    v35 = OUTLINED_FUNCTION_182(v91, qword_280C3D970);
    v92 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_50_1(v92))
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_23_3();
    v93 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v93);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v97 = sub_2313EB684(v94, v95, v96);
    v98 = OUTLINED_FUNCTION_15_7(v97);
    OUTLINED_FUNCTION_24_2(v98);
    v42 = 825;
    goto LABEL_69;
  }

  inited[11] = a10;
  v100[0] = MEMORY[0x277D84F90];
  sub_2314127E8(0, 8, 0);
  v25 = 4;
  v26 = v100[0];
  while (1)
  {
    v27 = inited[v25];
    if (v27 >= 0x7FFF)
    {
      LOWORD(v28) = 0x7FFF;
    }

    else
    {
      v28 = inited[v25];
    }

    if (v27 < -32768)
    {
      break;
    }

    v100[0] = v26;
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v32 = OUTLINED_FUNCTION_20(v29);
      v99 = v33;
      sub_2314127E8(v32, v33, 1);
      v31 = v99;
      v26 = v100[0];
    }

    *(v26 + 16) = v31;
    *(v26 + 2 * v30 + 32) = v28;
    if (++v25 == 12)
    {
      swift_setDeallocating();

      *(v12 + v23) = v26;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_73:
  OUTLINED_FUNCTION_0();
  swift_once();
LABEL_57:
  v75 = sub_231477B68();
  v35 = OUTLINED_FUNCTION_182(v75, qword_280C3D970);
  v76 = sub_2314782B8();
  if (OUTLINED_FUNCTION_50_1(v76))
  {
    OUTLINED_FUNCTION_23_3();
    v77 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_80_0(v77);
    OUTLINED_FUNCTION_17_3(4.8754e-34);
    OUTLINED_FUNCTION_83_0();
    v81 = sub_2313EB684(v78, v79, v80);
    v82 = OUTLINED_FUNCTION_15_7(v81);
    OUTLINED_FUNCTION_24_2(v82);
    v42 = 823;
LABEL_69:
    *(v10 + 24) = v42;
    _os_log_impl(&dword_2313E1000, v35, v22, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

LABEL_70:

  sub_23141F91C();
  swift_allocError();
  swift_willThrow();
  inited[2] = 0;

  sub_23140166C(v12, type metadata accessor for HistoryStats);
LABEL_71:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_231443634()
{
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8);
  result = sub_2314775E8();
  if (!v0)
  {
    v2 = sub_2313FA820();
    if (v2)
    {
      sub_231442C9C(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v10 = sub_231477B68();
      __swift_project_value_buffer(v10, qword_280C3D970);
      v11 = sub_231477B58();
      v12 = sub_2314782B8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446722;
        *(v13 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v16);
        *(v13 + 12) = 2082;
        *(v13 + 14) = sub_2313EB684(0xD000000000000033, 0x8000000231482B50, &v16);
        *(v13 + 22) = 2050;
        *(v13 + 24) = 398;
        _os_log_impl(&dword_2313E1000, v11, v12, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23192F1F0](v14, -1, -1);
        MEMORY[0x23192F1F0](v13, -1, -1);
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2314438EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    sub_23141252C(0, v4, 0);
    v7 = a2;
    v5 = v20;
    v8 = (a1 + 32);
    while (1)
    {
      v9 = *v8++;
      v18 = v9;
      sub_231443D54(&v18, &v17, v19);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v10 = v19[0];
      v11 = v19[1];
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23141252C(v12 > 1, v13 + 1, 1);
        v7 = a2;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
    sub_2313ED944(&qword_280C3C138, &qword_27DD4D638, qword_231479978);
    v7 = sub_231477E28();
  }

  return v7;
}

uint64_t sub_231443AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E140, &unk_23147CDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for HistoryStats();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  sub_2313ED944(&qword_280C3CB60, &unk_27DD4D890, qword_23147F7F0);
  v15 = v29;
  result = sub_2314775E8();
  if (!v15)
  {
    v29 = v11;
    v17 = v27;
    while (1)
    {
      v18 = sub_2313FA820();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      sub_2314438EC(v17, v18);
      sub_231442C9C(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
      sub_2314015B4(v14, v10, type metadata accessor for HistoryStats);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v29);
      sub_231460450();

      sub_23140166C(v14, type metadata accessor for HistoryStats);
    }
  }

  return result;
}

uint64_t sub_231443D54@<X0>(char *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  sub_231477638();

  sub_2313E95CC(v26, &v24, &qword_27DD4E0B8, &unk_23147CD38);
  if (!v25)
  {
    sub_2313E937C(&v24, &qword_27DD4E0B8, &unk_23147CD38);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v8 = sub_231477B68();
    __swift_project_value_buffer(v8, qword_280C3D970);
    v9 = sub_231477B58();
    v10 = sub_2314782B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v24 = v12;
      *v11 = 136446722;
      *(v11 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
      *(v11 + 22) = 2050;
      *(v11 + 24) = 835;
      _os_log_impl(&dword_2313E1000, v9, v10, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v12, -1, -1);
      MEMORY[0x23192F1F0](v11, -1, -1);
    }

    sub_23141F91C();
    v13 = swift_allocError();
    swift_willThrow();
    result = sub_2313E937C(v26, &qword_27DD4E0B8, &unk_23147CD38);
    goto LABEL_35;
  }

  sub_2313E937C(v26, &qword_27DD4E0B8, &unk_23147CD38);
  sub_2313F198C(&v24, v27);
  if (((1 << v3) & 0x18F) != 0)
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      v7 = *(&v24 + 1);
      v6 = v24;
LABEL_24:
      result = __swift_destroy_boxed_opaque_existential_0(v27);
      *a3 = v6;
      a3[1] = v7;
      return result;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v16 = sub_231477B68();
    __swift_project_value_buffer(v16, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 838;
  }

  else if (((1 << v3) & 0x30) != 0)
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      v26[0] = v24;
      v6 = sub_231478798();
      v7 = v15;
      goto LABEL_24;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v22 = sub_231477B68();
    __swift_project_value_buffer(v22, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 843;
  }

  else
  {
    sub_2314137BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
    if (swift_dynamicCast())
    {
      if (v24)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v24)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      goto LABEL_24;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v23 = sub_231477B68();
    __swift_project_value_buffer(v23, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_34;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v24 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482B90, &v24);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2313EB684(0xD000000000000019, 0x8000000231482E90, &v24);
    *(v19 + 22) = 2050;
    v21 = 840;
  }

  *(v19 + 24) = v21;
  _os_log_impl(&dword_2313E1000, v17, v18, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v19, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x23192F1F0](v20, -1, -1);
  MEMORY[0x23192F1F0](v19, -1, -1);
LABEL_34:

  sub_23141F91C();
  v13 = swift_allocError();
  swift_willThrow();
  result = __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_35:
  *a2 = v13;
  return result;
}

uint64_t sub_2314445EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23144462C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23144472C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2314137A4(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_23141D8E0((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_231444824()
{
  result = qword_280C3C480;
  if (!qword_280C3C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C480);
  }

  return result;
}

uint64_t sub_2314448B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_23144490C(uint64_t a1)
{
  v1 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    if (*(a1 + 16) == v1)
    {
      v3 = 0;
      goto LABEL_7;
    }

    if (*i == 15)
    {
      break;
    }

    ++v1;
  }

  v3 = v1;
LABEL_7:

  return v3;
}

void OUTLINED_FUNCTION_34_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  result = v0 - 240;
  v2 = *(v0 - 640);
  return result;
}

void OUTLINED_FUNCTION_44_1()
{
  v4 = *v1;
  *(v4 + 16) = v0 + 1;
  v5 = v4 + 32 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

BOOL OUTLINED_FUNCTION_50_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_23140166C(v0, type metadata accessor for Interaction);
}

__n128 OUTLINED_FUNCTION_68(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2)
{

  return sub_2314448B0(a1, a2, type metadata accessor for InteractionWithParameters);
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

uint64_t OUTLINED_FUNCTION_151()
{
  v2 = *(v0 + 16);

  return sub_231478058();
}

uint64_t OUTLINED_FUNCTION_167()
{
  result = v1 + v0;
  v4 = *(v2 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_176@<X0>(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 648) = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_181()
{
  result = v0 + v1;
  v4 = *(v2 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_231477B58();
}

__n128 OUTLINED_FUNCTION_184(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_198()
{
  result = __swift_destroy_boxed_opaque_existential_0((v2 - 144));
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_199()
{
  result = __swift_destroy_boxed_opaque_existential_0((v2 - 144));
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1)
{
  v3 = *(v1 - 344);

  return sub_2313ED930(a1, v3);
}

uint64_t sub_231444E3C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 96);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t static InteractionStore.readonly(useIntelligencePlatform:)(unsigned __int8 a1)
{
  v16 = &unk_28460C4B0;
  v2 = sub_2313E3100();
  v17 = v2;
  LOBYTE(v15[0]) = 0;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v15);
  v16 = &unk_28460C4B0;
  v17 = v2;
  LOBYTE(v15[0]) = 2;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v15);
  v16 = &unk_28460C4B0;
  v17 = v2;
  LOBYTE(v15[0]) = 1;
  sub_231476D68();
  v3 = __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_15_8(xmmword_231479AA0, v3, v4, v5, v6, v7, v8, v9, v10, v13, *v14, v14[4], a1, v11);
  return sub_2313EADE8(0, 2uLL);
}

uint64_t sub_231444FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_231478308();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = sub_2314782F8();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v18 = sub_231477D08();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  if (a2)
  {
    sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
    sub_231477CD8();
    sub_2313E6E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
    sub_2313E6ED0();
    sub_231478498();
    (*(v8 + 104))(v13, *MEMORY[0x277D85260], v5);
    v22 = sub_231478338();
  }

  else
  {
    if (qword_280C3CA90 != -1)
    {
      swift_once();
    }

    v22 = qword_280C3C4A0;
  }

  v23 = v22;
  v24 = sub_231464D5C(a1, a2 & 1, v23);
  v26 = v25;

  if (v26)
  {

    if (v24)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E198, &unk_23147CE48) + 48);
      *a3 = v26;
      sub_2314222CC(a1, a3 + v27);
    }

    else
    {
      sub_2313EA454(a1);
      *a3 = v26;
    }

    type metadata accessor for _InteractionStore();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v28 = sub_231477B68();
    OUTLINED_FUNCTION_38(v28, qword_280C3D970);
    v29 = sub_231477B58();
    v30 = sub_2314782B8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_102();
      *v31 = 0;
      _os_log_impl(&dword_2313E1000, v29, v30, "InteractionStore would not open.", v31, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    sub_23141ECFC();
    OUTLINED_FUNCTION_17_4();
    *v32 = 1;
    swift_willThrow();

    return sub_2313EA454(a1);
  }
}

uint64_t static InteractionStore.writable()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_22_4();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  sub_231464B0C(v2);
  result = sub_231444FB4(v2, 0, v14);
  if (!v1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v16);
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    result = OUTLINED_FUNCTION_10_13(v17);
    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t sub_231445478@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_22_4();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  v15 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v15);
  result = sub_231444FB4(v2, 0, v14);
  if (!v1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v17);
    swift_allocObject();
    sub_2313E7328();
    result = OUTLINED_FUNCTION_10_13(v18);
    *(a1 + 40) = 1;
  }

  return result;
}

double static InteractionStore.lazy(readonly:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9 = &unk_28460C4B0;
  v4 = sub_2313E3100();
  v10 = v4;
  LOBYTE(v8[0]) = 0;
  v5 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = &unk_28460C4B0;
  v10 = v4;
  OUTLINED_FUNCTION_19_7();
  v6 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  v9 = &unk_28460C4B0;
  v10 = v4;
  OUTLINED_FUNCTION_19_7();
  LOBYTE(v4) = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v8);
  LOBYTE(v8[0]) = v5 & 1;
  BYTE1(v8[0]) = v6 & 1;
  BYTE2(v8[0]) = v4 & 1;
  return static InteractionStore.lazy(readonly:features:)(a1, v8, a2);
}

double static InteractionStore.lazy(readonly:features:)@<D0>(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _InteractionStore();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  LODWORD(v10) = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if (v10 == 1)
  {
    sub_231446938(0, 0, v12);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v15);
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v17 = v16;
    type metadata accessor for SiriRemembersBiomeStreamDonator();
    swift_allocObject();
    v18 = SiriRemembersBiomeStreamDonator.init()();
    *a3 = v17;
    *(a3 + 8) = 1;
    *(a3 + 9) = v13;
    *(a3 + 11) = v25;
    v19 = v26;
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E190, &qword_23147CE40) + 48);
    sub_231464B0C(v12);
    *(v12 + v20) = a1 & 1;
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E188, &qword_23147CE38);
    OUTLINED_FUNCTION_74(v21);
    swift_allocObject();
    OUTLINED_FUNCTION_5_11();
    sub_2313E7328();
    v23 = v22;
    v18 = 0;
    *a3 = v23;
    *(a3 + 8) = 0;
    *(a3 + 9) = v13;
    *(a3 + 11) = v27;
    v19 = v28;
  }

  *(a3 + 15) = v19;
  *(a3 + 10) = v14;
  *(a3 + 16) = v18;
  result = 0.0;
  *(a3 + 24) = xmmword_231479AA0;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_231445814(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for _InteractionStore();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_231476AF8();
  (*(*(v15 - 8) + 16))(v10, a2, v15);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  result = sub_231444FB4(v10, a3, v14);
  if (!v3)
  {
    sub_2313EB404(a1);
    return sub_2314468A4(v14, a1);
  }

  return result;
}

uint64_t sub_231445974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = a2;
  v25 = a3;
  sub_2313E5218(0, &v24, a4, a5);
  if (v6)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    sub_2313EB404(a1);
    *a1 = v9;
    a1[1] = v10;
    a1[2] = v11;
    type metadata accessor for _InteractionStore();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v12 = sub_231477B68();
    __swift_project_value_buffer(v12, qword_280C3D970);
    v13 = sub_231477B58();
    v14 = sub_2314782A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2313E1000, v13, v14, "could not open an IP InteractionStore", v15, 2u);
      MEMORY[0x23192F1F0](v15, -1, -1);
    }

    sub_23141ECFC();
    swift_allocError();
    v17 = v16;
    v18 = sub_231477E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23147CE20;
    *(inited + 32) = 0x6449726F727265;
    *(inited + 40) = 0xE700000000000000;
    v24 = sub_231478998();
    v25 = v20;
    MEMORY[0x23192E060](46, 0xE100000000000000);
    MEMORY[0x23192E060](0xD000000000000014, 0x8000000231481E80);

    v21 = sub_231477E58();

    *(inited + 48) = v21;
    *(inited + 56) = 1701603686;
    *(inited + 64) = 0xE400000000000000;
    *(inited + 72) = sub_231477E58();
    *(inited + 80) = 1668183398;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = sub_231477E58();
    *(inited + 104) = 1701734764;
    *(inited + 112) = 0xE400000000000000;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
    sub_231477DC8();
    v22 = sub_231477DA8();

    AnalyticsSendEvent();

    *v17 = 1;
    return swift_willThrow();
  }
}

uint64_t *InteractionStore.set(appIntentBackfillDate:)()
{
  result = sub_2313F4D04();
  if (!v0)
  {
    MEMORY[0x28223BE20](result);
    sub_2314770A8();
    sub_2314770F8();
  }

  return result;
}

uint64_t sub_231445D90(uint64_t a1)
{
  v2 = sub_231477468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231479AC0;
  v8 = MEMORY[0x277D0B840];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v8;
  *(v7 + 32) = 0xD000000000000015;
  *(v7 + 40) = 0x8000000231483010;
  v9 = sub_231476CA8();
  v10 = MEMORY[0x277D0B6A0];
  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 72));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
  sub_231477448();
  sub_2314777E8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static InteractionStore.delete()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_34();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_231476AF8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_231464B0C(v9);
  sub_2313EA3E4(v9, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_2313EA454(v6);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v19 = sub_231477B68();
    OUTLINED_FUNCTION_38(v19, qword_280C3D970);
    v20 = sub_231477B58();
    v21 = sub_2314782B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v22 = 136446722;
      *(v22 + 4) = sub_2313EB684(0xD000000000000066, 0x8000000231482EF0, &v25);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_2313EB684(0x29286574656C6564, 0xE800000000000000, &v25);
      *(v22 + 22) = 2050;
      *(v22 + 24) = 234;
      _os_log_impl(&dword_2313E1000, v20, v21, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v22, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_7_8();
    }

    sub_23141F91C();
    OUTLINED_FUNCTION_17_4();
    swift_willThrow();
    return sub_2313EA454(v9);
  }

  else
  {
    sub_2313EA454(v9);
    (*(v13 + 32))(v18, v6, v10);
    sub_231464C34();
    return (*(v13 + 8))(v18, v10);
  }
}

void static InteractionStore.resetView()()
{
  type metadata accessor for SiriRemembersBiomeStreamDonator();
  swift_initStackObject();
  SiriRemembersBiomeStreamDonator.init()();
  sub_23145F574();

  sub_231474E50(0);
}

uint64_t sub_231446290()
{
  v0 = sub_231478308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2314782F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_231477D08();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  v10[1] = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_231478338();
  qword_280C3C4A0 = result;
  return result;
}

SiriRemembers::InteractionStoreError_optional __swiftcall InteractionStoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231478638();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InteractionStoreError.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2314465A8@<X0>(unint64_t *a1@<X8>)
{
  result = InteractionStoreError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314465D0(char a1)
{
  v4[3] = &unk_28460C4B0;
  v4[4] = sub_2313E3100();
  LOBYTE(v4[0]) = a1;
  v2 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_23144668C()
{
  result = qword_27DD4E1A0;
  if (!qword_27DD4E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E1A0);
  }

  return result;
}

unint64_t sub_2314466E0(uint64_t a1)
{
  result = sub_23141ECFC();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2314467E4()
{
  if (!qword_280C3D6E0)
  {
    sub_23144682C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3D6E0);
    }
  }
}

void sub_23144682C()
{
  if (!qword_280C3D6D8)
  {
    sub_231476AF8();
    v0 = sub_231478418();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3D6D8);
    }
  }
}

uint64_t sub_2314468A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InteractionStore();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231446938@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_2313E7A6C(a1, a2, &v22 - v14);
  v16 = OUTLINED_FUNCTION_30_3();
  sub_2314472B0(v16, v17);
  v18 = sub_2314779F8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    sub_2313E7E10(v15);
    sub_2313E7E10(v12);
    v19 = 1;
  }

  else
  {
    sub_231477958();
    sub_2313E7E10(v15);
    (*(*(v18 - 8) + 8))(v12, v18);
    v19 = 0;
  }

  v20 = sub_231476AF8();
  return __swift_storeEnumTagSinglePayload(a3, v19, 1, v20);
}

uint64_t sub_231446A8C()
{
  v0 = sub_231477348();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_231478308();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2314782F8();
  v6 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v7 = sub_231477D08();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2314777F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_231477008();
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  sub_231476FF8();
  *v13 = 0x4014000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x277D0B810], v9);
  sub_231476FC8();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CD8();
  v39 = MEMORY[0x277D84F90];
  sub_2313EB8FC(&qword_280C3CEA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  v21 = v30;
  sub_231478498();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  v22 = v35;
  sub_231478338();
  sub_231476FA8();
  sub_231476FB8();
  sub_231476FE8();
  (*(v21 + 16))(v18, v20, v14);
  v23 = sub_2314770A8();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_231477068();
  sub_231477968();

  v27 = v36;
  sub_231477328();
  if (v27)
  {
  }

  else
  {
  }

  (*(v37 + 8))(v22, v38);
  (*(v21 + 8))(v20, v14);
  return v26;
}

uint64_t sub_231446F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DBOpenError();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v17 = sub_231477B68();
  OUTLINED_FUNCTION_38(v17, qword_280C3D970);
  sub_23144724C(v1, v16);
  sub_23144724C(v1, v14);
  v18 = sub_231477B58();
  v19 = sub_2314782C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = a1;
    v31 = v29;
    *v20 = 136446466;
    v21 = sub_23146A9A8();
    v23 = v22;
    sub_2314471F0(v16);
    sub_2313EB684(v21, v23, &v31);
    OUTLINED_FUNCTION_29_2();
    *(v20 + 4) = v21;
    *(v20 + 12) = 2082;
    sub_23144724C(v14, v10);
    OUTLINED_FUNCTION_19();
    v24 = sub_231477EB8();
    v26 = v25;
    sub_2314471F0(v14);
    sub_2313EB684(v24, v26, &v31);
    OUTLINED_FUNCTION_29_2();
    *(v20 + 14) = v24;
    _os_log_impl(&dword_2313E1000, v18, v19, "Error(%{public}s): %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v30;
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {

    sub_2314471F0(v14);
    sub_2314471F0(v16);
  }

  return sub_23144724C(v2, a1);
}

uint64_t sub_2314471F0(uint64_t a1)
{
  v2 = type metadata accessor for DBOpenError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23144724C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBOpenError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314472B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
}

uint64_t String.jsonValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

void Int.jsonValue.getter(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  a1[1] = 0;
  OUTLINED_FUNCTION_20_5(a1);
}

uint64_t sub_231447358()
{
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1B8, &qword_23147D068);
  OUTLINED_FUNCTION_0_14();
  sub_23144878C(v3, v4);
  OUTLINED_FUNCTION_18_6();
  if (!v0)
  {
    sub_231477E98();
    OUTLINED_FUNCTION_16_5();
    sub_231477E88();
    if (v5)
    {
      OUTLINED_FUNCTION_23_7();
      v6 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v6, v7);
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v9 = sub_231477B68();
      __swift_project_value_buffer(v9, qword_280C3D970);
      v10 = sub_231477B58();
      v11 = sub_2314782B8();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_26_6();
        swift_slowAlloc();
        v12 = OUTLINED_FUNCTION_16_8(4.8754e-34);
        v13 = OUTLINED_FUNCTION_13_11(v12);
        OUTLINED_FUNCTION_17_6(v13);
        OUTLINED_FUNCTION_13_0(&dword_2313E1000, v14, v15, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      sub_23141F91C();
      swift_allocError();
      swift_willThrow();
      v16 = OUTLINED_FUNCTION_16_5();
      sub_2313EB8A4(v16, v17);
    }
  }

  return OUTLINED_FUNCTION_7_10();
}

uint64_t JSONValue.jsonValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_9_13(v2, v3, *(v1 + 16), a1);
}

uint64_t Array<A>.jsonValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[7] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[2] = a3;
  v10[3] = swift_getKeyPath();
  v5 = sub_231478198();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_2314552F4(sub_231448528, v10, v5, &type metadata for JSONValue, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 4;
  return result;
}

void JSONValue.subscript.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (v2[16] == 4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*v2 + 16) > a1)
    {
      v3 = *v2 + 24 * a1;
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      *a2 = v4;
      a2[1] = v5;
      OUTLINED_FUNCTION_9_13(v4, v5, *(v3 + 48), a2);
      return;
    }

    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    OUTLINED_FUNCTION_20_5(a2);
  }
}

void JSONValue.subscript.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == 5 && (v3 = *v1, *(v3 + 16)) && (v4 = sub_2313F0604(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 24 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a1 = *v6;
    *(a1 + 8) = v8;
    v9 = *(v6 + 16);
    *(a1 + 16) = v9;

    sub_231401AEC(v7, v8, v9);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }
}

uint64_t JSONValue.BOOLValue.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
      v7 = *v0;
      break;
    case 3:
      v6 = *v0;
      v8 = v0[1];
      goto LABEL_7;
    case 4:
      v2 = &qword_27DD4E1B8;
      v3 = &qword_23147D068;
      goto LABEL_6;
    case 5:
      v2 = &qword_27DD4DA30;
      v3 = &qword_23147D060;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
LABEL_7:

      break;
    default:
      break;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

void JSONValue.rawValue.getter(void *a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v6 = MEMORY[0x277D83B88];
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x277D839F8];
LABEL_7:
      a1[3] = v6;
      *a1 = v2;
      return;
    case 3:
      v7 = v1[1];
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v2;
      a1[1] = v7;
      goto LABEL_11;
    case 4:
      v4 = &qword_27DD4E1B8;
      v5 = &qword_23147D068;
      goto LABEL_10;
    case 5:
      v4 = &qword_27DD4DA30;
      v5 = &qword_23147D060;
LABEL_10:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      *a1 = v2;
LABEL_11:

      break;
    default:
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v2 & 1;
      break;
  }
}

uint64_t JSONValue.intValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t JSONValue.doubleValue.getter()
{
  if (v0[16] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t JSONValue.stringValue.getter()
{
  if (*(v0 + 16) != 3)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t JSONValue.arrayValue.getter()
{
  if (*(v0 + 16) != 4)
  {
    return 0;
  }

  v1 = *v0;
}

uint64_t JSONValue.objectValue.getter()
{
  if (*(v0 + 16) != 5)
  {
    return 0;
  }

  v1 = *v0;
}

uint64_t sub_2314479DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  switch(*(v2 + 16))
  {
    case 1:
      *&v64 = *v2;
      result = sub_231478798();
      goto LABEL_30;
    case 2:
      v22 = *v2;
      result = sub_2314781C8();
LABEL_30:
      *a2 = result;
      *(a2 + 8) = v23;
      goto LABEL_31;
    case 3:
      v24 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v24 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        *&v64 = *v2;
        *(&v64 + 1) = v4;
        sub_231423704();

        result = sub_231478438();
        if (result)
        {
          *&v64 = v3;
          *(&v64 + 1) = v4;
          v25 = sub_231478448();
          v26 = OUTLINED_FUNCTION_22_5();
          sub_231403090(v26, v27, 3);
          v28 = *(v25 + 16);
          if (v28)
          {
            *&v64 = MEMORY[0x277D84F90];
            sub_231412784(0, v28, 0);
            v29 = v64;
            v30 = (v25 + 56);
            do
            {
              v31 = *(v30 - 3);
              v32 = *(v30 - 2);
              v33 = *(v30 - 1);
              v34 = *v30;

              MEMORY[0x23192DFC0](v31, v32, v33, v34);
              OUTLINED_FUNCTION_23_7();

              *&v64 = v29;
              v36 = *(v29 + 16);
              v35 = *(v29 + 24);
              if (v36 >= v35 >> 1)
              {
                sub_231412784((v35 > 1), v36 + 1, 1);
                v29 = v64;
              }

              *(v29 + 16) = v36 + 1;
              v37 = v29 + 40 * v36;
              *(v37 + 32) = v32;
              *(v37 + 40) = v33;
              *(v37 + 48) = 0;
              *(v37 + 56) = 0;
              *(v37 + 64) = 2;
              v30 += 4;
              --v28;
            }

            while (v28);
          }

          else
          {

            v29 = MEMORY[0x277D84F90];
          }

          *a2 = v29;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v38 = 1;
        }

        else
        {
          *a2 = v3;
          *(a2 + 8) = v4;
LABEL_31:
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v38 = 2;
        }
      }

      else
      {
        *a2 = 0u;
        *(a2 + 16) = 0u;
        v38 = -1;
      }

      goto LABEL_53;
    case 4:
      v8 = 0;
      v9 = *(v3 + 16);
      v10 = v3 + 48;
      v60 = MEMORY[0x277D84F90];
      break;
    case 5:
      *&v64 = sub_231401864(*v2);
      sub_231402E40(&v64);
      v39 = *(v64 + 16);
      if (v39)
      {
        v40 = (v64 + 64);
        v41 = MEMORY[0x277D84F90];
        do
        {
          v42 = *(v40 - 3);
          v43 = *(v40 - 2);
          v44 = *(v40 - 1);
          v45 = *v40;

          v46 = OUTLINED_FUNCTION_3_7();
          sub_231401AEC(v46, v47, v48);

          sub_2314479DC(&v64, v49);
          v50 = OUTLINED_FUNCTION_3_7();
          sub_231403090(v50, v51, v52);
          v53 = v66;
          if (v66 != 255)
          {
            v59 = v65;
            v61 = v64;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = *(v41 + 16);
              OUTLINED_FUNCTION_3_0();
              sub_23141D16C();
              v41 = v57;
            }

            v54 = *(v41 + 16);
            if (v54 >= *(v41 + 24) >> 1)
            {
              sub_23141D16C();
              v41 = v58;
            }

            *(v41 + 16) = v54 + 1;
            v55 = v41 + 40 * v54;
            *(v55 + 32) = v61;
            *(v55 + 48) = v59;
            *(v55 + 64) = v53;
          }

          v40 += 40;
          --v39;
        }

        while (v39);
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }

      if (*(v41 + 16))
      {
        v38 = 1;
      }

      else
      {

        v41 = 0;
        v38 = -1;
      }

      *a2 = v41;
      goto LABEL_52;
    default:
      v6 = 1702195828;
      if ((v3 & 1) == 0)
      {
        v6 = 0x65736C6166;
      }

      v7 = 0xE500000000000000;
      if (v3)
      {
        v7 = 0xE400000000000000;
      }

      *a2 = v6;
      *(a2 + 8) = v7;
      goto LABEL_31;
  }

LABEL_8:
  v11 = (v10 + 24 * v8);
  while (v9 != v8)
  {
    if (v8 >= *(v3 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v62 = *(v11 - 1);
    v63 = *v11;
    sub_2314479DC(&v64, result);
    v12 = v66;
    v13 = v64;
    v14 = v65;
    if (v66 != 255)
    {
      v15 = v60;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v21 = *(v60 + 16);
        OUTLINED_FUNCTION_3_0();
        sub_23141D16C();
        v15 = result;
      }

      v16 = v15;
      v17 = *(v15 + 16);
      v60 = v16;
      v18 = *(v16 + 24);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        sub_23141D16C();
        v19 = v17 + 1;
        v60 = result;
      }

      ++v8;
      *(v60 + 16) = v19;
      v20 = v60 + 40 * v17;
      *(v20 + 32) = v13;
      *(v20 + 48) = v14;
      *(v20 + 64) = v12;
      v10 = v3 + 48;
      goto LABEL_8;
    }

    result = sub_231412668(v64, *(&v64 + 1), v65, *(&v65 + 1), 255);
    v11 += 24;
    ++v8;
  }

  result = v60;
  if (*(v60 + 16))
  {
    v38 = 1;
  }

  else
  {

    result = 0;
    v38 = -1;
  }

  *a2 = result;
LABEL_52:
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
LABEL_53:
  *(a2 + 32) = v38;
  return result;
}

uint64_t static JSONValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_21;
      }

      v38 = OUTLINED_FUNCTION_98();
      sub_231403090(v38, v39, 1);
      v40 = OUTLINED_FUNCTION_175();
      sub_231403090(v40, v41, 1);
      v11 = v2 == v5;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_21;
      }

      v22 = *a1;
      v23 = *a2;
      v24 = OUTLINED_FUNCTION_98();
      sub_231403090(v24, v25, 2);
      v26 = OUTLINED_FUNCTION_175();
      sub_231403090(v26, v27, 2);
      v11 = *&v2 == *&v5;
      return v11 & 1;
    case 3:
      v28 = *(a1 + 8);
      if (v6 != 3)
      {
        goto LABEL_20;
      }

      if (v2 != v5 || v3 != *(a2 + 8))
      {
        v16 = sub_2314787C8();
        v30 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v30, v31, 3);
        v32 = OUTLINED_FUNCTION_2_13();
        sub_231401AEC(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_2_13();
        sub_231403090(v35, v36, v37);
        v19 = OUTLINED_FUNCTION_175();
        v21 = 3;
        goto LABEL_18;
      }

      sub_231401AEC(v2, v3, 3);
      v57 = OUTLINED_FUNCTION_2_13();
      sub_231401AEC(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_2_13();
      sub_231403090(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_2_13();
      sub_231403090(v63, v64, v65);
      v11 = 1;
      return v11 & 1;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_19;
      }

      v12 = OUTLINED_FUNCTION_175();
      sub_231401AEC(v12, v13, 4);
      v14 = OUTLINED_FUNCTION_98();
      sub_231401AEC(v14, v15, 4);
      v16 = sub_23140F540(v2, v5);
      v17 = OUTLINED_FUNCTION_98();
      sub_231403090(v17, v18, 4);
      v19 = OUTLINED_FUNCTION_175();
      v21 = 4;
      goto LABEL_18;
    case 5:
      if (v6 == 5)
      {
        v42 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v42, v43, 5);
        v44 = OUTLINED_FUNCTION_98();
        sub_231401AEC(v44, v45, 5);
        sub_23141AB28(v2, v5);
        v16 = v46;
        v47 = OUTLINED_FUNCTION_98();
        sub_231403090(v47, v48, 5);
        v19 = OUTLINED_FUNCTION_175();
        v21 = 5;
LABEL_18:
        sub_231403090(v19, v20, v21);
        return v16 & 1;
      }

      else
      {
LABEL_19:
        v50 = *a1;
LABEL_20:

LABEL_21:
        v51 = OUTLINED_FUNCTION_175();
        sub_231401AEC(v51, v52, v6);
        v53 = OUTLINED_FUNCTION_98();
        sub_231403090(v53, v54, v4);
        v55 = OUTLINED_FUNCTION_175();
        sub_231403090(v55, v56, v6);
        v11 = 0;
        return v11 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_21;
      }

      v7 = OUTLINED_FUNCTION_98();
      sub_231403090(v7, v8, 0);
      v9 = OUTLINED_FUNCTION_175();
      sub_231403090(v9, v10, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
  }
}

uint64_t JSONValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21_6();
  sub_231478938();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_21_6();
    v6 = sub_2314787D8();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 3;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Bool.jsonValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void Double.jsonValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_20_5(a1);
}

uint64_t Substring.jsonValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x23192DFC0]();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_2314484BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return Substring.jsonValue.getter(a1);
}

double sub_2314484C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 8))(&v6, *(a1 + a2 - 16));
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

uint64_t Dictionary<>.jsonValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2314485B4(a1);
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

uint64_t sub_2314485B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  result = sub_231478628();
  v3 = 0;
  v29 = result;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v28 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v30 + 56);
      v16 = (*(v30 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      sub_2314137BC(v15 + 40 * v14, v34);
      v18 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v20 = *(v19 + 8);

      v20(v32, v18, v19);
      v21 = v32[0];
      v22 = v32[1];
      LOBYTE(v18) = v33;
      __swift_destroy_boxed_opaque_existential_0(v34);
      result = v29;
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v23 = (v29[6] + 16 * v14);
      *v23 = v37;
      v23[1] = v17;
      v24 = v29[7] + 24 * v14;
      *v24 = v21;
      *(v24 + 8) = v22;
      *(v24 + 16) = v18;
      v25 = v29[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v29[2] = v27;
      v9 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23144878C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4E1B8, &qword_23147D068);
    a2();
    OUTLINED_FUNCTION_98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231448800(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_231448840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void sub_2314488A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_2314787C8();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_2314787C8()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v98 = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
          {
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
            return;
          }

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v97 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v97;
          }

          v5 = v98;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = v8[2];
        OUTLINED_FUNCTION_3_0();
        sub_23141CD28();
        v8 = v93;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v94;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_231448F30((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, v99);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_231448DF8(&v101, *a1, a3);
LABEL_103:
}

uint64_t sub_231448DF8(uint64_t *a1, char *a2, void *a3)
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
    sub_231448F30((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
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

uint64_t sub_231448F30(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_23141FBB4(a1);
    v10 = &a4[40 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *a4 && *(v6 + 1) == *(a4 + 1);
      if (v12 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = a4;
    v12 = v7 == a4;
    a4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_23141FBB4(a2);
  v10 = &a4[40 * v9];
LABEL_19:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > a4 && v6 > v7; v5 -= 40)
  {
    v18 = *(v10 - 5) == *(v6 - 5) && *(v10 - 4) == *(v6 - 4);
    if (!v18 && (sub_2314787C8() & 1) != 0)
    {
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v19;
      *(v5 + 16) = v20;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = 40 * ((v10 - a4) / 40);
  if (v6 != a4 || v6 >= &a4[v23])
  {
    memmove(v6, a4, v23);
  }

  return 1;
}

char *sub_231449110(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23144913C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D870, &qword_23147A1F8);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_231449278@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_2313ED944(&qword_280C3CE38, &qword_27DD4E1F8, &qword_23147D3C0);
  if (sub_231477268())
  {
    v9 = type metadata accessor for KVPair(0);
    v10 = a1;
    v11 = 1;
  }

  else
  {
    sub_2313ED944(&qword_280C3CE40, &qword_27DD4E1F8, &qword_23147D3C0);
    sub_2314770E8();
    v12 = type metadata accessor for KVPair(0);

    sub_231477808();

    if (v2)
    {
      return result;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_2313E937C(v8, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_231477278();
      v10 = a1;
      v11 = 1;
    }

    else
    {
      sub_23144D998(v8, a1);
      v10 = a1;
      v11 = 0;
    }

    v9 = v12;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_23144949C()
{
  v0 = sub_231477308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231477348();
  __swift_allocate_value_buffer(v5, qword_280C3CD00);
  __swift_project_value_buffer(v5, qword_280C3CD00);
  sub_231477338();
  (*(v1 + 104))(v4, *MEMORY[0x277D0B738], v0);
  sub_231477318();
  return (*(v1 + 8))(v4, v0);
}

void KeyValueStore.init(namespace:)(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  if (qword_280C3CD20 != -1)
  {
    OUTLINED_FUNCTION_1_15();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280C3CD28);
  sub_2313E9628(v12, v9, &qword_27DD4DA58, &unk_23147A530);
  v13 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {

    sub_2313E937C(v9, &qword_27DD4DA58, &unk_23147A530);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v14 = sub_231477B68();
    __swift_project_value_buffer(v14, qword_280C3D970);
    v15 = sub_231477B58();
    v16 = sub_2314782B8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446722;
      *(v17 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, &v21);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_2313EB684(0xD000000000000010, 0x80000002314832C0, &v21);
      *(v17 + 22) = 2050;
      *(v17 + 24) = 22;
      _os_log_impl(&dword_2313E1000, v15, v16, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v18, -1, -1);
      MEMORY[0x23192F1F0](v17, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(*(v13 - 8) + 32))(v11, v9, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    KeyValueStore.init(url:namespace:)();
    if (!v1)
    {
      *a1 = v19[1];
      *(a1 + 8) = v20;
    }
  }
}

void KeyValueStore.init(url:namespace:)()
{
  OUTLINED_FUNCTION_64();
  v34 = v1;
  v32 = v2;
  v33 = v3;
  v5 = v4;
  v6 = type metadata accessor for _KeyValueStore(0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v12 = (v11 - v10);
  v13 = sub_231477008();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_2313E9628(v5, &v32 - v21, &qword_27DD4DA58, &unk_23147A530);
  v23 = sub_231476AF8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_2313E937C(v22, &qword_27DD4DA58, &unk_23147A530);
  }

  else
  {
    sub_231476AD8();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  sub_231476FF8();
  v24 = sub_2314770A8();
  OUTLINED_FUNCTION_74(v24);
  swift_allocObject();
  v25 = sub_231477088();
  if (v0)
  {

    sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
  }

  else
  {
    v26 = v25;
    if (__swift_getEnumTagSinglePayload(v5, 1, v23) != 1)
    {
      sub_231477078();
    }

    if (qword_280C3CCF8 != -1)
    {
      swift_once();
    }

    v27 = sub_231477348();
    __swift_project_value_buffer(v27, qword_280C3CD00);

    sub_231477328();

    *v12 = v26;
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D0, &qword_23147D2C8);
    OUTLINED_FUNCTION_74(v28);
    swift_allocObject();
    sub_2313EAA04();
    v30 = v29;
    sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
    v31 = v33;
    *v33 = v32;
    v31[1] = v34;
    v31[2] = v30;
  }

  OUTLINED_FUNCTION_62();
}

void static KeyValueStore.inMemory(namespace:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  v6 = sub_231476AF8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);

  KeyValueStore.init(url:namespace:)();
}

uint64_t sub_231449D5C()
{
  v1 = sub_231477468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_231477458();
  sub_231477538();
  (*(v2 + 8))(v5, v1);
  if (v0)
  {
    return sub_2313E937C(v7, &unk_27DD4D8A0, &unk_23147A220);
  }

  sub_2313E937C(v7, &unk_27DD4D8A0, &unk_23147A220);
}

void KeyValueStore.get<A>(key:)()
{
  OUTLINED_FUNCTION_64();
  v26 = v3;
  v27 = v2;
  v32 = v4;
  v28 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *v0;
  v18 = v0[1];
  v19 = v0[2];
  v29 = *v0;
  v30 = v18;
  v31 = v19;
  v20 = sub_23144A10C();
  if (!v1)
  {
    v24 = v14;
    v25 = v7;
    MEMORY[0x28223BE20](v20);
    *(&v24 - 6) = v17;
    *(&v24 - 5) = v18;
    v21 = v28;
    *(&v24 - 4) = v19;
    *(&v24 - 3) = v21;
    *(&v24 - 2) = v32;
    sub_231477098();
    OUTLINED_FUNCTION_9_14();
    v22 = v24;
    sub_2313E9628(v16, v24, &qword_27DD4E1D8, &qword_23147D2D0);
    v23 = type metadata accessor for KVPair(0);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_2313E937C(v16, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_2313E937C(v22, &qword_27DD4E1D8, &qword_23147D2D0);
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
    }

    else
    {
      sub_23144A79C();
      sub_2313E937C(v16, &qword_27DD4E1D8, &qword_23147D2D0);
      sub_23144DABC(v22, type metadata accessor for KVPair);
    }
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144A10C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for _KeyValueStore(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = *(v12 + 16);
  sub_231478318();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v9;
  }

  v15 = sub_2314222CC(v9, v5);
  MEMORY[0x28223BE20](v15);
  v18[-4] = v5;
  v18[-3] = v10;
  v18[-2] = v11;
  v18[-1] = v12;
  v14 = v12;
  v16 = sub_231444DC0();
  if (!v1)
  {
    v18[1] = v10;
    v18[2] = v11;
    v18[3] = v12;
    v14 = sub_23144A10C(v16);
  }

  sub_2313E937C(v5, &qword_27DD4DA58, &unk_23147A530);
  return v14;
}

uint64_t sub_23144A2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v32 = a6;
  v33 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v31 = &v28 - v17;
  type metadata accessor for KVPair(0);
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair);
  sub_231476ED8();
  if (qword_280C3CC28 != -1)
  {
    swift_once();
  }

  v18 = sub_2314776A8();
  v19 = __swift_project_value_buffer(v18, qword_280C3D928);
  v39 = v18;
  v40 = MEMORY[0x277D0B7F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v28 = *(*(v18 - 8) + 16);
  v28(boxed_opaque_existential_1, v19, v18);
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D0B838];
  v34 = a2;
  v35 = a3;
  v21 = sub_2314770D8();
  v42 = v21;
  v43 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v41);

  sub_2314775D8();
  sub_2313E937C(&v34, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_2313ED944(&qword_280C3CE28, &qword_27DD4E1E8, &qword_23147D3B0);
  sub_2314771C8();
  v22 = v16;
  v23 = *(v9 + 8);
  v23(v13, v8);
  __swift_destroy_boxed_opaque_existential_0(v41);
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v18, qword_280C3D958);
  v39 = v18;
  v40 = MEMORY[0x277D0B7F8];
  v25 = __swift_allocate_boxed_opaque_existential_1(v38);
  v28(v25, v24, v18);
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D0B838];
  v34 = v29;
  v35 = v30;
  v42 = v21;
  v43 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v41);

  sub_2314775D8();
  sub_2313E937C(&v34, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v38);
  v26 = v31;
  sub_2314771C8();
  v23(v22, v8);
  __swift_destroy_boxed_opaque_existential_0(v41);
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair);
  sub_231476F68();
  return (v23)(v26, v8);
}

void sub_23144A79C()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v5 = v4;
  v6 = dynamic_cast_existential_1_conditional(v2);
  if (!v6)
  {
    v19 = v0 + *(type metadata accessor for KVPair(0) + 20);
    v20 = sub_2314770B8();
    v23 = v20;
    v24 = v21;
    if (v22 == 2)
    {
      v25 = sub_231476788();
      OUTLINED_FUNCTION_74(v25);
      swift_allocObject();
      sub_231476778();
      v26 = sub_231401D64(v23, v24);
      v28 = v27;
      sub_231476768();
      sub_2313EB8A4(v26, v28);

      if (v1)
      {
        goto LABEL_11;
      }

      v29 = v5;
      v30 = 0;
    }

    else
    {
      sub_23144DA5C(v20, v21, v22);
      v29 = v5;
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v30, 1, v3);
    goto LABEL_11;
  }

  v8 = v6;
  v9 = v7;
  v35 = v5;
  v10 = *(type metadata accessor for KVPair(0) + 20);
  v11 = sub_231478418();
  OUTLINED_FUNCTION_4(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  sub_231477518();
  if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
  {
    (*(v13 + 8))(v18, v11);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    *(&v37 + 1) = v8;
    v38 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v18, v8);
  }

  v32 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B8, &unk_23147CD38);
  v33 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v32, v33 ^ 1u, 1, v3);
LABEL_11:
  OUTLINED_FUNCTION_62();
}

void KeyValueStore.getAll<A>(keys:)()
{
  OUTLINED_FUNCTION_64();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_231477D98();
  v5 = sub_23144A10C();
  if (v1)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    sub_231477098();
    OUTLINED_FUNCTION_9_14();
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144AB38(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v75 = a6;
  v68 = a5;
  v70 = a1;
  v74 = sub_231478418();
  v64 = *(v74 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v62 - v15;
  v63 = *(a7 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v72 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = &v62 - v20;
  v21 = type metadata accessor for KVPair(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v76 = (&v62 - v32);
  MEMORY[0x28223BE20](v31);
  v69 = &v62 - v33;
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair);
  v79 = v21;
  sub_231476ED8();
  if (qword_280C3CC28 != -1)
  {
    swift_once();
  }

  v34 = sub_2314776A8();
  v35 = __swift_project_value_buffer(v34, qword_280C3D928);
  v82 = v34;
  v83 = MEMORY[0x277D0B7F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  v37 = *(v34 - 8);
  v66 = *(v37 + 16);
  v65 = v37 + 16;
  v66(boxed_opaque_existential_1, v35, v34);
  v80[3] = MEMORY[0x277D837D0];
  v80[4] = MEMORY[0x277D0B838];
  v80[0] = a2;
  v80[1] = a3;
  v38 = sub_2314770D8();
  v85 = v38;
  v86 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v84);

  sub_2314775D8();
  sub_2313E937C(v80, &qword_27DD4E0C8, &qword_23147CD50);
  __swift_destroy_boxed_opaque_existential_0(v81);
  sub_2313ED944(&qword_280C3CE28, &qword_27DD4E1E8, &qword_23147D3B0);
  sub_2314771C8();
  v67 = *(v26 + 8);
  v67(v30, v25);
  __swift_destroy_boxed_opaque_existential_0(v84);
  v80[0] = v68;
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v34, qword_280C3D958);
  v82 = v34;
  v83 = MEMORY[0x277D0B7F8];
  v40 = __swift_allocate_boxed_opaque_existential_1(v81);
  v66(v40, v39, v34);
  v85 = v38;
  v86 = MEMORY[0x277D0B730];
  __swift_allocate_boxed_opaque_existential_1(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313ED944(&qword_280C3CB78, &qword_27DD4D638, qword_231479978);
  sub_231478098();
  __swift_destroy_boxed_opaque_existential_0(v81);
  v41 = v69;
  v42 = v76;
  sub_2314771C8();
  v43 = v67;
  v67(v42, v25);
  __swift_destroy_boxed_opaque_existential_0(v84);
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair);
  v44 = v71;
  v45 = sub_231476F48();
  result = v43(v41, v25);
  if (!v44)
  {
    v76 = (v63 + 32);
    v71 = (v63 + 16);
    v70 = (v63 + 8);
    v47 = (v64 + 8);
    while (1)
    {
      v48 = v87;
      sub_231449278(v87);
      if (__swift_getEnumTagSinglePayload(v48, 1, v79) == 1)
      {

        return sub_2313E937C(v48, &qword_27DD4E1D8, &qword_23147D2D0);
      }

      sub_23144D998(v48, v24);
      v49 = v24[1];
      if (!v49)
      {
        break;
      }

      v50 = v45;
      v51 = *v24;
      v52 = v24[1];

      v53 = v77;
      sub_23144A79C();
      v54 = v53;
      if (__swift_getEnumTagSinglePayload(v53, 1, a7) == 1)
      {
        sub_23144DABC(v24, type metadata accessor for KVPair);

        (*v47)(v53, v74);
      }

      else
      {
        v55 = v72;
        (*v76)(v72, v54, a7);
        v56 = v73;
        (*v71)(v73, v55, a7);
        __swift_storeEnumTagSinglePayload(v56, 0, 1, a7);
        v84[0] = v51;
        v84[1] = v49;
        sub_231477DD8();
        sub_231477DE8();
        (*v70)(v55, a7);
        sub_23144DABC(v24, type metadata accessor for KVPair);
      }

      v45 = v50;
    }

    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v57 = sub_231477B68();
    __swift_project_value_buffer(v57, qword_280C3D970);
    v58 = sub_231477B58();
    v59 = sub_2314782B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v84[0] = v61;
      *v60 = 136446722;
      *(v60 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, v84);
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_2313EB684(0x6B286C6C41746567, 0xED0000293A737965, v84);
      *(v60 + 22) = 2050;
      *(v60 + 24) = 85;
      _os_log_impl(&dword_2313E1000, v58, v59, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v61, -1, -1);
      MEMORY[0x23192F1F0](v60, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_23144DABC(v24, type metadata accessor for KVPair);
  }

  return result;
}

uint64_t KeyValueStore.set<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *v4;
  v16 = *(v4 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2314787A8();
  v10 = *(*(TupleTypeMetadata2 - 8) + 72);
  v11 = *(*(TupleTypeMetadata2 - 8) + 80);
  swift_allocObject();
  sub_231478148();
  v12 = *(TupleTypeMetadata2 + 48);
  *v13 = a1;
  *(v13 + 1) = a2;
  (*(*(a4 - 8) + 16))(&v13[v12], a3, a4);
  sub_231478198();

  sub_231477DC8();
  KeyValueStore.setAll<A>(pairs:)();
}

void KeyValueStore.setAll<A>(pairs:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v22 = v4;
  v23 = v5;
  v27 = v6;
  v7 = sub_231476CA8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = v0[1];
  v18 = v0[2];
  sub_231476C98();
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = sub_23144A10C();
  if (!v1)
  {
    v21 = &v21;
    MEMORY[0x28223BE20](v19);
    *(&v21 - 10) = v22;
    *(&v21 - 9) = v23;
    *(&v21 - 8) = v3;
    *(&v21 - 7) = v27;
    *(&v21 - 6) = 0xD00000000000004ALL;
    *(&v21 - 5) = v20;
    *(&v21 - 4) = v16;
    *(&v21 - 3) = v17;
    *(&v21 - 2) = v18;
    *(&v21 - 1) = v15;
    sub_2314770A8();
    sub_2314770F8();
  }

  (*(v10 + 8))(v15, v7);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23144B954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v99 = a8;
  v98 = a6;
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v94 = a1;
  v79[2] = a11;
  v12 = a9;
  v93 = sub_231477468();
  v13 = *(v93 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231477EA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v79[1] = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2314770C8();
  v19 = *(v91 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v91 - 8);
  v90 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a9 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v102 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v79 - v28;
  MEMORY[0x28223BE20](v27);
  v81 = v79 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = sub_231478418();
  v31 = *(*(v104 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v104);
  v105 = v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = (v79 - v35);
  v37 = a2 + 64;
  v38 = 1 << *(a2 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(a2 + 64);
  v41 = (v38 + 63) >> 6;
  v108 = (v23 + 32);
  v109 = (v23 + 16);
  v103 = (v34 + 32);
  v86 = (v19 + 16);
  v87 = (v13 + 8);
  v88 = (v19 + 8);
  v82 = v23;
  v100 = (v23 + 8);
  v83 = a2;

  v43 = 0;
  v85 = xmmword_23147CE20;
  v101 = a9;
  v89 = v29;
  v80 = v36;
  v84 = v37;
  v107 = v41;
  if (v40)
  {
    while (1)
    {
      v44 = v29;
      v45 = v43;
LABEL_10:
      v48 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v49 = v48 | (v45 << 6);
      v50 = (*(v83 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      v53 = v82;
      v54 = v81;
      (*(v82 + 16))(v81, *(v83 + 56) + *(v82 + 72) * v49, v12);
      v46 = v105;
      v55 = TupleTypeMetadata2;
      v56 = *(TupleTypeMetadata2 + 48);
      *v105 = v52;
      *(v46 + 1) = v51;
      v47 = v55;
      (*(v53 + 32))(&v46[v56], v54, v12);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);

      v36 = v80;
      v29 = v44;
      v41 = v107;
LABEL_11:
      (*v103)(v36, v46, v104);
      if (__swift_getEnumTagSinglePayload(v36, 1, v47) == 1)
      {
      }

      v57 = v36[1];
      v110 = *v36;
      (*v108)(v29, v36 + *(v47 + 48), v12);
      (*v109)(v102, v29, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0C0, &qword_23147CD48);
      if (swift_dynamicCast())
      {
        sub_231444994(v111, v113);
        __swift_project_boxed_opaque_existential_1(v113, v113[3]);
        v58 = v90;
        sub_231477528();
        __swift_destroy_boxed_opaque_existential_0(v113);
      }

      else
      {
        v112 = 0;
        memset(v111, 0, sizeof(v111));
        sub_2313E937C(v111, &qword_27DD4E0B8, &unk_23147CD38);
        v59 = sub_2314767B8();
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        swift_allocObject();
        sub_2314767A8();
        v62 = v114;
        v63 = sub_231476798();
        v114 = v62;
        if (v62)
        {
          (*v100)(v29, v101);
        }

        v65 = v63;
        v66 = v64;

        sub_231477E98();
        result = sub_231477E88();
        if (!v67)
        {
          goto LABEL_26;
        }

        v58 = v90;
        sub_231477EE8();
        sub_2313EB8A4(v65, v66);

        v41 = v107;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D878, &qword_23147A200);
      v68 = swift_allocObject();
      *(v68 + 16) = v85;
      v69 = MEMORY[0x277D837D0];
      *(v68 + 56) = MEMORY[0x277D837D0];
      v70 = MEMORY[0x277D0B840];
      v71 = v98;
      *(v68 + 32) = v97;
      *(v68 + 40) = v71;
      *(v68 + 96) = v69;
      *(v68 + 104) = v70;
      v72 = v110;
      *(v68 + 64) = v70;
      *(v68 + 72) = v72;
      *(v68 + 80) = v57;
      v73 = v91;
      *(v68 + 136) = v91;
      *(v68 + 144) = MEMORY[0x277D0B718];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v68 + 112));
      (*v86)(boxed_opaque_existential_1, v58, v73);
      v75 = sub_231476CA8();
      *(v68 + 176) = v75;
      *(v68 + 184) = MEMORY[0x277D0B6A0];
      v76 = __swift_allocate_boxed_opaque_existential_1((v68 + 152));
      (*(*(v75 - 8) + 16))(v76, v99, v75);

      v77 = v92;
      sub_231477448();
      v78 = v114;
      sub_2314777E8();
      v12 = v101;
      v114 = v78;
      if (v78)
      {

        (*v87)(v77, v93);
        (*v88)(v58, v73);
        return (*v100)(v89, v12);
      }

      (*v87)(v77, v93);
      (*v88)(v58, v73);
      v29 = v89;
      result = (*v100)(v89, v12);
      v37 = v84;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v46 = v105;
    v47 = TupleTypeMetadata2;
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v41)
      {
        __swift_storeEnumTagSinglePayload(v105, 1, 1, TupleTypeMetadata2);
        v40 = 0;
        goto LABEL_11;
      }

      v40 = *(v37 + 8 * v45);
      ++v43;
      if (v40)
      {
        v44 = v29;
        v43 = v45;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.dump()()
{
  v2 = *v0;
  v6 = MEMORY[0x277D84F98];
  v5 = *(v0 + 1);
  v3 = sub_23144A10C();
  if (v1)
  {
  }

  MEMORY[0x28223BE20](v3);
  sub_231477098();
  OUTLINED_FUNCTION_9_14();
  return v6;
}

uint64_t sub_23144C3AC(uint64_t a1, void *a2)
{
  v49 = a1;
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1D8, &qword_23147D2D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v4;
  v5 = type metadata accessor for KVPair(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E8, &qword_23147D3B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  sub_23144D950(&qword_280C3CC20, type metadata accessor for KVPair);
  sub_231476ED8();
  sub_2313ED944(&qword_280C3CE30, &qword_27DD4E1E8, &qword_23147D3B0);
  sub_23144D950(&qword_280C3CC18, type metadata accessor for KVPair);
  v14 = v50;
  v15 = sub_231476F48();
  result = (*(v10 + 8))(v13, v9);
  if (!v14)
  {
    v49 = v15;
    v50 = v5;
    v17 = v8;
    v18 = v47;
    v19 = v51;
    v48 = v17;
    while (1)
    {
      sub_231449278(v19);
      v20 = v50;
      if (__swift_getEnumTagSinglePayload(v19, 1, v50) == 1)
      {

        return sub_2313E937C(v19, &qword_27DD4E1D8, &qword_23147D2D0);
      }

      sub_23144D998(v19, v17);
      v21 = *(v17 + 8);
      if (!v21)
      {
        break;
      }

      v22 = *v17;
      v23 = *(v20 + 20);
      v24 = sub_2314770C8();
      v54 = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v17 + v23, v24);
      sub_2313E9D3C(&v53, v52);

      v26 = *v18;
      swift_isUniquelyReferenced_nonNull_native();
      v55 = *v18;
      v27 = v55;
      v28 = v18;
      *v18 = 0x8000000000000000;
      v29 = sub_2313F0604();
      if (__OFADD__(v27[2], (v30 & 1) == 0))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v31 = v29;
      v17 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1F0, &qword_23147D3B8);
      if (sub_2314785F8())
      {
        v32 = sub_2313F0604();
        if ((v17 & 1) != (v33 & 1))
        {
          result = sub_231478888();
          __break(1u);
          return result;
        }

        v31 = v32;
      }

      if (v17)
      {

        v34 = v55;
        v35 = (v55[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_0(v35);
        sub_2313E9D3C(v52, v35);
      }

      else
      {
        v34 = v55;
        v55[(v31 >> 6) + 8] |= 1 << v31;
        v36 = (v34[6] + 16 * v31);
        *v36 = v22;
        v36[1] = v21;
        sub_2313E9D3C(v52, (v34[7] + 32 * v31));
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_20;
        }

        v34[2] = v39;
      }

      v18 = v28;
      v40 = *v28;
      *v28 = v34;

      v17 = v48;
      sub_23144DABC(v48, type metadata accessor for KVPair);
      v19 = v51;
    }

    if (qword_280C3CF50 == -1)
    {
      goto LABEL_16;
    }

LABEL_21:
    swift_once();
LABEL_16:
    v41 = sub_231477B68();
    __swift_project_value_buffer(v41, qword_280C3D970);
    v42 = sub_231477B58();
    v43 = sub_2314782B8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v53 = v45;
      *v44 = 136446722;
      *(v44 + 4) = sub_2313EB684(0xD000000000000063, 0x8000000231483250, &v53);
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_2313EB684(0x2928706D7564, 0xE600000000000000, &v53);
      *(v44 + 22) = 2050;
      *(v44 + 24) = 131;
      _os_log_impl(&dword_2313E1000, v42, v43, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23192F1F0](v45, -1, -1);
      MEMORY[0x23192F1F0](v44, -1, -1);
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();

    return sub_23144DABC(v17, type metadata accessor for KVPair);
  }

  return result;
}

void sub_23144C9FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2313E9628(a2, v9 - v7, &qword_27DD4DA58, &unk_23147A530);

  KeyValueStore.init(url:namespace:)();
  if (!v2)
  {
    sub_23144DABC(a1, type metadata accessor for _KeyValueStore);
    v8 = *(v9[3] + 16);
    type metadata accessor for _KeyValueStore(0);
    sub_231478318();
  }
}

uint64_t sub_23144CB48()
{
  v0 = sub_231476F98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = MEMORY[0x277D84F90];
  sub_23144D950(&qword_280C3C8E8, MEMORY[0x277D0B6E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E200, &qword_23147D3C8);
  sub_2313ED944(&qword_280C3C148, &qword_27DD4E200, &qword_23147D3C8);
  sub_231478498();
  sub_2314777D8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23144CD10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_2314776C8();
  v8 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  v9 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_2314772D8();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_2314772D8();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477718();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_2314772D8();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776D8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_2314772D8();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  (*(*(v9 - 8) + 104))(v3, *MEMORY[0x277D0B808], v9);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  sub_231477228();
  return sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
}

uint64_t sub_23144D118(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2314776A8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2314776B8();
}

uint64_t sub_23144D178@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1E0, &qword_23147D3A8);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  if (qword_280C3CC40 != -1)
  {
    swift_once();
  }

  v8 = sub_2314776A8();
  __swift_project_value_buffer(v8, qword_280C3D958);
  *a1 = sub_23144D2F4();
  a1[1] = v9;
  if (qword_280C3CC38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_280C3D940);
  sub_23144D42C(v7);
  v10 = sub_2314770C8();
  result = __swift_getEnumTagSinglePayload(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v12 = type metadata accessor for KVPair(0);
    return (*(*(v10 - 8) + 32))(a1 + *(v12 + 20), v7, v10);
  }

  return result;
}

uint64_t sub_23144D2F4()
{
  sub_2314776A8();
  sub_2314772F8();
  v0 = sub_231477618();
  if (v1)
  {
LABEL_6:

    return 0;
  }

  v2 = v0;
  v3 = sub_2314775F8();
  if (!v3)
  {

    sub_231477608();
    return v6;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(v3, v2) != 5)
    {
      v4 = sub_231477EF8();

      return v4;
    }

    goto LABEL_6;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23144D42C@<X0>(uint64_t a1@<X8>)
{
  sub_2314776A8();
  sub_2314772F8();
  sub_23144D864(a1);
}

uint64_t sub_23144D5A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23144D5E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23144D65C()
{
  sub_2314050B0();
  if (v0 <= 0x3F)
  {
    sub_2314770C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23144D6E0()
{
  sub_23144682C();
  if (v0 <= 0x3F)
  {
    sub_2314770A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23144D754(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = sub_231477288();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_23144D7B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2313ED944(&qword_280C3CE38, &qword_27DD4E1F8, &qword_23147D3C0);
  return sub_231477288();
}

uint64_t sub_23144D864@<X0>(uint64_t a1@<X8>)
{
  sub_231477618();
  if (v2)
  {
    v3 = sub_2314770C8();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    sub_2314770C8();
    return sub_231477558();
  }
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

uint64_t sub_23144D950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23144D998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KVPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23144DA5C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_2313EB8A4(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

void sub_23144DA9C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_23144C9FC(a1, v1[2]);
}

uint64_t sub_23144DABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23144DB14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23144D754(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23144DB74()
{
  v0 = sub_231477B68();
  __swift_allocate_value_buffer(v0, qword_280C3D970);
  __swift_project_value_buffer(v0, qword_280C3D970);
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v1 = qword_280C3D700;
  return sub_231477B78();
}

uint64_t sub_23144DBF0()
{
  sub_23144DC5C();
  result = sub_231478408();
  qword_280C3D700 = result;
  return result;
}

unint64_t sub_23144DC5C()
{
  result = qword_280C3CE80;
  if (!qword_280C3CE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3CE80);
  }

  return result;
}

void sub_23144DCA0()
{
  sub_23144DD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E238, &qword_23147D428);
  swift_allocObject();
  sub_23140ABB0();
  qword_280C3BE60 = v0;
}

void *sub_23144DD04()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = sub_23144E038();

  if (v1)
  {
    v2 = [v1 identifier];

    v1 = sub_231477E68();
  }

  return v1;
}

void sub_23144DD98()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277CBD148];
  v5[4] = sub_23144DEA4;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23144DF44;
  v5[3] = &block_descriptor_1;
  v2 = _Block_copy(v5);
  v3 = v1;
  v4 = [v0 addObserverForName:v3 object:0 queue:0 usingBlock:v2];
  _Block_release(v2);

  qword_280C3BE48 = v4;
}

uint64_t sub_23144DEA4()
{
  if (qword_280C3BE50 != -1)
  {
    swift_once();
  }

  return sub_23140AA04();
}

void *sub_23144DF14(void *a1)
{
  v2 = a1[1];

  result = sub_23144DD04();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23144DF44(uint64_t a1)
{
  v2 = sub_231476818();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_231476808();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_23144E038()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (qword_280C3BBE0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E228, &qword_23147D418);
  v1 = sub_231478118();
  v8[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v8[0];
  if (!v2)
  {
    v4 = v3;
    v5 = sub_231476A68();

    swift_willThrow();
    v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23144E14C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E230, &qword_23147D420);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23147D400;
  *(v0 + 32) = *MEMORY[0x277CBD018];
  qword_280C3BBF0 = v0;

  return MEMORY[0x2821F9840]();
}

void sub_23144E1B4(void *a1, uint64_t a2)
{
  v19 = *(a2 + 16);
  if (v19)
  {
    v18 = a2 + 32;
    sub_231423704();
    v2 = 0;
    while (1)
    {
      v22 = *(v18 + 16 * v2);
      v24 = *(v18 + 16 * v2 + 8);

      v3 = sub_231478448();

      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }

      v6 = MEMORY[0x277D84F90];
LABEL_11:
      ++v2;
      sub_23144E38C(a1, v6, v6 + 32, 0, (2 * *(v6 + 16)) | 1);

      if (v2 == v19)
      {
        return;
      }
    }

    v21 = v2;
    v23 = MEMORY[0x277D84F90];
    sub_23141252C(0, v4, 0);
    v5 = 0;
    v6 = v23;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = MEMORY[0x23192DFC0](v8, v9, v11, v10);
      v14 = v13;

      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23141252C(v15 > 1, v16 + 1, 1);
      }

      ++v5;
      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 4;
      if (v4 == v5)
      {

        v2 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_23144E38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = (a3 + 16 * a4);
  v10 = *v8;
  v9 = v8[1];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v5;
    swift_bridgeObjectRetain_n();
    if ([v5 respondsToSelector_])
    {
      if (!__OFSUB__(v6, a4))
      {
        if (v6 - a4 == 1)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v14 = sub_2314787B8();
          v22 = sub_231477E58();

          [v12 setValue:v14 forKey:v22];
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = sub_231477E58();
          v15 = [v5 valueForKey_];

          if (v15)
          {
            sub_231478468();
            swift_unknownObjectRelease();
          }

          else
          {
            v25 = 0u;
            v26 = 0u;
          }

          v27[0] = v25;
          v27[1] = v26;
          if (*(&v26 + 1))
          {
            sub_23144E6CC();
            if (swift_dynamicCast())
            {
              v16 = sub_2313F8D58(a4 + 1);
              sub_23144E38C(a1, v16, v17, v18, v19);
              v20 = v24;
              v21 = sub_231477E58();

              [v12 setValue:v20 forKey:v21];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          else
          {

            sub_23144E664(v27);
          }
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_23144E664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD70, &qword_23147B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23144E6CC()
{
  result = qword_280C3C0F8;
  if (!qword_280C3C0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3C0F8);
  }

  return result;
}

SiriRemembers::IntervalFrequency __swiftcall IntervalFrequency.init(interval:count:)(Swift::Double interval, Swift::Int count)
{
  *v2 = interval;
  *(v2 + 8) = count;
  result.interval = interval;
  result.count = count;
  return result;
}

double static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(void *a1, double a2)
{
  v4 = a1[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v40 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_1_16();
    sub_231412848(v6, v7, v8);
    v5 = v40;
    v9 = a1 + 4;
    v10 = *(v40 + 16);
    v11 = v4;
    do
    {
      v12 = *v9;
      v41 = v5;
      v13 = *(v5 + 24);
      if (v10 >= v13 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_15(v13);
        sub_231412848(v14, v10 + 1, 1);
        v5 = v41;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v12;
      v9 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }

  sub_2314136D8(v5);
  v15 = MEMORY[0x277D84F90];
  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_16();
    sub_231412848(v16, v17, v18);
    v15 = v42;
    v19 = a1 + 4;
    v20 = *(v42 + 16);
    v21 = v4;
    do
    {
      v22 = *v19;
      v23 = *(v42 + 24);
      if (v20 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_0_15(v23);
        sub_231412848(v24, v20 + 1, 1);
      }

      *(v42 + 16) = v20 + 1;
      *(v42 + 8 * v20 + 32) = v22;
      v19 += 2;
      ++v20;
      --v21;
    }

    while (v21);
  }

  v25 = sub_23144EB88(&unk_284608980, v15);

  v26 = MEMORY[0x277D84F90];
  if (v4)
  {
    v43 = MEMORY[0x277D84F90];
    v27 = OUTLINED_FUNCTION_1_16();
    sub_2314127A4(v27, v28, v29);
    v26 = v43;
    v30 = *(v43 + 16);
    v31 = a1 + 5;
    do
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      v34 = *(v43 + 24);
      if (v30 >= v34 >> 1)
      {
        v35 = OUTLINED_FUNCTION_0_15(v34);
        sub_2314127A4(v35, v30 + 1, 1);
      }

      *(v43 + 16) = v30 + 1;
      *(v43 + 8 * v30++ + 32) = v32;
      --v4;
    }

    while (v4);
  }

  sub_23144ED74(v25, v26, a2);
  v37 = v36;

  v38 = sub_23144EF8C(v37);

  return v38;
}

uint64_t static PriorDistributionUtils.normalize(scores:)(uint64_t a1)
{
  v1 = sub_23144F010(a1);
  v2 = sub_23144EF8C(v1);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v20 = MEMORY[0x277D84F90];
    sub_231412848(0, v3, 0);
    v6 = v20;
    v7 = *(v20 + 16);
    v8 = 32;
    do
    {
      v9 = *(v1 + v8);
      v10 = *(v20 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_15(v10);
        sub_231412848(v11, v7 + 1, 1);
      }

      *(v20 + 16) = v7 + 1;
      *(v20 + 8 * v7 + 32) = v9 - v5;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    sub_231412848(0, v12, 0);
    v13 = v4;
    v14 = *(v4 + 16);
    v15 = 32;
    do
    {
      v16 = exp(*(v6 + v15));
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        v18 = OUTLINED_FUNCTION_0_15(v17);
        sub_231412848(v18, v14 + 1, 1);
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v15 += 8;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_23144EB88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_231412848(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_231412848(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = (v13 + v14) * 0.5;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_231412848(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = (v17 + v18) * 0.5;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23144ED74(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_231412848(0, v8, 0);
  v22 = v7;
  v23 = v6;
  v20 = a1;
  v21 = a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8;
  while (v6)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v12 = *v9;
    v13 = log(*v10);
    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_231412848(v14 > 1, v15 + 1, 1);
    }

    --v7;
    *(v24 + 16) = v15 + 1;
    *(v24 + 8 * v15 + 32) = v13 + (0.0 - v12) / a3 * ((0.0 - v12) / a3) * -0.5;
    --v6;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_11:
      while (v23 != v8)
      {
        if (v8 >= v23)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        if (v22 == v8)
        {
          return;
        }

        if (v8 >= v22)
        {
          goto LABEL_24;
        }

        v16 = *(v20 + 32 + 8 * v8);
        v17 = log(*(v21 + 32 + 8 * v8));
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_231412848(v18 > 1, v19 + 1, 1);
        }

        *(v24 + 16) = v19 + 1;
        *(v24 + 8 * v19 + 32) = v17 + (0.0 - v16) / a3 * ((0.0 - v16) / a3) * -0.5;
        ++v8;
      }

      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_23144EF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_23144F010(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_231412848(0, v1, 0);
    v4 = v28;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B0, &qword_231479860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231479AC0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_231412848(v10 > 1, v11 + 1, 1);
      }

      *(v28 + 16) = v12;
      *(v28 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_231412848(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        sub_231412848(v26 > 1, v21 + 1, 1);
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t getEnumTagSinglePayload for IntervalFrequency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalFrequency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PriorDistributionUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_23144F390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a1;
  v11 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Filter = type metadata accessor for QueryFilter();
  OUTLINED_FUNCTION_4(Filter);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  v19 = (v110 - v18);
  v20 = *(v14 + 16);
  v110[2] = a3;
  v20(v110 - v18, a3, Filter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v80 = OUTLINED_FUNCTION_4_10();
      v81(v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v82 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v82);
      v84 = *(v83 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v85 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v86(v85);
      v87 = OUTLINED_FUNCTION_12_16();
      v88(v87);
      v89 = OUTLINED_FUNCTION_13_12();
      result = v90(v89);
      v35 = 1;
      break;
    case 2:
      v47 = OUTLINED_FUNCTION_4_10();
      v48(v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v49 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v49);
      v51 = *(v50 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v52 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v53(v52);
      v54 = OUTLINED_FUNCTION_12_16();
      v55(v54);
      v56 = OUTLINED_FUNCTION_13_12();
      result = v57(v56);
      v35 = 2;
      break;
    case 3:
      v58 = OUTLINED_FUNCTION_4_10();
      v59(v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v60 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v60);
      v62 = *(v61 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v63 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v64(v63);
      v65 = OUTLINED_FUNCTION_12_16();
      v66(v65);
      v67 = OUTLINED_FUNCTION_13_12();
      result = v68(v67);
      v35 = 3;
      break;
    case 4:
      v36 = OUTLINED_FUNCTION_4_10();
      v37(v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v38 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v38);
      v40 = *(v39 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v41 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v42(v41);
      v43 = OUTLINED_FUNCTION_12_16();
      v44(v43);
      v45 = OUTLINED_FUNCTION_13_12();
      result = v46(v45);
      v35 = 4;
      break;
    case 5:
      v91 = OUTLINED_FUNCTION_4_10();
      v92(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v93 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v93);
      v95 = *(v94 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v96 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v97(v96);
      v98 = OUTLINED_FUNCTION_12_16();
      v99(v98);
      v100 = OUTLINED_FUNCTION_13_12();
      result = v101(v100);
      v35 = 5;
      break;
    case 6:
      v112 = *v19;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v110[-2] = a4;
      v110[-1] = a5;
      KeyPath = swift_getKeyPath();
      v110[1] = v110;
      v103 = MEMORY[0x28223BE20](KeyPath);
      v110[-2] = a5;
      v110[-1] = v103;
      v104 = sub_231478198();
      Value = type metadata accessor for QueryValue();
      WitnessTable = swift_getWitnessTable();
      v27 = sub_2314552F4(sub_231448528, &v110[-4], v104, Value, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v107);

      v108 = OUTLINED_FUNCTION_12_16();
      v109(v108);

      v35 = 6;
      break;
    case 7:
      v69 = OUTLINED_FUNCTION_4_10();
      v70(v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v71 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v71);
      v73 = *(v72 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v74 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v75(v74);
      v76 = OUTLINED_FUNCTION_12_16();
      v77(v76);
      v78 = OUTLINED_FUNCTION_13_12();
      result = v79(v78);
      v35 = 7;
      break;
    default:
      v22 = OUTLINED_FUNCTION_4_10();
      v23(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      v24 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_29(v24);
      v26 = *(v25 + 72);
      v27 = OUTLINED_FUNCTION_5_13();
      v28 = OUTLINED_FUNCTION_2_14(v27, xmmword_231479580);
      v29(v28);
      v30 = OUTLINED_FUNCTION_12_16();
      v31(v30);
      v32 = OUTLINED_FUNCTION_13_12();
      result = v33(v32);
      v35 = 0;
      break;
  }

  *a6 = v111;
  *(a6 + 8) = a2;
  *(a6 + 16) = v35;
  *(a6 + 24) = v27;
  return result;
}