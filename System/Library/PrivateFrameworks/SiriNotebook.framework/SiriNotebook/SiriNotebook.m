void sub_2680EDCA8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2680EDCDC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2680EDCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2683CB668();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680EDDD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_2683CB668();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680EDEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CB668();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680EDF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2683CB668();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2680EE0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680EE170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

BOOL sub_2680EE40C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2680EE448()
{
  v2 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  OUTLINED_FUNCTION_63(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  v14 = v1 + v5;
  v15 = sub_2683CE448();
  OUTLINED_FUNCTION_1(v15);
  (*(v16 + 8))(v14);
  __swift_destroy_boxed_opaque_existential_0((v14 + *(v0 + 28)));
  __swift_destroy_boxed_opaque_existential_0((v14 + *(v0 + 32)));
  v17 = sub_2683CD358();
  if (!__swift_getEnumTagSinglePayload(v1 + v11, 1, v17))
  {
    OUTLINED_FUNCTION_23_0(v17);
    (*(v18 + 8))(v1 + v11, v17);
  }

  return MEMORY[0x2821FE8E8](v1, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t sub_2680EE5E8()
{
  v2 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper();
  OUTLINED_FUNCTION_63(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = v1 + v5;
  v18 = sub_2683CE448();
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 8);
  v20(v17, v18);
  __swift_destroy_boxed_opaque_existential_0((v17 + *(v0 + 28)));
  __swift_destroy_boxed_opaque_existential_0((v17 + *(v0 + 32)));
  v20(v1 + v14, v18);

  return MEMORY[0x2821FE8E8](v1, v14 + v15, v16 | 7);
}

uint64_t sub_2680EE760()
{
  if (*(v0 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680EE7D8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  sub_2683CFEA8();
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2680EE838()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  if (*(v0 + 112) == 1)
  {
    v3 = *(v0 + 72);
  }

  else if (!*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_2680EE8BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680EE8F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680EE998()
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

uint64_t sub_2680EFDFC()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isComplete.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFE48()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isCompletable.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFE94()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.isFlagged.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFF10()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.LocationTrigger.isCar.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFF84()
{
  OUTLINED_FUNCTION_94();
  v0 = Snippet.Reminder.TemporalTrigger.isAllDay.getter();
  return OUTLINED_FUNCTION_68(v0);
}

uint64_t sub_2680EFFD0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_47_0();
  v6 = sub_2683CB598();
  OUTLINED_FUNCTION_29_2(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_88();
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_107(*(v3 + a3[6] + 8));
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v12 = OUTLINED_FUNCTION_29_2(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[9];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
      v16 = OUTLINED_FUNCTION_29_2(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[12];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        v19 = OUTLINED_FUNCTION_29_2(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[13];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
          v14 = a3[16];
        }
      }
    }

    v8 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_2680F017C()
{
  OUTLINED_FUNCTION_45_0();
  v4 = sub_2683CB598();
  result = OUTLINED_FUNCTION_29_2(v4);
  if (*(v6 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + v2[6] + 8) = (v0 - 1);
      return result;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    OUTLINED_FUNCTION_29_2(v7);
    if (*(v8 + 84) == v3)
    {
      v9 = v2[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
      OUTLINED_FUNCTION_29_2(v10);
      if (*(v11 + 84) == v3)
      {
        v12 = v2[12];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_29_2(v13);
        if (*(v14 + 84) == v3)
        {
          v15 = v2[13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
          v16 = v2[16];
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_2680F0328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_107(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
  v8 = OUTLINED_FUNCTION_29_2(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 20);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v11 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

uint64_t sub_2680F03FC(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
      v9 = *(a4 + 24);
    }

    OUTLINED_FUNCTION_106();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  return result;
}

uint64_t sub_2680F04E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_29_2(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_2680F058C()
{
  OUTLINED_FUNCTION_45_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
  OUTLINED_FUNCTION_29_2(v3);
  if (*(v4 + 84) != v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
    v5 = v0 + *(v1 + 20);
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2680F0634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_4();
  v6 = sub_2683CB438();
  v7 = OUTLINED_FUNCTION_29_2(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_2680F06E4()
{
  OUTLINED_FUNCTION_45_0();
  v4 = sub_2683CB438();
  result = OUTLINED_FUNCTION_29_2(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_106();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    v11 = (v1 + *(v2 + 20));
    *v11 = 0;
    v11[1] = ((~v0 >> 2) & 3 | (4 * ~v0)) << 60;
  }

  return result;
}

uint64_t sub_2680F0838@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2683CD438();
  *a2 = result;
  return result;
}

__n128 sub_2680F08F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2680F0A00()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 24) & ~v4;
  v8 = (v6 + v4 + v7) & ~v4;
  v9 = *(v0 + 16);

  v10 = v0 + v7;
  v11 = type metadata accessor for Snippet();
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v20);
        (*(v21 + 8))(v10);
        v22 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v22);
        goto LABEL_41;
      case 1u:
        v108 = *v10;

        v109 = *(v10 + 24);
        goto LABEL_41;
      case 2u:
        v92 = *v10;

        v93 = *(v10 + 16);

        v94 = *(v10 + 32);

        v95 = *(v10 + 48);

        OUTLINED_FUNCTION_38_0();
        if (!v91)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v100 = *v10;

        v101 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v102 = v101[5];
        OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v219 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v219);
            (*(v220 + 8))(v1);
            break;
          case 1u:
            v221 = *(v1 + 8);

            v222 = *(v1 + 24);

            v223 = *(v1 + 40);

            if (*(v1 + 96) != 255)
            {
              v224 = *(v1 + 80);
              v225 = *(v1 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v103 = *(v1 + 8);

            break;
          default:
            break;
        }

        v226 = v101[6];
        v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v227);
        (*(v228 + 8))(v10 + v226);
        v202 = v101[7];
        v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_89;
      case 4u:
        v271 = v8;
        v53 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v53);
        (*(v54 + 8))(v10);
        v55 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v55);

        OUTLINED_FUNCTION_11_5(v55[6]);

        OUTLINED_FUNCTION_11_5(v55[7]);

        v56 = v10 + v55[8];
        if (*(v56 + 24))
        {
          v57 = *(v56 + 8);

          v58 = *(v56 + 24);

          v59 = *(v56 + 40);

          if (*(v56 + 96) != 255)
          {
            v60 = *(v56 + 80);
            v61 = *(v56 + 88);
            sub_26814304C();
          }
        }

        v62 = v55[9];
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v63);
        v65 = *(v64 + 8);
        v6 = v64 + 8;
        v65(v10 + v62, v63);
        v66 = OUTLINED_FUNCTION_43_0(v55[10]);
        (v65)(v66);
        v67 = OUTLINED_FUNCTION_43_0(v55[11]);
        (v65)(v67);
        v68 = v10 + v55[12];
        v69 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        v70 = OUTLINED_FUNCTION_27_2();
        if (!__swift_getEnumTagSinglePayload(v70, v71, v69))
        {
          v72 = *(v68 + 8);

          v267 = *(v69 + 20);
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v73);
          (*(v74 + 8))(v68 + v267);
          v65(v68 + *(v69 + 24), v63);
        }

        v75 = v55[13];
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v76);
        (*(v77 + 8))(&v75[v10]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v78 = *(v75 + 3);
        }

        v79 = *(v10 + v55[15]);

        v80 = v55[16];
        v81 = OUTLINED_FUNCTION_31_1();
        v82 = type metadata accessor for Snippet.Reminder.AppLink(v81);
        if (!OUTLINED_FUNCTION_16_4(v82))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v75, *(v75 + 1));
          }

          else
          {
            v233 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v233);
            (*(v234 + 8))(v75);
          }
        }

        v235 = *(v10 + v55[17]);

        goto LABEL_104;
      case 5u:
        v115 = *v10;

        if (*(v10 + 32))
        {
          v116 = *(v10 + 16);

          v117 = *(v10 + 32);

          v118 = *(v10 + 48);

          OUTLINED_FUNCTION_38_0();
          if (!v91)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v119 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_76;
      case 6u:
        v271 = v8;
        v150 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v150);
        (*(v151 + 8))(v10);
        v152 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v152);

        OUTLINED_FUNCTION_11_5(v152[6]);

        OUTLINED_FUNCTION_11_5(v152[7]);

        v153 = v10 + v152[8];
        if (*(v153 + 24))
        {
          v154 = *(v153 + 8);

          v155 = *(v153 + 24);

          v156 = *(v153 + 40);

          if (*(v153 + 96) != 255)
          {
            v157 = *(v153 + 80);
            v158 = *(v153 + 88);
            sub_26814304C();
          }
        }

        v159 = v152[9];
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v160);
        v162 = *(v161 + 8);
        v6 = v161 + 8;
        v162(v10 + v159, v160);
        v163 = OUTLINED_FUNCTION_43_0(v152[10]);
        (v162)(v163);
        v164 = OUTLINED_FUNCTION_43_0(v152[11]);
        (v162)(v164);
        v165 = v10 + v152[12];
        v166 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        v167 = OUTLINED_FUNCTION_27_2();
        if (!__swift_getEnumTagSinglePayload(v167, v168, v166))
        {
          v169 = *(v165 + 8);

          v268 = *(v166 + 20);
          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v170);
          (*(v171 + 8))(v165 + v268);
          v162(v165 + *(v166 + 24), v160);
        }

        v172 = v152[13];
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v173);
        (*(v174 + 8))(&v172[v10]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v175 = *(v172 + 3);
        }

        v176 = *(v10 + v152[15]);

        v177 = v152[16];
        v178 = OUTLINED_FUNCTION_31_1();
        v179 = type metadata accessor for Snippet.Reminder.AppLink(v178);
        if (!OUTLINED_FUNCTION_16_4(v179))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v172, *(v172 + 1));
          }

          else
          {
            v244 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v244);
            (*(v245 + 8))(v172);
          }
        }

        v246 = *(v10 + v152[17]);

        v247 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
        v248 = *(v247 + 8);

        v249 = *(type metadata accessor for Snippet.Interaction() + 20);
        v250 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v250);
        (*(v251 + 8))(v247 + v249);
LABEL_104:
        v8 = v271;
        break;
      case 7u:
        v105 = *(v10 + 8);
        goto LABEL_41;
      case 8u:
        v197 = *(v10 + 8);

        v198 = *(v10 + 24);

        v199 = *(v10 + 40);

        v200 = *(v10 + 56);

        v119 = *(type metadata accessor for Snippet.CreateNote3p() + 20);
        goto LABEL_76;
      case 9u:
        v85 = *v10;

        v86 = *(v10 + 32);
LABEL_41:

        break;
      case 0xAu:
        v186 = type metadata accessor for Snippet.SectionHeading();
        v187 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v187, v188, v186))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v259 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v259);
              (*(v260 + 8))(v10);
              break;
            case 1u:
              v261 = *(v10 + 8);

              v262 = *(v10 + 24);

              v263 = *(v10 + 40);

              if (*(v10 + 96) != 255)
              {
                v264 = *(v10 + 80);
                v265 = *(v10 + 88);
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v205 = *(v10 + 8);

              break;
            default:
              break;
          }
        }

        v189 = type metadata accessor for Snippet.SearchResult3p();
        v190 = *(v10 + v189[5]);

        v191 = *(v10 + v189[6]);

        v119 = v189[8];
LABEL_76:
        v10 += v119;
        v201 = *(v10 + 8);

        v202 = *(type metadata accessor for Snippet.Interaction() + 20);
        v203 = sub_2683CB828();
LABEL_89:
        OUTLINED_FUNCTION_0_9(v203);
        (*(v229 + 8))(v10 + v202);
        break;
      default:
        break;
    }
  }

  v14 = (v0 + v8);
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v17);
        (*(v18 + 8))(v0 + v8);
        v19 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v19);
        goto LABEL_92;
      case 1u:
        v106 = *v14;

        v107 = v14[3];
        goto LABEL_92;
      case 2u:
        v87 = *v14;

        v88 = v14[2];

        v89 = v14[4];

        v90 = v14[6];

        OUTLINED_FUNCTION_38_0();
        if (!v91)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v96 = *v14;

        v97 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v98 = v14 + v97[5];
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v206 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v206);
            (*(v207 + 8))(v98);
            break;
          case 1u:
            v208 = *(v98 + 8);

            v209 = *(v98 + 24);

            v210 = *(v98 + 40);

            if (*(v98 + 96) != 255)
            {
              v211 = *(v98 + 80);
              v212 = *(v98 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v99 = *(v98 + 8);

            break;
          default:
            break;
        }

        v213 = v97[6];
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v214);
        (*(v215 + 8))(v14 + v213);
        v216 = v97[7];
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9(v217);
        (*(v218 + 8))(v14 + v216);
        break;
      case 4u:
        v23 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v23);
        (*(v24 + 8))(v0 + v8);
        v25 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v25);

        OUTLINED_FUNCTION_11_5(v25[6]);

        OUTLINED_FUNCTION_11_5(v25[7]);

        v26 = v14 + v25[8];
        if (*(v26 + 24))
        {
          v27 = *(v26 + 8);

          v28 = *(v26 + 24);

          v29 = *(v26 + 40);

          if (*(v26 + 96) != 255)
          {
            v30 = *(v26 + 80);
            v31 = *(v26 + 88);
            sub_26814304C();
          }
        }

        v32 = v25[9];
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v33);
        v35 = *(v34 + 8);
        v35(v14 + v32, v33);
        v36 = OUTLINED_FUNCTION_44_0(v25[10]);
        (v35)(v36);
        v37 = OUTLINED_FUNCTION_44_0(v25[11]);
        (v35)(v37);
        v38 = v25[12];
        v39 = OUTLINED_FUNCTION_31_1();
        v40 = type metadata accessor for Snippet.Reminder.LocationTrigger(v39);
        if (!OUTLINED_FUNCTION_16_4(v40))
        {
          v41 = *(v32 + 8);

          v269 = v6;
          v42 = *(v8 + 20);
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v43);
          v45 = v32 + v42;
          v6 = v269;
          (*(v44 + 8))(v45);
          v35((v32 + *(v8 + 24)), v33);
        }

        v46 = v25[13];
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v47);
        (*(v48 + 8))(v14 + v46);
        if (OUTLINED_FUNCTION_42_0())
        {

          v49 = *(v46 + 24);
        }

        v50 = *(v14 + v25[15]);

        v51 = v14 + v25[16];
        v52 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v52))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            v230 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v230);
            (*(v231 + 8))(v51);
          }
        }

        v232 = *(v14 + v25[17]);
        goto LABEL_92;
      case 5u:
        v110 = *v14;

        if (v14[4])
        {
          v111 = v14[2];

          v112 = v14[4];

          v113 = v14[6];

          OUTLINED_FUNCTION_38_0();
          if (!v91)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v114 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_98;
      case 6u:
        v120 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v120);
        (*(v121 + 8))(v0 + v8);
        v122 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v122);

        OUTLINED_FUNCTION_11_5(v122[6]);

        OUTLINED_FUNCTION_11_5(v122[7]);

        v123 = v14 + v122[8];
        if (*(v123 + 24))
        {
          v124 = *(v123 + 8);

          v125 = *(v123 + 24);

          v126 = *(v123 + 40);

          if (*(v123 + 96) != 255)
          {
            v127 = *(v123 + 80);
            v128 = *(v123 + 88);
            sub_26814304C();
          }
        }

        v129 = v122[9];
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v130);
        v132 = *(v131 + 8);
        v132(v14 + v129, v130);
        v133 = OUTLINED_FUNCTION_44_0(v122[10]);
        (v132)(v133);
        v134 = OUTLINED_FUNCTION_44_0(v122[11]);
        (v132)(v134);
        v135 = v122[12];
        v136 = OUTLINED_FUNCTION_31_1();
        v137 = type metadata accessor for Snippet.Reminder.LocationTrigger(v136);
        if (!OUTLINED_FUNCTION_16_4(v137))
        {
          v138 = *(v129 + 8);

          v270 = v6;
          v139 = *(v8 + 20);
          v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v140);
          v142 = v129 + v139;
          v6 = v270;
          (*(v141 + 8))(v142);
          v132((v129 + *(v8 + 24)), v130);
        }

        v143 = v122[13];
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v144);
        (*(v145 + 8))(v14 + v143);
        if (OUTLINED_FUNCTION_42_0())
        {

          v146 = *(v143 + 24);
        }

        v147 = *(v14 + v122[15]);

        v148 = v14 + v122[16];
        v149 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v149))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v148, *(v148 + 8));
          }

          else
          {
            v236 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v236);
            (*(v237 + 8))(v148);
          }
        }

        v238 = *(v14 + v122[17]);

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p();
        goto LABEL_97;
      case 7u:
        v104 = v14[1];
        goto LABEL_92;
      case 8u:
        v192 = v14[1];

        v193 = v14[3];

        v194 = v14[5];

        v195 = v14[7];

        Note3p = type metadata accessor for Snippet.CreateNote3p();
LABEL_97:
        v114 = *(Note3p + 20);
        goto LABEL_98;
      case 9u:
        v83 = *v14;

        v84 = v14[4];
LABEL_92:

        break;
      case 0xAu:
        v180 = type metadata accessor for Snippet.SectionHeading();
        v181 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v181, v182, v180))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v252 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v252);
              (*(v253 + 8))(v0 + v8);
              break;
            case 1u:
              v254 = v14[1];

              v255 = v14[3];

              v256 = v14[5];

              if (*(v14 + 96) != 255)
              {
                v257 = v14[10];
                v258 = v14[11];
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v204 = v14[1];

              break;
            default:
              break;
          }
        }

        v183 = type metadata accessor for Snippet.SearchResult3p();
        v184 = *(v14 + v183[5]);

        v185 = *(v14 + v183[6]);

        v114 = v183[8];
LABEL_98:
        v239 = v14 + v114;
        v240 = *(v14 + v114 + 8);

        v241 = *(type metadata accessor for Snippet.Interaction() + 20);
        v242 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v242);
        (*(v243 + 8))(v239 + v241);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v6, v4 | 7);
}

uint64_t sub_2680F1CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681481AC(a1, a2);
  *a3 = result & 1;
  return result;
}

id sub_2680F1DAC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2680F1DC0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F2154()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F218C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v6 = *(v5 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = sub_2683CF2A8();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_2680F22B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F22EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F2388()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2404()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2680F2454()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2494()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F24F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2528()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F25F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F262C()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F267C()
{
  OUTLINED_FUNCTION_20_10();

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F26D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F2714()
{
  v1 = sub_2683CBCE8();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2680F2794()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F27CC()
{
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v2 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  v3 = *(v0 + 200);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_2680F2838()
{
  OUTLINED_FUNCTION_20_10();
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v3 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F28B8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  OUTLINED_FUNCTION_12_9();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F28FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2680F297C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680F29D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2680F2A08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2680F2A48()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F2A94()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F2AE4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F2B1C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[13];

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2680F2B68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[13];
  if (v2)
  {

    v3 = v0[15];
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2680F2C10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F2C4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2683CB668();
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_2680F2CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F2D60()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 72);
  }

  else if (!*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  v3 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_2680F2DDC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2680F2EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for Snippet.Interaction();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2680F2F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for Snippet.Interaction();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F30D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2680F3110()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2680F3168()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  v4 = *(v0 + 56);

  sub_2681B4940(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2680F31CC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F3200()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2680F3244()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
  }

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F32C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2680F331C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F3354()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2680F3398()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_113_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2680F34C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680F3550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F3630()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
  }

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F36B0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2680F36F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F3800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2683CB668();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680F38D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotebookNLv3Intent(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_2683CB668();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F39F4(uint64_t a1, int a2, uint64_t a3)
{
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_29_2(Type);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_5_15();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a1 + *(a3 + 24));
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2680F3A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  Type = type metadata accessor for LocationQuery.QueryType(0);
  result = OUTLINED_FUNCTION_29_2(Type);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2680F3B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CEBD8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680F3B8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2683CEBD8();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2680F3BE8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_29_2(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_5_15();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2680F3C98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  result = OUTLINED_FUNCTION_29_2(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2680F3D9C()
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

uint64_t sub_2680F505C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2681D1A74(a2);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_2680F5098()
{
  if (*(v0 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2680F5110()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2680F5150()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_2680F5178()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F5228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for Snippet.Interaction();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2680F5304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for Snippet.Interaction();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2680F55B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F55F4()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F5644()
{
  OUTLINED_FUNCTION_20_10();

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2680F567C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  v2 = v0[11];

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2680F56D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F5708()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2680F5744()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2680F579C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F57D8()
{
  OUTLINED_FUNCTION_20_10();
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v3 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F5858()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2680F58EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2680F5940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2680F5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680F5A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F60C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2680F6180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2683CF158();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2680F61C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2683CB668();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_2683CE7F8();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2680F6290(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2683CB668();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2683CE7F8();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2680F63A0()
{
  v1 = type metadata accessor for InstalledAppProvider();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_2683CB668();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2680F647C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2683CB668();
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_2680F6504(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F6628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2680EFC0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2680F6750()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F6784()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
  }

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2680F6804()
{
  sub_268143054(v0[2], v0[3]);
  v1 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2680F6864()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F6898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2680F68D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_19_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2680F6910()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 160);
  }

  else if (!*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));

  return MEMORY[0x2821FE8E8](v0, 296, 7);
}

uint64_t sub_2680F69AC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2680F6A44()
{
  v1 = sub_2683CAEA8();
  OUTLINED_FUNCTION_0_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2680F6AC0@<X0>(uint64_t *a1@<X8>)
{
  result = Snippet.Interaction.interaction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2680F6AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2683CB828();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2680F6B84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2683CB828();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680F6D14()
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

uint64_t sub_2680F7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2680F806C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2680F8228()
{
  v2 = type metadata accessor for AddTasksNLv3IntentWrapper();
  OUTLINED_FUNCTION_63(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = v1 + v5;
  v18 = sub_2683CE448();
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 8);
  v20(v17, v18);
  __swift_destroy_boxed_opaque_existential_0((v17 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v17 + v0[8]));
  __swift_destroy_boxed_opaque_existential_0((v17 + v0[9]));
  __swift_destroy_boxed_opaque_existential_0((v17 + v0[10]));
  v21 = v0[11];
  v22 = sub_2683CB668();
  OUTLINED_FUNCTION_1(v22);
  (*(v23 + 8))(v17 + v21);
  v20(v1 + v14, v18);

  return MEMORY[0x2821FE8E8](v1, v14 + v15, v16 | 7);
}

uint64_t sub_2680F83D0()
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for AddTasksNLv3IntentWrapper();
  OUTLINED_FUNCTION_63(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = sub_2683CE448();
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 8);
  v19(v1 + v5, v17);
  v19(v1 + v14, v17);
  __swift_destroy_boxed_opaque_existential_0((v1 + v14 + v0[7]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v14 + v0[8]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v14 + v0[9]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v14 + v0[10]));
  v20 = v0[11];
  v21 = sub_2683CB668();
  OUTLINED_FUNCTION_1(v21);
  (*(v22 + 8))(v1 + v14 + v20);

  return MEMORY[0x2821FE8E8](v1, v14 + v15, v16 | 7);
}

uint64_t sub_2680F8594()
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

uint64_t sub_2680F981C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680F987C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CB668();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2680F9928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2683CB668();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2680F9A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snippet.Reminder(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2680F9AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippet.Reminder(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2680F9C04()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680F9CD0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2680F9D24()
{
  OUTLINED_FUNCTION_39_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2680F9DE8()
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

uint64_t sub_2680FB064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2683CB668();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2680FB0EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2683CB668();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2680FB1A8@<X0>(uint64_t *a1@<X8>)
{
  result = Common.Number.Operator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268105BB0()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268105DB8()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_268106038()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_80_0();
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268106318()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_79_0();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_268106650()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268106858()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_268106AA8()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_73_1();
                }
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268106D40()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_72_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_268106FD8()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2681071E0()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_268107430()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268107638()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_2681078B0()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_80_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_73_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268107B90()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_79_0();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_72_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_268107E70()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                    OUTLINED_FUNCTION_29_2(v23);
                    if (*(v24 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_80_0();
                    }

                    else
                    {
                      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                      OUTLINED_FUNCTION_29_2(v25);
                      if (*(v26 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_73_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_92_1();
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

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2681081E0()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                    OUTLINED_FUNCTION_29_2(v19);
                    if (*(v20 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_79_0();
                    }

                    else
                    {
                      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                      OUTLINED_FUNCTION_29_2(v21);
                      if (*(v22 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_72_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_91_1();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_268108554()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_60_1();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_65_1();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_80_0();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_73_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_88_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268108834()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_59_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_64_1();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_79_0();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_72_1();
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                    OUTLINED_FUNCTION_87_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_268108B3C()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500F8, &qword_2683DEED8);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268108D44()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500F8, &qword_2683DEED8);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_268108F4C()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250110, &qword_2683DEEF0);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_45_4();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268109154()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250110, &qword_2683DEEF0);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_43_6();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_268109384()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250138, &qword_2683DEF18);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250150, &qword_2683DEF30);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250168, &qword_2683DEF48);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250178, &qword_2683DEF58);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250190, &qword_2683DEF70);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501A0, &qword_2683DEF80);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_65_1();
                  }

                  else
                  {
                    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                    OUTLINED_FUNCTION_29_2(v23);
                    if (*(v24 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_80_0();
                    }

                    else
                    {
                      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                      OUTLINED_FUNCTION_29_2(v25);
                      if (*(v26 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_73_1();
                      }

                      else
                      {
                        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                        OUTLINED_FUNCTION_29_2(v27);
                        if (*(v28 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_88_1();
                        }

                        else
                        {
                          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                          OUTLINED_FUNCTION_29_2(v29);
                          if (*(v30 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_92_1();
                          }

                          else
                          {
                            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
                            OUTLINED_FUNCTION_29_2(v31);
                            if (*(v32 + 84) == v0)
                            {
                              OUTLINED_FUNCTION_948();
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                              OUTLINED_FUNCTION_590();
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

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_2681097CC()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250138, &qword_2683DEF18);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250150, &qword_2683DEF30);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250168, &qword_2683DEF48);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250178, &qword_2683DEF58);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250190, &qword_2683DEF70);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501A0, &qword_2683DEF80);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_64_1();
                  }

                  else
                  {
                    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                    OUTLINED_FUNCTION_29_2(v19);
                    if (*(v20 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_79_0();
                    }

                    else
                    {
                      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                      OUTLINED_FUNCTION_29_2(v21);
                      if (*(v22 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_72_1();
                      }

                      else
                      {
                        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                        OUTLINED_FUNCTION_29_2(v23);
                        if (*(v24 + 84) == v0)
                        {
                          OUTLINED_FUNCTION_87_1();
                        }

                        else
                        {
                          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                          OUTLINED_FUNCTION_29_2(v25);
                          if (*(v26 + 84) == v0)
                          {
                            OUTLINED_FUNCTION_91_1();
                          }

                          else
                          {
                            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
                            OUTLINED_FUNCTION_29_2(v27);
                            if (*(v28 + 84) == v0)
                            {
                              OUTLINED_FUNCTION_947();
                            }

                            else
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                              OUTLINED_FUNCTION_589();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

uint64_t sub_268109CAC()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501F8, &qword_2683DEFD8);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250208, &qword_2683DEFE8);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_60_1();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_65_1();
                }
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_268109F44()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501F8, &qword_2683DEFD8);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250208, &qword_2683DEFE8);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_59_2();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                  OUTLINED_FUNCTION_64_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_26810A1DC()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250220, &qword_2683DF000);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_65_1();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_26810A3E4()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250220, &qword_2683DF000);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
              OUTLINED_FUNCTION_64_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_26810A614()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250230, &qword_2683DF010);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250240, &qword_2683DF020);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_54_3();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_56_2();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_45_4();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_60_1();
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_26810A864()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250230, &qword_2683DF010);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250240, &qword_2683DF020);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_55_2();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500E0, &qword_2683DEEC0);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_43_6();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_59_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_26810AADC()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250258, &qword_2683DF038);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_44_8();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250270, &qword_2683DF050);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_50_5();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_41_7();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250288, &qword_2683DF068);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_65_1();
              }
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_26810AD2C()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250258, &qword_2683DF038);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_42_9();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250270, &qword_2683DF050);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_49_6();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250120, &qword_2683DEF00);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250288, &qword_2683DF068);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                OUTLINED_FUNCTION_64_1();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_26810AF7C()
{
  OUTLINED_FUNCTION_11_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_88();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502A0, &qword_2683DF080);
    OUTLINED_FUNCTION_29_2(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_50_5();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_41_7();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502B0, &qword_2683DF090);
          OUTLINED_FUNCTION_29_2(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
            OUTLINED_FUNCTION_29_2(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_45_4();
            }

            else
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
              OUTLINED_FUNCTION_29_2(v17);
              if (*(v18 + 84) == v0)
              {
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                OUTLINED_FUNCTION_29_2(v19);
                if (*(v20 + 84) == v0)
                {
                  OUTLINED_FUNCTION_65_1();
                }

                else
                {
                  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                  OUTLINED_FUNCTION_29_2(v21);
                  if (*(v22 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_80_0();
                  }

                  else
                  {
                    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                    OUTLINED_FUNCTION_29_2(v23);
                    if (*(v24 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_73_1();
                    }

                    else
                    {
                      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                      OUTLINED_FUNCTION_29_2(v25);
                      if (*(v26 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_88_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_92_1();
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

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_26810B2EC()
{
  OUTLINED_FUNCTION_45_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_29_2(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_36_10();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502A0, &qword_2683DF080);
    OUTLINED_FUNCTION_29_2(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_49_6();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
      OUTLINED_FUNCTION_29_2(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_40_8();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
        OUTLINED_FUNCTION_29_2(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_53_2();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802502B0, &qword_2683DF090);
          OUTLINED_FUNCTION_29_2(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_55_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
            OUTLINED_FUNCTION_29_2(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_6();
            }

            else
            {
              v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
              OUTLINED_FUNCTION_29_2(v13);
              if (*(v14 + 84) == v0)
              {
                OUTLINED_FUNCTION_59_2();
              }

              else
              {
                v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
                OUTLINED_FUNCTION_29_2(v15);
                if (*(v16 + 84) == v0)
                {
                  OUTLINED_FUNCTION_64_1();
                }

                else
                {
                  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
                  OUTLINED_FUNCTION_29_2(v17);
                  if (*(v18 + 84) == v0)
                  {
                    OUTLINED_FUNCTION_79_0();
                  }

                  else
                  {
                    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
                    OUTLINED_FUNCTION_29_2(v19);
                    if (*(v20 + 84) == v0)
                    {
                      OUTLINED_FUNCTION_72_1();
                    }

                    else
                    {
                      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802501B8, &qword_2683DEF98);
                      OUTLINED_FUNCTION_29_2(v21);
                      if (*(v22 + 84) == v0)
                      {
                        OUTLINED_FUNCTION_87_1();
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
                        OUTLINED_FUNCTION_91_1();
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

  OUTLINED_FUNCTION_106();

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}