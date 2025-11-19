void sub_1DCB135A4(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 8))(a1, v9);
      v10 = type metadata accessor for Input(0);
      v11 = (a1 + v10[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          goto LABEL_46;
        case 1u:
          v65 = sub_1DD0DC76C();
          (*(*(v65 - 8) + 8))(v11, v65);
          v66 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v53 = *(v11 + 1);

          v54 = *(v11 + 2);
          goto LABEL_58;
        case 3u:
          v55 = *v11;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v12 = sub_1DD0DB1EC();
          goto LABEL_46;
        case 5u:
          v67 = *v11;
          goto LABEL_64;
        case 6u:
          v68 = sub_1DD0DB4BC();
          (*(*(v68 - 8) + 8))(v11, v68);
          v69 = type metadata accessor for USOParse();
          v70 = *(v69 + 20);
          v71 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v11[v70], 1, v71))
          {
            (*(*(v71 - 8) + 8))(&v11[v70], v71);
          }

          v64 = *(v69 + 24);
          goto LABEL_57;
        case 7u:
          v56 = sub_1DD0DB4BC();
          (*(*(v56 - 8) + 8))(v11, v56);
          v57 = type metadata accessor for USOParse();
          v58 = *(v57 + 20);
          v59 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v11[v58], 1, v59))
          {
            (*(*(v59 - 8) + 8))(&v11[v58], v59);
          }

          v60 = *&v11[*(v57 + 24) + 8];

          v61 = type metadata accessor for LinkParse();
          v62 = *&v11[v61[5] + 8];

          v63 = *&v11[v61[6] + 8];

          v64 = v61[7];
LABEL_57:
          v72 = *&v11[v64 + 8];
LABEL_58:

          break;
        case 8u:
          v73 = sub_1DD0DD12C();
          (*(*(v73 - 8) + 8))(v11, v73);
          v74 = type metadata accessor for NLRouterParse();
          v75 = *&v11[v74[5] + 8];

          v76 = &v11[v74[6]];
          v77 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v76, 1, v77))
          {
            v78 = sub_1DD0DB4BC();
            (*(*(v78 - 8) + 8))(v76, v78);
            v79 = *(v77 + 20);
            v80 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v76 + v79, 1, v80))
            {
              (*(*(v80 - 8) + 8))(v76 + v79, v80);
            }

            v81 = *(v76 + *(v77 + 24) + 8);
          }

          v67 = *&v11[v74[7]];
LABEL_64:

          break;
        case 9u:
          v12 = sub_1DD0DD08C();
LABEL_46:
          (*(*(v12 - 8) + 8))(v11, v12);
          break;
        default:
          break;
      }

      v82 = *(a1 + v10[6]);

      v83 = (a1 + v10[7]);
      if (v83[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
      }

      v84 = *(a2 + 16);
      v85 = *(*(*(a2 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      v7 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
      goto LABEL_68;
    case 1u:
    case 7u:
      v6 = *a1;
      goto LABEL_41;
    case 2u:
    case 3u:
    case 6u:
      v4 = *a1;

      v5 = *(a1 + 8);

      return;
    case 4u:
      v16 = sub_1DD0DB04C();
      (*(*(v16 - 8) + 8))(a1, v16);
      v14 = type metadata accessor for Input(0);
      v15 = (a1 + v14[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_14;
        case 1u:
          goto LABEL_25;
        case 2u:
          goto LABEL_20;
        case 3u:
          goto LABEL_21;
        case 4u:
          goto LABEL_17;
        case 5u:
          goto LABEL_26;
        case 6u:
          goto LABEL_27;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_32;
        case 9u:
          goto LABEL_18;
        default:
          goto LABEL_38;
      }

      goto LABEL_38;
    case 5u:
      v13 = sub_1DD0DB04C();
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = type metadata accessor for Input(0);
      v15 = (a1 + v14[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
LABEL_14:
          v17 = sub_1DD0DC76C();
          goto LABEL_19;
        case 1u:
LABEL_25:
          v31 = sub_1DD0DC76C();
          (*(*(v31 - 8) + 8))(v15, v31);
          v32 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
LABEL_20:
          v19 = *(v15 + 1);

          v20 = *(v15 + 2);
          goto LABEL_31;
        case 3u:
LABEL_21:
          v21 = *v15;
          swift_unknownObjectRelease();
          break;
        case 4u:
LABEL_17:
          v17 = sub_1DD0DB1EC();
          goto LABEL_19;
        case 5u:
LABEL_26:
          v33 = *v15;
          goto LABEL_37;
        case 6u:
LABEL_27:
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 8))(v15, v34);
          v35 = type metadata accessor for USOParse();
          v36 = *(v35 + 20);
          v37 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v15[v36], 1, v37))
          {
            (*(*(v37 - 8) + 8))(&v15[v36], v37);
          }

          v30 = *(v35 + 24);
          goto LABEL_30;
        case 7u:
LABEL_22:
          v22 = sub_1DD0DB4BC();
          (*(*(v22 - 8) + 8))(v15, v22);
          v23 = type metadata accessor for USOParse();
          v24 = *(v23 + 20);
          v25 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(&v15[v24], 1, v25))
          {
            (*(*(v25 - 8) + 8))(&v15[v24], v25);
          }

          v26 = *&v15[*(v23 + 24) + 8];

          v27 = type metadata accessor for LinkParse();
          v28 = *&v15[v27[5] + 8];

          v29 = *&v15[v27[6] + 8];

          v30 = v27[7];
LABEL_30:
          v38 = *&v15[v30 + 8];
LABEL_31:

          break;
        case 8u:
LABEL_32:
          v39 = sub_1DD0DD12C();
          (*(*(v39 - 8) + 8))(v15, v39);
          v40 = type metadata accessor for NLRouterParse();
          v41 = *&v15[v40[5] + 8];

          v42 = &v15[v40[6]];
          v43 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v42, 1, v43))
          {
            v44 = sub_1DD0DB4BC();
            (*(*(v44 - 8) + 8))(v42, v44);
            v45 = *(v43 + 20);
            v46 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v42 + v45, 1, v46))
            {
              (*(*(v46 - 8) + 8))(v42 + v45, v46);
            }

            v47 = *(v42 + *(v43 + 24) + 8);
          }

          v33 = *&v15[v40[7]];
LABEL_37:

          break;
        case 9u:
LABEL_18:
          v17 = sub_1DD0DD08C();
LABEL_19:
          (*(*(v17 - 8) + 8))(v15, v17);
          break;
        default:
          break;
      }

LABEL_38:
      v48 = *(a1 + v14[6]);

      v49 = (a1 + v14[7]);
      if (v49[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }

      v50 = *(a2 + 16);
      v51 = *(*(*(a2 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v52 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
LABEL_41:

      return;
    case 8u:
      v18 = *a1;

      v7 = *(a1 + 16);
      goto LABEL_68;
    case 9u:
      v8 = *a1;

      v7 = *(a1 + 8);
LABEL_68:

      goto LABEL_8;
    case 0xAu:
      sub_1DCB070E0(*a1, *(a1 + 8), *(a1 + 16));
      return;
    case 0xBu:
      v7 = *a1;

LABEL_8:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB14140()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + *(v1 + 104));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 128)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v6 + 136)));
  OUTLINED_FUNCTION_66();
  v8 = *(v0 + *(v7 + 144));

  OUTLINED_FUNCTION_66();
  v10 = v0 + *(v9 + 152);
  sub_1DCB150B8(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40));
  return v0;
}

uint64_t sub_1DCB14268()
{
  sub_1DCB14140();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_1DCB142C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t sub_1DCB142F0()
{
  sub_1DCB142C0();

  return swift_deallocClassInstance();
}

void sub_1DCB14324()
{
  v175 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[38];
  OUTLINED_FUNCTION_21_43();
  sub_1DCB3B4A0(v4, v2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v2;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v0[41];
      v9 = v2[1];
      v10 = *(v0[48] + 16);

      v11 = *(v8 + 80);
      v12 = sub_1DCB3BACC(v11, v11);
      if (v12)
      {
        v13 = v12;
        v14 = v0[44];
        v15 = *(*(v0[40] + 88) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v17 = sub_1DCB3BB68(AssociatedTypeWitness, AssociatedTypeWitness);
        if (v17)
        {
          v18 = v17;
          v19 = v0[36];
          sub_1DCB3BBC0(v13);
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v20 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
          v21 = sub_1DD0DD8EC();
          v22 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_75(v22))
          {
            v23 = OUTLINED_FUNCTION_50_0();
            *v23 = 0;
            _os_log_impl(&dword_1DCAFC000, v21, v22, "ResolveConfirmFlow transitioning to state confirm with intent", v23, 2u);
            OUTLINED_FUNCTION_80();
          }

          v24 = v0[45];
          v25 = v0[46];
          v26 = v0[44];
          v27 = v0[39];
          v29 = v0[36];
          v28 = v0[37];
          v167 = v0[35];

          v171 = v29;
          *&v172 = v18;
          v173 = 0uLL;
          *(&v172 + 1) = v28;
          v174 = 6;
          sub_1DD0DCF8C();
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v126 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v126, qword_1EDE57E00);
      v127 = sub_1DD0DD8EC();
      v128 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v128))
      {
        v169 = v10;
        v129 = v0[44];
        v130 = v0[40];
        v131 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *v131 = 136315394;
        v0[30] = v11;
        swift_getMetatypeMetadata();
        v132 = sub_1DD0DE02C();
        v134 = sub_1DCB10E9C(v132, v133, &v171);

        *(v131 + 4) = v134;
        *(v131 + 12) = 2080;
        v135 = *(*(v130 + 88) + 16);
        v0[31] = swift_getAssociatedTypeWitness();
        swift_getMetatypeMetadata();
        v136 = sub_1DD0DE02C();
        v138 = sub_1DCB10E9C(v136, v137, &v171);

        *(v131 + 14) = v138;
        OUTLINED_FUNCTION_71_15();
        _os_log_impl(v139, v140, v141, v142, v143, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_80();
      }

      else
      {
        v144 = v0[40];

        v145 = *(v144 + 88);
      }

      v146 = v0[44];
      v147 = v0[39];
      v148 = v0[35];
      type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError();
      OUTLINED_FUNCTION_0_106();
      swift_getWitnessTable();
      v149 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_8_68(v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v162, v163, v165, v166, v168, v169, v170, v171, v172, v173, v174);
    }

    v51 = v0[48];
    v52 = v0[43];
    v53 = v0[41];
    v54 = v2[1];
    v55 = *(v51 + 16);
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
    OUTLINED_FUNCTION_20_31();
    sub_1DCB398D0(v51 + v57, v52, v58);
    v59 = *(v53 + 80);
    if (sub_1DCB3BACC(v59, v59))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v60 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v60, qword_1EDE57E00);
      v61 = sub_1DD0DD8EC();
      v62 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v62))
      {
        v63 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v63);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_62();
      }

      v69 = v0[44];
      v161 = v0[43];
      v70 = v0[42];
      v71 = v0[39];
      v72 = v0[40];
      v73 = v0[36];
      v74 = v0[37];
      v164 = v0[35];

      v171 = v73;
      v172 = v74;
      v173 = 0uLL;
      v174 = 5;
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v100 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v100, qword_1EDE57E00);
    v101 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_137();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = OUTLINED_FUNCTION_151();
      v104 = OUTLINED_FUNCTION_83();
      v171 = v104;
      *v103 = 136315138;
      v0[27] = v59;
      swift_getMetatypeMetadata();
      v105 = sub_1DD0DE02C();
      v107 = sub_1DCB10E9C(v105, v106, &v171);

      *(v103 + 4) = v107;
      OUTLINED_FUNCTION_71_15();
      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v114 = v0[43];
    v113 = v0[44];
    v115 = v0[39];
    v116 = v0[35];
    v117 = *(v0[40] + 88);
    type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError();
    OUTLINED_FUNCTION_0_106();
    swift_getWitnessTable();
    v118 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_8_68(v118, v119, v120, v121, v122, v123, v124, v125, v157, v158, v159, v160, v162, v163, v165, v166, v168, v169, v170, v171, v172, v173, v174);
  }

  v30 = v2[1];
  v31 = *(v0[41] + 80);
  v32 = *v2;
  v33 = sub_1DCB3BACC(v31, v31);
  if (v33)
  {
    v34 = v33;
    v35 = v0[39];
    v37 = v0[36];
    v36 = v0[37];
    v38 = *(v30 + 24);

    sub_1DCB8CD88(v39, v34, v38, v36);
    v41 = v40;

    sub_1DCB3BBC0(v34);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v42 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
    v43 = sub_1DD0DD8EC();
    v44 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v44))
    {
      v45 = OUTLINED_FUNCTION_50_0();
      *v45 = 0;
      _os_log_impl(&dword_1DCAFC000, v43, v44, "ResolveConfirmFlow transitioning to state resolve", v45, 2u);
      OUTLINED_FUNCTION_80();
    }

    v46 = v0[44];
    v48 = v0[39];
    v47 = v0[40];
    v49 = v0[35];
    v50 = v0[36];

    v171 = v50;
    v172 = v41;
    v173 = 0uLL;
    v174 = 4;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v75 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v75, qword_1EDE57E00);
  v76 = sub_1DD0DD8EC();
  v77 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v77))
  {
    v78 = OUTLINED_FUNCTION_151();
    v79 = OUTLINED_FUNCTION_83();
    v171 = v79;
    *v78 = 136315138;
    v0[33] = v31;
    swift_getMetatypeMetadata();
    v80 = sub_1DD0DE02C();
    v82 = sub_1DCB10E9C(v80, v81, &v171);

    *(v78 + 4) = v82;
    OUTLINED_FUNCTION_71_15();
    _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_80();
  }

  v88 = v0[44];
  v89 = v0[39];
  v90 = v0[35];
  v91 = *(v0[40] + 88);
  type metadata accessor for ResolveConfirmFlow.ResolveConfirmFlowError();
  OUTLINED_FUNCTION_0_106();
  swift_getWitnessTable();
  v92 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_68(v92, v93, v94, v95, v96, v97, v98, v99, v157, v158, v159, v160, v162, v163, v165, v166, v168, v169, v170, v171, v172, v173, v174);
}

uint64_t sub_1DCB15000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB15038()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t SiriKitParameterMetadata.__deallocating_deinit()
{
  SiriKitParameterMetadata.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCB150B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:

      goto LABEL_3;
    case 1:

      goto LABEL_3;
    case 6:

LABEL_3:

      break;
    case 7:

      sub_1DCB151A8(a1, a2);
      break;
    case 8:

      break;
    default:
      return;
  }
}

void sub_1DCB151A8(id a1, unsigned __int8 a2)
{
  if ((a2 >> 6) <= 1u)
  {
  }
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v1;

  return type metadata accessor for SimpleOutputFlowAsync();
}

uint64_t OUTLINED_FUNCTION_131_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t SiriKitParameterMetadata.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PromptForValueFlowAsync.__deallocating_deinit()
{
  PromptForValueFlowAsync.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *PromptForValueFlowAsync.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v3 = v0[11];

  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 112);
  v6 = *(v1 + 80);
  v7 = type metadata accessor for PromptForValueFlowAsync.State();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1DCB15340()
{
  sub_1DCB1536C();
  OUTLINED_FUNCTION_63_12();

  return swift_deallocClassInstance();
}

void *sub_1DCB1536C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return v0;
}

uint64_t (*sub_1DCB153BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE96070;
}

uint64_t *sub_1DCB15440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[16] = swift_getObjectType();
  v8 = *(v7 + 80);
  v9 = OUTLINED_FUNCTION_16_46();
  v3[2] = sub_1DCB153BC(v9, v10, v11, v12);
  v3[3] = v13;
  v14 = OUTLINED_FUNCTION_16_46();
  v3[4] = sub_1DCB15548(v14, v15, v16, v17);
  v3[5] = v18;
  v19 = OUTLINED_FUNCTION_16_46();
  v3[6] = sub_1DCB155CC(v19, v20, v21, v22);
  v3[7] = v23;
  v24 = OUTLINED_FUNCTION_16_46();
  v3[8] = sub_1DCB1564C(v24, v25, v26, v27);
  v3[9] = v28;
  v29 = OUTLINED_FUNCTION_16_46();
  v3[10] = sub_1DCB91EF4(v29, v30, v31, v32);
  v3[11] = v33;
  v34 = OUTLINED_FUNCTION_16_46();
  v3[12] = sub_1DCB15790(v34, v35, v36, v37);
  v3[13] = v38;
  OUTLINED_FUNCTION_136();
  v39 = swift_allocObject();
  v39[2] = v8;
  v39[3] = a2;
  v39[4] = a3;
  v39[5] = a1;
  v3[14] = &unk_1DD0FE2A0;
  v3[15] = v39;
  return v3;
}

uint64_t sub_1DCB15510()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

void *sub_1DCB15548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2F0;
}

void *sub_1DCB155CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2E0;
}

void *sub_1DCB1564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2D0;
}

uint64_t *RCHChildFlowFactory.deinit()
{
  v1 = *v0;
  memcpy(__dst, v0 + 2, 0x160uLL);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = type metadata accessor for RCHChildFlowFactory.Producers();
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 8))(__dst);
  sub_1DCB16DB0((v0 + 46), qword_1ECCA8F08, &qword_1DD0FEF08);
  return v0;
}

void *sub_1DCB15790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2B0;
}

uint64_t sub_1DCB1582C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB15888()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_112(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_66();
  v7 = (v0 + *(v6 + 104));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v11 + 112)));
  return v0;
}

void sub_1DCB15964(unsigned __int8 *a1, uint64_t a2)
{
  v105 = *(sub_1DD0DB04C() - 8);
  v119 = *(v105 + 64);
  v102 = sub_1DD0DC76C();
  v112 = *(v102 - 8);
  v101 = v112;
  v2 = *(v112 + 80);
  v3 = sub_1DD0DB1EC();
  v110 = *(v3 - 8);
  v99 = v110;
  v100 = v3;
  v116 = *(v110 + 80) | v2;
  v104 = sub_1DD0DB4BC();
  v108 = *(v104 - 8);
  v4 = v108;
  v5 = *(v108 + 80) & 0xF8;
  v103 = sub_1DD0DB3EC();
  v6 = *(v103 - 8);
  v7 = *(v6 + 80);
  v106 = v5 | v7 | 7;
  v8 = sub_1DD0DD12C();
  v9 = *(v8 - 8);
  v97 = v9;
  v98 = v8;
  v114 = *(v9 + 80);
  v10 = sub_1DD0DD08C();
  v96 = *(v10 - 8);
  v11 = *(v112 + 64);
  v12 = v110;
  v111 = v11 + 7;
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v12 + 64))
  {
    v11 = *(v12 + 64);
  }

  v13 = *(v108 + 64);
  v14 = v13 + v7;
  v15 = v7;
  v16 = (v13 + v7) & ~v7;
  v109 = v6;
  v17 = *(v6 + 84);
  v18 = *(v6 + 64);
  if (v17)
  {
    v19 = *(v6 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = (v19 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= v21)
  {
    v11 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v22 = v20 + 31;
  if (v11 <= (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v23 = *(v9 + 64);
  v113 = v4;
  v24 = *(v4 + 84);
  if (v17)
  {
    v25 = v17 - 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  if (v26 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  else
  {
    v27 = v26;
  }

  v28 = ((v22 + ((v106 + 16 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v106)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v28)
  {
    v11 = v28;
  }

  if (v11 <= *(*(v10 - 8) + 64))
  {
    v29 = *(*(v10 - 8) + 64);
  }

  else
  {
    v29 = v11;
  }

  v30 = *(*(a2 + 16) - 8);
  if (v29 <= 0x18)
  {
    v31 = 24;
  }

  else
  {
    v31 = v29;
  }

  v122 = *(*(a2 + 16) - 8);
  v32 = *(v30 + 64);
  v33 = (v116 | (v114 | *(v96 + 80))) & 0xF8 | v106;
  v34 = v119 + v33;
  v35 = ((((v31 + ((v119 + v33) & ~v33) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v32 <= 9)
  {
    v32 = 9;
  }

  if (v32 + 1 > v35)
  {
    v35 = v32 + 1;
  }

  if (v35 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  v37 = a1[v36];
  v38 = v37 - 4;
  if (v37 >= 4)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    switch(v39)
    {
      case 1:
        v40 = *a1;
        goto LABEL_45;
      case 2:
        v40 = *a1;
        goto LABEL_45;
      case 3:
        v40 = *a1 | (a1[2] << 16);
        goto LABEL_45;
      case 4:
        v40 = *a1;
LABEL_45:
        if (v36 < 4)
        {
          v40 |= v38 << (8 * v36);
        }

        v37 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v41 = ~v33;
  switch(v37)
  {
    case 0u:
      v91 = ~v106;
      v115 = ~v15;
      v123 = v17;
      v42 = v23;
      v43 = v106 + 16;
      v92 = v27;
      v93 = v18;
      v94 = v19;
      v95 = v16;
      v117 = v14;
      v107 = v19 + 7;
      v120 = v31 + 1;
      (*(v105 + 8))();
      v44 = (&a1[v34] & v41);
      v45 = v44[v31];
      v46 = v45 - 10;
      if (v45 < 0xA)
      {
        v48 = v43;
        v49 = v42;
        v50 = v123;
      }

      else
      {
        if (v31 <= 3)
        {
          v47 = v31;
        }

        else
        {
          v47 = 4;
        }

        v48 = v43;
        v49 = v42;
        v50 = v123;
        switch(v47)
        {
          case 1:
            v51 = *v44;
            goto LABEL_88;
          case 2:
            v51 = *v44;
            goto LABEL_88;
          case 3:
            v51 = *v44 | (v44[2] << 16);
            goto LABEL_88;
          case 4:
            v51 = *v44;
LABEL_88:
            if (v31 < 4)
            {
              v45 = (v51 | (v46 << (8 * v31))) + 10;
            }

            else
            {
              v45 = v51 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          goto LABEL_98;
        case 1u:
          goto LABEL_107;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_99;
        case 5u:
          goto LABEL_108;
        case 6u:
          goto LABEL_109;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_114;
        case 9u:
          (*(v96 + 8))(v44, v10);
          break;
        default:
          goto LABEL_133;
      }

      goto LABEL_133;
    case 1u:
      v91 = ~v106;
      v115 = ~v15;
      v124 = v17;
      v56 = v23;
      v57 = v106 + 16;
      v92 = v27;
      v93 = v18;
      v94 = v19;
      v95 = v16;
      v117 = v14;
      v107 = v19 + 7;
      v120 = v31 + 1;
      (*(v105 + 8))();
      v44 = (&a1[v34] & v41);
      v58 = v44[v31];
      v59 = v58 - 10;
      if (v58 < 0xA)
      {
        v61 = v10;
        v48 = v57;
        v49 = v56;
        v50 = v124;
      }

      else
      {
        if (v31 <= 3)
        {
          v60 = v31;
        }

        else
        {
          v60 = 4;
        }

        v61 = v10;
        v48 = v57;
        v49 = v56;
        v50 = v124;
        switch(v60)
        {
          case 1:
            v62 = *v44;
            goto LABEL_94;
          case 2:
            v62 = *v44;
            goto LABEL_94;
          case 3:
            v62 = *v44 | (v44[2] << 16);
            goto LABEL_94;
          case 4:
            v62 = *v44;
LABEL_94:
            if (v31 < 4)
            {
              v58 = (v62 | (v59 << (8 * v31))) + 10;
            }

            else
            {
              v58 = v62 + 10;
            }

            break;
          default:
            goto LABEL_97;
        }
      }

      break;
    case 2u:
      v52 = a1[v32];
      v53 = v52 - 2;
      if (v52 >= 2)
      {
        if (v32 <= 3)
        {
          v54 = v32;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *a1;
            goto LABEL_76;
          case 2:
            v55 = *a1;
            goto LABEL_76;
          case 3:
            v55 = *a1 | (a1[2] << 16);
            goto LABEL_76;
          case 4:
            v55 = *a1;
LABEL_76:
            if (v32 < 4)
            {
              v52 = (v55 | (v53 << (8 * v32))) + 2;
            }

            else
            {
              v52 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v52 == 1)
      {
        goto LABEL_84;
      }

      if (!v52)
      {
        v63 = *(v122 + 8);

        v63();
      }

      return;
    case 3u:
LABEL_84:
      v64 = *a1;

      return;
    default:
      return;
  }

LABEL_97:
  switch(v58)
  {
    case 0u:
LABEL_98:
      v65 = v101;
      v61 = v102;
      goto LABEL_118;
    case 1u:
LABEL_107:
      (*(v101 + 8))(v44, v102);
      v77 = *(&v44[v111] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_133;
    case 2u:
LABEL_100:
      v66 = *(v44 + 1);

      v67 = *(v44 + 2);
      goto LABEL_113;
    case 3u:
LABEL_101:
      v68 = *v44;
      swift_unknownObjectRelease();
      goto LABEL_133;
    case 4u:
LABEL_99:
      v65 = v99;
      v61 = v100;
      goto LABEL_118;
    case 5u:
LABEL_108:
      v78 = *v44;
      goto LABEL_132;
    case 6u:
LABEL_109:
      (*(v113 + 8))(v44, v104);
      v79 = &v44[v117] & v115;
      if (!__swift_getEnumTagSinglePayload(v79, 1, v103))
      {
        (*(v109 + 8))(v79, v103);
      }

      v76 = v107 + v79;
      goto LABEL_112;
    case 7u:
LABEL_102:
      (*(v113 + 8))(v44, v104);
      v69 = &v44[v117] & v115;
      if (!__swift_getEnumTagSinglePayload(v69, 1, v103))
      {
        (*(v109 + 8))(v69, v103);
      }

      v70 = 7;
      if (!v50)
      {
        v70 = 8;
      }

      v71 = *(((v93 + v70 + v69) & 0xFFFFFFFFFFFFFFF8) + 8);

      v72 = &v44[((((v95 + v94 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v73 = *(v72 + 8);

      v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
      v75 = *(v74 + 8);

      v76 = v74 + 23;
LABEL_112:
      v80 = *((v76 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_113:

      goto LABEL_133;
    case 8u:
LABEL_114:
      (*(v97 + 8))(v44, v98);
      v81 = &v44[v49 + 7] & 0xFFFFFFFFFFFFFFF8;
      v82 = *(v81 + 8);

      v83 = (v48 + v81) & v91;
      if (v24 == v92)
      {
        if (__swift_getEnumTagSinglePayload((v48 + v81) & v91, v24, v104))
        {
          goto LABEL_131;
        }

        v84 = (v117 + v83) & v115;
        goto LABEL_127;
      }

      v84 = (v117 + v83) & v115;
      if (v25 == v92)
      {
        v85 = v103;
        if (v50 < 2)
        {
LABEL_128:
          (*(v113 + 8))(v83, v104);
          if (!__swift_getEnumTagSinglePayload(v84, 1, v85))
          {
            (*(v109 + 8))(v84, v85);
          }

          v87 = *(((v107 + v84) & 0xFFFFFFFFFFFFFFF8) + 8);

          goto LABEL_131;
        }

        if (__swift_getEnumTagSinglePayload((v117 + v83) & v115, v50, v103) >= 2)
        {
          goto LABEL_131;
        }

LABEL_127:
        v85 = v103;
        goto LABEL_128;
      }

      v86 = *(((v107 + v84) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v86 >= 0xFFFFFFFF)
      {
        LODWORD(v86) = -1;
      }

      if ((v86 + 1) < 2)
      {
        goto LABEL_127;
      }

LABEL_131:
      v78 = *((v21 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_132:

LABEL_133:
      v88 = &v44[v120 + 7];
      v90 = (v88 & 0xFFFFFFFFFFFFFFF8) + 15;
      v89 = *(v88 & 0xFFFFFFFFFFFFFFF8);

      if (*((v90 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v90 & 0xFFFFFFFFFFFFFFF8));
      }

      return;
    case 9u:
      v65 = v96;
LABEL_118:
      (*(v65 + 8))(v44, v61);
      goto LABEL_133;
    default:
      goto LABEL_133;
  }
}

uint64_t sub_1DCB1656C()
{
  sub_1DCB165A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB165A0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  sub_1DCB17238(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t RCHChildFlowFactory.__deallocating_deinit()
{
  RCHChildFlowFactory.deinit();
  OUTLINED_FUNCTION_63_14();

  return swift_deallocClassInstance();
}

uint64_t static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t objectdestroy_62Tm()
{
  OUTLINED_FUNCTION_18_43();
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void *sub_1DCB1697C(void *result)
{
  v1 = result;
  if (*result)
  {
    if (*result == 1)
    {
      goto LABEL_24;
    }

    v2 = result[1];
  }

  if (v1[2])
  {
    v3 = v1[3];
  }

  if (v1[4])
  {
    v4 = v1[5];
  }

  if (v1[6])
  {
    v5 = v1[7];
  }

  if (v1[8])
  {
    v6 = v1[9];
  }

  if (v1[10])
  {
    v7 = v1[11];
  }

  if (v1[12])
  {
    v8 = v1[13];
  }

  if (v1[14])
  {
    v9 = v1[15];
  }

  if (v1[16])
  {
    v10 = v1[17];
  }

  if (v1[18])
  {
    v11 = v1[19];
  }

  if (v1[20])
  {
    v12 = v1[21];
  }

LABEL_24:
  v13 = v1[22];
  if (v13)
  {
    if (v13 == 1)
    {
      return result;
    }

    v14 = v1[23];
  }

  if (v1[24])
  {
    v15 = v1[25];
  }

  if (v1[26])
  {
    v16 = v1[27];
  }

  if (v1[28])
  {
    v17 = v1[29];
  }

  if (v1[30])
  {
    v18 = v1[31];
  }

  if (v1[32])
  {
    v19 = v1[33];
  }

  if (v1[34])
  {
    v20 = v1[35];
  }

  if (v1[36])
  {
    v21 = v1[37];
  }

  if (v1[38])
  {
    v22 = v1[39];
  }

  if (v1[40])
  {
    v23 = v1[41];
  }

  if (v1[42])
  {
    v24 = v1[43];
  }

  return result;
}

uint64_t (*static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEBE3A0;
  *(v20 + 40) = v3;
  return j__OUTLINED_FUNCTION_7_57;
}

uint64_t sub_1DCB16C10()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB16D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DCB16DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB16E04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10_42(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_1DD0DE33C();
}

__n128 OUTLINED_FUNCTION_54_4(unint64_t a1, __n128 *a2)
{
  v3[1].n128_u64[0] = a1;
  v3[1].n128_u64[1] = v2;
  result = *a2;
  v3[2] = *a2;
  v3[3].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  *(v0 + 16) = *(v1 + 16);
}

void OUTLINED_FUNCTION_69_4()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 104);
  v3 = *(v0 + 57);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  v2 = v0[76];
  v0[7] = v0[77];

  return __swift_mutable_project_boxed_opaque_existential_1((v0 + 73), v2);
}

uint64_t OUTLINED_FUNCTION_69_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[15];
  v4 = v2[16];
  v5 = v2[14];
  return v2[12];
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_69_9()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{

  return sub_1DCB4F1DC(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_64_1()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = *(v0[15] + 96);
  return v0[16];
}

id OUTLINED_FUNCTION_64_3(float a1)
{
  *v3 = a1;
  *(v2 + 384) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_64_6()
{

  return sub_1DD0DB4BC();
}

uint64_t OUTLINED_FUNCTION_64_7(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_96_3()
{
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_64_14(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for OutputGenerationManifest();
}

uint64_t OUTLINED_FUNCTION_64_16()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_64_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_64_18(uint64_t a1)
{

  return sub_1DCB0E9D8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_19(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB09970(v4 - 128, v4 - 184, a3, a4);
}

uint64_t OUTLINED_FUNCTION_64_20(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DCB10E9C(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_64_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_1DD019284(v19, &a19, &a14, &a9);
}

void sub_1DCB17238(void *a1, id a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:

      break;
    case 1:

      break;
    case 2:

      sub_1DCF70DB4(a1, a2, a3, a4);
      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB17328()
{
  sub_1DCB1735C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB1735C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t ParameterHints.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0_76();

  return swift_deallocClassInstance();
}

void OUTLINED_FUNCTION_12_15(uint64_t a1@<X8>)
{
  *(v5 + 248) = v2;
  *(v5 + 216) = a1;
  *(v5 + 160) = v6;
  *(v5 + 168) = v4;
  *(v5 + 136) = v1;
  sub_1DCAFF9E8((v3 + 1000), v5 + 16);
  sub_1DCAFF9E8(v3 + 65, v5 + 56);
  sub_1DCAFF9E8((v3 + 1080), v5 + 96);
  sub_1DCAFF9E8(v3 + 60, v5 + 176);
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 4;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_12_18()
{
  v2 = *(v0 - 216);

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_12_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_1DCC917E0(v0, type metadata accessor for Input);
}

__n128 OUTLINED_FUNCTION_12_24(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_1DD0DDF7C();
}

void OUTLINED_FUNCTION_12_28(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v12, 2u);
}

uint64_t OUTLINED_FUNCTION_12_30()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1DCD1B9B8(v2, v3, v4);
  *v0 = v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_31()
{
  result = *(v0 - 416);
  v2 = *(v0 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_34(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_36()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t result)
{
  *(v2 + 56) = result;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_40()
{
  v2 = *(v0 - 184);

  return sub_1DD0DEEBC();
}

uint64_t *OUTLINED_FUNCTION_12_41(uint64_t *result, uint64_t a2)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = v2;
  v4 = *result;
  *(v3 + 43) = *(result + 8);
  *(v3 + 44) = *(result + 9);
  v5 = result[2];
  *(v3 + 64) = v4;
  *(v3 + 72) = v5;
  *(v3 + 45) = *(result + 24);
  *(v3 + 46) = *(result + 25);
  *(v3 + 47) = *(result + 26);
  return result;
}

BOOL OUTLINED_FUNCTION_12_42(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_43()
{
  v15 = *(v0 + 132);
  v13 = *(v0 + 130);
  v14 = *(v0 + 131);
  v3 = *(v0 + 112);
  v12 = *(v0 + 120);
  v11 = *(v0 + 129);
  v4 = *(v0 + 128);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v16 = *(v0 + 56);
}

void OUTLINED_FUNCTION_12_45()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_12_48()
{

  return sub_1DD0DEFBC();
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_52()
{
  v3 = v1[11];
  v4 = v1[9];
  v6 = v1[5];
  v5 = v1[6];
  *v3 = v0;
  *(v3 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_12_53(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 4, 4, a1);

  sub_1DCB8BD60(v1);
}

uint64_t OUTLINED_FUNCTION_12_54(uint64_t a1)
{
  *(a1 + 32) = v1;
  v4 = *(v2 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_12_56()
{

  return sub_1DCB82B4C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_64()
{
  v5 = *(v2 + 32);
  v6 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;
  v7 = *(v3 + 16);
  return v1;
}

void OUTLINED_FUNCTION_12_65()
{

  sub_1DD0DCEDC();
}

uint64_t OUTLINED_FUNCTION_12_66()
{
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];
  *v3 = v0[31];
  *(v3 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_67(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_69()
{
  v1 = *(v0 + 424);
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_70(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[16];
  v4 = v2[13];
  v5 = v2[11];
  v7 = v2[8];
  v6 = v2[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_74(uint64_t a1)
{
  *(v1 + 104) = a1;
}

uint64_t OUTLINED_FUNCTION_12_75()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DCB35460(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_12_76()
{
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);

  return sub_1DCB099BC(v3, v2, v0, v1);
}

uint64_t sub_1DCB17C3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_112(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB17CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DCB17D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_112(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1DCB17D64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return v4;
}

uint64_t sub_1DCB17DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  v6 = sub_1DD0DB04C();
  v7 = OUTLINED_FUNCTION_11_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Parse(0);
    v12 = OUTLINED_FUNCTION_11_1(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 24));
      OUTLINED_FUNCTION_54_9();
      return (v16 + 1);
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return type metadata accessor for NLContextUpdate();
}

double OUTLINED_FUNCTION_14_10()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_12()
{
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  *v1 = v0;
  *(v1 + 8) = 0;
  return v1;
}

void *OUTLINED_FUNCTION_14_14()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 57) = 27;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_14_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_56_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);

  return sub_1DCC5F868(v3, v4);
}

void OUTLINED_FUNCTION_14_20(uint64_t a1@<X8>)
{
  v3 = a1 | (v2 << 6);
  v4 = (*(v1 + 48) + 16 * v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(*(v1 + 56) + 8 * v3);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_1DCAFF9E8(&a9, a1 + 16);
}

__n128 OUTLINED_FUNCTION_14_24(uint64_t a1)
{
  *(v3 + 80) = a1;
  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

void OUTLINED_FUNCTION_14_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_14_27()
{
  v2 = v0[4];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  sub_1DCCE5F64(v3, v1);
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);

  return sub_1DD0DF1DC();
}

void OUTLINED_FUNCTION_14_30()
{

  SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
}

uint64_t OUTLINED_FUNCTION_14_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5[8] = 0xD000000000000014;
  v5[9] = (a5 - 32) | 0x8000000000000000;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = result;
  v5[5] = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_14_36(uint64_t a1)
{
  *(a1 + 16) = v2;
  result = *(v1 + 88);
  *(a1 + 24) = result;
  v4 = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_38()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void OUTLINED_FUNCTION_14_39()
{

  sub_1DCE06C88();
}

id OUTLINED_FUNCTION_14_43(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_14_46()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_48()
{

  return type metadata accessor for OutputGenerationManifest();
}

void OUTLINED_FUNCTION_14_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_1DCAFF9E8(&a22, a1 + 16);
}

void OUTLINED_FUNCTION_14_55()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[41];
}

uint64_t OUTLINED_FUNCTION_14_57(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_14_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1DCB79378(v2, v3);
  v4 = *(v1 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v4);

  return sub_1DCB651D0(v4);
}

uint64_t OUTLINED_FUNCTION_14_67()
{
  result = v1;
  v3 = *(v0 + 104);
  return result;
}

void sub_1DCB18584(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1DCB185D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_112(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_62_4(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_65_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_62_5(void *a1)
{
  v1 = a1[4];
  result = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{
  result = v1[1];
  *v0 = *v1;
  v0[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_7()
{
}

uint64_t OUTLINED_FUNCTION_62_8()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_62_9()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  return v0 + 4;
}

uint64_t OUTLINED_FUNCTION_62_10()
{
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
}

uint64_t OUTLINED_FUNCTION_62_11()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_62_14()
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_62_15(float a1)
{
  *v1 = a1;

  return sub_1DCB17CA0(v2 + 256, v2 + 296);
}

uint64_t sub_1DCB18D80(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBFC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1DD0DF1DC();

    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1DD0DF0AC() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1DCB18F54()
{
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_1DCB07294;
  v1 = swift_continuation_init();
  sub_1DCB076C0(v1, v0 + 10);
}

uint64_t dispatch thunk of CallStateEnvironmentProvider.updateCallState()()
{
  v2 = *(*v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB193FC;

  return v6();
}

uint64_t sub_1DCB192E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCB19354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB193FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DCB194F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CallStateEnvironmentProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void sub_1DCB1952C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2898, &qword_1DD0E6C90);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCF8C();
}

void sub_1DCB19614(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB195D4();
}

void sub_1DCB1967C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB1963C();
}

void sub_1DCB196A8()
{
  if (qword_1EDE4DD00 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void SiriKitCommandHandler.notifyBegin(peerInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v5 = *(a3 + 8);
  v6 = OUTLINED_FUNCTION_0_118();
  v7(v6);
  OUTLINED_FUNCTION_1_127();
  RefreshableDeviceState.setUnderlyingDeviceState(_:)();
  sub_1DCB16D50(v12, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  v8 = *(a3 + 16);
  v9 = OUTLINED_FUNCTION_0_118();
  v10(v9);
  v11 = OUTLINED_FUNCTION_1_127();
  sub_1DCB19D68(v11);
}

uint64_t sub_1DCB19A80()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void RefreshableDeviceState.setUnderlyingDeviceState(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 14);
  sub_1DCB19C90(&v1[4]);
  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_1DCB19D2C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCB19D68(uint64_t a1)
{
  sub_1DCB17C3C(a1, &v14, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (v15)
  {
    sub_1DCAFF9E8(&v14, v16);
    sub_1DCB17D04(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BF8, &qword_1DD0E16C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C10, &qword_1DD0E16D8);
    if (swift_dynamicCast())
    {
      v2 = sub_1DCAFF9E8(v11, &v14);
      v3 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v2, v4);
      sub_1DD0DCF8C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm_0(v16);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v5 = &qword_1ECCA1C08;
    v6 = &qword_1DD0E16D0;
    v7 = v11;
  }

  else
  {
    v5 = &qword_1ECCA1BF0;
    v6 = &qword_1DD100F20;
    v7 = &v14;
  }

  v8 = sub_1DCB185D0(v7, v5, v6);
  v9 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v8, v10);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB1A0F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_unknownObjectRelease();
  *a1 = a2;
  a1[1] = a3;
  return swift_unknownObjectRetain();
}

void sub_1DCB1A1A8()
{
  if (qword_1EDE4DCD8 != -1)
  {
    swift_once();
  }

  v0 = [qword_1EDE4DCE0 outputVoice];
  v1 = off_1E8648580;
  if (v0)
  {
    v2 = v0;
    v3 = [v0 gender];

    v4 = off_1E8648578;
    if (v3 != 2)
    {
      v4 = off_1E8648580;
    }

    if (v3 == 1)
    {
      v1 = off_1E8648570;
    }

    else
    {
      v1 = v4;
    }
  }

  v5 = *v1;
  sub_1DD0DCAAC();
}

uint64_t sub_1DCB1A2AC()
{
  v0 = sub_1DD0DB0FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4DCD8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE4DCE0;
  v7 = [qword_1EDE4DCE0 languageCode];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1DD0DDFBC();
    v11 = v10;
  }

  else
  {
    v9 = *aEnUs;
    v11 = unk_1ECCA4290;
  }

  v12 = [v6 outputVoice];
  if (v12 && (v13 = sub_1DCB1A7C0(v12), v14))
  {
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = *aEnUs;
    v16 = unk_1ECCA4290;
  }

  sub_1DD0DB05C();
  v44 = sub_1DD0DB08C();
  v18 = v17;
  v19 = *(v1 + 8);
  v19(v5, v0);

  v42 = v15;
  sub_1DD0DB05C();
  v43 = sub_1DD0DB08C();
  v21 = v20;
  v19(v5, v0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);

  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45[0] = v26;
    *v25 = 136315394;
    v40 = v11;
    v41 = v9;
    if (v18)
    {
      v27 = v44;
    }

    else
    {
      v27 = 7104878;
    }

    if (v18)
    {
      v28 = v18;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1DCB10E9C(v27, v28, v45);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    if (v21)
    {
      v30 = v43;
    }

    else
    {
      v30 = 7104878;
    }

    if (v21)
    {
      v31 = v21;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_1DCB10E9C(v30, v31, v45);
    v11 = v40;

    *(v25 + 14) = v32;
    v9 = v41;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "SiriLocale: inputLanguageCode: %s, outputVoiceLanguageCode: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v26, -1, -1);
    MEMORY[0x1E12A8390](v25, -1, -1);
  }

  if (!v18)
  {
    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (!v21)
  {
LABEL_35:

    goto LABEL_41;
  }

  if (v44 == v43 && v18 == v21)
  {

    goto LABEL_38;
  }

  v34 = sub_1DD0DF0AC();

  if ((v34 & 1) == 0)
  {
LABEL_41:

    return sub_1DD0DB05C();
  }

LABEL_38:
  if (qword_1EDE4DCF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E32B0;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = v42;
  *(inited + 56) = v16;
  swift_beginAccess();
  v36 = qword_1EDE4DCF8;

  sub_1DCB1AA78(inited, v36);
  v38 = v37;
  swift_setDeallocating();
  sub_1DCB19D2C();
  swift_endAccess();
  if (v38)
  {
    goto LABEL_41;
  }

  return sub_1DD0DB05C();
}

uint64_t sub_1DCB1A7C0(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCB1A830(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DCB1A87C(a1, a2);
  sub_1DCB1A994(&unk_1F584D8D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DCB1A87C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DD0DE14C())
  {
    result = sub_1DCB1AF94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD0DEC0C();
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
          result = sub_1DD0DECBC();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DCB1A994(uint64_t result)
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

    result = sub_1DCE06A14(result, v8, 1, v3);
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

uint64_t sub_1DCB1AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_11(v4);
  return v3;
}

unint64_t sub_1DCB1AADC(uint64_t a1)
{
  OUTLINED_FUNCTION_16_9();
  sub_1DCB1AB40(v4, a1);
  v2 = sub_1DD0DF20C();

  return sub_1DCB1ABB8(a1, v2);
}

uint64_t sub_1DCB1AB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12A7840](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1DD0DDF2C();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1DCB1ABB8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1DD0DF0AC() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DCB1ACC0()
{
  OUTLINED_FUNCTION_46_8();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  if (v0)
  {
    OUTLINED_FUNCTION_19();
    sub_1DD0DAFEC();
    v16 = sub_1DD0DB04C();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v27 = *(v16 - 8);
      (*(v27 + 32))(v3, v15, v16);
      (*(v27 + 16))(v11, v3, v16);
      v28 = OUTLINED_FUNCTION_32_11();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
      sub_1DCB28064();
    }

    sub_1DCB0E9D8(v15, &qword_1ECCA2618, &unk_1DD0E5C50);
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v17 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v17, qword_1EDE57DA0);

  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_151();
    v21 = OUTLINED_FUNCTION_83();
    v33 = v21;
    *v20 = 136315138;
    if (v0)
    {
      v22 = v0;
    }

    else
    {
      v1 = 4999502;
      v22 = 0xE300000000000000;
    }

    v23 = sub_1DCB10E9C(v1, v22, &v33);

    *(v20 + 4) = v23;
    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v24, v25, "[ConversationSELFHelper] Invalid executionRequestId: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v26 = sub_1DD0DB04C();
  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v26);
}

void *sub_1DCB1AF94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74D0, &qword_1DD0E1BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1DCB1B004()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_48_0();
  v7 = sub_1DD0DB04C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  if (v1)
  {
    static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)();
    sub_1DCB12BC0(v16, 14);
    (*(v10 + 8))(v16, v7);
    v17 = *(v10 + 16);
    OUTLINED_FUNCTION_169();
    v18();
    v19 = OUTLINED_FUNCTION_32_11();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v7);
    sub_1DCB130C4();
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57DA0);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v24))
  {
    v25 = OUTLINED_FUNCTION_50_0();
    *v25 = 0;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "[ConversationSELFHelper] Nil executionRequestId provided: not setting a Conversation ID", v25, 2u);
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_49();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

uint64_t OUTLINED_FUNCTION_87_2()
{
  v1 = *(v0 + 144);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_87_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1DCB10E9C(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_87_4(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

void OUTLINED_FUNCTION_87_5()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return swift_getTupleTypeMetadata2();
}

void OUTLINED_FUNCTION_87_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_87_9()
{
  v2 = *(v0 + 112);

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_87_10(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = 0;
  a1[6] = v3;
  a1[7] = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_223(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v4 - 88);
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = v2;

  return sub_1DD0DEA7C();
}

unint64_t sub_1DCB1B410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD0DF0AC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_3_14()
{
  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[71];
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_1DCC23580();
}

uint64_t OUTLINED_FUNCTION_3_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DCB17CA0(a4, v4 - 104);
}

void *OUTLINED_FUNCTION_3_24(void *result)
{
  result[2] = v3;
  result[3] = v1;
  v6 = *(v5 - 144);
  v7 = *(v5 - 136);
  result[4] = *(v5 - 152);
  result[5] = v6;
  result[6] = v7;
  result[7] = v4;
  v8 = *(v5 - 112);
  result[8] = *(v5 - 120);
  result[9] = v2;
  return result;
}

id OUTLINED_FUNCTION_3_30(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_3_31(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v6 = (v1[6] + 16 * a1);
  *v6 = v4;
  v6[1] = v5;
  *(v1[7] + 8 * a1) = v3;
  ++v1[2];
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t a1)
{
  v7 = *(v5 - 104);
  *(a1 + 16) = *(v5 - 120);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(v5 - 88);

  return sub_1DCC85AA8(v4, a1 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[12];

  return type metadata accessor for ConfirmationPrompt();
}

__n128 OUTLINED_FUNCTION_3_38(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

void *OUTLINED_FUNCTION_3_39(void *result)
{
  result[2] = v6;
  result[3] = v7;
  result[4] = *(v8 - 104);
  result[5] = v5;
  result[6] = v1;
  result[7] = v3;
  result[8] = v4;
  result[9] = v2;
  result[10] = *(v8 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DCCC53BC(va);
}

id OUTLINED_FUNCTION_3_42()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_3_43()
{
  result = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12()
{
  v2 = *(v0 - 96);

  return sub_1DD0DEF7C();
}

uint64_t OUTLINED_FUNCTION_3_49(uint64_t a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  sub_1DCB20B30((v2 + 96), (v2 + 128));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  result = *(v0 + 208);
  v2 = *(v0 + 192);
  return result;
}

void OUTLINED_FUNCTION_3_57(uint64_t a1, void *a2)
{

  sub_1DCD47034(a2);
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_61()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_3_62()
{

  return sub_1DCB1C4D8();
}

uint64_t OUTLINED_FUNCTION_3_63()
{

  return sub_1DCD89260(v0, type metadata accessor for AceOutput);
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v6 = a1;

  return sub_1DCB17CA0(va, a1 + 16);
}

void OUTLINED_FUNCTION_3_66()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
}

double OUTLINED_FUNCTION_3_67@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  *(a1 + 34) = a4;
  *(a1 + 38) = a5;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_70@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  v8 = v4[2];
  v9 = *(v4 + 24);
  v10 = *(v4 + 25);
  LOBYTE(v4) = *(v4 + 26);
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 25) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = v9;
  *(v3 + 41) = v10;
  *(v3 + 42) = v4;
  v11 = *(v1 + 80);
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_3_72()
{

  return sub_1DD0DEF7C();
}

uint64_t OUTLINED_FUNCTION_3_73()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_75()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_79()
{

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_3_80()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_89()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_90(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_92()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_94()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_3_95()
{
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v3 = *v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_3_97(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  v5 = *(v3 + 32);
  return a1 + v4;
}

uint64_t OUTLINED_FUNCTION_3_98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_1DCB17CA0(v15, va);
}

void OUTLINED_FUNCTION_3_99()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
}

void OUTLINED_FUNCTION_3_100()
{
  v3 = *v1;
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v5 = v1[2];

  sub_1DCEDBDB0(v2, v0);
}

uint64_t OUTLINED_FUNCTION_3_102(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_3_103(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 - 40);
  return *(v2 - 48);
}

double OUTLINED_FUNCTION_3_104(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v1[8] = a1;
  return 0.0;
}

void *OUTLINED_FUNCTION_3_106(void *result)
{
  v4 = *(v3 - 304);
  result[2] = v1;
  result[3] = v4;
  result[4] = *(v3 - 296);
  *(v3 - 352) = v2;
  return result;
}

void OUTLINED_FUNCTION_3_108()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

uint64_t OUTLINED_FUNCTION_3_109(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[73];
  v4 = v2[72];
  v5 = v2[71];
  v6 = v2[70];
  return v2[68];
}

uint64_t OUTLINED_FUNCTION_3_110()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_111()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  result = v0[43];
  v6 = v0[37];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_112()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_115()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_116()
{
  v1 = *(v0 - 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_3_117()
{

  return sub_1DCF9E828(v1, v0);
}

void OUTLINED_FUNCTION_3_118()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_3_122()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_123(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *OUTLINED_FUNCTION_3_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[18] = v15;
  v13[19] = v16;
  v13[20] = v12;
  v13[21] = v14;
  v13[22] = a11;
  v13[23] = a10;
  v13[24] = v17;
  v13[25] = v18;
  v13[26] = v19;
  v13[27] = v11;

  return memcpy(v13 + 28, v13 + 18, 0x50uLL);
}

id sub_1DCB1C2BC(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1DCB1C328(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCB1C3C8()
{
  OUTLINED_FUNCTION_13_48();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_27_25(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_38_21(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_33_19();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_25_19();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_24_25();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Input.identifier.getter()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_33_1();

  return v4(v3);
}

unint64_t sub_1DCB1C4D8()
{
  result = qword_1EDE4D738;
  if (!qword_1EDE4D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D738);
  }

  return result;
}

void OUTLINED_FUNCTION_7_12()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_7_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_7_15()
{
  *(v1 - 104) = v0;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1)
{
  *(a1 + 8) = sub_1DCC5765C;
  v2 = *(v1 + 344);
  return v1 + 160;
}

uint64_t OUTLINED_FUNCTION_7_22()
{
}

uint64_t OUTLINED_FUNCTION_7_23()
{
}

double OUTLINED_FUNCTION_7_25@<D0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

void OUTLINED_FUNCTION_7_31()
{
  v2 = *(v0 + 64);

  sub_1DCE195E4();
}

uint64_t OUTLINED_FUNCTION_7_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_36()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void *OUTLINED_FUNCTION_7_37()
{

  return memcpy((v1 - 136), v0, 0x48uLL);
}

unint64_t OUTLINED_FUNCTION_7_42()
{

  return sub_1DCDACAD8();
}

__n128 OUTLINED_FUNCTION_7_45()
{
  *(v4 + 72) = v3;
  result = *(v4 + 168);
  *(v4 + 80) = result;
  *(v4 + 96) = v2;
  *(v4 + 104) = v1;
  *(v4 + 112) = v0;
  return result;
}

size_t OUTLINED_FUNCTION_7_46(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_1DCAFF9E8(&a10, a1 + 16);
}

void OUTLINED_FUNCTION_7_48()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_7_49()
{
  v1 = *(type metadata accessor for ActionParaphrase(0) + 20);
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  return v0 + v1;
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  return v2;
}

int8x16_t OUTLINED_FUNCTION_7_55(uint64_t a1)
{
  *(v1 + 72) = a1;
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v2;
  result = vextq_s8(v3, v3, 8uLL);
  *(a1 + 48) = result;
  return result;
}

void OUTLINED_FUNCTION_7_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_63()
{

  return sub_1DD0DB31C();
}

uint64_t OUTLINED_FUNCTION_7_64()
{
  result = v0;
  v3 = *(v1 - 296);
  v4 = *(v1 - 304);
  return result;
}

void OUTLINED_FUNCTION_7_65(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 0;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_7_67()
{

  return sub_1DCB0E9D8(v2 + 56, v1, v0);
}

uint64_t *OUTLINED_FUNCTION_7_68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[5] = a1;
  v4[6] = a3;
  v4[2] = v3;
  result = __swift_project_boxed_opaque_existential_1(v4 + 2, a2);
  v6 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_69(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_7_70()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_72()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_73()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_7_76@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 336);

  return sub_1DD0DEEBC();
}

void OUTLINED_FUNCTION_7_84()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] - 8);
}

uint64_t OUTLINED_FUNCTION_7_86(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 88);
  return result;
}

void OUTLINED_FUNCTION_7_89()
{

  sub_1DD0DCECC();
}

uint64_t OUTLINED_FUNCTION_7_93(uint64_t a1)
{
  *(v1 + 296) = a1;
  *v2 = *v1;
  return *(v1 + 88);
}

uint64_t OUTLINED_FUNCTION_7_94()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 152);

  return sub_1DCB21A14(v2, v3);
}

uint64_t OUTLINED_FUNCTION_47_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2 + *v2;
  return v3;
}

__n128 OUTLINED_FUNCTION_47_5()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  result = *(v0 + 96);
  *(v0 + 48) = result;
  return result;
}

void OUTLINED_FUNCTION_47_6()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_9()
{
}

uint64_t OUTLINED_FUNCTION_47_10(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(&v2[v3], 1, 1, a1);
  *v2 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_11()
{
  v4 = v1[1];
  *v0 = *v1;
  v0[1] = v4;
  v5 = v1[3];
  v0[2] = v1[2];
  v0[3] = v5;
  v7 = *(v2 + 24);

  return sub_1DD0DB66C();
}

uint64_t OUTLINED_FUNCTION_47_12(uint64_t a1, uint64_t a2)
{

  return sub_1DCB09910(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_47_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_47_14()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
}

void OUTLINED_FUNCTION_47_20()
{
  v3 = v1[44];
  v4 = v1[45] + v1[52];
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v0;
  *(v4 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = 3;

  sub_1DCF212A0(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_47_23()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[17];
}

id OUTLINED_FUNCTION_47_24()
{

  return sub_1DCB56C84();
}

uint64_t OUTLINED_FUNCTION_47_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 + *(v14 + 124)) = 2;
  *v13 = a12;
  v13[1] = v12;
  v16 = *(v14 + 20);
}

uint64_t OUTLINED_FUNCTION_47_26()
{
  *(v1 - 208) = v0;

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_47_28()
{

  return CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
}

uint64_t OUTLINED_FUNCTION_47_30()
{

  return type metadata accessor for IdentifiedUser();
}

uint64_t OUTLINED_FUNCTION_47_31(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 8) = 1024;
  *(result + 10) = v2;
  return result;
}

uint64_t static ConversationSELFHelper.convert(fromPlugin:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v37 = 47;
  v38 = 0xE100000000000000;
  sub_1DCB1C4D8();
  v2 = sub_1DD0DEA0C();
  v3 = sub_1DCB1D5C0(v2);
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (qword_1EDE4DFC8 != -1)
  {
    swift_once();
  }

  v8 = OUTLINED_FUNCTION_86();
  v9 = sub_1DCB1D5B8(v8);
  v10 = OUTLINED_FUNCTION_86();
  v11 = sub_1DCB1D5B8(v10);
  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  if (qword_1EDE48280 != -1)
  {
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_86();
  v11 = sub_1DCB1D5B8(v12);
  if ((v11 & 0x100000000) != 0)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57DA0);

    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_151();
      v28 = OUTLINED_FUNCTION_83();
      v33 = v28;
      *v27 = 136315138;
      v29 = OUTLINED_FUNCTION_138();
      *(v27 + 4) = sub_1DCB10E9C(v29, v30, v31);
      _os_log_impl(&dword_1DCAFC000, v25, v26, "[ConversationSELFHelper] No SELF enum value for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for CoreAnalyticsService();
    swift_initStaticObject();
    v33 = v6;
    v34 = v7;
    v35 = 0;
    v36 = 1;
    CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)(&v33, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitFlow/ConversationSELFHelper.swift", 94, 2, 744, 0xD000000000000014, 0x80000001DD117560);
    sub_1DCCD6E9C(v33, v34, v35, v36);
    return 0;
  }

  else
  {
LABEL_13:
    v13 = v11;

    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57DA0);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = sub_1DD0DE7BC();
      v20 = sub_1DCB10E9C(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      LODWORD(v37) = v9;
      BYTE4(v37) = BYTE4(v9) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41F0, &unk_1DD0EB060);
      v21 = sub_1DD0DE02C();
      v23 = sub_1DCB10E9C(v21, v22, &v33);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] Returning converted plugin name %s for %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_5_34();
    }
  }

  return v13;
}

uint64_t sub_1DCB1D5C0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  return OUTLINED_FUNCTION_33_1();
}

void AppInformationResolver.init(app:)(uint64_t a1)
{
  if (!a1)
  {
    sub_1DD0DD1FC();
    sub_1DD0DD19C();
  }

  sub_1DD0DCF8C();
}

uint64_t SiriKitEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  v4 = sub_1DD0DAFDC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1DCB1D6F0@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ActivityType.rawValue.getter()
{
  result = 0x7472617453;
  switch(*v0)
  {
    case 1:
      return 0x69746E6568747541;
    case 2:
      return 0x6974636572726F43;
    case 3:
      return 1953063255;
    case 4:
      return 0x656D75736552;
    case 5:
      return 0x64656C65636E6143;
    case 6:
      return 0x64656C696146;
    case 7:
      return 0x6574656C706D6F43;
    case 8:
      return 0x6B6361626C6C6146;
    case 9:
      return 0x466C616974726150;
    case 0xA:
      return 1701736270;
    case 0xB:
    case 0x11:
    case 0x4F:
    case 0x6E:
    case 0x77:
      OUTLINED_FUNCTION_0_11();
      return v10 + 1;
    case 0xC:
      return 0x6465766153;
    case 0xD:
      return 0xD000000000000011;
    case 0xE:
    case 0x17:
    case 0x29:
    case 0x2E:
    case 0x35:
    case 0x3D:
    case 0x45:
      OUTLINED_FUNCTION_0_11();
      return v16 | 2;
    case 0xF:
    case 0x28:
    case 0x41:
    case 0x63:
    case 0x71:
      OUTLINED_FUNCTION_0_11();
      return v21 + 3;
    case 0x10:
      return 0xD000000000000011;
    case 0x12:
      return 0x54726573556B7341;
    case 0x13:
      return 0x7341705565766947;
    case 0x14:
      return 0x6769626D61736944;
    case 0x15:
      return 0x6F4674706D6F7250;
    case 0x16:
      return 0x616D7269666E6F43;
    case 0x18:
      return 0x7461446863746546;
    case 0x19:
      return 0x4165766C6F736552;
    case 0x1A:
      return 0x4174736567677553;
    case 0x1B:
      return 0x6769626D61736944;
    case 0x1C:
      return 0x416D7269666E6F43;
    case 0x1D:
      v4 = 0x686372616553;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    case 0x1E:
      v8 = 0x686372616553;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
    case 0x1F:
      return 0x636972656E6547;
    case 0x20:
      return 0x6E5574706D6F7250;
    case 0x21:
    case 0x42:
    case 0x5C:
      OUTLINED_FUNCTION_0_11();
      return v7 - 1;
    case 0x22:
      return 0xD000000000000011;
    case 0x23:
      return 0x6553656369766544;
    case 0x24:
      return 0xD000000000000011;
    case 0x25:
    case 0x2F:
    case 0x38:
    case 0x4A:
    case 0x4C:
    case 0x58:
      OUTLINED_FUNCTION_0_11();
      return v18 + 7;
    case 0x26:
    case 0x3C:
    case 0x3E:
      OUTLINED_FUNCTION_0_11();
      return v14 | 6;
    case 0x27:
    case 0x4E:
    case 0x72:
      OUTLINED_FUNCTION_0_11();
      return v19 + 9;
    case 0x2A:
      OUTLINED_FUNCTION_0_11();
      return v12 + 15;
    case 0x2B:
    case 0x43:
    case 0x4B:
      OUTLINED_FUNCTION_0_11();
      return v5 | 8;
    case 0x2C:
    case 0x2D:
    case 0x3B:
    case 0x3F:
    case 0x4D:
    case 0x56:
      OUTLINED_FUNCTION_0_11();
      return v13 + 5;
    case 0x30:
      return 0x5F6D7269666E6F43;
    case 0x31:
      return 0xD000000000000011;
    case 0x32:
      return 0x5F676E6964616552;
    case 0x33:
    case 0x44:
    case 0x6F:
    case 0x76:
      return 0xD00000000000001BLL;
    case 0x34:
      OUTLINED_FUNCTION_0_11();
      return v15 + 18;
    case 0x36:
    case 0x37:
    case 0x52:
    case 0x64:
      OUTLINED_FUNCTION_0_11();
      return v20 | 4;
    case 0x39:
      OUTLINED_FUNCTION_0_11();
      return v11 | 0xE;
    case 0x3A:
      OUTLINED_FUNCTION_0_11();
      return v6 + 13;
    case 0x40:
      return 0xD000000000000011;
    case 0x46:
      return 0xD000000000000011;
    case 0x47:
      v4 = 0x676F6C616944;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    case 0x48:
      v8 = 0x676F6C616944;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6146000000000000;
    case 0x49:
    case 0x50:
      OUTLINED_FUNCTION_0_11();
      return v17 + 16;
    case 0x51:
      return 0xD000000000000011;
    case 0x53:
      return 0x65636F7270657250;
    case 0x54:
      return 0x7265646E6552;
    case 0x55:
      return 0x6C706552776F6C46;
    case 0x57:
      return 0x53616956646E6553;
    case 0x59:
      return 0x646E65536F747541;
    case 0x5A:
      return 0x6963655274696445;
    case 0x5B:
      return 0x6552634374696445;
    case 0x5D:
      return 0x6A62755374696445;
    case 0x5E:
      return 0x79646F4274696445;
    case 0x5F:
      v2 = 0x6D45646E6553;
      goto LABEL_83;
    case 0x60:
      return 0x6D456C65636E6143;
    case 0x61:
      return 0x6F546E7275746552;
    case 0x62:
      return 0xD000000000000011;
    case 0x65:
      return 1885956947;
    case 0x66:
      return 1886352467;
    case 0x67:
      return 0x796C706552;
    case 0x68:
      v3 = 0x526F69647541;
      goto LABEL_77;
    case 0x69:
      v2 = 0x674164616552;
LABEL_83:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
      break;
    case 0x6A:
      result = 0x654D796669646F4DLL;
      break;
    case 0x6B:
      result = 0x746957796C706552;
      break;
    case 0x6C:
      v3 = 0x636341434354;
LABEL_77:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7065000000000000;
      break;
    case 0x6D:
      result = 0x696C636544434354;
      break;
    case 0x70:
      result = 0x4F65747563657845;
      break;
    case 0x73:
      OUTLINED_FUNCTION_0_11();
      result = v9 + 17;
      break;
    case 0x74:
      result = 0x4974736575716552;
      break;
    case 0x75:
      result = 0x496D7269666E6F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriKitReliabilityCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x84)
  {
    if (a2 + 124 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 124) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 125;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7D;
  v5 = v6 - 125;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static SAAppInfoFactory.createAppInfo(app:)()
{
  v0 = sub_1DD0DD85C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v29 = v2;
  v30 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD0DD88C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_1EDE57DD0);
  (*(v11 + 16))(v16, v17, v8);
  sub_1DD0DD84C();
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_1DD0DD87C();
  v20 = sub_1DD0DE7FC();
  v21 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v19, v20, v21, "AppInfoCreate", "", v18, 2u);
  v22 = sub_1DD0DD1BC();
  static SAAppInfoFactory.createAppInfo(appIdentifier:)(v22, v23);
  v25 = v24;

  v26 = sub_1DD0DE7EC();
  v27 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v19, v26, v27, "AppInfoCreate", "", v18, 2u);

  OUTLINED_FUNCTION_80();
  (*(v29 + 8))(v7, v30);
  (*(v11 + 8))(v16, v8);
  return v25;
}

void static SAAppInfoFactory.createAppInfo(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD0DAECC();
  v4 = OUTLINED_FUNCTION_9(v3);
  v175 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v11 = &v167[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v167[-v13];
  if (a2)
  {
    if (qword_1EDE49280 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE49288;
    if ([qword_1EDE49288 tryLock])
    {
      if (qword_1EDE49298 != -1)
      {
        OUTLINED_FUNCTION_1_118();
      }

      swift_beginAccess();
      v16 = OUTLINED_FUNCTION_86();
      v19 = sub_1DCB643AC(v16, v17, v18);
      swift_endAccess();
      [v15 unlock];
      if (v19)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v20 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_7_69(v20, qword_1EDE57E00);
        v21 = sub_1DD0DD8EC();
        v22 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = OUTLINED_FUNCTION_151();
          v24 = OUTLINED_FUNCTION_83();
          *&v178 = v24;
          *v23 = 136315138;
          v25 = OUTLINED_FUNCTION_86();
          *(v23 + 4) = sub_1DCB10E9C(v25, v26, v27);
          OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v28, v29, "App AppInfo cached for '%s'");
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

LABEL_12:

        return;
      }
    }

    v173 = v14;
    sub_1DCB10E5C(0, &qword_1EDE461A0, 0x1E69635E0);

    v30 = OUTLINED_FUNCTION_86();
    v174 = sub_1DCF71804(v30, v31);
    if (!v174)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v44 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v44, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v21, v45))
      {
        v46 = OUTLINED_FUNCTION_151();
        v47 = OUTLINED_FUNCTION_83();
        *&v178 = v47;
        *v46 = 136315138;
        v48 = OUTLINED_FUNCTION_86();
        *(v46 + 4) = sub_1DCB10E9C(v48, v49, v50);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v51, v52, "App applicationProxy cannot be created for appIdentifier '%s'");
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_12;
    }

    v32 = [v174 bundleURL];
    if (v32)
    {
      v33 = v32;
      v34 = v173;
      sub_1DD0DAE9C();

      v35 = sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      (*(v175 + 16))(v11, v34, v3);
      v36 = sub_1DCF71954(v11);
      if (v36)
      {
        v37 = v36;
        v38 = sub_1DCF732B4(v36);
        v171 = v38;
        v172 = v37;
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v71 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_7_69(v71, qword_1EDE57E00);
          v35 = sub_1DD0DD8EC();
          v72 = sub_1DD0DE6CC();

          if (os_log_type_enabled(v35, v72))
          {
            v73 = OUTLINED_FUNCTION_151();
            v74 = OUTLINED_FUNCTION_83();
            *&v178 = v74;
            *v73 = 136315138;
            v75 = OUTLINED_FUNCTION_86();
            *(v73 + 4) = sub_1DCB10E9C(v75, v76, v77);
            _os_log_impl(&dword_1DCAFC000, v35, v72, "App applicationProxy Bundle missing localizedInfoDictionary for appIdentifier '%s'", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
            v37 = v172;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          v39 = MEMORY[0x1E69E7CC8];
        }

        v78 = objc_allocWithZone(MEMORY[0x1E69C7710]);
        OUTLINED_FUNCTION_39_1();

        v79 = [v35 init];
        v80 = *MEMORY[0x1E695E4F8];
        if (!*MEMORY[0x1E695E4F8])
        {
          __break(1u);
          goto LABEL_153;
        }

        v81 = v79;
        v82 = *MEMORY[0x1E695E4F8];
        v83 = sub_1DD0DDFBC();
        sub_1DCB90D40(v83, v84, v39);

        if (*(&v179 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_1DCB2C534(v176, v177, v81, &selRef_setAppName_);
            goto LABEL_62;
          }
        }

        else
        {
          sub_1DCC8BC14(&v178);
        }

        v85 = [v37 objectForInfoDictionaryKey_];
        if (v85)
        {
          v80 = v85;
          sub_1DD0DEA6C();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_16_54();
        }

        OUTLINED_FUNCTION_5_99();
        if (v88)
        {
          v89 = OUTLINED_FUNCTION_3_112();
          if (v89)
          {
            sub_1DD0DDF8C();
            OUTLINED_FUNCTION_39_1();

LABEL_61:
            OUTLINED_FUNCTION_19_45(v89, sel_setAppName_);

LABEL_62:
            v90 = [v37 localizations];
            v91 = sub_1DD0DE2EC();

            v92 = sub_1DCB35468(v37, &selRef_developmentLocalization);
            if (v93)
            {
              v94 = v92;
              v95 = v93;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
              v96 = swift_allocObject();
              *(v96 + 16) = xmmword_1DD0E07C0;
              *(v96 + 32) = v94;
              *(v96 + 40) = v95;
            }

            else
            {
              v96 = MEMORY[0x1E69E7CC0];
            }

            *&v178 = v91;
            sub_1DCBB9238(v96);
            v170 = v178;
            v97 = sub_1DCF719F0(v178, v174);
            sub_1DCF7323C(v97, v81);
            sub_1DCB90D40(0xD000000000000013, 0x80000001DD125D20, v39);
            if (*(&v179 + 1))
            {
              if (swift_dynamicCast())
              {
                v98 = sub_1DD0DDF8C();

                goto LABEL_70;
              }
            }

            else
            {
              sub_1DCC8BC14(&v178);
            }

            v98 = 0;
LABEL_70:
            OUTLINED_FUNCTION_10_74();

            sub_1DCB35468(v81, &selRef_displayAppName);
            if (v99)
            {
            }

            else
            {
              sub_1DCF73410(v174);
              if (v100)
              {
                v101 = sub_1DD0DDF8C();
              }

              else
              {
                v101 = 0;
              }

              OUTLINED_FUNCTION_10_74();
            }

            sub_1DCB35468(v81, &selRef_displayAppName);
            if (v102)
            {

              goto LABEL_87;
            }

            v103 = sub_1DD0DDF8C();
            v104 = [v172 objectForInfoDictionaryKey_];

            if (v104)
            {
              sub_1DD0DEA6C();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_16_54();
            }

            OUTLINED_FUNCTION_5_99();
            if (v105)
            {
              if (OUTLINED_FUNCTION_3_112())
              {
                v106 = sub_1DD0DDF8C();

LABEL_86:
                OUTLINED_FUNCTION_10_74();

LABEL_87:
                sub_1DCB90D40(0xD000000000000012, 0x80000001DD125D40, v39);

                if (*(&v179 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v107 = sub_1DD0DDF8C();

                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_1DCC8BC14(&v178);
                }

                v107 = 0;
LABEL_92:
                [v81 setSpokenName:v107];

                sub_1DCB35468(v81, &selRef_spokenName);
                if (v108)
                {

                  v109 = v172;
                  goto LABEL_103;
                }

                v110 = sub_1DD0DDF8C();
                v109 = v172;
                v111 = [v172 objectForInfoDictionaryKey_];

                if (v111)
                {
                  sub_1DD0DEA6C();
                  swift_unknownObjectRelease();
                }

                else
                {
                  OUTLINED_FUNCTION_16_54();
                }

                OUTLINED_FUNCTION_5_99();
                if (v112)
                {
                  if (OUTLINED_FUNCTION_3_112())
                  {
                    v113 = sub_1DD0DDF8C();

LABEL_102:
                    [v81 setSpokenName:v113];

LABEL_103:
                    v114 = sub_1DD0DDF8C();
                    v115 = [v109 objectForInfoDictionaryKey_];

                    if (v115)
                    {
                      sub_1DD0DEA6C();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v178 = 0u;
                      v179 = 0u;
                    }

                    v116 = sub_1DCF71C8C(&v178);
                    sub_1DCC8BC14(&v178);
                    sub_1DCF73320(v116, v81);
                    v117 = *MEMORY[0x1E695E198];
                    if (*MEMORY[0x1E695E198])
                    {

                      if ([v109 objectForInfoDictionaryKey_])
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v178 = 0u;
                        v179 = 0u;
                      }

                      v118 = sub_1DCF71E18(&v178);
                      sub_1DCC8BC14(&v178);
                      sub_1DCF733A4(v118, v81);
                      v119 = sub_1DD0DDF8C();
                      v120 = [v109 objectForInfoDictionaryKey_];

                      if (v120)
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v178 = 0u;
                        v179 = 0u;
                      }

                      v121 = sub_1DCF71F94(&v178, v174);
                      v122 = sub_1DCC8BC14(&v178);
                      OUTLINED_FUNCTION_19_45(v122, sel_setSiriSupport_);

                      v123 = sub_1DD0DDF8C();
                      v124 = [v109 objectForInfoDictionaryKey_];

                      if (v124)
                      {
                        sub_1DD0DEA6C();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_16_54();
                      }

                      OUTLINED_FUNCTION_5_99();
                      if (v125)
                      {
                        v126 = OUTLINED_FUNCTION_3_112();
                        if (v126)
                        {
                          sub_1DD0DDF8C();
                          OUTLINED_FUNCTION_39_1();

LABEL_121:
                          OUTLINED_FUNCTION_19_45(v126, sel_setCarPlayAlternativeDisplayName_);

                          sub_1DCF72570(v109);
                          v128 = v127;
                          OUTLINED_FUNCTION_19_45(v127, sel_setAppIdentifyingInfo_);

                          v129 = v174;
                          -[NSObject setBetaApp:](v81, sel_setBetaApp_, [v174 isBetaApp]);
                          [v81 setSupportsUniversalSearchSubscription:sub_1DCF728BC(v129) & 1];
                          if (sub_1DCF73480(v129, &selRef_plugInKitPlugins, &unk_1EDE461D0, 0x1E6963678))
                          {
                            sub_1DCB10E5C(0, &unk_1EDE461D0, 0x1E6963678);
                            sub_1DD0DE2DC();
                            OUTLINED_FUNCTION_39_1();
                          }

                          else
                          {
                            v129 = 0;
                          }

                          v130 = INSiriSupportedIntentsByExtensions();

                          if (v130)
                          {
                            v131 = sub_1DD0DE57C();

                            v132 = *(v131 + 16);

                            v133 = v132 == 0;
                          }

                          else
                          {
                            v133 = 0;
                          }

                          [v81 setHasSiriIntegration:v133];
                          if (qword_1EDE4F900 != -1)
                          {
                            OUTLINED_FUNCTION_0_0();
                          }

                          v134 = sub_1DD0DD8FC();
                          OUTLINED_FUNCTION_7_69(v134, qword_1EDE57E00);
                          v135 = v81;
                          v136 = sub_1DD0DD8EC();
                          v137 = sub_1DD0DE6DC();

                          if (os_log_type_enabled(v136, v137))
                          {
                            v138 = swift_slowAlloc();
                            v170 = swift_slowAlloc();
                            v176 = v170;
                            *v138 = 136317954;
                            v139 = OUTLINED_FUNCTION_86();
                            *(v138 + 4) = sub_1DCB10E9C(v139, v140, v141);
                            *(v138 + 12) = 2080;
                            v142 = sub_1DCB35468(v135, &selRef_appName);
                            v171 = v15;
                            if (!v143)
                            {
                              v142 = 7104878;
                            }

                            v169 = v136;
                            v168 = v137;
                            OUTLINED_FUNCTION_9_72(v142);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 14) = v109;
                            *(v138 + 22) = 2080;
                            v144 = sub_1DCB35468(v135, &selRef_displayAppName);
                            if (!v145)
                            {
                              v144 = 7104878;
                            }

                            OUTLINED_FUNCTION_9_72(v144);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 24) = v109;
                            *(v138 + 32) = 2080;
                            v146 = sub_1DCB35468(v135, &selRef_spokenName);
                            if (!v147)
                            {
                              v146 = 7104878;
                            }

                            OUTLINED_FUNCTION_9_72(v146);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 34) = v109;
                            *(v138 + 42) = 2080;
                            *&v178 = [v135 appIdentifyingInfo];
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB108, &qword_1DD1049D8);
                            v148 = OUTLINED_FUNCTION_13_69();
                            OUTLINED_FUNCTION_14_57(v148, v149);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 44) = v109;
                            *(v138 + 52) = 2080;
                            *&v178 = sub_1DCF73480(v135, &selRef_appNameSynonyms, &qword_1EDE461A8, 0x1E69C7AA0);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB110, &qword_1DD1049E0);
                            v150 = OUTLINED_FUNCTION_13_69();
                            OUTLINED_FUNCTION_14_57(v150, v151);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 54) = v109;
                            *(v138 + 62) = 2080;
                            *&v178 = sub_1DCF734F4(v135);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB118, &qword_1DD1049E8);
                            v152 = OUTLINED_FUNCTION_13_69();
                            OUTLINED_FUNCTION_14_57(v152, v153);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 64) = v109;
                            *(v138 + 72) = 2080;
                            *&v178 = [v135 siriSupport];
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB120, &unk_1DD1049F0);
                            v154 = OUTLINED_FUNCTION_13_69();
                            OUTLINED_FUNCTION_14_57(v154, v155);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 74) = v109;
                            *(v138 + 82) = 2080;
                            *&v178 = sub_1DCB35468(v135, &selRef_carPlayAlternativeDisplayName);
                            *(&v178 + 1) = v156;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
                            v157 = OUTLINED_FUNCTION_13_69();
                            OUTLINED_FUNCTION_14_57(v157, v158);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 84) = v109;
                            *(v138 + 92) = 2080;
                            if ([v135 betaApp])
                            {
                              v159 = 1702195828;
                            }

                            else
                            {
                              v159 = 0x65736C6166;
                            }

                            OUTLINED_FUNCTION_9_72(v159);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 94) = v109;
                            *(v138 + 102) = 2080;
                            if ([v135 supportsUniversalSearchSubscription])
                            {
                              v160 = 1702195828;
                            }

                            else
                            {
                              v160 = 0x65736C6166;
                            }

                            OUTLINED_FUNCTION_9_72(v160);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 104) = v109;
                            *(v138 + 112) = 2080;
                            if ([v135 hasSiriIntegration])
                            {
                              v161 = 1702195828;
                            }

                            else
                            {
                              v161 = 0x65736C6166;
                            }

                            v15 = v171;
                            OUTLINED_FUNCTION_9_72(v161);
                            OUTLINED_FUNCTION_55_4();
                            *(v138 + 114) = v109;
                            v109 = v172;
                            v162 = v169;
                            _os_log_impl(&dword_1DCAFC000, v169, v168, "App AppInfo appIdentifier: %s, appName: %s, displayAppName: %s, spokenName: %s, appIdentifyingInfo: %s, appNameSynonyms: %s, supportedSchemes: %s, siriSupport: %s, carPlayAlternativeDisplayName: %s, betaApp: %s, supportsUniversalSearchSubscription: %s, hasSiriIntegration: %s", v138, 0x7Au);
                            swift_arrayDestroy();
                            OUTLINED_FUNCTION_80();
                            OUTLINED_FUNCTION_80();
                          }

                          else
                          {
                          }

                          v163 = v173;
                          if ([v15 tryLock])
                          {
                            if (qword_1EDE49298 != -1)
                            {
                              OUTLINED_FUNCTION_1_118();
                            }

                            swift_beginAccess();
                            v164 = v135;
                            swift_isUniquelyReferenced_nonNull_native();
                            v176 = qword_1EDE492A0;
                            sub_1DCC60648();
                            qword_1EDE492A0 = v176;
                            swift_endAccess();
                            [v15 unlock];

                            v165 = OUTLINED_FUNCTION_17_45();
                            v166(v165);
                          }

                          else
                          {
                            (*(v175 + 8))(v163, v3);
                          }

                          return;
                        }
                      }

                      else
                      {
                        v126 = sub_1DCC8BC14(&v178);
                      }

                      v124 = 0;
                      goto LABEL_121;
                    }

LABEL_153:
                    __break(1u);
                    return;
                  }
                }

                else
                {
                  sub_1DCC8BC14(&v178);
                }

                v113 = 0;
                goto LABEL_102;
              }
            }

            else
            {
              sub_1DCC8BC14(&v178);
            }

            v106 = 0;
            goto LABEL_86;
          }
        }

        else
        {
          v89 = sub_1DCC8BC14(&v178);
        }

        v80 = 0;
        goto LABEL_61;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v63 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v63, qword_1EDE57E00);
      v64 = sub_1DD0DD8EC();
      v65 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = OUTLINED_FUNCTION_151();
        v67 = OUTLINED_FUNCTION_83();
        *&v178 = v67;
        *v66 = 136315138;
        v68 = OUTLINED_FUNCTION_86();
        *(v66 + 4) = sub_1DCB10E9C(v68, v69, v70);
        _os_log_impl(&dword_1DCAFC000, v64, v65, "App applicationProxy Bundle not found for appIdentifier '%s'", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      v86 = OUTLINED_FUNCTION_17_45();
      v87(v86);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v53 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_7_69(v53, qword_1EDE57E00);
      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_151();
        v57 = OUTLINED_FUNCTION_83();
        *&v178 = v57;
        *v56 = 136315138;
        v58 = OUTLINED_FUNCTION_86();
        *(v56 + 4) = sub_1DCB10E9C(v58, v59, v60);
        _os_log_impl(&dword_1DCAFC000, v54, v55, "App applicationProxy BundleURL is '<NIL>' for appIdentifier '%s': assuming a system framework and returning an empty SAAppInfo object.", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_86();
      v61 = sub_1DCF71874();
      if ([v15 tryLock])
      {
        if (qword_1EDE49298 != -1)
        {
          OUTLINED_FUNCTION_1_118();
        }

        swift_beginAccess();
        v62 = v61;
        swift_isUniquelyReferenced_nonNull_native();
        v176 = qword_1EDE492A0;
        sub_1DCC60648();
        qword_1EDE492A0 = v176;
        swift_endAccess();
        [v15 unlock];
      }
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v40 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v40, qword_1EDE57E00);
    v41 = sub_1DD0DD8EC();
    v42 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DCAFC000, v41, v42, "App identifier is '<NIL>'", v43, 2u);
      OUTLINED_FUNCTION_80();
    }
  }
}

uint64_t sub_1DCB1FC9C(SEL *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 appIdentifyingInfo];
  if (!v4)
  {
    return 0;
  }

  result = sub_1DCB643F4(v4, a1);
  if (!v6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1DCB1FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_1DCB21038(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  v4 = *(v2 + 632);
  v5 = *(v2 + 680);

  return AceServiceInvokerAsync.submitAndForget(_:executionSource:)(v5, v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_15_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_14()
{
  v2 = *(v0 + 56);
  result = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v0 + 88) = 28;
  *result = v4;
  return result;
}

void OUTLINED_FUNCTION_15_15()
{

  sub_1DCE18E10();
}

void OUTLINED_FUNCTION_15_18()
{
  v2 = *(v0 + 16) + 1;

  sub_1DCE19584();
}

BOOL OUTLINED_FUNCTION_15_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

__n128 OUTLINED_FUNCTION_15_21(uint64_t a1)
{
  v2 = *(v1 - 192);
  *(a1 + 32) = *(v1 - 208);
  *(a1 + 48) = v2;
  result = *(v1 - 176);
  *(a1 + 64) = result;
  *(a1 + 80) = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_23(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 152));
}

void OUTLINED_FUNCTION_15_25()
{

  sub_1DCCE6BC8(v0, 1);
}

uint64_t OUTLINED_FUNCTION_15_26()
{
  v2 = (*(v0 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_27()
{
}

uint64_t OUTLINED_FUNCTION_15_30()
{
  v2 = *(v0 - 384);
  v3 = *(v0 - 336);

  return sub_1DCB21A14(v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_39(unint64_t *a1)
{

  return sub_1DCD97628(a1, v1, v2);
}

void OUTLINED_FUNCTION_15_43()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 184);
  v3 = *(v0 + 115);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = **(v0 + 128);
}

uint64_t OUTLINED_FUNCTION_15_44(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

void OUTLINED_FUNCTION_15_48()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_15_49()
{
  v2 = *(v0 - 280);
  v3 = *(v0 - 168);

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_15_52()
{
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
  v0[55] = v0[54];
}

void OUTLINED_FUNCTION_15_54()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_15_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_56()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_15_59()
{

  return sub_1DD0DEC1C();
}

uint64_t OUTLINED_FUNCTION_15_61()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_63()
{
  v1 = *(v0 - 232);
  *(v0 - 200) = *(v0 - 240);
  *(v0 - 192) = v1;
  v2 = *(v0 - 216);
  *(v0 - 184) = *(v0 - 224);
  *(v0 - 176) = v2;
}

void OUTLINED_FUNCTION_15_64()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  sub_1DCCDE224();
}

uint64_t OUTLINED_FUNCTION_15_68()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_15_69()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[3] - 8);
}

void *OUTLINED_FUNCTION_15_71(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_73@<X0>(uint64_t a1@<X8>)
{

  return sub_1DCB10E9C(0xD000000000000019, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

uint64_t OUTLINED_FUNCTION_15_74(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_11_15()
{

  return memcpy((v0 + 96), (v1 + 8), 0x49uLL);
}

void OUTLINED_FUNCTION_11_16(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void *OUTLINED_FUNCTION_11_17()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  v2 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_11_29@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_34()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return sub_1DD0DD84C();
}

uint64_t OUTLINED_FUNCTION_11_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return __swift_getEnumTagSinglePayload(v14 + a14, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_37@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_38()
{
  v2 = *(v0 - 168);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = v2;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_11_41@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DCB17D04(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_45(uint64_t result)
{
  v3 = *v1;
  *(v2 + 104) = result;
  *(v2 + 112) = v3;
  *(v2 + 128) = *(v1 + 8);
  *(v2 + 129) = *(v1 + 9);
  *(v2 + 120) = v1[2];
  *(v2 + 130) = *(v1 + 24);
  *(v2 + 131) = *(v1 + 25);
  *(v2 + 132) = *(v1 + 26);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_1DCB16D50(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_50()
{

  return type metadata accessor for OutputGenerationManifest();
}

uint64_t OUTLINED_FUNCTION_11_52()
{

  return sub_1DD0DB3AC();
}

void OUTLINED_FUNCTION_11_54(int *a1@<X8>)
{
  *(v5 + 16) = v4;
  *(v5 + 24) = *(v5 + 88);
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  v6 = a1 + *a1;
}

void OUTLINED_FUNCTION_11_57()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
}

void OUTLINED_FUNCTION_11_58()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_11_61()
{
  result = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_64()
{

  return sub_1DD0DEDCC();
}

void OUTLINED_FUNCTION_11_65()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_11_67()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 96);

  sub_1DCB4A6EC(v2, v4, v5, v6);
}

void OUTLINED_FUNCTION_11_70()
{
  v7 = v1[13];
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
  v6 = v1[28];
}

uint64_t OUTLINED_FUNCTION_11_72()
{

  return sub_1DD0DDB6C();
}

uint64_t OUTLINED_FUNCTION_11_73()
{
  v1 = *(*(v0 - 392) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 400);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_77@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_78()
{

  return swift_arrayDestroy();
}

_OWORD *sub_1DCB20B30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_22_7()
{

  return memcpy((v0 + 176), (v0 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[13];
  v5 = v3[8];
  v6 = v3[9];
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_22_14()
{
}

uint64_t OUTLINED_FUNCTION_22_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);

  return sub_1DCB72FB0(0, 0xE000000000000000, v5);
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  v0 = *(type metadata accessor for ExecuteResponse(0) + 36);

  return type metadata accessor for PluginAction();
}

uint64_t OUTLINED_FUNCTION_22_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_25@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v1 + 16) = v3;
  *(v1 + 24) = result;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_22_30()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_22_31()
{

  return type metadata accessor for PluginAction();
}

uint64_t OUTLINED_FUNCTION_22_32()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_22_33(uint64_t a1)
{
  *(a1 + 8) = sub_1DCE9FEC0;
  result = *(v1 + 96);
  v3 = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return type metadata accessor for RefreshableDeviceState();
}

uint64_t OUTLINED_FUNCTION_22_34()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_22_35()
{
  *(v0 + *(v1 + 40)) = 0;
  *v0 = v2;
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  return result;
}

double OUTLINED_FUNCTION_22_37()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

void OUTLINED_FUNCTION_22_38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[15] = a1;
  v3[16] = a2;
  v3[12] = v2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_22_40()
{
  v3 = *(v1 - 120);

  return sub_1DCB2479C(v0, v3, type metadata accessor for Input);
}

uint64_t OUTLINED_FUNCTION_22_42()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_47()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[57];
  result = v0[48];
  v6 = v0[46];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_48()
{

  return sub_1DD0DB7DC();
}

uint64_t OUTLINED_FUNCTION_22_50()
{
  *v1 = v0;
  *(v1 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCB21038(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_9();
  sub_1DD0DDF2C();
  v4 = sub_1DD0DF20C();

  return sub_1DCB1B410(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1DCBB5D20();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, a1);
  v5 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_240()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_13()
{
  *(v0 + 40) = v2;
  v4 = *(v1 + 8);

  return sub_1DD0DF0BC();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_1DD0DE06C();
}

uint64_t OUTLINED_FUNCTION_8_15(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1DCB10E9C(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_8_17(float a1)
{
  *v1 = a1;

  return sub_1DD0DF2AC();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{

  return sub_1DCB16D50(a1, v1, v2);
}

double OUTLINED_FUNCTION_8_20()
{
  result = 0.0;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 240) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t result)
{
  *(result + 8) = sub_1DCC58600;
  v2 = *(v1 + 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 56) + 32 * a1;

  return sub_1DCB0DF6C(v5, va);
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_8_27()
{

  JUMPOUT(0x1E12A72C0);
}

void OUTLINED_FUNCTION_8_30()
{
  *(v0 + 96) = v1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_8_32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_8_33()
{
  *(v0 + 16) = v2 - 1;
  *(v1 + 112) = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return swift_once();
}

id OUTLINED_FUNCTION_8_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DCF77328(a1, a2, v4, a4, 0);
}

uint64_t OUTLINED_FUNCTION_8_43(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(v2 + 32);
  return result;
}

double OUTLINED_FUNCTION_8_44@<D0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

id OUTLINED_FUNCTION_8_46()
{

  return sub_1DCD10120();
}

void OUTLINED_FUNCTION_8_47(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[5] = a1;
  v4[6] = a3;
  v4[2] = v3;
  __swift_project_boxed_opaque_existential_1(v4 + 2, a2);

  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_8_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_8_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
}

uint64_t OUTLINED_FUNCTION_8_51()
{
  v2 = *(v0 - 152);

  return sub_1DD0DEEBC();
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_8_54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  result = *(v1 + 1);
  *(v2 + 168) = result;
  *(v2 + 115) = *(v1 + 24);
  *(v2 + 184) = v1[4];
  *(v2 + 116) = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_57()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_58()
{
  v0 = *(type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0) + 24);

  return sub_1DD0DB66C();
}

uint64_t OUTLINED_FUNCTION_8_59()
{

  return sub_1DD0DEF4C();
}

void OUTLINED_FUNCTION_8_61()
{
  *(v4 + v5[6]) = v0;
  *(v4 + v5[7]) = v3;
  v6 = (v4 + v5[8]);
  *v6 = v2;
  v6[1] = v1;
  v7 = v5[9];
}

char *OUTLINED_FUNCTION_8_62(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  v6 = *(v4 + 32);
  return a1 + v5;
}

__n128 OUTLINED_FUNCTION_8_66()
{
  v1 = *(v0 + 352);
  v3 = v1[1];
  result = v1[2];
  v4 = *(v1 + 6);
  v5 = *v1;
  return result;
}

void OUTLINED_FUNCTION_8_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, char a23)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x80;
  a20 = a1;
  a21 = 0u;
  a22 = 0u;
  a23 = 8;

  sub_1DCB3B54C(&a20);
}

void OUTLINED_FUNCTION_8_69()
{
  v2 = *(v0 - 320);
  *(v0 - 408) = *(v2 + 80);
  v3 = *(v2 + 88);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_8_71()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_8_73()
{

  return sub_1DCB0E9D8(v2 + 16, v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_74()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_8_76()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return *(v0 + 56);
}

void *OUTLINED_FUNCTION_8_79@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[5] = a1;
  v5[6] = a3;
  v5[2] = v4;
  return __swift_project_boxed_opaque_existential_1(v3, a2);
}

uint64_t type metadata accessor for NLContextUpdate()
{
  result = qword_1EDE4E978;
  if (!qword_1EDE4E978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB21A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_43_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_43_13()
{
  v2 = *(v0 + 1632);

  return sub_1DD0DD8FC();
}

void OUTLINED_FUNCTION_43_14(int *a1@<X8>)
{
  v2 = *a1;
  *(v1 + 4) = *(a1 + 4);
  *v1 = v2;
}

void OUTLINED_FUNCTION_43_15()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_43_18@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 16);
  result = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v2 + 16) = v4;
  *(v2 + 24) = result;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(v1 + 80);
  v8 = *(*(v1 + 88) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_21()
{
  v3 = *(v0 + *(v1 + 140) + 8);
}

void OUTLINED_FUNCTION_43_22()
{

  JUMPOUT(0x1E12A8390);
}

uint64_t OUTLINED_FUNCTION_43_23()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);

  return sub_1DD0DB31C();
}

uint64_t OUTLINED_FUNCTION_43_25()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_43_26()
{

  return sub_1DD0DF0AC();
}

void OUTLINED_FUNCTION_43_29(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = BYTE4(v1) & 1;
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_1DD0DF1DC();
}

uint64_t OUTLINED_FUNCTION_35_8()
{
  v2 = *(v0 + 72);

  return sub_1DCB0DF6C(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_35_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a12 = 3;
  a16 = 3;

  sub_1DCC8D2F0(&a12);
}

double OUTLINED_FUNCTION_35_13()
{

  *&result = IntentPromptAnswer.init(answeredValue:updatedIntent:)(v1 - 192, v0, v1 - 160).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_21()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[7];
  v6 = v2[8];
  return v2[6];
}

__n128 OUTLINED_FUNCTION_35_24()
{
  v1 = v0[6].n128_u8[0];
  v2 = v0[4].n128_u64[0];
  result = v0[3];
  v4 = v0[2].n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_25()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_35_26()
{
}

void *OUTLINED_FUNCTION_35_28(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v4;
  result[5] = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_35_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 96) = 0;
  *(v2 - 88) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_30()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_35_32()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_35_33()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_35_35(uint64_t a1)
{
  *(v1 + 136) = a1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitReliabilityCodes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 124 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 124) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x84)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x83)
  {
    v6 = ((a2 - 132) >> 8) + 1;
    *result = a2 + 124;
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
        JUMPOUT(0x1DCB2210CLL);
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
          *result = a2 + 124;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_54_11(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *v10 = a1;

  return sub_1DCB10E9C(a10, v11, va);
}

uint64_t OUTLINED_FUNCTION_54_13()
{
}

uint64_t OUTLINED_FUNCTION_54_14()
{
  *(v0 + 8) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_81()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
}

void OUTLINED_FUNCTION_54_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1DCF352BC(va);
}

_OWORD *OUTLINED_FUNCTION_54_20()
{

  return sub_1DCC60044();
}

void *OUTLINED_FUNCTION_54_22(void *result)
{
  v3 = *(*(v2 - 216) + v1);
  *(v2 - 216) = v3;
  result[2] = v3;
  v4 = *(*(v2 - 224) + v1);
  *(v2 - 224) = v4;
  result[3] = v4;
  v5 = *(*(v2 - 232) + v1);
  *(v2 - 232) = v5;
  result[4] = v5;
  v6 = *(*(v2 - 248) + v1);
  *(v2 - 248) = v6;
  result[5] = v6;
  v7 = *(*(v2 - 256) + v1);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[6];
}

id OUTLINED_FUNCTION_29_7()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{

  return sub_1DCB10E9C(a1, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_29_13(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE69D98](a1, a2, v3, v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_29_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11)
{
  v13 = *(v11 + 152);
  a9 = *(v11 + 208);
  a10 = 0;
  a11 = 3;

  sub_1DCB79974(&a9);
}

uint64_t OUTLINED_FUNCTION_29_19(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_29_21(uint64_t result)
{
  *(v3 + 88) = result;
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22()
{
  v2 = *(v0 + 144);

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_29_23()
{

  sub_1DCE18ECC();
}

void OUTLINED_FUNCTION_29_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_29_26()
{
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v2 = (v0 + v1[26]);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + v1[27]) = 0;
  v3 = v1[28];
}

uint64_t OUTLINED_FUNCTION_29_27()
{
  sub_1DCB370A4(v0);
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return sub_1DCAFF9E8((v0 + 56), v0 + 16);
}

uint64_t OUTLINED_FUNCTION_29_39@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return swift_task_alloc();
}

uint64_t sub_1DCB226E0(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_132_1()
{

  sub_1DCB38954();
}

void OUTLINED_FUNCTION_71_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2080;
}

id OUTLINED_FUNCTION_71_2()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = 0;
  *(v1 + 184) = 5;

  return v0;
}

void OUTLINED_FUNCTION_233(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_71_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[7] = result;
  v2[8] = a2;
  v2[4] = v3;
  return result;
}

void *OUTLINED_FUNCTION_71_5(uint64_t a1, uint64_t a2, size_t a3)
{

  return memcpy(v3, v4, a3);
}

void OUTLINED_FUNCTION_71_7()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

__n128 OUTLINED_FUNCTION_71_8(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v5[2].n128_u64[0] = a3;
  v5[2].n128_u64[1] = v4;
  v5[1].n128_u64[0] = a1;
  v5[1].n128_u64[1] = a2;
  result = *a4;
  v5[3] = *a4;
  v5[4].n128_u64[0] = a4[1].n128_u64[0];
  v5[6].n128_u8[0] = a4[1].n128_u8[8];
  return result;
}

char *OUTLINED_FUNCTION_71_12(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
  v6 = *(v4 + 32);
  return a1 + v5;
}

uint64_t OUTLINED_FUNCTION_71_13()
{
  result = v1;
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  return result;
}

id OUTLINED_FUNCTION_71_14(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0x80;

  return v2;
}

void OUTLINED_FUNCTION_71_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_71_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{

  sub_1DD046DA0(&a11, &a12);
}

uint64_t *SiriKitEvent.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  sub_1DCB22A50(v0[2], v0[3]);
  sub_1DCB22AA4(v0 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_payload);
  v5 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  v6 = sub_1DD0DAFDC();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + v5);
  return v0;
}

uint64_t SiriKitEvent.__deallocating_deinit()
{
  SiriKitEvent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB22A50(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DCB22AA4(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for SiriKitEventPayload(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v29 = *(a1 + 16);

      if (*(a1 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
      }

      v30 = *(a1 + 72);

      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v32 = sub_1DD0DD2FC();
      if (!__swift_getEnumTagSinglePayload(a1 + v31, 1, v32))
      {
        v33 = *(*(v32 - 8) + 8);

        v33(a1 + v31, v32);
      }

      return;
    case 1u:

      v34 = *(a1 + 16);
      goto LABEL_41;
    case 2u:
      v21 = *a1;

      goto LABEL_14;
    case 3u:
LABEL_14:

      v22 = *(a1 + 24);

      v23 = *(a1 + 40);
      goto LABEL_41;
    case 4u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v12 = *(a1 + 48);

      v13 = *(a1 + 64);
      goto LABEL_41;
    case 5u:

      v35 = *(a1 + 24);

      v36 = *(a1 + 40);

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      return;
    case 6u:
      v39 = *(a1 + 16);

      v40 = *(a1 + 24);

      v41 = *(a1 + 40);

      v42 = *(a1 + 56);

      v43 = *(a1 + 72);

      goto LABEL_30;
    case 7u:

      v24 = *(a1 + 16);

      v25 = *(a1 + 24);
      if (v25 >= 4)
      {
      }

      v26 = *(a1 + 48);

      v27 = *(a1 + 64);

      v28 = *(a1 + 80);
      goto LABEL_41;
    case 8u:
      v48 = *(a1 + 8);

      v49 = *(a1 + 32);

      if (*(a1 + 80))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
      }

      v50 = *(a1 + 96);
      if (v50 >= 4)
      {
      }

      v51 = *(a1 + 120);
      goto LABEL_41;
    case 9u:
      v20 = *(a1 + 8);

      if (*(a1 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
      }

LABEL_30:
      v44 = *(a1 + 88);
      goto LABEL_41;
    case 0xAu:
      v45 = *(a1 + 8);

      if (*(a1 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
      }

      v46 = *(a1 + 80);
      if (v46 >= 4)
      {
      }

      v47 = *(a1 + 104);
      goto LABEL_41;
    case 0xBu:
      v5 = *(a1 + 16);

      v6 = *(a1 + 24);

      v7 = *(a1 + 40);

      if (*(a1 + 72))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 48));
      }

      v8 = *(a1 + 80);

      if (*(a1 + 120))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + 96));
      }

      v9 = *(a1 + 144);

      v10 = *(a1 + 160);

      v11 = *(a1 + 176);
      goto LABEL_41;
    case 0xCu:
      v14 = *(a1 + 16);

      v15 = *(a1 + 24);

      v16 = *(a1 + 40);

      v17 = *(a1 + 64);

      v18 = *(a1 + 80);

      v19 = *(a1 + 96);
      goto LABEL_41;
    case 0xDu:
      v37 = *(a1 + 8);

      v38 = *(a1 + 24);
      goto LABEL_41;
    case 0xEu:
    case 0xFu:
    case 0x11u:
      v2 = *(a1 + 8);
LABEL_41:

      return;
    case 0x10u:
    case 0x12u:
      v3 = *(a1 + 8);

      v4 = *(a1 + 16);
      goto LABEL_45;
    case 0x13u:
      v4 = *a1;
LABEL_45:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCB22EC8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCB22FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *initializeWithCopy for SiriKitEventPayload(void *a1, void *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      v6 = a2[2];
      a1[1] = a2[1];
      a1[2] = v6;
      *(a1 + 24) = *(a2 + 24);
      v7 = a2[7];

      if (v7)
      {
        v8 = a2[8];
        a1[7] = v7;
        a1[8] = v8;
        (**(v7 - 8))((a1 + 4), (a2 + 4), v7);
      }

      else
      {
        v69 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v69;
        a1[8] = a2[8];
      }

      a1[9] = a2[9];

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v71 = sub_1DD0DD2FC();
      if (__swift_getEnumTagSinglePayload(a2 + v70, 1, v71))
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
        memcpy(a1 + v70, a2 + v70, *(*(v72 - 8) + 64));
      }

      else
      {
        (*(*(v71 - 8) + 16))(a1 + v70, a2 + v70, v71);
        __swift_storeEnumTagSinglePayload(a1 + v70, 0, 1, v71);
      }

      goto LABEL_31;
    case 1u:
      v44 = *a2;
      v45 = a2[1];
      *a1 = *a2;
      a1[1] = v45;
      a1[2] = a2[2];
      v46 = v44;

      goto LABEL_31;
    case 2u:
      v30 = a2[1];
      *a1 = *a2;
      a1[1] = v30;
      v31 = a2[3];
      a1[2] = a2[2];
      a1[3] = v31;
      v32 = a2[5];
      a1[4] = a2[4];
      a1[5] = v32;
      a1[6] = a2[6];
      *(a1 + 56) = *(a2 + 56);

      v33 = v30;

      goto LABEL_31;
    case 3u:
      *a1 = *a2;
      v35 = a2[1];
      v36 = a2[2];
      a1[1] = v35;
      a1[2] = v36;
      v37 = a2[4];
      a1[3] = a2[3];
      a1[4] = v37;
      v38 = a2[6];
      a1[5] = a2[5];
      a1[6] = v38;
      *(a1 + 56) = *(a2 + 56);
      v39 = v35;

      goto LABEL_31;
    case 4u:
      v16 = a2[3];
      a1[3] = v16;
      (**(v16 - 8))(a1, a2);
      v17 = a2[4];
      v18 = a2[5];
      a1[4] = v17;
      a1[5] = v18;
      v19 = a2[7];
      a1[6] = a2[6];
      a1[7] = v19;
      v20 = a2[9];
      a1[8] = a2[8];
      a1[9] = v20;
      *(a1 + 80) = *(a2 + 80);
      v21 = v17;

      goto LABEL_31;
    case 5u:
      *a1 = *a2;
      v49 = a2[1];
      v50 = a2[2];
      a1[1] = v49;
      a1[2] = v50;
      v51 = a2[4];
      a1[3] = a2[3];
      a1[4] = v51;
      a1[5] = a2[5];
      v52 = a2[9];
      v53 = v49;

      if (v52)
      {
        a1[9] = v52;
        (**(v52 - 8))((a1 + 6), (a2 + 6), v52);
      }

      else
      {
        v73 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v73;
      }

      a1[10] = a2[10];
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_31;
    case 6u:
      *a1 = *a2;
      v57 = a2[2];
      a1[1] = a2[1];
      a1[2] = v57;
      v58 = a2[4];
      a1[3] = a2[3];
      a1[4] = v58;
      v59 = a2[6];
      a1[5] = a2[5];
      a1[6] = v59;
      v60 = a2[8];
      a1[7] = a2[7];
      a1[8] = v60;
      v61 = a2[10];
      a1[9] = a2[9];
      a1[10] = v61;
      a1[11] = a2[11];
      *(a1 + 96) = *(a2 + 96);

      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      v40 = a2[1];
      v41 = a2[2];
      a1[1] = v40;
      a1[2] = v41;
      v42 = a2[3];
      v43 = v40;
      sub_1DD0DCF8C();
    case 8u:
      *a1 = *a2;
      v64 = a2[2];
      a1[1] = a2[1];
      a1[2] = v64;
      v65 = a2[4];
      a1[3] = a2[3];
      a1[4] = v65;
      a1[5] = a2[5];
      *(a1 + 48) = *(a2 + 48);
      v66 = a2[10];
      sub_1DD0DCF8C();
    case 9u:
      *a1 = *a2;
      v28 = a2[2];
      a1[1] = a2[1];
      a1[2] = v28;
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
      v29 = a2[8];
      sub_1DD0DCF8C();
    case 0xAu:
      *a1 = *a2;
      v62 = a2[2];
      a1[1] = a2[1];
      a1[2] = v62;
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
      v63 = a2[8];
      sub_1DD0DCF8C();
    case 0xBu:
      *a1 = *a2;
      v13 = a2[2];
      a1[1] = a2[1];
      a1[2] = v13;
      v14 = a2[4];
      a1[3] = a2[3];
      a1[4] = v14;
      a1[5] = a2[5];
      v15 = a2[9];

      sub_1DD0DCF8C();
    case 0xCu:
      *a1 = *a2;
      v22 = a2[2];
      a1[1] = a2[1];
      a1[2] = v22;
      v23 = a2[4];
      a1[3] = a2[3];
      a1[4] = v23;
      v24 = a2[6];
      a1[5] = a2[5];
      a1[6] = v24;
      v25 = a2[8];
      a1[7] = a2[7];
      a1[8] = v25;
      v26 = a2[10];
      a1[9] = a2[9];
      a1[10] = v26;
      v27 = a2[12];
      a1[11] = a2[11];
      a1[12] = v27;
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 26) = *(a2 + 26);

      sub_1DD0DCF8C();
    case 0xDu:
      v54 = a2[1];
      *a1 = *a2;
      a1[1] = v54;
      v55 = a2[2];
      v56 = a2[3];
      a1[2] = v55;
      a1[3] = v56;

      goto LABEL_31;
    case 0xEu:
    case 0x11u:
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;

      goto LABEL_31;
    case 0xFu:
      v34 = a2[1];
      *a1 = *a2;
      a1[1] = v34;
      a1[2] = a2[2];
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_31;
    case 0x10u:
    case 0x12u:
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[2];
      a1[2] = v10;

      v11 = v10;
      goto LABEL_31;
    case 0x13u:
      v67 = *a2;
      *a1 = *a2;
      v68 = v67;
LABEL_31:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v47 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v47);
      break;
  }

  return result;
}

double sub_1DCB23AC0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SiriKitEventPayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DCB22FCC(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
    v13 = *(v10 + 1);
    v14 = *(v10 + 3);
  }

  else
  {
    if (EnumCaseMultiPayload != 14)
    {
      sub_1DCB22AA4(v10);
      if (!a2 || (swift_beginAccess(), !a2[3]) && (swift_beginAccess(), !a2[5]))
      {
        result = 0.0;
        *a3 = xmmword_1DD0E3FF0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        return result;
      }

      goto LABEL_10;
    }

    v12 = *(v10 + 1);
  }

  if (a2)
  {
LABEL_10:
    swift_beginAccess();
    v15 = a2[2];
    v16 = a2[3];

    v17 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 0;
  v17 = 1;
LABEL_11:
  v18 = sub_1DCB29900();
  v21 = v20;
  if (v17)
  {
    v22 = 0;
    v23 = 0;
  }

  else
  {
    swift_beginAccess();
    v22 = a2[4];
    v24 = a2[5];
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18;
  *(a3 + 24) = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = v23;
  return result;
}

uint64_t sub_1DCB23C70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriKitEventPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  sub_1DCB23DD0();
  sub_1DCB24480(v12, v4 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_payload);
  v15 = OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp;
  v16 = sub_1DD0DAFDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v19 = *a3;
  v23 = a3[1];
  v24 = v19;
  v18(v4 + v15, a2, v16);
  v20 = v23;
  *(v4 + 16) = v24;
  *(v4 + 32) = v20;
  *(v4 + 48) = v13;
  *(v4 + 56) = v14;
  v21 = mach_absolute_time();
  (*(v17 + 8))(a2, v16);
  sub_1DCB22AA4(a1);
  *(v4 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_machAbsoluteTime) = v21;
  return v4;
}

void sub_1DCB23DD0()
{
  OUTLINED_FUNCTION_50();
  v5 = v0;
  v7 = v6;
  v8 = type metadata accessor for SiriKitEventPayload(0);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  sub_1DCB22FCC(v0, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *(v1 + 8);
      if (*v1)
      {
        v97 = *(v1 + 8);
        v14 = *v1;
        v15 = OUTLINED_FUNCTION_47_24();

        v13 = v97;
      }

      else
      {
        v15 = 0;
      }

      *v7 = v15;
      *(v7 + 8) = v13;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 2u:
      v55 = *v1;
      v54 = *(v1 + 8);
      v57 = OUTLINED_FUNCTION_57_18();
      if (v56)
      {
        v101 = v57;
        v58 = v56;
        v59 = OUTLINED_FUNCTION_47_24();

        v57 = v101;
      }

      else
      {
        v59 = 0;
      }

      LOBYTE(v104) = v1;
      *v7 = v55;
      *(v7 + 8) = v59;
      *(v7 + 16) = v57;
      *(v7 + 32) = v2;
      *(v7 + 40) = v3;
      *(v7 + 48) = v4;
      *(v7 + 56) = v1;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 3u:
      v48 = *v1;
      v49 = *(v1 + 8);
      v51 = OUTLINED_FUNCTION_57_18();
      if (v50)
      {
        v100 = v51;
        v52 = v50;
        v53 = OUTLINED_FUNCTION_47_24();

        v51 = v100;
      }

      else
      {
        v53 = 0;
      }

      LOBYTE(v104) = v1;
      *v7 = v48;
      *(v7 + 8) = v53;
      *(v7 + 16) = v51;
      *(v7 + 32) = v2;
      *(v7 + 40) = v3;
      *(v7 + 48) = v4;
      *(v7 + 56) = v1;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 4u:
      v40 = *(v1 + 32);
      v41 = *(v1 + 40);
      v42 = *(v1 + 48);
      v43 = *(v1 + 56);
      v44 = *(v1 + 64);
      v45 = *(v1 + 72);
      v46 = *(v1 + 80);
      sub_1DCB20B30(v1, &v104);
      sub_1DCB0DF6C(&v104, v7);
      if (v40)
      {
        v47 = v40;
        v40 = OUTLINED_FUNCTION_47_24();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      *(v7 + 32) = v40;
      *(v7 + 40) = v41;
      *(v7 + 48) = v42;
      *(v7 + 56) = v43;
      *(v7 + 64) = v44;
      *(v7 + 72) = v45;
      *(v7 + 80) = v46;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 5u:
      v23 = *v1;
      v24 = *(v1 + 8);
      v25 = *(v1 + 16);
      v26 = *(v1 + 32);
      v27 = *(v1 + 40);
      v28 = *(v1 + 80);
      v29 = *(v1 + 88);
      v30 = *(v1 + 64);
      v104 = *(v1 + 48);
      v105 = v30;
      *v7 = v23;
      if (v24)
      {
        v98 = v25;
        v31 = v24;
        v32 = OUTLINED_FUNCTION_47_24();

        v25 = v98;
      }

      else
      {
        v32 = 0;
      }

      *(v7 + 8) = v32;
      *(v7 + 16) = v25;
      *(v7 + 32) = v26;
      *(v7 + 40) = v27;
      v90 = v105;
      *(v7 + 48) = v104;
      *(v7 + 64) = v90;
      *(v7 + 80) = v28;
      *(v7 + 88) = v29;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 7u:
      v33 = *v1;
      v34 = *(v1 + 8);
      v35 = *(v1 + 16);
      v36 = *(v1 + 24);
      v37 = *(v1 + 32);
      v38 = *(v1 + 72);
      v99 = *(v1 + 80);
      v94 = *(v1 + 88);
      v91 = *(v1 + 56);
      v92 = *(v1 + 40);
      v39 = sub_1DCB56C84();

      *v7 = v33;
      *(v7 + 8) = v39;
      *(v7 + 16) = v35;
      *(v7 + 24) = v36;
      *(v7 + 32) = v37;
      *(v7 + 56) = v91;
      *(v7 + 40) = v92;
      *(v7 + 72) = v38;
      *(v7 + 80) = v99;
      *(v7 + 88) = v94;
      OUTLINED_FUNCTION_20();
      goto LABEL_42;
    case 8u:
      v60 = *v1;
      v62 = *(v1 + 8);
      v61 = *(v1 + 16);
      v93 = *(v1 + 24);
      v63 = *(v1 + 40);
      v64 = *(v1 + 48);
      v65 = *(v1 + 112);
      v66 = *(v1 + 120);
      v95 = *(v1 + 128);
      v102 = *(v1 + 104);
      v67 = *(v1 + 72);
      v104 = *(v1 + 56);
      v105 = v67;
      v68 = *(v1 + 88);
      v69 = *(v1 + 96);
      OUTLINED_FUNCTION_31_29(v60);
    case 9u:
      OUTLINED_FUNCTION_56_23();
      v71 = *(v1 + 80);
      v70 = *(v1 + 88);
      v72 = *(v1 + 96);
      v73 = *(v1 + 56);
      v104 = *(v1 + 40);
      v105 = v73;
      v74 = *(v1 + 72);
      OUTLINED_FUNCTION_31_29(v75);
    case 0xAu:
      OUTLINED_FUNCTION_56_23();
      v78 = *(v1 + 96);
      v79 = *(v1 + 104);
      v96 = *(v1 + 112);
      v103 = *(v1 + 88);
      v80 = *(v1 + 56);
      v104 = *(v1 + 40);
      v105 = v80;
      v81 = *(v1 + 72);
      v82 = *(v1 + 80);
      OUTLINED_FUNCTION_31_29(v83);
    case 0x10u:
      v17 = *v1;
      v16 = *(v1 + 8);
      v18 = *(v1 + 16);
      sub_1DCB3BE6C(v18);
      if (v76 >> 60 != 15)
      {
        v77 = objc_allocWithZone(MEMORY[0x1E69CEB08]);
        v21 = OUTLINED_FUNCTION_58_19();
        if (v21)
        {
          goto LABEL_6;
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v89 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v89, qword_1EDE57E00);
      v85 = sub_1DD0DD8EC();
      v86 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v85, v86))
      {
        goto LABEL_33;
      }

      v87 = swift_slowAlloc();
      *v87 = 0;
      v88 = "Failed to create copy of tierOneFlowEvent, using potentially thread unsafe original value";
      goto LABEL_32;
    case 0x12u:
      v17 = *v1;
      v16 = *(v1 + 8);
      v18 = *(v1 + 16);
      sub_1DCB3BE6C(v18);
      if (v19 >> 60 == 15 || (v20 = objc_allocWithZone(MEMORY[0x1E69CEB08]), (v21 = OUTLINED_FUNCTION_58_19()) == 0))
      {

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v84 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v84, qword_1EDE57E00);
        v85 = sub_1DD0DD8EC();
        v86 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          v88 = "Failed to create copy of domainPerfActivity event, using potentially thread unsafe original value";
LABEL_32:
          _os_log_impl(&dword_1DCAFC000, v85, v86, v88, v87, 2u);
          MEMORY[0x1E12A8390](v87, -1, -1);
        }

LABEL_33:

        sub_1DCB22FCC(v5, v7);
      }

      else
      {
LABEL_6:
        v22 = v21;

        *v7 = v17;
        *(v7 + 8) = v16;
        *(v7 + 16) = v22;
        OUTLINED_FUNCTION_20();
LABEL_42:
        swift_storeEnumTagMultiPayload();
      }

LABEL_43:
      OUTLINED_FUNCTION_49();
      return;
    default:
      sub_1DCB22FCC(v0, v7);
      sub_1DCB22AA4(v1);
      goto LABEL_43;
  }
}

uint64_t sub_1DCB24480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SiriKitEvent.overrides.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1DCB2502C(v2, v3);
}

uint64_t getEnumTagSinglePayload for SemanticValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t destroy for Parse.DirectInvocation(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

uint64_t sub_1DCB245D0()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

uint64_t sub_1DCB24628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB24688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB246E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCB24740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCB2479C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCB247FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v6 = v5(v4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DCB24858()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

void *initializeWithCopy for Parse(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      goto LABEL_27;
    case 1u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_27;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v7 = sub_1DD0DB1EC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_27;
    case 5u:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_27;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 16))(a1, a2, v19);
      v20 = type metadata accessor for USOParse();
      v21 = v20[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
        __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
      }

      v57 = v20[6];
      v58 = &a1[v57];
      v59 = &a2[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v20[7];
      v62 = &a1[v61];
      v63 = &a2[v61];
      v62[4] = v63[4];
      *v62 = *v63;

      goto LABEL_27;
    case 7u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for USOParse();
      v12 = v11[5];
      v13 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
        __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
      }

      v37 = v11[6];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v41 = v11[7];
      v42 = &a1[v41];
      v43 = &a2[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse();
      v45 = v44[5];
      v46 = &a1[v45];
      v47 = &a2[v45];
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 1) = v48;
      v49 = v44[6];
      v50 = &a1[v49];
      v51 = &a2[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v44[7];
      v54 = &a1[v53];
      v55 = &a2[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;

      goto LABEL_27;
    case 8u:
      v26 = sub_1DD0DD12C();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = type metadata accessor for NLRouterParse();
      v28 = v27[5];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v32 = v27[6];
      v33 = &a1[v32];
      v34 = &a2[v32];
      v35 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v33, v34, *(*(v36 - 8) + 64));
      }

      else
      {
        v64 = sub_1DD0DB4BC();
        (*(*(v64 - 8) + 16))(v33, v34, v64);
        v65 = v35[5];
        v66 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v34[v65], 1, v66))
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v33[v65], &v34[v65], *(*(v67 - 8) + 64));
        }

        else
        {
          (*(*(v66 - 8) + 16))(&v33[v65], &v34[v65], v66);
          __swift_storeEnumTagSinglePayload(&v33[v65], 0, 1, v66);
        }

        v68 = v35[6];
        v69 = &v33[v68];
        v70 = &v34[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v71;
        v72 = v35[7];
        v73 = &v33[v72];
        v74 = &v34[v72];
        v73[4] = v74[4];
        *v73 = *v74;

        __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
      }

      v75 = v27[7];
      v76 = *&a2[v75];
      *&a1[v75] = v76;
      v77 = v76;
      goto LABEL_27;
    case 9u:
      v8 = sub_1DD0DD08C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

uint64_t sub_1DCB2502C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DCB25080(uint64_t (*a1)(uint64_t))
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD127340);
  sub_1DD0DAFDC();
  sub_1DCB252A8(&qword_1EDE4F818, MEMORY[0x1E6969530]);
  v3 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v3);

  v4 = MEMORY[0x1E12A6780](0x616F6C796170202CLL, 0xEB00000000203A64);
  v5 = a1(v4);
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](0x69727265766F202CLL, 0xED0000203A736564);
  if (*(v1 + 24) == 1)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(v1 + 32);
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);

    v7 = sub_1DD0DE02C();
    v6 = v8;
  }

  MEMORY[0x1E12A6780](v7, v6);

  MEMORY[0x1E12A6780](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB25260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCB252A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCB252F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriKitEvent.__allocating_init(_:builder:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DD0DAFDC();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_48_0();
  v10 = type metadata accessor for SiriKitEventPayload(0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  sub_1DCB22FCC(a1, v16 - v15);
  sub_1DD0DAFBC();
  if (a2)
  {
    v17 = sub_1DCB4D7CC();
  }

  else
  {
    v17 = 0;
  }

  sub_1DCB23AC0(a1, v17, &v25);

  v18 = *(v2 + 48);
  v19 = *(v2 + 52);
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_138();
  sub_1DCB23C70(v21, v22, v23);
  OUTLINED_FUNCTION_48_1();

  sub_1DCB22AA4(a1);
  return v20;
}

uint64_t OUTLINED_FUNCTION_40_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_40_7()
{
  v2 = *(v0 + 64);

  return sub_1DD0DD8FC();
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_40_10(void *a1)
{

  return [a1 v1];
}

uint64_t OUTLINED_FUNCTION_40_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1DCB10E9C(v11, v12, va);
}

uint64_t OUTLINED_FUNCTION_40_16()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_40_17()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_40_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v13 + 32) = v12;
  *(v13 + 16) = a9;
  return a11;
}

uint64_t OUTLINED_FUNCTION_40_19@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(v5 + 16) = result;
  *(v5 + 24) = v6;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;
  v11 = *(v2 + 80);
  v10 = *(v2 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_22(uint64_t a1)
{
  v3 = *(v1 - 264);

  return sub_1DCB541A0(a1, v3);
}

void *OUTLINED_FUNCTION_40_23@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 16), (a1 + 16), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_40_25@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = result;
  *(v3 - 96) = a2;
  *(v3 - 128) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_28()
{

  return swift_arrayDestroy();
}

void *OUTLINED_FUNCTION_40_29(void *result)
{
  *(v4 + 48) = result;
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  result[5] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_31()
{
  result = v0[13];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_34()
{

  return sub_1DD0DDB6C();
}

void OUTLINED_FUNCTION_40_35(int *a1@<X8>)
{
  v2 = a1[1];
  v3 = a1 + *a1;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_40_36()
{
  v1 = v0[56];
  result = v0[51];
  v3 = v0[49];
  v4 = *(v0[50] + 8);
  return result;
}

void SiriKitEventPayload.debugDescription.getter()
{
  OUTLINED_FUNCTION_50();
  v1 = sub_1DD0DD2FC();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v343 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v343 - v20;
  v22 = type metadata accessor for SiriKitEventPayload(0);
  v23 = OUTLINED_FUNCTION_2(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v156 = *v0;
      v157 = *(v0 + 1);
      v158 = *(v0 + 2);
      OUTLINED_FUNCTION_9_75();
      *&v357 = v160 | 0xC;
      *(&v357 + 1) = v159;
      if (v156 && (v161 = sub_1DCB8DC6C(v156), v162))
      {
        v163 = v162;
      }

      else
      {

        v163 = 0xE500000000000000;
        v161 = 0x3E4C494E3CLL;
      }

      MEMORY[0x1E12A6780](v161, v163);

      OUTLINED_FUNCTION_3_118();
      if (v158)
      {
        v262 = v157;
      }

      else
      {
        v262 = 0x3E4C494E3CLL;
      }

      if (v158)
      {
        v263 = v158;
      }

      else
      {
        v263 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v262, v263);

      break;
    case 2u:
      v103 = *v0;
      v104 = *(v0 + 1);
      v105 = *(v0 + 2);
      v106 = *(v0 + 3);
      v108 = *(v0 + 4);
      v107 = *(v0 + 5);
      v351 = *(v0 + 6);
      v109 = v0[56];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD000000000000031, 0x80000001DD1271D0);
      v110 = *(v103 + 16);

      v352 = v110;
      v111 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v111);

      OUTLINED_FUNCTION_5_108();
      if (v104 && (sub_1DCB8DC6C(v104), v112))
      {
        v113 = v112;
        OUTLINED_FUNCTION_25_32();
      }

      else
      {

        v113 = 0xE500000000000000;
        OUTLINED_FUNCTION_25_32();
        v114 = v103;
      }

      MEMORY[0x1E12A6780](v114, v113);

      OUTLINED_FUNCTION_3_118();
      if (v106)
      {
        v252 = v105;
      }

      else
      {
        v252 = v103;
      }

      if (v106)
      {
        v253 = v106;
      }

      else
      {
        v253 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v252, v253);

      OUTLINED_FUNCTION_24_36();
      v254 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v254);

      OUTLINED_FUNCTION_44_30();
      v255 = v351;
      if (v109)
      {
        v255 = -1;
      }

      v352 = v255;
      v256 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v256);

      OUTLINED_FUNCTION_35();

      break;
    case 3u:
      OUTLINED_FUNCTION_49_23();
      v122 = *v0;
      v123 = *(v0 + 1);
      v124 = *(v0 + 2);
      v126 = *(v0 + 3);
      v125 = *(v0 + 4);
      v127 = *(v0 + 5);
      v351 = *(v0 + 6);
      v128 = v0[56];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](v10 + 21, 0x80000001DD127180);
      LOBYTE(v352) = v122;
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_5_108();
      if (v123 && (sub_1DCB8DC6C(v123), v129))
      {
        v130 = v129;
        OUTLINED_FUNCTION_13_71();
      }

      else
      {

        v130 = 0xE500000000000000;
        OUTLINED_FUNCTION_13_71();
        v131 = v122;
      }

      MEMORY[0x1E12A6780](v131, v130);

      OUTLINED_FUNCTION_3_118();
      if (v126)
      {
        v257 = v124;
      }

      else
      {
        v257 = v122;
      }

      if (v126)
      {
        v258 = v126;
      }

      else
      {
        v258 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v257, v258);

      OUTLINED_FUNCTION_24_36();
      v259 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v259);

      OUTLINED_FUNCTION_44_30();
      v260 = v351;
      if (v128)
      {
        v260 = -1;
      }

      v352 = v260;
      v261 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v261);

      OUTLINED_FUNCTION_35();

      break;
    case 4u:
      v55 = *(v0 + 4);
      v56 = *(v0 + 5);
      v58 = *(v0 + 6);
      v57 = *(v0 + 7);
      v59 = *(v0 + 8);
      v60 = *(v0 + 9);
      v61 = v0[80];
      sub_1DCB20B30(v0, &v357);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000002BLL, 0x80000001DD127290);
      __swift_project_boxed_opaque_existential_1(&v357, *(&v358 + 1));
      swift_getDynamicType();
      v62 = sub_1DD0DF2AC();
      MEMORY[0x1E12A6780](v62);

      OUTLINED_FUNCTION_5_108();
      if (v55 && (sub_1DCB8DC6C(v55), v63))
      {
        v64 = v63;
        OUTLINED_FUNCTION_13_71();
      }

      else
      {

        v64 = 0xE500000000000000;
        OUTLINED_FUNCTION_13_71();
        v65 = 0xD000000000000013;
      }

      MEMORY[0x1E12A6780](v65, v64);

      OUTLINED_FUNCTION_3_118();
      if (v58)
      {
        v247 = v56;
      }

      else
      {
        v247 = 0xD000000000000013;
      }

      if (v58)
      {
        v248 = v58;
      }

      else
      {
        v248 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v247, v248);

      OUTLINED_FUNCTION_24_36();
      v249 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v249);

      OUTLINED_FUNCTION_44_30();
      if (v61)
      {
        v250 = -1;
      }

      else
      {
        v250 = v60;
      }

      v356 = v250;
      v251 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v251);

      OUTLINED_FUNCTION_35();

      __swift_destroy_boxed_opaque_existential_1Tm(&v357);
      break;
    case 5u:
      OUTLINED_FUNCTION_49_23();
      v166 = *v0;
      v167 = *(v0 + 1);
      v168 = *(v0 + 2);
      v170 = *(v0 + 3);
      v169 = *(v0 + 4);
      v171 = *(v0 + 5);
      v351 = *(v0 + 10);
      v352 = 0;
      v172 = v0[88];
      v173 = *(v0 + 4);
      v357 = *(v0 + 3);
      v358 = v173;
      v353 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](v10 + 19, 0x80000001DD127240);
      LOBYTE(v356) = v166;
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_5_108();
      if (v167 && (v174 = sub_1DCB8DC6C(v167), v175))
      {
        v176 = v175;
      }

      else
      {

        v176 = 0xE500000000000000;
        v174 = 0x3E4C494E3CLL;
      }

      MEMORY[0x1E12A6780](v174, v176);

      OUTLINED_FUNCTION_3_118();
      if (v170)
      {
        v264 = v168;
      }

      else
      {
        v264 = 0x3E4C494E3CLL;
      }

      if (v170)
      {
        v265 = v170;
      }

      else
      {
        v265 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v264, v265);

      MEMORY[0x1E12A6780](v10 - 2, 0x80000001DD126F70);
      v266 = OUTLINED_FUNCTION_19();
      MEMORY[0x1E12A6780](v266);

      MEMORY[0x1E12A6780](v10 - 2, 0x80000001DD127270);
      if (*(&v358 + 1))
      {
        v267 = 0x65746E6573657250;
      }

      else
      {
        v267 = 0x3E4C494E3CLL;
      }

      if (*(&v358 + 1))
      {
        v268 = 0xE900000000000064;
      }

      else
      {
        v268 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v267, v268);

      MEMORY[0x1E12A6780](v10 + 3, 0x80000001DD1271B0);
      v269 = v351;
      if (v172)
      {
        v269 = -1;
      }

      v356 = v269;
      v270 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v270);

      OUTLINED_FUNCTION_35();

      v271 = &dword_1ECCA3CE0;
      v272 = &unk_1DD0E4F80;
      goto LABEL_275;
    case 6u:
      v180 = *v0;
      v182 = *(v0 + 1);
      v181 = *(v0 + 2);
      v183 = *(v0 + 3);
      v185 = *(v0 + 5);
      v184 = *(v0 + 6);
      v346 = *(v0 + 4);
      v347 = v184;
      v187 = *(v0 + 7);
      v186 = *(v0 + 8);
      v188 = *(v0 + 9);
      v350 = *(v0 + 10);
      v189 = *(v0 + 11);
      v348 = v186;
      v349 = v189;
      LODWORD(v351) = v0[96];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD000000000000025, 0x80000001DD127010);
      LOBYTE(v352) = v180;
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_30_40();
      MEMORY[0x1E12A6780](v182, v181);

      OUTLINED_FUNCTION_4_110();
      if (v183)
      {
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_39_31();
      MEMORY[0x1E12A6780](v180, 0xE500000000000000);

      OUTLINED_FUNCTION_7_73();
      if (v185)
      {
        v273 = v346;
      }

      else
      {
        v273 = v180;
      }

      if (v185)
      {
        v274 = v185;
      }

      else
      {
        v274 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v273, v274);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v187)
      {
        v275 = v347;
      }

      else
      {
        v275 = v180;
      }

      if (v187)
      {
        v276 = v187;
      }

      else
      {
        v276 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v275, v276);

      OUTLINED_FUNCTION_0_120();
      if (v188)
      {
        v277 = v348;
      }

      else
      {
        v277 = v180;
      }

      if (v188)
      {
        v278 = v188;
      }

      else
      {
        v278 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v277, v278);

      OUTLINED_FUNCTION_34_38();
      if (v349)
      {
        v279 = v350;
      }

      else
      {
        v279 = v180;
      }

      if (v349)
      {
        v280 = v349;
      }

      else
      {
        v280 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v279, v280);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v352) = v351;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v281 = OUTLINED_FUNCTION_46_27();
      MEMORY[0x1E12A6780](v281);

      OUTLINED_FUNCTION_35();
      goto LABEL_280;
    case 7u:
      v132 = *v0;
      v133 = 0x3E4C494E3CLL;
      v135 = *(v0 + 1);
      v134 = *(v0 + 2);
      v136 = *(v0 + 3);
      LODWORD(v350) = *(v0 + 16);
      v137 = *(v0 + 6);
      v138 = *(v0 + 7);
      v139 = *(v0 + 8);
      v344 = *(v0 + 5);
      v345 = v138;
      v140 = *(v0 + 10);
      v347 = *(v0 + 9);
      v348 = v136;
      v346 = v140;
      LODWORD(v349) = v0[88];
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD127080);
      LOBYTE(v352) = v132;
      OUTLINED_FUNCTION_60_18();
      OUTLINED_FUNCTION_5_108();
      v351 = v135;
      v141 = sub_1DCFA4974(v135);
      if (v142)
      {
        v143 = v142;
      }

      else
      {
        v141 = 0x3E4C494E3CLL;
        v143 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v141, v143);

      OUTLINED_FUNCTION_4_110();
      if (v134)
      {
        sub_1DD0DCF8C();
      }

      MEMORY[0x1E12A6780](0x3E4C494E3CLL, 0xE500000000000000);

      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v144 + 2, v145 | 0x8000000000000000);
      v146 = 0xE500000000000000;
      v147 = v348;
      if (v348 != 3)
      {
        v352 = v348;
        LOWORD(v353) = v350;
        sub_1DCFA49D4(v348);
        v133 = sub_1DD0DE02C();
        v146 = v148;
      }

      MEMORY[0x1E12A6780](v133, v146);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v137)
      {
        v149 = v344;
      }

      else
      {
        v149 = 0x3E4C494E3CLL;
      }

      if (v137)
      {
        v150 = v137;
      }

      else
      {
        v150 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v149, v150);

      OUTLINED_FUNCTION_0_120();
      if (v139)
      {
        v151 = v345;
      }

      else
      {
        v151 = 0x3E4C494E3CLL;
      }

      if (v139)
      {
        v152 = v139;
      }

      else
      {
        v152 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v151, v152);

      MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD127040);
      if (v346)
      {
        v153 = v347;
      }

      else
      {
        v153 = 0x3E4C494E3CLL;
      }

      if (v346)
      {
        v154 = v346;
      }

      else
      {
        v154 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v153, v154);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v352) = v349;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v155 = OUTLINED_FUNCTION_46_27();
      MEMORY[0x1E12A6780](v155);

      OUTLINED_FUNCTION_35();
      sub_1DCCD86D4(v147);

      goto LABEL_280;
    case 8u:
      v214 = *v0;
      OUTLINED_FUNCTION_13_71();
      v216 = *(v0 + 1);
      v215 = *(v0 + 2);
      v218 = *(v0 + 3);
      v217 = *(v0 + 4);
      v343 = *(v0 + 5);
      v344 = v1;
      v219 = v0[48];
      LODWORD(v350) = *(v0 + 52);
      v220 = *(v0 + 14);
      v345 = *(v0 + 15);
      v346 = v220;
      LODWORD(v348) = v0[128];
      v221 = *(v0 + 72);
      v357 = *(v0 + 56);
      v358 = v221;
      v222 = *(v0 + 11);
      v347 = *(v0 + 12);
      v359 = v222;
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v352) = v214;
      OUTLINED_FUNCTION_62_14();
      OUTLINED_FUNCTION_4_110();
      v349 = v216;
      v223 = v1;
      v224 = sub_1DD0DD1BC();
      if (v225)
      {
        v226 = v225;
      }

      else
      {
        v224 = v1;
        v226 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v224, v226);

      OUTLINED_FUNCTION_5_108();
      v351 = v215;
      v227 = sub_1DCFA4974(v215);
      if (v228)
      {
        v229 = v228;
      }

      else
      {
        v227 = v1;
        v229 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v227, v229);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      MEMORY[0x1E12A6780](v218, v217);

      OUTLINED_FUNCTION_5_108();
      v230 = v343;
      if (v219)
      {
        v230 = -1;
      }

      v352 = v230;
      v231 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v231);

      v232 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v232, v233, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v354)
      {
        v234 = v355;
        OUTLINED_FUNCTION_61_24();
        v235 = OUTLINED_FUNCTION_22_41(v234);
        v236(v235, v234);
        OUTLINED_FUNCTION_55_16();
        __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      }

      else
      {
        sub_1DCB0E9D8(&v352, &unk_1ECCA3280, &unk_1DD0E23D0);
      }

      v237 = v344;
      OUTLINED_FUNCTION_45_24();

      OUTLINED_FUNCTION_34_38();
      v334 = 0xE500000000000000;
      v335 = v347;
      if (v347 != 3)
      {
        v352 = v347;
        LOWORD(v353) = v350;
        sub_1DCFA49D4(v347);
        v237 = sub_1DD0DE02C();
        v334 = v336;
      }

      MEMORY[0x1E12A6780](v237, v334);

      OUTLINED_FUNCTION_0_120();
      if (v345)
      {
        v337 = v346;
      }

      else
      {
        v337 = v223;
      }

      if (v345)
      {
        v338 = v345;
      }

      else
      {
        v338 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v337, v338);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v352) = v348;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v339 = OUTLINED_FUNCTION_46_27();
      MEMORY[0x1E12A6780](v339);

      OUTLINED_FUNCTION_35();

      v333 = v335;
      goto LABEL_273;
    case 9u:
      v80 = *v0;
      OUTLINED_FUNCTION_39_31();
      v82 = *(v0 + 1);
      v81 = *(v0 + 2);
      v83 = *(v0 + 3);
      v84 = v0[32];
      LODWORD(v351) = v0[96];
      v85 = *(v0 + 56);
      v357 = *(v0 + 40);
      v358 = v85;
      v86 = *(v0 + 11);
      v350 = *(v0 + 10);
      v359 = *(v0 + 9);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v352) = v80;
      OUTLINED_FUNCTION_62_14();
      OUTLINED_FUNCTION_4_110();
      v87 = sub_1DD0DD1BC();
      if (v88)
      {
        v89 = v88;
      }

      else
      {
        v87 = v18;
        v89 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v87, v89);

      OUTLINED_FUNCTION_5_108();
      v90 = sub_1DCFA4974(v81);
      if (v91)
      {
        v92 = v91;
      }

      else
      {
        v90 = v18;
        v92 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v90, v92);

      OUTLINED_FUNCTION_5_108();
      if (v84)
      {
        v93 = -1;
      }

      else
      {
        v93 = v83;
      }

      v352 = v93;
      v94 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v94);

      v95 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v95, v96, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v354)
      {
        v97 = v355;
        OUTLINED_FUNCTION_61_24();
        v98 = OUTLINED_FUNCTION_22_41(v97);
        v100 = v99(v98, v97);
        v102 = v101;
        __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      }

      else
      {
        sub_1DCB0E9D8(&v352, &unk_1ECCA3280, &unk_1DD0E23D0);
        v102 = 0xE500000000000000;
        v100 = v18;
      }

      MEMORY[0x1E12A6780](v100, v102);

      OUTLINED_FUNCTION_0_120();
      if (v86)
      {
        v321 = v350;
      }

      else
      {
        v321 = v18;
      }

      if (v86)
      {
        v322 = v86;
      }

      else
      {
        v322 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v321, v322);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v352) = v351;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v323 = OUTLINED_FUNCTION_46_27();
      MEMORY[0x1E12A6780](v323);

      OUTLINED_FUNCTION_35();

      goto LABEL_274;
    case 0xAu:
      v192 = *v0;
      v194 = *(v0 + 1);
      v193 = *(v0 + 2);
      v195 = *(v0 + 3);
      v196 = v0[32];
      LODWORD(v351) = *(v0 + 44);
      v197 = *(v0 + 13);
      v347 = *(v0 + 12);
      v345 = 0x3E4C494E3CLL;
      v346 = v197;
      LODWORD(v348) = v0[112];
      v198 = *(v0 + 56);
      v357 = *(v0 + 40);
      v358 = v198;
      v199 = *(v0 + 10);
      v359 = *(v0 + 9);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v352) = v192;
      OUTLINED_FUNCTION_62_14();
      OUTLINED_FUNCTION_4_110();
      v349 = v194;
      v200 = sub_1DD0DD1BC();
      if (v201)
      {
        v202 = v201;
      }

      else
      {
        v200 = 0x3E4C494E3CLL;
        v202 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v200, v202);

      OUTLINED_FUNCTION_5_108();
      v350 = v193;
      v203 = sub_1DCFA4974(v193);
      if (v204)
      {
        v205 = v204;
      }

      else
      {
        v203 = 0x3E4C494E3CLL;
        v205 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v203, v205);

      OUTLINED_FUNCTION_5_108();
      if (v196)
      {
        v206 = -1;
      }

      else
      {
        v206 = v195;
      }

      v352 = v206;
      v207 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v207);

      v208 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v208, v209, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v354)
      {
        v210 = v355;
        OUTLINED_FUNCTION_61_24();
        v211 = OUTLINED_FUNCTION_22_41(v210);
        v212(v211, v210);
        OUTLINED_FUNCTION_55_16();
        __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      }

      else
      {
        sub_1DCB0E9D8(&v352, &unk_1ECCA3280, &unk_1DD0E23D0);
      }

      v213 = v345;
      OUTLINED_FUNCTION_45_24();

      OUTLINED_FUNCTION_34_38();
      v328 = 0xE500000000000000;
      if (v199 != 3)
      {
        v352 = v199;
        LOWORD(v353) = v351;
        sub_1DCFA49D4(v199);
        v213 = sub_1DD0DE02C();
        v328 = v329;
      }

      MEMORY[0x1E12A6780](v213, v328);

      MEMORY[0x1E12A6780](0xD00000000000002BLL, 0x80000001DD127110);
      if (v346)
      {
        v330 = v347;
      }

      else
      {
        v330 = 0x3E4C494E3CLL;
      }

      if (v346)
      {
        v331 = v346;
      }

      else
      {
        v331 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v330, v331);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v352) = v348;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v332 = OUTLINED_FUNCTION_46_27();
      MEMORY[0x1E12A6780](v332);

      OUTLINED_FUNCTION_35();

      v333 = v199;
LABEL_273:
      sub_1DCCD86D4(v333);
      goto LABEL_274;
    case 0xBu:
      OUTLINED_FUNCTION_49_23();
      v43 = *v0;
      v45 = *(v0 + 1);
      v44 = *(v0 + 2);
      v46 = *(v0 + 3);
      v47 = *(v0 + 4);
      v48 = *(v0 + 5);
      v49 = *(v0 + 10);

      v50 = *(v0 + 17);
      v345 = *(v0 + 18);
      v346 = v50;
      v51 = *(v0 + 19);
      v347 = *(v0 + 20);
      v348 = v51;
      v52 = *(v0 + 21);
      v349 = *(v0 + 22);
      v350 = v52;
      LODWORD(v351) = v0[184];
      v53 = *(v0 + 4);
      v357 = *(v0 + 3);
      v358 = v53;
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](v10 + 14, 0x80000001DD1270A0);
      LOBYTE(v356) = v43;
      sub_1DD0DEDBC();
      OUTLINED_FUNCTION_30_40();
      v54 = OUTLINED_FUNCTION_138();
      MEMORY[0x1E12A6780](v54);

      OUTLINED_FUNCTION_4_110();
      if (v46)
      {
        sub_1DD0DCF8C();
      }

      v241 = OUTLINED_FUNCTION_138();
      MEMORY[0x1E12A6780](v241);

      OUTLINED_FUNCTION_7_73();
      if (v48)
      {
        v242 = v47;
      }

      else
      {
        v242 = 0x3E4C494E3CLL;
      }

      if (v48)
      {
        v243 = v48;
      }

      else
      {
        v243 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v242, v243);

      MEMORY[0x1E12A6780](0x6E65736F6863202CLL, 0xEE00203A6D657449);
      if (*(&v358 + 1))
      {
        v244 = 0x65746E6573657250;
      }

      else
      {
        v244 = 0x3E4C494E3CLL;
      }

      if (*(&v358 + 1))
      {
        v245 = 0xE900000000000064;
      }

      else
      {
        v245 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v244, v245);

      MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD1270D0);
      if (v49)
      {
        v246 = *(v49 + 16);
      }

      else
      {
        v246 = 0;
      }

      v309 = v351;
      v311 = v349;
      v310 = v350;
      v356 = v246;
      v312 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v312);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v345)
      {
        v313 = v346;
      }

      else
      {
        v313 = 0x3E4C494E3CLL;
      }

      if (v345)
      {
        v314 = v345;
      }

      else
      {
        v314 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v313, v314);

      OUTLINED_FUNCTION_0_120();
      if (v347)
      {
        v315 = v348;
      }

      else
      {
        v315 = 0x3E4C494E3CLL;
      }

      if (v347)
      {
        v316 = v347;
      }

      else
      {
        v316 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v315, v316);

      OUTLINED_FUNCTION_34_38();
      if (v311)
      {
        v317 = v310;
      }

      else
      {
        v317 = 0x3E4C494E3CLL;
      }

      if (v311)
      {
        v318 = v311;
      }

      else
      {
        v318 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v317, v318);

      OUTLINED_FUNCTION_35_33();
      LOBYTE(v356) = v309;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB540, &qword_1DD106580);
      v319 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v319);

      sub_1DCB0E9D8(&v357, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v271 = &unk_1ECCA3280;
      v272 = &unk_1DD0E23D0;
      v320 = (v0 + 96);
      goto LABEL_276;
    case 0xCu:
      OUTLINED_FUNCTION_49_23();
      v66 = *v0;
      v68 = *(v0 + 1);
      v67 = *(v0 + 2);
      v69 = *(v0 + 3);
      v71 = *(v0 + 5);
      v70 = *(v0 + 6);
      v72 = *(v0 + 7);
      v73 = *(v0 + 8);
      v346 = *(v0 + 4);
      v347 = v72;
      v74 = *(v0 + 9);
      v75 = *(v0 + 10);
      v76 = *(v0 + 12);
      v350 = *(v0 + 11);
      v348 = v74;
      v349 = v76;
      LODWORD(v345) = *(v0 + 26);
      v77 = v0[108];

      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](v10 | 8, 0x80000001DD127140);
      LODWORD(v351) = v77;
      if (v66 > 0xD0)
      {
        v78 = @"FLOWSTATETYPE_UNKNOWN";
        v79 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v78 = off_1E864C318[v66];
        v79 = off_1E864C9A0[v66];
      }

      v282 = 0x3E4C494E3CLL;
      v283 = v78;
      v284 = v79;
      v285 = sub_1DD0DDFBC();
      v287 = v286;

      MEMORY[0x1E12A6780](v285, v287);

      MEMORY[0x1E12A6780](0x79546B736174202CLL, 0xEC000000203A6570);
      MEMORY[0x1E12A6780](v68, v67);

      OUTLINED_FUNCTION_4_110();
      if (v69)
      {
        sub_1DD0DCF8C();
      }

      v288 = v350;
      MEMORY[0x1E12A6780](0x3E4C494E3CLL, 0xE500000000000000);

      OUTLINED_FUNCTION_7_73();
      if (v71)
      {
        v289 = v346;
      }

      else
      {
        v289 = 0x3E4C494E3CLL;
      }

      v290 = 0xE500000000000000;
      if (v71)
      {
        v291 = v71;
      }

      else
      {
        v291 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v289, v291);

      MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD126F70);
      if (v73)
      {
        v292 = v347;
      }

      else
      {
        v292 = 0x3E4C494E3CLL;
      }

      if (v73)
      {
        v293 = v73;
      }

      else
      {
        v293 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v292, v293);

      OUTLINED_FUNCTION_0_120();
      if (v75)
      {
        v294 = v348;
      }

      else
      {
        v294 = 0x3E4C494E3CLL;
      }

      if (v75)
      {
        v295 = v75;
      }

      else
      {
        v295 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v294, v295);

      MEMORY[0x1E12A6780](0xD00000000000001BLL, 0x80000001DD127160);
      if (v349)
      {
        v296 = v288;
      }

      else
      {
        v296 = 0x3E4C494E3CLL;
      }

      if (v349)
      {
        v297 = v349;
      }

      else
      {
        v297 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v296, v297);

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      if ((v351 & 1) == 0)
      {
        if (v345 > 0x62)
        {
          v298 = @"FLOWSTATUSREASON_UNKNOWN";
          v299 = @"FLOWSTATUSREASON_UNKNOWN";
        }

        else
        {
          v298 = off_1E864D028[v345];
          v299 = off_1E864D340[v345];
        }

        v340 = v298;
        v341 = v299;
        v282 = sub_1DD0DDFBC();
        v290 = v342;
      }

      MEMORY[0x1E12A6780](v282, v290);

LABEL_280:

      break;
    case 0xDu:
      v177 = *v0;
      v178 = *(v0 + 1);
      v179 = *(v0 + 2);
      v38 = *(v0 + 3);
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      MEMORY[0x1E12A6780](0xD00000000000001FLL, 0x80000001DD126F00);
      MEMORY[0x1E12A6780](v177, v178);

      MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD70);
      v39 = v179;
      goto LABEL_66;
    case 0xEu:
      v37 = *v0;
      v38 = *(v0 + 1);
      OUTLINED_FUNCTION_9_75();
      v42 = v41 + 22;
      goto LABEL_61;
    case 0xFu:
      v115 = *v0;
      v116 = *(v0 + 1);
      v117 = *(v0 + 2);
      v118 = v0[24];
      v352 = 0xD000000000000025;
      v353 = 0x80000001DD126ED0;
      *&v357 = v115;
      *(&v357 + 1) = v116;
      *&v358 = v117;
      BYTE8(v358) = v118;
      v119 = TaskFlowConfiguration.debugDescription.getter();
      v121 = v120;

      MEMORY[0x1E12A6780](v119, v121);

      OUTLINED_FUNCTION_35();
      break;
    case 0x10u:
      v33 = *v0;
      v34 = *(v0 + 1);

      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v35 | 0x20, v36 | 0x8000000000000000);
      goto LABEL_70;
    case 0x11u:
      v164 = *v0;
      v38 = *(v0 + 1);
      OUTLINED_FUNCTION_9_75();
      v42 = v165 + 10;
LABEL_61:
      *&v357 = v42;
      *(&v357 + 1) = v40;
LABEL_66:
      MEMORY[0x1E12A6780](v39, v38);
      goto LABEL_71;
    case 0x12u:
      v33 = *v0;
      v34 = *(v0 + 1);

      OUTLINED_FUNCTION_9_75();
      *&v357 = v191 + 10;
      *(&v357 + 1) = v190;
LABEL_70:
      MEMORY[0x1E12A6780](v33, v34);
LABEL_71:

      OUTLINED_FUNCTION_35();
      break;
    case 0x13u:
      v238 = *v0;
      OUTLINED_FUNCTION_6_75();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_26_35();
      OUTLINED_FUNCTION_23_33();
      MEMORY[0x1E12A6780](v239 + 21, v240 | 0x8000000000000000);
      v352 = [v238 whichContextevent];
      type metadata accessor for FLOWSchemaFLOWLocationAccessPermissionPromptContext_WhichContextevent(0);
      OUTLINED_FUNCTION_60_18();

      break;
    case 0x14u:
      break;
    default:
      v28 = *v0;
      v30 = *(v0 + 1);
      v29 = *(v0 + 2);
      LODWORD(v350) = v0[24];
      v351 = *(v0 + 9);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v32 = *(v0 + 3);
      v357 = *(v0 + 2);
      v358 = v32;
      v359 = *(v0 + 8);
      sub_1DCFA49F4(&v0[v31], v21);
      OUTLINED_FUNCTION_32_16();
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_52_28();
      OUTLINED_FUNCTION_23_33();
      OUTLINED_FUNCTION_63_16();
      LOBYTE(v352) = v28;
      OUTLINED_FUNCTION_62_14();
      MEMORY[0x1E12A6780](0xD000000000000012, 0x80000001DD127320);
      MEMORY[0x1E12A6780](v30, v29);

      MEMORY[0x1E12A6780](0x746C75736572202CLL, 0xEA0000000000203ALL);
      sub_1DCB09970(v21, v18, &qword_1ECCA2278, &qword_1DD0E4830);
      if (__swift_getEnumTagSinglePayload(v18, 1, v1) != 1)
      {
        (*(v4 + 32))(v10, v18, v1);
        sub_1DCB252A8(&qword_1EDE46328, MEMORY[0x1E69CE260]);
        sub_1DD0DF03C();
        OUTLINED_FUNCTION_55_16();
        v300 = *(v4 + 8);
        v4 += 8;
        v300(v10, v1);
      }

      OUTLINED_FUNCTION_25_32();
      OUTLINED_FUNCTION_45_24();

      MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD126FF0);
      LOBYTE(v352) = v350;
      v301 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v301);

      v302 = MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD126FB0);
      OUTLINED_FUNCTION_64_19(v302, v303, &unk_1ECCA3280, &unk_1DD0E23D0);
      if (v354)
      {
        v304 = v355;
        OUTLINED_FUNCTION_61_24();
        v305 = OUTLINED_FUNCTION_22_41(v304);
        v4 = v306(v305, v304);
        v308 = v307;
        __swift_destroy_boxed_opaque_existential_1Tm(&v352);
      }

      else
      {
        sub_1DCB0E9D8(&v352, &unk_1ECCA3280, &unk_1DD0E23D0);
        v308 = 0xE500000000000000;
      }

      v324 = v351;
      MEMORY[0x1E12A6780](v4, v308);

      MEMORY[0x1E12A6780](0x61646174656D202CLL, 0xEC000000203A6174);
      if (!v324)
      {
        sub_1DD0DDE9C();
      }

      v325 = sub_1DD0DDE7C();
      v327 = v326;

      MEMORY[0x1E12A6780](v325, v327);

      OUTLINED_FUNCTION_35();
      sub_1DCB0E9D8(v21, &qword_1ECCA2278, &qword_1DD0E4830);
LABEL_274:
      v271 = &unk_1ECCA3280;
      v272 = &unk_1DD0E23D0;
LABEL_275:
      v320 = &v357;
LABEL_276:
      sub_1DCB0E9D8(v320, v271, v272);
      break;
  }

  OUTLINED_FUNCTION_49();
}