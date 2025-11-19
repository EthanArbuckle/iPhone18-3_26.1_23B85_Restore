size_t sub_21B0D0B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21B0D5594(*(a1 + 16), 0);
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_31_5();
  sub_21B0BFB80(&v11, v3 + v7, v2, a1);
  v9 = v8;
  sub_21AF9C4BC();
  if (v9 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_21B0D0BE4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_10_13(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21B0D2EB0(v4, 1, sub_21B0D4B3C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21B0D0CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_13(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_21B0D2EB0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_21B0D0DCC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_10_13(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21B0D2EB0(v4, 1, sub_21B0D538C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21B0D0EA0(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v3 = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v3);
  v98 = *(v4 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  OUTLINED_FUNCTION_25(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v21);
  v106 = &v94 - v22;
  v111 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v23 = OUTLINED_FUNCTION_4_1(v111);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v105 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v96 = &v94 - v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v31 = (&v94 - v30);
  v104 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v32 = OUTLINED_FUNCTION_4_1(v104);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v103 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_35_4();
  v109 = sub_21B1112A4();
  v37 = OUTLINED_FUNCTION_1(v109);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v102 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  v108 = &v94 - v44;
  v95 = sub_21B111514();
  v45 = OUTLINED_FUNCTION_1(v95);
  v94 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2();
  v51 = v50 - v49;
  OUTLINED_FUNCTION_5_7();
  sub_21B111534();
  v110 = v51;
  result = sub_21B1114F4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v53 = 0;
      v99 = (v39 + 8);
      v100 = (v39 + 16);
      v114 = MEMORY[0x277D84F98];
      v54 = MEMORY[0x277D84F90];
      v56 = v108;
      v55 = v109;
      v97 = v31;
      v113 = v2;
      v101 = result;
      do
      {
        v112 = v53;
        v57 = v56;
        sub_21B111524();
        v58 = v102;
        (*v100)(v102, v57, v55);
        v59 = v107;

        sub_21AFA65F0(v58, v59, v2);
        sub_21B0D163C();
        v115 = v60;
        *v31 = v54;
        v61 = v111;
        v62 = v31 + *(v111 + 20);
        sub_21B111EB4();
        v63 = *(v61 + 24);
        v64 = v104;
        __swift_storeEnumTagSinglePayload(v31 + v63, 1, 1, v104);
        v65 = v2;
        v66 = v103;
        sub_21B0D2F28(v65, v103);
        sub_21AF99BE0(v31 + v63, &qword_27CD42FB8, &qword_21B114A28);
        v67 = v66;
        v68 = v115;
        sub_21B0D2F84(v67, v31 + v63);
        __swift_storeEnumTagSinglePayload(v31 + v63, 0, 1, v64);
        v69 = *(v68 + 16);
        if (v69)
        {
          v116 = v54;
          sub_21AFCC504();
          v70 = v116;
          v71 = *(v98 + 80);
          OUTLINED_FUNCTION_31_5();
          v73 = v68 + v72;
          v75 = *(v74 + 72);
          do
          {
            OUTLINED_FUNCTION_2_25();
            sub_21B0D2F28(v73, v8);
            v76 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
            __swift_storeEnumTagSinglePayload(v17, 1, 1, v76);
            v77 = v17 + *(v9 + 20);
            sub_21B111EB4();
            sub_21AF99BE0(v17, &qword_27CD42F90, &unk_21B115FC0);
            OUTLINED_FUNCTION_13_7();
            v78 = OUTLINED_FUNCTION_25_3();
            sub_21B0D2F84(v78, v79);
            swift_storeEnumTagMultiPayload();
            __swift_storeEnumTagSinglePayload(v17, 0, 1, v76);
            v116 = v70;
            v80 = *(v70 + 16);
            if (v80 >= *(v70 + 24) >> 1)
            {
              sub_21AFCC504();
              v70 = v116;
            }

            *(v70 + 16) = v80 + 1;
            v81 = *(v12 + 80);
            OUTLINED_FUNCTION_31_5();
            sub_21B0D2F84(v17, v70 + v82 + *(v12 + 72) * v80);
            v73 += v75;
            --v69;
          }

          while (v69);

          v83 = v106;
          v61 = v111;
          v31 = v97;
        }

        else
        {

          v70 = v54;
          v83 = v106;
        }

        *v31 = v70;
        v2 = v113;
        sub_21B0DF1B4(v113, v114, v83);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v61);
        v85 = v112;
        if (EnumTagSinglePayload == 1)
        {
          sub_21AF99BE0(v83, &qword_27CD42FB0, &qword_21B114A20);
          OUTLINED_FUNCTION_15_8();
          sub_21B0D2F28(v31, v105);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_24_5();
          sub_21B0ECAA4();
          v114 = v116;
        }

        else
        {
          v86 = v96;
          sub_21B0D2F84(v83, v96);

          sub_21B0D0CC8(v87);
          OUTLINED_FUNCTION_15_8();
          sub_21B0D2F28(v86, v105);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_24_5();
          sub_21B0ECAA4();
          v114 = v116;
          OUTLINED_FUNCTION_14_9();
          v88 = v86;
          v2 = v113;
          sub_21B0D3050(v88, v89);
        }

        v53 = v85 + 1;
        OUTLINED_FUNCTION_1_23();
        sub_21B0D3050(v2, v90);
        v56 = v108;
        v55 = v109;
        (*v99)(v108, v109);
        OUTLINED_FUNCTION_14_9();
        sub_21B0D3050(v31, v91);
        v54 = MEMORY[0x277D84F90];
      }

      while (v53 != v101);
    }

    else
    {
      v114 = MEMORY[0x277D84F98];
    }

    v93 = sub_21B0D0B24(v92);
    (*(v94 + 8))(v110, v95);

    return v93;
  }

  return result;
}

void sub_21B0D163C()
{
  OUTLINED_FUNCTION_45();
  v1 = sub_21B111334();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v200 - v11;
  MEMORY[0x28223BE20](v10);
  v214 = v200 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v19 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v222 = (v200 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v23 = OUTLINED_FUNCTION_25(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = OUTLINED_FUNCTION_35_4();
  v30 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v29);
  v206 = *(v30 - 8);
  v31 = *(v206 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_9_1();
  v209 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v211 = v200 - v34;
  OUTLINED_FUNCTION_12();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v200 - v37;
  *v38 = 0;
  v38[8] = 1;
  *(v38 + 2) = 0;
  *(v38 + 12) = -258;
  *(v38 + 7) = 0;
  v39 = *(v36 + 40);
  v210 = v200 - v37;
  sub_21B111EB4();
  v216 = sub_21B111294();
  sub_21B0DF074(0x697461636F766E69, 0xEF657079745F6E6FLL, v216, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_21AF99BE0(v0, &qword_27CD42C48, &qword_21B1141C0);
  }

  else
  {
    sub_21B111314();
    (*(v4 + 8))(v0, v1);
    if (OUTLINED_FUNCTION_36_4())
    {
      sub_21B0D2638(*(&v223[0] + 1), &v225);
      v40 = v226;
      v41 = v210;
      *(v210 + 16) = v225;
      *(v41 + 24) = v40;
    }
  }

  v42 = v19;
  OUTLINED_FUNCTION_5_7();
  sub_21B0DF074(0xD000000000000010, v43, v216, v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v1);
  v215 = v4;
  v207 = v9;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v28, &qword_27CD42C48, &qword_21B1141C0);
  }

  else
  {
    sub_21B111314();
    v46 = *(v4 + 8);
    v47 = OUTLINED_FUNCTION_25_3();
    v48(v47);
    if (OUTLINED_FUNCTION_36_4())
    {
      *(v210 + 25) = v223[0];
    }
  }

  v49 = v222;
  v50 = 0;
  v52 = v216 + 64;
  v51 = *(v216 + 64);
  v53 = 1 << *(v216 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v51;
  v56 = (v53 + 63) >> 6;
  v221 = (v215 + 32);
  v219 = v215 + 8;
  v212 = MEMORY[0x277D84F90];
  *&v45 = 136315394;
  v203 = v45;
  v213 = v12;
  v217 = v56;
  v218 = v216 + 64;
  v220 = (v215 + 16);
  if ((v54 & v51) != 0)
  {
    while (1)
    {
      v57 = v42;
      v58 = v50;
LABEL_17:
      v59 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v60 = v59 | (v58 << 6);
      v61 = (*(v216 + 48) + 16 * v60);
      v62 = *v61;
      v63 = v61[1];
      v64 = v215;
      v65 = v214;
      (*(v215 + 16))(v214, *(v216 + 56) + *(v215 + 72) * v60, v1);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v67 = *(v66 + 48);
      *v57 = v62;
      *(v57 + 1) = v63;
      v68 = *(v64 + 32);
      v69 = v65;
      v42 = v57;
      v70 = v1;
      v68(&v57[v67], v69, v1);
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v66);

      v12 = v213;
      v49 = v222;
LABEL_18:
      sub_21B0D2FE0(v42, v49);
      v71 = OUTLINED_FUNCTION_25_3();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
      if (__swift_getEnumTagSinglePayload(v49, 1, v73) == 1)
      {
        OUTLINED_FUNCTION_12_10();
        sub_21B0D3050(v210, v199);

        return;
      }

      v74 = v42;
      v75 = *v49;
      v76 = v49[1];
      (*v221)(v12, v49 + *(v73 + 48), v70);
      sub_21AFB4EF8(v75, v76, &v225);
      v77 = v225;
      v1 = v70;
      v78 = v226;
      if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      v79(v12, v1);

      v42 = v74;
      v49 = v222;
      v52 = v218;
LABEL_21:
      v56 = v217;
      if (!v55)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_2_25();
    v81 = v211;
    sub_21B0D2F28(v210, v211);
    *v81 = v77;
    *(v81 + 8) = v78;
    sub_21B111314();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47380, &qword_21B12AE38);
    if (!swift_dynamicCast())
    {
      v224 = 0;
      memset(v223, 0, sizeof(v223));
      sub_21AF99BE0(v223, &qword_27CD47388, &unk_21B12AE40);
      v208 = v74;
      if (qword_2811FAAD8 != -1)
      {
        swift_once();
      }

      v138 = sub_21B1122D4();
      __swift_project_value_buffer(v138, qword_2811FAB28);
      v205 = *v220;
      v205(v207, v12, v1);

      v139 = sub_21B1122B4();
      v140 = sub_21B112704();

      v141 = os_log_type_enabled(v139, v140);
      v52 = v218;
      if (v141)
      {
        v142 = swift_slowAlloc();
        v202 = v139;
        LODWORD(v201) = v140;
        v143 = v142;
        v204 = swift_slowAlloc();
        v225 = v204;
        *v143 = v203;
        v144 = sub_21AFCEC24(v75, v76, &v225);

        *(v143 + 4) = v144;
        *(v143 + 12) = 2080;
        v145 = v207;
        v205(v214, v207, v1);
        OUTLINED_FUNCTION_25_3();
        v146 = sub_21B112454();
        v148 = v147;
        OUTLINED_FUNCTION_33_5();
        v149(v145, v1);
        v150 = sub_21AFCEC24(v146, v148, &v225);

        *(v143 + 14) = v150;
        v151 = v202;
        _os_log_impl(&dword_21AF80000, v202, v201, "Metric %s had non-integer value %s.", v143, 0x16u);
        v152 = v204;
        swift_arrayDestroy();
        MEMORY[0x21CEEA9A0](v152, -1, -1);
        MEMORY[0x21CEEA9A0](v143, -1, -1);
      }

      else
      {

        OUTLINED_FUNCTION_33_5();
        v153(v207, v1);
      }

      v49 = v222;
      v154 = v211;
      v42 = v208;
      goto LABEL_46;
    }

    sub_21AF81D68(v223, &v225);
    v83 = v227;
    v82 = v228;
    v84 = __swift_project_boxed_opaque_existential_0(&v225, v227);
    v200[3] = v200;
    v85 = *(v83 - 8);
    isa = v85[8].isa;
    MEMORY[0x28223BE20](v84);
    v201 = v87;
    v88 = v85[2].isa;
    v205 = (v200 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    v88();
    v89 = *(v82 + 8);
    v208 = v83;
    v90 = sub_21B112854();
    v42 = v74;
    v202 = v85;
    v204 = v89;
    if (v90)
    {
      v91 = *(*(v89 + 24) + 16);
      OUTLINED_FUNCTION_28_2();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_18_5(AssociatedTypeWitness, v93, v94, v95, v96, v97, v98, v99, v200[0]);
      OUTLINED_FUNCTION_4_1(v100);
      v102 = *(v101 + 64);
      OUTLINED_FUNCTION_6_3();
      MEMORY[0x28223BE20](v103);
      swift_getAssociatedConformanceWitness();
      v104 = sub_21B112E34();
      OUTLINED_FUNCTION_34_5(v104, v105, v106, v107, v108, v109, v110, v111, v200[0]);
      v113 = *(v112 - 256);
      MEMORY[0x28223BE20](v114);
      sub_21B112CD4();
      OUTLINED_FUNCTION_19_5();
      v115 = sub_21B1123B4();
      v116 = OUTLINED_FUNCTION_27_5();
      v117 = v85;
      v85 = v202;
      v118(v116, v117);
      OUTLINED_FUNCTION_17_8();
      if ((v115 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v119 = v205;
    v120 = sub_21B112844();
    v52 = v218;
    v121 = v85;
    if (v120 <= 31)
    {
      goto LABEL_45;
    }

    LODWORD(v223[0]) = -1;
    OUTLINED_FUNCTION_28_2();
    v121 = v122;
    v123 = v119;
    v119 = sub_21B112854();
    v124 = sub_21B112844();
    if (v119)
    {
      if (v124 > 32)
      {
        OUTLINED_FUNCTION_18_5(v124, v125, v126, v127, v128, v129, v130, v131, v200[0]);
        MEMORY[0x28223BE20](v132);
        OUTLINED_FUNCTION_11_8();
        v133 = sub_21B0D30A8();
        OUTLINED_FUNCTION_22_4(v223, MEMORY[0x277D84CC0], v133);
        OUTLINED_FUNCTION_29_5();
        v135 = *(v134 - 256);
        LODWORD(v201) = sub_21B1123A4();
        v136 = OUTLINED_FUNCTION_20_5();
        v137(v136, v123);
        OUTLINED_FUNCTION_17_8();
        goto LABEL_39;
      }

      v119 = *(*(v204 + 24) + 16);
      OUTLINED_FUNCTION_28_2();
      v161 = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_18_5(v161, v162, v163, v164, v165, v166, v167, v168, v200[0]);
      OUTLINED_FUNCTION_4_1(v169);
      v171 = *(v170 + 64);
      OUTLINED_FUNCTION_6_3();
      MEMORY[0x28223BE20](v172);
      v121 = v119;
      swift_getAssociatedConformanceWitness();
      v173 = sub_21B112E34();
      OUTLINED_FUNCTION_34_5(v173, v174, v175, v176, v177, v178, v179, v180, v200[0]);
      v182 = *(v181 - 256);
      MEMORY[0x28223BE20](v183);
      OUTLINED_FUNCTION_11_8();
      v52 = v218;
      sub_21B112CD4();
      OUTLINED_FUNCTION_19_5();
      v184 = sub_21B112394();
      v185 = OUTLINED_FUNCTION_20_5();
      v186(v185, v85);
      OUTLINED_FUNCTION_17_8();
      if ((v184 & 1) == 0)
      {
LABEL_45:
        OUTLINED_FUNCTION_28_2();
        v187 = sub_21B112834();
        (v121[1].isa)(v119, v85);
        v188 = v211;
        *(v211 + 28) = v187;
        v154 = v188;
        __swift_destroy_boxed_opaque_existential_0(&v225);
        v49 = v222;
LABEL_46:
        OUTLINED_FUNCTION_2_25();
        sub_21B0D2F28(v154, v209);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = *(v212 + 16);
          sub_21B0D4C00();
          v212 = v197;
        }

        v189 = *(v212 + 16);
        if (v189 >= *(v212 + 24) >> 1)
        {
          sub_21B0D4C00();
          v212 = v198;
        }

        OUTLINED_FUNCTION_12_10();
        sub_21B0D3050(v211, v190);
        OUTLINED_FUNCTION_33_5();
        v191(v12, v1);
        *(v212 + 16) = v189 + 1;
        v192 = *(v206 + 80);
        OUTLINED_FUNCTION_31_5();
        v194 = *(v193 + 72);
        OUTLINED_FUNCTION_13_7();
        sub_21B0D2F84(v209, v195);
        goto LABEL_21;
      }
    }

    else
    {
      v121 = v202;
      if (v124 >= 33)
      {
        OUTLINED_FUNCTION_18_5(v124, v125, v126, v127, v128, v129, v130, v131, v200[0]);
        MEMORY[0x28223BE20](v155);
        OUTLINED_FUNCTION_11_8();
        v156 = sub_21B0D30A8();
        OUTLINED_FUNCTION_22_4(v223, MEMORY[0x277D84CC0], v156);
        OUTLINED_FUNCTION_29_5();
        v158 = *(v157 - 256);
        LODWORD(v201) = sub_21B1123A4();
        v159 = OUTLINED_FUNCTION_27_5();
        v119 = v158;
        v160(v159, v123);
        OUTLINED_FUNCTION_17_8();
        v121 = v202;
LABEL_39:
        if (v201)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v119 = v205;
    }

    sub_21B112834();
    goto LABEL_45;
  }

LABEL_13:
  while (1)
  {
    v58 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v58 >= v56)
    {
      v70 = v1;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v80);
      v55 = 0;
      goto LABEL_18;
    }

    v55 = *(v52 + 8 * v58);
    ++v50;
    if (v55)
    {
      v57 = v42;
      v50 = v58;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_21B0D2638@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_7();
  v6 = v4 == 0xD000000000000016 && v5 == a1;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_4_9() & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_7();
    v11 = v7 == 0xD000000000000018 && v10 == a1;
    if (v11 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
    {

      v9 = 7;
    }

    else
    {
      OUTLINED_FUNCTION_5_7();
      v13 = v7 == 0xD000000000000013 && v12 == a1;
      if (v13 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
      {

        v9 = 27;
      }

      else
      {
        OUTLINED_FUNCTION_5_7();
        v15 = v7 == 0xD000000000000019 && v14 == a1;
        if (v15 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
        {

          v9 = 4;
        }

        else
        {
          OUTLINED_FUNCTION_5_7();
          v17 = v7 == 0xD000000000000014 && v16 == a1;
          if (v17 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
          {

            v9 = 11;
          }

          else
          {
            OUTLINED_FUNCTION_5_7();
            v19 = v7 == 0xD00000000000001DLL && v18 == a1;
            if (v19 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
            {

              v9 = 14;
            }

            else
            {
              OUTLINED_FUNCTION_5_7();
              v21 = v7 == 0xD000000000000021 && v20 == a1;
              if (v21 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
              {

                v9 = 26;
              }

              else
              {
                OUTLINED_FUNCTION_0_24();
                v24 = v23 + 7;
                v25 = v7 == v23 + 7 && v22 == a1;
                if (v25 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                {

                  v9 = 21;
                }

                else
                {
                  OUTLINED_FUNCTION_5_7();
                  v27 = v7 == v24 && v26 == a1;
                  if (v27 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                  {

                    v9 = 30;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_24();
                    v30 = v7 == v29 + 2 && v28 == a1;
                    if (v30 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                    {

                      v9 = 28;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_5_7();
                      v32 = v7 == v24 && v31 == a1;
                      if (v32 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                      {

                        v9 = 5;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_5_7();
                        v34 = v7 == 0xD000000000000019 && v33 == a1;
                        if (v34 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                        {

                          v9 = 3;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_24();
                          v37 = v7 == v36 + 4 && v35 == a1;
                          if (v37 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                          {

                            v9 = 15;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_0_24();
                            v40 = v7 == v39 && v38 == a1;
                            if (v40 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                            {

                              v9 = 16;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_5_7();
                              v42 = v7 == v24 && v41 == a1;
                              if (v42 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                              {

                                v9 = 6;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0_24();
                                v45 = v7 == v44 - 3 && v43 == a1;
                                if (v45 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                                {

                                  v9 = 8;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_24();
                                  v48 = v7 == v47 && v46 == a1;
                                  if (v48 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                  {

                                    v9 = 10;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_5_7();
                                    v50 = v7 == 0xD000000000000021 && v49 == a1;
                                    if (v50 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                                    {

                                      v9 = 23;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0_24();
                                      v53 = v7 == v52 - 6 && v51 == a1;
                                      if (v53 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                                      {

                                        v9 = 13;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_0_24();
                                        v56 = v7 == v55 + 6 && v54 == a1;
                                        if (v56 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                                        {

                                          v9 = 24;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_5_7();
                                          v58 = v7 == 0xD000000000000021 && v57 == a1;
                                          if (v58 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                                          {

                                            v9 = 22;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_0_24();
                                            v61 = v7 == v60 + 17 && v59 == a1;
                                            if (v61 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                                            {

                                              v9 = 29;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_5_7();
                                              v63 = v7 == 0xD00000000000001DLL && v62 == a1;
                                              if (v63 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                                              {

                                                v9 = 20;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_0_24();
                                                v66 = v7 == v65 && v64 == a1;
                                                if (v66 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                {

                                                  v9 = 1;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_0_24();
                                                  v69 = v7 == v68 && v67 == a1;
                                                  if (v69 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                  {

                                                    v9 = 18;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_5_7();
                                                    v71 = v7 == 0xD000000000000019 && v70 == a1;
                                                    if (v71 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                                                    {

                                                      v9 = 19;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_5_7();
                                                      v73 = v7 == 0xD000000000000016 && v72 == a1;
                                                      if (v73 || (OUTLINED_FUNCTION_4_9() & 1) != 0)
                                                      {

                                                        v9 = 17;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_0_24();
                                                        v76 = v7 == v75 && v74 == a1;
                                                        if (v76 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                        {

                                                          v9 = 12;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_5_7();
                                                          v78 = v7 == 0xD000000000000019 && v77 == a1;
                                                          if (v78 || (OUTLINED_FUNCTION_9_14(), (OUTLINED_FUNCTION_4_9() & 1) != 0))
                                                          {

                                                            v9 = 9;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_0_24();
                                                            v81 = v7 == v80 && v79 == a1;
                                                            if (v81 || (OUTLINED_FUNCTION_3_24() & 1) != 0)
                                                            {

                                                              v9 = 2;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_0_24();
                                                              if (v7 == v83 + 3 && v82 == a1)
                                                              {

                                                                v9 = 25;
                                                              }

                                                              else
                                                              {
                                                                v85 = OUTLINED_FUNCTION_4_9();

                                                                v9 = 25;
                                                                if ((v85 & 1) == 0)
                                                                {
                                                                  v9 = 0;
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
        }
      }
    }
  }

  *a2 = v9;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_21B0D2D18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21B0B5BC0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
    sub_21B112994();
    v11 = *(v19 + 48);
    v12 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
    sub_21B0D3050(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    v13 = *(v19 + 56);
    v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    sub_21B0D2F84(v13 + *(*(v14 - 8) + 72) * v8, a2);
    sub_21AFA40CC();
    sub_21B1129B4();
    *v3 = v19;
    v15 = a2;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    v15 = a2;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_21B0D2EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_21B0D2F28(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21B0D2F84(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_21B0D2FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D3050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21B0D30A8()
{
  result = qword_27CD47390;
  if (!qword_27CD47390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47390);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  v2 = *(*(v1 - 392) + 8);
  result = v0;
  v4 = *(v1 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 328);
  v6 = *(v3 - 360);

  return MEMORY[0x2821FCC68](a1, a2, a3, v5, v6);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return swift_dynamicCast();
}

uint64_t sub_21B0D3354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B110F84();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  v15 = sub_21B111164();
  __swift_storeEnumTagSinglePayload(v3 + v14, 1, 1, v15);
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = -1;
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed) = 0;

  sub_21B110F74();
  sub_21B110F44();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v13, v6);
  v19 = type metadata accessor for SessionFilesEnumerator();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_21B0C2D40(a1, v17);
  v22 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_sessionSchema;
  v23 = sub_21B111894();
  OUTLINED_FUNCTION_80(v23);
  v25 = v24;
  (*(v24 + 16))(v3 + v22, a2, v23);
  sub_21B110ED4();
  sub_21B110F44();
  v27 = v26;

  (*(v25 + 8))(a2, v23);
  result = (v18)(v13, v6);
  v29 = *(*(v3 + 16) + 24);
  if (v27 > v29)
  {
    __break(1u);
  }

  else
  {
    v30 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_timeRange);
    *v30 = v27;
    v30[1] = v29;
    return v3;
  }

  return result;
}

void sub_21B0D358C(char a1, double a2, double a3)
{
  v4 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_timeRange);
  *v4 = a2;
  v4[1] = a3;
  *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed) = a1;
  v5 = *(v3 + 16);
  sub_21B0C2DF0(a1, a2, a3);
}

uint64_t sub_21B0D35CC()
{
  v1 = v0;
  v107 = *MEMORY[0x277D85DE8];
  v2 = sub_21B1119B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B111164();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v99 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v87 - v21;
  v23 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements);
  v95 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements;
  *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements) = MEMORY[0x277D84F90];

  v96 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex;
  *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = 0;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v6);
  v24 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  swift_beginAccess();
  v93 = v24;
  v94 = v22;
  sub_21B0C3570(v22, v1 + v24);
  swift_endAccess();
  v25 = *(v1 + 16);
  v26 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  swift_beginAccess();
  sub_21B0C3500(v25 + v26, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    result = sub_21AF99BE0(v20, &qword_27CD471C8, &unk_21B12AEF0);
    goto LABEL_28;
  }

  v89 = v3;
  v100 = v9;
  v30 = v9[4];
  v28 = v9 + 4;
  v29 = v30;
  v30(v15, v20, v6);
  v101 = v15;
  v31 = sub_21B111134();
  v33 = v32;
  v34 = v102;
  v35 = sub_21B111884();
  if (v34)
  {
    sub_21AF99728(v31, v33);
    v102 = v34;
    goto LABEL_27;
  }

  v36 = v35;
  v90 = v29;
  v91 = v28;
  sub_21AF99728(v31, v33);
  v37 = sub_21B1119A4();
  v102 = 0;
  v38 = v37;
  v87[1] = v36;
  v87[0] = v1;
  v39 = 0;
  v98 = *(v37 + 16);
  v88 = MEMORY[0x277D84F90];
  v92 = v6;
  v40 = v89;
  v41 = v97;
  while (1)
  {
    if (v98 == v39)
    {

      v104 = v88;

      v52 = v102;
      sub_21B0D4AA8(&v104);
      v102 = v52;
      if (v52)
      {

        __break(1u);
        return result;
      }

      v53 = v104;
      v55 = v100;
      v54 = v101;
      v56 = v87[0];
      v98 = v104[2];
      if (v98)
      {
        v57 = v104[5];
        v58 = v104[6];
        v97 = v104[4];
        v89 = v57;
        v88 = v58;
        if (v97)
        {
          sub_21AF99818(v57, v58);
          v104 = MEMORY[0x277D84F90];
          sub_21AFCC9B0();
          v59 = 0;
          v60 = v104;
          v61 = v53 + 6;
          do
          {
            if (v59 >= v53[2])
            {
              goto LABEL_51;
            }

            v62 = *(v61 - 2);
            v63 = v62 - v97;
            if (v62 < v97)
            {
              goto LABEL_52;
            }

            v64 = *(v61 - 1);
            v65 = *v61;
            sub_21AF99818(v64, *v61);
            v104 = v60;
            v66 = v60[2];
            if (v66 >= v60[3] >> 1)
            {
              sub_21AFCC9B0();
              v60 = v104;
            }

            ++v59;
            v60[2] = v66 + 1;
            v67 = &v60[3 * v66];
            v67[4] = v63;
            v67[5] = v64;
            v67[6] = v65;
            v61 += 3;
            v6 = v92;
            v55 = v100;
          }

          while (v98 != v59);

          v69 = v60;
          v54 = v101;
          v56 = v87[0];
        }

        else
        {
          sub_21AF99818(v57, v58);
          v69 = v53;
        }

        v70 = v69[2];
        if (v70)
        {
          v104 = MEMORY[0x277D84F90];
          sub_21AFCC958();
          v71 = 0;
          v72 = v104;
          v73 = v69 + 6;
          v100 = v69;
          v98 = v70;
          do
          {
            if (v71 >= v69[2])
            {
              goto LABEL_53;
            }

            v74 = *(v73 - 2);
            sub_21AF99818(*(v73 - 1), *v73);
            sub_21B111154();
            info = 0;
            if (mach_timebase_info(&info))
            {
              v75 = v99;
            }

            else
            {
              v75 = v99;
              if (!is_mul_ok(v74, info.numer))
              {
                goto LABEL_54;
              }
            }

            sub_21B111144();
            v104 = v72;
            v76 = v72[2];
            if (v76 >= v72[3] >> 1)
            {
              sub_21AFCC958();
              v75 = v99;
              v72 = v104;
            }

            ++v71;
            v72[2] = v76 + 1;
            v77 = *(v55 + 80);
            OUTLINED_FUNCTION_31_5();
            v79 = v72 + v78 + v55[9] * v76;
            v6 = v92;
            v90(v79, v75, v92);
            v73 += 3;
            v69 = v100;
          }

          while (v98 != v71);

          v54 = v101;
          v56 = v87[0];
        }

        else
        {

          v72 = MEMORY[0x277D84F90];
        }

        v80 = v95;
        v81 = *(v56 + v95);
        *(v56 + v95) = v72;

        if (*(v56 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed))
        {
          v82 = *(*(v56 + v80) + 16) - 1;
        }

        else
        {
          v82 = 0;
        }

        *(v56 + v96) = v82;
        v83 = *(v56 + v80);
        v84 = *(v83 + 16);
        if (v84)
        {
          if (v82 >= v84)
          {
            goto LABEL_55;
          }

          v85 = v94;
          (v55[2])(v94, v83 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v55[9] * v82, v6);
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_21_4();
          __swift_storeEnumTagSinglePayload(v85, 0, 1, v6);
          v86 = v93;
          swift_beginAccess();
          sub_21B0C3570(v85, v56 + v86);
          swift_endAccess();
        }

        else
        {
          OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_21_4();
        }
      }

      else
      {
        OUTLINED_FUNCTION_23_5();
      }

      result = (v55[1])(v54, v6);
      goto LABEL_28;
    }

    if (v39 >= *(v38 + 16))
    {
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
      __break(1u);
    }

    v42 = *(v40 + 80);
    OUTLINED_FUNCTION_31_5();
    sub_21B0D4A28(v38 + v43 + *(v40 + 72) * v39, v41);
    v44 = v102;
    sub_21B0D3EF8(v41, &v104);
    v102 = v44;
    if (v44)
    {
      break;
    }

    sub_21AFA8978(v41);
    v45 = v105;
    v46 = v106;
    v47 = v104;
    if (v106 >> 60 == 15)
    {
      sub_21B0D4A8C(v104, v105, v106);
      ++v39;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_21B0D5274(0, v88[2] + 1, 1, v88);
      }

      v49 = v88[2];
      v48 = v88[3];
      if (v49 >= v48 >> 1)
      {
        v88 = sub_21B0D5274(v48 > 1, v49 + 1, 1, v88);
      }

      ++v39;
      v50 = v88;
      v88[2] = v49 + 1;
      v51 = &v50[3 * v49];
      v51[4] = v47;
      v51[5] = v45;
      v51[6] = v46;
      v6 = v92;
    }
  }

  sub_21AFA8978(v41);

  OUTLINED_FUNCTION_23_5();

LABEL_27:
  result = (v100[1])(v101, v6);
LABEL_28:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B0D3EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437E8, &qword_21B117C88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v46 - v9;
  v11 = sub_21B1119B4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v47 = v46 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (v46 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v46 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v46 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = (v46 - v27);
  sub_21B0D4A28(a1, v46 - v27);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21AFA8978(v28);
    sub_21B0D6360();
    swift_allocError();
    *v31 = 2;
    return swift_willThrow();
  }

  v29 = *v28;
  sub_21B111994();
  if (v2)
  {
  }

  v46[1] = v29;
  v32 = sub_21B1117E4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v32) == 1)
  {

    result = sub_21AF99BE0(v10, &qword_27CD437E8, &qword_21B117C88);
    v33 = v49;
    *v49 = 0;
    v33[1] = 0;
    v33[2] = 0xF000000000000000;
    return result;
  }

  sub_21B1117D4();
  (*(*(v32 - 8) + 8))(v10, v32);
  sub_21AFD2EFC(v23, v26);
  sub_21B0D4A28(v26, v20);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21AFA8978(v20);
    sub_21B0D6360();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();

    return sub_21AFA8978(v26);
  }

  v34 = *v20;
  v35 = v48;
  sub_21B111974();
  if (__swift_getEnumTagSinglePayload(v35, 1, v11) != 1)
  {
    v41 = v47;
    sub_21AFD2EFC(v35, v47);
    sub_21B0D4A28(v41, v15);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v42 = *v15;
      v43 = v41;
      v37 = sub_21B111964();
      v39 = v44;

      sub_21AFA8978(v43);
      result = sub_21AFA8978(v26);
      v40 = v49;
      *v49 = v42;
      goto LABEL_15;
    }

    sub_21AFA8978(v15);
    sub_21B0D6360();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    sub_21AFA8978(v41);
    return sub_21AFA8978(v26);
  }

  sub_21AF99BE0(v35, &qword_27CD43048, &unk_21B117C90);
  v37 = sub_21B111964();
  v39 = v38;

  result = sub_21AFA8978(v26);
  v40 = v49;
  *v49 = 0;
LABEL_15:
  v40[1] = v37;
  v40[2] = v39;
  return result;
}

void sub_21B0D440C()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  if (sub_21B0D4658())
  {
    v8 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements);
      if (v8 < *(v9 + 16))
      {
        v10 = sub_21B111164();
        OUTLINED_FUNCTION_4_1(v10);
        (*(v11 + 16))(v7, v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, v10);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
        v12 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
        swift_beginAccess();
        sub_21B0C3570(v7, v3 + v12);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = *(v0 + 16);
    do
    {
      sub_21B0C30EC();
      if (v2)
      {
        break;
      }

      sub_21B0D35CC();
      v2 = 0;
    }

    while ((sub_21B0D46BC() & 1) != 0);
  }
}

void sub_21B0D459C()
{
  v2 = *(v0 + 16);
  sub_21B0C3094();
  while (!v1)
  {
    v1 = 0;
    sub_21B0D35CC();
    if ((sub_21B0D46BC() & 1) == 0)
    {
      break;
    }

    sub_21B0C30EC();
  }
}

void sub_21B0D460C()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_reversed))
  {
    v1 = -1;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex);
  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elementIndex) = v4;
    sub_21B0D440C();
  }
}

uint64_t sub_21B0D4684()
{
  if (sub_21B0D4658())
  {
    return 1;
  }

  v2 = *(v0 + 16);
  return sub_21B0C3138() & 1;
}

uint64_t sub_21B0D46BC()
{
  if (sub_21B0D4658())
  {
    return 0;
  }

  v2 = *(v0 + 16);
  return sub_21B0C3138() & 1;
}

uint64_t sub_21B0D46F4()
{
  v1 = *(v0 + 16);

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement, &qword_27CD471C8, &unk_21B12AEF0);
  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_elements);

  v3 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_sessionSchema;
  v4 = sub_21B111894();
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_21B0D4784()
{
  sub_21B0D46F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FeedbackFilesEnumerator()
{
  result = qword_27CD47398;
  if (!qword_27CD47398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0D4830()
{
  sub_21B0C33B8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21B111894();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21B0D4938@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23FeedbackFilesEnumerator_currentElement;
  swift_beginAccess();
  return sub_21B0C3500(v3 + v4, a1);
}

uint64_t sub_21B0D4A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B1119B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D4A8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_21AF99728(a2, a3);
  }

  return result;
}

uint64_t sub_21B0D4AA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D634C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21B0D57E8(v6);
  *a1 = v2;
  return result;
}

void sub_21B0D4B3C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
      v9 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_13_5();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC250(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D4C00()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473D0, &unk_21B12AF28);
  v9 = OUTLINED_FUNCTION_106();
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_6_19(v13);
    sub_21AFCC270(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4CC8()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD436D0, &qword_21B117880);
  v9 = OUTLINED_FUNCTION_106();
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_6_19(v13);
    sub_21AFCC288(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4D90()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473D8, &qword_21B12AF38);
  OUTLINED_FUNCTION_106();
  v9 = type metadata accessor for FileArray.Container();
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_6_19(v12);
    sub_21AFCC2A0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4E58()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_18();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_6();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_15();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_22_5(v2, v5, &qword_27CD473F8, &unk_21B12AF70);
  OUTLINED_FUNCTION_106();
  v9 = sub_21B1113A4();
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_6_19(v12);
    sub_21AFCC2D0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_27();
  }
}

void sub_21B0D4F48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
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
      v15 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_13_5();
      v15[2] = v13;
      v15[3] = v16;
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

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D5020()
{
  OUTLINED_FUNCTION_16_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473E0, &qword_21B12AF40);
      v9 = OUTLINED_FUNCTION_17_9();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_16_9(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC2E8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D50D8()
{
  OUTLINED_FUNCTION_16_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473B8, &qword_21B12AF08);
      v9 = OUTLINED_FUNCTION_17_9();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_13_5();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC250(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473C0, &unk_21B12AF10);
    OUTLINED_FUNCTION_12_11();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D519C()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_21B0D56E0(*(v0 + 16), v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_31_5();
  if (v1)
  {
    sub_21AFCC320();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_21B0D5274(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B0, &qword_21B117858);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_21AFCC3E0((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21B0D538C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F0, &unk_21B1178A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 40);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC408(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
    OUTLINED_FUNCTION_12_11();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21B0D546C()
{
  OUTLINED_FUNCTION_16_7();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_7();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473E8, &qword_21B12AF48);
      v8 = OUTLINED_FUNCTION_17_9();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_16_9(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_25();
        sub_21AFCC2E8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473F0, &unk_21B12AF50);
    OUTLINED_FUNCTION_12_11();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_10();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_21B0D552C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
  v4 = OUTLINED_FUNCTION_17_9();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_5();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_21B0D55E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_21B0D56E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470C0, &unk_21B129090);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840) - 8);
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

uint64_t sub_21B0D57E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0D5970(v7, v8, a1, v4);
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
    return sub_21B0D58EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0D58EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        *(v9 + 24) = *v9;
        *(v9 + 40) = *(v9 + 16);
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
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

void sub_21B0D5970(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
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
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
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

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4F48(0, v8[2] + 1, 1, v8, &qword_27CD473A8, &qword_21B12AF00, sub_21AFCC250);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_21B0D4F48(v38 > 1, v39 + 1, 1, v8, &qword_27CD473A8, &qword_21B12AF00, sub_21AFCC250);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
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

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21B0D6000((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21B0D5EC8(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_21B0D5EC8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21B0D61A8(v15);
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
    sub_21B0D6000((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_21B0D6000(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_21AFCC3E0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_21AFCC3E0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_21B0D61C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_21B0D61EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD473A8, &qword_21B12AF00);
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

unint64_t sub_21B0D6360()
{
  result = qword_27CD473B0;
  if (!qword_27CD473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD473B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackFilesEnumeratorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0D6494()
{
  result = qword_27CD47400;
  if (!qword_27CD47400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);

  return sub_21AF99728(v2, v3);
}

size_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21B0D55E4(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  v2 = *(v0 - 280);
}

uint64_t type metadata accessor for LegacySchemaManifest()
{
  result = qword_27CD47408;
  if (!qword_27CD47408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D668C()
{
  result = sub_21B111924();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0D66F8()
{
  v0 = sub_21B112A34();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0D674C(char a1)
{
  if (a1)
  {
    return 0x736D756E65;
  }

  else
  {
    return 0x73616D65686373;
  }
}

uint64_t sub_21B0D67A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B0D66F8();
  *a2 = result;
  return result;
}

uint64_t sub_21B0D67D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0D674C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0D6808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B0D66F8();
  *a1 = result;
  return result;
}

uint64_t sub_21B0D683C(uint64_t a1)
{
  v2 = sub_21B0D6F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0D6878(uint64_t a1)
{
  v2 = sub_21B0D6F58();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21B0D68B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = type metadata accessor for LegacyEnumManifest();
  v96 = OUTLINED_FUNCTION_1(v3);
  v97 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_2();
  v101 = v8 - v7;
  v94 = type metadata accessor for LegacyMessageManifest();
  v9 = OUTLINED_FUNCTION_1(v94);
  v99 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v98 = v14 - v13;
  v15 = sub_21B111924();
  v16 = OUTLINED_FUNCTION_1(v15);
  v95 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47418, &qword_21B12B090);
  v24 = OUTLINED_FUNCTION_1(v23);
  v100 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = v85 - v28;
  v30 = type metadata accessor for LegacySchemaManifest();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0D6F58();
  v36 = v102;
  sub_21B112F34();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v102 = v34;
    v90 = v22;
    v91 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47428, &qword_21B12B098);
    v103 = 0;
    sub_21B0D6FAC();
    OUTLINED_FUNCTION_4_26();
    v92 = v104;
    if (!v104)
    {
      v92 = sub_21B112334();
    }

    v37 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47440, &qword_21B12B0A0);
    v103 = 1;
    sub_21B0D7068();
    OUTLINED_FUNCTION_4_26();
    v94 = v104;
    v89 = a1;
    v85[1] = 0;
    v86 = v23;
    if (!v104)
    {
      v94 = sub_21B112334();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47458, &qword_21B12B0A8);
    v38 = v92;
    v96 = sub_21B1129F4();
    v39 = 0;
    v41 = *(v38 + 64);
    v40 = v38 + 64;
    v42 = *(v40 - 32);
    OUTLINED_FUNCTION_1_24();
    v87 = v29;
    v88 = v43;
    while (1)
    {
      v44 = v98;
      if (!v23)
      {
        break;
      }

      OUTLINED_FUNCTION_5_28();
LABEL_16:
      v48 = v45 | (v39 << 6);
      v49 = (*(v92 + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      sub_21B0D716C(*(v92 + 56) + *(v46 + 72) * v48, v44, type metadata accessor for LegacyMessageManifest);
      *(v88 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v52 = v96;
      v53 = (*(v96 + 48) + 16 * v48);
      *v53 = v51;
      v53[1] = v50;
      v54 = *(v52 + 56);
      v55 = sub_21B111954();
      OUTLINED_FUNCTION_163(v55);
      (*(v56 + 32))(v54 + *(v56 + 72) * v48, v44);
      v57 = *(v52 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_31;
      }

      *(v52 + 16) = v59;

      v37 = v102;
      v29 = v87;
    }

    v47 = v39;
    while (1)
    {
      v39 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v39 >= v35)
      {
        break;
      }

      ++v47;
      if (*(v40 + 8 * v39))
      {
        OUTLINED_FUNCTION_6_20();
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47460, &qword_21B12B0B0);
    v60 = v94;
    sub_21B1129F4();
    v61 = 0;
    v63 = *(v60 + 64);
    v62 = v60 + 64;
    v64 = *(v62 - 32);
    OUTLINED_FUNCTION_1_24();
    v98 = v66;
    v99 = v65;
    v67 = v89;
LABEL_20:
    v70 = v61;
    v72 = v90;
    v71 = v91;
    v73 = v95;
    while (1)
    {
      v61 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v61 >= v35)
      {

        sub_21B1118D4();
        (*(v100 + 8))(v29, v86);
        (*(v73 + 32))(v37, v72, v71);
        sub_21B0D71C8(v37, v93);
        __swift_destroy_boxed_opaque_existential_0(v67);
        return;
      }

      ++v70;
      if (*(v62 + 8 * v61))
      {
        OUTLINED_FUNCTION_6_20();
        while (1)
        {
          v74 = v69 | (v61 << 6);
          v75 = (*(v94 + 48) + 16 * v74);
          v77 = *v75;
          v76 = v75[1];
          sub_21B0D716C(*(v94 + 56) + *(v97 + 72) * v74, v68, type metadata accessor for LegacyEnumManifest);
          v78 = v99;
          *(v98 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
          v79 = (v78[6] + 16 * v74);
          *v79 = v77;
          v79[1] = v76;
          v80 = v78[7];
          v81 = sub_21B111834();
          OUTLINED_FUNCTION_163(v81);
          (*(v82 + 32))(v80 + *(v82 + 72) * v74, v101);
          v83 = v78[2];
          v58 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v58)
          {
            goto LABEL_32;
          }

          v99[2] = v84;

          v67 = v89;
          v37 = v102;
          if (!v72)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_5_28();
        }
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

unint64_t sub_21B0D6F58()
{
  result = qword_27CD47420;
  if (!qword_27CD47420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47420);
  }

  return result;
}

unint64_t sub_21B0D6FAC()
{
  result = qword_27CD47430;
  if (!qword_27CD47430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47428, &qword_21B12B098);
    sub_21B0D7124(&qword_27CD47438, type metadata accessor for LegacyMessageManifest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47430);
  }

  return result;
}

unint64_t sub_21B0D7068()
{
  result = qword_27CD47448;
  if (!qword_27CD47448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47440, &qword_21B12B0A0);
    sub_21B0D7124(&qword_27CD47450, type metadata accessor for LegacyEnumManifest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47448);
  }

  return result;
}

uint64_t sub_21B0D7124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B0D716C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_163(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21B0D71C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySchemaManifest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacySchemaManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0D730C()
{
  result = qword_27CD47468;
  if (!qword_27CD47468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47468);
  }

  return result;
}

unint64_t sub_21B0D7364()
{
  result = qword_27CD47470;
  if (!qword_27CD47470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47470);
  }

  return result;
}

unint64_t sub_21B0D73BC()
{
  result = qword_27CD47478;
  if (!qword_27CD47478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47478);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return sub_21B112A84();
}

uint64_t type metadata accessor for SODAAsset()
{
  result = qword_27CD47480;
  if (!qword_27CD47480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D7508()
{
  result = sub_21B110D94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0D758C()
{
  result = sub_21B0D75B4(5);
  byte_27CD6E890 = result & 1;
  return result;
}

uint64_t sub_21B0D75B4(char a1)
{
  sub_21B0D7640(a1);
  v1 = sub_21B1123D4();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_21B0D7640(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0D7778()
{
  if (qword_27CD42A18 != -1)
  {
    swift_once();
  }

  return byte_27CD6E890;
}

uint64_t sub_21B0D77C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v81 = a4;
  v79 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v76 - v9;
  v95 = sub_21B111DA4();
  v83 = *(v95 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x28223BE20](v95);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v76 - v16;
  v18 = sub_21B111DE4();
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v76 - v22;
  *&v90 = a1;
  *(&v90 + 1) = a2;
  v24 = *(v4 + 24);
  v93 = *(v4 + 16);
  v94 = v24;
  sub_21AF9F500();
  sub_21B1126C4();
  v90 = v87;
  v91 = v88;
  v92 = v89;
  v93 = 46;
  v94 = 0xE100000000000000;
  sub_21B0D821C();
  sub_21AFC921C();
  v25 = sub_21B1127E4();

  if (v25[2] < 3uLL)
  {

    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_21B112904();

    *&v87 = 0xD000000000000022;
    *(&v87 + 1) = 0x800000021B141A00;
    MEMORY[0x21CEE9770](a1, a2);
    v48 = *(&v87 + 1);
    v45 = v87;
    sub_21AF9F6BC();
    swift_allocError();
    *v49 = v45;
    *(v49 + 8) = v48;
    *(v49 + 16) = 0;
    goto LABEL_6;
  }

  v77 = a1;
  v78 = a2;
  v26 = v25[6];
  v27 = v25[7];
  result = sub_21B112464();
  v30 = v29;
  v31 = v25[2];
  if (v31 >= 2)
  {
    v32 = result;
    v76 = v23;
    v33 = v18;
    v34 = sub_21B0D8270(2uLL, v31, v25);
    v36 = v35;
    v38 = v37;
    v40 = v39;

    *&v87 = v34;
    *(&v87 + 1) = v36;
    v88 = v38;
    v89 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47498, &qword_21B12B2C8);
    sub_21B0D82DC();
    v41 = sub_21B112384();
    v43 = v42;
    v44 = v33;
    swift_unknownObjectRelease();

    sub_21B111DD4();
    if (__swift_getEnumTagSinglePayload(v17, 1, v33) != 1)
    {

      v50 = v85;
      v51 = v76;
      (*(v85 + 32))(v76, v17, v44);
      v52 = v86;
      (*(v50 + 16))(v86, v51, v44);

      v53 = v84;
      sub_21B0C3668(v41, v43, v52, v84);
      v54 = v95;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v95);
      v56 = v77;
      if (EnumTagSinglePayload == 1)
      {
        sub_21AFA8918(v53, &qword_27CD42C28, &unk_21B113F30);
        *&v87 = 0;
        *(&v87 + 1) = 0xE000000000000000;
        sub_21B112904();

        *&v87 = 0xD000000000000014;
        *(&v87 + 1) = 0x800000021B141A60;
        MEMORY[0x21CEE9770](v41, v43);

        MEMORY[0x21CEE9770](0x73617420726F6620, 0xEA0000000000206BLL);
        MEMORY[0x21CEE9770](v56, v78);
        v57 = *(&v87 + 1);
        v45 = v87;
        sub_21AF9F6BC();
        swift_allocError();
        *v58 = v45;
        *(v58 + 8) = v57;
        *(v58 + 16) = 3;
        swift_willThrow();
        (*(v50 + 8))(v51, v44);
      }

      else
      {

        v59 = v83;
        v60 = v53;
        v61 = v82;
        (*(v83 + 32))(v82, v60, v54);
        sub_21B111D64();
        v62 = v86;
        v63 = sub_21AFACA9C(v51, v86);
        v85 = *(v50 + 8);
        (v85)(v62, v44);
        v64 = v54;
        v65 = v78;
        if (v63)
        {
          v66 = v80;
          (*(v59 + 16))(v80, v61, v64);
          sub_21B0D8340(v79, &v87);
          v67 = [objc_opt_self() defaultManager];
          v68 = type metadata accessor for RegisteredRecipeEnvironment();
          v69 = *(v68 + 48);
          v70 = *(v68 + 52);
          swift_allocObject();
          v71 = v81;
          v72 = v81;
          v45 = sub_21B0C7920(v66, 0, 0, &v87, v71, v67);
          (*(v59 + 8))(v61, v95);
          (v85)(v51, v44);
        }

        else
        {
          *&v87 = 0;
          *(&v87 + 1) = 0xE000000000000000;
          sub_21B112904();
          MEMORY[0x21CEE9770](0xD000000000000049, 0x800000021B141A80);
          MEMORY[0x21CEE9770](v56, v65);
          MEMORY[0x21CEE9770](0xD000000000000013, 0x800000021B141AD0);
          sub_21B111D64();
          sub_21B112954();
          v73 = v85;
          (v85)(v62, v44);
          MEMORY[0x21CEE9770](0x766C6F736572202CLL, 0xEC000000203A6465);
          sub_21B112954();
          v74 = *(&v87 + 1);
          v45 = v87;
          sub_21AF9F6BC();
          swift_allocError();
          *v75 = v45;
          *(v75 + 8) = v74;
          *(v75 + 16) = 3;
          swift_willThrow();
          (*(v59 + 8))(v61, v95);
          v73(v51, v44);
        }
      }

      return v45;
    }

    sub_21AFA8918(v17, &qword_27CD471F0, &unk_21B129F00);
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_21B112904();

    *&v87 = 0xD000000000000021;
    *(&v87 + 1) = 0x800000021B141A30;
    MEMORY[0x21CEE9770](v77, v78);
    MEMORY[0x21CEE9770](8250, 0xE200000000000000);
    MEMORY[0x21CEE9770](v32, v30);

    MEMORY[0x21CEE9770](46, 0xE100000000000000);
    v46 = *(&v87 + 1);
    v45 = v87;
    sub_21AF9F6BC();
    swift_allocError();
    *v47 = v45;
    *(v47 + 8) = v46;
    *(v47 + 16) = 3;
LABEL_6:
    swift_willThrow();
    return v45;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0D8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *(a3 + 16);
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a3 + 32);
  *(v4 + 72) = a4;
  return v4;
}

uint64_t sub_21B0D813C()
{
  v1 = *(v0 + 24);

  sub_21AFA8918(v0 + 32, &unk_27CD47240, &unk_21B12B2D0);

  return v0;
}

uint64_t sub_21B0D817C()
{
  sub_21B0D813C();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_21B0D81D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_21B0D821C()
{
  result = qword_27CD47490;
  if (!qword_27CD47490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47490);
  }

  return result;
}

unint64_t sub_21B0D8270(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_21B0D82DC()
{
  result = qword_27CD474A0;
  if (!qword_27CD474A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47498, &qword_21B12B2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474A0);
  }

  return result;
}

uint64_t sub_21B0D8340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0D8408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_21AFC45C8();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21B0D843C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21B0D8468()
{
  v1 = qword_27CD6E898;
  v2 = sub_21B111E64();
  OUTLINED_FUNCTION_0_1(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_21B0D84C4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_21B0EB1EC();
  }

  v1 = sub_21B0D852C();
  v2 = qword_27CD6E898;
  v3 = sub_21B111E64();
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_21B0D852C()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_21B0EB1EC();
  }

  v1 = sub_21B0EA62C();
  v2 = *(v1 + *(*v1 + 464));
  swift_unknownObjectRelease();

  v3 = *(v1 + *(*v1 + 480));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_21B0D85B4()
{
  v0 = sub_21B0D84C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan()
{
  result = qword_27CD474A8;
  if (!qword_27CD474A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0D8654()
{
  result = sub_21B111E64();
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

uint64_t sub_21B0D86EC()
{
  v1 = *(v0 + 96);
  sub_21B112704();
  sub_21B112264();
  sub_21B0D88AC();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B113D90;
  v3 = sub_21B111E44();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v7 = sub_21AF93F18();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_21B112264();

  sub_21B112704();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B113D90;
  v9 = sub_21B111E44();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_21B112264();

  sub_21B112704();

  return sub_21B112264();
}

uint64_t sub_21B0D88AC()
{
  v1 = v0;
  v2 = *(v0 + 96);
  sub_21B112704();
  sub_21B112264();
  sub_21B0E7C28();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B113D90;
  v4 = (v1 + *(*v1 + 464));
  v6 = *v4;
  v5 = v4[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD474E0, &qword_21B12B468);
  v7 = sub_21B112454();
  v9 = v8;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21AF93F18();
  *(v3 + 64) = v10;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  sub_21B112264();

  sub_21B112704();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21B113D90;
  ObjectType = swift_getObjectType();
  v44 = v5;
  v12 = v5;
  v13 = *(v5 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  v14 = sub_21B112454();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v10;
  v46 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  sub_21B112264();

  v45 = sub_21B0EB4A0();
  if (v18)
  {
    sub_21B112704();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21B113D90;
    v13(ObjectType, v44);
    v20 = sub_21B112454();
    v21 = MEMORY[0x277D837D0];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    sub_21B112264();
    v24 = v21;
  }

  else
  {
    v25 = v16;
    v26 = v17;
    v27 = HIDWORD(v17);
    sub_21B112704();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = xmmword_21B113D90;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v25;
    sub_21B112264();

    sub_21B112704();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D84CC0];
    *(v31 + 16) = xmmword_21B113D90;
    v33 = MEMORY[0x277D84D30];
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    *(v31 + 32) = v27;
    sub_21B112264();

    sub_21B112704();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_21B113D90;
    *(v34 + 56) = v32;
    *(v34 + 64) = v33;
    *(v34 + 32) = v26;
    sub_21B112264();

    sub_21B112704();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D839F8];
    *(v35 + 16) = xmmword_21B113D90;
    v37 = MEMORY[0x277D83A80];
    *(v35 + 56) = v36;
    *(v35 + 64) = v37;
    *(v35 + 32) = v45;
    sub_21B112264();
    v24 = MEMORY[0x277D837D0];
    v22 = v46;
  }

  sub_21B112704();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21B113D90;
  v39 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD475E0, qword_21B12B478);
  v40 = sub_21B112454();
  *(v38 + 56) = v24;
  *(v38 + 64) = v22;
  *(v38 + 32) = v40;
  *(v38 + 40) = v41;
  sub_21B112264();

  sub_21B112704();
  return sub_21B112264();
}

uint64_t sub_21B0D8DFC(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_21B0D9740(a1, a2, a3);
  sub_21B111E54();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_21B0EC85C(v7, 0x726574706F6461, 0xE700000000000000);
  sub_21B0ED1F8(v6);

  return sub_21B0D8EEC(a1, a2, a3);
}

uint64_t sub_21B0D8EEC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D80;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_21B0ED1F4("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

unint64_t sub_21B0D8FF0()
{
  result = qword_27CD474B8;
  if (!qword_27CD474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474B8);
  }

  return result;
}

unint64_t sub_21B0D9044(uint64_t a1)
{
  *(a1 + 8) = sub_21B0D9074();
  result = sub_21B0D90C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B0D9074()
{
  result = qword_27CD474C0;
  if (!qword_27CD474C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474C0);
  }

  return result;
}

unint64_t sub_21B0D90C8()
{
  result = qword_27CD474C8;
  if (!qword_27CD474C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474C8);
  }

  return result;
}

unint64_t sub_21B0D9120()
{
  result = qword_27CD474D0;
  if (!qword_27CD474D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474D0);
  }

  return result;
}

unint64_t sub_21B0D9174(uint64_t a1)
{
  result = sub_21B0D919C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B0D919C()
{
  result = qword_27CD474D8;
  if (!qword_27CD474D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD474D8);
  }

  return result;
}

void *sub_21B0D91F0()
{
  OUTLINED_FUNCTION_3_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_21B0D99B0();
  }

  v2 = sub_21B0B4600();
  v3 = *(v2 + *(*v2 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_8();
  v6 = *(v2 + *(v5 + 480));
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_21B0D9280()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = *(v0 + *(v2 + 128));
  sub_21B112704();
  sub_21B112264();
  sub_21B0B35B8();
  sub_21B112704();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v5 = OUTLINED_FUNCTION_7_16();
  *(v5 + 16) = xmmword_21B113D90;
  v6 = (v1 + *(*v1 + 464));
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD474E0, &qword_21B12B468);
  v9 = sub_21B112454();
  v11 = v10;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21AF93F18();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  sub_21B112264();

  sub_21B112704();
  v129 = v4;
  v13 = OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_3_26(v13, v14, v15, v16, v17, v18, v19, v20, v106, v112, v118, v124, v129, v135, v21);
  ObjectType = swift_getObjectType();
  v113 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  v24 = sub_21B112454();
  v13[3].n128_u64[1] = MEMORY[0x277D837D0];
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v24;
  v13[2].n128_u64[1] = v25;
  v136 = v3;
  sub_21B112264();

  v119 = sub_21B0D9B48();
  if (v28)
  {
    sub_21B112704();
    v29 = OUTLINED_FUNCTION_7_16();
    v38 = OUTLINED_FUNCTION_3_26(v29, v30, v31, v32, v33, v34, v35, v36, ObjectType, v113, v119, v12, v130, v3, v37);
    (v23)(v108, v114, v38);
    v39 = sub_21B112454();
    v40 = MEMORY[0x277D837D0];
    v41 = v125;
    v29[3].n128_u64[1] = MEMORY[0x277D837D0];
    v29[4].n128_u64[0] = v125;
    v29[2].n128_u64[0] = v39;
    v29[2].n128_u64[1] = v42;
    sub_21B112264();
    v43 = v40;
  }

  else
  {
    v44 = v26;
    v45 = v27;
    v46 = HIDWORD(v27);
    sub_21B112704();
    v47 = OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_3_26(v47, v48, v49, v50, v51, v52, v53, v54, ObjectType, v113, v119, v12, v130, v136, v55);
    v56 = MEMORY[0x277D83C10];
    v57[7] = v58;
    v57[8] = v56;
    v57[4] = v44;
    sub_21B112264();

    sub_21B112704();
    v59 = OUTLINED_FUNCTION_5_29();
    v60 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_3_26(v59, v61, v62, v63, v64, v65, v66, v67, v109, v115, v121, v126, v132, v138, v68);
    v69 = MEMORY[0x277D84D30];
    *(v70 + 56) = v60;
    *(v70 + 64) = v69;
    *(v70 + 32) = v46;
    OUTLINED_FUNCTION_1_25();
    sub_21B112264();

    sub_21B112704();
    v71 = OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_3_26(v71, v72, v73, v74, v75, v76, v77, v78, v110, v116, v122, v127, v133, v139, v79);
    *(v80 + 56) = v60;
    *(v80 + 64) = v69;
    *(v80 + 32) = v45;
    OUTLINED_FUNCTION_1_25();
    sub_21B112264();

    sub_21B112704();
    v81 = OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_3_26(v81, v82, v83, v84, v85, v86, v87, v88, v111, v117, v123, v128, v134, v140, v89);
    v90 = MEMORY[0x277D83A80];
    v91[7] = v92;
    v91[8] = v90;
    v91[4] = v120;
    OUTLINED_FUNCTION_1_25();
    sub_21B112264();
    v43 = MEMORY[0x277D837D0];
    v41 = v125;
  }

  sub_21B112704();
  v93 = OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_3_26(v93, v94, v95, v96, v97, v98, v99, v100, v108, v114, v120, v125, v131, v137, v101);
  v102 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD475E0, qword_21B12B478);
  v103 = sub_21B112454();
  v93[3].n128_u64[1] = v43;
  v93[4].n128_u64[0] = v41;
  v93[2].n128_u64[0] = v103;
  v93[2].n128_u64[1] = v104;
  OUTLINED_FUNCTION_9_16();
  sub_21B112264();

  sub_21B112704();
  OUTLINED_FUNCTION_9_16();
  return sub_21B112264();
}

uint64_t sub_21B0D9740(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  OUTLINED_FUNCTION_32_0();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_21AFCD0E8();
  return sub_21B112334();
}

uint64_t sub_21B0D98C0(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D80;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_21B0B455C("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_21B0D99B0()
{
  OUTLINED_FUNCTION_3_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_21B0D9B48();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v3 = OUTLINED_FUNCTION_7_16();
      *(v3 + 16) = xmmword_21B113D90;
      OUTLINED_FUNCTION_8();
      v5 = (v0 + *(v4 + 464));
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
      v9 = sub_21B112454();
      v11 = v10;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_21AF93F18();
      *(v3 + 32) = v9;
      *(v3 + 40) = v11;
      OUTLINED_FUNCTION_9_16();
      sub_21B0B455C(v12);
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v13 + 568))(v14, v15);
    }

    sub_21B0B3B00();
  }
}

uint64_t sub_21B0D9B48()
{
  OUTLINED_FUNCTION_3_4();
  v2 = (v0 + *(v1 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v19 = OUTLINED_FUNCTION_7_16();
    *(v19 + 16) = xmmword_21B113D90;
    v83 = v6(ObjectType, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
    v20 = sub_21B112454();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21AF93F18();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_16();
    sub_21B0B455C();

    sub_21B0B3B00();
    *&result = 0.0;
    return result;
  }

  [v9 statusCode];
  if (!(*(v4 + 8))(ObjectType, v4))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_32_0();
  *&v88 = 0xD000000000000021;
  *(&v88 + 1) = v10;
  v11 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v11, v12, v13, v14, v15, v16, v17, v18, v61, v65, v69, v74, v79, v83, v84, v85, v86, v87, v88);
  sub_21B0B6350(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_25();
  }

  else
  {
    sub_21B0DA0C4(&v88);
  }

  OUTLINED_FUNCTION_32_0();
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = v24;
  v25 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v25, v26, v27, v28, v29, v30, v31, v32, v62, v66, v70, v75, v80, v83, v84, v85, v86, v87, v88);
  sub_21B0B6350(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_25();
  }

  else
  {
    sub_21B0DA0C4(&v88);
  }

  OUTLINED_FUNCTION_32_0();
  v71 = v33;
  v34 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v34, v35, v36, v37, v38, v39, v40, v41, v63, 0xD00000000000001BLL, v71, v76, v81, v83, v84, v85, v86, v87, v88);
  sub_21B0B6350(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_25())
    {
      v78 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    sub_21B0DA0C4(&v88);
  }

  OUTLINED_FUNCTION_32_0();
  v72 = v42;
  v43 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v43, v44, v45, v46, v47, v48, v49, v50, v64, 0xD00000000000001BLL, v72, v77, v82, v83, v84, v85, v86, v87, v88);
  sub_21B0B6350(&v83);
  if (!v89)
  {
    sub_21B0DA0C4(&v88);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  v51 = *&v78;
  OUTLINED_FUNCTION_32_0();
  v73 = v52;
  v53 = sub_21B1128A4();
  OUTLINED_FUNCTION_2_26(v53, v54, v55, v56, v57, v58, v59, v60, v64, 0xD00000000000001ALL, v73, v78, v82, v83, v84, v85, v86, v87, v88);

  sub_21B0B6350(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_25())
    {
      *&result = v68 - v51;
      return result;
    }
  }

  else
  {
    sub_21B0DA0C4(&v88);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

id sub_21B0D9FB8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_21B0D9FF0()
{
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + *(v1 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_3_4();
  v5 = *(v0 + *(v4 + 480));

  return swift_unknownObjectRelease();
}

uint64_t sub_21B0DA058()
{
  v0 = sub_21B0D91F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B0DA0C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47250, &qword_21B12A130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0DA12C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*a1 + 480);
  if (*(a1 + v3))
  {
    v4 = a1;
    v5 = *(a1 + v3);
    swift_unknownObjectRetain();
    is_activated = nw_activity_is_activated();
    v7 = *v4;
    if (is_activated)
    {
      *(v4 + *(v7 + 472));
      nw_activity_complete_with_reason();
    }

    else
    {
      v8 = *(v4 + *(v7 + 128));
      sub_21B1126E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
      v10 = sub_21B112454();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_21AF93F18();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      sub_21B112264();
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_21B0DA2BC(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21B112304();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_21B0DF010(&a14, v19, &a19);
}

__n128 OUTLINED_FUNCTION_3_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return swift_allocObject();
}

uint64_t sub_21B0DA3C8()
{
  v0 = sub_21B110D94();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B111214();
  sub_21B110CC4();

  sub_21B110CF4();
  v11 = *(v3 + 8);
  v11(v8, v0);
  v12 = sub_21B110CD4();
  v11(v10, v0);
  return v12;
}

uint64_t sub_21B0DA50C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20[0]);
  if (v20[1] == 1)
  {
    return 0;
  }

  v8 = v20[0];

  sub_21AF99BE0(v20, &qword_27CD46E18, &qword_21B1283D0);
  return v8;
}

uint64_t sub_21B0DA598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[33];
    sub_21AF99BE0(v21, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v9 & 1;
}

uint64_t sub_21B0DA610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v21[57];
    sub_21AF99BE0(v21, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v9 & 1;
}

uint64_t sub_21B0DA688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;

  sub_21AF99BE0(v21, &qword_27CD46E18, &qword_21B1283D0);
  return v9;
}

uint64_t sub_21B0DA710()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime + 8) == 1)
  {
    return PoirotUserTaskParameters<>.startTime.getter();
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime);
  }
}

uint64_t sub_21B0DA764(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_21B0DA780()
{
  v0 = sub_21B110F84();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v9 = OUTLINED_FUNCTION_4_27();
  memcpy(v9, v10, v11);
  if (v17 == 1 || (v12 = v19, v13 = v18, sub_21AF99BE0(v16, &qword_27CD46E18, &qword_21B1283D0), (v12 & 1) != 0))
  {
    sub_21B110F74();
    sub_21B110F44();
    v13 = v14;
    (*(v3 + 8))(v8, v0);
  }

  return v13;
}

uint64_t sub_21B0DA8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-v4];
  v6 = sub_21B110CA4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v15 = OUTLINED_FUNCTION_4_27();
  memcpy(v15, v16, v17);
  if (v26 == 1 || (v18 = v27, , sub_21AF99BE0(v25, &qword_27CD46E18, &qword_21B1283D0), !v18))
  {
    v22 = sub_21B110D94();
    v20 = a1;
    v21 = 1;
  }

  else
  {
    (*(v9 + 104))(v14, *MEMORY[0x277CC91C0], v6);
    v19 = sub_21B110D94();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
    sub_21B110D64();
    v20 = a1;
    v21 = 0;
    v22 = v19;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t sub_21B0DAA90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[56];
    sub_21AF99BE0(v21, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v9 & 1;
}

uint64_t sub_21B0DAB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __dst[10] = *MEMORY[0x277D85DE8];
  v6 = sub_21B110F84();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  *(v3 + 16) = 1;
  v16 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_weeklyOddsLastCalculatedTime;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  v47 = a2;
  sub_21B0DB700(a2, v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost);
  v18 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_params;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v3 + v18, a1, v19);
  v21 = COERCE_DOUBLE(PoirotUserTaskParameters<>.startTime.getter());
  v23 = v22;
  sub_21B110ED4();
  sub_21B110F44();
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v15, v6);
  if ((v23 & 1) != 0 || v25 != v21 || (v27 = v26, sub_21B1111F4(), memcpy(__dst, __src, 0x50uLL), __dst[1] == 1) || (v28 = __dst[6], , sub_21AF99BE0(__dst, &qword_27CD46E18, &qword_21B1283D0), !v28))
  {
    sub_21AF99BE0(v47, &qword_27CD42F60, &qword_21B1149F0);
    (*(v20 + 8))(a1, v19);
  }

  else
  {
    v29 = [objc_opt_self() defaultManager];
    v30 = sub_21B1123D4();

    __src[0] = 0;
    v31 = [v29 contentsOfDirectoryAtPath:v30 error:__src];

    v32 = __src[0];
    if (v31)
    {
      v33 = sub_21B1125F4();
      v34 = v32;

      v35 = *(v33 + 16);
    }

    else
    {
      v38 = __src[0];
      v39 = sub_21B110C84();

      swift_willThrow();
      v35 = 0;
    }

    if ((v35 * 1200) >> 64 != (1200 * v35) >> 63)
    {
      __break(1u);
    }

    v40 = ceil((1200 * v35) / 86400.0) * 86400.0;
    v41 = v46;
    sub_21B110F74();
    sub_21B110F44();
    v43 = v42;
    sub_21AF99BE0(v47, &qword_27CD42F60, &qword_21B1149F0);
    (*(v20 + 8))(a1, v19);
    v27(v41, v6);
    v44 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
    *v44 = v43 - v40;
    *(v44 + 8) = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_21B0DAF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B111214();
  sub_21B110CC4();
}

uint64_t sub_21B0DAF9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19[-v2];
  v4 = sub_21B111DE4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v13 = OUTLINED_FUNCTION_4_27();
  memcpy(v13, v14, v15);
  v16 = v21;
  if (v21 != 1)
  {

    sub_21AF99BE0(&v20, &qword_27CD46E18, &qword_21B1283D0);
    if (v16)
    {
      sub_21B111DD4();
      if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
      {
        (*(v7 + 32))(v12, v3, v4);
        v17 = sub_21B0CFB70();
        (*(v7 + 8))(v12, v4);
        return v17;
      }

      sub_21AF99BE0(v3, &qword_27CD471F0, &unk_21B129F00);
    }
  }

  return sub_21B0CEC74(byte_282C8D970);
}

uint64_t sub_21B0DB190()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v8 - v3;
  sub_21B0DB700(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost, v8 - v3);
  v5 = sub_21B111E34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  sub_21AF99BE0(v4, &qword_27CD42F60, &qword_21B1149F0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_21B0CEF58();
  }

  else
  {
    return sub_21B0DAF9C();
  }
}

uint64_t sub_21B0DB27C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111E4();
  if (v2)
  {
    sub_21B110CC4();

    v3 = MEMORY[0x277D3DF68];
  }

  else
  {
    v3 = MEMORY[0x277D3DF70];
  }

  v4 = *v3;
  v5 = sub_21B1112C4();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 104);

  return v8(a1, v4, v6);
}

uint64_t sub_21B0DB338()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost, &qword_27CD42F60, &qword_21B1149F0);
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_params;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  OUTLINED_FUNCTION_4_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AdHocRecipeEnvironment()
{
  result = qword_27CD47600;
  if (!qword_27CD47600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0DB44C()
{
  sub_21B0DB530();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21B0DB588();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0DB530()
{
  if (!qword_27CD47610)
  {
    sub_21B111E34();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD47610);
    }
  }
}

void sub_21B0DB588()
{
  if (!qword_27CD47618)
  {
    sub_21B0BDCA0();
    sub_21B0BDCF4();
    sub_21B0BDD48();
    v0 = sub_21B111224();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD47618);
    }
  }
}

uint64_t (*sub_21B0DB654(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_21B0DA710();
  *(a1 + 8) = v3 & 1;
  return sub_21B0DB6A4;
}

uint64_t sub_21B0DB6A4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_21B0DB700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return sub_21B1111F4();
}

uint64_t type metadata accessor for SessionSchemaProviderUnwrapped()
{
  result = qword_27CD47620;
  if (!qword_27CD47620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0DB830(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27CD6E8C0);
  *v3 = a1;
  v3[1] = a2;
  if (qword_27CD424A8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CD6E730;
  v5 = *algn_27CD6E738;

  return sub_21AFA7620(v4, v5);
}

uint64_t sub_21B0DB8B4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = v2;
  v52 = a2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_21B111894();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA88A8(v2 + v19, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21AFA8918(v13, &qword_27CD43038, &qword_21B114C10);
LABEL_21:
    result = sub_21B1129C4();
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_21B111884();
    if (v3)
    {
LABEL_3:
      v20 = OUTLINED_FUNCTION_0_26();
      return v21(v20);
    }

    v23 = v54;
    switch(v53)
    {
      case 1:
        v24 = OUTLINED_FUNCTION_0_26();
        v25(v24);

        v26 = *(v2 + qword_27CD6E8C0 + 8);
        v27 = v52;
        *v52 = *(v4 + qword_27CD6E8C0);
        v27[1] = v26;
        sub_21B1119B4();
        swift_storeEnumTagMultiPayload();
        v28 = OUTLINED_FUNCTION_1_26();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);

      case 2:
      case 4:
      case 5:
        sub_21B111974();
        v38 = OUTLINED_FUNCTION_0_26();
        v39(v38);

      case 3:
        v32 = v51;
        sub_21B111974();
        v33 = OUTLINED_FUNCTION_0_26();
        v34(v33);

        v35 = sub_21B1119B4();
        if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
        {
          v36 = v52;
          *v52 = 0;
          swift_storeEnumTagMultiPayload();
          if (__swift_getEnumTagSinglePayload(v32, 1, v35) != 1)
          {
            sub_21AFA8918(v32, &qword_27CD43048, &unk_21B117C90);
          }
        }

        else
        {
          v36 = v52;
          sub_21AFD2EFC(v32, v52);
        }

        v40 = v36;
        v41 = 0;
        v42 = 1;
        v43 = v35;
        goto LABEL_15;
      case 6:
        sub_21B111974();
        v37 = sub_21B1119B4();
        if (__swift_getEnumTagSinglePayload(v23, 1, v37) == 1)
        {
          sub_21AFA8918(v23, &qword_27CD43048, &unk_21B117C90);
LABEL_19:
          sub_21AFA86EC();
          swift_allocError();
          *v44 = 0;
          swift_willThrow();

          goto LABEL_3;
        }

        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_21AFA8978(v23);
          goto LABEL_19;
        }

        v45 = sub_21AFA80BC(*v23, *(v23 + 8));
        v47 = v46;
        v48 = OUTLINED_FUNCTION_0_26();
        v49(v48);

        v50 = v52;
        *v52 = v45;
        v50[1] = v47;
        swift_storeEnumTagMultiPayload();
        v40 = OUTLINED_FUNCTION_1_26();
LABEL_15:
        result = __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
        break;
      default:
        goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_21B0DBE94()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E758, &qword_27CD43038, &qword_21B114C10);
  v1 = *(v0 + qword_27CD6E8C0 + 8);

  return v0;
}

uint64_t sub_21B0DBEF4()
{
  v0 = sub_21B0DBE94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B0DBF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B110F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_21B0E3028(0xD000000000000015, 0x800000021B141FD0, v12);
  v13 = sub_21B1123D4();
  v14 = [v12 dateFromString_];

  if (!v14)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_21B112904();
    MEMORY[0x21CEE9770](0x6F632074276E6143, 0xEE0020747265766ELL);
    MEMORY[0x21CEE9770](a1, a2);
    MEMORY[0x21CEE9770](0xD000000000000027, 0x800000021B141FF0);
    v18 = v20;
    v17 = v21;
    sub_21B0DC308();
    swift_allocError();
    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 16) = 2;
    swift_willThrow();

    return v17;
  }

  sub_21B110F54();

  (*(v5 + 32))(v11, v9, v4);
  result = sub_21B110F44();
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 < 1.84467441e19)
  {
    v20 = v16;
    v17 = sub_21B112B84();

    (*(v5 + 8))(v11, v4);
    return v17;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21B0DC244()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_21B0DC24C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21B0DC27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B0DC4A8();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

unint64_t sub_21B0DC308()
{
  result = qword_27CD47630;
  if (!qword_27CD47630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47630);
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

uint64_t sub_21B0DC368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21B0DC3A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21B0DC3FC()
{
  result = qword_27CD47638;
  if (!qword_27CD47638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47638);
  }

  return result;
}

unint64_t sub_21B0DC454()
{
  result = qword_27CD47640;
  if (!qword_27CD47640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47640);
  }

  return result;
}

unint64_t sub_21B0DC4A8()
{
  result = qword_27CD47648;
  if (!qword_27CD47648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47648);
  }

  return result;
}

uint64_t sub_21B0DC50C(uint64_t a1, void *a2, void *a3)
{
  v58 = a3;
  v49 = sub_21B111844();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21B111874();
  v8 = *(*(v54 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v54);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v53 = &v42 - v12;
  v13 = *(a1 + 16);
  v44 = (v5 + 8);
  v45 = v14 + 32;
  v47 = v14;
  v43 = (v14 + 8);
  v15 = (a1 + 40);
  for (i = a2; v13; --v13)
  {
    v16 = *(v15 - 1);
    v17 = *v15;
    v18 = *a2;

    v19 = sub_21AF98B58(v16, v17);
    if (v20)
    {
      v21 = v19;
      v51 = v16;
      v52 = v13;
      v22 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      *&v55 = *a2;
      v23 = *(v55 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47690, &qword_21B12B7E0);
      sub_21B112994();
      v24 = v55;
      v25 = *(*(v55 + 48) + 16 * v21 + 8);

      v26 = v46;
      v27 = *(v47 + 32);
      v28 = v54;
      v27(v46, *(v24 + 56) + *(v47 + 72) * v21, v54);
      sub_21B1129B4();
      *a2 = v24;
      v27(v53, v26, v28);

      v29 = v48;
      sub_21B111864();
      v30 = sub_21B0DDB68();
      v32 = v31;
      (*v44)(v29, v49);
      v33 = v58;
      v34 = *v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v34 + 16);
        sub_21B0D538C();
        v34 = v40;
        *v58 = v40;
      }

      v36 = *(v34 + 16);
      v13 = v52;
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_21B0D538C();
        *v58 = v41;
      }

      (*v43)(v53, v54);
      v56 = &type metadata for SODAWarehouseColumn;
      v57 = sub_21B0DC4A8();
      v37 = swift_allocObject();
      *&v55 = v37;
      v37[2] = v51;
      v37[3] = v17;
      v37[4] = v30;
      v37[5] = v32;
      v38 = *v58;
      *(v38 + 16) = v36 + 1;
      sub_21AF81D68(&v55, v38 + 40 * v36 + 32);
      a2 = i;
    }

    v15 += 2;
  }

  return result;
}

uint64_t sub_21B0DC8D8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v77[-v6];
  v109 = sub_21B111874();
  v7 = *(v109 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v109);
  v105 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v98 = &v77[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47698, &qword_21B12B7E8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v103 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v102 = &v77[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476A0, &unk_21B12B7F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v100 = &v77[-v19];
  v20 = sub_21B111954();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v84 = v22 + 16;
  v97 = v7 + 16;
  v108 = (v7 + 32);
  v104 = v7;
  v93 = v7 + 40;
  v85 = v22;
  v78 = (v22 + 8);
  v86 = a1;

  v30 = 0;
  v80 = a1 + 64;
  v79 = v29;
  v83 = a2;
  v82 = v20;
  v81 = v24;
  if (v28)
  {
LABEL_4:
    v31 = v30;
LABEL_8:
    v32 = v4;
    v90 = (v28 - 1) & v28;
    v89 = v31;
    (*(v85 + 16))(v24, *(v86 + 56) + *(v85 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v20);
    v33 = sub_21B111944();
    v34 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a2;
    v116 = *a2;
    sub_21B0DEF54(v33, sub_21B0DEEE0, 0, v110);
    v96 = v115;
    v99 = v110[0];
    v92 = v110[1];
    v37 = v112;
    v38 = v113;
    v95 = v114;
    v87 = v111;
    v91 = (v111 + 64) >> 6;
    v88 = v33;

    while (1)
    {
      v39 = v38;
      v40 = v37;
      v107 = isUniquelyReferenced_nonNull_native;
      v101 = v37;
      if (!v38)
      {
        break;
      }

LABEL_14:
      v106 = (v39 - 1) & v39;
      v43 = __clz(__rbit64(v39)) | (v40 << 6);
      v44 = v98;
      v45 = (*(v99 + 48) + 16 * v43);
      v47 = *v45;
      v46 = v45[1];
      v48 = v104;
      v49 = v109;
      (*(v104 + 16))(v98, *(v99 + 56) + *(v104 + 72) * v43, v109);
      v50 = *(v32 + 48);
      v51 = v102;
      *v102 = v47;
      *(v51 + 1) = v46;
      v42 = v51;
      v52 = *(v48 + 32);
      v4 = v32;
      v52(&v42[v50], v44, v49);
      __swift_storeEnumTagSinglePayload(v42, 0, 1, v32);

      v41 = v40;
LABEL_15:
      v53 = v103;
      sub_21AFA41DC(v42, v103, &qword_27CD47698, &qword_21B12B7E8);
      v54 = 1;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v4);
      v56 = v100;
      if (EnumTagSinglePayload != 1)
      {
        v57 = v94;
        sub_21AFA41DC(v103, v94, &qword_27CD47680, &unk_21B12B7D0);
        v95(v57);
        sub_21B0DDFFC(v57);
        v54 = 0;
      }

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
      __swift_storeEnumTagSinglePayload(v56, v54, 1, v58);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
      if (__swift_getEnumTagSinglePayload(v56, 1, v59) == 1)
      {
        sub_21AF9C4BC();

        a2 = v83;
        *v83 = v36;
        v24 = v81;
        v20 = v82;
        (*v78)(v81, v82);
        v30 = v89;
        v25 = v80;
        v29 = v79;
        v28 = v90;
        if (!v90)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v61 = *v56;
      v60 = v56[1];
      v62 = v56;
      v63 = *v108;
      (*v108)(v105, v62 + *(v59 + 48), v109);
      v65 = sub_21AF98B58(v61, v60);
      v66 = v36[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_34;
      }

      v69 = v64;
      if (v36[3] >= v68)
      {
        if ((v107 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47690, &qword_21B12B7E0);
          sub_21B1129A4();
        }
      }

      else
      {
        sub_21B0C1400(v68, v107 & 1);
        v70 = sub_21AF98B58(v61, v60);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_37;
        }

        v65 = v70;
      }

      v36 = v116;
      if (v69)
      {

        (*(v104 + 40))(v36[7] + *(v104 + 72) * v65, v105, v109);
      }

      else
      {
        v116[(v65 >> 6) + 8] |= 1 << v65;
        v72 = (v36[6] + 16 * v65);
        *v72 = v61;
        v72[1] = v60;
        v63(v36[7] + *(v104 + 72) * v65, v105, v109);
        v73 = v36[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_35;
        }

        v36[2] = v75;
      }

      isUniquelyReferenced_nonNull_native = 1;
      v37 = v41;
      v38 = v106;
      v32 = v4;
    }

    v41 = v37;
    v42 = v102;
    v4 = v32;
    while (1)
    {
      v40 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v40 >= v91)
      {
        __swift_storeEnumTagSinglePayload(v102, 1, 1, v32);
        v106 = 0;
        goto LABEL_15;
      }

      v39 = *(v92 + 8 * v40);
      ++v41;
      if (v39)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_37:
  result = sub_21B112E54();
  __break(1u);
  return result;
}

void sub_21B0DD160()
{
  qword_27CD47650 = 0x6D617473656D6974;
  *algn_27CD47658 = 0xE900000000000070;
  qword_27CD47660 = MEMORY[0x277D837D0];
  qword_27CD47668 = MEMORY[0x277D3E338];
}

uint64_t sub_21B0DD19C(uint64_t a1, uint64_t a2)
{
  v96 = sub_21B111844();
  v4 = *(v96 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v93 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = v76 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  v9 = OUTLINED_FUNCTION_4_1(v101);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v76 - v12);
  v14 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  v15 = sub_21B111874();
  v107 = sub_21B112334();
  v88 = a1;
  v16 = sub_21B1118E4();
  sub_21B0DC8D8(v16, &v107);

  sub_21B0DC50C(a2, &v107, &v108);
  v87 = 0;

  v18 = v107 + 64;
  v17 = *(v107 + 64);
  v19 = 1 << *(v107 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v92 = *MEMORY[0x277D3E518];
  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v86 = *MEMORY[0x277D3E500];
  v98 = v15 - 8;
  v99 = v15;
  v91 = (v4 + 16);
  v90 = (v4 + 88);
  v85 = *MEMORY[0x277D3E510];
  v84 = *MEMORY[0x277D3E540];
  v83 = *MEMORY[0x277D3E508];
  v82 = *MEMORY[0x277D3E550];
  v81 = *MEMORY[0x277D3E548];
  v80 = *MEMORY[0x277D3E4E8];
  v79 = *MEMORY[0x277D3E530];
  v78 = *MEMORY[0x277D3E558];
  v77 = *MEMORY[0x277D3E4F8];
  v76[5] = *MEMORY[0x277D3E538];
  v76[4] = *MEMORY[0x277D3E4F0];
  v76[3] = *MEMORY[0x277D3E560];
  v76[2] = *MEMORY[0x277D3E568];
  v76[1] = *MEMORY[0x277D3E520];
  v89 = (v4 + 8);
  v76[0] = *MEMORY[0x277D3E528];
  v102 = v107;

  v23 = 0;
  v100 = v13;
  v97 = v18;
  if (v21)
  {
LABEL_8:
    while (1)
    {
      v25 = __clz(__rbit64(v21)) | (v23 << 6);
      v26 = (*(v102 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      (*(*(v99 - 8) + 16))(v13 + *(v101 + 48), *(v102 + 56) + *(*(v99 - 8) + 72) * v25);
      *v13 = v28;
      v13[1] = v27;
      v29 = v28 == 0x697461636F766E69 && v27 == 0xEF657079745F6E6FLL;
      if (!v29 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v14 + 16);
        OUTLINED_FUNCTION_3_27();
        sub_21B0D538C();
        v14 = v55;
      }

      v30 = v28;
      v31 = *(v14 + 16);
      if (v31 >= *(v14 + 24) >> 1)
      {
        sub_21B0D538C();
        v32 = v56;
      }

      else
      {
        v32 = v14;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E40, &qword_21B128568);
      v34 = sub_21B0DE064();
      v105 = &type metadata for SODAWarehouseColumn;
      v106 = sub_21B0DC4A8();
      OUTLINED_FUNCTION_6_21();
      v35 = swift_allocObject();
      *&v104 = v35;
      v35[2] = v30;
      v35[3] = v27;
      v35[4] = v33;
      v35[5] = v34;
      v14 = v32;
      *(v32 + 16) = v31 + 1;
      sub_21AF81D68(&v104, v32 + 40 * v31 + 32);
      v18 = v97;
LABEL_53:
      v21 &= v21 - 1;
      v13 = v100;
      sub_21B0DDFFC(v100);
      if (!v21)
      {
        goto LABEL_4;
      }
    }

    v94 = v28;
    swift_bridgeObjectRetain_n();
    v36 = v95;
    sub_21B111864();
    v37 = v93;
    v38 = v96;
    (*v91)(v93, v36, v96);
    v39 = (*v90)(v37, v38);
    if (v39 == v92)
    {
      v40 = MEMORY[0x277D839F8];
      v41 = MEMORY[0x277D3E350];
LABEL_48:
      (*v89)(v95, v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v14 + 16);
        OUTLINED_FUNCTION_3_27();
        sub_21B0D538C();
        v14 = v59;
      }

      v51 = *(v14 + 16);
      v52 = v14;
      if (v51 >= *(v14 + 24) >> 1)
      {
        sub_21B0D538C();
        v52 = v60;
      }

      v105 = &type metadata for SODAWarehouseColumn;
      v106 = sub_21B0DC4A8();
      OUTLINED_FUNCTION_6_21();
      v53 = swift_allocObject();
      *&v104 = v53;
      v53[2] = v94;
      v53[3] = v27;
      v53[4] = v40;
      v53[5] = v41;
      *(v52 + 16) = v51 + 1;
      v14 = v52;
      sub_21AF81D68(&v104, v52 + 40 * v51 + 32);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_0_27(&v116 + 4);
    if (v29)
    {
      v40 = MEMORY[0x277D83A90];
      v41 = MEMORY[0x277D3E368];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27(&v116);
    if (v42)
    {
LABEL_25:
      v40 = MEMORY[0x277D84A28];
      v41 = MEMORY[0x277D3E388];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27(&v115 + 4);
    if (v43)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_0_27(&v115);
    if (v44)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_0_27(&v114 + 4);
    if (v45)
    {
LABEL_28:
      v40 = MEMORY[0x277D84D38];
      v41 = MEMORY[0x277D3E398];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27(&v114);
    if (!v29)
    {
      OUTLINED_FUNCTION_0_27(&v113 + 4);
      if (v46)
      {
        v40 = MEMORY[0x277D839B0];
        v41 = MEMORY[0x277D3E348];
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_27(&v113);
      if (v47)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_0_27(&v112 + 4);
      if (v48)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49 == v77;
      }

      if (v50)
      {
        v41 = sub_21AF997C4();
        v40 = MEMORY[0x277CC9318];
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_27(&v111 + 4);
      if (!v57)
      {
        OUTLINED_FUNCTION_0_27(&v111);
        if (!v29)
        {
          OUTLINED_FUNCTION_0_27(v110);
          if (!v29)
          {
            OUTLINED_FUNCTION_0_27(v109);
            if (!v29)
            {
              OUTLINED_FUNCTION_0_27(&v108 + 4);
              if (v29)
              {
                v40 = MEMORY[0x277D849A8];
                v41 = MEMORY[0x277D3E380];
              }

              else
              {
                OUTLINED_FUNCTION_0_27(&v108);
                if (!v61)
                {
                  result = sub_21B112CF4();
                  __break(1u);
                  return result;
                }

                v40 = MEMORY[0x277D84A28];
                v41 = MEMORY[0x277D3E388];
              }

              v18 = v97;
              goto LABEL_48;
            }

            goto LABEL_25;
          }

LABEL_31:
          v40 = MEMORY[0x277D849A8];
          v41 = MEMORY[0x277D3E380];
          goto LABEL_48;
        }

LABEL_41:
        v40 = MEMORY[0x277D837D0];
        v41 = MEMORY[0x277D3E338];
        goto LABEL_48;
      }
    }

    v40 = MEMORY[0x277D84CC0];
    v41 = MEMORY[0x277D3E390];
    goto LABEL_48;
  }

  while (1)
  {
LABEL_4:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_8;
    }
  }

  v22 = v108;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_68;
  }

LABEL_74:
  sub_21AFAB368(v22);
  v22 = v73;
LABEL_68:
  v62 = v88;
  v63 = *(v22 + 16);
  *&v104 = v22 + 32;
  *(&v104 + 1) = v63;
  sub_21B0DE0E0(&v104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21AFAB368(v14);
    v14 = v74;
  }

  v64 = *(v14 + 16);
  *&v104 = v14 + 32;
  *(&v104 + 1) = v64;
  sub_21B0DE0E0(&v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F0, &unk_21B1178A0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_21B113D90;
  if (qword_27CD42A20 != -1)
  {
    swift_once();
  }

  v66 = qword_27CD47650;
  v67 = qword_27CD47668;
  *(v65 + 56) = &type metadata for SODAWarehouseColumn;
  *(v65 + 64) = sub_21B0DC4A8();
  OUTLINED_FUNCTION_6_21();
  v68 = swift_allocObject();
  *(v65 + 32) = v68;
  *(v68 + 16) = v66;
  *(v68 + 24) = *algn_27CD47658;
  *(v68 + 40) = v67;
  v103 = v65;

  sub_21B0D0DCC(v69);

  sub_21B0D0DCC(v70);
  v71 = sub_21B111924();
  OUTLINED_FUNCTION_4_1(v71);
  (*(v72 + 8))(v62);

  return v103;
}

uint64_t sub_21B0DDB68()
{
  v1 = sub_21B111844();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D3E518])
  {
    return MEMORY[0x277D839F8];
  }

  if (v6 == *MEMORY[0x277D3E500])
  {
    return MEMORY[0x277D83A90];
  }

  if (v6 == *MEMORY[0x277D3E510])
  {
    return MEMORY[0x277D84A28];
  }

  if (v6 == *MEMORY[0x277D3E540])
  {
    return MEMORY[0x277D84D38];
  }

  if (v6 == *MEMORY[0x277D3E508])
  {
    return MEMORY[0x277D849A8];
  }

  if (v6 == *MEMORY[0x277D3E550])
  {
    return MEMORY[0x277D84D38];
  }

  if (v6 == *MEMORY[0x277D3E548])
  {
    return MEMORY[0x277D84CC0];
  }

  if (v6 == *MEMORY[0x277D3E4E8])
  {
    return MEMORY[0x277D839B0];
  }

  if (v6 == *MEMORY[0x277D3E530])
  {
    return MEMORY[0x277D837D0];
  }

  if (v6 == *MEMORY[0x277D3E558] || v6 == *MEMORY[0x277D3E4F8])
  {
    v7 = MEMORY[0x277CC9318];
    sub_21AF997C4();
    return v7;
  }

  if (v6 == *MEMORY[0x277D3E538])
  {
    return MEMORY[0x277D84CC0];
  }

  if (v6 == *MEMORY[0x277D3E4F0])
  {
    return MEMORY[0x277D837D0];
  }

  if (v6 == *MEMORY[0x277D3E560])
  {
    return MEMORY[0x277D849A8];
  }

  if (v6 == *MEMORY[0x277D3E568])
  {
    return MEMORY[0x277D84A28];
  }

  if (v6 == *MEMORY[0x277D3E520])
  {
    return MEMORY[0x277D849A8];
  }

  if (v6 == *MEMORY[0x277D3E528])
  {
    return MEMORY[0x277D84A28];
  }

  result = sub_21B112CF4();
  __break(1u);
  return result;
}

uint64_t sub_21B0DDE54(void *a1, void *a2)
{
  v3 = a1[4];
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  v4 = sub_21B1115C4();
  v6 = v5;
  v7 = a2[4];
  OUTLINED_FUNCTION_1_27(a2, a2[3]);
  if (v4 == sub_21B1115C4() && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_21B112D04();
  }

  return v10 & 1;
}

unint64_t sub_21B0DDF54()
{
  result = qword_27CD47670;
  if (!qword_27CD47670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47670);
  }

  return result;
}

unint64_t sub_21B0DDFA8()
{
  result = qword_27CD47678;
  if (!qword_27CD47678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47678);
  }

  return result;
}

uint64_t sub_21B0DDFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0DE064()
{
  result = qword_27CD47688;
  if (!qword_27CD47688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD46E40, &qword_21B128568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47688);
  }

  return result;
}

uint64_t sub_21B0DE0E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0DE368(v7, v8, a1, v4);
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
    return sub_21B0DE1E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0DE1E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        sub_21AF92198(v5, &v19);
        sub_21AF92198(v5 - 40, v18);
        OUTLINED_FUNCTION_1_27(&v19, v20);
        v7 = sub_21B1115C4();
        v9 = v8;
        OUTLINED_FUNCTION_1_27(v18, v18[3]);
        if (v7 == sub_21B1115C4() && v9 == v10)
        {
          break;
        }

        v12 = OUTLINED_FUNCTION_5_31();

        __swift_destroy_boxed_opaque_existential_0(v18);
        result = __swift_destroy_boxed_opaque_existential_0(&v19);
        if (v12)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_21AF81D68(v5, &v19);
          v13 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v13;
          *(v5 + 32) = *(v5 - 8);
          result = sub_21AF81D68(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v18);
      result = __swift_destroy_boxed_opaque_existential_0(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21B0DE368(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_104:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    v106 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_21AF92198(*a3 + 40 * v8, &v116);
      sub_21AF92198(v9 + 40 * v7, v114);
      v10 = v118;
      LODWORD(v112) = sub_21B0DDE54(&v116, v114);
      v118 = v10;
      if (v10)
      {
        __swift_destroy_boxed_opaque_existential_0(v114);
        __swift_destroy_boxed_opaque_existential_0(&v116);
LABEL_114:

        return;
      }

      v103 = v6;
      __swift_destroy_boxed_opaque_existential_0(v114);
      __swift_destroy_boxed_opaque_existential_0(&v116);
      v109 = 40 * v7;
      v11 = v9 + 40 * v7 + 80;
      v12 = (v7 + 2);
      while (1)
      {
        v13 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        sub_21AF92198(v11, &v116);
        sub_21AF92198(v11 - 40, v114);
        OUTLINED_FUNCTION_1_27(&v116, v117);
        v14 = sub_21B1115C4();
        v16 = v15;
        OUTLINED_FUNCTION_1_27(v114, v115);
        if (v14 == sub_21B1115C4() && v16 == v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = OUTLINED_FUNCTION_4_28();
        }

        __swift_destroy_boxed_opaque_existential_0(v114);
        __swift_destroy_boxed_opaque_existential_0(&v116);
        v11 += 40;
        ++v8;
        v12 = v13 + 1;
        if ((v112 ^ v19))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v112)
      {
        v20 = v106;
        v6 = v103;
        if (v8 < v106)
        {
          goto LABEL_139;
        }

        if (v106 >= v8)
        {
          v7 = v106;
        }

        else
        {
          if (v4 >= v13)
          {
            v21 = v13;
          }

          else
          {
            v21 = v4;
          }

          v22 = 40 * v21 - 40;
          v23 = v8;
          v24 = v109;
          do
          {
            if (v20 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v26 = v8;
              v27 = v25 + v24;
              v28 = v25 + v22;
              sub_21AF81D68((v25 + v24), &v116);
              v29 = *(v28 + 32);
              v30 = *(v28 + 16);
              *v27 = *v28;
              *(v27 + 16) = v30;
              *(v27 + 32) = v29;
              sub_21AF81D68(&v116, v28);
              v8 = v26;
            }

            ++v20;
            v22 -= 40;
            v24 += 40;
          }

          while (v20 < v23);
          v7 = v106;
        }
      }

      else
      {
        v7 = v106;
        v6 = v103;
      }
    }

    v31 = a3[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = *(v6 + 16);
      v88 = OUTLINED_FUNCTION_3_27();
      sub_21B0D4B14(v88, v89, v90, v6);
      v6 = v91;
    }

    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    v46 = v45 + 1;
    v112 = v8;
    if (v45 >= v44 >> 1)
    {
      sub_21B0D4B14(v44 > 1, v45 + 1, 1, v6);
      v6 = v92;
    }

    *(v6 + 16) = v46;
    v47 = v6 + 32;
    v48 = (v6 + 32 + 16 * v45);
    *v48 = v106;
    v48[1] = v112;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = (v47 + 16 * (v46 - 1));
        v51 = (v6 + 16 * v46);
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 32);
          v53 = *(v6 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_72:
          if (v55)
          {
            goto LABEL_122;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_125;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_130;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v46 < 2)
        {
          goto LABEL_124;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_87:
        if (v70)
        {
          goto LABEL_127;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v77 < v69)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v81 = v6;
        v82 = (v47 + 16 * (v49 - 1));
        v83 = *v82;
        v84 = v47 + 16 * v49;
        v6 = *(v84 + 8);
        v85 = v118;
        sub_21B0DEAEC((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v6, v111);
        v118 = v85;
        if (v85)
        {
          goto LABEL_114;
        }

        if (v6 < v83)
        {
          goto LABEL_117;
        }

        v86 = *(v81 + 16);
        if (v49 > v86)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v6;
        if (v49 >= v86)
        {
          goto LABEL_119;
        }

        v46 = v86 - 1;
        sub_21B0D61C0((v84 + 16), v86 - 1 - v49, (v47 + 16 * v49));
        v6 = v81;
        *(v81 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_101;
        }
      }

      v56 = v47 + 16 * v46;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_120;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_121;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_123;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_126;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_134;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = v112;
    v4 = a3[1];
    if (v112 >= v4)
    {
      goto LABEL_104;
    }
  }

  v32 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v6 = sub_21B0D61A8(v6);
LABEL_106:
    v93 = v6;
    v94 = (v6 + 16);
    for (i = *(v6 + 16); ; *v94 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v96 = (v93 + 16 * i);
      v97 = *v96;
      v98 = &v94[2 * i];
      v99 = *(v98 + 1);
      v100 = v118;
      sub_21B0DEAEC((*a3 + 40 * *v96), (*a3 + 40 * *v98), *a3 + 40 * v99, v112);
      v118 = v100;
      if (v100)
      {
        break;
      }

      if (v99 < v97)
      {
        goto LABEL_131;
      }

      if (v6 >= *v94)
      {
        goto LABEL_132;
      }

      *v96 = v97;
      v96[1] = v99;
      v101 = *v94 - i;
      if (*v94 < i)
      {
        goto LABEL_133;
      }

      i = *v94 - 1;
      sub_21B0D61C0(v98 + 16, v101, v98);
    }

    goto LABEL_114;
  }

  if (v8 == v32)
  {
    goto LABEL_52;
  }

  v104 = v6;
  v33 = *a3;
  v34 = *a3 + 40 * v8;
  v35 = &v7[-v8];
  v107 = v32;
LABEL_39:
  v110 = v34;
  v112 = v8;
  v108 = v35;
  while (1)
  {
    sub_21AF92198(v34, &v116);
    sub_21AF92198(v34 - 40, v114);
    OUTLINED_FUNCTION_1_27(&v116, v117);
    v36 = sub_21B1115C4();
    v38 = v37;
    OUTLINED_FUNCTION_1_27(v114, v115);
    if (v36 == sub_21B1115C4() && v38 == v39)
    {

      __swift_destroy_boxed_opaque_existential_0(v114);
      __swift_destroy_boxed_opaque_existential_0(&v116);
LABEL_50:
      v8 = (v112 + 1);
      v34 = v110 + 40;
      v35 = v108 - 1;
      if (v112 + 1 == v107)
      {
        v8 = v107;
        v6 = v104;
        v7 = v106;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    v41 = OUTLINED_FUNCTION_4_28();

    __swift_destroy_boxed_opaque_existential_0(v114);
    __swift_destroy_boxed_opaque_existential_0(&v116);
    if ((v41 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v33)
    {
      break;
    }

    sub_21AF81D68(v34, &v116);
    v42 = *(v34 - 24);
    *v34 = *(v34 - 40);
    *(v34 + 16) = v42;
    *(v34 + 32) = *(v34 - 8);
    sub_21AF81D68(&v116, v34 - 40);
    v34 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_21B0DEAEC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_21AFCC408(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v45 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      sub_21AF92198(v6, v43);
      sub_21AF92198(v4, v41);
      OUTLINED_FUNCTION_1_27(v43, v44);
      v12 = sub_21B1115C4();
      v14 = v13;
      OUTLINED_FUNCTION_1_27(v41, v42);
      v16 = v12 == sub_21B1115C4() && v14 == v15;
      if (v16)
      {

        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v43);
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5_31();

        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v43);
        if (v17)
        {
          v18 = v6;
          v19 = v7 == v6;
          v6 += 40;
          goto LABEL_15;
        }
      }

      v18 = v4;
      v19 = v7 == v4;
      v4 += 40;
LABEL_15:
      v5 = v45;
      if (!v19)
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        *(v7 + 4) = *(v18 + 4);
        *v7 = v20;
        *(v7 + 1) = v21;
      }

      v7 += 40;
    }
  }

  sub_21AFCC408(a2, (a3 - a2) / 40, a4);
  v22 = &v4[40 * v9];
  v39 = v7;
LABEL_19:
  v23 = (v6 - 40);
  v5 -= 40;
  v24 = (v22 - 40);
  v40 = v6 - 40;
  while (1)
  {
    v10 = (v24 + 40);
    if (v24 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v45 = v24 + 40;
    sub_21AF92198(v24, v43);
    sub_21AF92198(v23, v41);
    OUTLINED_FUNCTION_1_27(v43, v44);
    v26 = sub_21B1115C4();
    v28 = v27;
    OUTLINED_FUNCTION_1_27(v41, v42);
    if (v26 == sub_21B1115C4() && v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_4_28();
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v43);
    if (v31)
    {
      v22 = (v24 + 40);
      v16 = v5 + 40 == v6;
      v7 = v39;
      v6 -= 40;
      if (!v16)
      {
        v34 = *v40;
        v35 = *(v40 + 1);
        *(v5 + 32) = *(v40 + 4);
        *v5 = v34;
        *(v5 + 16) = v35;
        v6 = v40;
      }

      goto LABEL_19;
    }

    if (v45 != v5 + 40)
    {
      v32 = *v24;
      v33 = *(v24 + 16);
      *(v5 + 32) = *(v24 + 32);
      *v5 = v32;
      *(v5 + 16) = v33;
    }

    v5 -= 40;
    v24 -= 40;
    v7 = v39;
    v23 = (v6 - 40);
  }

LABEL_38:
  v36 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

uint64_t sub_21B0DEE18(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_21B0DEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B111874();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_21B0DEEE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
  result = sub_21B0DEE60(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_21B0DEF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_21B112D04();
}

double sub_21B0DF010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_21B0B5B7C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_21AF94C04(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21B0DF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_21AF98B58(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    OUTLINED_FUNCTION_4_1(v12);
    (*(v13 + 16))(a5, v11 + *(v13 + 72) * v10, v12);
    v14 = OUTLINED_FUNCTION_10_14();
    v17 = v12;
  }

  else
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_21B0DF160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_21AF98B58(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_52();
}

uint64_t sub_21B0DF1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_21B0B5BC0(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    OUTLINED_FUNCTION_4_1(v9);
    sub_21B0BFFD8(v8 + *(v10 + 72) * v7, a3);
    v11 = OUTLINED_FUNCTION_10_14();
    v14 = v9;
  }

  else
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    v11 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_21B0DF248(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_21B0B5BC0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_21B0DF298@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21B0B5D3C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_21B110F84();
    OUTLINED_FUNCTION_4_1(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_10_14();
    v13 = v8;
  }

  else
  {
    sub_21B110F84();
    v10 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_21B0DF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21AF98B58(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_21B0DF394@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_21AF98B58(a1, a2), (v7 & 1) != 0))
  {
    sub_21AF92198(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_21B0DF3EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47170, &unk_21B12B960);
    v2 = sub_21B112A14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_21AF98B58(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_21B0DF5D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B8, &qword_21B12B978);
    v2 = sub_21B112A14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_21AF92198(*(a1 + 56) + 40 * v11, v32);
    *&v31 = v13;
    *(&v31 + 1) = v14;
    v28[2] = v31;
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v15 = v31;
    sub_21AF81D68(v29, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
    swift_dynamicCast();
    sub_21AF94BF4(&v25, v27);
    sub_21AF94BF4(v27, v28);
    sub_21AF94BF4(v28, &v26);
    result = sub_21AF98B58(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_21AF94BF4(&v26, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_21AF94BF4(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

BOOL sub_21B0DF864(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_21B1128F4();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t SODAWarehouseSnapshot.csvString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_52();
}

uint64_t SODAWarehouseSnapshot.jsonString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_52();
}

uint64_t SODAWarehouseSnapshot.init(csvURL:jsonURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_21B110BA4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v61 = v7;
  v63 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v60 = v11 - v10;
  OUTLINED_FUNCTION_33_0();
  v12 = sub_21B112444();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2();
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  sub_21B110D44();
  v16 = sub_21B1123D4();

  v17 = [v15 fileExistsAtPath_];

  if (!v17)
  {
    sub_21B112904();

    OUTLINED_FUNCTION_16_10();
    v64 = v30 | 1;
    v66 = v29;
    v31 = sub_21B110D44();
    MEMORY[0x21CEE9770](v31);

    sub_21B0DC308();
    OUTLINED_FUNCTION_4_0();
    *v32 = v64;
    *(v32 + 8) = v66;
    *(v32 + 16) = 1;
LABEL_8:
    swift_willThrow();
    v26 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1(v26);
    v28 = *(v37 + 8);
    v28(a2, v26);
    return (v28)(a1, v26);
  }

  v18 = [v14 defaultManager];
  sub_21B110D44();
  v19 = sub_21B1123D4();

  v20 = [v18 fileExistsAtPath_];

  if (!v20)
  {
    sub_21B112904();

    OUTLINED_FUNCTION_16_10();
    v65 = v34;
    v67 = v33;
    v35 = sub_21B110D44();
    MEMORY[0x21CEE9770](v35);

    sub_21B0DC308();
    OUTLINED_FUNCTION_4_0();
    *v36 = v65;
    *(v36 + 8) = v67;
    *(v36 + 16) = 1;
    goto LABEL_8;
  }

  v21 = a2;
  v22 = sub_21B110DC4();
  if (v68)
  {
LABEL_5:
    v26 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1(v26);
    v28 = *(v27 + 8);
    v28(v21, v26);
    return (v28)(a1, v26);
  }

  v24 = v22;
  v25 = v23;
  v39 = sub_21B110DC4();
  v41 = v40;
  v69 = v25;
  sub_21B112434();
  sub_21B112424();
  if (!v42)
  {
    sub_21B0DC308();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_8_19(v51, 0xD000000000000041);
    sub_21AF99728(v39, v41);
    sub_21AF99728(v24, v25);
    goto LABEL_5;
  }

  sub_21B110B94();
  sub_21AFC921C();
  v57 = sub_21B1127F4();
  v58 = v43;
  v44 = *(v61 + 8);
  v44(v60, v63);

  sub_21B112434();
  sub_21B112424();
  if (v45)
  {
    sub_21B110B94();
    v62 = sub_21B1127F4();
    v56 = v46;
    sub_21AF99728(v39, v41);
    sub_21AF99728(v24, v69);
    v47 = sub_21B110D94();
    v48 = v21;
    v49 = v47;
    v50 = *(*(v47 - 8) + 8);
    v50(v48, v47);
    v50(a1, v49);
    v44(v60, v63);

    *a3 = v57;
    a3[1] = v58;
    a3[2] = v62;
    a3[3] = v56;
  }

  else
  {
    sub_21B0DC308();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_8_19(v52, 0xD000000000000042);
    sub_21AF99728(v39, v41);
    sub_21AF99728(v24, v69);
    v53 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1(v53);
    v55 = *(v54 + 8);
    v55(v21, v53);
    v55(a1, v53);
  }

  return result;
}

void SODAWarehouseSnapshot.init(fileManager:dataWarehouseUrl:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v137 = a2;
  v138 = a1;
  v123 = a3;
  v129 = sub_21B1112A4();
  v3 = OUTLINED_FUNCTION_1(v129);
  v127 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v130 = v8 - v7;
  OUTLINED_FUNCTION_33_0();
  v132 = sub_21B110F84();
  v9 = OUTLINED_FUNCTION_1(v132);
  v126 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v131 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B8, &qword_21B12B820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v125 = &v112 - v17;
  OUTLINED_FUNCTION_33_0();
  v133 = sub_21B111514();
  v18 = OUTLINED_FUNCTION_1(v133);
  v135 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v134 = v23 - v22;
  OUTLINED_FUNCTION_33_0();
  v24 = sub_21B111CB4();
  v25 = OUTLINED_FUNCTION_1(v24);
  v128 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v31 = (v30 - v29);
  v32 = sub_21B1117B4();
  v33 = OUTLINED_FUNCTION_1(v32);
  v124 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = sub_21B111924();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_1();
  v48 = v46 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v112 - v50;
  v52 = sub_21B111714();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = v136;
  v56 = sub_21B111704();
  if (v55)
  {
    sub_21AF99BE0(v137, &qword_27CD43750, &qword_21B117A30);
  }

  else
  {
    v119 = v31;
    v117 = v48;
    v120 = v39;
    v118 = v32;
    v122 = v51;
    v57 = v137;
    v121 = v43;
    v136 = v56;
    if (!sub_21B1116D4())
    {
      while (1)
      {
LABEL_15:
        sub_21B1129C4();
        __break(1u);
LABEL_16:
        sub_21AF99BE0(&v141, &qword_27CD476A8, &unk_21B12B828);
      }
    }

    sub_21B111124();
    v58 = v57;
    v59 = sub_21B1110D4();
    v60 = v122;
    sub_21B1118C4();
    v61 = v138;
    sub_21B0CF044(v60, v138, v57);
    sub_21B0CF5F8(v59, v61, v57);
    sub_21B111114();
    v115 = v40;
    *&v141 = &unk_282C8D838;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
    sub_21B0E0E64();
    v114 = 0;
    v113 = sub_21B112384();
    v65 = v64;
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_21B112904();

    strcpy(&v141, "SELECT * FROM ");
    HIBYTE(v141) = -18;
    v66 = v128;
    v67 = v119;
    v68 = v24;
    (*(v128 + 13))(v119, *MEMORY[0x277D39DD8], v24);
    v112 = sub_21B111C44();
    v70 = v69;
    v66[1](v67, v68);
    MEMORY[0x21CEE9770](v112, v70);

    MEMORY[0x21CEE9770](0xD000000000000014, 0x800000021B142180);
    MEMORY[0x21CEE9770](v113, v65);
    v71 = v114;
    sub_21B1116F4();
    if (v71)
    {

      sub_21AF99BE0(v57, &qword_27CD43750, &qword_21B117A30);
      v72 = OUTLINED_FUNCTION_4_29();
      v63(v72, v62);
    }

    else
    {
      v114 = v59;

      sub_21B111504();
      v128 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      sub_21B0E3028(0xD000000000000013, 0x800000021B1421A0, v128);
      v73 = v125;
      sub_21B111084();
      v74 = sub_21B1110B4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);
      v76 = 0;
      v77 = v121;
      if (EnumTagSinglePayload != 1)
      {
        v76 = sub_21B1110A4();
        (*(*(v74 - 8) + 8))(v73, v74);
      }

      [v128 setTimeZone_];

      v78 = v117;
      (*(v77 + 16))(v117, v122, v115);
      v79 = sub_21B0DD19C(v78, &unk_282C8D838);
      v125 = sub_21B0DDFA8();
      v119 = (v127 + 8);
      v127 = v126 + 8;
      v116 = v65;
      while (1)
      {
        v143 = v125;
        v142 = &type metadata for SODAWarehouseSchema;
        *&v141 = v79;

        v80 = sub_21B111734();
        __swift_destroy_boxed_opaque_existential_0(&v141);
        if (!v80)
        {
          break;
        }

        sub_21B0DF394(0x6D617473656D6974, 0xE900000000000070, v80, &v141);
        if (!v142)
        {
          goto LABEL_16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
        v81 = MEMORY[0x277D837D0];
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        sub_21B0E0EC8(v139[0], v139[1]);
        if (v82)
        {
          goto LABEL_15;
        }

        sub_21B110F34();
        v83 = sub_21B110F14();
        v84 = [v128 stringFromDate_];

        v85 = sub_21B112404();
        v87 = v86;

        *&v141 = v85;
        *(&v141 + 1) = v87;
        MEMORY[0x21CEE9770](1129600288, 0xE400000000000000);
        v142 = v81;
        v143 = MEMORY[0x277D3E338];
        sub_21AF81D68(&v141, v139);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v80;
        v89 = v140;
        v90 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
        v91 = *(*(v89 - 8) + 64);
        MEMORY[0x28223BE20](v90);
        OUTLINED_FUNCTION_2();
        v94 = (v93 - v92);
        (*(v95 + 16))(v93 - v92);
        sub_21B0E308C(*v94, v94[1], 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native, &v144);
        __swift_destroy_boxed_opaque_existential_0(v139);
        sub_21B0DF5D0(v144);

        v96 = v130;
        sub_21B111284();
        sub_21B1114D4();
        (*v119)(v96, v129);
        v97 = OUTLINED_FUNCTION_12_12();
        v98(v97);
      }

      v99 = sub_21B0E0F28(v134, v79);
      v101 = v100;

      v102 = sub_21B0E14F0();
      v104 = v103;

      OUTLINED_FUNCTION_14_10();
      sub_21AF99BE0(v58, &qword_27CD43750, &qword_21B117A30);
      v105 = OUTLINED_FUNCTION_9_17();
      v106(v105);
      v107 = OUTLINED_FUNCTION_1_28();
      v108(v107);
      v109 = OUTLINED_FUNCTION_15_9();
      v110(v109);
      v111 = v123;
      *v123 = v99;
      v111[1] = v101;
      v111[2] = v102;
      v111[3] = v104;
    }
  }
}

unint64_t sub_21B0E0E64()
{
  result = qword_27CD42D50;
  if (!qword_27CD42D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD42D48, &qword_21B114290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D50);
  }

  return result;
}

uint64_t sub_21B0E0EC8(uint64_t a1, uint64_t a2)
{
  sub_21B0DF864(a1, a2);

  return 0;
}

uint64_t sub_21B0E0F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111334();
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21B1112A4();
  v69 = *(v75 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v75);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v77 = a1;
    v81 = MEMORY[0x277D84F90];
    sub_21AFCC4E4();
    v13 = v81;
    v14 = a2 + 32;
    do
    {
      sub_21AF92198(v14, v80);
      __swift_project_boxed_opaque_existential_0(v80, v80[3]);
      v15 = sub_21B1115C4();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(v80);
      v81 = v13;
      v18 = *(v13 + 16);
      if (v18 >= *(v13 + 24) >> 1)
      {
        sub_21AFCC4E4();
        v13 = v81;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  v72 = v13;
  v80[0] = v13;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
  v70 = sub_21B0E0E64();
  v71 = v20;
  v21 = sub_21B112384();
  v23 = v22;
  sub_21B0D4B3C();
  v25 = v24;
  v26 = *(v24 + 16);
  v27 = v26 + 1;
  if (v26 >= *(v24 + 24) >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v25 + 16) = v27;
    v28 = v25 + 16 * v26;
    *(v28 + 32) = v21;
    *(v28 + 40) = v23;
    v29 = sub_21B1114B4();
    v68 = *(v29 + 16);
    if (v30 == v68)
    {
      break;
    }

    v21 = *(v72 + 16);
    v64 = v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v63 = v69 + 16;
    v76 = v79 + 8;
    v77 = v79 + 16;
    v62 = (v69 + 8);
    v61 = (v72 + 40);
    v27 = v30;
    v65 = v21;
    v66 = v30;
    v67 = v29;
    while ((v30 & 0x8000000000000000) == 0)
    {
      if (v27 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v73 = v27;
      v74 = v25;
      (*(v69 + 16))(v11, v64 + *(v69 + 72) * v27, v75);
      if (v21)
      {
        v31 = v61;
        v32 = v21;
        v33 = MEMORY[0x277D84F90];
        while (1)
        {
          v34 = *(v31 - 1);
          v35 = *v31;

          v36 = sub_21B111294();
          if (!*(v36 + 16))
          {
            break;
          }

          v37 = sub_21AF98B58(v34, v35);
          v39 = v38;

          if ((v39 & 1) == 0)
          {
            goto LABEL_17;
          }

          v40 = v79;
          v41 = *(v36 + 56) + *(v79 + 72) * v37;
          v42 = v78;
          (*(v79 + 16))(v8, v41, v78);

          v43 = sub_21B111324();
          v45 = v44;
          (*(v40 + 8))(v8, v42);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = *(v33 + 16);
            sub_21B0D4B3C();
            v33 = v49;
          }

          v46 = *(v33 + 16);
          if (v46 >= *(v33 + 24) >> 1)
          {
            sub_21B0D4B3C();
            v33 = v50;
          }

          *(v33 + 16) = v46 + 1;
          v47 = v33 + 16 * v46;
          *(v47 + 32) = v43;
          *(v47 + 40) = v45;
          v31 += 2;
          if (!--v32)
          {
            goto LABEL_25;
          }
        }

LABEL_17:

        v43 = 0;
        v45 = 0xE000000000000000;
        goto LABEL_18;
      }

      v33 = MEMORY[0x277D84F90];
LABEL_25:
      v80[0] = v33;
      v51 = sub_21B112384();
      v53 = v52;

      v25 = v74;
      v54 = *(v74 + 16);
      v23 = v54 + 1;
      if (v54 >= *(v74 + 24) >> 1)
      {
        sub_21B0D4B3C();
        v25 = v56;
      }

      v27 = v73 + 1;
      (*v62)(v11, v75);
      *(v25 + 16) = v23;
      v55 = v25 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v53;
      v29 = v67;
      v26 = v72;
      v21 = v65;
      v30 = v66;
      if (v27 == v68)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_21B0D4B3C();
    v25 = v59;
  }

LABEL_28:

  v80[0] = v25;
  v57 = sub_21B112384();

  return v57;
}

char *sub_21B0E14F0()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = sub_21B112444();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B1118A4();
  if (!v0)
  {
    v9 = v5;
    v10 = v6;
    v11 = objc_opt_self();
    v12 = sub_21B110E34();
    v28 = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:&v28];

    v14 = v28;
    if (!v13)
    {
      v23 = v14;
      sub_21B110C84();

      swift_willThrow();
      sub_21AF99728(v9, v10);
      goto LABEL_2;
    }

    sub_21B112864();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v29, v29[3]);
    v15 = sub_21B112CE4();
    v28 = 0;
    v16 = [v11 dataWithJSONObject:v15 options:1 error:&v28];
    swift_unknownObjectRelease();
    v17 = v28;
    if (v16)
    {
      v18 = sub_21B110E54();
      v20 = v19;

      sub_21B112434();
      v21 = sub_21B112424();
      if (v22)
      {
        v4 = v21;
        sub_21AF99728(v18, v20);
        sub_21AF99728(v9, v10);
        __swift_destroy_boxed_opaque_existential_0(v29);
        goto LABEL_2;
      }

      v4 = 0x800000021B142230;
      sub_21B0DC308();
      swift_allocError();
      *v27 = 0xD000000000000020;
      *(v27 + 8) = 0x800000021B142230;
      *(v27 + 16) = 1;
      swift_willThrow();
      sub_21AF99728(v9, v10);
      v25 = v18;
      v26 = v20;
    }

    else
    {
      v24 = v17;
      sub_21B110C84();

      swift_willThrow();
      v25 = v9;
      v26 = v10;
    }

    sub_21AF99728(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

LABEL_2:
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void SODAWarehouseSnapshot.persistDatawarehouse(to:fileManager:)(unint64_t a1, void *a2)
{
  v101 = a2;
  v100 = a1;
  v3 = sub_21B111514();
  v4 = OUTLINED_FUNCTION_1(v3);
  v86 = v5;
  v87 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v85 = v9 - v8;
  OUTLINED_FUNCTION_33_0();
  v10 = sub_21B1112A4();
  v97 = OUTLINED_FUNCTION_1(v10);
  v98 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2();
  v103 = v15 - v14;
  OUTLINED_FUNCTION_33_0();
  v16 = sub_21B111924();
  v17 = OUTLINED_FUNCTION_1(v16);
  v92 = v18;
  v93 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  v91 = (v21 - v22);
  MEMORY[0x28223BE20](v23);
  v95 = &v84 - v24;
  OUTLINED_FUNCTION_33_0();
  v99 = sub_21B111CB4();
  v25 = OUTLINED_FUNCTION_1(v99);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v84 - v35;
  v96 = sub_21B111BA4();
  v37 = OUTLINED_FUNCTION_1(v96);
  v94 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_1();
  v88 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v84 - v44;
  v46 = sub_21B112444();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2();
  v54 = v53 - v52;
  v55 = *v2;
  v89 = v2[1];
  v90 = v55;
  v57 = v2[2];
  v56 = v2[3];
  sub_21B112434();
  v58 = sub_21B112414();
  v60 = v59;
  (*(v49 + 8))(v54, v46);
  if (v60 >> 60 == 15)
  {
    sub_21B0DC308();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_8_19(v61, 0xD00000000000002ALL);
  }

  else
  {
    v62 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1(v62);
    (*(v63 + 16))(v36, v100, v62);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v62);
    (*(v27 + 104))(v32, *MEMORY[0x277D39DD8], v99);
    v64 = v101;
    v65 = v102;
    sub_21B111B44();
    if (v65)
    {
      sub_21AFC5440(v58, v60);
    }

    else
    {
      sub_21AF99818(v58, v60);
      v66 = v58;
      v67 = v95;
      OUTLINED_FUNCTION_52();
      sub_21B1118F4();
      v99 = v66;
      v100 = v60;
      v68 = v91;
      v69 = v92;
      v70 = v93;
      (*(v92 + 16))(v91, v67, v93);
      v71 = sub_21B0DD19C(v68, &unk_282C8D838);
      sub_21B0E1FA0(v71, v90, v89);
      v72 = v94;
      v74 = v73;

      v75 = *(v74 + 16);
      if (v75)
      {
        v91 = v45;
        v104 = MEMORY[0x277D84F90];
        v102 = v75;
        sub_21AFCC9D0();
        v76 = 0;
        v77 = v104;
        v101 = (v98 + 32);
        while (v76 < *(v74 + 16))
        {
          v78 = *(v74 + 8 * v76 + 32);
          swift_bridgeObjectRetain_n();
          v79 = sub_21B0E2A60(v78);

          sub_21B0DF5D0(v79);

          sub_21B111284();

          v104 = v77;
          v80 = *(v77 + 16);
          if (v80 >= *(v77 + 24) >> 1)
          {
            sub_21AFCC9D0();
            v77 = v104;
          }

          ++v76;
          *(v77 + 16) = v80 + 1;
          (*(v98 + 32))(v77 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v80, v103, v97);
          if (v102 == v76)
          {

            v69 = v92;
            v70 = v93;
            v72 = v94;
            v67 = v95;
            v45 = v91;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {

LABEL_13:
        v81 = v88;
        (*(v72 + 16))(v88, v45, v96);
        type metadata accessor for DataWarehouseControllerV2();
        swift_allocObject();
        sub_21B0C4B9C(v81);
        v82 = v96;
        v83 = v85;
        sub_21B111544();
        sub_21B0C514C(v83);

        sub_21AFC5440(v99, v100);
        (*(v86 + 8))(v83, v87);
        (*(v69 + 8))(v67, v70);
        (*(v72 + 8))(v45, v82);
      }
    }
  }
}

void sub_21B0E1FA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_21B0E27C4();
  if (!v8)
  {
    sub_21B0DC308();
    swift_allocError();
    v53 = xmmword_21B12B810;
    goto LABEL_40;
  }

  v79 = a2;
  v80 = a3;
  *&v78[0] = v7;
  *(&v78[0] + 1) = v8;
  v9 = sub_21AFC921C();
  v10 = sub_21B1127E4();

  v82 = v10;
  if (!v10[2])
  {

    sub_21B0DC308();
    swift_allocError();
    v53 = xmmword_21B12B800;
LABEL_40:
    *v52 = v53;
    *(v52 + 16) = 3;
LABEL_42:
    swift_willThrow();
    return;
  }

  v12 = v10[4];
  v11 = v10[5];

  sub_21B0E2918(0, 1);
  v79 = v12;
  v80 = v11;
  *&v78[0] = 44;
  *(&v78[0] + 1) = 0xE100000000000000;
  v13 = sub_21B1127E4();

  v14 = v82;
  v15 = v82[2];
  if (v15)
  {
    v16 = 0;
    v17 = v82 + 4;
    v67 = v13 + 32;
    v66 = a1 + 32;
    v62 = MEMORY[0x277D84F90];
    v68 = v13;
    v64 = a1;
    v63 = v9;
    v61 = v82;
    v59 = v15;
    v58 = v82 + 4;
    while (v16 < v14[2])
    {
      v18 = &v17[2 * v16];
      v19 = *v18;
      v20 = v18[1];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v60 = v16;
        v79 = v19;
        v80 = v20;
        *&v78[0] = 44;
        *(&v78[0] + 1) = 0xE100000000000000;
        v22 = sub_21B1127E4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
        v23 = sub_21B112334();
        v24 = 0;
        v25 = *(v22 + 16);
        v72 = v22;
        v69 = v22 + 32;
        for (i = v25; ; v25 = i)
        {
          if (v24 == v25)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = *(v62 + 16);
              sub_21B0D546C();
              v62 = v50;
            }

            v14 = v61;
            v47 = *(v62 + 16);
            if (v47 >= *(v62 + 24) >> 1)
            {
              sub_21B0D546C();
              v14 = v61;
              v62 = v51;
            }

            v48 = v62;
            *(v62 + 16) = v47 + 1;
            *(v48 + 8 * v47 + 32) = v23;
            v15 = v59;
            v16 = v60;
            v17 = v58;
            goto LABEL_36;
          }

          if (v24 >= *(v72 + 16))
          {
            break;
          }

          if (v24 >= *(v13 + 16))
          {
            goto LABEL_47;
          }

          v73 = v23;
          v26 = (v69 + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          v70 = v24 + 1;
          v71 = v27;
          v29 = (v67 + 16 * v24);
          v30 = *v29;
          v31 = v29[1];
          v32 = *(a1 + 16);

          v33 = v66;
          if (!v32)
          {
LABEL_41:

            v79 = 0;
            v80 = 0xE000000000000000;
            sub_21B112904();

            v79 = v30;
            v80 = v31;
            MEMORY[0x21CEE9770](0xD000000000000018, 0x800000021B142210);
            v54 = v79;
            v55 = v80;
            sub_21B0DC308();
            swift_allocError();
            *v56 = v54;
            *(v56 + 8) = v55;
            *(v56 + 16) = 0;
            goto LABEL_42;
          }

          while (1)
          {
            sub_21AF92198(v33, &v75);
            __swift_project_boxed_opaque_existential_0(&v75, v76);
            if (sub_21B1115C4() == v30 && v34 == v31)
            {
              break;
            }

            v36 = sub_21B112D04();

            if (v36)
            {
              goto LABEL_22;
            }

            __swift_destroy_boxed_opaque_existential_0(&v75);
            v33 += 40;
            if (!--v32)
            {
              goto LABEL_41;
            }
          }

LABEL_22:
          sub_21AF81D68(&v75, v78);
          sub_21AF81D68(v78, &v79);
          v37 = v30 == 0x6D617473656D6974 && v31 == 0xE900000000000070;
          if (v37 || (sub_21B112D04() & 1) != 0)
          {
            sub_21B0DBF74(v71, v28);
            if (v3)
            {
              goto LABEL_45;
            }

            __swift_project_boxed_opaque_existential_0(&v79, v81);
            sub_21B1115D4();
            sub_21B1116A4();
          }

          else
          {
            __swift_project_boxed_opaque_existential_0(&v79, v81);
            sub_21B1115D4();
            sub_21B1116A4();
            if (v3)
            {
LABEL_45:

              __swift_destroy_boxed_opaque_existential_0(&v79);
              return;
            }
          }

          sub_21AF81D68(v78, &v75);
          v38 = v73;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v38;
          v40 = v76;
          v41 = v77;
          v42 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v76);
          v43 = *(*(v40 - 8) + 64);
          MEMORY[0x28223BE20](v42);
          v45 = &v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v46 + 16))(v45);
          sub_21B0E32AC(v45, v30, v31, isUniquelyReferenced_nonNull_native, &v74, v40, v41);
          __swift_destroy_boxed_opaque_existential_0(&v75);

          v23 = v74;
          __swift_destroy_boxed_opaque_existential_0(&v79);
          v24 = v70;
          v13 = v68;
          a1 = v64;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }

LABEL_36:
      if (++v16 == v15)
      {

        goto LABEL_44;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_44:
  }
}