void sub_1DCEE8D48()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_25_0();
  v8 = type metadata accessor for RCHFlowAsync.RCHFlowError();
  OUTLINED_FUNCTION_9(v8);
  v82 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v80 = type metadata accessor for SiriKitEventPayload(0);
  v14 = OUTLINED_FUNCTION_2(v80);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_16();
  v79 = v19 - v18;
  OUTLINED_FUNCTION_25_0();
  v20 = type metadata accessor for RCHFlowAsync.State();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21, v26);
  OUTLINED_FUNCTION_10_2();
  v29 = v27 - v28;
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = (&v79 - v33);
  v81 = *v2;
  v35 = *(v2 + 8);
  v36 = v32;
  v83 = v0;
  sub_1DCB7AC2C(&v79 - v33);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v37 = *v34;
    if (v35 >> 6)
    {
      if (v35 >> 6 == 1)
      {
        if (v35)
        {
          v38 = v81;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v39 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
          v40 = sub_1DD0DD8EC();
          v41 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_44_22(v41))
          {
            v42 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v42);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v43, v5, "RCHFlow ResolveConfirm resulted in an error that was already handled. Transitioning to error");
            OUTLINED_FUNCTION_14_3();
          }

          *v29 = v38 | 0x4000000000000000;
          *(v29 + 8) = xmmword_1DD0E5100;
          swift_storeEnumTagMultiPayload();
          sub_1DCB8E3C0(v38, v35);
        }

        else
        {
          v56 = v81;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v57 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
          v58 = v56;
          v59 = sub_1DD0DD8EC();
          v60 = sub_1DD0DE6EC();
          sub_1DCB151A8(v56, v35);
          if (os_log_type_enabled(v59, v60))
          {
            v61 = OUTLINED_FUNCTION_151();
            v62 = OUTLINED_FUNCTION_83();
            v84[0] = v62;
            *v61 = 136315138;
            swift_getErrorValue();
            v63 = sub_1DD0DF18C();
            sub_1DCB10E9C(v63, v64, v84);
            OUTLINED_FUNCTION_96_8();

            *(v61 + 4) = v35;
            OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v65, v66, "RCHFlow ResolveConfirm resulted in an error that was not handled. Will attempt to send error dialog: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v62);
            OUTLINED_FUNCTION_80();
            v56 = v81;
            OUTLINED_FUNCTION_80();
          }

          *v29 = v56;
          swift_storeEnumTagMultiPayload();
          v67 = v56;
        }
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v51 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
        v52 = sub_1DD0DD8EC();
        v53 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_44_22(v53))
        {
          v54 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v54);
          OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v55, v5, "RCHFlow Intent was cancelled.");
          OUTLINED_FUNCTION_14_3();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        swift_storeEnumTagMultiPayload();
      }

      OUTLINED_FUNCTION_88_11();
    }

    v45 = v29;
    if (v35)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v46 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_44_22(v48))
      {
        v49 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v49);
        OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v50, v5, "RCHFlow Intent was rejected. Cancelling.");
        OUTLINED_FUNCTION_14_3();
      }

      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = 0x8000000000000000;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_104_5();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v68 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v68, qword_1EDE57E00);
    v69 = sub_1DD0DD8EC();
    v70 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v70))
    {
      v71 = OUTLINED_FUNCTION_50_0();
      *v71 = 0;
      _os_log_impl(&dword_1DCAFC000, v69, v70, "RCHFlow Intent is Resolved and Confirmed. Transitioning to Handle.", v71, 2u);
      OUTLINED_FUNCTION_80();
    }

    v73 = *(v37 + 16);
    v72 = *(v37 + 24);
    v74 = *(v7 + 8);
    v75 = *(v74 + 8);
    swift_getAssociatedTypeWitness();
    v76 = *(v74 + 16);
    swift_getAssociatedTypeWitness();
    IntentResolutionRecord.init(app:intent:intentResponse:)(v73, v72, v81, v84);
    v77 = v84[1];
    v78 = v84[2];
    *v45 = v84[0];
    v45[1] = v77;
    v45[2] = v78;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v23 + 8))(v34, v36);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v44 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCEE95A4(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCEE961C()
{
  v1 = *v0;
  sub_1DCEE60E4();
  return v2 & 1;
}

uint64_t dispatch thunk of RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_41();
  v5 = *(OUTLINED_FUNCTION_56_0(v1, v2, v3, v4) + 24);
  OUTLINED_FUNCTION_8();
  v12 = v6 + *v6;
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1DCE41734;
  OUTLINED_FUNCTION_51_18();

  return v10();
}

uint64_t dispatch thunk of RCHFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_8();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_51_18();

  return v11();
}

unint64_t *sub_1DCEE9980(unint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  *a1 = *a2;
  a1[2] = v3;
  sub_1DCB070E0(v4, v6, v5);
  return a1;
}

uint64_t sub_1DCEE99C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCEE9A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1DCEE9A70(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of RCHFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 152);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v1);
}

uint64_t sub_1DCEE9C4C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for RCHFlowAsync.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1DCEE9D50()
{
  result = type metadata accessor for Input(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v3 = MEMORY[0x1E69E5D20] + 64;
    v7 = &v6;
    v8 = MEMORY[0x1E69E5D20] + 64;
    v9 = &unk_1DD100870;
    v10 = &unk_1DD100870;
    swift_getTupleTypeLayout2();
    v11 = &v5;
    swift_getTupleTypeLayout2();
    v12 = &v4;
    v13 = &unk_1DD100870;
    v14 = v3;
    v15 = &unk_1DD1008A0;
    v16 = &unk_1DD100870;
    v17 = &unk_1DD1008B8;
    v18 = "\b";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCEE9E78(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = type metadata accessor for Input(0);
      v9 = v8[5];
      v10 = a1 + v9;
      v11 = a2 + v9;
      v12 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 16))(v10, v11, v13);
          goto LABEL_90;
        case 1u:
          v82 = sub_1DD0DC76C();
          (*(*(v82 - 8) + 16))(v10, v11, v82);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v10[*(v83 + 48)] = *&v11[*(v83 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v59 = *(v11 + 1);
          *v10 = *v11;
          *(v10 + 1) = v59;
          *(v10 + 2) = *(v11 + 2);

          goto LABEL_90;
        case 3u:
          *v10 = *v11;
          swift_unknownObjectRetain();
          goto LABEL_90;
        case 4u:
          v52 = sub_1DD0DB1EC();
          (*(*(v52 - 8) + 16))(v10, v11, v52);
          goto LABEL_90;
        case 5u:
          v89 = *v11;
          *v10 = *v11;
          v90 = v89;
          goto LABEL_90;
        case 6u:
          v93 = sub_1DD0DB4BC();
          (*(*(v93 - 8) + 16))(v10, v11, v93);
          v94 = type metadata accessor for USOParse();
          v95 = v94[5];
          v96 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v95], 1, v96))
          {
            v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v95], &v11[v95], *(*(v97 - 8) + 64));
          }

          else
          {
            (*(*(v96 - 8) + 16))(&v10[v95], &v11[v95], v96);
            __swift_storeEnumTagSinglePayload(&v10[v95], 0, 1, v96);
          }

          v195 = v94[6];
          v196 = &v10[v195];
          v197 = &v11[v195];
          v198 = *(v197 + 1);
          *v196 = *v197;
          *(v196 + 1) = v198;
          v199 = v94[7];
          v200 = &v10[v199];
          v201 = &v11[v199];
          v200[4] = v201[4];
          *v200 = *v201;

          goto LABEL_90;
        case 7u:
          v76 = sub_1DD0DB4BC();
          (*(*(v76 - 8) + 16))(v10, v11, v76);
          v77 = type metadata accessor for USOParse();
          v78 = v77[5];
          v79 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v78], 1, v79))
          {
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v78], &v11[v78], *(*(v80 - 8) + 64));
          }

          else
          {
            (*(*(v79 - 8) + 16))(&v10[v78], &v11[v78], v79);
            __swift_storeEnumTagSinglePayload(&v10[v78], 0, 1, v79);
          }

          v155 = v77[6];
          v156 = &v10[v155];
          v157 = &v11[v155];
          v158 = *(v157 + 1);
          *v156 = *v157;
          *(v156 + 1) = v158;
          v159 = v77[7];
          v160 = &v10[v159];
          v161 = &v11[v159];
          v160[4] = v161[4];
          *v160 = *v161;
          v162 = type metadata accessor for LinkParse();
          v163 = v162[5];
          v164 = &v10[v163];
          v165 = &v11[v163];
          v166 = *(v165 + 1);
          *v164 = *v165;
          *(v164 + 1) = v166;
          v167 = v162[6];
          v168 = &v10[v167];
          v169 = &v11[v167];
          v170 = *(v169 + 1);
          *v168 = *v169;
          *(v168 + 1) = v170;
          v171 = v162[7];
          v172 = &v10[v171];
          v173 = &v11[v171];
          v174 = *(v173 + 1);
          *v172 = *v173;
          *(v172 + 1) = v174;

          goto LABEL_90;
        case 8u:
          v98 = sub_1DD0DD12C();
          (*(*(v98 - 8) + 16))(v10, v11, v98);
          v99 = type metadata accessor for NLRouterParse();
          v100 = *(v99 + 20);
          v101 = &v10[v100];
          v102 = &v11[v100];
          v103 = *(v102 + 1);
          *v101 = *v102;
          *(v101 + 1) = v103;
          v104 = *(v99 + 24);
          v278 = v99;
          __dsta = &v10[v104];
          v105 = &v11[v104];
          v106 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v105, 1, v106))
          {
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v105, *(*(v107 - 8) + 64));
          }

          else
          {
            v202 = sub_1DD0DB4BC();
            (*(*(v202 - 8) + 16))(__dsta, v105, v202);
            v203 = v106[5];
            v275 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v105[v203], 1, v275))
            {
              v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v203], &v105[v203], *(*(v204 - 8) + 64));
            }

            else
            {
              (*(*(v275 - 8) + 16))(&__dsta[v203], &v105[v203]);
              __swift_storeEnumTagSinglePayload(&__dsta[v203], 0, 1, v275);
            }

            v234 = v106[6];
            v235 = &__dsta[v234];
            v236 = &v105[v234];
            v237 = *(v236 + 1);
            *v235 = *v236;
            *(v235 + 1) = v237;
            v238 = v106[7];
            v239 = &__dsta[v238];
            v240 = &v105[v238];
            v239[4] = v240[4];
            *v239 = *v240;

            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v106);
          }

          v241 = *(v278 + 28);
          v242 = *&v11[v241];
          *&v10[v241] = v242;
          v243 = v242;
          goto LABEL_90;
        case 9u:
          v55 = sub_1DD0DD08C();
          (*(*(v55 - 8) + 16))(v10, v11, v55);
LABEL_90:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v10, v11, *(*(v12 - 8) + 64));
          break;
      }

      *(a1 + v8[6]) = *(a2 + v8[6]);
      v244 = v8[7];
      v245 = a1 + v244;
      v246 = a2 + v244;
      v247 = *(a2 + v244 + 24);

      if (v247)
      {
        v248 = *(v246 + 4);
        *(v245 + 3) = v247;
        *(v245 + 4) = v248;
        (**(v247 - 8))(v245, v246, v247);
      }

      else
      {
        v249 = *(v246 + 1);
        *v245 = *v246;
        *(v245 + 1) = v249;
        *(v245 + 4) = *(v246 + 4);
      }

      *(a1 + v8[8]) = *(a2 + v8[8]);
      v250 = *(a3 + 16);
      v251 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      v252 = *(swift_getTupleTypeMetadata2() + 48);
      v253 = *(a2 + v252);
      *(a1 + v252) = v253;
      v254 = v253;
      goto LABEL_103;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      v25 = *a2;
      v26 = a2[1];
      *a1 = v25;
      a1[1] = v26;
      sub_1DD0DCF8C();
    case 3u:
      v27 = *a2;
      v28 = a2[1];
      *a1 = v27;
      a1[1] = v28;
      sub_1DD0DCF8C();
    case 4u:
      v16 = sub_1DD0DB04C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = type metadata accessor for Input(0);
      v18 = v17[5];
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v22 = sub_1DD0DC76C();
          (*(*(v22 - 8) + 16))(v19, v20, v22);
          goto LABEL_82;
        case 1u:
          v53 = sub_1DD0DC76C();
          (*(*(v53 - 8) + 16))(v19, v20, v53);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v19[*(v54 + 48)] = *&v20[*(v54 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v46 = *(v20 + 1);
          *v19 = *v20;
          *(v19 + 1) = v46;
          *(v19 + 2) = *(v20 + 2);

          goto LABEL_82;
        case 3u:
          *v19 = *v20;
          swift_unknownObjectRetain();
          goto LABEL_82;
        case 4u:
          v44 = sub_1DD0DB1EC();
          (*(*(v44 - 8) + 16))(v19, v20, v44);
          goto LABEL_82;
        case 5u:
          v56 = *v20;
          *v19 = *v20;
          v57 = v56;
          goto LABEL_82;
        case 6u:
          v60 = sub_1DD0DB4BC();
          (*(*(v60 - 8) + 16))(v19, v20, v60);
          v61 = type metadata accessor for USOParse();
          v62 = v61[5];
          v63 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v62], 1, v63))
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v19[v62], &v20[v62], *(*(v64 - 8) + 64));
          }

          else
          {
            (*(*(v63 - 8) + 16))(&v19[v62], &v20[v62], v63);
            __swift_storeEnumTagSinglePayload(&v19[v62], 0, 1, v63);
          }

          v145 = v61[6];
          v146 = &v19[v145];
          v147 = &v20[v145];
          v148 = *(v147 + 1);
          *v146 = *v147;
          *(v146 + 1) = v148;
          v149 = v61[7];
          v150 = &v19[v149];
          v151 = &v20[v149];
          v150[4] = v151[4];
          *v150 = *v151;

          goto LABEL_82;
        case 7u:
          v47 = sub_1DD0DB4BC();
          (*(*(v47 - 8) + 16))(v19, v20, v47);
          v48 = type metadata accessor for USOParse();
          v49 = v48[5];
          v50 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v49], 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v19[v49], &v20[v49], *(*(v51 - 8) + 64));
          }

          else
          {
            (*(*(v50 - 8) + 16))(&v19[v49], &v20[v49], v50);
            __swift_storeEnumTagSinglePayload(&v19[v49], 0, 1, v50);
          }

          v125 = v48[6];
          v126 = &v19[v125];
          v127 = &v20[v125];
          v128 = *(v127 + 1);
          *v126 = *v127;
          *(v126 + 1) = v128;
          v129 = v48[7];
          v130 = &v19[v129];
          v131 = &v20[v129];
          v130[4] = v131[4];
          *v130 = *v131;
          v132 = type metadata accessor for LinkParse();
          v133 = v132[5];
          v134 = &v19[v133];
          v135 = &v20[v133];
          v136 = *(v135 + 1);
          *v134 = *v135;
          *(v134 + 1) = v136;
          v137 = v132[6];
          v138 = &v19[v137];
          v139 = &v20[v137];
          v140 = *(v139 + 1);
          *v138 = *v139;
          *(v138 + 1) = v140;
          v141 = v132[7];
          v142 = &v19[v141];
          v143 = &v20[v141];
          v144 = *(v143 + 1);
          *v142 = *v143;
          *(v142 + 1) = v144;

          goto LABEL_82;
        case 8u:
          v65 = sub_1DD0DD12C();
          (*(*(v65 - 8) + 16))(v19, v20, v65);
          v66 = type metadata accessor for NLRouterParse();
          v67 = *(v66 + 20);
          v68 = &v19[v67];
          v69 = &v20[v67];
          v70 = *(v69 + 1);
          *v68 = *v69;
          *(v68 + 1) = v70;
          v71 = *(v66 + 24);
          v277 = v66;
          __dst = &v19[v71];
          v72 = &v20[v71];
          v73 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v72, 1, v73))
          {
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v72, *(*(v74 - 8) + 64));
          }

          else
          {
            v152 = sub_1DD0DB4BC();
            (*(*(v152 - 8) + 16))(__dst, v72, v152);
            v153 = v73[5];
            v274 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v72[v153], 1, v274))
            {
              v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v153], &v72[v153], *(*(v154 - 8) + 64));
            }

            else
            {
              (*(*(v274 - 8) + 16))(&__dst[v153], &v72[v153]);
              __swift_storeEnumTagSinglePayload(&__dst[v153], 0, 1, v274);
            }

            v215 = v73[6];
            v216 = &__dst[v215];
            v217 = &v72[v215];
            v218 = *(v217 + 1);
            *v216 = *v217;
            *(v216 + 1) = v218;
            v219 = v73[7];
            v220 = &__dst[v219];
            v221 = &v72[v219];
            v220[4] = v221[4];
            *v220 = *v221;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v73);
          }

          v222 = *(v277 + 28);
          v223 = *&v20[v222];
          *&v19[v222] = v223;
          v224 = v223;
          goto LABEL_82;
        case 9u:
          v45 = sub_1DD0DD08C();
          (*(*(v45 - 8) + 16))(v19, v20, v45);
LABEL_82:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v19, v20, *(*(v21 - 8) + 64));
          break;
      }

      *(a1 + v17[6]) = *(a2 + v17[6]);
      v225 = v17[7];
      v226 = a1 + v225;
      v227 = a2 + v225;
      v228 = *(a2 + v225 + 24);

      if (v228)
      {
        v229 = *(v227 + 4);
        *(v226 + 3) = v228;
        *(v226 + 4) = v229;
        (**(v228 - 8))(v226, v227, v228);
      }

      else
      {
        v230 = *(v227 + 1);
        *v226 = *v227;
        *(v226 + 1) = v230;
        *(v226 + 4) = *(v227 + 4);
      }

      *(a1 + v17[8]) = *(a2 + v17[8]);
      v231 = *(a3 + 16);
      v232 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
      sub_1DD0DCF8C();
    case 5u:
      v29 = sub_1DD0DB04C();
      (*(*(v29 - 8) + 16))(a1, a2, v29);
      v30 = type metadata accessor for Input(0);
      v31 = v30[5];
      v32 = a1 + v31;
      v33 = a2 + v31;
      v34 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v35 = sub_1DD0DC76C();
          (*(*(v35 - 8) + 16))(v32, v33, v35);
          goto LABEL_98;
        case 1u:
          v91 = sub_1DD0DC76C();
          (*(*(v91 - 8) + 16))(v32, v33, v91);
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v32[*(v92 + 48)] = *&v33[*(v92 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v81 = *(v33 + 1);
          *v32 = *v33;
          *(v32 + 1) = v81;
          *(v32 + 2) = *(v33 + 2);

          goto LABEL_98;
        case 3u:
          *v32 = *v33;
          swift_unknownObjectRetain();
          goto LABEL_98;
        case 4u:
          v58 = sub_1DD0DB1EC();
          (*(*(v58 - 8) + 16))(v32, v33, v58);
          goto LABEL_98;
        case 5u:
          v108 = *v33;
          *v32 = *v33;
          v109 = v108;
          goto LABEL_98;
        case 6u:
          v110 = sub_1DD0DB4BC();
          (*(*(v110 - 8) + 16))(v32, v33, v110);
          v111 = type metadata accessor for USOParse();
          v112 = v111[5];
          v113 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v33[v112], 1, v113))
          {
            v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v32[v112], &v33[v112], *(*(v114 - 8) + 64));
          }

          else
          {
            (*(*(v113 - 8) + 16))(&v32[v112], &v33[v112], v113);
            __swift_storeEnumTagSinglePayload(&v32[v112], 0, 1, v113);
          }

          v205 = v111[6];
          v206 = &v32[v205];
          v207 = &v33[v205];
          v208 = *(v207 + 1);
          *v206 = *v207;
          *(v206 + 1) = v208;
          v209 = v111[7];
          v210 = &v32[v209];
          v211 = &v33[v209];
          v210[4] = v211[4];
          *v210 = *v211;

          goto LABEL_98;
        case 7u:
          v84 = sub_1DD0DB4BC();
          (*(*(v84 - 8) + 16))(v32, v33, v84);
          v85 = type metadata accessor for USOParse();
          v86 = v85[5];
          v87 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v33[v86], 1, v87))
          {
            v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v32[v86], &v33[v86], *(*(v88 - 8) + 64));
          }

          else
          {
            (*(*(v87 - 8) + 16))(&v32[v86], &v33[v86], v87);
            __swift_storeEnumTagSinglePayload(&v32[v86], 0, 1, v87);
          }

          v175 = v85[6];
          v176 = &v32[v175];
          v177 = &v33[v175];
          v178 = *(v177 + 1);
          *v176 = *v177;
          *(v176 + 1) = v178;
          v179 = v85[7];
          v180 = &v32[v179];
          v181 = &v33[v179];
          v180[4] = v181[4];
          *v180 = *v181;
          v182 = type metadata accessor for LinkParse();
          v183 = v182[5];
          v184 = &v32[v183];
          v185 = &v33[v183];
          v186 = *(v185 + 1);
          *v184 = *v185;
          *(v184 + 1) = v186;
          v187 = v182[6];
          v188 = &v32[v187];
          v189 = &v33[v187];
          v190 = *(v189 + 1);
          *v188 = *v189;
          *(v188 + 1) = v190;
          v191 = v182[7];
          v192 = &v32[v191];
          v193 = &v33[v191];
          v194 = *(v193 + 1);
          *v192 = *v193;
          *(v192 + 1) = v194;

          goto LABEL_98;
        case 8u:
          v115 = sub_1DD0DD12C();
          (*(*(v115 - 8) + 16))(v32, v33, v115);
          v116 = type metadata accessor for NLRouterParse();
          v117 = *(v116 + 20);
          v118 = &v32[v117];
          v119 = &v33[v117];
          v120 = *(v119 + 1);
          *v118 = *v119;
          *(v118 + 1) = v120;
          v121 = *(v116 + 24);
          v279 = v116;
          __dstb = &v32[v121];
          v122 = &v33[v121];
          v123 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v122, 1, v123))
          {
            v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v122, *(*(v124 - 8) + 64));
          }

          else
          {
            v212 = sub_1DD0DB4BC();
            (*(*(v212 - 8) + 16))(__dstb, v122, v212);
            v213 = v123[5];
            v276 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v122[v213], 1, v276))
            {
              v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v213], &v122[v213], *(*(v214 - 8) + 64));
            }

            else
            {
              (*(*(v276 - 8) + 16))(&__dstb[v213], &v122[v213]);
              __swift_storeEnumTagSinglePayload(&__dstb[v213], 0, 1, v276);
            }

            v255 = v123[6];
            v256 = &__dstb[v255];
            v257 = &v122[v255];
            v258 = *(v257 + 1);
            *v256 = *v257;
            *(v256 + 1) = v258;
            v259 = v123[7];
            v260 = &__dstb[v259];
            v261 = &v122[v259];
            v260[4] = v261[4];
            *v260 = *v261;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v123);
          }

          v262 = *(v279 + 28);
          v263 = *&v33[v262];
          *&v32[v262] = v263;
          v264 = v263;
          goto LABEL_98;
        case 9u:
          v75 = sub_1DD0DD08C();
          (*(*(v75 - 8) + 16))(v32, v33, v75);
LABEL_98:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v32, v33, *(*(v34 - 8) + 64));
          break;
      }

      *(a1 + v30[6]) = *(a2 + v30[6]);
      v265 = v30[7];
      v266 = a1 + v265;
      v267 = a2 + v265;
      v268 = *(a2 + v265 + 24);

      if (v268)
      {
        v269 = *(v267 + 4);
        *(v266 + 3) = v268;
        *(v266 + 4) = v269;
        (**(v268 - 8))(v266, v267, v268);
      }

      else
      {
        v270 = *(v267 + 1);
        *v266 = *v267;
        *(v266 + 1) = v270;
        *(v266 + 4) = *(v267 + 4);
      }

      *(a1 + v30[8]) = *(a2 + v30[8]);
      v271 = *(a3 + 16);
      v272 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v273 = swift_getTupleTypeMetadata2();
      *(a1 + *(v273 + 48)) = *(a2 + *(v273 + 48));
      sub_1DD0DCF8C();
    case 6u:
      v36 = *a2;
      v37 = a2[1];
      *a1 = v36;
      a1[1] = v37;
      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 8u:
      v41 = a2[1];
      *a1 = *a2;
      a1[1] = v41;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 9u:
      v23 = *a2;
      v24 = a2[1];
      *a1 = v23;
      a1[1] = v24;
      sub_1DD0DCF8C();
    case 0xAu:
      v38 = *a2;
      v39 = a2[1];
      v40 = a2[2];
      sub_1DCB72E48(v38);
      *a1 = v38;
      a1[1] = v39;
      a1[2] = v40;
      goto LABEL_103;
    case 0xBu:
      v14 = *a2;
      v15 = v14;
      *a1 = v14;
LABEL_103:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v42 = *(v6 + 64);

      result = memcpy(a1, a2, v42);
      break;
  }

  return result;
}

_BYTE *sub_1DCEEB99C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v21 = sub_1DD0DB04C();
      (*(*(v21 - 8) + 32))(a1, a2, v21);
      v15 = type metadata accessor for Input(0);
      v22 = v15[5];
      v23 = &a1[v22];
      v24 = &a2[v22];
      v25 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 32))(v23, v24, v26);
          goto LABEL_69;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 32))(v23, v24, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v23[*(v53 + 48)] = *&v24[*(v53 + 48)];
          goto LABEL_69;
        case 4u:
          v65 = sub_1DD0DB1EC();
          (*(*(v65 - 8) + 32))(v23, v24, v65);
          goto LABEL_69;
        case 6u:
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v23, v24, v72);
          v73 = type metadata accessor for USOParse();
          v74 = v73[5];
          v75 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v74], 1, v75))
          {
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v74], &v24[v74], *(*(v76 - 8) + 64));
          }

          else
          {
            (*(*(v75 - 8) + 32))(&v23[v74], &v24[v74], v75);
            __swift_storeEnumTagSinglePayload(&v23[v74], 0, 1, v75);
          }

          *&v23[v73[6]] = *&v24[v73[6]];
          v120 = v73[7];
          v121 = &v23[v120];
          v122 = &v24[v120];
          v121[4] = v122[4];
          *v121 = *v122;
          goto LABEL_69;
        case 7u:
          v77 = sub_1DD0DB4BC();
          (*(*(v77 - 8) + 32))(v23, v24, v77);
          v78 = type metadata accessor for USOParse();
          v79 = v78[5];
          v80 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v79], 1, v80))
          {
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v79], &v24[v79], *(*(v81 - 8) + 64));
          }

          else
          {
            (*(*(v80 - 8) + 32))(&v23[v79], &v24[v79], v80);
            __swift_storeEnumTagSinglePayload(&v23[v79], 0, 1, v80);
          }

          *&v23[v78[6]] = *&v24[v78[6]];
          v123 = v78[7];
          v124 = &v23[v123];
          v125 = &v24[v123];
          v124[4] = v125[4];
          *v124 = *v125;
          v126 = type metadata accessor for LinkParse();
          *&v23[v126[5]] = *&v24[v126[5]];
          *&v23[v126[6]] = *&v24[v126[6]];
          *&v23[v126[7]] = *&v24[v126[7]];
          goto LABEL_69;
        case 8u:
          v36 = sub_1DD0DD12C();
          (*(*(v36 - 8) + 32))(v23, v24, v36);
          v37 = type metadata accessor for NLRouterParse();
          *&v23[*(v37 + 20)] = *&v24[*(v37 + 20)];
          v167 = v37;
          v38 = *(v37 + 24);
          v39 = &v23[v38];
          v40 = &v24[v38];
          v41 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v40, 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v39, v40, *(*(v42 - 8) + 64));
          }

          else
          {
            v99 = sub_1DD0DB4BC();
            v164 = v39;
            (*(*(v99 - 8) + 32))(v39, v40, v99);
            v100 = v41[5];
            v101 = sub_1DD0DB3EC();
            v161 = v100;
            v102 = &v40[v100];
            v103 = v101;
            if (__swift_getEnumTagSinglePayload(v102, 1, v101))
            {
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v105 = v164;
              memcpy(&v164[v161], &v40[v161], *(*(v104 - 8) + 64));
            }

            else
            {
              v158 = v103;
              (*(*(v103 - 8) + 32))(&v164[v161], &v40[v161], v103);
              v105 = v164;
              __swift_storeEnumTagSinglePayload(&v164[v161], 0, 1, v158);
            }

            *(v105 + v41[6]) = *&v40[v41[6]];
            v144 = v41[7];
            v145 = v105 + v144;
            v146 = &v40[v144];
            *(v145 + 4) = v146[4];
            *v145 = *v146;
            __swift_storeEnumTagSinglePayload(v105, 0, 1, v41);
          }

          *&v23[*(v167 + 28)] = *&v24[*(v167 + 28)];
          goto LABEL_69;
        case 9u:
          v58 = sub_1DD0DD08C();
          (*(*(v58 - 8) + 32))(v23, v24, v58);
LABEL_69:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v23, v24, *(*(v25 - 8) + 64));
          break;
      }

      goto LABEL_65;
    case 4:
      v14 = sub_1DD0DB04C();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      v15 = type metadata accessor for Input(0);
      v16 = v15[5];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v17, v18, v20);
          goto LABEL_64;
        case 1u:
          v43 = sub_1DD0DC76C();
          (*(*(v43 - 8) + 32))(v17, v18, v43);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v17[*(v44 + 48)] = *&v18[*(v44 + 48)];
          goto LABEL_64;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 32))(v17, v18, v57);
          goto LABEL_64;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 32))(v17, v18, v59);
          v60 = type metadata accessor for USOParse();
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v61], &v18[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 32))(&v17[v61], &v18[v61], v62);
            __swift_storeEnumTagSinglePayload(&v17[v61], 0, 1, v62);
          }

          *&v17[v60[6]] = *&v18[v60[6]];
          v113 = v60[7];
          v114 = &v17[v113];
          v115 = &v18[v113];
          v114[4] = v115[4];
          *v114 = *v115;
          goto LABEL_64;
        case 7u:
          v66 = sub_1DD0DB4BC();
          (*(*(v66 - 8) + 32))(v17, v18, v66);
          v67 = type metadata accessor for USOParse();
          v68 = v67[5];
          v69 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v68], 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v68], &v18[v68], *(*(v70 - 8) + 64));
          }

          else
          {
            (*(*(v69 - 8) + 32))(&v17[v68], &v18[v68], v69);
            __swift_storeEnumTagSinglePayload(&v17[v68], 0, 1, v69);
          }

          *&v17[v67[6]] = *&v18[v67[6]];
          v116 = v67[7];
          v117 = &v17[v116];
          v118 = &v18[v116];
          v117[4] = v118[4];
          *v117 = *v118;
          v119 = type metadata accessor for LinkParse();
          *&v17[v119[5]] = *&v18[v119[5]];
          *&v17[v119[6]] = *&v18[v119[6]];
          *&v17[v119[7]] = *&v18[v119[7]];
          goto LABEL_64;
        case 8u:
          v29 = sub_1DD0DD12C();
          (*(*(v29 - 8) + 32))(v17, v18, v29);
          v30 = type metadata accessor for NLRouterParse();
          *&v17[*(v30 + 20)] = *&v18[*(v30 + 20)];
          v166 = v30;
          v31 = *(v30 + 24);
          v32 = &v17[v31];
          v33 = &v18[v31];
          v34 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v33, 1, v34))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v32, v33, *(*(v35 - 8) + 64));
          }

          else
          {
            v92 = sub_1DD0DB4BC();
            v163 = v32;
            (*(*(v92 - 8) + 32))(v32, v33, v92);
            v93 = v34[5];
            v94 = sub_1DD0DB3EC();
            v160 = v93;
            v95 = &v33[v93];
            v96 = v94;
            if (__swift_getEnumTagSinglePayload(v95, 1, v94))
            {
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v98 = v163;
              memcpy(&v163[v160], &v33[v160], *(*(v97 - 8) + 64));
            }

            else
            {
              v157 = v96;
              (*(*(v96 - 8) + 32))(&v163[v160], &v33[v160], v96);
              v98 = v163;
              __swift_storeEnumTagSinglePayload(&v163[v160], 0, 1, v157);
            }

            *(v98 + v34[6]) = *&v33[v34[6]];
            v134 = v34[7];
            v135 = v98 + v134;
            v136 = &v33[v134];
            *(v135 + 4) = v136[4];
            *v135 = *v136;
            __swift_storeEnumTagSinglePayload(v98, 0, 1, v34);
          }

          *&v17[*(v166 + 28)] = *&v18[*(v166 + 28)];
          goto LABEL_64;
        case 9u:
          v56 = sub_1DD0DD08C();
          (*(*(v56 - 8) + 32))(v17, v18, v56);
LABEL_64:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v17, v18, *(*(v19 - 8) + 64));
          break;
      }

LABEL_65:
      *&a1[v15[6]] = *&a2[v15[6]];
      v137 = v15[7];
      v138 = &a1[v137];
      v139 = &a2[v137];
      v140 = *(v139 + 1);
      *v138 = *v139;
      *(v138 + 1) = v140;
      *(v138 + 4) = *(v139 + 4);
      a1[v15[8]] = a2[v15[8]];
      v141 = *(a3 + 16);
      v142 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_76:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for Input(0);
      v9 = v8[5];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v12 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 32))(v10, v11, v13);
          goto LABEL_74;
        case 1u:
          v54 = sub_1DD0DC76C();
          (*(*(v54 - 8) + 32))(v10, v11, v54);
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v10[*(v55 + 48)] = *&v11[*(v55 + 48)];
          goto LABEL_74;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v10, v11, v71);
          goto LABEL_74;
        case 6u:
          v82 = sub_1DD0DB4BC();
          (*(*(v82 - 8) + 32))(v10, v11, v82);
          v83 = type metadata accessor for USOParse();
          v84 = v83[5];
          v85 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v84], 1, v85))
          {
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v84], &v11[v84], *(*(v86 - 8) + 64));
          }

          else
          {
            (*(*(v85 - 8) + 32))(&v10[v84], &v11[v84], v85);
            __swift_storeEnumTagSinglePayload(&v10[v84], 0, 1, v85);
          }

          *&v10[v83[6]] = *&v11[v83[6]];
          v127 = v83[7];
          v128 = &v10[v127];
          v129 = &v11[v127];
          v128[4] = v129[4];
          *v128 = *v129;
          goto LABEL_74;
        case 7u:
          v87 = sub_1DD0DB4BC();
          (*(*(v87 - 8) + 32))(v10, v11, v87);
          v88 = type metadata accessor for USOParse();
          v89 = v88[5];
          v90 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v89], 1, v90))
          {
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v89], &v11[v89], *(*(v91 - 8) + 64));
          }

          else
          {
            (*(*(v90 - 8) + 32))(&v10[v89], &v11[v89], v90);
            __swift_storeEnumTagSinglePayload(&v10[v89], 0, 1, v90);
          }

          *&v10[v88[6]] = *&v11[v88[6]];
          v130 = v88[7];
          v131 = &v10[v130];
          v132 = &v11[v130];
          v131[4] = v132[4];
          *v131 = *v132;
          v133 = type metadata accessor for LinkParse();
          *&v10[v133[5]] = *&v11[v133[5]];
          *&v10[v133[6]] = *&v11[v133[6]];
          *&v10[v133[7]] = *&v11[v133[7]];
          goto LABEL_74;
        case 8u:
          v45 = sub_1DD0DD12C();
          (*(*(v45 - 8) + 32))(v10, v11, v45);
          v46 = type metadata accessor for NLRouterParse();
          *&v10[*(v46 + 20)] = *&v11[*(v46 + 20)];
          v168 = v46;
          v47 = *(v46 + 24);
          v48 = &v10[v47];
          v49 = &v11[v47];
          v50 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v48, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v106 = sub_1DD0DB4BC();
            v165 = v48;
            (*(*(v106 - 8) + 32))(v48, v49, v106);
            v107 = v50[5];
            v108 = sub_1DD0DB3EC();
            v162 = v107;
            v109 = &v49[v107];
            v110 = v108;
            if (__swift_getEnumTagSinglePayload(v109, 1, v108))
            {
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v112 = v165;
              memcpy(&v165[v162], &v49[v162], *(*(v111 - 8) + 64));
            }

            else
            {
              v159 = v110;
              (*(*(v110 - 8) + 32))(&v165[v162], &v49[v162], v110);
              v112 = v165;
              __swift_storeEnumTagSinglePayload(&v165[v162], 0, 1, v159);
            }

            *(v112 + v50[6]) = *&v49[v50[6]];
            v147 = v50[7];
            v148 = v112 + v147;
            v149 = &v49[v147];
            *(v148 + 4) = v149[4];
            *v148 = *v149;
            __swift_storeEnumTagSinglePayload(v112, 0, 1, v50);
          }

          *&v10[*(v168 + 28)] = *&v11[*(v168 + 28)];
          goto LABEL_74;
        case 9u:
          v64 = sub_1DD0DD08C();
          (*(*(v64 - 8) + 32))(v10, v11, v64);
LABEL_74:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v10, v11, *(*(v12 - 8) + 64));
          break;
      }

      *&a1[v8[6]] = *&a2[v8[6]];
      v150 = v8[7];
      v151 = &a1[v150];
      v152 = &a2[v150];
      v153 = *(v152 + 1);
      *v151 = *v152;
      *(v151 + 1) = v153;
      *(v151 + 4) = *(v152 + 4);
      a1[v8[8]] = a2[v8[8]];
      v154 = *(a3 + 16);
      v155 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      v156 = swift_getTupleTypeMetadata2();
      *&a1[*(v156 + 48)] = *&a2[*(v156 + 48)];
      goto LABEL_76;
  }

  v27 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v27);
}

uint64_t sub_1DCEED038(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEED0C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();
  return sub_1DCEE28B4(v3);
}

uint64_t sub_1DCEED134(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(v6 + 8) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for AnnotatedIntent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_25_0();
  v8 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v8);
  v10 = v2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1DCEE222C(a1, a2 & 1, v10, v5, v6);
}

uint64_t sub_1DCEED214()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_21_1();

  return sub_1DCEE82AC(v6, v7, v1);
}

uint64_t sub_1DCEED2AC()
{
  v1 = OUTLINED_FUNCTION_70();
  v2 = type metadata accessor for Input(v1);
  OUTLINED_FUNCTION_99(v2);
  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AD3C;
  v10 = OUTLINED_FUNCTION_21_1();

  return sub_1DCEE7C24(v10, v11, v12, v6);
}

uint64_t sub_1DCEED3AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCEED3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCEED454()
{
  v1 = OUTLINED_FUNCTION_70();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DCEED4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for RCHFlowAsync.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

unint64_t *sub_1DCEED530(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RCHFlowAsync.State();
  if (__swift_getEnumTagSinglePayload(a2, 1, v8))
  {
    v9 = *(v5 + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        v12 = type metadata accessor for Input(0);
        v13 = v12[5];
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            (*(*(v17 - 8) + 16))(v14, v15, v17);
            goto LABEL_92;
          case 1u:
            v81 = sub_1DD0DC76C();
            (*(*(v81 - 8) + 16))(v14, v15, v81);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v14[*(v82 + 48)] = *&v15[*(v82 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v60 = *(v15 + 1);
            *v14 = *v15;
            *(v14 + 1) = v60;
            *(v14 + 2) = *(v15 + 2);

            goto LABEL_92;
          case 3u:
            *v14 = *v15;
            swift_unknownObjectRetain();
            goto LABEL_92;
          case 4u:
            v53 = sub_1DD0DB1EC();
            (*(*(v53 - 8) + 16))(v14, v15, v53);
            goto LABEL_92;
          case 5u:
            v87 = *v15;
            *v14 = *v15;
            v88 = v87;
            goto LABEL_92;
          case 6u:
            v91 = sub_1DD0DB4BC();
            (*(*(v91 - 8) + 16))(v14, v15, v91);
            __dste = type metadata accessor for USOParse();
            v92 = __dste[5];
            v93 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v92], 1, v93))
            {
              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v92], &v15[v92], *(*(v94 - 8) + 64));
            }

            else
            {
              (*(*(v93 - 8) + 16))(&v14[v92], &v15[v92], v93);
              __swift_storeEnumTagSinglePayload(&v14[v92], 0, 1, v93);
            }

            v188 = __dste[6];
            v189 = &v14[v188];
            v190 = &v15[v188];
            v191 = *(v190 + 1);
            *v189 = *v190;
            *(v189 + 1) = v191;
            v192 = __dste[7];
            v193 = &v14[v192];
            v194 = &v15[v192];
            v193[4] = v194[4];
            *v193 = *v194;

            goto LABEL_92;
          case 7u:
            v76 = sub_1DD0DB4BC();
            (*(*(v76 - 8) + 16))(v14, v15, v76);
            __dstc = type metadata accessor for USOParse();
            v77 = __dstc[5];
            v78 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v77], 1, v78))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v77], &v15[v77], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v78 - 8) + 16))(&v14[v77], &v15[v77], v78);
              __swift_storeEnumTagSinglePayload(&v14[v77], 0, 1, v78);
            }

            v150 = __dstc[6];
            v151 = &v14[v150];
            v152 = &v15[v150];
            v274 = *(v152 + 1);
            *v151 = *v152;
            *(v151 + 1) = v274;
            v153 = __dstc[7];
            v154 = &v14[v153];
            v155 = &v15[v153];
            v154[4] = v155[4];
            *v154 = *v155;
            v156 = type metadata accessor for LinkParse();
            v157 = v156[5];
            v158 = &v14[v157];
            v159 = &v15[v157];
            v160 = *(v159 + 1);
            *v158 = *v159;
            *(v158 + 1) = v160;
            v161 = v156[6];
            v162 = &v14[v161];
            v163 = &v15[v161];
            v164 = *(v163 + 1);
            *v162 = *v163;
            *(v162 + 1) = v164;
            v165 = v156[7];
            v166 = &v14[v165];
            v167 = &v15[v165];
            v168 = *(v167 + 1);
            *v166 = *v167;
            *(v166 + 1) = v168;

            goto LABEL_92;
          case 8u:
            v95 = sub_1DD0DD12C();
            (*(*(v95 - 8) + 16))(v14, v15, v95);
            v96 = type metadata accessor for NLRouterParse();
            v97 = *(v96 + 20);
            v98 = &v14[v97];
            v99 = &v15[v97];
            v100 = *(v99 + 1);
            *v98 = *v99;
            *(v98 + 1) = v100;
            v101 = *(v96 + 24);
            v271 = v96;
            __dstf = &v14[v101];
            v102 = &v15[v101];
            v103 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v102, 1, v103))
            {
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstf, v102, *(*(v104 - 8) + 64));
            }

            else
            {
              v195 = sub_1DD0DB4BC();
              (*(*(v195 - 8) + 16))(__dstf, v102, v195);
              v268 = v103;
              v196 = *(v103 + 20);
              v265 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v102[v196], 1, v265))
              {
                v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstf[v196], &v102[v196], *(*(v197 - 8) + 64));
              }

              else
              {
                (*(*(v265 - 8) + 16))(&__dstf[v196], &v102[v196]);
                __swift_storeEnumTagSinglePayload(&__dstf[v196], 0, 1, v265);
              }

              v226 = *(v268 + 24);
              v227 = &__dstf[v226];
              v228 = &v102[v226];
              v229 = *(v228 + 1);
              *v227 = *v228;
              *(v227 + 1) = v229;
              v230 = *(v268 + 28);
              v231 = &__dstf[v230];
              v232 = &v102[v230];
              v231[4] = v232[4];
              *v231 = *v232;

              __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v268);
            }

            v233 = *(v271 + 28);
            v234 = *&v15[v233];
            *&v14[v233] = v234;
            v235 = v234;
            goto LABEL_92;
          case 9u:
            v56 = sub_1DD0DD08C();
            (*(*(v56 - 8) + 16))(v14, v15, v56);
LABEL_92:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v14, v15, *(*(v16 - 8) + 64));
            break;
        }

        *(a1 + v12[6]) = *(a2 + v12[6]);
        v236 = v12[7];
        v237 = a1 + v236;
        v238 = a2 + v236;
        v239 = *(a2 + v236 + 24);

        if (v239)
        {
          v240 = *(v238 + 4);
          *(v237 + 3) = v239;
          *(v237 + 4) = v240;
          (**(v239 - 8))(v237, v238, v239);
        }

        else
        {
          v241 = *(v238 + 1);
          *v237 = *v238;
          *(v237 + 1) = v241;
          *(v237 + 4) = *(v238 + 4);
        }

        *(a1 + v12[8]) = *(a2 + v12[8]);
        v242 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        v243 = *(swift_getTupleTypeMetadata2() + 48);
        v244 = *(a2 + v243);
        *(a1 + v243) = v244;
        v245 = v244;
        goto LABEL_105;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        v29 = *a2;
        v30 = a2[1];
        *a1 = v29;
        a1[1] = v30;
        sub_1DD0DCF8C();
      case 3u:
        v31 = *a2;
        v32 = a2[1];
        *a1 = v31;
        a1[1] = v32;
        sub_1DD0DCF8C();
      case 4u:
        v20 = sub_1DD0DB04C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v21 = type metadata accessor for Input(0);
        v22 = v21[5];
        v23 = a1 + v22;
        v24 = a2 + v22;
        v25 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v26 = sub_1DD0DC76C();
            (*(*(v26 - 8) + 16))(v23, v24, v26);
            goto LABEL_84;
          case 1u:
            v54 = sub_1DD0DC76C();
            (*(*(v54 - 8) + 16))(v23, v24, v54);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v23[*(v55 + 48)] = *&v24[*(v55 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v48 = *(v24 + 1);
            *v23 = *v24;
            *(v23 + 1) = v48;
            *(v23 + 2) = *(v24 + 2);

            goto LABEL_84;
          case 3u:
            *v23 = *v24;
            swift_unknownObjectRetain();
            goto LABEL_84;
          case 4u:
            v46 = sub_1DD0DB1EC();
            (*(*(v46 - 8) + 16))(v23, v24, v46);
            goto LABEL_84;
          case 5u:
            v57 = *v24;
            *v23 = *v24;
            v58 = v57;
            goto LABEL_84;
          case 6u:
            v61 = sub_1DD0DB4BC();
            (*(*(v61 - 8) + 16))(v23, v24, v61);
            __dsta = type metadata accessor for USOParse();
            v62 = __dsta[5];
            v63 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v24[v62], 1, v63))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v23[v62], &v24[v62], *(*(v64 - 8) + 64));
            }

            else
            {
              (*(*(v63 - 8) + 16))(&v23[v62], &v24[v62], v63);
              __swift_storeEnumTagSinglePayload(&v23[v62], 0, 1, v63);
            }

            v140 = __dsta[6];
            v141 = &v23[v140];
            v142 = &v24[v140];
            v143 = *(v142 + 1);
            *v141 = *v142;
            *(v141 + 1) = v143;
            v144 = __dsta[7];
            v145 = &v23[v144];
            v146 = &v24[v144];
            v145[4] = v146[4];
            *v145 = *v146;

            goto LABEL_84;
          case 7u:
            v49 = sub_1DD0DB4BC();
            (*(*(v49 - 8) + 16))(v23, v24, v49);
            __dst = type metadata accessor for USOParse();
            v50 = __dst[5];
            v51 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v24[v50], 1, v51))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v23[v50], &v24[v50], *(*(v52 - 8) + 64));
            }

            else
            {
              (*(*(v51 - 8) + 16))(&v23[v50], &v24[v50], v51);
              __swift_storeEnumTagSinglePayload(&v23[v50], 0, 1, v51);
            }

            v121 = __dst[6];
            v122 = &v23[v121];
            v123 = &v24[v121];
            v273 = *(v123 + 1);
            *v122 = *v123;
            *(v122 + 1) = v273;
            v124 = __dst[7];
            v125 = &v23[v124];
            v126 = &v24[v124];
            v125[4] = v126[4];
            *v125 = *v126;
            v127 = type metadata accessor for LinkParse();
            v128 = v127[5];
            v129 = &v23[v128];
            v130 = &v24[v128];
            v131 = *(v130 + 1);
            *v129 = *v130;
            *(v129 + 1) = v131;
            v132 = v127[6];
            v133 = &v23[v132];
            v134 = &v24[v132];
            v135 = *(v134 + 1);
            *v133 = *v134;
            *(v133 + 1) = v135;
            v136 = v127[7];
            v137 = &v23[v136];
            v138 = &v24[v136];
            v139 = *(v138 + 1);
            *v137 = *v138;
            *(v137 + 1) = v139;

            goto LABEL_84;
          case 8u:
            v65 = sub_1DD0DD12C();
            (*(*(v65 - 8) + 16))(v23, v24, v65);
            v66 = type metadata accessor for NLRouterParse();
            v67 = *(v66 + 20);
            v68 = &v23[v67];
            v69 = &v24[v67];
            v70 = *(v69 + 1);
            *v68 = *v69;
            *(v68 + 1) = v70;
            v71 = *(v66 + 24);
            v270 = v66;
            __dstb = &v23[v71];
            v72 = &v24[v71];
            v73 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v72, 1, v73))
            {
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v72, *(*(v74 - 8) + 64));
            }

            else
            {
              v147 = sub_1DD0DB4BC();
              (*(*(v147 - 8) + 16))(__dstb, v72, v147);
              v267 = v73;
              v148 = *(v73 + 20);
              v264 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v72[v148], 1, v264))
              {
                v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v148], &v72[v148], *(*(v149 - 8) + 64));
              }

              else
              {
                (*(*(v264 - 8) + 16))(&__dstb[v148], &v72[v148]);
                __swift_storeEnumTagSinglePayload(&__dstb[v148], 0, 1, v264);
              }

              v208 = *(v267 + 24);
              v209 = &__dstb[v208];
              v210 = &v72[v208];
              v211 = *(v210 + 1);
              *v209 = *v210;
              *(v209 + 1) = v211;
              v212 = *(v267 + 28);
              v213 = &__dstb[v212];
              v214 = &v72[v212];
              v213[4] = v214[4];
              *v213 = *v214;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v267);
            }

            v215 = *(v270 + 28);
            v216 = *&v24[v215];
            *&v23[v215] = v216;
            v217 = v216;
            goto LABEL_84;
          case 9u:
            v47 = sub_1DD0DD08C();
            (*(*(v47 - 8) + 16))(v23, v24, v47);
LABEL_84:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v23, v24, *(*(v25 - 8) + 64));
            break;
        }

        *(a1 + v21[6]) = *(a2 + v21[6]);
        v218 = v21[7];
        v219 = a1 + v218;
        v220 = a2 + v218;
        v221 = *(a2 + v218 + 24);

        if (v221)
        {
          v222 = *(v220 + 4);
          *(v219 + 3) = v221;
          *(v219 + 4) = v222;
          (**(v221 - 8))(v219, v220, v221);
        }

        else
        {
          v223 = *(v220 + 1);
          *v219 = *v220;
          *(v219 + 1) = v223;
          *(v219 + 4) = *(v220 + 4);
        }

        *(a1 + v21[8]) = *(a2 + v21[8]);
        v224 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v33 = sub_1DD0DB04C();
        (*(*(v33 - 8) + 16))(a1, a2, v33);
        v34 = type metadata accessor for Input(0);
        v35 = v34[5];
        v36 = a1 + v35;
        v37 = a2 + v35;
        v38 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v39 = sub_1DD0DC76C();
            (*(*(v39 - 8) + 16))(v36, v37, v39);
            goto LABEL_100;
          case 1u:
            v89 = sub_1DD0DC76C();
            (*(*(v89 - 8) + 16))(v36, v37, v89);
            v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v36[*(v90 + 48)] = *&v37[*(v90 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v80 = *(v37 + 1);
            *v36 = *v37;
            *(v36 + 1) = v80;
            *(v36 + 2) = *(v37 + 2);

            goto LABEL_100;
          case 3u:
            *v36 = *v37;
            swift_unknownObjectRetain();
            goto LABEL_100;
          case 4u:
            v59 = sub_1DD0DB1EC();
            (*(*(v59 - 8) + 16))(v36, v37, v59);
            goto LABEL_100;
          case 5u:
            v105 = *v37;
            *v36 = *v37;
            v106 = v105;
            goto LABEL_100;
          case 6u:
            v107 = sub_1DD0DB4BC();
            (*(*(v107 - 8) + 16))(v36, v37, v107);
            __dstg = type metadata accessor for USOParse();
            v108 = __dstg[5];
            v109 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v37[v108], 1, v109))
            {
              v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v36[v108], &v37[v108], *(*(v110 - 8) + 64));
            }

            else
            {
              (*(*(v109 - 8) + 16))(&v36[v108], &v37[v108], v109);
              __swift_storeEnumTagSinglePayload(&v36[v108], 0, 1, v109);
            }

            v198 = __dstg[6];
            v199 = &v36[v198];
            v200 = &v37[v198];
            v201 = *(v200 + 1);
            *v199 = *v200;
            *(v199 + 1) = v201;
            v202 = __dstg[7];
            v203 = &v36[v202];
            v204 = &v37[v202];
            v203[4] = v204[4];
            *v203 = *v204;

            goto LABEL_100;
          case 7u:
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(v36, v37, v83);
            __dstd = type metadata accessor for USOParse();
            v84 = __dstd[5];
            v85 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v37[v84], 1, v85))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v36[v84], &v37[v84], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v85 - 8) + 16))(&v36[v84], &v37[v84], v85);
              __swift_storeEnumTagSinglePayload(&v36[v84], 0, 1, v85);
            }

            v169 = __dstd[6];
            v170 = &v36[v169];
            v171 = &v37[v169];
            v275 = *(v171 + 1);
            *v170 = *v171;
            *(v170 + 1) = v275;
            v172 = __dstd[7];
            v173 = &v36[v172];
            v174 = &v37[v172];
            v173[4] = v174[4];
            *v173 = *v174;
            v175 = type metadata accessor for LinkParse();
            v176 = v175[5];
            v177 = &v36[v176];
            v178 = &v37[v176];
            v179 = *(v178 + 1);
            *v177 = *v178;
            *(v177 + 1) = v179;
            v180 = v175[6];
            v181 = &v36[v180];
            v182 = &v37[v180];
            v183 = *(v182 + 1);
            *v181 = *v182;
            *(v181 + 1) = v183;
            v184 = v175[7];
            v185 = &v36[v184];
            v186 = &v37[v184];
            v187 = *(v186 + 1);
            *v185 = *v186;
            *(v185 + 1) = v187;

            goto LABEL_100;
          case 8u:
            v111 = sub_1DD0DD12C();
            (*(*(v111 - 8) + 16))(v36, v37, v111);
            v112 = type metadata accessor for NLRouterParse();
            v113 = *(v112 + 20);
            v114 = &v36[v113];
            v115 = &v37[v113];
            v116 = *(v115 + 1);
            *v114 = *v115;
            *(v114 + 1) = v116;
            v117 = *(v112 + 24);
            v272 = v112;
            __dsth = &v36[v117];
            v118 = &v37[v117];
            v119 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v118, 1, v119))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsth, v118, *(*(v120 - 8) + 64));
            }

            else
            {
              v205 = sub_1DD0DB4BC();
              (*(*(v205 - 8) + 16))(__dsth, v118, v205);
              v269 = v119;
              v206 = *(v119 + 20);
              v266 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v118[v206], 1, v266))
              {
                v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsth[v206], &v118[v206], *(*(v207 - 8) + 64));
              }

              else
              {
                (*(*(v266 - 8) + 16))(&__dsth[v206], &v118[v206]);
                __swift_storeEnumTagSinglePayload(&__dsth[v206], 0, 1, v266);
              }

              v246 = *(v269 + 24);
              v247 = &__dsth[v246];
              v248 = &v118[v246];
              v249 = *(v248 + 1);
              *v247 = *v248;
              *(v247 + 1) = v249;
              v250 = *(v269 + 28);
              v251 = &__dsth[v250];
              v252 = &v118[v250];
              v251[4] = v252[4];
              *v251 = *v252;

              __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v269);
            }

            v253 = *(v272 + 28);
            v254 = *&v37[v253];
            *&v36[v253] = v254;
            v255 = v254;
            goto LABEL_100;
          case 9u:
            v75 = sub_1DD0DD08C();
            (*(*(v75 - 8) + 16))(v36, v37, v75);
LABEL_100:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v36, v37, *(*(v38 - 8) + 64));
            break;
        }

        *(a1 + v34[6]) = *(a2 + v34[6]);
        v256 = v34[7];
        v257 = a1 + v256;
        v258 = a2 + v256;
        v259 = *(a2 + v256 + 24);

        if (v259)
        {
          v260 = *(v258 + 4);
          *(v257 + 3) = v259;
          *(v257 + 4) = v260;
          (**(v259 - 8))(v257, v258, v259);
        }

        else
        {
          v261 = *(v258 + 1);
          *v257 = *v258;
          *(v257 + 1) = v261;
          *(v257 + 4) = *(v258 + 4);
        }

        *(a1 + v34[8]) = *(a2 + v34[8]);
        v262 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        v263 = swift_getTupleTypeMetadata2();
        *(a1 + *(v263 + 48)) = *(a2 + *(v263 + 48));
        sub_1DD0DCF8C();
      case 6u:
        v40 = *a2;
        v41 = a2[1];
        *a1 = v40;
        a1[1] = v41;
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        v45 = a2[1];
        *a1 = *a2;
        a1[1] = v45;
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        v27 = *a2;
        v28 = a2[1];
        *a1 = v27;
        a1[1] = v28;
        sub_1DD0DCF8C();
      case 0xAu:
        v42 = *a2;
        v43 = a2[1];
        v44 = a2[2];
        sub_1DCB72E48(v42);
        *a1 = v42;
        a1[1] = v43;
        a1[2] = v44;
        goto LABEL_105;
      case 0xBu:
        v18 = *a2;
        v19 = v18;
        *a1 = v18;
LABEL_105:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        break;
    }

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
    return a1;
  }
}

void sub_1DCEEF130(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for RCHFlowAsync.State();
  if (!__swift_getEnumTagSinglePayload(a1, 1, v5))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = type metadata accessor for Input(0);
        v13 = (a1 + v12[5]);
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v14 = sub_1DD0DC76C();
            goto LABEL_48;
          case 1u:
            v66 = sub_1DD0DC76C();
            (*(*(v66 - 8) + 8))(v13, v66);
            v67 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

            break;
          case 2u:
            v54 = *(v13 + 1);

            v55 = *(v13 + 2);
            goto LABEL_60;
          case 3u:
            v56 = *v13;
            swift_unknownObjectRelease();
            break;
          case 4u:
            v14 = sub_1DD0DB1EC();
            goto LABEL_48;
          case 5u:
            v68 = *v13;
            goto LABEL_66;
          case 6u:
            v69 = sub_1DD0DB4BC();
            (*(*(v69 - 8) + 8))(v13, v69);
            v70 = type metadata accessor for USOParse();
            v71 = *(v70 + 20);
            v72 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(&v13[v71], 1, v72))
            {
              (*(*(v72 - 8) + 8))(&v13[v71], v72);
            }

            v65 = *(v70 + 24);
            goto LABEL_59;
          case 7u:
            v57 = sub_1DD0DB4BC();
            (*(*(v57 - 8) + 8))(v13, v57);
            v58 = type metadata accessor for USOParse();
            v59 = *(v58 + 20);
            v60 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(&v13[v59], 1, v60))
            {
              (*(*(v60 - 8) + 8))(&v13[v59], v60);
            }

            v61 = *&v13[*(v58 + 24) + 8];

            v62 = type metadata accessor for LinkParse();
            v63 = *&v13[v62[5] + 8];

            v64 = *&v13[v62[6] + 8];

            v65 = v62[7];
LABEL_59:
            v73 = *&v13[v65 + 8];
LABEL_60:

            break;
          case 8u:
            v74 = sub_1DD0DD12C();
            (*(*(v74 - 8) + 8))(v13, v74);
            v75 = type metadata accessor for NLRouterParse();
            v76 = *&v13[v75[5] + 8];

            v77 = &v13[v75[6]];
            v78 = type metadata accessor for USOParse();
            if (!__swift_getEnumTagSinglePayload(v77, 1, v78))
            {
              v79 = sub_1DD0DB4BC();
              (*(*(v79 - 8) + 8))(v77, v79);
              v80 = *(v78 + 20);
              v81 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v77 + v80, 1, v81))
              {
                (*(*(v81 - 8) + 8))(v77 + v80, v81);
              }

              v82 = *(v77 + *(v78 + 24) + 8);
            }

            v68 = *&v13[v75[7]];
LABEL_66:

            break;
          case 9u:
            v14 = sub_1DD0DD08C();
LABEL_48:
            (*(*(v14 - 8) + 8))(v13, v14);
            break;
          default:
            break;
        }

        v83 = *(a1 + v12[6]);

        v84 = (a1 + v12[7]);
        if (v84[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
        }

        v85 = *(*(v4 + 8) + 8);
        swift_getAssociatedTypeWitness();
        v9 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
        goto LABEL_70;
      case 1u:
      case 7u:
        v8 = *a1;
        goto LABEL_43;
      case 2u:
      case 3u:
      case 6u:
        v6 = *a1;

        v7 = *(a1 + 8);

        return;
      case 4u:
        v18 = sub_1DD0DB04C();
        (*(*(v18 - 8) + 8))(a1, v18);
        v16 = type metadata accessor for Input(0);
        v17 = (a1 + v16[5]);
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            goto LABEL_16;
          case 1u:
            goto LABEL_27;
          case 2u:
            goto LABEL_22;
          case 3u:
            goto LABEL_23;
          case 4u:
            goto LABEL_19;
          case 5u:
            goto LABEL_28;
          case 6u:
            goto LABEL_29;
          case 7u:
            goto LABEL_24;
          case 8u:
            goto LABEL_34;
          case 9u:
            goto LABEL_20;
          default:
            goto LABEL_40;
        }

        goto LABEL_40;
      case 5u:
        v15 = sub_1DD0DB04C();
        (*(*(v15 - 8) + 8))(a1, v15);
        v16 = type metadata accessor for Input(0);
        v17 = (a1 + v16[5]);
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
LABEL_16:
            v19 = sub_1DD0DC76C();
            goto LABEL_21;
          case 1u:
LABEL_27:
            v33 = sub_1DD0DC76C();
            (*(*(v33 - 8) + 8))(v17, v33);
            v34 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

            break;
          case 2u:
LABEL_22:
            v21 = *(v17 + 1);

            v22 = *(v17 + 2);
            goto LABEL_33;
          case 3u:
LABEL_23:
            v23 = *v17;
            swift_unknownObjectRelease();
            break;
          case 4u:
LABEL_19:
            v19 = sub_1DD0DB1EC();
            goto LABEL_21;
          case 5u:
LABEL_28:
            v35 = *v17;
            goto LABEL_39;
          case 6u:
LABEL_29:
            v36 = sub_1DD0DB4BC();
            (*(*(v36 - 8) + 8))(v17, v36);
            v37 = type metadata accessor for USOParse();
            v38 = *(v37 + 20);
            v39 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(&v17[v38], 1, v39))
            {
              (*(*(v39 - 8) + 8))(&v17[v38], v39);
            }

            v32 = *(v37 + 24);
            goto LABEL_32;
          case 7u:
LABEL_24:
            v24 = sub_1DD0DB4BC();
            (*(*(v24 - 8) + 8))(v17, v24);
            v25 = type metadata accessor for USOParse();
            v26 = *(v25 + 20);
            v27 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(&v17[v26], 1, v27))
            {
              (*(*(v27 - 8) + 8))(&v17[v26], v27);
            }

            v28 = *&v17[*(v25 + 24) + 8];

            v29 = type metadata accessor for LinkParse();
            v30 = *&v17[v29[5] + 8];

            v31 = *&v17[v29[6] + 8];

            v32 = v29[7];
LABEL_32:
            v40 = *&v17[v32 + 8];
LABEL_33:

            break;
          case 8u:
LABEL_34:
            v41 = sub_1DD0DD12C();
            (*(*(v41 - 8) + 8))(v17, v41);
            v42 = type metadata accessor for NLRouterParse();
            v43 = *&v17[v42[5] + 8];

            v44 = &v17[v42[6]];
            v45 = type metadata accessor for USOParse();
            if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
            {
              v46 = sub_1DD0DB4BC();
              (*(*(v46 - 8) + 8))(v44, v46);
              v47 = *(v45 + 20);
              v48 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v44 + v47, 1, v48))
              {
                (*(*(v48 - 8) + 8))(v44 + v47, v48);
              }

              v49 = *(v44 + *(v45 + 24) + 8);
            }

            v35 = *&v17[v42[7]];
LABEL_39:

            break;
          case 9u:
LABEL_20:
            v19 = sub_1DD0DD08C();
LABEL_21:
            (*(*(v19 - 8) + 8))(v17, v19);
            break;
          default:
            break;
        }

LABEL_40:
        v50 = *(a1 + v16[6]);

        v51 = (a1 + v16[7]);
        if (v51[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
        }

        v52 = *(*(v4 + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        v53 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
LABEL_43:

        return;
      case 8u:
        v20 = *a1;

        v9 = *(a1 + 16);
        goto LABEL_70;
      case 9u:
        v10 = *a1;

        v9 = *(a1 + 8);
LABEL_70:

        goto LABEL_10;
      case 0xAu:
        sub_1DCB070E0(*a1, *(a1 + 8), *(a1 + 16));
        return;
      case 0xBu:
        v9 = *a1;

LABEL_10:

        break;
      default:
        return;
    }
  }
}

unint64_t *sub_1DCEEFC58(unint64_t *a1, void **a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RCHFlowAsync.State();
  if (__swift_getEnumTagSinglePayload(a2, 1, v8))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        v12 = type metadata accessor for Input(0);
        v13 = v12[5];
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            (*(*(v17 - 8) + 16))(v14, v15, v17);
            goto LABEL_90;
          case 1u:
            v81 = sub_1DD0DC76C();
            (*(*(v81 - 8) + 16))(v14, v15, v81);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v14[*(v82 + 48)] = *&v15[*(v82 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v60 = *(v15 + 1);
            *v14 = *v15;
            *(v14 + 1) = v60;
            *(v14 + 2) = *(v15 + 2);

            goto LABEL_90;
          case 3u:
            *v14 = *v15;
            swift_unknownObjectRetain();
            goto LABEL_90;
          case 4u:
            v53 = sub_1DD0DB1EC();
            (*(*(v53 - 8) + 16))(v14, v15, v53);
            goto LABEL_90;
          case 5u:
            v87 = *v15;
            *v14 = *v15;
            v88 = v87;
            goto LABEL_90;
          case 6u:
            v91 = sub_1DD0DB4BC();
            (*(*(v91 - 8) + 16))(v14, v15, v91);
            __dste = type metadata accessor for USOParse();
            v92 = __dste[5];
            v93 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v92], 1, v93))
            {
              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v92], &v15[v92], *(*(v94 - 8) + 64));
            }

            else
            {
              (*(*(v93 - 8) + 16))(&v14[v92], &v15[v92], v93);
              __swift_storeEnumTagSinglePayload(&v14[v92], 0, 1, v93);
            }

            v188 = __dste[6];
            v189 = &v14[v188];
            v190 = &v15[v188];
            v191 = *(v190 + 1);
            *v189 = *v190;
            *(v189 + 1) = v191;
            v192 = __dste[7];
            v193 = &v14[v192];
            v194 = &v15[v192];
            v193[4] = v194[4];
            *v193 = *v194;

            goto LABEL_90;
          case 7u:
            v76 = sub_1DD0DB4BC();
            (*(*(v76 - 8) + 16))(v14, v15, v76);
            __dstc = type metadata accessor for USOParse();
            v77 = __dstc[5];
            v78 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v77], 1, v78))
            {
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v77], &v15[v77], *(*(v79 - 8) + 64));
            }

            else
            {
              (*(*(v78 - 8) + 16))(&v14[v77], &v15[v77], v78);
              __swift_storeEnumTagSinglePayload(&v14[v77], 0, 1, v78);
            }

            v150 = __dstc[6];
            v151 = &v14[v150];
            v152 = &v15[v150];
            v274 = *(v152 + 1);
            *v151 = *v152;
            *(v151 + 1) = v274;
            v153 = __dstc[7];
            v154 = &v14[v153];
            v155 = &v15[v153];
            v154[4] = v155[4];
            *v154 = *v155;
            v156 = type metadata accessor for LinkParse();
            v157 = v156[5];
            v158 = &v14[v157];
            v159 = &v15[v157];
            v160 = *(v159 + 1);
            *v158 = *v159;
            *(v158 + 1) = v160;
            v161 = v156[6];
            v162 = &v14[v161];
            v163 = &v15[v161];
            v164 = *(v163 + 1);
            *v162 = *v163;
            *(v162 + 1) = v164;
            v165 = v156[7];
            v166 = &v14[v165];
            v167 = &v15[v165];
            v168 = *(v167 + 1);
            *v166 = *v167;
            *(v166 + 1) = v168;

            goto LABEL_90;
          case 8u:
            v95 = sub_1DD0DD12C();
            (*(*(v95 - 8) + 16))(v14, v15, v95);
            v96 = type metadata accessor for NLRouterParse();
            v97 = *(v96 + 20);
            v98 = &v14[v97];
            v99 = &v15[v97];
            v100 = *(v99 + 1);
            *v98 = *v99;
            *(v98 + 1) = v100;
            v101 = *(v96 + 24);
            v271 = v96;
            __dstf = &v14[v101];
            v102 = &v15[v101];
            v103 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v102, 1, v103))
            {
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstf, v102, *(*(v104 - 8) + 64));
            }

            else
            {
              v195 = sub_1DD0DB4BC();
              (*(*(v195 - 8) + 16))(__dstf, v102, v195);
              v268 = v103;
              v196 = *(v103 + 20);
              v265 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v102[v196], 1, v265))
              {
                v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstf[v196], &v102[v196], *(*(v197 - 8) + 64));
              }

              else
              {
                (*(*(v265 - 8) + 16))(&__dstf[v196], &v102[v196]);
                __swift_storeEnumTagSinglePayload(&__dstf[v196], 0, 1, v265);
              }

              v226 = *(v268 + 24);
              v227 = &__dstf[v226];
              v228 = &v102[v226];
              v229 = *(v228 + 1);
              *v227 = *v228;
              *(v227 + 1) = v229;
              v230 = *(v268 + 28);
              v231 = &__dstf[v230];
              v232 = &v102[v230];
              v231[4] = v232[4];
              *v231 = *v232;

              __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v268);
            }

            v233 = *(v271 + 28);
            v234 = *&v15[v233];
            *&v14[v233] = v234;
            v235 = v234;
            goto LABEL_90;
          case 9u:
            v56 = sub_1DD0DD08C();
            (*(*(v56 - 8) + 16))(v14, v15, v56);
LABEL_90:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v14, v15, *(*(v16 - 8) + 64));
            break;
        }

        *(a1 + v12[6]) = *(a2 + v12[6]);
        v236 = v12[7];
        v237 = a1 + v236;
        v238 = a2 + v236;
        v239 = *(a2 + v236 + 24);

        if (v239)
        {
          v240 = *(v238 + 4);
          *(v237 + 3) = v239;
          *(v237 + 4) = v240;
          (**(v239 - 8))(v237, v238, v239);
        }

        else
        {
          v241 = *(v238 + 1);
          *v237 = *v238;
          *(v237 + 1) = v241;
          *(v237 + 4) = *(v238 + 4);
        }

        *(a1 + v12[8]) = *(a2 + v12[8]);
        v242 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        v243 = *(swift_getTupleTypeMetadata2() + 48);
        v244 = *(a2 + v243);
        *(a1 + v243) = v244;
        v245 = v244;
        goto LABEL_103;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        v29 = *a2;
        v30 = a2[1];
        *a1 = v29;
        a1[1] = v30;
        sub_1DD0DCF8C();
      case 3u:
        v31 = *a2;
        v32 = a2[1];
        *a1 = v31;
        a1[1] = v32;
        sub_1DD0DCF8C();
      case 4u:
        v20 = sub_1DD0DB04C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v21 = type metadata accessor for Input(0);
        v22 = v21[5];
        v23 = a1 + v22;
        v24 = a2 + v22;
        v25 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v26 = sub_1DD0DC76C();
            (*(*(v26 - 8) + 16))(v23, v24, v26);
            goto LABEL_82;
          case 1u:
            v54 = sub_1DD0DC76C();
            (*(*(v54 - 8) + 16))(v23, v24, v54);
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v23[*(v55 + 48)] = *&v24[*(v55 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v48 = *(v24 + 1);
            *v23 = *v24;
            *(v23 + 1) = v48;
            *(v23 + 2) = *(v24 + 2);

            goto LABEL_82;
          case 3u:
            *v23 = *v24;
            swift_unknownObjectRetain();
            goto LABEL_82;
          case 4u:
            v46 = sub_1DD0DB1EC();
            (*(*(v46 - 8) + 16))(v23, v24, v46);
            goto LABEL_82;
          case 5u:
            v57 = *v24;
            *v23 = *v24;
            v58 = v57;
            goto LABEL_82;
          case 6u:
            v61 = sub_1DD0DB4BC();
            (*(*(v61 - 8) + 16))(v23, v24, v61);
            __dsta = type metadata accessor for USOParse();
            v62 = __dsta[5];
            v63 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v24[v62], 1, v63))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v23[v62], &v24[v62], *(*(v64 - 8) + 64));
            }

            else
            {
              (*(*(v63 - 8) + 16))(&v23[v62], &v24[v62], v63);
              __swift_storeEnumTagSinglePayload(&v23[v62], 0, 1, v63);
            }

            v140 = __dsta[6];
            v141 = &v23[v140];
            v142 = &v24[v140];
            v143 = *(v142 + 1);
            *v141 = *v142;
            *(v141 + 1) = v143;
            v144 = __dsta[7];
            v145 = &v23[v144];
            v146 = &v24[v144];
            v145[4] = v146[4];
            *v145 = *v146;

            goto LABEL_82;
          case 7u:
            v49 = sub_1DD0DB4BC();
            (*(*(v49 - 8) + 16))(v23, v24, v49);
            __dst = type metadata accessor for USOParse();
            v50 = __dst[5];
            v51 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v24[v50], 1, v51))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v23[v50], &v24[v50], *(*(v52 - 8) + 64));
            }

            else
            {
              (*(*(v51 - 8) + 16))(&v23[v50], &v24[v50], v51);
              __swift_storeEnumTagSinglePayload(&v23[v50], 0, 1, v51);
            }

            v121 = __dst[6];
            v122 = &v23[v121];
            v123 = &v24[v121];
            v273 = *(v123 + 1);
            *v122 = *v123;
            *(v122 + 1) = v273;
            v124 = __dst[7];
            v125 = &v23[v124];
            v126 = &v24[v124];
            v125[4] = v126[4];
            *v125 = *v126;
            v127 = type metadata accessor for LinkParse();
            v128 = v127[5];
            v129 = &v23[v128];
            v130 = &v24[v128];
            v131 = *(v130 + 1);
            *v129 = *v130;
            *(v129 + 1) = v131;
            v132 = v127[6];
            v133 = &v23[v132];
            v134 = &v24[v132];
            v135 = *(v134 + 1);
            *v133 = *v134;
            *(v133 + 1) = v135;
            v136 = v127[7];
            v137 = &v23[v136];
            v138 = &v24[v136];
            v139 = *(v138 + 1);
            *v137 = *v138;
            *(v137 + 1) = v139;

            goto LABEL_82;
          case 8u:
            v65 = sub_1DD0DD12C();
            (*(*(v65 - 8) + 16))(v23, v24, v65);
            v66 = type metadata accessor for NLRouterParse();
            v67 = *(v66 + 20);
            v68 = &v23[v67];
            v69 = &v24[v67];
            v70 = *(v69 + 1);
            *v68 = *v69;
            *(v68 + 1) = v70;
            v71 = *(v66 + 24);
            v270 = v66;
            __dstb = &v23[v71];
            v72 = &v24[v71];
            v73 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v72, 1, v73))
            {
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v72, *(*(v74 - 8) + 64));
            }

            else
            {
              v147 = sub_1DD0DB4BC();
              (*(*(v147 - 8) + 16))(__dstb, v72, v147);
              v267 = v73;
              v148 = *(v73 + 20);
              v264 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v72[v148], 1, v264))
              {
                v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v148], &v72[v148], *(*(v149 - 8) + 64));
              }

              else
              {
                (*(*(v264 - 8) + 16))(&__dstb[v148], &v72[v148]);
                __swift_storeEnumTagSinglePayload(&__dstb[v148], 0, 1, v264);
              }

              v208 = *(v267 + 24);
              v209 = &__dstb[v208];
              v210 = &v72[v208];
              v211 = *(v210 + 1);
              *v209 = *v210;
              *(v209 + 1) = v211;
              v212 = *(v267 + 28);
              v213 = &__dstb[v212];
              v214 = &v72[v212];
              v213[4] = v214[4];
              *v213 = *v214;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v267);
            }

            v215 = *(v270 + 28);
            v216 = *&v24[v215];
            *&v23[v215] = v216;
            v217 = v216;
            goto LABEL_82;
          case 9u:
            v47 = sub_1DD0DD08C();
            (*(*(v47 - 8) + 16))(v23, v24, v47);
LABEL_82:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v23, v24, *(*(v25 - 8) + 64));
            break;
        }

        *(a1 + v21[6]) = *(a2 + v21[6]);
        v218 = v21[7];
        v219 = a1 + v218;
        v220 = a2 + v218;
        v221 = *(a2 + v218 + 24);

        if (v221)
        {
          v222 = *(v220 + 4);
          *(v219 + 3) = v221;
          *(v219 + 4) = v222;
          (**(v221 - 8))(v219, v220, v221);
        }

        else
        {
          v223 = *(v220 + 1);
          *v219 = *v220;
          *(v219 + 1) = v223;
          *(v219 + 4) = *(v220 + 4);
        }

        *(a1 + v21[8]) = *(a2 + v21[8]);
        v224 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v33 = sub_1DD0DB04C();
        (*(*(v33 - 8) + 16))(a1, a2, v33);
        v34 = type metadata accessor for Input(0);
        v35 = v34[5];
        v36 = a1 + v35;
        v37 = a2 + v35;
        v38 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v39 = sub_1DD0DC76C();
            (*(*(v39 - 8) + 16))(v36, v37, v39);
            goto LABEL_98;
          case 1u:
            v89 = sub_1DD0DC76C();
            (*(*(v89 - 8) + 16))(v36, v37, v89);
            v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v36[*(v90 + 48)] = *&v37[*(v90 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v80 = *(v37 + 1);
            *v36 = *v37;
            *(v36 + 1) = v80;
            *(v36 + 2) = *(v37 + 2);

            goto LABEL_98;
          case 3u:
            *v36 = *v37;
            swift_unknownObjectRetain();
            goto LABEL_98;
          case 4u:
            v59 = sub_1DD0DB1EC();
            (*(*(v59 - 8) + 16))(v36, v37, v59);
            goto LABEL_98;
          case 5u:
            v105 = *v37;
            *v36 = *v37;
            v106 = v105;
            goto LABEL_98;
          case 6u:
            v107 = sub_1DD0DB4BC();
            (*(*(v107 - 8) + 16))(v36, v37, v107);
            __dstg = type metadata accessor for USOParse();
            v108 = __dstg[5];
            v109 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v37[v108], 1, v109))
            {
              v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v36[v108], &v37[v108], *(*(v110 - 8) + 64));
            }

            else
            {
              (*(*(v109 - 8) + 16))(&v36[v108], &v37[v108], v109);
              __swift_storeEnumTagSinglePayload(&v36[v108], 0, 1, v109);
            }

            v198 = __dstg[6];
            v199 = &v36[v198];
            v200 = &v37[v198];
            v201 = *(v200 + 1);
            *v199 = *v200;
            *(v199 + 1) = v201;
            v202 = __dstg[7];
            v203 = &v36[v202];
            v204 = &v37[v202];
            v203[4] = v204[4];
            *v203 = *v204;

            goto LABEL_98;
          case 7u:
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 16))(v36, v37, v83);
            __dstd = type metadata accessor for USOParse();
            v84 = __dstd[5];
            v85 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v37[v84], 1, v85))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v36[v84], &v37[v84], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v85 - 8) + 16))(&v36[v84], &v37[v84], v85);
              __swift_storeEnumTagSinglePayload(&v36[v84], 0, 1, v85);
            }

            v169 = __dstd[6];
            v170 = &v36[v169];
            v171 = &v37[v169];
            v275 = *(v171 + 1);
            *v170 = *v171;
            *(v170 + 1) = v275;
            v172 = __dstd[7];
            v173 = &v36[v172];
            v174 = &v37[v172];
            v173[4] = v174[4];
            *v173 = *v174;
            v175 = type metadata accessor for LinkParse();
            v176 = v175[5];
            v177 = &v36[v176];
            v178 = &v37[v176];
            v179 = *(v178 + 1);
            *v177 = *v178;
            *(v177 + 1) = v179;
            v180 = v175[6];
            v181 = &v36[v180];
            v182 = &v37[v180];
            v183 = *(v182 + 1);
            *v181 = *v182;
            *(v181 + 1) = v183;
            v184 = v175[7];
            v185 = &v36[v184];
            v186 = &v37[v184];
            v187 = *(v186 + 1);
            *v185 = *v186;
            *(v185 + 1) = v187;

            goto LABEL_98;
          case 8u:
            v111 = sub_1DD0DD12C();
            (*(*(v111 - 8) + 16))(v36, v37, v111);
            v112 = type metadata accessor for NLRouterParse();
            v113 = *(v112 + 20);
            v114 = &v36[v113];
            v115 = &v37[v113];
            v116 = *(v115 + 1);
            *v114 = *v115;
            *(v114 + 1) = v116;
            v117 = *(v112 + 24);
            v272 = v112;
            __dsth = &v36[v117];
            v118 = &v37[v117];
            v119 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v118, 1, v119))
            {
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsth, v118, *(*(v120 - 8) + 64));
            }

            else
            {
              v205 = sub_1DD0DB4BC();
              (*(*(v205 - 8) + 16))(__dsth, v118, v205);
              v269 = v119;
              v206 = *(v119 + 20);
              v266 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v118[v206], 1, v266))
              {
                v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsth[v206], &v118[v206], *(*(v207 - 8) + 64));
              }

              else
              {
                (*(*(v266 - 8) + 16))(&__dsth[v206], &v118[v206]);
                __swift_storeEnumTagSinglePayload(&__dsth[v206], 0, 1, v266);
              }

              v246 = *(v269 + 24);
              v247 = &__dsth[v246];
              v248 = &v118[v246];
              v249 = *(v248 + 1);
              *v247 = *v248;
              *(v247 + 1) = v249;
              v250 = *(v269 + 28);
              v251 = &__dsth[v250];
              v252 = &v118[v250];
              v251[4] = v252[4];
              *v251 = *v252;

              __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v269);
            }

            v253 = *(v272 + 28);
            v254 = *&v37[v253];
            *&v36[v253] = v254;
            v255 = v254;
            goto LABEL_98;
          case 9u:
            v75 = sub_1DD0DD08C();
            (*(*(v75 - 8) + 16))(v36, v37, v75);
LABEL_98:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v36, v37, *(*(v38 - 8) + 64));
            break;
        }

        *(a1 + v34[6]) = *(a2 + v34[6]);
        v256 = v34[7];
        v257 = a1 + v256;
        v258 = a2 + v256;
        v259 = *(a2 + v256 + 24);

        if (v259)
        {
          v260 = *(v258 + 4);
          *(v257 + 3) = v259;
          *(v257 + 4) = v260;
          (**(v259 - 8))(v257, v258, v259);
        }

        else
        {
          v261 = *(v258 + 1);
          *v257 = *v258;
          *(v257 + 1) = v261;
          *(v257 + 4) = *(v258 + 4);
        }

        *(a1 + v34[8]) = *(a2 + v34[8]);
        v262 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        v263 = swift_getTupleTypeMetadata2();
        *(a1 + *(v263 + 48)) = *(a2 + *(v263 + 48));
        sub_1DD0DCF8C();
      case 6u:
        v40 = *a2;
        v41 = a2[1];
        *a1 = v40;
        a1[1] = v41;
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        v45 = a2[1];
        *a1 = *a2;
        a1[1] = v45;
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        v27 = *a2;
        v28 = a2[1];
        *a1 = v27;
        a1[1] = v28;
        sub_1DD0DCF8C();
      case 0xAu:
        v42 = *a2;
        v43 = a2[1];
        v44 = a2[2];
        sub_1DCB72E48(v42);
        *a1 = v42;
        a1[1] = v43;
        a1[2] = v44;
        goto LABEL_103;
      case 0xBu:
        v18 = *a2;
        v19 = v18;
        *a1 = v18;
LABEL_103:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        break;
    }

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
    return a1;
  }
}

unint64_t *sub_1DCEF181C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RCHFlowAsync.State();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v8);
  v10 = __swift_getEnumTagSinglePayload(a2, 1, v8);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v11 = sub_1DD0DB04C();
          (*(*(v11 - 8) + 16))(a1, a2, v11);
          v12 = type metadata accessor for Input(0);
          v13 = v12[5];
          v14 = a1 + v13;
          v15 = a2 + v13;
          v16 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v17 = sub_1DD0DC76C();
              (*(*(v17 - 8) + 16))(v14, v15, v17);
              goto LABEL_165;
            case 1u:
              v97 = sub_1DD0DC76C();
              (*(*(v97 - 8) + 16))(v14, v15, v97);
              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v14[*(v98 + 48)] = *&v15[*(v98 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v14 = *v15;
              *(v14 + 1) = *(v15 + 1);
              *(v14 + 2) = *(v15 + 2);

              goto LABEL_165;
            case 3u:
              *v14 = *v15;
              swift_unknownObjectRetain();
              goto LABEL_165;
            case 4u:
              v72 = sub_1DD0DB1EC();
              (*(*(v72 - 8) + 16))(v14, v15, v72);
              goto LABEL_165;
            case 5u:
              v103 = *v15;
              *v14 = *v15;
              v104 = v103;
              goto LABEL_165;
            case 6u:
              v107 = sub_1DD0DB4BC();
              (*(*(v107 - 8) + 16))(v14, v15, v107);
              __dste = type metadata accessor for USOParse();
              v108 = __dste[5];
              v109 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v15[v108], 1, v109))
              {
                v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v14[v108], &v15[v108], *(*(v110 - 8) + 64));
              }

              else
              {
                (*(*(v109 - 8) + 16))(&v14[v108], &v15[v108], v109);
                __swift_storeEnumTagSinglePayload(&v14[v108], 0, 1, v109);
              }

              v244 = __dste[6];
              v245 = &v14[v244];
              v246 = &v15[v244];
              *v245 = *v246;
              *(v245 + 1) = *(v246 + 1);
              v247 = __dste[7];
              v248 = &v14[v247];
              v249 = &v15[v247];
              v250 = *v249;
              v248[4] = v249[4];
              *v248 = v250;

              goto LABEL_165;
            case 7u:
              v93 = sub_1DD0DB4BC();
              (*(*(v93 - 8) + 16))(v14, v15, v93);
              __dstc = type metadata accessor for USOParse();
              v94 = __dstc[5];
              v95 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v15[v94], 1, v95))
              {
                v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v14[v94], &v15[v94], *(*(v96 - 8) + 64));
              }

              else
              {
                (*(*(v95 - 8) + 16))(&v14[v94], &v15[v94], v95);
                __swift_storeEnumTagSinglePayload(&v14[v94], 0, 1, v95);
              }

              v196 = __dstc[6];
              v197 = &v14[v196];
              v198 = &v15[v196];
              *v197 = *v198;
              *(v197 + 1) = *(v198 + 1);
              v199 = __dstc[7];
              v200 = &v14[v199];
              v201 = &v15[v199];
              v202 = *v201;
              v200[4] = v201[4];
              *v200 = v202;
              v203 = type metadata accessor for LinkParse();
              v204 = v203[5];
              v205 = &v14[v204];
              v206 = &v15[v204];
              *v205 = *v206;
              *(v205 + 1) = *(v206 + 1);
              v207 = v203[6];
              v208 = &v14[v207];
              v209 = &v15[v207];
              *v208 = *v209;
              *(v208 + 1) = *(v209 + 1);
              v210 = v203[7];
              v211 = &v14[v210];
              v212 = &v15[v210];
              *v211 = *v212;
              *(v211 + 1) = *(v212 + 1);

              goto LABEL_165;
            case 8u:
              v111 = sub_1DD0DD12C();
              (*(*(v111 - 8) + 16))(v14, v15, v111);
              v112 = type metadata accessor for NLRouterParse();
              v113 = *(v112 + 20);
              v114 = &v14[v113];
              v115 = &v15[v113];
              *v114 = *v115;
              *(v114 + 1) = *(v115 + 1);
              v116 = *(v112 + 24);
              v509 = v112;
              __dstf = &v14[v116];
              v117 = &v15[v116];
              v118 = type metadata accessor for USOParse();

              if (__swift_getEnumTagSinglePayload(v117, 1, v118))
              {
                v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstf, v117, *(*(v119 - 8) + 64));
              }

              else
              {
                v260 = sub_1DD0DB4BC();
                (*(*(v260 - 8) + 16))(__dstf, v117, v260);
                v497 = v118;
                v261 = *(v118 + 20);
                v262 = sub_1DD0DB3EC();
                v503 = v117;
                v263 = &v117[v261];
                v264 = v262;
                if (__swift_getEnumTagSinglePayload(v263, 1, v262))
                {
                  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstf[v261], &v503[v261], *(*(v265 - 8) + 64));
                }

                else
                {
                  (*(*(v264 - 8) + 16))(&__dstf[v261], &v503[v261], v264);
                  __swift_storeEnumTagSinglePayload(&__dstf[v261], 0, 1, v264);
                }

                v389 = *(v497 + 24);
                v390 = &__dstf[v389];
                v391 = &v503[v389];
                *v390 = *v391;
                *(v390 + 1) = *(v391 + 1);
                v392 = *(v497 + 28);
                v393 = &__dstf[v392];
                v394 = &v503[v392];
                v395 = *v394;
                v393[4] = v394[4];
                *v393 = v395;

                __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v497);
              }

              v396 = *(v509 + 28);
              v397 = *&v15[v396];
              *&v14[v396] = v397;
              v398 = v397;
              goto LABEL_165;
            case 9u:
              v75 = sub_1DD0DD08C();
              (*(*(v75 - 8) + 16))(v14, v15, v75);
LABEL_165:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v14, v15, *(*(v16 - 8) + 64));
              break;
          }

          *(a1 + v12[6]) = *(a2 + v12[6]);
          v399 = v12[7];
          v400 = a1 + v399;
          v401 = a2 + v399;
          v402 = *(a2 + v399 + 24);

          if (v402)
          {
            *(v400 + 3) = v402;
            *(v400 + 4) = *(v401 + 4);
            (**(v402 - 8))(v400, v401, v402);
          }

          else
          {
            v403 = *v401;
            v404 = *(v401 + 1);
            *(v400 + 4) = *(v401 + 4);
            *v400 = v403;
            *(v400 + 1) = v404;
          }

          *(a1 + v12[8]) = *(a2 + v12[8]);
          v405 = *(*(v7 + 8) + 8);
          swift_getAssociatedTypeWitness();
          v406 = *(swift_getTupleTypeMetadata2() + 48);
          v407 = *(a2 + v406);
          *(a1 + v406) = v407;
          v408 = v407;
          goto LABEL_182;
        case 1u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 2u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 3u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 4u:
          v30 = sub_1DD0DB04C();
          (*(*(v30 - 8) + 16))(a1, a2, v30);
          v31 = type metadata accessor for Input(0);
          v32 = v31[5];
          v33 = a1 + v32;
          v34 = a2 + v32;
          v35 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v36 = sub_1DD0DC76C();
              (*(*(v36 - 8) + 16))(v33, v34, v36);
              goto LABEL_149;
            case 1u:
              v73 = sub_1DD0DC76C();
              (*(*(v73 - 8) + 16))(v33, v34, v73);
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v33[*(v74 + 48)] = *&v34[*(v74 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v33 = *v34;
              *(v33 + 1) = *(v34 + 1);
              *(v33 + 2) = *(v34 + 2);

              goto LABEL_149;
            case 3u:
              *v33 = *v34;
              swift_unknownObjectRetain();
              goto LABEL_149;
            case 4u:
              v66 = sub_1DD0DB1EC();
              (*(*(v66 - 8) + 16))(v33, v34, v66);
              goto LABEL_149;
            case 5u:
              v76 = *v34;
              *v33 = *v34;
              v77 = v76;
              goto LABEL_149;
            case 6u:
              v79 = sub_1DD0DB4BC();
              (*(*(v79 - 8) + 16))(v33, v34, v79);
              __dsta = type metadata accessor for USOParse();
              v80 = __dsta[5];
              v81 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v34[v80], 1, v81))
              {
                v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v33[v80], &v34[v80], *(*(v82 - 8) + 64));
              }

              else
              {
                (*(*(v81 - 8) + 16))(&v33[v80], &v34[v80], v81);
                __swift_storeEnumTagSinglePayload(&v33[v80], 0, 1, v81);
              }

              v169 = __dsta[6];
              v170 = &v33[v169];
              v171 = &v34[v169];
              *v170 = *v171;
              *(v170 + 1) = *(v171 + 1);
              v172 = __dsta[7];
              v173 = &v33[v172];
              v174 = &v34[v172];
              v175 = *v174;
              v173[4] = v174[4];
              *v173 = v175;

              goto LABEL_149;
            case 7u:
              v68 = sub_1DD0DB4BC();
              (*(*(v68 - 8) + 16))(v33, v34, v68);
              __dst = type metadata accessor for USOParse();
              v69 = __dst[5];
              v70 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v34[v69], 1, v70))
              {
                v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v33[v69], &v34[v69], *(*(v71 - 8) + 64));
              }

              else
              {
                (*(*(v70 - 8) + 16))(&v33[v69], &v34[v69], v70);
                __swift_storeEnumTagSinglePayload(&v33[v69], 0, 1, v70);
              }

              v141 = __dst[6];
              v142 = &v33[v141];
              v143 = &v34[v141];
              *v142 = *v143;
              *(v142 + 1) = *(v143 + 1);
              v144 = __dst[7];
              v145 = &v33[v144];
              v146 = &v34[v144];
              v147 = *v146;
              v145[4] = v146[4];
              *v145 = v147;
              v148 = type metadata accessor for LinkParse();
              v149 = v148[5];
              v150 = &v33[v149];
              v151 = &v34[v149];
              *v150 = *v151;
              *(v150 + 1) = *(v151 + 1);
              v152 = v148[6];
              v153 = &v33[v152];
              v154 = &v34[v152];
              *v153 = *v154;
              *(v153 + 1) = *(v154 + 1);
              v155 = v148[7];
              v156 = &v33[v155];
              v157 = &v34[v155];
              *v156 = *v157;
              *(v156 + 1) = *(v157 + 1);

              goto LABEL_149;
            case 8u:
              v83 = sub_1DD0DD12C();
              (*(*(v83 - 8) + 16))(v33, v34, v83);
              v84 = type metadata accessor for NLRouterParse();
              v85 = *(v84 + 20);
              v86 = &v33[v85];
              v87 = &v34[v85];
              *v86 = *v87;
              *(v86 + 1) = *(v87 + 1);
              v88 = *(v84 + 24);
              v508 = v84;
              __dstb = &v33[v88];
              v89 = &v34[v88];
              v90 = type metadata accessor for USOParse();

              if (__swift_getEnumTagSinglePayload(v89, 1, v90))
              {
                v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstb, v89, *(*(v91 - 8) + 64));
              }

              else
              {
                v185 = sub_1DD0DB4BC();
                (*(*(v185 - 8) + 16))(__dstb, v89, v185);
                v496 = v90;
                v186 = *(v90 + 20);
                v187 = sub_1DD0DB3EC();
                v502 = v89;
                v188 = &v89[v186];
                v189 = v187;
                if (__swift_getEnumTagSinglePayload(v188, 1, v187))
                {
                  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstb[v186], &v502[v186], *(*(v190 - 8) + 64));
                }

                else
                {
                  (*(*(v189 - 8) + 16))(&__dstb[v186], &v502[v186], v189);
                  __swift_storeEnumTagSinglePayload(&__dstb[v186], 0, 1, v189);
                }

                v324 = *(v496 + 24);
                v325 = &__dstb[v324];
                v326 = &v502[v324];
                *v325 = *v326;
                *(v325 + 1) = *(v326 + 1);
                v327 = *(v496 + 28);
                v328 = &__dstb[v327];
                v329 = &v502[v327];
                v330 = *v329;
                v328[4] = v329[4];
                *v328 = v330;

                __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v496);
              }

              v331 = *(v508 + 28);
              v332 = *&v34[v331];
              *&v33[v331] = v332;
              v333 = v332;
              goto LABEL_149;
            case 9u:
              v67 = sub_1DD0DD08C();
              (*(*(v67 - 8) + 16))(v33, v34, v67);
LABEL_149:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v33, v34, *(*(v35 - 8) + 64));
              break;
          }

          *(a1 + v31[6]) = *(a2 + v31[6]);
          v334 = v31[7];
          v335 = a1 + v334;
          v336 = a2 + v334;
          v337 = *(a2 + v334 + 24);

          if (v337)
          {
            *(v335 + 3) = v337;
            *(v335 + 4) = *(v336 + 4);
            (**(v337 - 8))(v335, v336, v337);
          }

          else
          {
            v338 = *v336;
            v339 = *(v336 + 1);
            *(v335 + 4) = *(v336 + 4);
            *v335 = v338;
            *(v335 + 1) = v339;
          }

          *(a1 + v31[8]) = *(a2 + v31[8]);
          v340 = *(*(v7 + 8) + 8);
          swift_getAssociatedTypeWitness();
          type metadata accessor for RCHFlowSharedData();
          sub_1DD0DE97C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
          sub_1DD0DCF8C();
        case 5u:
          v37 = sub_1DD0DB04C();
          (*(*(v37 - 8) + 16))(a1, a2, v37);
          v38 = type metadata accessor for Input(0);
          v39 = v38[5];
          v40 = a1 + v39;
          v41 = a2 + v39;
          v42 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v43 = sub_1DD0DC76C();
              (*(*(v43 - 8) + 16))(v40, v41, v43);
              goto LABEL_177;
            case 1u:
              v105 = sub_1DD0DC76C();
              (*(*(v105 - 8) + 16))(v40, v41, v105);
              v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v40[*(v106 + 48)] = *&v41[*(v106 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v40 = *v41;
              *(v40 + 1) = *(v41 + 1);
              *(v40 + 2) = *(v41 + 2);

              goto LABEL_177;
            case 3u:
              *v40 = *v41;
              swift_unknownObjectRetain();
              goto LABEL_177;
            case 4u:
              v78 = sub_1DD0DB1EC();
              (*(*(v78 - 8) + 16))(v40, v41, v78);
              goto LABEL_177;
            case 5u:
              v120 = *v41;
              *v40 = *v41;
              v121 = v120;
              goto LABEL_177;
            case 6u:
              v122 = sub_1DD0DB4BC();
              (*(*(v122 - 8) + 16))(v40, v41, v122);
              __dstg = type metadata accessor for USOParse();
              v123 = __dstg[5];
              v124 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v41[v123], 1, v124))
              {
                v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v40[v123], &v41[v123], *(*(v125 - 8) + 64));
              }

              else
              {
                (*(*(v124 - 8) + 16))(&v40[v123], &v41[v123], v124);
                __swift_storeEnumTagSinglePayload(&v40[v123], 0, 1, v124);
              }

              v272 = __dstg[6];
              v273 = &v40[v272];
              v274 = &v41[v272];
              *v273 = *v274;
              *(v273 + 1) = *(v274 + 1);
              v275 = __dstg[7];
              v276 = &v40[v275];
              v277 = &v41[v275];
              v278 = *v277;
              v276[4] = v277[4];
              *v276 = v278;

              goto LABEL_177;
            case 7u:
              v99 = sub_1DD0DB4BC();
              (*(*(v99 - 8) + 16))(v40, v41, v99);
              __dstd = type metadata accessor for USOParse();
              v100 = __dstd[5];
              v101 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v41[v100], 1, v101))
              {
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v40[v100], &v41[v100], *(*(v102 - 8) + 64));
              }

              else
              {
                (*(*(v101 - 8) + 16))(&v40[v100], &v41[v100], v101);
                __swift_storeEnumTagSinglePayload(&v40[v100], 0, 1, v101);
              }

              v219 = __dstd[6];
              v220 = &v40[v219];
              v221 = &v41[v219];
              *v220 = *v221;
              *(v220 + 1) = *(v221 + 1);
              v222 = __dstd[7];
              v223 = &v40[v222];
              v224 = &v41[v222];
              v225 = *v224;
              v223[4] = v224[4];
              *v223 = v225;
              v226 = type metadata accessor for LinkParse();
              v227 = v226[5];
              v228 = &v40[v227];
              v229 = &v41[v227];
              *v228 = *v229;
              *(v228 + 1) = *(v229 + 1);
              v230 = v226[6];
              v231 = &v40[v230];
              v232 = &v41[v230];
              *v231 = *v232;
              *(v231 + 1) = *(v232 + 1);
              v233 = v226[7];
              v234 = &v40[v233];
              v235 = &v41[v233];
              *v234 = *v235;
              *(v234 + 1) = *(v235 + 1);

              goto LABEL_177;
            case 8u:
              v126 = sub_1DD0DD12C();
              (*(*(v126 - 8) + 16))(v40, v41, v126);
              v127 = type metadata accessor for NLRouterParse();
              v128 = *(v127 + 20);
              v129 = &v40[v128];
              v130 = &v41[v128];
              *v129 = *v130;
              *(v129 + 1) = *(v130 + 1);
              v131 = *(v127 + 24);
              v510 = v127;
              __dsth = &v40[v131];
              v132 = &v41[v131];
              v133 = type metadata accessor for USOParse();

              if (__swift_getEnumTagSinglePayload(v132, 1, v133))
              {
                v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dsth, v132, *(*(v134 - 8) + 64));
              }

              else
              {
                v288 = sub_1DD0DB4BC();
                (*(*(v288 - 8) + 16))(__dsth, v132, v288);
                v498 = v133;
                v289 = *(v133 + 20);
                v290 = sub_1DD0DB3EC();
                v504 = v132;
                v291 = &v132[v289];
                v292 = v290;
                if (__swift_getEnumTagSinglePayload(v291, 1, v290))
                {
                  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dsth[v289], &v504[v289], *(*(v293 - 8) + 64));
                }

                else
                {
                  (*(*(v292 - 8) + 16))(&__dsth[v289], &v504[v289], v292);
                  __swift_storeEnumTagSinglePayload(&__dsth[v289], 0, 1, v292);
                }

                v422 = *(v498 + 24);
                v423 = &__dsth[v422];
                v424 = &v504[v422];
                *v423 = *v424;
                *(v423 + 1) = *(v424 + 1);
                v425 = *(v498 + 28);
                v426 = &__dsth[v425];
                v427 = &v504[v425];
                v428 = *v427;
                v426[4] = v427[4];
                *v426 = v428;

                __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v498);
              }

              v429 = *(v510 + 28);
              v430 = *&v41[v429];
              *&v40[v429] = v430;
              v431 = v430;
              goto LABEL_177;
            case 9u:
              v92 = sub_1DD0DD08C();
              (*(*(v92 - 8) + 16))(v40, v41, v92);
LABEL_177:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v40, v41, *(*(v42 - 8) + 64));
              break;
          }

          *(a1 + v38[6]) = *(a2 + v38[6]);
          v432 = v38[7];
          v433 = a1 + v432;
          v434 = a2 + v432;
          v435 = *(a2 + v432 + 24);

          if (v435)
          {
            *(v433 + 3) = v435;
            *(v433 + 4) = *(v434 + 4);
            (**(v435 - 8))(v433, v434, v435);
          }

          else
          {
            v436 = *v434;
            v437 = *(v434 + 1);
            *(v433 + 4) = *(v434 + 4);
            *v433 = v436;
            *(v433 + 1) = v437;
          }

          *(a1 + v38[8]) = *(a2 + v38[8]);
          v438 = *(*(v7 + 8) + 8);
          swift_getAssociatedTypeWitness();
          type metadata accessor for RCHFlowSharedData();
          sub_1DD0DE97C();
          v439 = swift_getTupleTypeMetadata2();
          *(a1 + *(v439 + 48)) = *(a2 + *(v439 + 48));
          sub_1DD0DCF8C();
        case 6u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 7u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 8u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];
          sub_1DD0DCF8C();
        case 9u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 0xAu:
          v44 = *a2;
          v45 = a2[1];
          v46 = a2[2];
          sub_1DCB72E48(v44);
          *a1 = v44;
          a1[1] = v45;
          a1[2] = v46;
          goto LABEL_182;
        case 0xBu:
          v28 = *a2;
          v29 = v28;
          *a1 = v28;
LABEL_182:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          break;
      }

      __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      if (a1 != a2)
      {
        v20 = *(v8 - 8);
        (*(v20 + 8))(a1, v8);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v21 = sub_1DD0DB04C();
            (*(*(v21 - 8) + 16))(a1, a2, v21);
            v22 = type metadata accessor for Input(0);
            v23 = v22[5];
            v24 = a1 + v23;
            v25 = a2 + v23;
            v26 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v27 = sub_1DD0DC76C();
                (*(*(v27 - 8) + 16))(v24, v25, v27);
                goto LABEL_195;
              case 1u:
                v213 = sub_1DD0DC76C();
                (*(*(v213 - 8) + 16))(v24, v25, v213);
                v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v24[*(v214 + 48)] = *&v25[*(v214 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v24 = *v25;
                *(v24 + 1) = *(v25 + 1);
                *(v24 + 2) = *(v25 + 2);

                goto LABEL_195;
              case 3u:
                *v24 = *v25;
                swift_unknownObjectRetain();
                goto LABEL_195;
              case 4u:
                v158 = sub_1DD0DB1EC();
                (*(*(v158 - 8) + 16))(v24, v25, v158);
                goto LABEL_195;
              case 5u:
                v236 = *v25;
                *v24 = *v25;
                v237 = v236;
                goto LABEL_195;
              case 6u:
                v240 = sub_1DD0DB4BC();
                (*(*(v240 - 8) + 16))(v24, v25, v240);
                __dstn = type metadata accessor for USOParse();
                v241 = __dstn[5];
                v242 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v25[v241], 1, v242))
                {
                  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v24[v241], &v25[v241], *(*(v243 - 8) + 64));
                }

                else
                {
                  (*(*(v242 - 8) + 16))(&v24[v241], &v25[v241], v242);
                  __swift_storeEnumTagSinglePayload(&v24[v241], 0, 1, v242);
                }

                v376 = __dstn[6];
                v377 = &v24[v376];
                v378 = &v25[v376];
                *v377 = *v378;
                *(v377 + 1) = *(v378 + 1);
                v379 = __dstn[7];
                v380 = &v24[v379];
                v381 = &v25[v379];
                v382 = *v381;
                v380[4] = v381[4];
                *v380 = v382;

                goto LABEL_195;
              case 7u:
                v192 = sub_1DD0DB4BC();
                (*(*(v192 - 8) + 16))(v24, v25, v192);
                __dstl = type metadata accessor for USOParse();
                v193 = __dstl[5];
                v194 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v25[v193], 1, v194))
                {
                  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v24[v193], &v25[v193], *(*(v195 - 8) + 64));
                }

                else
                {
                  (*(*(v194 - 8) + 16))(&v24[v193], &v25[v193], v194);
                  __swift_storeEnumTagSinglePayload(&v24[v193], 0, 1, v194);
                }

                v342 = __dstl[6];
                v343 = &v24[v342];
                v344 = &v25[v342];
                *v343 = *v344;
                *(v343 + 1) = *(v344 + 1);
                v345 = __dstl[7];
                v346 = &v24[v345];
                v347 = &v25[v345];
                v348 = *v347;
                v346[4] = v347[4];
                *v346 = v348;
                v349 = type metadata accessor for LinkParse();
                v350 = v349[5];
                v351 = &v24[v350];
                v352 = &v25[v350];
                *v351 = *v352;
                *(v351 + 1) = *(v352 + 1);
                v353 = v349[6];
                v354 = &v24[v353];
                v355 = &v25[v353];
                *v354 = *v355;
                *(v354 + 1) = *(v355 + 1);
                v356 = v349[7];
                v357 = &v24[v356];
                v358 = &v25[v356];
                *v357 = *v358;
                *(v357 + 1) = *(v358 + 1);

                goto LABEL_195;
              case 8u:
                v251 = sub_1DD0DD12C();
                (*(*(v251 - 8) + 16))(v24, v25, v251);
                v252 = type metadata accessor for NLRouterParse();
                v253 = *(v252 + 20);
                v254 = &v24[v253];
                v255 = &v25[v253];
                *v254 = *v255;
                *(v254 + 1) = *(v255 + 1);
                v256 = *(v252 + 24);
                v512 = v252;
                __dsto = &v24[v256];
                v257 = &v25[v256];
                v258 = type metadata accessor for USOParse();

                if (__swift_getEnumTagSinglePayload(v257, 1, v258))
                {
                  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dsto, v257, *(*(v259 - 8) + 64));
                }

                else
                {
                  v383 = sub_1DD0DB4BC();
                  (*(*(v383 - 8) + 16))(__dsto, v257, v383);
                  v500 = v258;
                  v384 = *(v258 + 20);
                  v385 = sub_1DD0DB3EC();
                  v506 = v257;
                  v386 = &v257[v384];
                  v387 = v385;
                  if (__swift_getEnumTagSinglePayload(v386, 1, v385))
                  {
                    v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dsto[v384], &v506[v384], *(*(v388 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v387 - 8) + 16))(&__dsto[v384], &v506[v384], v387);
                    __swift_storeEnumTagSinglePayload(&__dsto[v384], 0, 1, v387);
                  }

                  v458 = *(v500 + 24);
                  v459 = &__dsto[v458];
                  v460 = &v506[v458];
                  *v459 = *v460;
                  *(v459 + 1) = *(v460 + 1);
                  v461 = *(v500 + 28);
                  v462 = &__dsto[v461];
                  v463 = &v506[v461];
                  v464 = *v463;
                  v462[4] = v463[4];
                  *v462 = v464;

                  __swift_storeEnumTagSinglePayload(__dsto, 0, 1, v500);
                }

                v465 = *(v512 + 28);
                v466 = *&v25[v465];
                *&v24[v465] = v466;
                v467 = v466;
                goto LABEL_195;
              case 9u:
                v161 = sub_1DD0DD08C();
                (*(*(v161 - 8) + 16))(v24, v25, v161);
LABEL_195:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v24, v25, *(*(v26 - 8) + 64));
                break;
            }

            *(a1 + v22[6]) = *(a2 + v22[6]);
            v468 = v22[7];
            v469 = a1 + v468;
            v470 = a2 + v468;
            v471 = *(a2 + v468 + 24);

            if (v471)
            {
              *(v469 + 3) = v471;
              *(v469 + 4) = *(v470 + 4);
              (**(v471 - 8))(v469, v470, v471);
            }

            else
            {
              v472 = *v470;
              v473 = *(v470 + 1);
              *(v469 + 4) = *(v470 + 4);
              *v469 = v472;
              *(v469 + 1) = v473;
            }

            *(a1 + v22[8]) = *(a2 + v22[8]);
            v474 = *(*(v7 + 8) + 8);
            swift_getAssociatedTypeWitness();
            v475 = *(swift_getTupleTypeMetadata2() + 48);
            v476 = *(a2 + v475);
            *(a1 + v475) = v476;
            v477 = v476;
            goto LABEL_208;
          case 1u:
            *a1 = *a2;
            sub_1DD0DCF8C();
          case 2u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 3u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 4u:
            v49 = sub_1DD0DB04C();
            (*(*(v49 - 8) + 16))(a1, a2, v49);
            v50 = type metadata accessor for Input(0);
            v51 = v50[5];
            v52 = a1 + v51;
            v53 = a2 + v51;
            v54 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v55 = sub_1DD0DC76C();
                (*(*(v55 - 8) + 16))(v52, v53, v55);
                goto LABEL_187;
              case 1u:
                v159 = sub_1DD0DC76C();
                (*(*(v159 - 8) + 16))(v52, v53, v159);
                v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v52[*(v160 + 48)] = *&v53[*(v160 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v52 = *v53;
                *(v52 + 1) = *(v53 + 1);
                *(v52 + 2) = *(v53 + 2);

                goto LABEL_187;
              case 3u:
                *v52 = *v53;
                swift_unknownObjectRetain();
                goto LABEL_187;
              case 4u:
                v135 = sub_1DD0DB1EC();
                (*(*(v135 - 8) + 16))(v52, v53, v135);
                goto LABEL_187;
              case 5u:
                v162 = *v53;
                *v52 = *v53;
                v163 = v162;
                goto LABEL_187;
              case 6u:
                v165 = sub_1DD0DB4BC();
                (*(*(v165 - 8) + 16))(v52, v53, v165);
                __dstj = type metadata accessor for USOParse();
                v166 = __dstj[5];
                v167 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v53[v166], 1, v167))
                {
                  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v52[v166], &v53[v166], *(*(v168 - 8) + 64));
                }

                else
                {
                  (*(*(v167 - 8) + 16))(&v52[v166], &v53[v166], v167);
                  __swift_storeEnumTagSinglePayload(&v52[v166], 0, 1, v167);
                }

                v311 = __dstj[6];
                v312 = &v52[v311];
                v313 = &v53[v311];
                *v312 = *v313;
                *(v312 + 1) = *(v313 + 1);
                v314 = __dstj[7];
                v315 = &v52[v314];
                v316 = &v53[v314];
                v317 = *v316;
                v315[4] = v316[4];
                *v315 = v317;

                goto LABEL_187;
              case 7u:
                v137 = sub_1DD0DB4BC();
                (*(*(v137 - 8) + 16))(v52, v53, v137);
                __dsti = type metadata accessor for USOParse();
                v138 = __dsti[5];
                v139 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v53[v138], 1, v139))
                {
                  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v52[v138], &v53[v138], *(*(v140 - 8) + 64));
                }

                else
                {
                  (*(*(v139 - 8) + 16))(&v52[v138], &v53[v138], v139);
                  __swift_storeEnumTagSinglePayload(&v52[v138], 0, 1, v139);
                }

                v294 = __dsti[6];
                v295 = &v52[v294];
                v296 = &v53[v294];
                *v295 = *v296;
                *(v295 + 1) = *(v296 + 1);
                v297 = __dsti[7];
                v298 = &v52[v297];
                v299 = &v53[v297];
                v300 = *v299;
                v298[4] = v299[4];
                *v298 = v300;
                v301 = type metadata accessor for LinkParse();
                v302 = v301[5];
                v303 = &v52[v302];
                v304 = &v53[v302];
                *v303 = *v304;
                *(v303 + 1) = *(v304 + 1);
                v305 = v301[6];
                v306 = &v52[v305];
                v307 = &v53[v305];
                *v306 = *v307;
                *(v306 + 1) = *(v307 + 1);
                v308 = v301[7];
                v309 = &v52[v308];
                v310 = &v53[v308];
                *v309 = *v310;
                *(v309 + 1) = *(v310 + 1);

                goto LABEL_187;
              case 8u:
                v176 = sub_1DD0DD12C();
                (*(*(v176 - 8) + 16))(v52, v53, v176);
                v177 = type metadata accessor for NLRouterParse();
                v178 = *(v177 + 20);
                v179 = &v52[v178];
                v180 = &v53[v178];
                *v179 = *v180;
                *(v179 + 1) = *(v180 + 1);
                v181 = *(v177 + 24);
                v511 = v177;
                __dstk = &v52[v181];
                v182 = &v53[v181];
                v183 = type metadata accessor for USOParse();

                if (__swift_getEnumTagSinglePayload(v182, 1, v183))
                {
                  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dstk, v182, *(*(v184 - 8) + 64));
                }

                else
                {
                  v318 = sub_1DD0DB4BC();
                  (*(*(v318 - 8) + 16))(__dstk, v182, v318);
                  v499 = v183;
                  v319 = *(v183 + 20);
                  v320 = sub_1DD0DB3EC();
                  v505 = v182;
                  v321 = &v182[v319];
                  v322 = v320;
                  if (__swift_getEnumTagSinglePayload(v321, 1, v320))
                  {
                    v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dstk[v319], &v505[v319], *(*(v323 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v322 - 8) + 16))(&__dstk[v319], &v505[v319], v322);
                    __swift_storeEnumTagSinglePayload(&__dstk[v319], 0, 1, v322);
                  }

                  v440 = *(v499 + 24);
                  v441 = &__dstk[v440];
                  v442 = &v505[v440];
                  *v441 = *v442;
                  *(v441 + 1) = *(v442 + 1);
                  v443 = *(v499 + 28);
                  v444 = &__dstk[v443];
                  v445 = &v505[v443];
                  v446 = *v445;
                  v444[4] = v445[4];
                  *v444 = v446;

                  __swift_storeEnumTagSinglePayload(__dstk, 0, 1, v499);
                }

                v447 = *(v511 + 28);
                v448 = *&v53[v447];
                *&v52[v447] = v448;
                v449 = v448;
                goto LABEL_187;
              case 9u:
                v136 = sub_1DD0DD08C();
                (*(*(v136 - 8) + 16))(v52, v53, v136);
LABEL_187:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v52, v53, *(*(v54 - 8) + 64));
                break;
            }

            *(a1 + v50[6]) = *(a2 + v50[6]);
            v450 = v50[7];
            v451 = a1 + v450;
            v452 = a2 + v450;
            v453 = *(a2 + v450 + 24);

            if (v453)
            {
              *(v451 + 3) = v453;
              *(v451 + 4) = *(v452 + 4);
              (**(v453 - 8))(v451, v452, v453);
            }

            else
            {
              v454 = *v452;
              v455 = *(v452 + 1);
              *(v451 + 4) = *(v452 + 4);
              *v451 = v454;
              *(v451 + 1) = v455;
            }

            *(a1 + v50[8]) = *(a2 + v50[8]);
            v456 = *(*(v7 + 8) + 8);
            swift_getAssociatedTypeWitness();
            type metadata accessor for RCHFlowSharedData();
            sub_1DD0DE97C();
            v457 = swift_getTupleTypeMetadata2();
            *(a1 + *(v457 + 48)) = *(a2 + *(v457 + 48));
            sub_1DD0DCF8C();
          case 5u:
            v56 = sub_1DD0DB04C();
            (*(*(v56 - 8) + 16))(a1, a2, v56);
            v57 = type metadata accessor for Input(0);
            v58 = v57[5];
            v59 = a1 + v58;
            v60 = a2 + v58;
            v61 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v62 = sub_1DD0DC76C();
                (*(*(v62 - 8) + 16))(v59, v60, v62);
                goto LABEL_203;
              case 1u:
                v238 = sub_1DD0DC76C();
                (*(*(v238 - 8) + 16))(v59, v60, v238);
                v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v59[*(v239 + 48)] = *&v60[*(v239 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v59 = *v60;
                *(v59 + 1) = *(v60 + 1);
                *(v59 + 2) = *(v60 + 2);

                goto LABEL_203;
              case 3u:
                *v59 = *v60;
                swift_unknownObjectRetain();
                goto LABEL_203;
              case 4u:
                v164 = sub_1DD0DB1EC();
                (*(*(v164 - 8) + 16))(v59, v60, v164);
                goto LABEL_203;
              case 5u:
                v266 = *v60;
                *v59 = *v60;
                v267 = v266;
                goto LABEL_203;
              case 6u:
                v268 = sub_1DD0DB4BC();
                (*(*(v268 - 8) + 16))(v59, v60, v268);
                __dstp = type metadata accessor for USOParse();
                v269 = __dstp[5];
                v270 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v60[v269], 1, v270))
                {
                  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v59[v269], &v60[v269], *(*(v271 - 8) + 64));
                }

                else
                {
                  (*(*(v270 - 8) + 16))(&v59[v269], &v60[v269], v270);
                  __swift_storeEnumTagSinglePayload(&v59[v269], 0, 1, v270);
                }

                v409 = __dstp[6];
                v410 = &v59[v409];
                v411 = &v60[v409];
                *v410 = *v411;
                *(v410 + 1) = *(v411 + 1);
                v412 = __dstp[7];
                v413 = &v59[v412];
                v414 = &v60[v412];
                v415 = *v414;
                v413[4] = v414[4];
                *v413 = v415;

                goto LABEL_203;
              case 7u:
                v215 = sub_1DD0DB4BC();
                (*(*(v215 - 8) + 16))(v59, v60, v215);
                __dstm = type metadata accessor for USOParse();
                v216 = __dstm[5];
                v217 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v60[v216], 1, v217))
                {
                  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v59[v216], &v60[v216], *(*(v218 - 8) + 64));
                }

                else
                {
                  (*(*(v217 - 8) + 16))(&v59[v216], &v60[v216], v217);
                  __swift_storeEnumTagSinglePayload(&v59[v216], 0, 1, v217);
                }

                v359 = __dstm[6];
                v360 = &v59[v359];
                v361 = &v60[v359];
                *v360 = *v361;
                *(v360 + 1) = *(v361 + 1);
                v362 = __dstm[7];
                v363 = &v59[v362];
                v364 = &v60[v362];
                v365 = *v364;
                v363[4] = v364[4];
                *v363 = v365;
                v366 = type metadata accessor for LinkParse();
                v367 = v366[5];
                v368 = &v59[v367];
                v369 = &v60[v367];
                *v368 = *v369;
                *(v368 + 1) = *(v369 + 1);
                v370 = v366[6];
                v371 = &v59[v370];
                v372 = &v60[v370];
                *v371 = *v372;
                *(v371 + 1) = *(v372 + 1);
                v373 = v366[7];
                v374 = &v59[v373];
                v375 = &v60[v373];
                *v374 = *v375;
                *(v374 + 1) = *(v375 + 1);

                goto LABEL_203;
              case 8u:
                v279 = sub_1DD0DD12C();
                (*(*(v279 - 8) + 16))(v59, v60, v279);
                v280 = type metadata accessor for NLRouterParse();
                v281 = *(v280 + 20);
                v282 = &v59[v281];
                v283 = &v60[v281];
                *v282 = *v283;
                *(v282 + 1) = *(v283 + 1);
                v284 = *(v280 + 24);
                v513 = v280;
                __dstq = &v59[v284];
                v285 = &v60[v284];
                v286 = type metadata accessor for USOParse();

                if (__swift_getEnumTagSinglePayload(v285, 1, v286))
                {
                  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dstq, v285, *(*(v287 - 8) + 64));
                }

                else
                {
                  v416 = sub_1DD0DB4BC();
                  (*(*(v416 - 8) + 16))(__dstq, v285, v416);
                  v501 = v286;
                  v417 = *(v286 + 20);
                  v418 = sub_1DD0DB3EC();
                  v507 = v285;
                  v419 = &v285[v417];
                  v420 = v418;
                  if (__swift_getEnumTagSinglePayload(v419, 1, v418))
                  {
                    v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dstq[v417], &v507[v417], *(*(v421 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v420 - 8) + 16))(&__dstq[v417], &v507[v417], v420);
                    __swift_storeEnumTagSinglePayload(&__dstq[v417], 0, 1, v420);
                  }

                  v478 = *(v501 + 24);
                  v479 = &__dstq[v478];
                  v480 = &v507[v478];
                  *v479 = *v480;
                  *(v479 + 1) = *(v480 + 1);
                  v481 = *(v501 + 28);
                  v482 = &__dstq[v481];
                  v483 = &v507[v481];
                  v484 = *v483;
                  v482[4] = v483[4];
                  *v482 = v484;

                  __swift_storeEnumTagSinglePayload(__dstq, 0, 1, v501);
                }

                v485 = *(v513 + 28);
                v486 = *&v60[v485];
                *&v59[v485] = v486;
                v487 = v486;
                goto LABEL_203;
              case 9u:
                v191 = sub_1DD0DD08C();
                (*(*(v191 - 8) + 16))(v59, v60, v191);
LABEL_203:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v59, v60, *(*(v61 - 8) + 64));
                break;
            }

            *(a1 + v57[6]) = *(a2 + v57[6]);
            v488 = v57[7];
            v489 = a1 + v488;
            v490 = a2 + v488;
            v491 = *(a2 + v488 + 24);

            if (v491)
            {
              *(v489 + 3) = v491;
              *(v489 + 4) = *(v490 + 4);
              (**(v491 - 8))(v489, v490, v491);
            }

            else
            {
              v492 = *v490;
              v493 = *(v490 + 1);
              *(v489 + 4) = *(v490 + 4);
              *v489 = v492;
              *(v489 + 1) = v493;
            }

            *(a1 + v57[8]) = *(a2 + v57[8]);
            v494 = *(*(v7 + 8) + 8);
            swift_getAssociatedTypeWitness();
            type metadata accessor for RCHFlowSharedData();
            sub_1DD0DE97C();
            v495 = swift_getTupleTypeMetadata2();
            *(a1 + *(v495 + 48)) = *(a2 + *(v495 + 48));
            sub_1DD0DCF8C();
          case 6u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 7u:
            *a1 = *a2;
            sub_1DD0DCF8C();
          case 8u:
            *a1 = *a2;
            a1[1] = a2[1];
            a1[2] = a2[2];
            sub_1DD0DCF8C();
          case 9u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 0xAu:
            v63 = *a2;
            v64 = a2[1];
            v65 = a2[2];
            sub_1DCB72E48(v63);
            *a1 = v63;
            a1[1] = v64;
            a1[2] = v65;
            goto LABEL_208;
          case 0xBu:
            v47 = *a2;
            v48 = v47;
            *a1 = v47;
LABEL_208:
            swift_storeEnumTagMultiPayload();
            return a1;
          default:
            v18 = *(v20 + 64);
            goto LABEL_9;
        }
      }

      return a1;
    }

    (*(*(v8 - 8) + 8))(a1, v8);
  }

  v18 = *(*(a3 - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v18);
}

char *sub_1DCEF51A0(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RCHFlowAsync.State();
  if (!__swift_getEnumTagSinglePayload(a2, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v26 = sub_1DD0DB04C();
      (*(*(v26 - 8) + 32))(a1, a2, v26);
      v20 = type metadata accessor for Input(0);
      v27 = v20[5];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 32))(v28, v29, v31);
          goto LABEL_71;
        case 1u:
          v49 = sub_1DD0DC76C();
          (*(*(v49 - 8) + 32))(v28, v29, v49);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v28[*(v50 + 48)] = *&v29[*(v50 + 48)];
          goto LABEL_71;
        case 4u:
          v61 = sub_1DD0DB1EC();
          (*(*(v61 - 8) + 32))(v28, v29, v61);
          goto LABEL_71;
        case 6u:
          v67 = sub_1DD0DB4BC();
          (*(*(v67 - 8) + 32))(v28, v29, v67);
          v145 = type metadata accessor for USOParse();
          v68 = v145[5];
          v69 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v68], 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v68], &v29[v68], *(*(v70 - 8) + 64));
          }

          else
          {
            (*(*(v69 - 8) + 32))(&v28[v68], &v29[v68], v69);
            __swift_storeEnumTagSinglePayload(&v28[v68], 0, 1, v69);
          }

          *&v28[v145[6]] = *&v29[v145[6]];
          v96 = v145[7];
          v97 = &v28[v96];
          v98 = &v29[v96];
          v97[4] = v98[4];
          *v97 = *v98;
          goto LABEL_71;
        case 7u:
          v71 = sub_1DD0DB4BC();
          (*(*(v71 - 8) + 32))(v28, v29, v71);
          v146 = type metadata accessor for USOParse();
          v72 = v146[5];
          v73 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v29[v72], 1, v73))
          {
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v28[v72], &v29[v72], *(*(v74 - 8) + 64));
          }

          else
          {
            (*(*(v73 - 8) + 32))(&v28[v72], &v29[v72], v73);
            __swift_storeEnumTagSinglePayload(&v28[v72], 0, 1, v73);
          }

          *&v28[v146[6]] = *&v29[v146[6]];
          v99 = v146[7];
          v100 = &v28[v99];
          v101 = &v29[v99];
          v100[4] = v101[4];
          *v100 = *v101;
          v102 = type metadata accessor for LinkParse();
          *&v28[v102[5]] = *&v29[v102[5]];
          *&v28[v102[6]] = *&v29[v102[6]];
          *&v28[v102[7]] = *&v29[v102[7]];
          goto LABEL_71;
        case 8u:
          v37 = sub_1DD0DD12C();
          (*(*(v37 - 8) + 32))(v28, v29, v37);
          v38 = type metadata accessor for NLRouterParse();
          *&v28[*(v38 + 20)] = *&v29[*(v38 + 20)];
          v39 = *(v38 + 24);
          v141 = v38;
          __dsta = &v28[v39];
          v40 = &v29[v39];
          v138 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v40, 1, v138))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v40, *(*(v41 - 8) + 64));
          }

          else
          {
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 32))(__dsta, v40, v85);
            v135 = v138[5];
            v132 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v40[v135], 1, v132))
            {
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v135], &v40[v135], *(*(v86 - 8) + 64));
            }

            else
            {
              (*(*(v132 - 8) + 32))(&__dsta[v135], &v40[v135]);
              __swift_storeEnumTagSinglePayload(&__dsta[v135], 0, 1, v132);
            }

            *&__dsta[v138[6]] = *&v40[v138[6]];
            v119 = v138[7];
            v120 = &__dsta[v119];
            v121 = &v40[v119];
            v120[4] = v121[4];
            *v120 = *v121;
            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v138);
          }

          *&v28[*(v141 + 28)] = *&v29[*(v141 + 28)];
          goto LABEL_71;
        case 9u:
          v55 = sub_1DD0DD08C();
          (*(*(v55 - 8) + 32))(v28, v29, v55);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v28, v29, *(*(v30 - 8) + 64));
          break;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_79:
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
          return a1;
        }

        v12 = sub_1DD0DB04C();
        (*(*(v12 - 8) + 32))(a1, a2, v12);
        v13 = type metadata accessor for Input(0);
        v14 = v13[5];
        v15 = &a1[v14];
        v16 = &a2[v14];
        v17 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v18 = sub_1DD0DC76C();
            (*(*(v18 - 8) + 32))(v15, v16, v18);
            goto LABEL_76;
          case 1u:
            v51 = sub_1DD0DC76C();
            (*(*(v51 - 8) + 32))(v15, v16, v51);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v15[*(v52 + 48)] = *&v16[*(v52 + 48)];
            goto LABEL_76;
          case 4u:
            v66 = sub_1DD0DB1EC();
            (*(*(v66 - 8) + 32))(v15, v16, v66);
            goto LABEL_76;
          case 6u:
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 32))(v15, v16, v75);
            v147 = type metadata accessor for USOParse();
            v76 = v147[5];
            v77 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v16[v76], 1, v77))
            {
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v15[v76], &v16[v76], *(*(v78 - 8) + 64));
            }

            else
            {
              (*(*(v77 - 8) + 32))(&v15[v76], &v16[v76], v77);
              __swift_storeEnumTagSinglePayload(&v15[v76], 0, 1, v77);
            }

            *&v15[v147[6]] = *&v16[v147[6]];
            v103 = v147[7];
            v104 = &v15[v103];
            v105 = &v16[v103];
            v104[4] = v105[4];
            *v104 = *v105;
            goto LABEL_76;
          case 7u:
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 32))(v15, v16, v79);
            v148 = type metadata accessor for USOParse();
            v80 = v148[5];
            v81 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v16[v80], 1, v81))
            {
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v15[v80], &v16[v80], *(*(v82 - 8) + 64));
            }

            else
            {
              (*(*(v81 - 8) + 32))(&v15[v80], &v16[v80], v81);
              __swift_storeEnumTagSinglePayload(&v15[v80], 0, 1, v81);
            }

            *&v15[v148[6]] = *&v16[v148[6]];
            v106 = v148[7];
            v107 = &v15[v106];
            v108 = &v16[v106];
            v107[4] = v108[4];
            *v107 = *v108;
            v109 = type metadata accessor for LinkParse();
            *&v15[v109[5]] = *&v16[v109[5]];
            *&v15[v109[6]] = *&v16[v109[6]];
            *&v15[v109[7]] = *&v16[v109[7]];
            goto LABEL_76;
          case 8u:
            v44 = sub_1DD0DD12C();
            (*(*(v44 - 8) + 32))(v15, v16, v44);
            v45 = type metadata accessor for NLRouterParse();
            *&v15[*(v45 + 20)] = *&v16[*(v45 + 20)];
            v46 = *(v45 + 24);
            v142 = v45;
            __dstb = &v15[v46];
            v47 = &v16[v46];
            v139 = type metadata accessor for USOParse();
            if (__swift_getEnumTagSinglePayload(v47, 1, v139))
            {
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v47, *(*(v48 - 8) + 64));
            }

            else
            {
              v87 = sub_1DD0DB4BC();
              (*(*(v87 - 8) + 32))(__dstb, v47, v87);
              v136 = v139[5];
              v133 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v47[v136], 1, v133))
              {
                v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v136], &v47[v136], *(*(v88 - 8) + 64));
              }

              else
              {
                (*(*(v133 - 8) + 32))(&__dstb[v136], &v47[v136]);
                __swift_storeEnumTagSinglePayload(&__dstb[v136], 0, 1, v133);
              }

              *&__dstb[v139[6]] = *&v47[v139[6]];
              v122 = v139[7];
              v123 = &__dstb[v122];
              v124 = &v47[v122];
              v123[4] = v124[4];
              *v123 = *v124;
              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v139);
            }

            *&v15[*(v142 + 28)] = *&v16[*(v142 + 28)];
            goto LABEL_76;
          case 9u:
            v60 = sub_1DD0DD08C();
            (*(*(v60 - 8) + 32))(v15, v16, v60);
LABEL_76:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v15, v16, *(*(v17 - 8) + 64));
            break;
        }

        *&a1[v13[6]] = *&a2[v13[6]];
        v125 = v13[7];
        v126 = &a1[v125];
        v127 = &a2[v125];
        v128 = *(v127 + 1);
        *v126 = *v127;
        *(v126 + 1) = v128;
        *(v126 + 4) = *(v127 + 4);
        a1[v13[8]] = a2[v13[8]];
        v129 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_78:
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }

      v19 = sub_1DD0DB04C();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      v20 = type metadata accessor for Input(0);
      v21 = v20[5];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v25 = sub_1DD0DC76C();
          (*(*(v25 - 8) + 32))(v22, v23, v25);
          goto LABEL_66;
        case 1u:
          v42 = sub_1DD0DC76C();
          (*(*(v42 - 8) + 32))(v22, v23, v42);
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v22[*(v43 + 48)] = *&v23[*(v43 + 48)];
          goto LABEL_66;
        case 4u:
          v54 = sub_1DD0DB1EC();
          (*(*(v54 - 8) + 32))(v22, v23, v54);
          goto LABEL_66;
        case 6u:
          v56 = sub_1DD0DB4BC();
          (*(*(v56 - 8) + 32))(v22, v23, v56);
          v143 = type metadata accessor for USOParse();
          v57 = v143[5];
          v58 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v23[v57], 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v22[v57], &v23[v57], *(*(v59 - 8) + 64));
          }

          else
          {
            (*(*(v58 - 8) + 32))(&v22[v57], &v23[v57], v58);
            __swift_storeEnumTagSinglePayload(&v22[v57], 0, 1, v58);
          }

          *&v22[v143[6]] = *&v23[v143[6]];
          v89 = v143[7];
          v90 = &v22[v89];
          v91 = &v23[v89];
          v90[4] = v91[4];
          *v90 = *v91;
          goto LABEL_66;
        case 7u:
          v62 = sub_1DD0DB4BC();
          (*(*(v62 - 8) + 32))(v22, v23, v62);
          v144 = type metadata accessor for USOParse();
          v63 = v144[5];
          v64 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v23[v63], 1, v64))
          {
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v22[v63], &v23[v63], *(*(v65 - 8) + 64));
          }

          else
          {
            (*(*(v64 - 8) + 32))(&v22[v63], &v23[v63], v64);
            __swift_storeEnumTagSinglePayload(&v22[v63], 0, 1, v64);
          }

          *&v22[v144[6]] = *&v23[v144[6]];
          v92 = v144[7];
          v93 = &v22[v92];
          v94 = &v23[v92];
          v93[4] = v94[4];
          *v93 = *v94;
          v95 = type metadata accessor for LinkParse();
          *&v22[v95[5]] = *&v23[v95[5]];
          *&v22[v95[6]] = *&v23[v95[6]];
          *&v22[v95[7]] = *&v23[v95[7]];
          goto LABEL_66;
        case 8u:
          v32 = sub_1DD0DD12C();
          (*(*(v32 - 8) + 32))(v22, v23, v32);
          v33 = type metadata accessor for NLRouterParse();
          *&v22[*(v33 + 20)] = *&v23[*(v33 + 20)];
          v34 = *(v33 + 24);
          v140 = v33;
          __dst = &v22[v34];
          v35 = &v23[v34];
          v137 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v35, 1, v137))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v35, *(*(v36 - 8) + 64));
          }

          else
          {
            v83 = sub_1DD0DB4BC();
            (*(*(v83 - 8) + 32))(__dst, v35, v83);
            v134 = v137[5];
            v131 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v35[v134], 1, v131))
            {
              v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v134], &v35[v134], *(*(v84 - 8) + 64));
            }

            else
            {
              (*(*(v131 - 8) + 32))(&__dst[v134], &v35[v134]);
              __swift_storeEnumTagSinglePayload(&__dst[v134], 0, 1, v131);
            }

            *&__dst[v137[6]] = *&v35[v137[6]];
            v110 = v137[7];
            v111 = &__dst[v110];
            v112 = &v35[v110];
            v111[4] = v112[4];
            *v111 = *v112;
            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v137);
          }

          *&v22[*(v140 + 28)] = *&v23[*(v140 + 28)];
          goto LABEL_66;
        case 9u:
          v53 = sub_1DD0DD08C();
          (*(*(v53 - 8) + 32))(v22, v23, v53);
LABEL_66:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v22, v23, *(*(v24 - 8) + 64));
          break;
      }
    }

    *&a1[v20[6]] = *&a2[v20[6]];
    v113 = v20[7];
    v114 = &a1[v113];
    v115 = &a2[v113];
    v116 = *(v115 + 1);
    *v114 = *v115;
    *(v114 + 1) = v116;
    *(v114 + 4) = *(v115 + 4);
    a1[v20[8]] = a2[v20[8]];
    v117 = *(*(v7 + 8) + 8);
    swift_getAssociatedTypeWitness();
    type metadata accessor for RCHFlowSharedData();
    sub_1DD0DE97C();
    v118 = swift_getTupleTypeMetadata2();
    *&a1[*(v118 + 48)] = *&a2[*(v118 + 48)];
    goto LABEL_78;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

char *sub_1DCEF687C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RCHFlowAsync.State();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v8);
  v10 = __swift_getEnumTagSinglePayload(a2, 1, v8);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 5)
      {
        v37 = sub_1DD0DB04C();
        (*(*(v37 - 8) + 32))(a1, a2, v37);
        v31 = type metadata accessor for Input(0);
        v38 = v31[5];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v41 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v42 = sub_1DD0DC76C();
            (*(*(v42 - 8) + 32))(v39, v40, v42);
            goto LABEL_120;
          case 1u:
            v73 = sub_1DD0DC76C();
            (*(*(v73 - 8) + 32))(v39, v40, v73);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v39[*(v74 + 48)] = *&v40[*(v74 + 48)];
            goto LABEL_120;
          case 4u:
            v85 = sub_1DD0DB1EC();
            (*(*(v85 - 8) + 32))(v39, v40, v85);
            goto LABEL_120;
          case 6u:
            v91 = sub_1DD0DB4BC();
            (*(*(v91 - 8) + 32))(v39, v40, v91);
            v277 = type metadata accessor for USOParse();
            v92 = v277[5];
            v93 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v40[v92], 1, v93))
            {
              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v39[v92], &v40[v92], *(*(v94 - 8) + 64));
            }

            else
            {
              (*(*(v93 - 8) + 32))(&v39[v92], &v40[v92], v93);
              __swift_storeEnumTagSinglePayload(&v39[v92], 0, 1, v93);
            }

            *&v39[v277[6]] = *&v40[v277[6]];
            v159 = v277[7];
            v160 = &v39[v159];
            v161 = &v40[v159];
            v160[4] = v161[4];
            *v160 = *v161;
            goto LABEL_120;
          case 7u:
            v95 = sub_1DD0DB4BC();
            (*(*(v95 - 8) + 32))(v39, v40, v95);
            v278 = type metadata accessor for USOParse();
            v96 = v278[5];
            v97 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v40[v96], 1, v97))
            {
              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v39[v96], &v40[v96], *(*(v98 - 8) + 64));
            }

            else
            {
              (*(*(v97 - 8) + 32))(&v39[v96], &v40[v96], v97);
              __swift_storeEnumTagSinglePayload(&v39[v96], 0, 1, v97);
            }

            *&v39[v278[6]] = *&v40[v278[6]];
            v166 = v278[7];
            v167 = &v39[v166];
            v168 = &v40[v166];
            v167[4] = v168[4];
            *v167 = *v168;
            v169 = type metadata accessor for LinkParse();
            *&v39[v169[5]] = *&v40[v169[5]];
            *&v39[v169[6]] = *&v40[v169[6]];
            *&v39[v169[7]] = *&v40[v169[7]];
            goto LABEL_120;
          case 8u:
            v61 = sub_1DD0DD12C();
            (*(*(v61 - 8) + 32))(v39, v40, v61);
            v62 = type metadata accessor for NLRouterParse();
            *&v39[*(v62 + 20)] = *&v40[*(v62 + 20)];
            v63 = *(v62 + 24);
            v273 = v62;
            __dsta = &v39[v63];
            v64 = &v40[v63];
            v267 = type metadata accessor for USOParse();
            if (__swift_getEnumTagSinglePayload(v64, 1, v267))
            {
              v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsta, v64, *(*(v65 - 8) + 64));
            }

            else
            {
              v119 = sub_1DD0DB4BC();
              (*(*(v119 - 8) + 32))(__dsta, v64, v119);
              v261 = v267[5];
              v255 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v64[v261], 1, v255))
              {
                v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsta[v261], &v64[v261], *(*(v120 - 8) + 64));
              }

              else
              {
                (*(*(v255 - 8) + 32))(&__dsta[v261], &v64[v261]);
                __swift_storeEnumTagSinglePayload(&__dsta[v261], 0, 1, v255);
              }

              *&__dsta[v267[6]] = *&v64[v267[6]];
              v198 = v267[7];
              v199 = &__dsta[v198];
              v200 = &v64[v198];
              v199[4] = v200[4];
              *v199 = *v200;
              __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v267);
            }

            *&v39[*(v273 + 28)] = *&v40[*(v273 + 28)];
            goto LABEL_120;
          case 9u:
            v79 = sub_1DD0DD08C();
            (*(*(v79 - 8) + 32))(v39, v40, v79);
LABEL_120:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v39, v40, *(*(v41 - 8) + 64));
            break;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload)
          {
            memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_130:
            __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
            return a1;
          }

          v12 = sub_1DD0DB04C();
          (*(*(v12 - 8) + 32))(a1, a2, v12);
          v13 = type metadata accessor for Input(0);
          v14 = v13[5];
          v15 = &a1[v14];
          v16 = &a2[v14];
          v17 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v18 = sub_1DD0DC76C();
              (*(*(v18 - 8) + 32))(v15, v16, v18);
              goto LABEL_127;
            case 1u:
              v75 = sub_1DD0DC76C();
              (*(*(v75 - 8) + 32))(v15, v16, v75);
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v15[*(v76 + 48)] = *&v16[*(v76 + 48)];
              goto LABEL_127;
            case 4u:
              v90 = sub_1DD0DB1EC();
              (*(*(v90 - 8) + 32))(v15, v16, v90);
              goto LABEL_127;
            case 6u:
              v99 = sub_1DD0DB4BC();
              (*(*(v99 - 8) + 32))(v15, v16, v99);
              v279 = type metadata accessor for USOParse();
              v100 = v279[5];
              v101 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v16[v100], 1, v101))
              {
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v15[v100], &v16[v100], *(*(v102 - 8) + 64));
              }

              else
              {
                (*(*(v101 - 8) + 32))(&v15[v100], &v16[v100], v101);
                __swift_storeEnumTagSinglePayload(&v15[v100], 0, 1, v101);
              }

              *&v15[v279[6]] = *&v16[v279[6]];
              v174 = v279[7];
              v175 = &v15[v174];
              v176 = &v16[v174];
              v175[4] = v176[4];
              *v175 = *v176;
              goto LABEL_127;
            case 7u:
              v103 = sub_1DD0DB4BC();
              (*(*(v103 - 8) + 32))(v15, v16, v103);
              v280 = type metadata accessor for USOParse();
              v104 = v280[5];
              v105 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v16[v104], 1, v105))
              {
                v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v15[v104], &v16[v104], *(*(v106 - 8) + 64));
              }

              else
              {
                (*(*(v105 - 8) + 32))(&v15[v104], &v16[v104], v105);
                __swift_storeEnumTagSinglePayload(&v15[v104], 0, 1, v105);
              }

              *&v15[v280[6]] = *&v16[v280[6]];
              v181 = v280[7];
              v182 = &v15[v181];
              v183 = &v16[v181];
              v182[4] = v183[4];
              *v182 = *v183;
              v184 = type metadata accessor for LinkParse();
              *&v15[v184[5]] = *&v16[v184[5]];
              *&v15[v184[6]] = *&v16[v184[6]];
              *&v15[v184[7]] = *&v16[v184[7]];
              goto LABEL_127;
            case 8u:
              v68 = sub_1DD0DD12C();
              (*(*(v68 - 8) + 32))(v15, v16, v68);
              v69 = type metadata accessor for NLRouterParse();
              *&v15[*(v69 + 20)] = *&v16[*(v69 + 20)];
              v70 = *(v69 + 24);
              v274 = v69;
              __dstb = &v15[v70];
              v71 = &v16[v70];
              v268 = type metadata accessor for USOParse();
              if (__swift_getEnumTagSinglePayload(v71, 1, v268))
              {
                v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstb, v71, *(*(v72 - 8) + 64));
              }

              else
              {
                v128 = sub_1DD0DB4BC();
                (*(*(v128 - 8) + 32))(__dstb, v71, v128);
                v262 = v268[5];
                v256 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v71[v262], 1, v256))
                {
                  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstb[v262], &v71[v262], *(*(v129 - 8) + 64));
                }

                else
                {
                  (*(*(v256 - 8) + 32))(&__dstb[v262], &v71[v262]);
                  __swift_storeEnumTagSinglePayload(&__dstb[v262], 0, 1, v256);
                }

                *&__dstb[v268[6]] = *&v71[v268[6]];
                v203 = v268[7];
                v204 = &__dstb[v203];
                v205 = &v71[v203];
                v204[4] = v205[4];
                *v204 = *v205;
                __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v268);
              }

              *&v15[*(v274 + 28)] = *&v16[*(v274 + 28)];
              goto LABEL_127;
            case 9u:
              v84 = sub_1DD0DD08C();
              (*(*(v84 - 8) + 32))(v15, v16, v84);
LABEL_127:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v15, v16, *(*(v17 - 8) + 64));
              break;
          }

          *&a1[v13[6]] = *&a2[v13[6]];
          v206 = v13[7];
          v207 = &a1[v206];
          v208 = &a2[v206];
          v209 = *(v208 + 1);
          *v207 = *v208;
          *(v207 + 1) = v209;
          *(v207 + 4) = *(v208 + 4);
          a1[v13[8]] = a2[v13[8]];
          v210 = *(*(v7 + 8) + 8);
          swift_getAssociatedTypeWitness();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_129:
          swift_storeEnumTagMultiPayload();
          goto LABEL_130;
        }

        v30 = sub_1DD0DB04C();
        (*(*(v30 - 8) + 32))(a1, a2, v30);
        v31 = type metadata accessor for Input(0);
        v32 = v31[5];
        v33 = &a1[v32];
        v34 = &a2[v32];
        v35 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v36 = sub_1DD0DC76C();
            (*(*(v36 - 8) + 32))(v33, v34, v36);
            goto LABEL_113;
          case 1u:
            v66 = sub_1DD0DC76C();
            (*(*(v66 - 8) + 32))(v33, v34, v66);
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v33[*(v67 + 48)] = *&v34[*(v67 + 48)];
            goto LABEL_113;
          case 4u:
            v78 = sub_1DD0DB1EC();
            (*(*(v78 - 8) + 32))(v33, v34, v78);
            goto LABEL_113;
          case 6u:
            v80 = sub_1DD0DB4BC();
            (*(*(v80 - 8) + 32))(v33, v34, v80);
            v275 = type metadata accessor for USOParse();
            v81 = v275[5];
            v82 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v34[v81], 1, v82))
            {
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v33[v81], &v34[v81], *(*(v83 - 8) + 64));
            }

            else
            {
              (*(*(v82 - 8) + 32))(&v33[v81], &v34[v81], v82);
              __swift_storeEnumTagSinglePayload(&v33[v81], 0, 1, v82);
            }

            *&v33[v275[6]] = *&v34[v275[6]];
            v141 = v275[7];
            v142 = &v33[v141];
            v143 = &v34[v141];
            v142[4] = v143[4];
            *v142 = *v143;
            goto LABEL_113;
          case 7u:
            v86 = sub_1DD0DB4BC();
            (*(*(v86 - 8) + 32))(v33, v34, v86);
            v276 = type metadata accessor for USOParse();
            v87 = v276[5];
            v88 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v34[v87], 1, v88))
            {
              v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v33[v87], &v34[v87], *(*(v89 - 8) + 64));
            }

            else
            {
              (*(*(v88 - 8) + 32))(&v33[v87], &v34[v87], v88);
              __swift_storeEnumTagSinglePayload(&v33[v87], 0, 1, v88);
            }

            *&v33[v276[6]] = *&v34[v276[6]];
            v150 = v276[7];
            v151 = &v33[v150];
            v152 = &v34[v150];
            v151[4] = v152[4];
            *v151 = *v152;
            v153 = type metadata accessor for LinkParse();
            *&v33[v153[5]] = *&v34[v153[5]];
            *&v33[v153[6]] = *&v34[v153[6]];
            *&v33[v153[7]] = *&v34[v153[7]];
            goto LABEL_113;
          case 8u:
            v56 = sub_1DD0DD12C();
            (*(*(v56 - 8) + 32))(v33, v34, v56);
            v57 = type metadata accessor for NLRouterParse();
            *&v33[*(v57 + 20)] = *&v34[*(v57 + 20)];
            v58 = *(v57 + 24);
            v272 = v57;
            __dst = &v33[v58];
            v59 = &v34[v58];
            v266 = type metadata accessor for USOParse();
            if (__swift_getEnumTagSinglePayload(v59, 1, v266))
            {
              v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v59, *(*(v60 - 8) + 64));
            }

            else
            {
              v112 = sub_1DD0DB4BC();
              (*(*(v112 - 8) + 32))(__dst, v59, v112);
              v260 = v266[5];
              v254 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v59[v260], 1, v254))
              {
                v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v260], &v59[v260], *(*(v113 - 8) + 64));
              }

              else
              {
                (*(*(v254 - 8) + 32))(&__dst[v260], &v59[v260]);
                __swift_storeEnumTagSinglePayload(&__dst[v260], 0, 1, v254);
              }

              *&__dst[v266[6]] = *&v59[v266[6]];
              v187 = v266[7];
              v188 = &__dst[v187];
              v189 = &v59[v187];
              v188[4] = v189[4];
              *v188 = *v189;
              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v266);
            }

            *&v33[*(v272 + 28)] = *&v34[*(v272 + 28)];
            goto LABEL_113;
          case 9u:
            v77 = sub_1DD0DD08C();
            (*(*(v77 - 8) + 32))(v33, v34, v77);
LABEL_113:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v33, v34, *(*(v35 - 8) + 64));
            break;
        }
      }

      *&a1[v31[6]] = *&a2[v31[6]];
      v190 = v31[7];
      v191 = &a1[v190];
      v192 = &a2[v190];
      v193 = *(v192 + 1);
      *v191 = *v192;
      *(v191 + 1) = v193;
      *(v191 + 4) = *(v192 + 4);
      a1[v31[8]] = a2[v31[8]];
      v194 = *(*(v7 + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v195 = swift_getTupleTypeMetadata2();
      *&a1[*(v195 + 48)] = *&a2[*(v195 + 48)];
      goto LABEL_129;
    }

    goto LABEL_10;
  }

  if (!v10)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v21 = *(v8 - 8);
    (*(v21 + 8))(a1, v8);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 == 5)
    {
      v50 = sub_1DD0DB04C();
      (*(*(v50 - 8) + 32))(a1, a2, v50);
      v44 = type metadata accessor for Input(0);
      v51 = v44[5];
      v52 = &a1[v51];
      v53 = &a2[v51];
      v54 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v55 = sub_1DD0DC76C();
          (*(*(v55 - 8) + 32))(v52, v53, v55);
          goto LABEL_151;
        case 1u:
          v130 = sub_1DD0DC76C();
          (*(*(v130 - 8) + 32))(v52, v53, v130);
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v52[*(v131 + 48)] = *&v53[*(v131 + 48)];
          goto LABEL_151;
        case 4u:
          v145 = sub_1DD0DB1EC();
          (*(*(v145 - 8) + 32))(v52, v53, v145);
          goto LABEL_151;
        case 6u:
          v155 = sub_1DD0DB4BC();
          (*(*(v155 - 8) + 32))(v52, v53, v155);
          v286 = type metadata accessor for USOParse();
          v156 = v286[5];
          v157 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v53[v156], 1, v157))
          {
            v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v52[v156], &v53[v156], *(*(v158 - 8) + 64));
          }

          else
          {
            (*(*(v157 - 8) + 32))(&v52[v156], &v53[v156], v157);
            __swift_storeEnumTagSinglePayload(&v52[v156], 0, 1, v157);
          }

          *&v52[v286[6]] = *&v53[v286[6]];
          v219 = v286[7];
          v220 = &v52[v219];
          v221 = &v53[v219];
          v220[4] = v221[4];
          *v220 = *v221;
          goto LABEL_151;
        case 7u:
          v162 = sub_1DD0DB4BC();
          (*(*(v162 - 8) + 32))(v52, v53, v162);
          v287 = type metadata accessor for USOParse();
          v163 = v287[5];
          v164 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v53[v163], 1, v164))
          {
            v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v52[v163], &v53[v163], *(*(v165 - 8) + 64));
          }

          else
          {
            (*(*(v164 - 8) + 32))(&v52[v163], &v53[v163], v164);
            __swift_storeEnumTagSinglePayload(&v52[v163], 0, 1, v164);
          }

          *&v52[v287[6]] = *&v53[v287[6]];
          v222 = v287[7];
          v223 = &v52[v222];
          v224 = &v53[v222];
          v223[4] = v224[4];
          *v223 = *v224;
          v225 = type metadata accessor for LinkParse();
          *&v52[v225[5]] = *&v53[v225[5]];
          *&v52[v225[6]] = *&v53[v225[6]];
          *&v52[v225[7]] = *&v53[v225[7]];
          goto LABEL_151;
        case 8u:
          v114 = sub_1DD0DD12C();
          (*(*(v114 - 8) + 32))(v52, v53, v114);
          v115 = type metadata accessor for NLRouterParse();
          *&v52[*(v115 + 20)] = *&v53[*(v115 + 20)];
          v116 = *(v115 + 24);
          v282 = v115;
          __dstd = &v52[v116];
          v117 = &v53[v116];
          v270 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v117, 1, v270))
          {
            v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstd, v117, *(*(v118 - 8) + 64));
          }

          else
          {
            v196 = sub_1DD0DB4BC();
            (*(*(v196 - 8) + 32))(__dstd, v117, v196);
            v264 = v270[5];
            v258 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v117[v264], 1, v258))
            {
              v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstd[v264], &v117[v264], *(*(v197 - 8) + 64));
            }

            else
            {
              (*(*(v258 - 8) + 32))(&__dstd[v264], &v117[v264]);
              __swift_storeEnumTagSinglePayload(&__dstd[v264], 0, 1, v258);
            }

            *&__dstd[v270[6]] = *&v117[v270[6]];
            v242 = v270[7];
            v243 = &__dstd[v242];
            v244 = &v117[v242];
            v243[4] = v244[4];
            *v243 = *v244;
            __swift_storeEnumTagSinglePayload(__dstd, 0, 1, v270);
          }

          *&v52[*(v282 + 28)] = *&v53[*(v282 + 28)];
          goto LABEL_151;
        case 9u:
          v136 = sub_1DD0DD08C();
          (*(*(v136 - 8) + 32))(v52, v53, v136);
LABEL_151:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v52, v53, *(*(v54 - 8) + 64));
          break;
      }
    }

    else
    {
      if (v22 != 4)
      {
        if (v22)
        {
          v19 = *(v21 + 64);
          goto LABEL_11;
        }

        v23 = sub_1DD0DB04C();
        (*(*(v23 - 8) + 32))(a1, a2, v23);
        v24 = type metadata accessor for Input(0);
        v25 = v24[5];
        v26 = &a1[v25];
        v27 = &a2[v25];
        v28 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v29 = sub_1DD0DC76C();
            (*(*(v29 - 8) + 32))(v26, v27, v29);
            goto LABEL_156;
          case 1u:
            v132 = sub_1DD0DC76C();
            (*(*(v132 - 8) + 32))(v26, v27, v132);
            v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v26[*(v133 + 48)] = *&v27[*(v133 + 48)];
            goto LABEL_156;
          case 4u:
            v154 = sub_1DD0DB1EC();
            (*(*(v154 - 8) + 32))(v26, v27, v154);
            goto LABEL_156;
          case 6u:
            v170 = sub_1DD0DB4BC();
            (*(*(v170 - 8) + 32))(v26, v27, v170);
            v288 = type metadata accessor for USOParse();
            v171 = v288[5];
            v172 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v27[v171], 1, v172))
            {
              v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v26[v171], &v27[v171], *(*(v173 - 8) + 64));
            }

            else
            {
              (*(*(v172 - 8) + 32))(&v26[v171], &v27[v171], v172);
              __swift_storeEnumTagSinglePayload(&v26[v171], 0, 1, v172);
            }

            *&v26[v288[6]] = *&v27[v288[6]];
            v226 = v288[7];
            v227 = &v26[v226];
            v228 = &v27[v226];
            v227[4] = v228[4];
            *v227 = *v228;
            goto LABEL_156;
          case 7u:
            v177 = sub_1DD0DB4BC();
            (*(*(v177 - 8) + 32))(v26, v27, v177);
            v289 = type metadata accessor for USOParse();
            v178 = v289[5];
            v179 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v27[v178], 1, v179))
            {
              v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v26[v178], &v27[v178], *(*(v180 - 8) + 64));
            }

            else
            {
              (*(*(v179 - 8) + 32))(&v26[v178], &v27[v178], v179);
              __swift_storeEnumTagSinglePayload(&v26[v178], 0, 1, v179);
            }

            *&v26[v289[6]] = *&v27[v289[6]];
            v229 = v289[7];
            v230 = &v26[v229];
            v231 = &v27[v229];
            v230[4] = v231[4];
            *v230 = *v231;
            v232 = type metadata accessor for LinkParse();
            *&v26[v232[5]] = *&v27[v232[5]];
            *&v26[v232[6]] = *&v27[v232[6]];
            *&v26[v232[7]] = *&v27[v232[7]];
            goto LABEL_156;
          case 8u:
            v123 = sub_1DD0DD12C();
            (*(*(v123 - 8) + 32))(v26, v27, v123);
            v124 = type metadata accessor for NLRouterParse();
            *&v26[*(v124 + 20)] = *&v27[*(v124 + 20)];
            v125 = *(v124 + 24);
            v283 = v124;
            __dste = &v26[v125];
            v126 = &v27[v125];
            v271 = type metadata accessor for USOParse();
            if (__swift_getEnumTagSinglePayload(v126, 1, v271))
            {
              v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dste, v126, *(*(v127 - 8) + 64));
            }

            else
            {
              v201 = sub_1DD0DB4BC();
              (*(*(v201 - 8) + 32))(__dste, v126, v201);
              v265 = v271[5];
              v259 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v126[v265], 1, v259))
              {
                v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dste[v265], &v126[v265], *(*(v202 - 8) + 64));
              }

              else
              {
                (*(*(v259 - 8) + 32))(&__dste[v265], &v126[v265]);
                __swift_storeEnumTagSinglePayload(&__dste[v265], 0, 1, v259);
              }

              *&__dste[v271[6]] = *&v126[v271[6]];
              v245 = v271[7];
              v246 = &__dste[v245];
              v247 = &v126[v245];
              v246[4] = v247[4];
              *v246 = *v247;
              __swift_storeEnumTagSinglePayload(__dste, 0, 1, v271);
            }

            *&v26[*(v283 + 28)] = *&v27[*(v283 + 28)];
            goto LABEL_156;
          case 9u:
            v144 = sub_1DD0DD08C();
            (*(*(v144 - 8) + 32))(v26, v27, v144);
LABEL_156:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v26, v27, *(*(v28 - 8) + 64));
            break;
        }

        *&a1[v24[6]] = *&a2[v24[6]];
        v248 = v24[7];
        v249 = &a1[v248];
        v250 = &a2[v248];
        v251 = *(v250 + 1);
        *v249 = *v250;
        *(v249 + 1) = v251;
        *(v249 + 4) = *(v250 + 4);
        a1[v24[8]] = a2[v24[8]];
        v252 = *(*(v7 + 8) + 8);
        swift_getAssociatedTypeWitness();
        v253 = swift_getTupleTypeMetadata2();
        *&a1[*(v253 + 48)] = *&a2[*(v253 + 48)];
LABEL_158:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v43 = sub_1DD0DB04C();
      (*(*(v43 - 8) + 32))(a1, a2, v43);
      v44 = type metadata accessor for Input(0);
      v45 = v44[5];
      v46 = &a1[v45];
      v47 = &a2[v45];
      v48 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v49 = sub_1DD0DC76C();
          (*(*(v49 - 8) + 32))(v46, v47, v49);
          goto LABEL_146;
        case 1u:
          v121 = sub_1DD0DC76C();
          (*(*(v121 - 8) + 32))(v46, v47, v121);
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v46[*(v122 + 48)] = *&v47[*(v122 + 48)];
          goto LABEL_146;
        case 4u:
          v135 = sub_1DD0DB1EC();
          (*(*(v135 - 8) + 32))(v46, v47, v135);
          goto LABEL_146;
        case 6u:
          v137 = sub_1DD0DB4BC();
          (*(*(v137 - 8) + 32))(v46, v47, v137);
          v284 = type metadata accessor for USOParse();
          v138 = v284[5];
          v139 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v47[v138], 1, v139))
          {
            v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v46[v138], &v47[v138], *(*(v140 - 8) + 64));
          }

          else
          {
            (*(*(v139 - 8) + 32))(&v46[v138], &v47[v138], v139);
            __swift_storeEnumTagSinglePayload(&v46[v138], 0, 1, v139);
          }

          *&v46[v284[6]] = *&v47[v284[6]];
          v212 = v284[7];
          v213 = &v46[v212];
          v214 = &v47[v212];
          v213[4] = v214[4];
          *v213 = *v214;
          goto LABEL_146;
        case 7u:
          v146 = sub_1DD0DB4BC();
          (*(*(v146 - 8) + 32))(v46, v47, v146);
          v285 = type metadata accessor for USOParse();
          v147 = v285[5];
          v148 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v47[v147], 1, v148))
          {
            v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v46[v147], &v47[v147], *(*(v149 - 8) + 64));
          }

          else
          {
            (*(*(v148 - 8) + 32))(&v46[v147], &v47[v147], v148);
            __swift_storeEnumTagSinglePayload(&v46[v147], 0, 1, v148);
          }

          *&v46[v285[6]] = *&v47[v285[6]];
          v215 = v285[7];
          v216 = &v46[v215];
          v217 = &v47[v215];
          v216[4] = v217[4];
          *v216 = *v217;
          v218 = type metadata accessor for LinkParse();
          *&v46[v218[5]] = *&v47[v218[5]];
          *&v46[v218[6]] = *&v47[v218[6]];
          *&v46[v218[7]] = *&v47[v218[7]];
          goto LABEL_146;
        case 8u:
          v107 = sub_1DD0DD12C();
          (*(*(v107 - 8) + 32))(v46, v47, v107);
          v108 = type metadata accessor for NLRouterParse();
          *&v46[*(v108 + 20)] = *&v47[*(v108 + 20)];
          v109 = *(v108 + 24);
          v281 = v108;
          __dstc = &v46[v109];
          v110 = &v47[v109];
          v269 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v110, 1, v269))
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstc, v110, *(*(v111 - 8) + 64));
          }

          else
          {
            v185 = sub_1DD0DB4BC();
            (*(*(v185 - 8) + 32))(__dstc, v110, v185);
            v263 = v269[5];
            v257 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v110[v263], 1, v257))
            {
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstc[v263], &v110[v263], *(*(v186 - 8) + 64));
            }

            else
            {
              (*(*(v257 - 8) + 32))(&__dstc[v263], &v110[v263]);
              __swift_storeEnumTagSinglePayload(&__dstc[v263], 0, 1, v257);
            }

            *&__dstc[v269[6]] = *&v110[v269[6]];
            v233 = v269[7];
            v234 = &__dstc[v233];
            v235 = &v110[v233];
            v234[4] = v235[4];
            *v234 = *v235;
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v269);
          }

          *&v46[*(v281 + 28)] = *&v47[*(v281 + 28)];
          goto LABEL_146;
        case 9u:
          v134 = sub_1DD0DD08C();
          (*(*(v134 - 8) + 32))(v46, v47, v134);
LABEL_146:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v46, v47, *(*(v48 - 8) + 64));
          break;
      }
    }

    *&a1[v44[6]] = *&a2[v44[6]];
    v236 = v44[7];
    v237 = &a1[v236];
    v238 = &a2[v236];
    v239 = *(v238 + 1);
    *v237 = *v238;
    *(v237 + 1) = v239;
    *(v237 + 4) = *(v238 + 4);
    a1[v44[8]] = a2[v44[8]];
    v240 = *(*(v7 + 8) + 8);
    swift_getAssociatedTypeWitness();
    type metadata accessor for RCHFlowSharedData();
    sub_1DD0DE97C();
    v241 = swift_getTupleTypeMetadata2();
    *&a1[*(v241 + 48)] = *&a2[*(v241 + 48)];
    goto LABEL_158;
  }

  (*(*(v8 - 8) + 8))(a1, v8);
LABEL_10:
  v19 = *(*(a3 - 8) + 64);
LABEL_11:

  return memcpy(a1, a2, v19);
}

uint64_t sub_1DCEF9610(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for RCHFlowAsync.State();

  return __swift_getEnumTagSinglePayload(a1, 1, v5);
}

uint64_t sub_1DCEF965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for RCHFlowAsync.State();

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v7);
}

uint64_t OUTLINED_FUNCTION_113_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  *(v2 + 120) = 769;
  return v2 + 104;
}

uint64_t OUTLINED_FUNCTION_133_1()
{

  return swift_getAssociatedTypeWitness();
}

void RCHFlowDelegate.makeRCHFlow(initialIntent:app:parameterMetadata:producers:)()
{
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = qword_1EDE57DF8;
  v2 = type metadata accessor for RefreshableSiriKitEventSending();
  v3 = &off_1F5873940;
  v1 = v0;
  sub_1DD0DCF8C();
}

void sub_1DCEF9964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  memcpy(__dst, a22, sizeof(__dst));
  sub_1DCEFAA44(v39, v31, v29, v27, v25, __dst);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow();
  sub_1DCB17CA0(v33, __dst);
  sub_1DCB17CA0(v29, v37);
  sub_1DCB17CA0(v27, v36);
  sub_1DCB17CA0(v25, v35);
  sub_1DCB17CA0(v39, v34);
  swift_unknownObjectRetain();

  v34[0] = sub_1DCEDF000(v23, v34, a21);

  sub_1DD0DCF8C();
}

void RCHFlowDelegate.makeRCHFlow(producers:)()
{
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = qword_1EDE57DF8;
  v2 = type metadata accessor for RefreshableSiriKitEventSending();
  v3 = &off_1F5873940;
  v1 = v0;
  sub_1DD0DCF8C();
}

void sub_1DCEF9D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DCEFAA44(v18, a2, a3, a4, a5, __dst);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow();
  sub_1DCB17CA0(a1, __dst);
  sub_1DCB17CA0(a3, v16);
  sub_1DCB17CA0(a4, v15);
  sub_1DCB17CA0(a5, v14);
  sub_1DCB17CA0(v18, v13);
  v11 = sub_1DCD799A4();
  v12 = swift_unknownObjectRetain();
  v13[0] = sub_1DCEDF000(v12, v13, v11);
  sub_1DCEE3E08();
}

void sub_1DCEFA050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21)
{
  OUTLINED_FUNCTION_50();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  memcpy(__dst, a21, sizeof(__dst));
  sub_1DCEFAA44(v38, v28, v26, v24, v22, __dst);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow();
  sub_1DCB17CA0(v30, __dst);
  sub_1DCB17CA0(v26, v36);
  sub_1DCB17CA0(v24, v35);
  sub_1DCB17CA0(v22, v34);
  sub_1DCB17CA0(v38, v33);
  v31 = sub_1DCD799A4();
  v32 = swift_unknownObjectRetain();
  v33[0] = sub_1DCEDF000(v32, v33, v31);
  sub_1DD0DCF8C();
}

void sub_1DCEFA388()
{
  OUTLINED_FUNCTION_50();
  v28 = v1;
  v29 = v3;
  v30 = v2;
  v31 = v4;
  v32 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Parse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = type metadata accessor for Input(0);
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  memcpy(v37, v29, sizeof(v37));
  sub_1DCEFAA44(v38, v30, v11, v9, v7, v37);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow();
  sub_1DCB17CA0(v28, v37);
  sub_1DCB17CA0(v11, &v36);
  sub_1DCB17CA0(v9, &v35);
  sub_1DCB17CA0(v7, &v34);
  sub_1DCB17CA0(v38, v33);
  v25 = *(v31 + *(type metadata accessor for SiriKitFlowFrameInput() + 24));
  swift_unknownObjectRetain();

  v33[0] = sub_1DCEDF000(v0, v33, v25);
  sub_1DCB29E58(v31, v17);
  v26 = v24 + v19[9];
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  sub_1DCB29E58(v17, v24 + v19[7]);
  *(v24 + v19[8]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v17);
  *(v24 + v19[10]) = 0;
  v27 = v32;
  sub_1DCEE4CA4();
}

void sub_1DCEFA794()
{
  OUTLINED_FUNCTION_50();
  v36 = v0;
  v37 = v1;
  v33 = v3;
  v34 = v2;
  v40 = v4;
  v41 = v5;
  v7 = v6;
  v9 = v8;
  v10 = v2;
  v38 = v11;
  v12 = type metadata accessor for Input(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v19 = type metadata accessor for Parse(0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v39 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v32 - v25;
  v35 = &v32 - v25;
  memcpy(v46, v33, sizeof(v46));
  v40 = sub_1DCEFAA44(v47, v40, v10, v9, v7, v46);
  swift_getAssociatedTypeWitness();
  sub_1DCE2C528(v37, v41, v26);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow();
  sub_1DCB17CA0(v38, v46);
  sub_1DCB17CA0(v34, &v45);
  sub_1DCB17CA0(v9, &v44);
  sub_1DCB17CA0(v7, &v43);
  sub_1DCB17CA0(v47, v42);
  v27 = sub_1DCD799A4();
  v28 = swift_unknownObjectRetain();
  v42[0] = sub_1DCEDF000(v28, v42, v27);
  v29 = v39;
  sub_1DCB29E58(v35, v39);
  v30 = v18 + v13[9];
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  sub_1DCB29E58(v29, v18 + v13[7]);
  *(v18 + v13[8]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v29);
  *(v18 + v13[10]) = 0;
  v31 = v41;
  sub_1DCEE4CA4();
}

uint64_t sub_1DCEFAA44(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v11 = a4[3];
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v11);
  v13 = (*(v12 + 96))(v11, v12);
  type metadata accessor for ViewFactory();
  v14 = swift_allocObject();
  *(v14 + 16) = v13 & 1;
  memcpy(v27, __src, 0xB0uLL);
  if (sub_1DCB05840(v27) == 1)
  {
    sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
    sub_1DCB10E5C(0, &qword_1EDE461E0, 0x1E696E8A0);
    sub_1DCB83BC0(v20, a2, a3, a4, a5);
  }

  memcpy(v25, __dst, sizeof(v25));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for RCHChildFlowFactory();
  v15 = RCHChildFlowFactory.__allocating_init(producers:)();
  sub_1DCB17CA0(a2, v22);
  sub_1DCB17CA0(a4, v24);
  sub_1DCB17CA0(a3, v23);
  v16 = type metadata accessor for RCHCommonResponseGenerator();
  swift_allocObject();
  v17 = sub_1DCB84380(v14, v22, v24, v23);
  a1[3] = v16;
  a1[4] = &off_1F586CC30;
  *a1 = v17;
  type metadata accessor for RCHChildFlowProducers();
  v18 = sub_1DD0DE97C();
  (*(*(v18 - 8) + 16))(v22, __dst, v18);
  return v15;
}

uint64_t sub_1DCEFACBC()
{
  type metadata accessor for INIntentSlotValueType(0);
  sub_1DCD94D7C();

  return sub_1DD0DDE9C();
}

void sub_1DCEFAD10()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCEFADA0(uint64_t *a1@<X8>)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE46630;
  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableDeviceState();
  a1[4] = &protocol witness table for RefreshableDeviceState;
  *a1 = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFAE74()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t ConfirmIntentRejectedBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t SiriKitIntentHandler.intentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t SiriKitIntentHandler.init<A>(app:intentHandler:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v59 = a1;
  v60 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  OUTLINED_FUNCTION_4_97();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v56 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v56 - v20;
  v22 = a3;
  v23 = [v22 _intentInstanceDescription];
  v24 = [v23 name];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1DD0DDFBC();
    v28 = v27;
  }

  else
  {
    v28 = 0xE700000000000000;
    v26 = 0x4E574F4E4B4E55;
  }

  v29 = [v22 _type];

  if (v29 == 2)
  {

    result = sub_1DCEFCEFC();
  }

  else
  {
    v57 = v18;
    v58 = v4;
    v31 = [v23 responseName];
    if (v31)
    {
      v32 = v31;
      sub_1DD0DDFBC();
    }

    v33 = sub_1DD0DDF8C();

    v34 = INIntentSchemaGetIntentResponseDescriptionWithName();

    if (!v34)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v36 = sub_1DD0DD8FC();
      v37 = __swift_project_value_buffer(v36, qword_1EDE57E00);
      v38 = *(v36 - 8);
      (*(v38 + 16))(v21, v37, v36);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v36);
      v39 = v57;
      sub_1DCBCF6C8(v21, v57);
      if (__swift_getEnumTagSinglePayload(v39, 1, v36) == 1)
      {
        sub_1DCB0E9D8(v57, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v44 = sub_1DD0DD8EC();
        v45 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v46 = 136315650;
          v47 = sub_1DD0DEC3C();
          v49 = sub_1DCB10E9C(v47, v48, &v61);

          *(v46 + 4) = v49;
          *(v46 + 12) = 2048;
          *(v46 + 14) = 106;
          *(v46 + 22) = 2080;
          *(v46 + 24) = sub_1DCB10E9C(0xD000000000000021, 0x80000001DD121C00, &v61);
          _os_log_impl(&dword_1DCAFC000, v44, v45, "FatalError at %s:%lu - %s", v46, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v38 + 8))(v57, v36);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000021, 0x80000001DD121C00);
    }

    if (![v34 facadeClass])
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v40 = sub_1DD0DD8FC();
      v41 = __swift_project_value_buffer(v40, qword_1EDE57E00);
      v42 = *(v40 - 8);
      (*(v42 + 16))(v14, v41, v40);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v40);
      v43 = v58;
      sub_1DCBCF6C8(v14, v58);
      if (__swift_getEnumTagSinglePayload(v43, 1, v40) == 1)
      {
        sub_1DCB0E9D8(v58, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v50 = sub_1DD0DD8EC();
        v51 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v52 = 136315650;
          v53 = sub_1DD0DEC3C();
          v55 = sub_1DCB10E9C(v53, v54, &v61);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2048;
          *(v52 + 14) = 109;
          *(v52 + 22) = 2080;
          *(v52 + 24) = sub_1DCB10E9C(0xD000000000000040, 0x80000001DD121C90, &v61);
          _os_log_impl(&dword_1DCAFC000, v50, v51, "FatalError at %s:%lu - %s", v52, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v42 + 8))(v58, v40);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000040, 0x80000001DD121C90);
    }

    result = swift_getObjCClassMetadata();
  }

  v35 = v60;
  *a4 = v59;
  a4[1] = v26;
  a4[2] = v28;
  a4[3] = v35;
  a4[4] = v23;
  a4[5] = result;
  return result;
}

uint64_t SiriKitIntentHandler.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000021, 0x80000001DD121CE0);
  MEMORY[0x1E12A6780](v2, v3);
  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD121D10);
  swift_getObjectType();
  v5 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](0x203A444970706120, 0xE800000000000000);
  v6 = sub_1DD0DD1BC();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 4999502;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1E12A6780](v6, v8);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

void RCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(void **), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  LOBYTE(v17) = v14;
  (*(a9 + 208))(&v19, a1, a2, a3, a4, &v17, a8, a9);
  v17 = v19;
  v18 = v20;
  a6(&v17);
  v15 = v17;

  sub_1DCCD86E4(v15);
}

double RCHFlowDelegate.extractParameterValue(intent:parameterName:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_getAssociatedTypeWitness();

  return sub_1DCD938C8(a1, a2, a3, a4);
}

uint64_t RCHFlowDelegate.applyParameterValue(value:intent:parameterName:applicationStrategy:_:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t (*a7)(void *, void))
{
  sub_1DCB0DF6C(a1, v14);
  swift_getAssociatedTypeWitness();
  sub_1DCD93B8C(a2, a3, a4, v14, a5, a6 & 1);
  sub_1DCB0E9D8(v14, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return a7(a2, 0);
}

uint64_t RCHFlowDelegate.resetParameterValue(intent:parameterName:multicardinalIndex:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void *, void))
{
  swift_getAssociatedTypeWitness();
  sub_1DCD94B88(a1, a2, a3, a4);
  return a5(a1, 0);
}

Swift::Bool __swiftcall RCHFlowDelegate.shouldExecuteOnCompanionDevice()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1DCBCF6C8(v8, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1DCB0E9D8(v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315650;
      v15 = sub_1DD0DEC3C();
      v17 = sub_1DCB10E9C(v15, v16, &v20);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 420;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1DCB10E9C(0xD00000000000004ALL, 0x80000001DD121DB0, &v20);
      _os_log_impl(&dword_1DCAFC000, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v11 + 8))(v5, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004ALL, 0x80000001DD121DB0);
}

uint64_t sub_1DCEFBEC0()
{
  v1 = *(*v0 + 80);
  sub_1DD0DD31C();
  return sub_1DD0DD30C();
}

void sub_1DCEFBF00()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4820, &unk_1DD0ECCB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v10[-v5];
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  type metadata accessor for DucTemplatingService();
  v9 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_1DCEFACBC();
  sub_1DCEFAD10();
}

uint64_t sub_1DCEFC04C(int a1, int a2, int a3, int a4, id a5, void (*a6)(void))
{
  v7 = [a5 disambiguationItems];
  v8 = sub_1DD0DE2EC();

  v9 = sub_1DCC345FC(v8);
  v10 = v9;
  v11 = *(v8 + 16);
  if (v11)
  {
    v20 = v9;
    v21 = a6;
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    v13 = 0;
    v14 = v8 + 32;
    while (v13 < *(v8 + 16))
    {
      ++v13;
      sub_1DCB0DF6C(v14, v22);
      sub_1DD0DEDBC();
      type metadata accessor for SiriKitDisambiguationItemComponent.Builder();
      swift_initStackObject();
      sub_1DCF9DFA8(0, 0xE000000000000000);
      v15 = sub_1DCF9E130();

      swift_initStackObject();
      sub_1DCF9DFA8(0xD000000000000035, 0x80000001DD121E20);
      v16 = sub_1DCF9E130();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DD0E97E0;
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      type metadata accessor for SiriKitDisambiguationItem();
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v17, 0, 0xE000000000000000, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      sub_1DD0DECDC();
      v18 = *(v23 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
      v14 += 32;
      if (v11 == v13)
      {

        v19 = v23;
        a6 = v21;
        v10 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
LABEL_7:
    type metadata accessor for SiriKitDisambiguationList();
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(v10, v19, 1, 0);
    a6();
  }

  return result;
}

void sub_1DCEFC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void (*a6)(void **))
{
  LOBYTE(v9) = *a5;
  (*(*v6 + 216))(&v11, a1, a2, a3, a4, &v9);
  v9 = v11;
  v10 = v12;
  a6(&v9);
  v8 = v9;

  sub_1DCCD86E4(v8);
}

uint64_t sub_1DCEFC43C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Parse(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v10);
  v11 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      v14 = *(v3 + 80);
      v15 = *(*&v10[*(v13 + 48)] + 16);
      v11 = sub_1DCB3BACC(v14, v14);

      v16 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_2(v16);
      (*(v17 + 8))(v10);
      break;
    case 0xAu:
      return v11;
    default:
      sub_1DCB29EBC(v10);
      v11 = 0;
      break;
  }

  return v11;
}

uint64_t sub_1DCEFC5C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t (*a7)(void *, void))
{
  v14 = *v7;
  sub_1DCB0DF6C(a1, v17);
  v15 = *(v14 + 80);
  sub_1DCD93B8C(a2, a3, a4, v17, a5, a6 & 1);
  sub_1DCB0E9D8(v17, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return a7(a2, 0);
}

uint64_t sub_1DCEFC68C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void *, void))
{
  v8 = *(*v5 + 80);
  sub_1DCD94B88(a1, a2, a3, a4);
  return a5(a1, 0);
}

uint64_t sub_1DCEFC6E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for Parse(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_4_97();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  sub_1DCB29E58(a1, &v21 - v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCB29EBC(v13);
    sub_1DCB29E58(a1, v2);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v19 = *v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        result = swift_unknownObjectRelease();
        v17 = 2;
        goto LABEL_8;
      }

      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      result = swift_unknownObjectRelease();
      if (v20)
      {
        v17 = 3;
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1DCB29EBC(v2);
    }

    v17 = 0;
    goto LABEL_8;
  }

  v14 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
  v15 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_2(v15);
  (*(v16 + 8))(v13);
  v17 = *(v14 + 24);

LABEL_8:
  *a2 = v17;
  return result;
}

uint64_t sub_1DCEFC884@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Parse(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
    v12 = sub_1DD0DC76C();
    OUTLINED_FUNCTION_2(v12);
    (*(v13 + 8))(v10);
    v14 = *(v11 + 24);
  }

  else
  {
    result = sub_1DCB29EBC(v10);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

double sub_1DCEFC9B0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DCEFCAD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 160))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCB1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCB88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCBF4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 200))();
  *a1 = result;
  return result;
}

unint64_t sub_1DCEFCEFC()
{
  result = qword_1EDE461E0;
  if (!qword_1EDE461E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461E0);
  }

  return result;
}

unint64_t sub_1DCEFCF44()
{
  result = qword_1ECCA9870;
  if (!qword_1ECCA9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9870);
  }

  return result;
}

unint64_t sub_1DCEFCF9C()
{
  result = qword_1ECCA9878;
  if (!qword_1ECCA9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9878);
  }

  return result;
}

unint64_t sub_1DCEFCFF4()
{
  result = qword_1ECCA9880;
  if (!qword_1ECCA9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9880);
  }

  return result;
}

unint64_t sub_1DCEFD04C()
{
  result = qword_1ECCA9888;
  if (!qword_1ECCA9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9888);
  }

  return result;
}

void destroy for LaunchAppBehavior(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

uint64_t sub_1DCEFD134(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = *(a2 + 8);
    v4 = v3;
  }

  return a1;
}

uint64_t assignWithCopy for LaunchAppBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v7 = v5;
      return a1;
    }

LABEL_7:
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for LaunchAppBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    return a1;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for LaunchAppBehavior(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 10))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LaunchAppBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DCEFD360(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

_BYTE *sub_1DCEFD398(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConfirmIntentRejectedBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

void destroy for SiriKitIntentHandler(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];

  v4 = a1[4];
}

void initializeWithCopy for SiriKitIntentHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  sub_1DD0DCF8C();
}

void assignWithCopy for SiriKitIntentHandler(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *assignWithTake for SiriKitIntentHandler(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a1[2];

  v6 = a1[3];
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

void RCHFlowFactory.makeAppResolvingRCHFlow()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  v14 = *(v11 + 24);
  type metadata accessor for RCHFlowAsync();
  (*(v6 + 16))(v13, v2, v4);
  v15 = *(v2 + *(a1 + 36));
  sub_1DCB17CA0(v2 + *(a1 + 40), v17);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  sub_1DCB837D4();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFE110(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCEFE1C4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) == 0 && ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v8;
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    *(v10 + 24) = v12;
    *(v10 + 32) = *(v11 + 32);
    v13 = **(v12 - 8);
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void sub_1DCEFE34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  *(v9 + 24) = v11;
  *(v9 + 32) = *(v10 + 32);
  v12 = **(v11 - 8);
  sub_1DD0DCF8C();
}

void sub_1DCEFE44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = *v7;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  *((v9 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCEFE5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v14 = *((v11 + 47) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCEFE684(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEFE7D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEFE9B4()
{
  v0 = sub_1DD0DDDBC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DCB10E5C(0, &qword_1EDE461B0, 0x1E69E9610);
  (*(v3 + 104))(v9, *MEMORY[0x1E69E7F88], v0);
  v10 = sub_1DD0DE7AC();
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_86();
  v13(v12);
  return v10;
}

void sub_1DCEFEAA8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Parse(0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v15 = type metadata accessor for WithDispatchSemaphoreTimeout();
  v16 = OUTLINED_FUNCTION_20_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_16();
  v22 = (v21 - v20);
  sub_1DD0DEEAC();
  if ((v37[0] & 1) == 0)
  {
    *v22 = 10;
    v27 = *MEMORY[0x1E69E7F48];
    v28 = sub_1DD0DDD8C();
    OUTLINED_FUNCTION_2(v28);
    (*(v29 + 104))(v22, v27);
    OUTLINED_FUNCTION_12_57();
    sub_1DCF05E90(v5, &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v30 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v31 = swift_allocObject();
    v33 = *(v1 + 80);
    v32 = *(v1 + 88);
    v31[2] = v33;
    v31[3] = v32;
    v31[4] = v7;
    sub_1DCF0A1DC(&v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v31 + v30);
    *(v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    OUTLINED_FUNCTION_95_7();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_76_1();
    v34 = sub_1DD0DE97C();
    swift_unknownObjectRetain();
    v35 = v3;
    v36 = sub_1DCEFE9B4();
    sub_1DD0D91A0(v36, sub_1DCF0A234, v31, v34);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v23 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Calling RCHFlowDelegate.makeIntentFromParse from deprecated RCHFlowFrame. Note the time out guard previously surrounding this call was removed due to risk of deadlock (see rdar://79777131). Please migrate off of RCHFlowFrame.", v26, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(*(v1 + 88) + 240))(v5, v3, *(v1 + 80));
  OUTLINED_FUNCTION_49();
}

void *RCHFlowFrameResult.intentResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *RCHFlowFrameResult.childIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RCHFlowFrameResult.init(intent:intentResponse:resolvedApp:childIntent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RCHFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCEFF010@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for RCHFlowFrame.State();
  OUTLINED_FUNCTION_2(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCEFF0BC(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for RCHFlowFrame.State();
  OUTLINED_FUNCTION_2(v10);
  (*(v11 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t RCHFlowFrame.__allocating_init(delegate:appResolutionState:parameterMetadata:intent:)()
{
  v2 = OUTLINED_FUNCTION_52_26();
  v3 = OUTLINED_FUNCTION_90_0();
  RCHFlowFrame.init(delegate:appResolutionState:parameterMetadata:intent:)(v3, v4, v1, v0);
  return v2;
}

uint64_t *RCHFlowFrame.init(delegate:appResolutionState:parameterMetadata:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *v4;
  OUTLINED_FUNCTION_68_18();
  v4[2] = v10;
  v4[3] = v11;
  bzero(v4 + 5, 0xC8uLL);
  v4[4] = a1;
  if (!a4)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

LABEL_10:
    OUTLINED_FUNCTION_66();
    v19 = *(v18 + 152);
    v20 = *(v9 + 80);
    v21 = *(v9 + 88);
    OUTLINED_FUNCTION_80_12();
    goto LABEL_11;
  }

  if (!a3)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  sub_1DCB099BC(a2, &v23, &qword_1ECCA4988, &qword_1DD100F00);
  if (!v24)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

    sub_1DCB16DB0(&v23, &qword_1ECCA4988, &qword_1DD100F00);
    goto LABEL_10;
  }

  sub_1DCAFF9E8(&v23, v25);
  v12 = qword_1EDE4F908;
  swift_unknownObjectRetain();
  v13 = a4;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  swift_unknownObjectRelease();

  sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
  OUTLINED_FUNCTION_66();
  v15 = v4 + *(v14 + 152);
  *v15 = v13;
  v15[8] = 0;
  *(v15 + 2) = a3;
  sub_1DCAFF9E8(v25, (v15 + 24));
  v16 = *(v9 + 80);
  v17 = *(v9 + 88);
  OUTLINED_FUNCTION_80_12();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  return v4;
}

void RCHFlowFrame.init(delegate:initialInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_66();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9890, &qword_1DD100F08);
  OUTLINED_FUNCTION_20_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &a9 - v35;
  v37 = type metadata accessor for SiriKitFlowFrameInput();
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  OUTLINED_FUNCTION_16();
  v44 = v43 - v42;
  OUTLINED_FUNCTION_68_18();
  v23[2] = v45;
  v23[3] = v46;
  bzero(v23 + 5, 0xC8uLL);
  v23[4] = v27;
  sub_1DCB099BC(v25, v36, &qword_1ECCA9890, &qword_1DD100F08);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    v47 = OUTLINED_FUNCTION_131();
    sub_1DCB16DB0(v47, v48, &qword_1DD100F08);
    v49 = OUTLINED_FUNCTION_44_23();
    sub_1DCB16DB0(v49, v50, &qword_1DD100F08);
LABEL_8:
    v61 = *(*v23 + 152);
    v62 = *(v29 + 80);
    v63 = *(v29 + 88);
    OUTLINED_FUNCTION_80_12();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_54();
  v51 = OUTLINED_FUNCTION_44_23();
  sub_1DCF0A1DC(v51, v52);
  swift_unknownObjectRetain();
  sub_1DCEFEAA8();
  if (!v53)
  {
    swift_unknownObjectRelease();
    sub_1DCB16DB0(v25, &qword_1ECCA9890, &qword_1DD100F08);
    OUTLINED_FUNCTION_13_62();
    sub_1DCF0A2E8(v44, v60);
    goto LABEL_8;
  }

  v54 = v53;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  swift_unknownObjectRelease();
  sub_1DCB16DB0(v25, &qword_1ECCA9890, &qword_1DD100F08);
  v55 = v23 + *(*v23 + 152);
  v58 = v29 + 80;
  v56 = *(v29 + 80);
  v57 = *(v58 + 8);
  OUTLINED_FUNCTION_95_7();
  swift_getAssociatedTypeWitness();
  v59 = *(swift_getTupleTypeMetadata2() + 48);
  OUTLINED_FUNCTION_14_54();
  sub_1DCF0A1DC(v44, v55);
  *(v55 + v59) = v54;
  type metadata accessor for RCHFlowFrame.State();
LABEL_9:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

uint64_t RCHFlowFrame.__allocating_init(delegate:initialIntent:parameterMetadata:resolvedApp:)()
{
  v2 = OUTLINED_FUNCTION_52_26();
  v3 = OUTLINED_FUNCTION_90_0();
  RCHFlowFrame.init(delegate:initialIntent:parameterMetadata:resolvedApp:)(v3, v4, v1, v0);
  return v2;
}

uint64_t *RCHFlowFrame.init(delegate:initialIntent:parameterMetadata:resolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  OUTLINED_FUNCTION_68_18();
  v4[2] = v10;
  v4[3] = v11;
  bzero(v4 + 5, 0xC8uLL);
  v4[4] = a1;
  v12 = qword_1EDE4F908;
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_66();
  v14 = v4 + *(v13 + 152);
  *v14 = a2;
  v14[8] = 0;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  v15 = *(v9 + 80);
  v16 = *(v9 + 88);
  OUTLINED_FUNCTION_80_12();
  swift_storeEnumTagMultiPayload();
  return v4;
}

void sub_1DCEFF8CC()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v92 = v4;
  v93 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_104();
  v89 = v7;
  v90 = v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2(v91);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = v87 - v12;
  v13 = OUTLINED_FUNCTION_12();
  v14 = type metadata accessor for Parse(v13);
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_16();
  v21 = (v20 - v19);
  OUTLINED_FUNCTION_104();
  v23 = *(v22 + 80);
  OUTLINED_FUNCTION_104();
  v25 = *(v24 + 88);
  v26 = type metadata accessor for RCHFlowFrame.State();
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27, v32);
  OUTLINED_FUNCTION_10_2();
  v35 = v33 - v34;
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v88 = v87 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  OUTLINED_FUNCTION_65_14();
  sub_1DCEFF010(v1);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v41 = *v1;
    v42 = v1[1];
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    v43 = qword_1EDE57E18;
    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v44 = v0[4];
    v45 = v41;
    v46 = v90;
    sub_1DCEFEAA8();
    v48 = v47;

    if (v48)
    {
      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      OUTLINED_FUNCTION_12_57();
      sub_1DCF05E90(v46, v21);
      OUTLINED_FUNCTION_105();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v87[1] = v43;
      v89 = v48;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        v51 = sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1(v51);
        (*(v52 + 8))(v21);
        v53 = *(v50 + 32);
      }

      else
      {
        OUTLINED_FUNCTION_10_65();
        sub_1DCF0A2E8(v21, v76);
        v77 = v45;
        sub_1DCD91F74();
      }

      v78 = type metadata accessor for SiriKitFlowFrameInput();
      sub_1DCB17D04(v46 + *(v78 + 28), v95);
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      sub_1DD0DCF8C();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v68 = *MEMORY[0x1E699F738];
    v69 = sub_1DD0DB34C();
    OUTLINED_FUNCTION_2(v69);
    v71 = *(v70 + 104);
    v72 = OUTLINED_FUNCTION_90_11();
    v73(v72, v68);
    OUTLINED_FUNCTION_59_20();
    v74 = OUTLINED_FUNCTION_106_5();
    v75(v74);

    goto LABEL_22;
  }

  v21 = *(v29 + 8);
  (v21)(v1, v26);
  sub_1DCEFF010(v35);
  v54 = swift_getEnumCaseMultiPayload();
  (v21)(v35, v26);
  if (v54 != 10)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    goto LABEL_21;
  }

  v55 = v2[4];
  sub_1DCEFEAA8();
  if (!v56)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
LABEL_21:
    sub_1DD0DD7EC();
    v79 = *MEMORY[0x1E699F738];
    v80 = sub_1DD0DB34C();
    OUTLINED_FUNCTION_2(v80);
    v82 = *(v81 + 104);
    v83 = OUTLINED_FUNCTION_90_11();
    v84(v83, v79);
    OUTLINED_FUNCTION_59_20();
    v85 = OUTLINED_FUNCTION_106_5();
    v86(v85);
    goto LABEL_22;
  }

  v57 = v56;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  type metadata accessor for SiriKitFlowFrameInput();
  OUTLINED_FUNCTION_94_7();
  swift_getAssociatedTypeWitness();
  v58 = *(swift_getTupleTypeMetadata2() + 48);
  v21 = v88;
  sub_1DCF05E90(v90, v88);
  *&v21[v58] = v57;
  swift_storeEnumTagMultiPayload();
  v59 = v57;
  sub_1DCEFF0BC(v21);
  v60 = *MEMORY[0x1E699F740];
  v61 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v61);
  v63 = *(v62 + 104);
  v64 = OUTLINED_FUNCTION_90_11();
  v65(v64, v60);
  OUTLINED_FUNCTION_59_20();
  v66 = OUTLINED_FUNCTION_106_5();
  v67(v66);

LABEL_22:
  sub_1DCB16DB0(v21, &unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_49();
}

void sub_1DCF0014C()
{
  OUTLINED_FUNCTION_50();
  v255 = v1;
  v256 = v2;
  v3 = *v0;
  v250 = type metadata accessor for SiriKitFlowFrameInput();
  v4 = OUTLINED_FUNCTION_2(v250);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v248 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v247 = (&v239 - v15);
  v16 = OUTLINED_FUNCTION_12();
  v17 = type metadata accessor for Parse(v16);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_16();
  v244 = v23 - v22;
  v24 = OUTLINED_FUNCTION_12();
  v243 = type metadata accessor for Input(v24);
  v25 = OUTLINED_FUNCTION_9(v243);
  v245 = v26;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v25, v29);
  v242 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v246 = (&v239 - v33);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v239 - v35;
  v37 = type metadata accessor for SiriKitEventPayload(0);
  v38 = OUTLINED_FUNCTION_2(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v41);
  OUTLINED_FUNCTION_16();
  v44 = (v43 - v42);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v253);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v47, v48);
  v254 = (&v239 - v49);
  OUTLINED_FUNCTION_6();
  v51 = *(v50 + 80);
  OUTLINED_FUNCTION_6();
  v53 = *(v52 + 88);
  v249 = v54;
  v55 = v53;
  v56 = type metadata accessor for RCHFlowFrame.State();
  v57 = OUTLINED_FUNCTION_9(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57, v62);
  OUTLINED_FUNCTION_10_2();
  v251 = (v63 - v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v239 - v67;
  v257 = v0;
  sub_1DCEFF010(&v239 - v67);
  v252 = v56;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v114 = *&v68[*(swift_getTupleTypeMetadata2() + 48)];
      OUTLINED_FUNCTION_14_54();
      sub_1DCF0A1DC(v68, v248);
      v239 = v114;
      v115 = sub_1DCF041B8();
      v240 = AssociatedTypeWitness;
      if (v115)
      {
        v117 = v257;
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5();
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        v118 = sub_1DD0DD7EC();
        OUTLINED_FUNCTION_115_7(v118, v119, &qword_1ECCA35F8, &qword_1DD0E97A0);
        v241 = v55;
        if (v265)
        {
          OUTLINED_FUNCTION_85_10();
          v171 = v271;
          __swift_project_boxed_opaque_existential_1(v269, v270);
          type metadata accessor for SiriKitEvent(0);
          v44[1] = 0;
          v44[2] = 0;
          v172 = v239;
          *v44 = v239;
          swift_storeEnumTagMultiPayload();
          v254 = v172;
          SiriKitEvent.__allocating_init(_:builder:)(v44, 0);
          (*(v171 + 8))();

          sub_1DCB099BC((v117 + 5), &v264, &qword_1ECCA1BF0, &qword_1DD100F20);
          if (v265)
          {
            OUTLINED_FUNCTION_117_5();
            v178 = v117[4];
            sub_1DCB099BC((v117 + 15), &v264, &qword_1ECCA8AB0, &qword_1DD0E23E0);
            if (v265)
            {
              OUTLINED_FUNCTION_116_7();
              sub_1DCB099BC((v117 + 25), v261, &qword_1ECCA98A0, &qword_1DD100F28);
              if (v262)
              {
                OUTLINED_FUNCTION_120_2();
                v223 = swift_getAssociatedTypeWitness();
                v224 = OUTLINED_FUNCTION_76_16();
                v253 = v223;
                sub_1DCB83BC0(v224, v225, v226, v227, v228);
              }

              sub_1DCB82888();
            }

            if (qword_1EDE46628 != -1)
            {
              OUTLINED_FUNCTION_58_0();
            }

            sub_1DCB4E718(v263);
            OUTLINED_FUNCTION_23_27();
            v214 = type metadata accessor for RefreshableDeviceState();
            OUTLINED_FUNCTION_20_28(v214, &protocol witness table for RefreshableDeviceState);
            sub_1DD0DCF8C();
          }

          if (qword_1EDE4A110 != -1)
          {
            OUTLINED_FUNCTION_20_1();
          }

          sub_1DCB4BA5C();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v170 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_40_25(v170, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0();
        v235 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_40_25(v235, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_83_10(v115, v116, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      if (v265)
      {
        sub_1DCAFF9E8(&v264, v260);
        v176 = v59[4];
        sub_1DCB099BC((v59 + 20), &v264, qword_1ECCA98A8, &unk_1DD100F40);
        if (v265)
        {
          OUTLINED_FUNCTION_85_10();
        }

        else
        {
          sub_1DCF05A20(v263);
          sub_1DCB17D04(v260, v269);
          type metadata accessor for ResolveConfirmHandleExecutor();
          swift_allocObject();
          OUTLINED_FUNCTION_69_5();
          v247 = &v239;
          OUTLINED_FUNCTION_0_1();
          v197 = *(v196 + 64);
          MEMORY[0x1EEE9AC00](v198, v199);
          OUTLINED_FUNCTION_16();
          v201 = OUTLINED_FUNCTION_73_11(v200);
          v202(v201);
          __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
          OUTLINED_FUNCTION_0_1();
          v204 = *(v203 + 64);
          MEMORY[0x1EEE9AC00](v205, v206);
          OUTLINED_FUNCTION_16();
          v208 = OUTLINED_FUNCTION_33_23(v207);
          v209(v208);
          v59 = v257;
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v269);
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          OUTLINED_FUNCTION_12();
          v210 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_40_25(v210, &off_1F5871428);
          if (v265)
          {
            sub_1DCB16DB0(&v264, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v211 = sub_1DCF0594C(v268);
        OUTLINED_FUNCTION_115_7(v211, v212, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v265)
        {
          OUTLINED_FUNCTION_116_7();
          sub_1DCB099BC((v59 + 25), v261, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v262)
          {
            OUTLINED_FUNCTION_120_2();
            sub_1DCB82380(&v264);
            v231 = OUTLINED_FUNCTION_53_17();
            memcpy(v231, v232, 0xB0uLL);
            OUTLINED_FUNCTION_81_7();
            sub_1DCEFA388();
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v216 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_20_28(v216, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0();
        v237 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_20_28(v237, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0();
      }

      sub_1DCB4E718(v263);
      OUTLINED_FUNCTION_23_27();
      v175 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_50_17(v175, &protocol witness table for RefreshableDeviceState);
    case 2u:
    case 4u:
    case 7u:
      v69 = v59[1];
      v69(v68, v252);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      v250 = qword_1EDE57E18;
      sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v70 = OUTLINED_FUNCTION_32_6();
      *(v70 + 16) = xmmword_1DD0E07C0;
      *&v264 = 0;
      *(&v264 + 1) = 0xE000000000000000;
      v71 = v251;
      sub_1DCEFF010(v251);
      OUTLINED_FUNCTION_30_13();
      sub_1DD0DF07C();
      v72 = OUTLINED_FUNCTION_30_13();
      (v69)(v72);
      v73 = v264;
      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = sub_1DCB34060();
      *(v70 + 32) = v73;
      sub_1DD0DD7EC();

      *&v264 = 0;
      *(&v264 + 1) = 0xE000000000000000;
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD000000000000023);
      sub_1DCEFF010(v71);
      OUTLINED_FUNCTION_30_13();
      sub_1DD0DF07C();
      v74 = OUTLINED_FUNCTION_30_13();
      (v69)(v74);
      v75 = *(&v264 + 1);
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_42_25();
      v76 = OUTLINED_FUNCTION_24_30();
      v78 = CommandFailure.init(errorCode:reason:)(v76, v77, v75);
      sub_1DCC7AE30();
      v79 = OUTLINED_FUNCTION_19_40();
      *v80 = v78;
      *v71 = v79;
      OUTLINED_FUNCTION_30_13();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 3u:
      v94 = *v68;
      v96 = *(v68 + 2);
      v95 = *(v68 + 3);
      v97 = sub_1DCF041B8();
      if (v97)
      {
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5();
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();
        v99 = v251;
        *v251 = v94;
        v99[1] = v95;
        swift_storeEnumTagMultiPayload();
        v100 = v94;
        sub_1DD0DCF8C();
      }

      v248 = v96;
      OUTLINED_FUNCTION_83_10(v97, v98, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      if (v265)
      {
        sub_1DCAFF9E8(&v264, v260);
        v120 = v55;
        v133 = v96[4];
        sub_1DCB099BC((v96 + 20), &v264, qword_1ECCA98A8, &unk_1DD100F40);
        if (v265)
        {
          OUTLINED_FUNCTION_85_10();
        }

        else
        {
          sub_1DCF05A20(v263);
          sub_1DCB17D04(v260, v269);
          type metadata accessor for ResolveConfirmHandleExecutor();
          v134 = swift_allocObject();
          v247 = v133;
          v244 = v134;
          v245 = v263[4];
          __swift_mutable_project_boxed_opaque_existential_1(v263, v263[3]);
          v246 = &v239;
          OUTLINED_FUNCTION_0_1();
          v136 = *(v135 + 64);
          MEMORY[0x1EEE9AC00](v137, v138);
          OUTLINED_FUNCTION_16();
          v140 = OUTLINED_FUNCTION_33_23(v139);
          v141(v140);
          __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
          OUTLINED_FUNCTION_0_1();
          v143 = *(v142 + 64);
          MEMORY[0x1EEE9AC00](v144, v145);
          OUTLINED_FUNCTION_16();
          (*(v148 + 16))(v147 - v146);
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v269);
          v96 = v257;
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          OUTLINED_FUNCTION_12();
          v149 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_40_25(v149, &off_1F5871428);
          if (v265)
          {
            sub_1DCB16DB0(&v264, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v150 = sub_1DCF0594C(v268);
        OUTLINED_FUNCTION_115_7(v150, v151, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v265)
        {
          OUTLINED_FUNCTION_116_7();
          sub_1DCB099BC((v96 + 25), v261, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v262)
          {
            OUTLINED_FUNCTION_120_2();
            sub_1DCB82380(&v264);
            v153 = OUTLINED_FUNCTION_53_17();
            memcpy(v153, v154, 0xB0uLL);
            v238 = v249;
            v155 = OUTLINED_FUNCTION_81_7();
            sub_1DCEF9964(v155, v156, v157, v158, v159, v95, 1, v94, v248, v263, v238, v120, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248);
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v152 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_20_28(v152, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0();
        v233 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_20_28(v233, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0();
      }

      sub_1DCB4E718(v263);
      OUTLINED_FUNCTION_23_27();
      v132 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_50_17(v132, &protocol witness table for RefreshableDeviceState);
    case 5u:
      v101 = *v68;
      v102 = *(v68 + 1);
      v103 = *(v68 + 7);
      sub_1DCAFF9E8(v68 + 1, &v264);
      if (v103)
      {
        sub_1DD0DCF8C();
      }

      v121 = v255;
      v122 = v254;
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC();
      v123 = v251;
      *v251 = v101;
      *(v123 + 8) = 0;
      v123[2] = v102;
      sub_1DCB17D04(&v264, (v123 + 3));
      swift_storeEnumTagMultiPayload();
      v124 = v101;
      v125 = OUTLINED_FUNCTION_104_6();
      sub_1DCEFF0BC(v125);
      sub_1DD0DB2FC();
      swift_storeEnumTagMultiPayload();
      v121(v122);

      sub_1DCB16DB0(v122, &qword_1ECCA9BF0, &qword_1DD0EA250);
      __swift_destroy_boxed_opaque_existential_1Tm(&v264);
      goto LABEL_122;
    case 6u:
      v86 = *v68;
      v87 = v68[8];
      v88 = *(v68 + 2);
      v89 = *(v68 + 3);
      v90 = *(v68 + 4);
      switch(v87)
      {
        case 1:
        case 3:
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5();
          }

          sub_1DD0DE6DC();
          sub_1DD0DD7EC();
          v91 = v251;
          *v251 = v86;
          *(v91 + 8) = v87;
          v91[2] = v88;
          v91[3] = v89;
          v91[4] = v90;
          swift_storeEnumTagMultiPayload();
          v92 = v90;
          v93 = v86;
          sub_1DD0DCF8C();
        case 2:
          v250 = *(v68 + 4);
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5();
          }

          sub_1DD0DE6DC();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC();
          v129 = v251;
          *v251 = v86;
          *(v129 + 8) = 2;
          v129[2] = v88;
          v129[3] = v89;
          swift_storeEnumTagMultiPayload();
          v130 = v89;
          v131 = v86;
          sub_1DD0DCF8C();
        default:
          v126 = *(v68 + 4);
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5();
          }

          sub_1DD0DE6EC();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC();
          type metadata accessor for CommandFailure();
          OUTLINED_FUNCTION_42_25();
          CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000053, 0x80000001DD1224A0);
          sub_1DCC7AE30();
          v127 = OUTLINED_FUNCTION_19_40();
          OUTLINED_FUNCTION_88_12(v127, v128);
          sub_1DD0DCF8C();
      }

    case 8u:
      (v59[1])(v68, v252);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC();
      v107 = v254;
      sub_1DD0DB32C();
      OUTLINED_FUNCTION_87_9();
      v255(v107);
      v106 = v107;
      goto LABEL_21;
    case 9u:
      v81 = *v68;
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC();
      v82 = v254;
      *v254 = v81;
      swift_storeEnumTagMultiPayload();
      v83 = v81;
      v84 = OUTLINED_FUNCTION_71_13();
      v85(v84);

      v106 = v82;
LABEL_21:
      sub_1DCB16DB0(v106, &qword_1ECCA9BF0, &qword_1DD0EA250);
LABEL_122:
      OUTLINED_FUNCTION_49();
      return;
    case 0xAu:
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC();
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_42_25();
      CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000003ELL, 0x80000001DD122640);
      sub_1DCC7AE30();
      v104 = OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_88_12(v104, v105);
      sub_1DD0DCF8C();
    default:
      v108 = *v68;
      v109 = *(v68 + 2);

      sub_1DCAFF9E8((v68 + 24), v260);
      v110 = sub_1DCF041B8();
      if (v110)
      {
        v112 = v257;
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5();
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();
        sub_1DCB099BC((v112 + 10), &v264, &qword_1ECCA35F8, &qword_1DD0E97A0);
        v241 = v55;
        if (v265)
        {
          OUTLINED_FUNCTION_85_10();
          v161 = v271;
          __swift_project_boxed_opaque_existential_1(v269, v270);
          type metadata accessor for SiriKitEvent(0);
          v44[1] = 0;
          v44[2] = 0;
          *v44 = v108;
          swift_storeEnumTagMultiPayload();
          v162 = v108;
          SiriKitEvent.__allocating_init(_:builder:)(v44, 0);
          (*(v161 + 8))();

          swift_getAssociatedTypeWitness();
          v163 = v244;
          v254 = v162;
          sub_1DCE2C528(v260, v162, v244);
          v164 = v243;
          v165 = &v36[v243[7]];
          *(v165 + 4) = 0;
          *v165 = 0u;
          *(v165 + 1) = 0u;
          v166 = v164[5];
          OUTLINED_FUNCTION_12_57();
          sub_1DCF05E90(v163, &v36[v167]);
          *&v36[v164[6]] = MEMORY[0x1E69E7CC0];
          sub_1DD0DB03C();
          OUTLINED_FUNCTION_10_65();
          sub_1DCF0A2E8(v163, v168);
          v36[v164[8]] = 0;
          v169 = v257;
          sub_1DCB099BC((v257 + 5), &v264, &qword_1ECCA1BF0, &qword_1DD100F20);
          if (v265)
          {
            OUTLINED_FUNCTION_117_5();
            v177 = v169[4];
            sub_1DCB099BC((v169 + 15), &v264, &qword_1ECCA8AB0, &qword_1DD0E23E0);
            if (v265)
            {
              OUTLINED_FUNCTION_116_7();
              sub_1DCB099BC((v169 + 25), v261, &qword_1ECCA98A0, &qword_1DD100F28);
              if (v262)
              {
                OUTLINED_FUNCTION_120_2();
                v217 = swift_getAssociatedTypeWitness();
                v218 = OUTLINED_FUNCTION_76_16();
                v253 = v217;
                sub_1DCB83BC0(v218, v219, v220, v221, v222);
              }

              sub_1DCB82888();
            }

            if (qword_1EDE46628 != -1)
            {
              OUTLINED_FUNCTION_58_0();
            }

            sub_1DCB4E718(v263);
            OUTLINED_FUNCTION_23_27();
            v213 = type metadata accessor for RefreshableDeviceState();
            OUTLINED_FUNCTION_20_28(v213, &protocol witness table for RefreshableDeviceState);
            sub_1DD0DCF8C();
          }

          if (qword_1EDE4A110 != -1)
          {
            OUTLINED_FUNCTION_20_1();
          }

          sub_1DCB4BA5C();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v160 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_40_25(v160, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0();
        v234 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_40_25(v234, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_83_10(v110, v111, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      v248 = v108;
      if (v265)
      {
        OUTLINED_FUNCTION_85_10();
        v174 = v59[4];
        sub_1DCB099BC((v59 + 20), &v264, qword_1ECCA98A8, &unk_1DD100F40);
        if (v265)
        {
          OUTLINED_FUNCTION_117_5();
        }

        else
        {
          sub_1DCF05A20(v263);
          sub_1DCB17D04(v269, v268);
          type metadata accessor for ResolveConfirmHandleExecutor();
          swift_allocObject();
          OUTLINED_FUNCTION_69_5();
          v247 = &v239;
          OUTLINED_FUNCTION_0_1();
          v180 = *(v179 + 64);
          MEMORY[0x1EEE9AC00](v181, v182);
          OUTLINED_FUNCTION_16();
          v184 = OUTLINED_FUNCTION_73_11(v183);
          v185(v184);
          __swift_mutable_project_boxed_opaque_existential_1(v268, v268[3]);
          OUTLINED_FUNCTION_0_1();
          v187 = *(v186 + 64);
          MEMORY[0x1EEE9AC00](v188, v189);
          OUTLINED_FUNCTION_16();
          v191 = OUTLINED_FUNCTION_33_23(v190);
          v192(v191);
          v59 = v257;
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v268);
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          OUTLINED_FUNCTION_12();
          v193 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_36_33(v193, &off_1F5871428);
          if (v265)
          {
            sub_1DCB16DB0(&v264, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v194 = sub_1DCF0594C(&v267);
        OUTLINED_FUNCTION_115_7(v194, v195, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v265)
        {
          sub_1DCAFF9E8(&v264, &v266);
          sub_1DCB099BC((v59 + 25), &v258, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v259)
          {
            sub_1DCAFF9E8(&v258, v261);
            sub_1DCB82380(&v264);
            v229 = OUTLINED_FUNCTION_53_17();
            memcpy(v229, v230, 0xB0uLL);
            sub_1DCEFA794();
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v215 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_113_5(v215, &off_1F5873940);
        }

        OUTLINED_FUNCTION_0();
        v236 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_113_5(v236, &off_1F5873940);
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0();
      }

      sub_1DCB4E718(v263);
      OUTLINED_FUNCTION_23_27();
      v173 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_40_25(v173, &protocol witness table for RefreshableDeviceState);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF03070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v16;
  v8[3] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[6] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_1DCF0316C;

  return sub_1DCEB7328(a5, a6, 0);
}

uint64_t sub_1DCF0316C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF03254()
{
  OUTLINED_FUNCTION_57_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9A30, qword_1DD101158);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF03414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v16;
  v8[3] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[6] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_1DCF03510;

  return sub_1DCEB7328(a5, a6, 0);
}

uint64_t sub_1DCF03510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF035F8()
{
  OUTLINED_FUNCTION_57_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9A30, qword_1DD101158);
  swift_allocObject();
  sub_1DD0DCF8C();
}

void sub_1DCF037F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 4);
  v5 = *(a2 + 40);
  sub_1DCF04A48();
}

void sub_1DCF03840(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  sub_1DCF05370();
}

uint64_t sub_1DCF03880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[12] = v13;
  v8[13] = v14;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v8[14] = *a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF0395C, 0, 0);
}

void sub_1DCF0395C()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v0[17] = *(v1 + 80);
  v0[18] = *(v1 + 88);
  v5 = OUTLINED_FUNCTION_86();
  IntentResolutionRecord.init(app:intent:intentResponse:)(v5, v6, v3, v7);
  v0[19] = v8;
  v0[20] = v9;
  v0[21] = v10;
  v0[2] = v8;
  v0[3] = v9;
  v0[4] = v10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF03A5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 176);
  *v2 = *v0;
  *(v1 + 184) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF03B44()
{
  v10 = v0[20];
  v11 = v0[21];
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v8 = v0[12];
  v9 = v0[19];
  v6 = v0[15];
  v7 = v0[11];
  v0[5] = v0[23];
  type metadata accessor for HandleIntentFlowResult();
  type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  sub_1DCD1AC74();
  v0[6] = v5;
  sub_1DCF03D1C();
}

void sub_1DCF03D5C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  sub_1DCF04FBC();
}

void sub_1DCF03D9C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v5 = type metadata accessor for RCHFlowFrame.State();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = v12 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (v45 - v18);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (v45 - v21);
  sub_1DCEFF010(v45 - v21);
  OUTLINED_FUNCTION_44_23();
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v23 = *v22;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v24 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_61_20(v24, xmmword_1DD0E07C0);
    swift_getErrorValue();
    v25 = sub_1DD0DF18C();
    v27 = v26;
    v24[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v24[4].n128_u64[0] = sub_1DCB34060();
    v24[2].n128_u64[0] = v25;
    v24[2].n128_u64[1] = v27;
    sub_1DD0DD7EC();

    *v2 = v23;
LABEL_12:
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    goto LABEL_13;
  }

  v28 = *(v8 + 8);
  v29 = OUTLINED_FUNCTION_44_23();
  v28(v29);
  sub_1DCEFF010(v19);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    (v28)(v19, v5);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    v45[1] = qword_1EDE57E18;
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v34 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_35_29(v34, xmmword_1DD0E07C0);
    sub_1DCEFF010(v14);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v35 = OUTLINED_FUNCTION_90_0();
    v28(v35);
    v36 = v45[6];
    v37 = v46;
    v34[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v34[4].n128_u64[0] = sub_1DCB34060();
    v34[2].n128_u64[0] = v36;
    v34[2].n128_u64[1] = v37;
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000001FLL);
    sub_1DCEFF010(v14);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v38 = OUTLINED_FUNCTION_90_0();
    v28(v38);
    v39 = v46;
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v40 = OUTLINED_FUNCTION_24_30();
    v42 = CommandFailure.init(errorCode:reason:)(v40, v41, v39);
    sub_1DCC7AE30();
    v43 = swift_allocError();
    *v44 = v42;
    *v2 = v43;
    goto LABEL_12;
  }

  v30 = *v19;
  v31 = v19[2];
  v32 = v19[3];
  v33 = v19[4];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_22_36();
  sub_1DD0DD7EC();
  *v2 = v30;
  *(v2 + 8) = v32;
  *(v2 + 16) = v31;
  *(v2 + 24) = v33;
  *(v2 + 32) = 0;
LABEL_13:
  OUTLINED_FUNCTION_49();
}

BOOL sub_1DCF041B8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }
  }

  else if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_22_36();
  sub_1DD0DD7EC();
  return v0 != 0;
}

void sub_1DCF04298()
{
  OUTLINED_FUNCTION_50();
  v3 = v0;
  v5 = v4;
  v6 = *(*v3 + 88);
  v61[2] = *(*v3 + 80);
  v7 = type metadata accessor for RCHFlowFrame.State();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v61 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_65_14();
  v20 = *v5;
  v62 = v5[1];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  sub_1DCEFF010(v1);
  v21 = v7;
  if (swift_getEnumCaseMultiPayload())
  {
    v22 = *(v10 + 8);
    v22(v1, v7);
    LODWORD(v62) = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v23 = OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_35_29(v23, xmmword_1DD0E07C0);
    sub_1DCEFF010(v18);
    OUTLINED_FUNCTION_105();
    sub_1DD0DF07C();
    v24 = OUTLINED_FUNCTION_105();
    (v22)(v24);
    v25 = v63;
    v26 = v64;
    v23[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1DCB34060();
    v23[2].n128_u64[0] = v25;
    v23[2].n128_u64[1] = v26;
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000001FLL);
    sub_1DCEFF010(v2);
    sub_1DD0DF07C();
    v22(v2, v7);
    v27 = v64;
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v28 = OUTLINED_FUNCTION_24_30();
    v30 = CommandFailure.init(errorCode:reason:)(v28, v29, v27);
    sub_1DCC7AE30();
    v31 = OUTLINED_FUNCTION_79_0();
    *v32 = v30;
    *v18 = v31;
    OUTLINED_FUNCTION_105();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_119_2();
  }

  else
  {
    v33 = *v1;
    v34 = *(v1 + 8);
    v35 = *(v1 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));
    v36 = v20;
    switch(v20 >> 62)
    {
      case 1uLL:
        v61[0] = v33;
        v61[1] = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v47 = OUTLINED_FUNCTION_32_6();
        *(v47 + 16) = xmmword_1DD0E07C0;
        v48 = sub_1DD0DD1CC();
        v50 = v49;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1DCB34060();
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v51 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        sub_1DD0DD7EC();

        swift_getAssociatedTypeWitness();
        v52 = v62;
        v53 = swift_dynamicCastUnknownClass();
        if (v53)
        {
          *v18 = v53;
          v18[8] = v34;
          *(v18 + 2) = v35;
          *(v18 + 3) = v20 & 0x3FFFFFFFFFFFFFFFLL;
          swift_storeEnumTagMultiPayload();
          v54 = v52;
          sub_1DD0DCF8C();
        }

        v57 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();

        type metadata accessor for CommandFailure();
        OUTLINED_FUNCTION_42_25();
        v58 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002FLL, 0x80000001DD122D50);
        sub_1DCC7AE30();
        v59 = swift_allocError();
        *v60 = v58;
        *v18 = v59;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_119_2();

        break;
      case 2uLL:

        if (v62)
        {
          sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
          v43 = sub_1DD0DE93C();
          sub_1DD0DE70C();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC();

          sub_1DD0DD1FC();
          v44 = v33;
          OUTLINED_FUNCTION_43_1();
          v45 = sub_1DD0DD1AC();
          *v18 = v44;
          v18[8] = 0;
          goto LABEL_11;
        }

        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v55 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();

        *v18 = v20 & 0x3FFFFFFFFFFFFFFFLL;
        OUTLINED_FUNCTION_86();
        swift_storeEnumTagMultiPayload();
        v56 = (v20 & 0x3FFFFFFFFFFFFFFFLL);
        OUTLINED_FUNCTION_119_2();

        break;
      case 3uLL:

        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v46 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();

        sub_1DD0DD1FC();
        v44 = v33;
        OUTLINED_FUNCTION_43_1();
        v45 = sub_1DD0DD1AC();
        *v18 = v44;
        v18[8] = 1;
LABEL_11:
        *(v18 + 3) = 0;
        *(v18 + 4) = 0;
        *(v18 + 2) = v45;
        OUTLINED_FUNCTION_86();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_119_2();

        break;
      default:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v37 = OUTLINED_FUNCTION_32_6();
        *(v37 + 16) = xmmword_1DD0E07C0;
        v38 = sub_1DD0DD1CC();
        v40 = v39;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1DCB34060();
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v41 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC();

        *v18 = v33;
        v18[8] = v34;
        *(v18 + 2) = v35;
        *(v18 + 3) = v36;
        swift_storeEnumTagMultiPayload();
        v42 = v33;
        sub_1DCBF4C98(v36);
        sub_1DCEFF0BC(v18);

        break;
    }
  }

  OUTLINED_FUNCTION_49();
}