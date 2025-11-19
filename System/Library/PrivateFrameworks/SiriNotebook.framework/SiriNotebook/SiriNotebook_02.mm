uint64_t sub_26812682C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2681268B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_268126984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_47_0();
  v7 = type metadata accessor for NotebookNLv3Intent(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_2683CB668();
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20) + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_268126A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_47_0();
  result = type metadata accessor for NotebookNLv3Intent(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v10 = sub_2683CB668();
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_268126C60()
{
  v1 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for SetTaskAttributeNLv3IntentWrapper() - 8);
  v8 = *(*v7 + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*v7 + 64);
  v11 = v3 | v8;
  v12 = sub_2683CE448();
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 8);
  v14(v0 + v4, v12);
  v14(v0 + v9, v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + v9 + v7[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v9 + v7[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v9 + v7[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v9 + v7[10]));
  v15 = v7[11];
  v16 = sub_2683CB668();
  OUTLINED_FUNCTION_1(v16);
  (*(v17 + 8))(v0 + v9 + v15);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_268126E64()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;
  v10 = *(v0 + 16);

  v11 = v0 + v8;
  v12 = type metadata accessor for Snippet();
  v13 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v21);
        (*(v22 + 8))(v11);
        v23 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v23);
        goto LABEL_41;
      case 1u:
        v107 = *v11;

        v108 = *(v11 + 24);
        goto LABEL_41;
      case 2u:
        v91 = *v11;

        v92 = *(v11 + 16);

        v93 = *(v11 + 32);

        v94 = *(v11 + 48);

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v99 = *v11;

        v100 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v101 = v100[5];
        OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v216 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v216);
            (*(v217 + 8))(v1);
            break;
          case 1u:
            v218 = *(v1 + 8);

            v219 = *(v1 + 24);

            v220 = *(v1 + 40);

            if (*(v1 + 96) != 255)
            {
              v221 = *(v1 + 80);
              v222 = *(v1 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v102 = *(v1 + 8);

            break;
          default:
            break;
        }

        v223 = v100[6];
        v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v224);
        (*(v225 + 8))(v11 + v223);
        v199 = v100[7];
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_89;
      case 4u:
        v268 = v9;
        v54 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v54);
        (*(v55 + 8))(v11);
        v56 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v56);

        OUTLINED_FUNCTION_11_5(v56[6]);

        OUTLINED_FUNCTION_11_5(v56[7]);

        v57 = v11 + v56[8];
        if (*(v57 + 24))
        {
          v58 = *(v57 + 8);

          v59 = *(v57 + 24);

          v60 = *(v57 + 40);

          if (*(v57 + 96) != 255)
          {
            v61 = *(v57 + 80);
            v62 = *(v57 + 88);
            sub_26814304C();
          }
        }

        v63 = v56[9];
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v64);
        v66 = *(v65 + 8);
        v7 = v65 + 8;
        v66(v11 + v63, v64);
        v67 = OUTLINED_FUNCTION_43_0(v56[10]);
        (v66)(v67);
        v68 = OUTLINED_FUNCTION_43_0(v56[11]);
        (v66)(v68);
        v69 = v11 + v56[12];
        v70 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v70))
        {
          v71 = *(v69 + 8);

          v264 = *(v2 + 20);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v72);
          (*(v73 + 8))(v69 + v264);
          v66(v69 + *(v2 + 24), v64);
        }

        v74 = v56[13];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v75);
        (*(v76 + 8))(&v74[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v77 = *(v74 + 3);
        }

        v78 = *(v11 + v56[15]);

        v79 = v56[16];
        v80 = OUTLINED_FUNCTION_31_1();
        v81 = type metadata accessor for Snippet.Reminder.AppLink(v80);
        if (!OUTLINED_FUNCTION_16_4(v81))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v74, *(v74 + 1));
          }

          else
          {
            v230 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v230);
            (*(v231 + 8))(v74);
          }
        }

        v232 = *(v11 + v56[17]);

        goto LABEL_104;
      case 5u:
        v114 = *v11;

        if (*(v11 + 32))
        {
          v115 = *(v11 + 16);

          v116 = *(v11 + 32);

          v117 = *(v11 + 48);

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v118 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_76;
      case 6u:
        v268 = v9;
        v149 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v149);
        (*(v150 + 8))(v11);
        v151 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v151);

        OUTLINED_FUNCTION_11_5(v151[6]);

        OUTLINED_FUNCTION_11_5(v151[7]);

        v152 = v11 + v151[8];
        if (*(v152 + 24))
        {
          v153 = *(v152 + 8);

          v154 = *(v152 + 24);

          v155 = *(v152 + 40);

          if (*(v152 + 96) != 255)
          {
            v156 = *(v152 + 80);
            v157 = *(v152 + 88);
            sub_26814304C();
          }
        }

        v158 = v151[9];
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v159);
        v161 = *(v160 + 8);
        v7 = v160 + 8;
        v161(v11 + v158, v159);
        v162 = OUTLINED_FUNCTION_43_0(v151[10]);
        (v161)(v162);
        v163 = OUTLINED_FUNCTION_43_0(v151[11]);
        (v161)(v163);
        v164 = v11 + v151[12];
        v165 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v165))
        {
          v166 = *(v164 + 8);

          v265 = *(v2 + 20);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v167);
          (*(v168 + 8))(v164 + v265);
          v161(v164 + *(v2 + 24), v159);
        }

        v169 = v151[13];
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v170);
        (*(v171 + 8))(&v169[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v172 = *(v169 + 3);
        }

        v173 = *(v11 + v151[15]);

        v174 = v151[16];
        v175 = OUTLINED_FUNCTION_31_1();
        v176 = type metadata accessor for Snippet.Reminder.AppLink(v175);
        if (!OUTLINED_FUNCTION_16_4(v176))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v169, *(v169 + 1));
          }

          else
          {
            v241 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v241);
            (*(v242 + 8))(v169);
          }
        }

        v243 = *(v11 + v151[17]);

        v244 = v11 + *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
        v245 = *(v244 + 8);

        v246 = *(type metadata accessor for Snippet.Interaction() + 20);
        v247 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v247);
        (*(v248 + 8))(v244 + v246);
LABEL_104:
        v9 = v268;
        break;
      case 7u:
        v104 = *(v11 + 8);
        goto LABEL_41;
      case 8u:
        v194 = *(v11 + 8);

        v195 = *(v11 + 24);

        v196 = *(v11 + 40);

        v197 = *(v11 + 56);

        v118 = *(type metadata accessor for Snippet.CreateNote3p() + 20);
        goto LABEL_76;
      case 9u:
        v84 = *v11;

        v85 = *(v11 + 32);
LABEL_41:

        break;
      case 0xAu:
        v183 = type metadata accessor for Snippet.SectionHeading();
        v184 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v184, v185, v183))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v256 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v256);
              (*(v257 + 8))(v11);
              break;
            case 1u:
              v258 = *(v11 + 8);

              v259 = *(v11 + 24);

              v260 = *(v11 + 40);

              if (*(v11 + 96) != 255)
              {
                v261 = *(v11 + 80);
                v262 = *(v11 + 88);
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v202 = *(v11 + 8);

              break;
            default:
              break;
          }
        }

        v186 = type metadata accessor for Snippet.SearchResult3p();
        v187 = *(v11 + v186[5]);

        v188 = *(v11 + v186[6]);

        v118 = v186[8];
LABEL_76:
        v11 += v118;
        v198 = *(v11 + 8);

        v199 = *(type metadata accessor for Snippet.Interaction() + 20);
        v200 = sub_2683CB828();
LABEL_89:
        OUTLINED_FUNCTION_0_9(v200);
        (*(v226 + 8))(v11 + v199);
        break;
      default:
        break;
    }
  }

  v15 = (v0 + v9);
  v16 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v16, v17, v12))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v18);
        (*(v19 + 8))(v0 + v9);
        v20 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_92;
      case 1u:
        v105 = *v15;

        v106 = v15[3];
        goto LABEL_92;
      case 2u:
        v86 = *v15;

        v87 = v15[2];

        v88 = v15[4];

        v89 = v15[6];

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v95 = *v15;

        v96 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v97 = v15 + v96[5];
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v203 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v203);
            (*(v204 + 8))(v97);
            break;
          case 1u:
            v205 = *(v97 + 8);

            v206 = *(v97 + 24);

            v207 = *(v97 + 40);

            if (*(v97 + 96) != 255)
            {
              v208 = *(v97 + 80);
              v209 = *(v97 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v98 = *(v97 + 8);

            break;
          default:
            break;
        }

        v210 = v96[6];
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v211);
        (*(v212 + 8))(v15 + v210);
        v213 = v96[7];
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9(v214);
        (*(v215 + 8))(v15 + v213);
        break;
      case 4u:
        v24 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v24);
        (*(v25 + 8))(v0 + v9);
        v26 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v26);

        OUTLINED_FUNCTION_11_5(v26[6]);

        OUTLINED_FUNCTION_11_5(v26[7]);

        v27 = v15 + v26[8];
        if (*(v27 + 24))
        {
          v28 = *(v27 + 8);

          v29 = *(v27 + 24);

          v30 = *(v27 + 40);

          if (*(v27 + 96) != 255)
          {
            v31 = *(v27 + 80);
            v32 = *(v27 + 88);
            sub_26814304C();
          }
        }

        v33 = v26[9];
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v34);
        v36 = *(v35 + 8);
        v36(v15 + v33, v34);
        v37 = OUTLINED_FUNCTION_44_0(v26[10]);
        (v36)(v37);
        v38 = OUTLINED_FUNCTION_44_0(v26[11]);
        (v36)(v38);
        v39 = v26[12];
        v40 = OUTLINED_FUNCTION_31_1();
        v41 = type metadata accessor for Snippet.Reminder.LocationTrigger(v40);
        if (!OUTLINED_FUNCTION_16_4(v41))
        {
          v42 = *(v33 + 8);

          v266 = v7;
          v43 = *(v9 + 20);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v44);
          v46 = v33 + v43;
          v7 = v266;
          (*(v45 + 8))(v46);
          v36((v33 + *(v9 + 24)), v34);
        }

        v47 = v26[13];
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v48);
        (*(v49 + 8))(v15 + v47);
        if (OUTLINED_FUNCTION_42_0())
        {

          v50 = *(v47 + 24);
        }

        v51 = *(v15 + v26[15]);

        v52 = v15 + v26[16];
        v53 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v53))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v52, *(v52 + 8));
          }

          else
          {
            v227 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v227);
            (*(v228 + 8))(v52);
          }
        }

        v229 = *(v15 + v26[17]);
        goto LABEL_92;
      case 5u:
        v109 = *v15;

        if (v15[4])
        {
          v110 = v15[2];

          v111 = v15[4];

          v112 = v15[6];

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v113 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_98;
      case 6u:
        v119 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v119);
        (*(v120 + 8))(v0 + v9);
        v121 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v121);

        OUTLINED_FUNCTION_11_5(v121[6]);

        OUTLINED_FUNCTION_11_5(v121[7]);

        v122 = v15 + v121[8];
        if (*(v122 + 24))
        {
          v123 = *(v122 + 8);

          v124 = *(v122 + 24);

          v125 = *(v122 + 40);

          if (*(v122 + 96) != 255)
          {
            v126 = *(v122 + 80);
            v127 = *(v122 + 88);
            sub_26814304C();
          }
        }

        v128 = v121[9];
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v129);
        v131 = *(v130 + 8);
        v131(v15 + v128, v129);
        v132 = OUTLINED_FUNCTION_44_0(v121[10]);
        (v131)(v132);
        v133 = OUTLINED_FUNCTION_44_0(v121[11]);
        (v131)(v133);
        v134 = v121[12];
        v135 = OUTLINED_FUNCTION_31_1();
        v136 = type metadata accessor for Snippet.Reminder.LocationTrigger(v135);
        if (!OUTLINED_FUNCTION_16_4(v136))
        {
          v137 = *(v128 + 8);

          v267 = v7;
          v138 = *(v9 + 20);
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v139);
          v141 = v128 + v138;
          v7 = v267;
          (*(v140 + 8))(v141);
          v131((v128 + *(v9 + 24)), v129);
        }

        v142 = v121[13];
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v143);
        (*(v144 + 8))(v15 + v142);
        if (OUTLINED_FUNCTION_42_0())
        {

          v145 = *(v142 + 24);
        }

        v146 = *(v15 + v121[15]);

        v147 = v15 + v121[16];
        v148 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v148))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v147, *(v147 + 8));
          }

          else
          {
            v233 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v233);
            (*(v234 + 8))(v147);
          }
        }

        v235 = *(v15 + v121[17]);

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p();
        goto LABEL_97;
      case 7u:
        v103 = v15[1];
        goto LABEL_92;
      case 8u:
        v189 = v15[1];

        v190 = v15[3];

        v191 = v15[5];

        v192 = v15[7];

        Note3p = type metadata accessor for Snippet.CreateNote3p();
LABEL_97:
        v113 = *(Note3p + 20);
        goto LABEL_98;
      case 9u:
        v82 = *v15;

        v83 = v15[4];
LABEL_92:

        break;
      case 0xAu:
        v177 = type metadata accessor for Snippet.SectionHeading();
        v178 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v249 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v249);
              (*(v250 + 8))(v0 + v9);
              break;
            case 1u:
              v251 = v15[1];

              v252 = v15[3];

              v253 = v15[5];

              if (*(v15 + 96) != 255)
              {
                v254 = v15[10];
                v255 = v15[11];
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v201 = v15[1];

              break;
            default:
              break;
          }
        }

        v180 = type metadata accessor for Snippet.SearchResult3p();
        v181 = *(v15 + v180[5]);

        v182 = *(v15 + v180[6]);

        v113 = v180[8];
LABEL_98:
        v236 = v15 + v113;
        v237 = *(v15 + v113 + 8);

        v238 = *(type metadata accessor for Snippet.Interaction() + 20);
        v239 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v239);
        (*(v240 + 8))(v236 + v238);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t sub_268128148(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268128194(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2681281C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2683CD448();
  *a2 = v5;
  return result;
}

uint64_t sub_2681282AC()
{
  v0 = type metadata accessor for AppIntentNode(0);
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_268356630();
  sub_26812958C(v15, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
  {
    sub_2681295FC(v15);
    return 0;
  }

  else
  {
    sub_268129664(v13, v8);
    sub_2681296C8(v8, v6, type metadata accessor for AppIntentNode);
    sub_2683533F0();
    v16 = v17;
    sub_2683CD078();
    sub_2683CD058();
    sub_268129728(&qword_28024CE30, type metadata accessor for AppIntentNode);
    sub_2683CD5C8();

    sub_268129770(v6, type metadata accessor for AppIntentNode);
    sub_268129770(v8, type metadata accessor for AppIntentNode);
    sub_2681295FC(v15);
  }

  return v16;
}

id sub_2681284E0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotebookNLv3Intent(0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v33 - v9;
  if (a1)
  {
    sub_2683B3C5C(v33 - v9);
  }

  else
  {
    sub_2681296C8(v2, v33 - v9, type metadata accessor for NotebookNLv3Intent);
  }

  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  sub_268129728(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  v11 = v33[0];
  if (v33[1])
  {
    NoteNLv3IntentWrapper = type metadata accessor for CreateNoteNLv3IntentWrapper();
    v11 = sub_268129D44(v2 + *(NoteNLv3IntentWrapper + 24));
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v15 = sub_2681BABB8(v11, v14);
  v16 = sub_26812885C();
  v17 = sub_268128C3C();
  v18 = sub_268128E6C(v15, v16, v17);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v19 = sub_2683CF7E8();
  __swift_project_value_buffer(v19, qword_28027C958);
  v20 = v18;
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v23 = 136315138;
    v25 = v20;
    v26 = [v25 description];
    v27 = sub_2683CFA78();
    v29 = v28;

    v30 = sub_2681610A0(v27, v29, v33);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_2680EB000, v21, v22, "⚙️ [CreateNoteNLv3IntentWrapper] made intent: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D617A40](v24, -1, -1);
    MEMORY[0x26D617A40](v23, -1, -1);
  }

  v31 = sub_26821AD1C();
  sub_268129770(v10, type metadata accessor for NotebookNLv3Intent);
  return v31;
}

id sub_26812885C()
{
  v1 = v0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_268129728(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  if (v20[1])
  {
    NoteNLv3IntentWrapper = type metadata accessor for CreateNoteNLv3IntentWrapper();
    sub_268129D44(v0 + *(NoteNLv3IntentWrapper + 24));

    sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
    return sub_2681807A0();
  }

  if (qword_28024CB90 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (LOBYTE(v20[0]) == 11)
  {
    goto LABEL_9;
  }

  if (sub_268355F28(v20[0]) == 1936287860 && v7 == 0xE400000000000000)
  {
LABEL_24:

    goto LABEL_25;
  }

  v9 = sub_2683D0598();

  if ((v9 & 1) == 0)
  {
LABEL_9:
    if (qword_28024CB88 != -1)
    {
      swift_once();
    }

    sub_2683CD5C8();
    if (LOBYTE(v20[0]) == 35)
    {
      return 0;
    }

    if (sub_268355BF8(v20[0]) != 6647407 || v4 != 0xE300000000000000)
    {
      v6 = sub_2683D0598();

      if ((v6 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  v10 = type metadata accessor for CreateNoteNLv3IntentWrapper();
  __swift_project_boxed_opaque_existential_1((v1 + *(v10 + 20)), *(v1 + *(v10 + 20) + 24));
  sub_26816EF9C();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    if (qword_28024C8D8 != -1)
    {
      swift_once();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C940);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_2681610A0(v13, v14, v20);
      _os_log_impl(&dword_2680EB000, v16, v17, "[CreateNoteNLv3IntentWrapper] Content is empty and intent contains reference, SRR resolved content to: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D617A40](v19, -1, -1);
      MEMORY[0x26D617A40](v18, -1, -1);
    }

    sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
    return sub_2681807A0();
  }

  return 0;
}

id sub_268128C3C()
{
  if (qword_28024CBE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_268129728(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  if (v7)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    NoteNLv3IntentWrapper = type metadata accessor for CreateNoteNLv3IntentWrapper();
    sub_268129D44(v0 + *(NoteNLv3IntentWrapper + 24));

    return sub_26835E5F8();
  }

  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v6 != 7)
  {
    if (sub_268355614(v6) == 0x7265646C6F66 && v3 == 0xE600000000000000)
    {
    }

    else
    {
      v5 = sub_2683D0598();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if (qword_28024CC20 != -1)
    {
      swift_once();
    }

    sub_2683CD5C8();
  }

  return 0;
}

id sub_268128E6C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:a1 content:a2 groupName:a3];

  return v6;
}

uint64_t sub_268128EDC(uint64_t a1)
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

uint64_t sub_268128F30()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_268128F58@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_6_23();
  *a1 = result;
  return result;
}

uint64_t sub_268128F8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268128FBC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268128FC4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2(a1);
  result = sub_2682EFD40(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_268128FEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26812901C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_26812902C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268129060(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268129060(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_268129084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2681290B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2681290B8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2681290F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268129128(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2681291A4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2681291D8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2681291F4@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_268129220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268128EDC(a1);
  *a2 = result;
  return result;
}

void *sub_268129248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CreateNoteNLv3IntentWrapper()
{
  result = qword_28024CD90;
  if (!qword_28024CD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_268129344()
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_2681293E0();
    if (v2 <= 0x3F)
    {
      result = sub_2683CB668();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2681293E0()
{
  result = qword_28024CDA0;
  if (!qword_28024CDA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024CDA0);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_268129504(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26812958C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681295FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268129664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681296C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268129728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268129770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_268129960(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_2(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_2681299E4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_268129B00;

  return (v9)(0, a1, a2);
}

uint64_t sub_268129B00(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void *sub_268129C00()
{
  v0 = sub_2683CECC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CC0E8();
  (*(v1 + 104))(v4, *MEMORY[0x277D61C80], v0);
  sub_2683CECB8();
  (*(v1 + 8))(v4, v0);
  v6 = sub_2683CFA68();

  [v5 setInputOrigin_];

  return v5;
}

uint64_t sub_268129D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  OUTLINED_FUNCTION_0_0();
  if (sub_2683CFB58() < 2 || (sub_2683CFB88(), sub_2683CFC08(), v6 = sub_2683CFA18(), , (v6 & 1) != 0))
  {
  }

  else
  {

    v20 = sub_2681E1D08(1);
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v10 = sub_2683CB668();
    (*(*(v10 - 8) + 16))(v5, a1, v10);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    sub_268129F40();
    v11 = sub_2683CFFD8();
    v13 = v12;
    sub_268129F94(v5);

    v14 = sub_2681E1D8C(1uLL);
    v19[0] = v11;
    v19[1] = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    sub_268129FFC();

    sub_2683CFB98();
  }

  return OUTLINED_FUNCTION_0_0();
}

unint64_t sub_268129F40()
{
  result = qword_28024D1F8;
  if (!qword_28024D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D1F8);
  }

  return result;
}

uint64_t sub_268129F94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268129FFC()
{
  result = qword_28024D200;
  if (!qword_28024D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D200);
  }

  return result;
}

BOOL sub_26812A050(uint64_t a1, unint64_t a2)
{
  v4 = sub_2683CAEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2683CAE78();
  sub_2683CAE88();
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_26812A1AC();
    v8 = sub_2683CFFE8();
    v10 = v9;
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_0_0();
    v13(v12);

    v14 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    return v14 != 0;
  }

  else
  {
    v16 = *(v5 + 8);
    v17 = OUTLINED_FUNCTION_0_0();
    v18(v17);
    return 0;
  }
}

unint64_t sub_26812A1AC()
{
  result = qword_28024E810;
  if (!qword_28024E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E810);
  }

  return result;
}

uint64_t sub_26812A20C(char a1)
{
  switch(a1)
  {
    case 6:
      v1 = &unk_28024D210;
      v2 = 0x277CD3A98;
      return sub_268129504(0, v1, v2);
    case 13:
      v1 = &unk_28024D208;
      v2 = 0x277CD3B40;
      return sub_268129504(0, v1, v2);
    case 10:
      v1 = &unk_28024D218;
      v2 = 0x277CD3BB0;
      return sub_268129504(0, v1, v2);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for Common.DateTimeRange.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26812A330(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26812A40C(unsigned __int8 a1)
{
  sub_2683D0698();
  MEMORY[0x26D617190](a1);
  return sub_2683D06D8();
}

uint64_t sub_26812A45C()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

unint64_t sub_26812A4A4()
{
  result = qword_28024D220;
  if (!qword_28024D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D220);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26812A518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26812A558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for StringLocalizer()
{
  result = qword_28024D228;
  if (!qword_28024D228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26812A630()
{
  result = sub_2683CB668();
  if (v1 <= 0x3F)
  {
    result = sub_26812A6B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26812A6B4()
{
  result = qword_28024D238;
  if (!qword_28024D238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D238);
  }

  return result;
}

unint64_t SiriNotebookApp.bundleId.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t SiriNotebookApp.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

unint64_t sub_26812A7E0()
{
  result = qword_28024D240;
  if (!qword_28024D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriNotebookApp(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriNotebookApp(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26812A998(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_2683CF258();
  if (v1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v1)
  {
    v5 = "reminderListType";
  }

  else
  {
    v5 = "reateNote";
  }

  if (v3)
  {
    if (v2 == v4 && v3 == (v5 | 0x8000000000000000))
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2683D0598();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t type metadata accessor for CreateNoteCATsSimple()
{
  result = qword_28024D248;
  if (!qword_28024D248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26812AAD0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26812AB60()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  *(v4 + 16) = xmmword_2683D1EC0;
  *(v4 + 32) = 0x746E65746E6F63;
  *(v4 + 40) = 0xE700000000000000;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(32);

  return v14(v13);
}

uint64_t sub_26812ACC8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_10();

    return v15(v14);
  }
}

uint64_t sub_26812ADF8()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26812AE88()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  *(v4 + 16) = xmmword_2683D1EC0;
  *(v4 + 32) = 0x6D614E70756F7267;
  *(v4 + 40) = 0xE900000000000065;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(34);

  return v14(v13);
}

uint64_t sub_26812AFF4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26812B084()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  *(v4 + 16) = xmmword_2683D1EC0;
  *(v4 + 32) = 0x656C746974;
  *(v4 + 40) = 0xE500000000000000;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(30);

  return v14(v13);
}

uint64_t sub_26812B1E8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_10();

    return v15(v14);
  }
}

uint64_t sub_26812B318()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_26812B380(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B394()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(37);

  return v6(v5);
}

uint64_t sub_26812B488()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_26812B5B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B5C4()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(39);

  return v6(v5);
}

uint64_t sub_26812B6B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B6CC()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(35);

  return v6(v5);
}

uint64_t sub_26812B7C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_26812B8E8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_26812B948(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B964()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_2683D1ED0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (v1)
  {
    v3 = sub_2683CF138();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x80000002683FD0D0;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 1702129518;
  *(v2 + 136) = 0xE400000000000000;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v15 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  v11[1] = sub_26812BB1C;
  v13 = *(v0 + 32);

  return v15(0xD000000000000027, 0x80000002683FD0F0, v2);
}

uint64_t sub_26812BB1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_26812BC44()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_26812BCA4()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000022, 0x80000002683FD0A0, v2);
}

uint64_t sub_26812BD54()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000024, 0x80000002683FD070, v2);
}

uint64_t sub_26812BE04()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812BEB4;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000020, 0x80000002683FD040, v2);
}

uint64_t sub_26812BEB4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_26812BFA8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_26812BFF8(v3, v4);
}

uint64_t sub_26812BFF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = OUTLINED_FUNCTION_23(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_26812C2A8(a1, &v20 - v17, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v18;
}

uint64_t sub_26812C170(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_26812C270()
{
  v0 = sub_2683CF1A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_26812C2A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26812C310(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

__n128 *OUTLINED_FUNCTION_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_12@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_allocObject();
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook12CommonErrorsO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26812C600(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_26812C640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26812C688(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_26812C6B8()
{
  result = qword_28024D270;
  if (!qword_28024D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D270);
  }

  return result;
}

uint64_t sub_26812C70C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v3;
  v4 = *(v0 + 16);
  v9 = *v0;
  v10 = v4;
  v11 = *(v0 + 32);
  sub_26812CA1C(v0, v8);
  v5 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  return sub_2683CF9D8();
}

uint64_t sub_26812C7CC(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  switch(*(a1 + 32))
  {
    case 1:
      if (a2[2].i8[0] == 1)
      {
        goto LABEL_17;
      }

      return 0;
    case 2:
      if (a2[2].i8[0] == 2)
      {
        goto LABEL_17;
      }

      return 0;
    case 3:
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

LABEL_17:
      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {
        goto LABEL_21;
      }

      return 1;
    case 4:
      if (a2[2].i8[0] == 4)
      {
        v14 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a2[2].i8[0])
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      v10 = v4 == a2->i64[0] && v5 == a2->i64[1];
      if (v10 || (v11 = sub_2683D0598(), result = 0, (v11 & 1) != 0))
      {
        if (v6 == v8 && v7 == v9)
        {
          return 1;
        }

        else
        {
LABEL_21:

          return sub_2683D0598();
        }
      }

      return result;
  }
}

uint64_t sub_26812C908(uint64_t a1)
{
  v2 = sub_26812C9C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26812C944(uint64_t a1)
{
  v2 = sub_26812C9C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26812C98C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_26812C70C();
}

unint64_t sub_26812C9C8()
{
  result = qword_28024D278;
  if (!qword_28024D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D278);
  }

  return result;
}

uint64_t sub_26812CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v262 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D280, &qword_2683D20F8);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v273 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D288, &qword_2683D2100);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v272 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D290, &qword_2683D2108);
  OUTLINED_FUNCTION_23(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v271 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D298, &qword_2683D2110);
  OUTLINED_FUNCTION_23(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A0, &qword_2683D2118);
  OUTLINED_FUNCTION_23(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A8, &qword_2683D2120);
  OUTLINED_FUNCTION_23(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  v284 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B0, &qword_2683D2128);
  OUTLINED_FUNCTION_23(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  v283 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B8, &qword_2683D2130);
  OUTLINED_FUNCTION_23(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_0();
  v282 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C0, &qword_2683D2138);
  OUTLINED_FUNCTION_23(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_0();
  v281 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C8, &qword_2683D2140);
  OUTLINED_FUNCTION_23(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_0();
  v280 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D0, &qword_2683D2148);
  OUTLINED_FUNCTION_23(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_5_0();
  v279 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D8, &qword_2683D2150);
  OUTLINED_FUNCTION_23(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_0();
  v278 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E0, &qword_2683D2158);
  OUTLINED_FUNCTION_23(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  OUTLINED_FUNCTION_23(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F0, &qword_2683D2160);
  OUTLINED_FUNCTION_23(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F8, &qword_2683D2168);
  OUTLINED_FUNCTION_23(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D300, &qword_2683D2170);
  OUTLINED_FUNCTION_23(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D308, &qword_2683D2178);
  OUTLINED_FUNCTION_23(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D310, &qword_2683D2180);
  OUTLINED_FUNCTION_23(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D318, &qword_2683D2188);
  OUTLINED_FUNCTION_23(v99);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v103);
  v290 = sub_2683CD1F8();
  v104 = *(v290 - 8);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_2_1();
  v266 = v106;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v107);
  v109 = v256 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D320, &qword_2683D2190);
  OUTLINED_FUNCTION_23(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D328, &qword_2683D2198);
  v115 = OUTLINED_FUNCTION_23(v114);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_2_1();
  v274 = v118;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v119);
  v121 = v256 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D330, &qword_2683D21A0);
  v123 = OUTLINED_FUNCTION_23(v122);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_2_1();
  v276 = v126;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v127);
  v268 = v256 - v128;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v129);
  v131 = v256 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D338, &qword_2683D21A8);
  v133 = OUTLINED_FUNCTION_23(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_2_1();
  v275 = v136;
  OUTLINED_FUNCTION_8_0();
  v138 = MEMORY[0x28223BE20](v137);
  v140 = v256 - v139;
  MEMORY[0x28223BE20](v138);
  v142 = v256 - v141;
  v143 = sub_2683CE658();
  v287 = v142;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v143);
  sub_2683CEA48();
  v277 = v131;
  OUTLINED_FUNCTION_4_0();
  v267 = v147;
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v147);
  sub_2683CE528();
  v286 = v121;
  OUTLINED_FUNCTION_4_0();
  v258 = v151;
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
  v285 = v2;
  if (sub_2683CD6C8())
  {
    sub_2683CDC08();
    v156 = v155;

    if (v156)
    {
      sub_2683CE648();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      sub_2683CE638();
      v161 = v287;
      sub_26812D9E0(v287, &qword_28024D338, &qword_2683D21A8);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v143);
      sub_26812DA84(v140, v161, &qword_28024D338, &qword_2683D21A8);
    }
  }

  if (!sub_2683CD6C8())
  {
    goto LABEL_29;
  }

  v165 = sub_2683CD508();

  if (!v165)
  {
    goto LABEL_29;
  }

  v256[1] = a2;
  v167 = 0;
  v168 = *(v165 + 16);
  v288 = v104 + 16;
  v289 = v168;
  v264 = (v104 + 32);
  v265 = MEMORY[0x277D84F90];
  v169 = (v104 + 8);
  v170 = v290;
  while (v289 != v167)
  {
    if (v167 >= *(v165 + 16))
    {
      __break(1u);
      return result;
    }

    v171 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v172 = *(v104 + 72);
    (*(v104 + 16))(v109, v165 + v171 + v172 * v167, v170);
    v174 = sub_2683CD1E8();
    v175 = v173;
    if (qword_28024C950 == -1)
    {
      if (!v173)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (v174 == qword_28027CAA8 && v175 == unk_28027CAB0)
      {
      }

      else
      {
        v177 = sub_2683D0598();

        if ((v177 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v170 = v290;
      v257 = *v264;
      v257(v266, v109, v290);
      v178 = v265;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v178;
      v291 = v178;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2683905A8(0, *(v178 + 16) + 1, 1);
        v170 = v290;
        v180 = v291;
      }

      v182 = *(v180 + 16);
      v181 = *(v180 + 24);
      if (v182 >= v181 >> 1)
      {
        sub_2683905A8(v181 > 1, v182 + 1, 1);
        v170 = v290;
        v180 = v291;
      }

      ++v167;
      *(v180 + 16) = v182 + 1;
      v265 = v180;
      result = (v257)(v180 + v171 + v182 * v172, v266, v170);
    }

    else
    {
      swift_once();
      if (v175)
      {
        goto LABEL_11;
      }

LABEL_16:
      v170 = v290;
      result = (*v169)(v109, v290);
      ++v167;
    }
  }

  if (v265)
  {
    v183 = v263;
    sub_2682B2AA8(v265);

    v184 = v290;
    if (__swift_getEnumTagSinglePayload(v183, 1, v290) == 1)
    {
      sub_26812D9E0(v183, &qword_28024D318, &qword_2683D2188);
    }

    else
    {
      sub_2683CD1D8();
      (*v169)(v183, v184);
      v185 = sub_2683CE798();
      OUTLINED_FUNCTION_0_2(v259, v186, v187, v185);
      sub_2683CE788();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
      OUTLINED_FUNCTION_9_0();
      sub_2683CE778();
      sub_2683CE7A8();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
      sub_2683CE518();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
      v200 = v261;
      sub_26812DA38(v262, v261, &qword_28024D2E8, &qword_2683D9190);
      sub_2682D9D88(v200, v260);
      v201 = v274;
      sub_2683CE508();
      v202 = v286;
      sub_26812D9E0(v286, &qword_28024D328, &qword_2683D2198);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v203, v204, v205, v258);
      sub_26812DA84(v201, v202, &qword_28024D328, &qword_2683D2198);
    }
  }

LABEL_29:
  sub_2683CE8D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v209);
  sub_26812DA38(v286, v274, &qword_28024D328, &qword_2683D2198);
  v210 = v268;
  sub_2683CEA38();
  v211 = v277;
  v212 = OUTLINED_FUNCTION_9_0();
  sub_26812D9E0(v212, v213, &qword_2683D21A0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v267);
  sub_26812DA84(v210, v211, &qword_28024D330, &qword_2683D21A0);
  v217 = sub_2683CEA78();
  OUTLINED_FUNCTION_0_2(v278, v218, v219, v217);
  v220 = sub_2683CEA88();
  OUTLINED_FUNCTION_0_2(v279, v221, v222, v220);
  v223 = sub_2683CEAB8();
  OUTLINED_FUNCTION_0_2(v280, v224, v225, v223);
  v226 = sub_2683CEA58();
  OUTLINED_FUNCTION_0_2(v281, v227, v228, v226);
  v229 = sub_2683CEA28();
  OUTLINED_FUNCTION_0_2(v282, v230, v231, v229);
  sub_2683CEAC8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v232, v233, v234, v235);
  sub_26812DA38(v211, v276, &qword_28024D330, &qword_2683D21A0);
  v236 = sub_2683CEC08();
  OUTLINED_FUNCTION_0_2(v284, v237, v238, v236);
  v239 = sub_2683CEB88();
  OUTLINED_FUNCTION_0_2(v269, v240, v241, v239);
  v242 = sub_2683CE708();
  OUTLINED_FUNCTION_0_2(v270, v243, v244, v242);
  v245 = sub_2683CE6D8();
  OUTLINED_FUNCTION_0_2(v271, v246, v247, v245);
  sub_2683CE7C8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v248, v249, v250, v251);
  sub_26812DA38(v287, v275, &qword_28024D338, &qword_2683D21A8);
  if (sub_2683CD6C8())
  {
    sub_2683CDC08();
  }

  sub_2683CEA68();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);
  sub_2683CEBC8();
  sub_26812D9E0(v286, &qword_28024D328, &qword_2683D2198);
  sub_26812D9E0(v277, &qword_28024D330, &qword_2683D21A0);
  return sub_26812D9E0(v287, &qword_28024D338, &qword_2683D21A8);
}

uint64_t sub_26812D9E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26812DA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return v4;
}

uint64_t sub_26812DA84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_26812DB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D358, &qword_2683D21B0);
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v55 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v60 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v53 - v26;
  v28 = MEMORY[0x277D84F90];
  if (a1)
  {
    v54 = a2;
    KeyPath = swift_getKeyPath();
    v30 = *(a1 + 16);
    if (v30)
    {
      v53 = v14;
      v57 = a3;
      v58 = v13;
      v59 = v7;
      v64 = v28;
      v63 = KeyPath;
      sub_2683D0228();
      v32 = *(v23 + 16);
      v31 = v23 + 16;
      v62 = v32;
      v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v34 = *(v31 + 56);
      do
      {
        v62(v27, v33, v20);
        swift_getAtKeyPath();
        (*(v31 - 8))(v27, v20);
        sub_2683D01F8();
        v35 = *(v64 + 2);
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
        v33 += v34;
        --v30;
      }

      while (v30);

      v36 = v64;
      v13 = v58;
      v7 = v59;
      a3 = v57;
      v28 = MEMORY[0x277D84F90];
      v14 = v53;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    a2 = v54;
  }

  else
  {
    v36 = 0;
  }

  v37 = v60;
  if (!a2)
  {
    v44 = 0;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v38 = swift_getKeyPath();
  v39 = *(a2 + 16);
  if (!v39)
  {

    v44 = MEMORY[0x277D84F90];
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_21:
    v51 = 0;
    goto LABEL_23;
  }

  v59 = v7;
  v60 = v36;
  v57 = a3;
  v58 = v13;
  v64 = v28;
  v63 = v38;
  sub_2683D0228();
  v62 = *(v55 + 16);
  v40 = a2 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v41 = *(v55 + 72);
  v42 = (v55 + 8);
  do
  {
    v62(v37, v40, v14);
    swift_getAtKeyPath();
    (*v42)(v37, v14);
    sub_2683D01F8();
    v43 = *(v64 + 2);
    sub_2683D0238();
    sub_2683D0248();
    sub_2683D0208();
    v40 += v41;
    --v39;
  }

  while (v39);

  v44 = v64;
  v13 = v58;
  v7 = v59;
  a3 = v57;
  v36 = v60;
  v28 = MEMORY[0x277D84F90];
  if (!v57)
  {
    goto LABEL_21;
  }

LABEL_16:
  swift_getKeyPath();
  v45 = *(a3 + 16);
  if (v45)
  {
    v59 = v44;
    v60 = v36;
    v64 = v28;
    sub_2683D0228();
    v46 = *(v56 + 16);
    v47 = a3 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v62 = *(v56 + 72);
    v63 = v46;
    v48 = (v56 + 8);
    do
    {
      v63(v13, v47, v7);
      swift_getAtKeyPath();
      (*v48)(v13, v7);
      sub_2683D01F8();
      v49 = v13;
      v50 = *(v64 + 2);
      sub_2683D0238();
      v13 = v49;
      sub_2683D0248();
      sub_2683D0208();
      v47 += v62;
      --v45;
    }

    while (v45);

    v51 = v64;
    v44 = v59;
    v36 = v60;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

LABEL_23:
  sub_26812E0F0(v36, v44, v51);
}

uint64_t sub_26812E0A8@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_2683CC238();
  *a3 = v5;
  return result;
}

uint64_t sub_26812E0F0(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v6 = sub_2683CC818();
  v7 = [v6 code];

  v8 = sub_2683CC818();
  v9 = [v8 userActivity];

  v10 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:v7 userActivity:v9];
  if (a1)
  {
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    a1 = sub_2683CFC98();
  }

  [v10 setNotes_];

  if (a2)
  {
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    a2 = sub_2683CFC98();
  }

  [v10 setTasks_];

  if (a3)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    a3 = sub_2683CFC98();
  }

  [v10 setTaskLists_];

  sub_2683CC828();
  sub_2683CC848();
  sub_268129504(0, &qword_28024D340, 0x277CD4058);
  sub_268129504(0, &qword_28024D348, 0x277CD4060);

  return sub_2683CC838();
}

uint64_t sub_26812E314(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v71 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = &v66 - v27;
  if (!a1)
  {
    return 0;
  }

  v69 = v26;
  v70 = v1;
  v29 = sub_2683CEF58();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = a1;
  sub_2683CEF48();
  sub_2683ABC94(v32);
  v68 = v8;
  if (v33)
  {
    sub_2683CFB38();

    v34 = sub_2683CF168();
    v35 = 0;
  }

  else
  {
    v34 = sub_2683CF168();
    v35 = 1;
  }

  v37 = 1;
  __swift_storeEnumTagSinglePayload(v28, v35, 1, v34);
  sub_2683CEF38();

  sub_26812E924(v28);
  sub_2683ABCA0(v32);
  v67 = v11;
  if (v38)
  {
    sub_2683CFB38();

    v37 = 0;
  }

  sub_2683CF168();
  v39 = 1;
  OUTLINED_FUNCTION_0_4(v25, v37);
  sub_2683CEEE8();

  sub_26812E924(v25);
  sub_2683ABCAC(v32);
  if (v40)
  {
    sub_2683CFB38();

    v39 = 0;
  }

  v41 = v68;
  v42 = 1;
  OUTLINED_FUNCTION_0_4(v22, v39);
  sub_2683CEEF8();

  sub_26812E924(v22);
  sub_26812E98C(v32, &selRef_fullThoroughfare);
  if (v43)
  {
    sub_2683CFB38();

    v42 = 0;
  }

  v44 = v67;
  v45 = 1;
  OUTLINED_FUNCTION_0_4(v19, v42);
  sub_2683CEF08();

  sub_26812E924(v19);
  sub_2683ABCB8(v32);
  if (v46)
  {
    sub_2683CFB38();

    v45 = 0;
  }

  v47 = 1;
  OUTLINED_FUNCTION_0_4(v16, v45);
  sub_2683CEEC8();

  sub_26812E924(v16);
  sub_26812E98C(v32, &selRef_subAdministrativeArea);
  v49 = v71;
  if (v48)
  {
    sub_2683CFB38();

    v47 = 0;
  }

  v50 = 1;
  OUTLINED_FUNCTION_0_4(v49, v47);
  sub_2683CEF28();

  sub_26812E924(v49);
  sub_26812E98C(v32, &selRef_administrativeArea);
  if (v51)
  {
    sub_2683CFB38();

    v50 = 0;
  }

  v52 = 1;
  OUTLINED_FUNCTION_0_4(v44, v50);
  sub_2683CEF18();

  sub_26812E924(v44);
  sub_2683ABCC4(v32);
  if (v53)
  {
    sub_2683CFB38();

    v52 = 0;
  }

  v54 = v69;
  v55 = 1;
  OUTLINED_FUNCTION_0_4(v41, v52);
  sub_2683CEED8();

  sub_26812E924(v41);
  sub_26812E98C(v32, &selRef_country);
  if (v56)
  {
    sub_2683CFB38();

    v55 = 0;
  }

  OUTLINED_FUNCTION_0_4(v54, v55);
  sub_2683CEEB8();

  sub_26812E924(v54);
  v57 = sub_2683CF068();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_2683CF058();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2683D2250;
  v61 = sub_2683CEEA8();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  sub_2683CEE98();

  sub_2683CEE78();

  v64 = sub_2683CEE88();

  *(v60 + 32) = v64;
  sub_2683CF048();

  v36 = sub_2683CF078();

  return v36;
}

uint64_t sub_26812E924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26812E98C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2683CFA78();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper()
{
  result = qword_28024D370;
  if (!qword_28024D370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26812EA78()
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D388);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26812EB34(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26812EB88(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x614465754479622ELL;
      break;
    case 2:
      result = 0x6669646F4D79622ELL;
      break;
    case 3:
      result = 0x746165724379622ELL;
      break;
    default:
      sub_2683D0178();

      v3 = sub_2683D0568();
      MEMORY[0x26D616690](v3);

      MEMORY[0x26D616690](41, 0xE100000000000000);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_26812ECD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_45(v17))
    {
      goto LABEL_19;
    }

    v18 = OUTLINED_FUNCTION_49();
    v19 = OUTLINED_FUNCTION_53();
    v36 = v19;
    *v18 = 136315138;
    v20 = sub_26812EB88(a1);
    v22 = sub_2681610A0(v20, v21, &v36);

    *(v18 + 4) = v22;
    goto LABEL_18;
  }

  if (a1 - 2 < 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v4, qword_28027C958);
    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v6))
    {
      v7 = OUTLINED_FUNCTION_49();
      v8 = OUTLINED_FUNCTION_53();
      v36 = v8;
      *v7 = 136315138;
      v9 = sub_26812EB88(a1);
      v11 = sub_2681610A0(v9, v10, &v36);

      *(v7 + 4) = v11;
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (qword_28024C968 != -1)
    {
      swift_once();
    }

    v14 = qword_28027CAE0;
    goto LABEL_22;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v26 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v26, qword_28027C958);
  v16 = sub_2683CF7C8();
  v27 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_45(v27))
  {
    v28 = OUTLINED_FUNCTION_49();
    v19 = OUTLINED_FUNCTION_53();
    v36 = v19;
    *v28 = 136315138;
    v29 = sub_26812EB88(a1);
    v31 = sub_2681610A0(v29, v30, &v36);

    *(v28 + 4) = v31;
LABEL_18:
    OUTLINED_FUNCTION_65(&dword_2680EB000, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

LABEL_19:

  if (qword_28024C970 != -1)
  {
    swift_once();
  }

  v14 = qword_28027CAF8;
LABEL_22:
  v32 = sub_2683CE918();
  __swift_project_value_buffer(v32, v14);
  OUTLINED_FUNCTION_23_0(v32);
  v34 = *(v33 + 16);

  return v34(a2);
}

uint64_t sub_26812F010()
{
  v0 = type metadata accessor for AppIntentNode(0);
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = OUTLINED_FUNCTION_44();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  sub_268356630();
  sub_2681340E8(v19, v17, &qword_28024CE28, &qword_2683D1870);
  if (__swift_getEnumTagSinglePayload(v17, 1, v0) == 1)
  {
    sub_26812D9E0(v19, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_268134148(v17, v8, type metadata accessor for AppIntentNode);
    sub_2681341A8(v8, v6, type metadata accessor for AppIntentNode);
    sub_2683533F0();
    v20 = v21;
    sub_2683CD078();
    sub_2683CD058();
    sub_268134208(&qword_28024CE30, type metadata accessor for AppIntentNode);
    sub_2683CD5C8();

    sub_268134250(v6, type metadata accessor for AppIntentNode);
    sub_268134250(v8, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v19, &qword_28024CE28, &qword_2683D1870);
  }

  return v20;
}

uint64_t sub_26812F288()
{
  if (qword_28024CB68 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_2_2();
  sub_268134208(v0, v1);
  sub_2683CD5C8();
  if (v6 == 12)
  {
    v2 = 0;
  }

  else if (sub_2683551E8(v6) == 1684104562 && v3 == 0xE400000000000000)
  {

    v2 = 1;
  }

  else
  {
    v2 = sub_2683D0598();
  }

  return v2 & 1;
}

BOOL sub_26812F39C()
{
  if (qword_28024CC18 != -1)
  {
    OUTLINED_FUNCTION_35();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_2_2();
  sub_268134208(v0, v1);
  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  v2 = v6;
  if (v6 == 7)
  {
    if (qword_28024CB78 != -1)
    {
      OUTLINED_FUNCTION_34();
    }

    OUTLINED_FUNCTION_61();
    sub_2683CD5C8();
    v2 = v5;
    if (v5 == 7)
    {
      if (qword_28024CB70 != -1)
      {
        OUTLINED_FUNCTION_33();
      }

      OUTLINED_FUNCTION_61();
      sub_2683CD5C8();
      v2 = v4;
    }
  }

  return sub_268320A10(v2) == 1;
}

uint64_t sub_26812F4C8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 1512) = v0;
  *(v1 + 1879) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  *(v1 + 1560) = swift_task_alloc();
  v6 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  OUTLINED_FUNCTION_3_1(v6);
  *(v1 + 1608) = v7;
  *(v1 + 1656) = *(v8 + 64);
  *(v1 + 1664) = OUTLINED_FUNCTION_55();
  *(v1 + 1672) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v9);
  *(v1 + 1680) = v10;
  *(v1 + 1688) = *(v11 + 64);
  *(v1 + 1696) = OUTLINED_FUNCTION_55();
  *(v1 + 1704) = swift_task_alloc();
  *(v1 + 1712) = swift_task_alloc();
  v12 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 1720) = v12;
  OUTLINED_FUNCTION_3_1(v12);
  *(v1 + 1728) = v13;
  *(v1 + 1736) = *(v14 + 64);
  *(v1 + 1744) = OUTLINED_FUNCTION_55();
  *(v1 + 1752) = swift_task_alloc();
  *(v1 + 1760) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26812F694()
{
  if (*(v0 + 1879) == 1)
  {
    v1 = *(v0 + 1512);
    sub_2683B3C5C(*(v0 + 1760));
  }

  else
  {
    sub_2681341A8(*(v0 + 1512), *(v0 + 1760), type metadata accessor for NotebookNLv3Intent);
  }

  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1760);
  v3 = *(v0 + 1720);
  OUTLINED_FUNCTION_2_2();
  *(v0 + 1768) = sub_268134208(v4, v5);
  sub_2683CD5C8();
  if (*(v0 + 1344))
  {
    v51 = *(v0 + 1344);
    v6 = *(v0 + 1336);
  }

  else
  {
    if (qword_28024CC20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    if (!*(v0 + 1360))
    {
      if (qword_28024CBD0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30();
      sub_2683CD5C8();
      v50 = *(v0 + 1368);
      v51 = *(v0 + 1376);
      goto LABEL_13;
    }

    v51 = *(v0 + 1360);
    v6 = *(v0 + 1352);
  }

  v50 = v6;
LABEL_13:
  if (qword_28024CC18 != -1)
  {
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_30();
  sub_2683CD5C8();
  v7 = *(v0 + 1876);
  if (v7 == 7)
  {
    if (qword_28024CB78 != -1)
    {
      OUTLINED_FUNCTION_34();
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    v7 = *(v0 + 1877);
    if (v7 == 7)
    {
      if (qword_28024CB70 != -1)
      {
        OUTLINED_FUNCTION_33();
      }

      OUTLINED_FUNCTION_30();
      sub_2683CD5C8();
      LOBYTE(v7) = *(v0 + 1878);
    }
  }

  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30();
  sub_2683CD5C8();
  v8 = *(v0 + 1392);
  v49 = v7;
  if (v8)
  {
    v9 = *(v0 + 1384);
  }

  else
  {
    if (qword_28024CBC0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    v9 = *(v0 + 1400);
    v8 = *(v0 + 1408);
  }

  *(v0 + 1784) = v8;
  *(v0 + 1776) = v9;
  v10 = *(v0 + 1760);
  v11 = *(v0 + 1704);
  sub_268352A2C();
  v12 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    if (qword_28024CBA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    v13 = *(v0 + 1712);
    v14 = *(v0 + 1704);
    sub_2683CD5C8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v12) != 1)
    {
      sub_26812D9E0(*(v0 + 1704), &qword_28024D398, &qword_2683D22F0);
    }
  }

  else
  {
    v15 = *(v0 + 1712);
    v16 = *(v0 + 1704);
    OUTLINED_FUNCTION_23_0(v12);
    (*(v17 + 32))(v15);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v12);
  }

  v18 = *(v0 + 1752);
  v48 = *(v0 + 1736);
  v46 = *(v0 + 1744);
  v47 = *(v0 + 1728);
  v19 = *(v0 + 1712);
  v20 = *(v0 + 1696);
  v42 = *(v0 + 1688);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1672);
  v44 = *(v0 + 1760);
  v45 = *(v0 + 1664);
  v23 = *(v0 + 1656);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1512);
  v43 = v25;
  sub_2681341A8(v44, v18, type metadata accessor for NotebookNLv3Intent);
  v26 = sub_26831E6D4(v18);
  *(v0 + 1792) = v26;
  sub_2681341A8(v25, v22, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_2681340E8(v19, v20, &qword_28024D398, &qword_2683D22F0);
  v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = (v27 + v23 + *(v21 + 80)) & ~*(v21 + 80);
  v29 = swift_allocObject();
  *(v0 + 1800) = v29;
  sub_268134148(v22, v29 + v27, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_268133BC0(v20, v29 + v28);
  *(v29 + ((v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A0, &unk_2683D8F70);
  swift_asyncLet_begin();
  sub_2681341A8(v43, v45, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_2681341A8(v44, v46, type metadata accessor for NotebookNLv3Intent);
  v30 = (v27 + v23 + *(v47 + 80)) & ~*(v47 + 80);
  v31 = swift_allocObject();
  *(v0 + 1808) = v31;
  sub_268134148(v45, v31 + v27, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_268134148(v46, v31 + v30, type metadata accessor for NotebookNLv3Intent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A8, &qword_2683D2320);
  swift_asyncLet_begin();
  sub_268133FA8();
  *(v0 + 1816) = sub_2681BABB8(v50, v51);
  *(v0 + 1824) = sub_268320A10(v49);
  if (qword_28024CBF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30();
  *(v0 + 1832) = qword_28027CD38;
  v32 = sub_2683CD5D8();
  v33 = *(v32 + 16);
  v34 = (v32 + 32);
  v35 = 2;
  v36 = (v32 + 32);
  while (v33)
  {
    switch(*v36)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        v35 = 2;
        goto LABEL_93;
      case 6:
        OUTLINED_FUNCTION_58();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        OUTLINED_FUNCTION_57();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_56();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_61();
    v37 = sub_2683D0598();

    ++v36;
    --v33;
    if (v37)
    {
      goto LABEL_85;
    }
  }

  v38 = *(v32 + 16);
  v35 = 1;
  while (2)
  {
    if (v38)
    {
      switch(*v34)
      {
        case 1:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_7_0();
          goto LABEL_82;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_82;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_82;
        case 5:
          v35 = 1;
LABEL_93:

          goto LABEL_85;
        case 6:
          OUTLINED_FUNCTION_58();
          goto LABEL_82;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_82;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_82;
        case 9:
          OUTLINED_FUNCTION_14_0();
          goto LABEL_82;
        case 0xA:
          OUTLINED_FUNCTION_57();
          goto LABEL_82;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_82;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_82;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_82;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_82;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_82;
        case 0x10:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_13_0();
          goto LABEL_82;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_82;
        case 0x12:
          OUTLINED_FUNCTION_56();
          goto LABEL_82;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_82;
        default:
LABEL_82:
          v39 = sub_2683D0598();

          ++v34;
          --v38;
          if (v39)
          {
            goto LABEL_85;
          }

          continue;
      }
    }

    break;
  }

  v35 = 0;
LABEL_85:
  *(v0 + 1840) = v35;

  v40 = OUTLINED_FUNCTION_47();

  return MEMORY[0x282200930](v40);
}

uint64_t sub_2681300B8()
{
  OUTLINED_FUNCTION_14();
  v1[231] = v0;
  if (v0)
  {
    v2 = v1[227];
    v3 = v1[223];

    v4 = OUTLINED_FUNCTION_47();

    return MEMORY[0x282200920](v4, v5, v6, v1 + 178);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268130160, 0, 0);
  }
}

uint64_t sub_268130160()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1464);
  *(v0 + 1856) = v3;
  v4 = v3;
  sub_268352FE8();
  v5 = type metadata accessor for NotebookLocationIntentNode(0);
  *(v0 + 1872) = __swift_getEnumTagSinglePayload(v2, 1, v5);
  sub_26812D9E0(v2, &qword_28024D390, &qword_2683D22E8);

  return MEMORY[0x282200928](v0 + 16, v0 + 1416, sub_268130210, v0 + 1520);
}

uint64_t sub_268130224()
{
  v57 = v0;
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1720);
  v52 = *(v0 + 1416);
  v5 = v52;
  v6 = sub_2683CD5D8();
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  v54 = 6;
  v9 = (v6 + 32);
  while (v7)
  {
    switch(*v9)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 5:
        OUTLINED_FUNCTION_21_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        v49 = 6;
        goto LABEL_104;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v10 = sub_2683D0598();

    ++v9;
    --v7;
    if (v10)
    {
      goto LABEL_45;
    }
  }

  v11 = *(v6 + 16);
  while (v11)
  {
    switch(*v8)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        goto LABEL_34;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        v49 = 4;
LABEL_104:
        v54 = v49;

        goto LABEL_45;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
LABEL_34:
        OUTLINED_FUNCTION_52();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v12 = sub_2683D0598();

    ++v8;
    --v11;
    if (v12)
    {
      v54 = 4;
      goto LABEL_45;
    }
  }

  v54 = 0;
LABEL_45:
  v13 = *(v0 + 1832);
  v14 = *(v0 + 1768);
  v15 = *(v0 + 1760);
  v16 = *(v0 + 1720);

  v17 = sub_2683CD5D8();
  v18 = *(v17 + 16);
  v19 = (v17 + 32);
  v53 = 2;
  v20 = (v17 + 32);
  while (v18)
  {
    switch(*v20)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 5:
        OUTLINED_FUNCTION_21_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        v50 = 2;
        goto LABEL_102;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_52();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v21 = sub_2683D0598();

    ++v20;
    --v18;
    if (v21)
    {
      goto LABEL_91;
    }
  }

  v22 = *(v17 + 16);
  while (2)
  {
    if (v22)
    {
      switch(*v19)
      {
        case 1:
          OUTLINED_FUNCTION_7_0();
          goto LABEL_88;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_88;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_88;
        case 4:
          OUTLINED_FUNCTION_15_0();
          goto LABEL_88;
        case 5:
          OUTLINED_FUNCTION_21_0();
          goto LABEL_88;
        case 6:
          OUTLINED_FUNCTION_16_0();
          goto LABEL_88;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_88;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_88;
        case 9:
          v50 = 1;
LABEL_102:
          v53 = v50;

          break;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_88;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_88;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_88;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_88;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_88;
        case 0x10:
          OUTLINED_FUNCTION_13_0();
          goto LABEL_88;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_88;
        case 0x12:
          OUTLINED_FUNCTION_52();
          goto LABEL_88;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_88;
        default:
LABEL_88:
          v23 = sub_2683D0598();

          ++v19;
          --v22;
          if ((v23 & 1) == 0)
          {
            continue;
          }

          v53 = 1;
          break;
      }
    }

    else
    {
      v53 = 0;
    }

    break;
  }

LABEL_91:
  v24 = *(v0 + 1872);
  v25 = *(v0 + 1856);
  v26 = *(v0 + 1840);
  v27 = *(v0 + 1824);
  v28 = *(v0 + 1816);
  v29 = *(v0 + 1792);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1776);

  objc_allocWithZone(MEMORY[0x277CD4058]);

  v32 = OUTLINED_FUNCTION_44();
  v34 = sub_268133AC0(v32, v33, v30, v27, v26, v25, v24 != 1, v52, v29, v54, v53, 0, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v35 = sub_2683CF7E8();
  __swift_project_value_buffer(v35, qword_28027C958);
  v36 = v34;
  v37 = sub_2683CF7C8();
  v38 = sub_2683CFE98();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_49();
    v55 = OUTLINED_FUNCTION_53();
    v56 = v55;
    *v39 = 136315138;
    v40 = v36;
    v41 = [v40 description];
    v42 = sub_2683CFA78();
    v44 = v43;

    v45 = sub_2681610A0(v42, v44, &v56);

    *(v39 + 4) = v45;

    _os_log_impl(&dword_2680EB000, v37, v38, "⚙️ [SearchForNotebookItemsNLv3IntentWrapper] made intent: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  *(v0 + 1864) = sub_26821AD1C();
  v46 = OUTLINED_FUNCTION_47();

  return MEMORY[0x282200920](v46, v47, v48, v0 + 1568);
}

uint64_t sub_268130AA0()
{
  OUTLINED_FUNCTION_24_0();
  sub_26812D9E0(v1, &qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_37();
  v3 = *(v0 + 1864);

  return v2(v3);
}

uint64_t sub_268130BDC()
{
  OUTLINED_FUNCTION_24_0();
  sub_26812D9E0(v1, &qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 1848);

  return v2();
}

uint64_t sub_268130CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2683CE918();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268130DC8, 0, 0);
}

uint64_t sub_268130DC8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  sub_268134034(v2 + *(v4 + 20), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2681340E8(v3, v1, &qword_28024D398, &qword_2683D22F0);
  v5 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  v7 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[14], &qword_28024D398, &qword_2683D22F0);
    v8 = 0;
  }

  else
  {
    v8 = sub_2683CD2E8();
    OUTLINED_FUNCTION_23_0(v5);
    (*(v9 + 8))(v7, v5);
  }

  v0[15] = v8;
  v10 = v0[8];
  sub_26812ECD4(v0[10], v0[13]);
  v11 = OUTLINED_FUNCTION_6(&dword_2683D2350);
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_268130F4C;
  v12 = v0[13];

  return v14(v8, v12, 0);
}

uint64_t sub_268130F4C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  v4 = v3[16];
  v5 = v3[15];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v12 + 136) = v11;

  (*(v7 + 8))(v6, v8);
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2681310AC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  **(v0 + 56) = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268131128()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  *(v1 + 88) = v6;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3D8, &qword_2683D2358);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 56) = v8;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v1 + 64) = v11;
  if (v5)
  {

    v12 = swift_task_alloc();
    *(v1 + 72) = v12;
    *v12 = v1;
    v12[1] = sub_268131294;

    return sub_2681F58CC(v11, v5, v3);
  }

  else
  {

    OUTLINED_FUNCTION_37();

    return v14(0);
  }
}

uint64_t sub_268131294()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_268131510;
  }

  else
  {
    v9 = sub_268131394;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268131394()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = sub_268133084(*(v0 + 64), *(v0 + 32));
  if (v1 == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v4, qword_28027C958);
    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2680EB000, v5, v6, "[NotebookDateTimeResolving] Using manually-adjusted date components for witching hour", v7, 2u);
      OUTLINED_FUNCTION_25_0();
    }

    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);

    sub_268360AF0();
    v13 = v12;

    (*(v9 + 8))(v8, v10);
    v3 = v13;
  }

  else
  {
    v14 = *(v0 + 32);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  v15 = *(v0 + 64);

  OUTLINED_FUNCTION_37();

  return v16(v3);
}

uint64_t sub_268131510()
{
  v24 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[10];
  v2 = v0[4];
  v3 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v3, qword_28027C958);

  v4 = v1;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v11 = sub_2683CFAD8();
    v13 = sub_2681610A0(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[3] = v8;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498]);
    v14 = sub_2683D0568();
    v16 = sub_2681610A0(v14, v15, &v23);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[NotebookDateTimeResolving] makeRecommendation threw error: %s, returning %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  v17 = v0[10];
  v18 = v0[4];
  v19 = sub_2683CEB48();

  v20 = v0[8];

  OUTLINED_FUNCTION_37();

  return v21(v19);
}

uint64_t sub_268131768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268131878, 0, 0);
}

uint64_t sub_268131878()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  sub_268134034(v3 + *(v4 + 24), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268352FE8();
  v5 = type metadata accessor for NotebookLocationIntentNode(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    v6 = v0[10];
    v7 = &qword_28024D390;
    v8 = &qword_2683D22E8;
LABEL_5:
    sub_26812D9E0(v6, v7, v8);
    v12 = v0[12];
    v13 = sub_2683CEBD8();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_7;
  }

  v9 = v0[10];
  v10 = v0[11];
  sub_2683531D0();
  sub_268134250(v9, type metadata accessor for NotebookLocationIntentNode);
  v11 = sub_2683CD4A8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v6 = v0[11];
    v7 = &unk_28024D3B0;
    v8 = &unk_2683D2328;
    goto LABEL_5;
  }

  v15 = v0[11];
  v14 = v0[12];
  sub_2683CD488();
  OUTLINED_FUNCTION_23_0(v11);
  (*(v16 + 8))(v15, v11);
LABEL_7:
  v17 = OUTLINED_FUNCTION_6(&dword_2683D2338);
  v0[13] = v17;
  *v17 = v0;
  v17[1] = sub_268131A48;
  v18 = v0[12];

  return v20(v18);
}

uint64_t sub_268131A48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v10 + 112) = v9;
  *(v10 + 120) = v0;

  sub_26812D9E0(v6, &qword_28024D3B8, &qword_2683D2330);
  if (v0)
  {
    v11 = sub_268131C68;
  }

  else
  {
    v11 = sub_268131B78;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_268131B78()
{
  OUTLINED_FUNCTION_7();
  v1 = sub_2683ABE58(*(v0 + 112));
  v2 = *(v0 + 112);
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    sub_2683ABE60(0, (v2 & 0xC000000000000001) == 0, v2);
    if (v3)
    {
      v4 = MEMORY[0x26D616C90](0, *(v0 + 112));
      v11 = *(v0 + 112);
    }

    else
    {
      v4 = *(*(v0 + 112) + 32);
    }
  }

  else
  {
    v5 = *(v0 + 112);

    v4 = 0;
  }

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  **(v0 + 56) = v4;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_268131C68()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_40();
  v5 = v0[15];

  return v4();
}

uint64_t sub_268131CEC()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C0, &qword_2683D2340);
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_55();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v10 = sub_2683CEBD8();
  v1[10] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_55();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268131EA0()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_2681340E8(v0[2], v1, &qword_28024D3B8, &qword_2683D2330);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_26812D9E0(v0[9], &qword_28024D3B8, &qword_2683D2330);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_36();
    }

    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v16 = v0[16];
    v15 = v0[17];
    v18 = v0[14];
    v17 = v0[15];
    v20 = v0[12];
    v19 = v0[13];
    v36 = v0[9];
    v37 = v0[8];
    v38 = v0[7];
    v39 = v0[6];

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  v23 = v0[21];
  v24 = v0[10];
  v25 = v0[11];
  v26 = v0[9];
  v27 = *(v25 + 32);
  v0[22] = v27;
  v0[23] = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v23, v26, v24);
  v28 = swift_task_alloc();
  v0[24] = v28;
  *v28 = v0;
  v28[1] = sub_268132114;
  v29 = v0[21];
  v30 = v0[8];
  v31 = v0[3];
  OUTLINED_FUNCTION_64();

  return sub_26835FF4C(v32, v33);
}

uint64_t sub_268132114()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  if (v0)
  {
    v9 = sub_268132DD8;
  }

  else
  {
    v9 = sub_268132214;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268132214()
{
  v261 = v0;
  v1 = v0;
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v4 + 16);
  v5(v2, v0[8], v3);
  v7 = *(v4 + 88);
  v6 = v4 + 88;
  v8 = v7(v2, v3);
  v258 = v0;
  if (v8 == *MEMORY[0x277D56080])
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = v1[20];
    v12 = OUTLINED_FUNCTION_51();
    v13(v12);
    v10(v11, v6, v3);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = v1[19];
    v15 = v1[20];
    v16 = v1[10];
    v17 = v1[11];
    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);
    v19 = *(v17 + 16);
    v20 = OUTLINED_FUNCTION_32();
    v19(v20);
    v21 = sub_2683CF7C8();
    v22 = sub_2683CFE98();
    v23 = OUTLINED_FUNCTION_43(v22);
    v31 = v1[19];
    if (v23)
    {
      v32 = v1[14];
      v33 = v1[11];
      v34 = OUTLINED_FUNCTION_39(v23, v24, v25, v26, v27, v28, v29, v30, v240, v242, v244, v246, v248, v251, v254, v1);
      v35 = OUTLINED_FUNCTION_53();
      v260 = v35;
      v36 = OUTLINED_FUNCTION_31(4.8149e-34);
      v19(v36);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v37 = OUTLINED_FUNCTION_41();
      v39 = v38(v37);
      v47 = OUTLINED_FUNCTION_54(v39, v40, v41, v42, v43, v44, v45, v46);

      *(v34 + 4) = v47;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v97 = v1[10];
      v98 = v1[11];

      v99 = OUTLINED_FUNCTION_46();
      v100(v99);
    }

    v101 = v1[22];
    v102 = v1[23];
    v103 = v1[20];
LABEL_20:
    v115 = v1[10];
    v116 = v1[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v117 = *(v116 + 72);
    v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_2683D1EC0;
    v101(v105 + v118, v103, v115);
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D56068])
  {
    v54 = v0[22];
    v53 = v0[23];
    v55 = v1[18];
    v56 = OUTLINED_FUNCTION_51();
    v57(v56);
    v54(v55, v6, v3);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v58 = v1[17];
    v59 = v1[18];
    v60 = v1[10];
    v61 = v1[11];
    v62 = sub_2683CF7E8();
    __swift_project_value_buffer(v62, qword_28027C958);
    v63 = *(v61 + 16);
    v64 = OUTLINED_FUNCTION_32();
    v63(v64);
    v65 = sub_2683CF7C8();
    v66 = sub_2683CFE98();
    v67 = OUTLINED_FUNCTION_43(v66);
    v75 = v1[17];
    if (v67)
    {
      v76 = v1[14];
      v77 = v1[11];
      v78 = OUTLINED_FUNCTION_39(v67, v68, v69, v70, v71, v72, v73, v74, v240, v242, v244, v246, v248, v251, v254, v1);
      v79 = OUTLINED_FUNCTION_53();
      v260 = v79;
      v80 = OUTLINED_FUNCTION_31(4.8149e-34);
      v63(v80);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v81 = OUTLINED_FUNCTION_41();
      v83 = v82(v81);
      v91 = OUTLINED_FUNCTION_54(v83, v84, v85, v86, v87, v88, v89, v90);

      *(v78 + 4) = v91;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v110 = v1[10];
      v111 = v1[11];

      v112 = OUTLINED_FUNCTION_46();
      v113(v112);
    }

    v101 = v1[22];
    v114 = v1[23];
    v103 = v1[18];
    goto LABEL_20;
  }

  if (v8 == *MEMORY[0x277D56070])
  {
    v104 = v0[7];
    (*(v0[5] + 96))(v104, v0[4]);
    v105 = *v104;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v106 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v106, qword_28027C958);

    v107 = sub_2683CF7C8();
    v108 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v108))
    {
      v109 = OUTLINED_FUNCTION_49();
      *v109 = 134217984;
      *(v109 + 4) = *(v105 + 16);

      _os_log_impl(&dword_2680EB000, v107, v108, "[NotebookLocationResolving] found %ld recommendations", v109, 0xCu);
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
    }
  }

  else if (v8 == *MEMORY[0x277D56078])
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v153 = v0[21];
    v154 = v0[16];
    v155 = v0[10];
    v156 = v0[11];
    v157 = sub_2683CF7E8();
    __swift_project_value_buffer(v157, qword_28027C958);
    v158 = *(v156 + 16);
    v159 = OUTLINED_FUNCTION_32();
    v158(v159);
    v160 = sub_2683CF7C8();
    v161 = sub_2683CFE78();
    v162 = OUTLINED_FUNCTION_43(v161);
    v170 = v0[16];
    if (v162)
    {
      v171 = v0[14];
      v172 = v0[11];
      v173 = OUTLINED_FUNCTION_39(v162, v163, v164, v165, v166, v167, v168, v169, v240, v242, v244, v246, v248, v251, v254, v1);
      v174 = OUTLINED_FUNCTION_53();
      v260 = v174;
      v175 = OUTLINED_FUNCTION_31(4.8149e-34);
      v158(v175);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v176 = v1;
      v1 = v258;
      v177 = (*(v172 + 8))(v170, v176);
      v185 = OUTLINED_FUNCTION_54(v177, v178, v179, v180, v181, v182, v183, v184);

      *(v173 + 4) = v185;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v186, v187, v188, v189, v190, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v174);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v219 = v0[10];
      v220 = v0[11];

      v221 = OUTLINED_FUNCTION_46();
      v222(v221);
    }

    v223 = v1[21];
    v224 = v1[10];
    v225 = v1[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v226 = *(v225 + 72);
    v227 = (*(v225 + 80) + 32) & ~*(v225 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_2683D1EC0;
    (v158)(v105 + v227, v223, v224);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v191 = v0[21];
    v192 = v0[15];
    v193 = v0[10];
    v194 = v0[11];
    v195 = v0[8];
    v196 = v0[6];
    v197 = v0[4];
    v198 = sub_2683CF7E8();
    __swift_project_value_buffer(v198, qword_28027C958);
    v5(v196, v195, v197);
    v199 = *(v194 + 16);
    v200 = OUTLINED_FUNCTION_32();
    v199(v200);
    v201 = sub_2683CF7C8();
    v202 = sub_2683CFE78();
    v203 = os_log_type_enabled(v201, v202);
    v204 = v0[15];
    if (v203)
    {
      v245 = v0[11];
      v241 = v0[14];
      v243 = v0[10];
      v250 = v202;
      v205 = v0[6];
      v206 = v0[5];
      v207 = v0[4];
      v208 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      *v208 = 136315394;
      sub_268134094(&qword_28024D3D0, &qword_28024D3C0, &qword_2683D2340);
      v209 = v199;
      v210 = sub_2683D0568();
      v212 = v211;
      v257 = *(v206 + 8);
      v257(v205, v207);
      v1 = v0;
      v213 = v210;
      v199 = v209;
      v214 = sub_2681610A0(v213, v212, &v260);

      *(v208 + 4) = v214;
      *(v208 + 12) = 2080;
      (v209)(v241, v204, v243);
      v215 = sub_2683CFAD8();
      v217 = v216;
      (*(v245 + 8))(v204, v243);
      v218 = sub_2681610A0(v215, v217, &v260);

      *(v208 + 14) = v218;
      _os_log_impl(&dword_2680EB000, v201, v250, "[NotebookDateTimeResolving] unhandled recommendation of %s, returning NotebookLocationIntentNode as is %s", v208, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v228 = v0[10];
      v229 = v0[11];
      v231 = v258[5];
      v230 = v258[6];
      v232 = v258[4];

      (*(v229 + 8))(v204, v228);
      v257 = *(v231 + 8);
      v257(v230, v232);
    }

    v233 = v1[21];
    v235 = v1[10];
    v234 = v1[11];
    v236 = v1[7];
    v237 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v238 = *(v234 + 72);
    v239 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_2683D1EC0;
    (v199)(v105 + v239, v233, v235);
    v257(v236, v237);
  }

LABEL_21:
  v260 = MEMORY[0x277D84F90];
  v119 = *(v105 + 16);
  if (v119)
  {
    v120 = v1[11];
    v121 = *(v120 + 16);
    v120 += 16;
    v122 = v105 + ((*(v120 + 64) + 32) & ~*(v120 + 64));
    v252 = *(v120 + 56);
    v255 = v121;
    v123 = (v120 - 8);
    v124 = MEMORY[0x277D84F90];
    do
    {
      v125 = v124;
      v127 = v1[12];
      v126 = v1[13];
      v128 = v1[10];
      v255(v126, v122, v128);
      v255(v127, v126, v128);
      sub_2683CEBA8();
      if (v129)
      {
        v130 = v1[12];
        sub_2683CEB98();
      }

      v131 = v1[12];
      v132 = v1[13];
      v133 = v1[10];
      v134 = sub_2683CEBB8();
      v135 = *v123;
      (*v123)(v131, v133);
      v136 = OUTLINED_FUNCTION_44();
      v137 = v135(v136);
      v124 = v125;
      if (v134)
      {
        MEMORY[0x26D616770](v137);
        if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v124 = v260;
      }

      v122 += v252;
      --v119;
      v1 = v258;
    }

    while (v119);
  }

  else
  {

    v124 = MEMORY[0x277D84F90];
  }

  v138 = v1[21];
  v139 = v1[10];
  v140 = v1[11];
  (*(v1[5] + 8))(v1[8], v1[4]);
  (*(v140 + 8))(v138, v139);
  v142 = v1[20];
  v141 = v1[21];
  v144 = v1[18];
  v143 = v1[19];
  v146 = v1[16];
  v145 = v1[17];
  v147 = v1;
  v148 = v1[15];
  v150 = v147[13];
  v149 = v147[14];
  v247 = v147[12];
  v249 = v147[9];
  v253 = v147[8];
  v256 = v147[7];
  v259 = v147[6];

  OUTLINED_FUNCTION_37();

  return v151(v124);
}

void sub_268132DD8()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[6];
  (*(v0[11] + 8))(v0[21], v0[10]);

  OUTLINED_FUNCTION_40();
  v9 = v0[25];
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_268132EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268132F90;

  return sub_26812F4C8();
}

uint64_t sub_268132F90()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_268133084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3D8, &qword_2683D2358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v65[-v10];
  v12 = *(v5 + 16);
  v12(&v65[-v10], a1, v4);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D56080])
  {
    (*(v5 + 96))(v11, v4);
    v14 = *v11;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69 = v14;
    v70 = v19;
    *v18 = 136315138;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498]);
    v20 = sub_2683D0568();
    v22 = sub_2681610A0(v20, v21, &v70);

    *(v18 + 4) = v22;
    v23 = "[NotebookDateTimeResolving] confidently resolved to %s";
LABEL_11:
    _os_log_impl(&dword_2680EB000, v16, v17, v23, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D617A40](v19, -1, -1);
    MEMORY[0x26D617A40](v18, -1, -1);
LABEL_12:

LABEL_13:
    v29 = sub_2683CEB48();

    return v29;
  }

  if (v13 == *MEMORY[0x277D56068])
  {
    (*(v5 + 96))(v11, v4);
    v24 = *v11;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v25 = sub_2683CF7E8();
    __swift_project_value_buffer(v25, qword_28027C958);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_12;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69 = v24;
    v70 = v19;
    *v18 = 136315138;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498]);
    v26 = sub_2683D0568();
    v28 = sub_2681610A0(v26, v27, &v70);

    *(v18 + 4) = v28;
    v23 = "[NotebookDateTimeResolving] unconfidently resolved to %s";
    goto LABEL_11;
  }

  if (v13 == *MEMORY[0x277D56070])
  {
    (*(v5 + 96))(v11, v4);
    v31 = *v11;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v32 = sub_2683CF7E8();
    __swift_project_value_buffer(v32, qword_28027C958);

    v33 = sub_2683CF7C8();
    v34 = sub_2683CFE78();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v70 = v36;
      *v35 = 134218242;
      *(v35 + 4) = sub_2683ABE58(v31);

      *(v35 + 12) = 2080;
      v37 = sub_2683ABE58(v31);
      if (v37)
      {
        sub_2683ABE60(0, (v31 & 0xC000000000000001) == 0, v31);
        if ((v31 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x26D616C90](0, v31);
        }

        else
        {
          v38 = *(v31 + 32);
        }
      }

      v69 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3F8, &qword_2683D2368);
      v39 = sub_2683CFAD8();
      v41 = sub_2681610A0(v39, v40, &v70);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_2680EB000, v33, v34, "[NotebookDateTimeResolving] found %ld recommendations, picking the first one of %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x26D617A40](v36, -1, -1);
      MEMORY[0x26D617A40](v35, -1, -1);
    }

    else
    {
    }

    if (sub_2683ABE58(v31))
    {
      sub_2683ABE60(0, (v31 & 0xC000000000000001) == 0, v31);
      if ((v31 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D616C90](0, v31);
      }

      else
      {
        v50 = *(v31 + 32);
      }

      goto LABEL_13;
    }

    return sub_2683CEB48();
  }

  if (v13 == *MEMORY[0x277D56078])
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v42 = sub_2683CF7E8();
    __swift_project_value_buffer(v42, qword_28027C958);

    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE78();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69 = a2;
      v70 = v46;
      *v45 = 136315138;
      sub_2683CEB78();
      sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498]);
      v47 = sub_2683D0568();
      v49 = sub_2681610A0(v47, v48, &v70);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2680EB000, v43, v44, "[NotebookDateTimeResolving] made no recommendation, returning DateTimeValue as is %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D617A40](v46, -1, -1);
      MEMORY[0x26D617A40](v45, -1, -1);
    }

    return sub_2683CEB48();
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v51 = sub_2683CF7E8();
  __swift_project_value_buffer(v51, qword_28027C958);
  v12(v9, a1, v4);

  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE78();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v70 = v68;
    *v54 = 136315394;
    sub_268134094(&qword_28024D3F0, &qword_28024D3D8, &qword_2683D2358);
    v67 = v52;
    v55 = sub_2683D0568();
    v57 = v56;
    v58 = *(v5 + 8);
    v66 = v53;
    v58(v9, v4);
    v59 = sub_2681610A0(v55, v57, &v70);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v69 = a2;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498]);
    v60 = sub_2683D0568();
    v62 = sub_2681610A0(v60, v61, &v70);

    *(v54 + 14) = v62;
    v63 = v67;
    _os_log_impl(&dword_2680EB000, v67, v66, "[NotebookDateTimeResolving] unhandled recommendation of %s, returning DateTimeValue as is %s", v54, 0x16u);
    v64 = v68;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v64, -1, -1);
    MEMORY[0x26D617A40](v54, -1, -1);
  }

  else
  {

    v58 = *(v5 + 8);
    v58(v9, v4);
  }

  v29 = sub_2683CEB48();
  v58(v11, v4);
  return v29;
}

id sub_268133AC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a3)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  if (a13)
  {
    v18 = sub_2683CFA68();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v21 initWithTitle:a1 content:v17 itemType:a4 status:a5 location:a6 locationSearchType:a7 dateTime:a8 dateSearchType:a9 temporalEventTriggerTypes:a10 taskPriority:a11 notebookItemIdentifier:v18];

  return v19;
}

uint64_t sub_268133BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268133C30()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v0 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_2681342AC;

  return sub_268130CCC(v4, v0 + v7, v0 + v12, v14);
}

uint64_t sub_268133D9C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_23(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_268133EC8;

  return sub_268131768(v4, v0 + v7, v0 + v12);
}

uint64_t sub_268133EC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

unint64_t sub_268133FA8()
{
  result = qword_28024CDB8;
  if (!qword_28024CDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024CDB8);
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

uint64_t sub_268134034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_23_0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_268134094(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2681340E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268134148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2681341A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268134208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268134250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_0()
{
  v1 = v0[226];
  v2 = v0[225];
  v3 = v0[220];
  v4 = v0[219];
  v5 = v0[218];
  v6 = v0[214];
  v7 = v0[213];
  v8 = v0[212];
  v9 = v0[209];
  v10 = v0[208];
  v11 = v0[195];
}

void OUTLINED_FUNCTION_25_0()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_268134250(v0, type metadata accessor for NotebookNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_once();
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x26D617A40);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a16 + 80);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_45(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = *(v0[5] + 96);
  return v0[7];
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_2681610A0(v8, v9, va);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_65(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_2681347D4(int *a1)
{
  v3 = sub_2683CF2D8();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_2683CE478();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v12 = (a1 + *a1);
  v9 = a1[1];
  v10 = swift_task_alloc();
  v1[14] = v10;
  *v10 = v1;
  v10[1] = sub_2681349A4;

  return v12();
}

uint64_t sub_2681349A4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_26();
  *v9 = v8;
  v4[15] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268134B20, 0, 0);
  }

  else
  {
    v11 = v4[12];
    v10 = v4[13];
    v13 = v4[10];
    v12 = v4[11];
    v14 = v4[7];

    v15 = v8[1];

    return v15(a1);
  }
}

uint64_t sub_268134B20()
{
  v62 = v0;
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    (*(v8 + 32))(v5, v6, v7);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = sub_2683CF7E8();
    __swift_project_value_buffer(v13, qword_28027C958);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE78();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 88);
    if (v17)
    {
      v60 = v16;
      v19 = *(v0 + 72);
      v20 = *(v0 + 80);
      v21 = *(v0 + 64);
      v22 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61[0] = v59;
      *v22 = 136446210;
      v14(v20, v18, v21);
      v23 = sub_2683CFAD8();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v21);
      v27 = sub_2681610A0(v23, v25, v61);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2680EB000, v15, v60, "got LocationInferenceError: %{public}s, pushing flow generated by LocationResolutionErrorFlowProvider", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v45 = *(v0 + 64);
      v46 = *(v0 + 72);

      v26 = *(v46 + 8);
      v26(v18, v45);
    }

    v47 = *(v0 + 96);
    v49 = *(v0 + 56);
    v48 = *(v0 + 64);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);
    sub_2683CCC48();
    sub_2683CF2C8();
    v44 = sub_2683CF2B8();
    (*(v51 + 8))(v49, v50);
    v26(v47, v48);
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v28 = *(v0 + 120);
    v29 = sub_2683CF7E8();
    __swift_project_value_buffer(v29, qword_28027C958);
    v30 = v28;
    v31 = sub_2683CF7C8();
    v32 = sub_2683CFE78();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 120);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61[0] = v35;
      *v34 = 136446210;
      *(v0 + 32) = v33;
      v36 = v33;
      v37 = sub_2683CFAD8();
      v39 = sub_2681610A0(v37, v38, v61);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2680EB000, v31, v32, "got error: %{public}s, pushing SimpleOutputFlow with generic error", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v40 = *(v0 + 120);
    sub_2683CC868();
    v41 = sub_2683CB948();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    *(v0 + 24) = sub_2683CB938();
    v44 = sub_2683CBF28();
  }

  v53 = *(v0 + 96);
  v52 = *(v0 + 104);
  v55 = *(v0 + 80);
  v54 = *(v0 + 88);
  v56 = *(v0 + 56);

  v57 = *(v0 + 8);

  return v57(v44);
}

uint64_t sub_268134FD8(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_2683CC598();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[16] = v6;
  v7 = *(MEMORY[0x277D5BCD0] + 4);
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_26813510C;

  return MEMORY[0x2821BAED8](v6);
}

uint64_t sub_26813510C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  *(v9 + 144) = v0;

  if (v0)
  {
    v10 = sub_2681353A8;
  }

  else
  {
    v10 = sub_268135218;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_268135218()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  sub_2683CCC48();
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2683CC0A8();
  v7 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = sub_2683CCC98();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC358();
  sub_26812C310(v0 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2681353A8()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_268135418()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[11] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC748();
  v1[14] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v1[17] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[18] = v14;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2681355AC()
{
  v37 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[8];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  if (v10)
  {
    log = v8;
    v15 = v0[15];
    v16 = v0[16];
    v32 = v0[14];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136315394;
    v33 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v15 + 8))(v16, v32);
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_2681610A0(v18, v20, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v11, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v33, "[SetTaskAttribute UnsupportedValue] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[19], v0[17]);

    v25(v12, v14);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[21] = v26;
  *v26 = v27;
  v26[1] = sub_26813587C;
  v28 = v0[13];
  v29 = v0[8];
  v30 = v0[9];

  return sub_268135BB0();
}

uint64_t sub_26813587C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268135978()
{
  v13 = *(v0 + 160);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2683CC0A8();
  v8 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_268135B20()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_40();
  v7 = v0[22];

  return v6();
}

uint64_t sub_268135BB0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_2683CB668() - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC748();
  v1[7] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268135CB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  if (sub_268381174() == 7)
  {
    sub_26812C6B8();
    v8 = swift_allocError();
    *v9 = v5;
    v9[1] = v7;
    OUTLINED_FUNCTION_16_1(v8, v9);
    v10 = v0[9];
    v12 = v0[5];
    v11 = v0[6];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  v15 = swift_allocObject();
  v0[10] = v15;
  *(v15 + 16) = 1;
  v16 = v0[3];
  v17 = *(v0[4] + 40);
  v18 = sub_2683CC9C8();
  v19 = [v18 taskTitle];

  if (v19)
  {
    v20 = v0[6];
    sub_2683CFEA8();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v0[6];
  v23 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v22, v21, 1, v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[14] = v24;
  *v24 = v25;
  v24[1] = sub_268136560;
  v26 = v0[6];
  v27 = v0[2];
  OUTLINED_FUNCTION_12_0();

  return sub_268184EF4();
}

uint64_t sub_268136460()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136560()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 120) = v0;

  sub_26812C310(v6, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136688()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136788()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (!v0)
  {
    v9 = *(v3 + 152);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136888()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (!v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136988()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];

  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_268136A00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 208) = v0;

  if (!v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136B00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (!v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136C00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v9 = *(v3 + 232);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268136D00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268136DFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268136EF8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268136FF4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[36];
  v2 = v0[10];

  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_268137078()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681370F8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268137170()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[16];
  v2 = v0[10];

  v3 = v0[18];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681371F4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[19];
  v2 = v0[10];

  v3 = v0[21];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_268137278()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[22];
  v2 = v0[10];

  v3 = v0[24];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681372FC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[22];
  v2 = v0[10];

  v3 = v0[26];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_268137380()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[22];
  v2 = v0[10];

  v3 = v0[28];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_268137404()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[29];
  v2 = v0[10];

  v3 = v0[31];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_268137488()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  v2 = *(v0 + 264);
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268137500()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  v2 = *(v0 + 280);
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268137578()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[36];
  v2 = v0[10];

  v3 = v0[38];
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681375FC()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681376A4()
{
  v35 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = sub_268381174();
  if (v8 == 7)
  {
    v9 = v0[5];
    sub_26812C6B8();
    v10 = swift_allocError();
    *v11 = v5;
    v11[1] = v7;
    OUTLINED_FUNCTION_16_1(v10, v11);

    OUTLINED_FUNCTION_40();

    return v12();
  }

  else
  {
    v14 = v8;
    v15 = v0[2];

    v16 = sub_2683CC9C8();
    v17 = sub_2681DF3CC(v14);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);
    v19 = v17;
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = sub_268382138(v14);
      v25 = sub_2681610A0(v23, v24, v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = v19;
      v27 = [v26 description];
      v28 = sub_2683CFA78();
      v30 = v29;

      v31 = sub_2681610A0(v28, v30, v34);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_2680EB000, v20, v21, "[SetTaskAttribute UnsupportedValue] Unsupported Parameter: %s. New Intent: %s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v32 = v0[5];

    v33 = v0[1];

    return v33(v19);
  }
}

uint64_t sub_2681379A8()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  sub_2683CC738();
  (*(v1 + 8))(v4, v0);
  v5 = sub_268381174();
  v6 = v5;
  if (v5 == 6)
  {
    return 0;
  }

  v8 = v5;
  v13[0] = "SiriNotebook";
  v13[1] = 12;
  v14 = 2;
  v15 = "NLv4";
  v16 = 4;
  v17 = 2;
  v9 = sub_268344DA4();
  if (v6 == 7 || (v9 & 1) == 0)
  {
    return 1;
  }

  if (sub_268382138(v8) == 0x6154746567726174 && v10 == 0xEA00000000006B73)
  {
  }

  else
  {
    v12 = sub_2683D0598();

    if ((v12 & 1) == 0)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_268137B6C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_2683CF138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
    v4 = sub_2683CC9B8();
    v3 = sub_26818F730(v4);
    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;

    sub_268137FB0(v5);
  }

  sub_268137FC0(v1);
  return v3;
}

uint64_t sub_268137C24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268135418();
}

uint64_t sub_268137CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2681375FC();
}

uint64_t sub_268137D60()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_268137E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t sub_268137F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_268137F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268137FB0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_268137FC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 32) + 40);

  return sub_268137B6C(v0);
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t Snippet.NoteDetail.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippet.NoteDetail.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.NoteDetail.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_268138108(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268138190()
{
  sub_2683D0698();
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268138204()
{
  sub_2683D0698();
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268138248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268138108(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268138290@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_7_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2681382BC(uint64_t a1)
{
  v2 = sub_268138460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681382F8(uint64_t a1)
{
  v2 = sub_268138460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.NoteDetail.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D418, &qword_2683D2478);
  v5 = OUTLINED_FUNCTION_0_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268138460();
  sub_2683D0718();
  sub_2683D0518();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_268138460()
{
  result = qword_28024D420;
  if (!qword_28024D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D420);
  }

  return result;
}

uint64_t Snippet.NoteDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D428, &qword_2683D2480);
  v7 = OUTLINED_FUNCTION_0_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268138460();
  sub_2683D06F8();
  if (!v2)
  {
    v15 = sub_2683D0478();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static Snippet.noteDetail1p(noteId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Snippet();
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_2681386A0()
{
  result = qword_28024D430;
  if (!qword_28024D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D430);
  }

  return result;
}

unint64_t sub_2681386F8()
{
  result = qword_28024D438;
  if (!qword_28024D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D438);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268138758(uint64_t a1, int a2)
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

uint64_t sub_268138798(uint64_t result, int a2, int a3)
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

uint64_t _s14descr2878F8F29V10NoteDetailV10CodingKeysOwet(unsigned int *a1, int a2)
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

_BYTE *_s14descr2878F8F29V10NoteDetailV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681388E8()
{
  result = qword_28024D440;
  if (!qword_28024D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D440);
  }

  return result;
}

unint64_t sub_268138940()
{
  result = qword_28024D448;
  if (!qword_28024D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D448);
  }

  return result;
}

unint64_t sub_268138998()
{
  result = qword_28024D450;
  if (!qword_28024D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D450);
  }

  return result;
}

void sub_268138A04()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v1, v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v27)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    v5 = OUTLINED_FUNCTION_12_1(v4, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v5, v6, &qword_28024D458, &unk_2683D2C60);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v8))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_11_2(v9, v10, v11, v12, v13, v14, v15, v16, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0();
      v17 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v17, v18, v19, v20, v21, v22, v23, v24, v130, v139, v146, v153, v160, v167, v174, v181);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v25, v26, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v202, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v2, v3, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v27)
  {
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5], v201[6], v201[7], v201[8], v202[0], v202[1], v202[2], v202[3], v202[4], v202[5], v203);
    OUTLINED_FUNCTION_33_0(v71, v72, &qword_28024D460, &qword_2683D5050, v73, v74, v75, v76, v133, v142, v149, v156, v163, v170, v177, v184, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_26_0();
    if (v77 || (v86 = OUTLINED_FUNCTION_2_3(v78, v79, v80, v81, v82, v83, v84, v85, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197), OUTLINED_FUNCTION_31_0(v86, v87, v88, v89, v90, v91, v92, v93, v134), sub_26813A1A0(&v195), v0 == 1))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v94 = sub_2683CF7E8();
      v95 = OUTLINED_FUNCTION_12_1(v94, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v95, v96, &qword_28024D458, &unk_2683D2C60, v97, v98, v99, v100, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      v101 = sub_2683CF7C8();
      v102 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v102))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v0 = 136315138;
        OUTLINED_FUNCTION_6_2(v103, v104, v105, v106, v107, v108, v109, v110, v135, v143, v150, v157, v164, v171, v178, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_16_2();
        v111 = OUTLINED_FUNCTION_21_1();
        v119 = OUTLINED_FUNCTION_4_2(v111, v112, v113, v114, v115, v116, v117, v118, v136, v144, v151, v158, v165, v172, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_15_2(v119, v120, v121, v122, v123, v124, v125, v126, v137);
        OUTLINED_FUNCTION_18_1();
        *(v0 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v127, v128, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  v37 = OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v37, v38, &qword_28024D458, &unk_2683D2C60, v39, v40, v41, v42, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
  v43 = sub_2683CF7C8();
  v44 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v44))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v0 = 136315138;
    OUTLINED_FUNCTION_6_2(v45, v46, v47, v48, v49, v50, v51, v52, v131, v140, v147, v154, v161, v168, v175, v182, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_16_2();
    v53 = OUTLINED_FUNCTION_21_1();
    v61 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v132, v141, v148, v155, v162, v169, v176, v183, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_13_2(v61, v62, v63, v64, v65, v66, v67, v68);
    OUTLINED_FUNCTION_18_1();
    *(v0 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v69, v70, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_268138DC8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v1, v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v27)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_35_0(v2, v3, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (v27)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v36 = sub_2683CF7E8();
    v37 = OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
    OUTLINED_FUNCTION_22_1(v37, v38, &qword_28024D458, &unk_2683D2C60, v39, v40, v41, v42, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v44))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_23_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_6_2(v45, v46, v47, v48, v49, v50, v51, v52, v131, v140, v147, v154, v161, v168, v175, v182, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      v53 = OUTLINED_FUNCTION_21_1();
      v61 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v132, v141, v148, v155, v162, v169, v176, v183, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_13_2(v61, v62, v63, v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v69, v70, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC298();
  }

  else
  {
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5], v201[6], v201[7], v201[8], v202[0], v202[1], v202[2], v202[3], v202[4], v202[5], v203);
    OUTLINED_FUNCTION_33_0(v71, v72, &qword_28024D460, &qword_2683D5050, v73, v74, v75, v76, v133, v142, v149, v156, v163, v170, v177, v184, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_26_0();
    if (!v77)
    {
      v86 = OUTLINED_FUNCTION_2_3(v78, v79, v80, v81, v82, v83, v84, v85, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      OUTLINED_FUNCTION_31_0(v86, v87, v88, v89, v90, v91, v92, v93, v134);
      sub_26813A1A0(&v195);
      if (v0)
      {
        sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
LABEL_3:
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v4 = sub_2683CF7E8();
        v5 = OUTLINED_FUNCTION_12_1(v4, qword_28027C958);
        OUTLINED_FUNCTION_34_0(v5, v6, &qword_28024D458, &unk_2683D2C60);
        v7 = sub_2683CF7C8();
        v8 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_8_2(v8))
        {
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_24_1();
          *v0 = 136315138;
          OUTLINED_FUNCTION_11_2(v9, v10, v11, v12, v13, v14, v15, v16, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_32_0();
          v17 = OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_14_2(v17, v18, v19, v20, v21, v22, v23, v24, v130, v139, v146, v153, v160, v167, v174, v181);
          OUTLINED_FUNCTION_18_1();
          *(v0 + 4) = &qword_28024D458;
          OUTLINED_FUNCTION_5_2(&dword_2680EB000, v25, v26, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
          OUTLINED_FUNCTION_3_2();
          OUTLINED_FUNCTION_36();
        }

        else
        {

          sub_26812C310(v202, &qword_28024D458, &unk_2683D2C60);
        }

        sub_2683CC2B8();
        goto LABEL_26;
      }
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v94 = sub_2683CF7E8();
    v95 = OUTLINED_FUNCTION_12_1(v94, qword_28027C958);
    OUTLINED_FUNCTION_22_1(v95, v96, &qword_28024D458, &unk_2683D2C60, v97, v98, v99, v100, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    v101 = sub_2683CF7C8();
    v102 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v102))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_25_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_6_2(v103, v104, v105, v106, v107, v108, v109, v110, v135, v143, v150, v157, v164, v171, v178, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      v111 = OUTLINED_FUNCTION_21_1();
      v119 = OUTLINED_FUNCTION_4_2(v111, v112, v113, v114, v115, v116, v117, v118, v136, v144, v151, v158, v165, v172, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_15_2(v119, v120, v121, v122, v123, v124, v125, v126, v137);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v127, v128, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2A8();
    sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
  }

LABEL_26:
  sub_26812C310(v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_268139188()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v1, v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v27)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    v5 = OUTLINED_FUNCTION_12_1(v4, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v5, v6, &qword_28024D458, &unk_2683D2C60);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v8))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_11_2(v9, v10, v11, v12, v13, v14, v15, v16, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0();
      v17 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v17, v18, v19, v20, v21, v22, v23, v24, v130, v139, v146, v153, v160, v167, v174, v181);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v25, v26, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v202, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v2, v3, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v27)
  {
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5], v201[6], v201[7], v201[8], v202[0], v202[1], v202[2], v202[3], v202[4], v202[5], v203);
    OUTLINED_FUNCTION_33_0(v71, v72, &qword_28024D460, &qword_2683D5050, v73, v74, v75, v76, v133, v142, v149, v156, v163, v170, v177, v184, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_26_0();
    if (v77 || (v86 = OUTLINED_FUNCTION_2_3(v78, v79, v80, v81, v82, v83, v84, v85, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197), OUTLINED_FUNCTION_31_0(v86, v87, v88, v89, v90, v91, v92, v93, v134), sub_26813A1A0(&v195), v0 == 4))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v94 = sub_2683CF7E8();
      v95 = OUTLINED_FUNCTION_12_1(v94, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v95, v96, &qword_28024D458, &unk_2683D2C60, v97, v98, v99, v100, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      v101 = sub_2683CF7C8();
      v102 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v102))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v0 = 136315138;
        OUTLINED_FUNCTION_6_2(v103, v104, v105, v106, v107, v108, v109, v110, v135, v143, v150, v157, v164, v171, v178, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_16_2();
        v111 = OUTLINED_FUNCTION_21_1();
        v119 = OUTLINED_FUNCTION_4_2(v111, v112, v113, v114, v115, v116, v117, v118, v136, v144, v151, v158, v165, v172, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_15_2(v119, v120, v121, v122, v123, v124, v125, v126, v137);
        OUTLINED_FUNCTION_18_1();
        *(v0 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v127, v128, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  v37 = OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v37, v38, &qword_28024D458, &unk_2683D2C60, v39, v40, v41, v42, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
  v43 = sub_2683CF7C8();
  v44 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v44))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v0 = 136315138;
    OUTLINED_FUNCTION_6_2(v45, v46, v47, v48, v49, v50, v51, v52, v131, v140, v147, v154, v161, v168, v175, v182, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_16_2();
    v53 = OUTLINED_FUNCTION_21_1();
    v61 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v132, v141, v148, v155, v162, v169, v176, v183, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_13_2(v61, v62, v63, v64, v65, v66, v67, v68);
    OUTLINED_FUNCTION_18_1();
    *(v0 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v69, v70, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_26813954C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v1, v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v27)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    v5 = OUTLINED_FUNCTION_12_1(v4, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v5, v6, &qword_28024D458, &unk_2683D2C60);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v8))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_11_2(v9, v10, v11, v12, v13, v14, v15, v16, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0();
      v17 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v17, v18, v19, v20, v21, v22, v23, v24, v130, v139, v146, v153, v160, v167, v174, v181);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v25, v26, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v202, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v2, v3, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v27)
  {
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5], v201[6], v201[7], v201[8], v202[0], v202[1], v202[2], v202[3], v202[4], v202[5], v203);
    OUTLINED_FUNCTION_33_0(v71, v72, &qword_28024D460, &qword_2683D5050, v73, v74, v75, v76, v133, v142, v149, v156, v163, v170, v177, v184, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_26_0();
    if (v77 || (v86 = OUTLINED_FUNCTION_2_3(v78, v79, v80, v81, v82, v83, v84, v85, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197), OUTLINED_FUNCTION_31_0(v86, v87, v88, v89, v90, v91, v92, v93, v134), sub_26813A1A0(&v195), v0 == 2))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v94 = sub_2683CF7E8();
      v95 = OUTLINED_FUNCTION_12_1(v94, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v95, v96, &qword_28024D458, &unk_2683D2C60, v97, v98, v99, v100, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      v101 = sub_2683CF7C8();
      v102 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v102))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v0 = 136315138;
        OUTLINED_FUNCTION_6_2(v103, v104, v105, v106, v107, v108, v109, v110, v135, v143, v150, v157, v164, v171, v178, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_16_2();
        v111 = OUTLINED_FUNCTION_21_1();
        v119 = OUTLINED_FUNCTION_4_2(v111, v112, v113, v114, v115, v116, v117, v118, v136, v144, v151, v158, v165, v172, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_15_2(v119, v120, v121, v122, v123, v124, v125, v126, v137);
        OUTLINED_FUNCTION_18_1();
        *(v0 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v127, v128, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  v37 = OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v37, v38, &qword_28024D458, &unk_2683D2C60, v39, v40, v41, v42, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
  v43 = sub_2683CF7C8();
  v44 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v44))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v0 = 136315138;
    OUTLINED_FUNCTION_6_2(v45, v46, v47, v48, v49, v50, v51, v52, v131, v140, v147, v154, v161, v168, v175, v182, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_16_2();
    v53 = OUTLINED_FUNCTION_21_1();
    v61 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v132, v141, v148, v155, v162, v169, v176, v183, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_13_2(v61, v62, v63, v64, v65, v66, v67, v68);
    OUTLINED_FUNCTION_18_1();
    *(v0 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v69, v70, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268139910()
{
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v4, v78, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v5)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v6 = sub_2683CF7E8();
    OUTLINED_FUNCTION_12_1(v6, qword_28027C958);
    sub_26812C2A8(v0, v74, &qword_28024D458, &unk_2683D2C60);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v8))
    {
      OUTLINED_FUNCTION_49();
      v64 = OUTLINED_FUNCTION_9_2();
      *v1 = 136315138;
      sub_26812C2A8(v74, v73, &qword_28024D458, &unk_2683D2C60);
      OUTLINED_FUNCTION_16_2();
      v9 = sub_2683CFAD8();
      v11 = v10;
      sub_26812C310(v74, &qword_28024D458, &unk_2683D2C60);
      sub_2681610A0(v9, v11, &v64);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v12, v13, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v74, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
  }

  else
  {
    sub_26812C2A8(v78, v74, &qword_28024D458, &unk_2683D2C60);
    if (v74[0] == 2)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v14 = sub_2683CF7E8();
      OUTLINED_FUNCTION_12_1(v14, qword_28027C958);
      sub_26812C2A8(v0, v73, &qword_28024D458, &unk_2683D2C60);
      v15 = sub_2683CF7C8();
      v16 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v16))
      {
        OUTLINED_FUNCTION_49();
        v17 = OUTLINED_FUNCTION_9_2();
        *&v61 = v17;
        *v1 = 136315138;
        OUTLINED_FUNCTION_36_0(v17, v18, v19, v20, v21, v22, v23, v24, v57, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), *&v63[0], *(&v63[0] + 1), *&v63[1], *(&v63[1] + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]);
        OUTLINED_FUNCTION_16_2();
        v25 = sub_2683CFAD8();
        OUTLINED_FUNCTION_28_0(v25, v26, v27, v28, v29, v30, v31, v32, v58, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), *&v63[0], *(&v63[0] + 1), *&v63[1], *(&v63[1] + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]);
        sub_2681610A0(v2, v3, &v61);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v33, v34, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v73, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC298();
    }

    else
    {
      v61 = v75;
      v62 = v76;
      v63[0] = v77[0];
      *(v63 + 9) = *(v77 + 9);
      sub_26812C2A8(&v61, v73, &qword_28024D460, &qword_2683D5050);
      if (v73[56] != 255)
      {
        sub_26812C310(v73, &qword_28024D460, &qword_2683D5050);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v35 = sub_2683CF7E8();
      OUTLINED_FUNCTION_12_1(v35, qword_28027C958);
      sub_26812C2A8(v0, v73, &qword_28024D458, &unk_2683D2C60);
      v36 = sub_2683CF7C8();
      v37 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v37))
      {
        OUTLINED_FUNCTION_49();
        v38 = OUTLINED_FUNCTION_9_2();
        v60 = v38;
        *v1 = 136315138;
        OUTLINED_FUNCTION_36_0(v38, v39, v40, v41, v42, v43, v44, v45, v57, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), *&v63[0], *(&v63[0] + 1), *&v63[1], *(&v63[1] + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]);
        OUTLINED_FUNCTION_16_2();
        v46 = sub_2683CFAD8();
        OUTLINED_FUNCTION_28_0(v46, v47, v48, v49, v50, v51, v52, v53, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), *&v63[0], *(&v63[0] + 1), *&v63[1], *(&v63[1] + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, v73[0]);
        sub_2681610A0(v2, v3, &v60);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v54, v55, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v73, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v61, &qword_28024D460, &qword_2683D5050);
    }
  }

  return sub_26812C310(v78, &qword_28024D458, &unk_2683D2C60);
}

void sub_268139D80()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v1, v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v27)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = sub_2683CF7E8();
    v5 = OUTLINED_FUNCTION_12_1(v4, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v5, v6, &qword_28024D458, &unk_2683D2C60);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v8))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v0 = 136315138;
      OUTLINED_FUNCTION_11_2(v9, v10, v11, v12, v13, v14, v15, v16, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0();
      v17 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v17, v18, v19, v20, v21, v22, v23, v24, v130, v139, v146, v153, v160, v167, v174, v181);
      OUTLINED_FUNCTION_18_1();
      *(v0 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v25, v26, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v202, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v2, v3, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v27)
  {
    OUTLINED_FUNCTION_1_2(v28, v29, v30, v31, v32, v33, v34, v35, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0], v201[1], v201[2], v201[3], v201[4], v201[5], v201[6], v201[7], v201[8], v202[0], v202[1], v202[2], v202[3], v202[4], v202[5], v203);
    OUTLINED_FUNCTION_33_0(v71, v72, &qword_28024D460, &qword_2683D5050, v73, v74, v75, v76, v133, v142, v149, v156, v163, v170, v177, v184, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_26_0();
    if (v77 || (v86 = OUTLINED_FUNCTION_2_3(v78, v79, v80, v81, v82, v83, v84, v85, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197), OUTLINED_FUNCTION_31_0(v86, v87, v88, v89, v90, v91, v92, v93, v134), sub_26813A1A0(&v195), v0 == 3))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v94 = sub_2683CF7E8();
      v95 = OUTLINED_FUNCTION_12_1(v94, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v95, v96, &qword_28024D458, &unk_2683D2C60, v97, v98, v99, v100, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
      v101 = sub_2683CF7C8();
      v102 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v102))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v0 = 136315138;
        OUTLINED_FUNCTION_6_2(v103, v104, v105, v106, v107, v108, v109, v110, v135, v143, v150, v157, v164, v171, v178, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_16_2();
        v111 = OUTLINED_FUNCTION_21_1();
        v119 = OUTLINED_FUNCTION_4_2(v111, v112, v113, v114, v115, v116, v117, v118, v136, v144, v151, v158, v165, v172, v179, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
        OUTLINED_FUNCTION_15_2(v119, v120, v121, v122, v123, v124, v125, v126, v137);
        OUTLINED_FUNCTION_18_1();
        *(v0 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v127, v128, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v187, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  v37 = OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v37, v38, &qword_28024D458, &unk_2683D2C60, v39, v40, v41, v42, v129, v138, v145, v152, v159, v166, v173, v180, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
  v43 = sub_2683CF7C8();
  v44 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v44))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v0 = 136315138;
    OUTLINED_FUNCTION_6_2(v45, v46, v47, v48, v49, v50, v51, v52, v131, v140, v147, v154, v161, v168, v175, v182, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_16_2();
    v53 = OUTLINED_FUNCTION_21_1();
    v61 = OUTLINED_FUNCTION_4_2(v53, v54, v55, v56, v57, v58, v59, v60, v132, v141, v148, v155, v162, v169, v176, v183, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, *(&v196 + 1), v197, *(&v197 + 1), v198, v199, v200, v201[0]);
    OUTLINED_FUNCTION_13_2(v61, v62, v63, v64, v65, v66, v67, v68);
    OUTLINED_FUNCTION_18_1();
    *(v0 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v69, v70, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v201, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v204, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, __int128 a27)
{
  v29 = *(v27 + 88);
  a25 = *(v27 + 72);
  a26 = v29;
  a27 = *(v27 + 104);
  *(v27 + 41) = *(v27 + 113);

  return sub_26813A144(&a25, &a9);
}

void OUTLINED_FUNCTION_3_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_26812C310(&a34, v34, v35);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_26812C2A8(&a34, &a25, v34, v35);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_26812C310(v2 - 224, v0, v1);
}

BOOL OUTLINED_FUNCTION_8_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_26812C2A8(v36 - 224, &a34, v34, v35);
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_2681610A0(v8, v9, va);
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_2681610A0(v16, v17, va);
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2681610A0(v9, v10, &a9);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_26812C2A8(v34, &a34, a3, a4);
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  return sub_26812C310(&a28, v28, v29);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26813A1A0(&a9);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_26812C2A8(&a17, &a34, a3, a4);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4, v5 - 224, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4 - 152, v4 - 224, a3, a4);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  return sub_26812C2A8(&a28, &a19, v28, v29);
}

BOOL sub_26813A56C(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 2;
  sub_26813A1A0(v3);
  return v1;
}

id sub_26813A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v7 = sub_2683CC9C8();
  LOBYTE(v4) = *v4;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for SimpleDisambiguationItem() + 28);
  v15[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v11, AssociatedTypeWitness);
  v13 = sub_2682EFEFC(v4, v15);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v13;
}

uint64_t sub_26813A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_26813A6EC, 0, 0);
}

void sub_26813A6EC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9B8();
  sub_2683CF258();
  v6 = v5;

  v0[10] = v6;
  v8 = v1 + 16;
  v7 = *(v1 + 16);
  v16 = (*(v8 + 8) + 24);
  v17 = *v16 + **v16;
  v9 = (*v16)[1];
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26813A870;
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_26813A870()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26813A998, 0, 0);
  }

  else
  {
    v7 = *(v3 + 80);

    OUTLINED_FUNCTION_40();

    return v8();
  }
}

uint64_t sub_26813A998()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_26813A9F4()
{
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 36);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v10 = (*(v0 + 24) + 16);
  v11 = (*v10 + **v10);
  v4 = (*v10)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v6[1] = sub_268133EC8;
  v8 = OUTLINED_FUNCTION_0_8();

  return v11(v8);
}

uint64_t sub_26813AB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_26813A6C0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26813AC20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_26813ACEC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v59 = v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D468, &unk_2683D2650);
  v5 = OUTLINED_FUNCTION_1(v58);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = (&v56 - v8);
  v9 = sub_2683CC748();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v60 = v3;
  sub_2683CC9E8();
  sub_2683CC738();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v19, v9);
  switch(sub_2683B48FC())
  {
    case 1u:
      sub_26813B108();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v21 + 224);
      sub_26813CA00(v1 + 144, v21 + 272);
      v46 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v46);
      LOBYTE(v83) = 1;
      __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
      OUTLINED_FUNCTION_24_2();
      sub_268188FD0(&v83, v47, v48, v49, v50, v51, v52, v53, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      v54 = OUTLINED_FUNCTION_15_3();
      v55(v54);

      sub_26812D9E0(v110, &qword_28024D498, &qword_2683D2678);
      v34 = &qword_28024D4A0;
      v35 = &unk_2683D2680;
      goto LABEL_7;
    case 2u:
      sub_26813B5FC();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v21 + 224);
      sub_26813CA00(v1 + 144, v21 + 272);
      v24 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v24);
      LOBYTE(v83) = 2;
      goto LABEL_4;
    case 3u:
      sub_2683CC9E8();
      v36 = sub_2683CC738();
      v38 = v37;
      v22(v17, v9);
      sub_26812C6B8();
      v39 = swift_allocError();
      *v40 = v36;
      *(v40 + 8) = v38;
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = 1;
      v41 = v57;
      *v57 = v39;
      *(v41 + 8) = 0;
      v42 = *MEMORY[0x277D5BC30];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D478, &unk_2683D2660);
      OUTLINED_FUNCTION_1(v43);
      (*(v44 + 104))(v41, v42);
      v45 = v39;
      sub_26813C77C();
      sub_2683CBF38();
      sub_26812D9E0(v41, &qword_28024D468, &unk_2683D2650);

      goto LABEL_8;
    default:
      sub_26813B400();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v21 + 224);
      sub_26813CA00(v1 + 144, v21 + 272);
      v23 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v23);
      LOBYTE(v83) = 0;
LABEL_4:
      __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
      OUTLINED_FUNCTION_24_2();
      sub_268188F38(&v83, v25, v26, v27, v28, v29, v30, v31, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
      v32 = OUTLINED_FUNCTION_15_3();
      v33(v32);

      sub_26812D9E0(v110, &qword_28024D488, &qword_2683D6100);
      v34 = &qword_28024D490;
      v35 = &qword_2683D2670;
LABEL_7:
      sub_26812D9E0(&v83, v34, v35);
LABEL_8:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

void sub_26813B108()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v24 = v6;
  v25 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  sub_26813C83C(v0, v27);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v27, 0xE0uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26813C874;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_2683D2698;
  *(v16 + 24) = v15;
  v17 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v27[3] = type metadata accessor for CreateNoteCATPatternsExecutor(0);
  v27[4] = &off_28790B0A0;
  v27[0] = v17;
  sub_26813CA00(v27, v26);
  OUTLINED_FUNCTION_20_2();
  v18 = swift_allocObject();
  sub_268128148(v26, v18 + 16);

  __swift_destroy_boxed_opaque_existential_0(v27);
  v20 = *v1;
  v19 = v1[1];

  sub_2683CB588();
  v21 = sub_2683CB548();
  v23 = v22;
  (*(v24 + 8))(v11, v25);
  *v3 = v12;
  *(v3 + 8) = &unk_2683D26A8;
  *(v3 + 16) = v16;
  *(v3 + 24) = &unk_2683D26B8;
  *(v3 + 32) = v18;
  *(v3 + 40) = &unk_2683D26C8;
  *(v3 + 48) = v20;
  *(v3 + 56) = sub_26813BCDC;
  *(v3 + 64) = 0;
  *(v3 + 72) = sub_26813BCF4;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D26D8;
  *(v3 + 128) = v19;
  *(v3 + 136) = 1;
  *(v3 + 137) = v27[0];
  *(v3 + 140) = *(v27 + 3);
  *(v3 + 144) = sub_2683779C8;
  *(v3 + 152) = 0;
  *(v3 + 160) = v21;
  *(v3 + 168) = v23;
  OUTLINED_FUNCTION_29_0();
}

void sub_26813B400()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CB598();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  v8 = sub_2683CD158();
  v10 = OUTLINED_FUNCTION_26_1(v8, v9);
  OUTLINED_FUNCTION_23_2(v10, &off_28790B0A0);
  OUTLINED_FUNCTION_20_2();
  v11 = swift_allocObject();
  sub_268128148(&v16, v11 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v17);
  v13 = *v0;
  v12 = v0[1];

  sub_2683CB588();
  sub_2683CB548();
  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  *v2 = v7;
  *(v2 + 8) = &unk_2683D26F0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &unk_2683D2700;
  *(v2 + 32) = v11;
  *(v2 + 40) = &unk_2683D2710;
  *(v2 + 48) = v13;
  *(v2 + 56) = sub_26813C03C;
  *(v2 + 64) = 0;
  *(v2 + 72) = sub_26813C0E8;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_0();
}