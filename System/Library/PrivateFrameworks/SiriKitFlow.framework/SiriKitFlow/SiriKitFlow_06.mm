void RCHFlowFactory.init(strategy:childFlowFactory:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a3, a1);
  *(a3 + *(type metadata accessor for RCHFlowFactory() + 36)) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCB82888()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [objc_opt_self() sharedStream];
  type metadata accessor for SiriAnalyticsInstrumentationClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  sub_1DCB829E8(v0, v2);
}

void sub_1DCB829E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAnalyticsInstrumentationClient();
  v11[3] = v4;
  v11[4] = &off_1F5862290;
  v11[0] = a2;
  type metadata accessor for DialogGradingOutputPublisher();
  swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v11, v4);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1DCB82DA4(a1, *v8);
}

uint64_t sub_1DCB82B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = type metadata accessor for ResolveConfirmHandleExecutor();
  v19 = &off_1F58710E8;
  v17[0] = a3;
  type metadata accessor for ResolveConfirmHandleService();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  v15 = sub_1DCB82CDC(a1, a2, *v13, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1DCB82CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for RefreshableAceServiceInvoker();
  v11[4] = &protocol witness table for RefreshableAceServiceInvoker;
  v11[0] = a1;
  v10[3] = type metadata accessor for RefreshableDeviceState();
  v10[4] = &protocol witness table for RefreshableDeviceState;
  v10[0] = a2;
  v9[3] = type metadata accessor for ResolveConfirmHandleExecutor();
  v9[4] = &off_1F58710E8;
  v9[0] = a3;
  sub_1DCB17D04(v11, a4 + 16);
  sub_1DCB17D04(v10, a4 + 56);
  sub_1DCB17D04(v9, a4 + 96);
  sub_1DCB83278();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return a4;
}

void sub_1DCB82DA4(uint64_t a1, uint64_t a2)
{
  v11 = sub_1DCB82E78();
  v12 = &off_1F587A178;
  v10 = a1;
  v8 = type metadata accessor for SiriAnalyticsInstrumentationClient();
  v9 = &off_1F5862290;
  v7 = a2;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42D0, &qword_1DD0EB878);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

unint64_t sub_1DCB82E78()
{
  result = qword_1EDE46228;
  if (!qword_1EDE46228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46228);
  }

  return result;
}

void sub_1DCB82EBC()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCB83278()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = *(v1 + 176);
  v3 = OUTLINED_FUNCTION_33_4();
  v5 = v4(v3, v1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [objc_opt_self() sharedPreferences];
    if (v9)
    {
      v10 = v9;
      sub_1DCB2C534(v7, v8, v9, &selRef__setCachedSiriLanguageCode_);
    }

    else
    {
    }
  }
}

uint64_t RefreshableDeviceState.preferencesLanguageCode.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 176);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCB833F8()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7980, &qword_1DD0F98A8);
      v8 = OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_7_46(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_2_24();
        sub_1DCB8382C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7988, &qword_1DD0F98B0);
    OUTLINED_FUNCTION_14_46();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:hasUserBeenAuthorizedForApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  sub_1DCB837D4();
  sub_1DD0DCB0C();
}

char *sub_1DCB837AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

unint64_t sub_1DCB837D4()
{
  result = qword_1EDE48A98;
  if (!qword_1EDE48A98)
  {
    type metadata accessor for EnvironmentSummoner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE48A98);
  }

  return result;
}

uint64_t sub_1DCB83854(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = a1 + *(v3 + 56) + 7;
  v6 = (v4 & 0xFFFFFFFFFFFFFFF8) + 15;
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);

  v6 &= 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v7 = *(((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1DCB839B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

void sub_1DCB83A90(uint64_t *a1@<X8>)
{
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57DF8;
  a1[3] = type metadata accessor for RefreshableSiriKitEventSending();
  a1[4] = &off_1F5873940;
  *a1 = v2;
  sub_1DD0DCF8C();
}

void sub_1DCB83BC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = swift_getAssociatedTypeWitness();
  RCHChildFlowProducers.init()(AssociatedTypeWitness, v131);
  v8 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v8);
  v10 = (*(v9 + 96))(v8, v9);
  type metadata accessor for ViewFactory();
  *(swift_allocObject() + 16) = v10 & 1;
  v11 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v11, v12, v13, v14, v15, v16, v17, v18, v75, v83, v91, v99, v107, a1, a5);
  sub_1DCB17CA0(a3, &v143);
  v108 = type metadata accessor for ResolveParameterResponseGenerator();
  v19 = OUTLINED_FUNCTION_2_85();
  v140 = OUTLINED_FUNCTION_0_94(v19, v20, v21, v22, v23, v24, v25, v26, v76, v84, v92, v100, v108, v116, v124, v131, v135, v139, v143, v144, v145, v146, v147);
  v27 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v27, v28, v29, v30, v31, v32, v33, v34, v77, v85, v93, v101, v109, v117, v125);
  sub_1DCB17CA0(a3, &v143);
  type metadata accessor for ConfirmIntentResponseGenerator();
  v35 = OUTLINED_FUNCTION_2_85();
  v137 = OUTLINED_FUNCTION_0_94(v35, v36, v37, v38, v39, v40, v41, v42, v78, v86, v94, v102, v110, v118, v126, v132, v136, v140, v143, v144, v145, v146, v147);
  v43 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v43, v44, v45, v46, v47, v48, v49, v50, v79, v87, v95, v103, v111, v119, v127);
  sub_1DCB17CA0(a3, &v143);
  v104 = type metadata accessor for HandleIntentResponseGenerator();
  v51 = OUTLINED_FUNCTION_2_85();
  v97 = OUTLINED_FUNCTION_0_94(v51, v52, v53, v54, v55, v56, v57, v58, v80, v88, v96, v104, v112, v120, v128, v133, v137, v141, v143, v144, v145, v146, v147);
  v59 = OUTLINED_FUNCTION_4_92();
  OUTLINED_FUNCTION_3_98(v59, v60, v61, v62, v63, v64, v65, v66, v81, v89, v97, v105, v113, v121, v129);
  sub_1DCB17CA0(a3, &v143);
  v90 = type metadata accessor for AppResolutionResponseGenerator();
  v67 = OUTLINED_FUNCTION_2_85();
  OUTLINED_FUNCTION_0_94(v67, v68, v69, v70, v71, v72, v73, v74, v82, v90, v98, v106, v114, v122, v130, v134, v138, v142, v143, v144, v145, v146, v147);
  sub_1DD0DCF8C();
}

void sub_1DCB83F78()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = *v7;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  OUTLINED_FUNCTION_25_0();
  v23 = type metadata accessor for RCHFlowAsync.State();
  OUTLINED_FUNCTION_9(v23);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  (*(v15 + 16))(v21 - v20, v6, v9);
  sub_1DCB17D04(v4, &v25);
  sub_1DCB843DC(v2, &v24);
  sub_1DD0DCF8C();
}

_OWORD *initializeWithCopy for FlowExecutionEnvironment(_OWORD *a1, _OWORD *a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  v6 = *(a2 + 104);
  *(a1 + 104) = v6;
  (**(v6 - 8))((a1 + 5), (a2 + 5));
  return a1;
}

uint64_t sub_1DCB84380(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  sub_1DCAFF9E8(a3, v4 + 64);
  sub_1DCAFF9E8(a4, v4 + 104);
  return v4;
}

void sub_1DCB84438()
{
  OUTLINED_FUNCTION_4_82();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_116_6();
  sub_1DCB844D8();
}

void sub_1DCB844D8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_1DD0DB04C();
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_16();
  (*(*(v12[10] - 8) + 16))(&v1[v12[12]], v11, v12[10]);
  OUTLINED_FUNCTION_55_1();
  *&v1[*(v18 + 104)] = v9;
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v7, &v1[*(v19 + 112)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3, &v1[*(v20 + 120)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3 + 40, &v1[*(v21 + 128)]);
  OUTLINED_FUNCTION_55_1();
  sub_1DCB17D04(v3 + 80, &v1[*(v22 + 136)]);
  OUTLINED_FUNCTION_55_1();
  *&v1[*(v23 + 144)] = v5;
  OUTLINED_FUNCTION_55_1();
  v25 = *(v24 + 152);
  v26 = v12[11];
  OUTLINED_FUNCTION_25_0();
  type metadata accessor for RCHFlowAsync.State();
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCB848CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCHProtectedAppCheckClient();
  v5 = &off_1F586F018;
  v3 = a2;
  sub_1DD0DCF8C();
}

uint64_t destroy for FlowExecutionEnvironment(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 10);
}

uint64_t sub_1DCB84CAC(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

uint64_t sub_1DCB84D04()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_86();
  sub_1DCB84CAC(v1, v2);
  return v0;
}

uint64_t sub_1DCB84D68()
{
  type metadata accessor for ParameterHints();
  swift_allocObject();
  OUTLINED_FUNCTION_70();
  type metadata accessor for ParameterClause();
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t sub_1DCB84E4C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB84F10(a1, a2, a3);
  return v6;
}

void *sub_1DCB84EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DCB84F10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 104) = 0;
  *(v3 + 16) = a1;
  sub_1DCAFF9E8(a2, v3 + 24);
  sub_1DCAFF9E8(a3, v3 + 64);
  *(v3 + 104) = 0;
  return v3;
}

void sub_1DCB84F5C()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

_BYTE *sub_1DCB85070(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v22 = sub_1DD0DB04C();
      (*(*(v22 - 8) + 32))(a1, a2, v22);
      v16 = type metadata accessor for Input(0);
      v23 = v16[5];
      v24 = &a1[v23];
      v25 = &a2[v23];
      v26 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v27 = sub_1DD0DC76C();
          (*(*(v27 - 8) + 32))(v24, v25, v27);
          goto LABEL_70;
        case 1u:
          v53 = sub_1DD0DC76C();
          (*(*(v53 - 8) + 32))(v24, v25, v53);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v24[*(v54 + 48)] = *&v25[*(v54 + 48)];
          goto LABEL_70;
        case 4u:
          v66 = sub_1DD0DB1EC();
          (*(*(v66 - 8) + 32))(v24, v25, v66);
          goto LABEL_70;
        case 6u:
          v73 = sub_1DD0DB4BC();
          (*(*(v73 - 8) + 32))(v24, v25, v73);
          v74 = type metadata accessor for USOParse();
          v75 = v74[5];
          v76 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v25[v75], 1, v76))
          {
            v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v24[v75], &v25[v75], *(*(v77 - 8) + 64));
          }

          else
          {
            (*(*(v76 - 8) + 32))(&v24[v75], &v25[v75], v76);
            __swift_storeEnumTagSinglePayload(&v24[v75], 0, 1, v76);
          }

          *&v24[v74[6]] = *&v25[v74[6]];
          v121 = v74[7];
          v122 = &v24[v121];
          v123 = &v25[v121];
          v122[4] = v123[4];
          *v122 = *v123;
          goto LABEL_70;
        case 7u:
          v78 = sub_1DD0DB4BC();
          (*(*(v78 - 8) + 32))(v24, v25, v78);
          v79 = type metadata accessor for USOParse();
          v80 = v79[5];
          v81 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v25[v80], 1, v81))
          {
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v24[v80], &v25[v80], *(*(v82 - 8) + 64));
          }

          else
          {
            (*(*(v81 - 8) + 32))(&v24[v80], &v25[v80], v81);
            __swift_storeEnumTagSinglePayload(&v24[v80], 0, 1, v81);
          }

          *&v24[v79[6]] = *&v25[v79[6]];
          v124 = v79[7];
          v125 = &v24[v124];
          v126 = &v25[v124];
          v125[4] = v126[4];
          *v125 = *v126;
          v127 = type metadata accessor for LinkParse();
          *&v24[v127[5]] = *&v25[v127[5]];
          *&v24[v127[6]] = *&v25[v127[6]];
          *&v24[v127[7]] = *&v25[v127[7]];
          goto LABEL_70;
        case 8u:
          v37 = sub_1DD0DD12C();
          (*(*(v37 - 8) + 32))(v24, v25, v37);
          v38 = type metadata accessor for NLRouterParse();
          *&v24[*(v38 + 20)] = *&v25[*(v38 + 20)];
          v168 = v38;
          v39 = *(v38 + 24);
          v40 = &v24[v39];
          v41 = &v25[v39];
          v42 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v40, v41, *(*(v43 - 8) + 64));
          }

          else
          {
            v100 = sub_1DD0DB4BC();
            v165 = v40;
            (*(*(v100 - 8) + 32))(v40, v41, v100);
            v101 = v42[5];
            v102 = sub_1DD0DB3EC();
            v162 = v101;
            v103 = &v41[v101];
            v104 = v102;
            if (__swift_getEnumTagSinglePayload(v103, 1, v102))
            {
              v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v106 = v165;
              memcpy(&v165[v162], &v41[v162], *(*(v105 - 8) + 64));
            }

            else
            {
              v159 = v104;
              (*(*(v104 - 8) + 32))(&v165[v162], &v41[v162], v104);
              v106 = v165;
              __swift_storeEnumTagSinglePayload(&v165[v162], 0, 1, v159);
            }

            *(v106 + v42[6]) = *&v41[v42[6]];
            v145 = v42[7];
            v146 = v106 + v145;
            v147 = &v41[v145];
            *(v146 + 4) = v147[4];
            *v146 = *v147;
            __swift_storeEnumTagSinglePayload(v106, 0, 1, v42);
          }

          *&v24[*(v168 + 28)] = *&v25[*(v168 + 28)];
          goto LABEL_70;
        case 9u:
          v59 = sub_1DD0DD08C();
          (*(*(v59 - 8) + 32))(v24, v25, v59);
LABEL_70:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v24, v25, *(*(v26 - 8) + 64));
          break;
      }

      goto LABEL_66;
    case 4:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = &a1[v17];
      v19 = &a2[v17];
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 32))(v18, v19, v21);
          goto LABEL_65;
        case 1u:
          v44 = sub_1DD0DC76C();
          (*(*(v44 - 8) + 32))(v18, v19, v44);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v45 + 48)] = *&v19[*(v45 + 48)];
          goto LABEL_65;
        case 4u:
          v58 = sub_1DD0DB1EC();
          (*(*(v58 - 8) + 32))(v18, v19, v58);
          goto LABEL_65;
        case 6u:
          v60 = sub_1DD0DB4BC();
          (*(*(v60 - 8) + 32))(v18, v19, v60);
          v61 = type metadata accessor for USOParse();
          v62 = v61[5];
          v63 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v62], 1, v63))
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v62], &v19[v62], *(*(v64 - 8) + 64));
          }

          else
          {
            (*(*(v63 - 8) + 32))(&v18[v62], &v19[v62], v63);
            __swift_storeEnumTagSinglePayload(&v18[v62], 0, 1, v63);
          }

          *&v18[v61[6]] = *&v19[v61[6]];
          v114 = v61[7];
          v115 = &v18[v114];
          v116 = &v19[v114];
          v115[4] = v116[4];
          *v115 = *v116;
          goto LABEL_65;
        case 7u:
          v67 = sub_1DD0DB4BC();
          (*(*(v67 - 8) + 32))(v18, v19, v67);
          v68 = type metadata accessor for USOParse();
          v69 = v68[5];
          v70 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v69], 1, v70))
          {
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v69], &v19[v69], *(*(v71 - 8) + 64));
          }

          else
          {
            (*(*(v70 - 8) + 32))(&v18[v69], &v19[v69], v70);
            __swift_storeEnumTagSinglePayload(&v18[v69], 0, 1, v70);
          }

          *&v18[v68[6]] = *&v19[v68[6]];
          v117 = v68[7];
          v118 = &v18[v117];
          v119 = &v19[v117];
          v118[4] = v119[4];
          *v118 = *v119;
          v120 = type metadata accessor for LinkParse();
          *&v18[v120[5]] = *&v19[v120[5]];
          *&v18[v120[6]] = *&v19[v120[6]];
          *&v18[v120[7]] = *&v19[v120[7]];
          goto LABEL_65;
        case 8u:
          v30 = sub_1DD0DD12C();
          (*(*(v30 - 8) + 32))(v18, v19, v30);
          v31 = type metadata accessor for NLRouterParse();
          *&v18[*(v31 + 20)] = *&v19[*(v31 + 20)];
          v167 = v31;
          v32 = *(v31 + 24);
          v33 = &v18[v32];
          v34 = &v19[v32];
          v35 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v34, 1, v35))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v33, v34, *(*(v36 - 8) + 64));
          }

          else
          {
            v93 = sub_1DD0DB4BC();
            v164 = v33;
            (*(*(v93 - 8) + 32))(v33, v34, v93);
            v94 = v35[5];
            v95 = sub_1DD0DB3EC();
            v161 = v94;
            v96 = &v34[v94];
            v97 = v95;
            if (__swift_getEnumTagSinglePayload(v96, 1, v95))
            {
              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v99 = v164;
              memcpy(&v164[v161], &v34[v161], *(*(v98 - 8) + 64));
            }

            else
            {
              v158 = v97;
              (*(*(v97 - 8) + 32))(&v164[v161], &v34[v161], v97);
              v99 = v164;
              __swift_storeEnumTagSinglePayload(&v164[v161], 0, 1, v158);
            }

            *(v99 + v35[6]) = *&v34[v35[6]];
            v135 = v35[7];
            v136 = v99 + v135;
            v137 = &v34[v135];
            *(v136 + 4) = v137[4];
            *v136 = *v137;
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v35);
          }

          *&v18[*(v167 + 28)] = *&v19[*(v167 + 28)];
          goto LABEL_65;
        case 9u:
          v57 = sub_1DD0DD08C();
          (*(*(v57 - 8) + 32))(v18, v19, v57);
LABEL_65:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

LABEL_66:
      *&a1[v16[6]] = *&a2[v16[6]];
      v138 = v16[7];
      v139 = &a1[v138];
      v140 = &a2[v138];
      v141 = *(v140 + 1);
      *v139 = *v140;
      *(v139 + 1) = v141;
      *(v139 + 4) = *(v140 + 4);
      a1[v16[8]] = a2[v16[8]];
      v142 = *(a3 + 16);
      v143 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_77:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for Input(0);
      v10 = v9[5];
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 32))(v11, v12, v14);
          goto LABEL_75;
        case 1u:
          v55 = sub_1DD0DC76C();
          (*(*(v55 - 8) + 32))(v11, v12, v55);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v11[*(v56 + 48)] = *&v12[*(v56 + 48)];
          goto LABEL_75;
        case 4u:
          v72 = sub_1DD0DB1EC();
          (*(*(v72 - 8) + 32))(v11, v12, v72);
          goto LABEL_75;
        case 6u:
          v83 = sub_1DD0DB4BC();
          (*(*(v83 - 8) + 32))(v11, v12, v83);
          v84 = type metadata accessor for USOParse();
          v85 = v84[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v85], &v12[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 32))(&v11[v85], &v12[v85], v86);
            __swift_storeEnumTagSinglePayload(&v11[v85], 0, 1, v86);
          }

          *&v11[v84[6]] = *&v12[v84[6]];
          v128 = v84[7];
          v129 = &v11[v128];
          v130 = &v12[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          goto LABEL_75;
        case 7u:
          v88 = sub_1DD0DB4BC();
          (*(*(v88 - 8) + 32))(v11, v12, v88);
          v89 = type metadata accessor for USOParse();
          v90 = v89[5];
          v91 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v90], 1, v91))
          {
            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v90], &v12[v90], *(*(v92 - 8) + 64));
          }

          else
          {
            (*(*(v91 - 8) + 32))(&v11[v90], &v12[v90], v91);
            __swift_storeEnumTagSinglePayload(&v11[v90], 0, 1, v91);
          }

          *&v11[v89[6]] = *&v12[v89[6]];
          v131 = v89[7];
          v132 = &v11[v131];
          v133 = &v12[v131];
          v132[4] = v133[4];
          *v132 = *v133;
          v134 = type metadata accessor for LinkParse();
          *&v11[v134[5]] = *&v12[v134[5]];
          *&v11[v134[6]] = *&v12[v134[6]];
          *&v11[v134[7]] = *&v12[v134[7]];
          goto LABEL_75;
        case 8u:
          v46 = sub_1DD0DD12C();
          (*(*(v46 - 8) + 32))(v11, v12, v46);
          v47 = type metadata accessor for NLRouterParse();
          *&v11[*(v47 + 20)] = *&v12[*(v47 + 20)];
          v169 = v47;
          v48 = *(v47 + 24);
          v49 = &v11[v48];
          v50 = &v12[v48];
          v51 = type metadata accessor for USOParse();
          if (__swift_getEnumTagSinglePayload(v50, 1, v51))
          {
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v49, v50, *(*(v52 - 8) + 64));
          }

          else
          {
            v107 = sub_1DD0DB4BC();
            v166 = v49;
            (*(*(v107 - 8) + 32))(v49, v50, v107);
            v108 = v51[5];
            v109 = sub_1DD0DB3EC();
            v163 = v108;
            v110 = &v50[v108];
            v111 = v109;
            if (__swift_getEnumTagSinglePayload(v110, 1, v109))
            {
              v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v113 = v166;
              memcpy(&v166[v163], &v50[v163], *(*(v112 - 8) + 64));
            }

            else
            {
              v160 = v111;
              (*(*(v111 - 8) + 32))(&v166[v163], &v50[v163], v111);
              v113 = v166;
              __swift_storeEnumTagSinglePayload(&v166[v163], 0, 1, v160);
            }

            *(v113 + v51[6]) = *&v50[v51[6]];
            v148 = v51[7];
            v149 = v113 + v148;
            v150 = &v50[v148];
            *(v149 + 4) = v150[4];
            *v149 = *v150;
            __swift_storeEnumTagSinglePayload(v113, 0, 1, v51);
          }

          *&v11[*(v169 + 28)] = *&v12[*(v169 + 28)];
          goto LABEL_75;
        case 9u:
          v65 = sub_1DD0DD08C();
          (*(*(v65 - 8) + 32))(v11, v12, v65);
LABEL_75:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v11, v12, *(*(v13 - 8) + 64));
          break;
      }

      *&a1[v9[6]] = *&a2[v9[6]];
      v151 = v9[7];
      v152 = &a1[v151];
      v153 = &a2[v151];
      v154 = *(v153 + 1);
      *v152 = *v153;
      *(v152 + 1) = v154;
      *(v152 + 4) = *(v153 + 4);
      a1[v9[8]] = a2[v9[8]];
      v155 = *(a3 + 16);
      v156 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      v157 = swift_getTupleTypeMetadata2();
      *&a1[*(v157 + 48)] = *&a2[*(v157 + 48)];
      goto LABEL_77;
  }

  v28 = *(v6 + 64);

  return memcpy(a1, a2, v28);
}

uint64_t sub_1DCB867DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB86818()
{
  OUTLINED_FUNCTION_13_7();
  v2 = type metadata accessor for AppRCHAuthorizationFlow();
  v0[4] = v1;
  v0[7] = v2;
  v0[8] = &unk_1DD0E1EA0;
  v0[9] = v1;
  v0[10] = sub_1DCBF2ABC;
  v0[11] = v1;
  v0[12] = &unk_1DD0E1EB0;
  v0[13] = v1;
  v0[14] = sub_1DCB8D60C;
  OUTLINED_FUNCTION_3_16();
  v14 = v3;
  OUTLINED_FUNCTION_145_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D28, &unk_1DD0E63E0);
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t sub_1DCB86920()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB869B0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DCAFF9E8(a2, v3 + 24);
  sub_1DCAFF9E8(a3, v3 + 64);
  return v3;
}

uint64_t sub_1DCB869F4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCB869B0(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCB86A4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCB86AEC(a1);
}

uint64_t sub_1DCB86AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCB86BA0(a1);
}

uint64_t sub_1DCB86BA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB86C24, 0, 0);
}

uint64_t sub_1DCB86BC0(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_0_3();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  return v4;
}

uint64_t sub_1DCB86C24()
{
  if (*(v0[3] + 280) == 255)
  {
    if (sub_1DCB86F6C())
    {
      v1 = -2;
    }

    else
    {
      v1 = -3;
    }

    sub_1DCB87830(0, v1);
  }

  switch(*(v0[3] + 280))
  {
    case 0xFC:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v2 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v2, qword_1EDE57E00);
      v3 = sub_1DD0DD8EC();
      v4 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1DCAFC000, v3, v4, "ProtectedAppCheck exited without unlocking required apps. Terminating AppRCHAuthorizationFlow.", v5, 2u);
        OUTLINED_FUNCTION_62();
      }

      v6 = swift_task_alloc();
      v0[4] = v6;
      *v6 = v0;
      v6[1] = sub_1DCC1FC04;
      v7 = v0[3];

      result = sub_1DCC1FEFC();
      break;
    case 0xFD:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v21, v22))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v23, v24, "AppRCHAuthorizationFlow is pushing ProtectedAppCheck");
        OUTLINED_FUNCTION_62();
      }

      v25 = v0[2];
      v26 = v0[3];

      sub_1DCB87BD4();
    case 0xFE:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v9 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v9, qword_1EDE57E00);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v10, v11))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v12, v13, "AppRCHAuthorizationFlow has determined this user case requires a device unlock. Pushing UnlockDeviceFlow.");
        OUTLINED_FUNCTION_62();
      }

      v14 = v0[2];
      v15 = v0[3];

      sub_1DCC1FD8C();
    case 0xFF:
      v16 = v0[2];
      v17 = v0[3];
      sub_1DCC20BCC();
      v18 = OUTLINED_FUNCTION_34();
      *v19 = 0xD000000000000020;
      v19[1] = 0x80000001DD1144E0;
      sub_1DCB87830(v18, 1u);
    default:
      v27 = v0[2];
      v28.n128_f64[0] = static ExecuteResponse.complete()();
      v29 = v0[1];

      result = v29(v28);
      break;
  }

  return result;
}

BOOL sub_1DCB86F6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v43 - v9;
  v11 = v0[22];
  v12 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v11);
  if (((*(v12 + 104))(v11, v12) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
LABEL_27:
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_11;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Device is already unlocked, no need for unlock flow";
    goto LABEL_10;
  }

  v13 = v0[22];
  v14 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v13);
  if ((*(v14 + 8))(v13, v14))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_11;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Bypassing potential device unlock for HomePod requests";
LABEL_10:
    _os_log_impl(&dword_1DCAFC000, v17, v18, v20, v19, 2u);
    MEMORY[0x1E12A8390](v19, -1, -1);
LABEL_11:

    return 0;
  }

  v43 = v10;
  v44 = v7;
  v24 = 0;
  v25 = v0[2];
  v26 = *(v25 + 16);
  v46 = v25;
  v47 = v26;
  v27 = (v25 + 40);
  *&v15 = 136315138;
  v45 = v15;
  while (1)
  {
    v22 = v47 != v24;
    if (v47 == v24)
    {
      return v22;
    }

    if (v24 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v29 = *(v27 - 1);
    v28 = *v27;
    v30 = *__swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);

    v31 = sub_1DCC181F8(v29, v28);
    if (v31)
    {

      v32 = [v31 actionsRestrictedWhileLocked];
      v33 = sub_1DD0DE57C();

      v48 = v1[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2418, &unk_1DD0E51E0);
      v34 = sub_1DD0DE02C();
      v36 = sub_1DCCE6C7C(v34, v35, v33);

      if (v36)
      {
        return v22;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v37 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v37, qword_1EDE57E00);

      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48 = v41;
        *v40 = v45;
        v42 = sub_1DCB10E9C(v29, v28, &v48);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_1DCAFC000, v38, v39, "Bypassing device unlock check for %s. No application record found.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1E12A8390](v41, -1, -1);
        MEMORY[0x1E12A8390](v40, -1, -1);
      }

      else
      {
      }
    }

    v27 += 2;
    ++v24;
  }
}

uint64_t sub_1DCB87714(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCAFF9E8(a2, v4 + 24);
  return v4;
}

uint64_t RefreshableDeviceState.isLockedWithPasscode.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 104);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

void static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)()
{
  sub_1DD0DCF8C();
}

{
  sub_1DD0DCF8C();
}

void sub_1DCB87830(void *a1, unsigned __int8 a2)
{
  v3 = *(v2 + 272);
  *(v2 + 272) = a1;
  v4 = *(v2 + 280);
  *(v2 + 280) = a2;
  sub_1DCB87A3C(a1, a2);
  sub_1DCB79360(v3, v4);
  sub_1DCB878A0();
}

void sub_1DCB878A0()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCB87A3C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

unint64_t sub_1DCB87A54(uint64_t a1, char a2)
{
  result = 0x6C616974696E692ELL;
  switch(a2)
  {
    case -4:
      result = 0xD00000000000001BLL;
      break;
    case -3:
      result = 0xD000000000000012;
      break;
    case -2:
      result = 0xD000000000000015;
      break;
    case -1:
      return result;
    default:
      sub_1DCB8D4CC(0x6C616974696E692ELL, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
      v3 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      result = 0x74656C706D6F632ELL;
      break;
  }

  return result;
}

void sub_1DCB87BD4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1DCB17CA0(v1 + 72, v10);
  sub_1DCB17CA0(v1 + 232, v9);
  sub_1DCB17CA0(v1 + 152, v8);
  sub_1DCB17CA0(v1 + 192, v7);
  v3 = type metadata accessor for ProtectedAppCheck(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(v6, v10, v9, v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_initStackObject();
  sub_1DCB887E4();
}

uint64_t ProtectedAppCheck.init(appIDs:strategy:client:deviceState:outputPublisher:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v5 + 192) = ResponseFactory.init()();
  v12 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state;
  v13 = sub_1DD0DB04C();
  __swift_storeEnumTagSinglePayload(v6 + v12, 1, 4, v13);
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) = 0;
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) = 0;
  v14 = v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult;
  *v14 = 0;
  *(v14 + 8) = -1;
  *(v6 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses) = MEMORY[0x1E69E7CC0];
  sub_1DCB87FE0(a1);
  OUTLINED_FUNCTION_67_14();

  *(v6 + 24) = v12;
  sub_1DCB17CA0(a2, v6 + 32);
  *(v6 + 16) = 0;
  sub_1DCB8878C();
  sub_1DCB8878C();
  if (!v18)
  {
    if (qword_1EDE46628 != -1)
    {
      OUTLINED_FUNCTION_58_0();
    }

    v15 = qword_1EDE46630;
    sub_1DCB4E718(&v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    v20 = type metadata accessor for RefreshableDeviceState();
    v21 = &protocol witness table for RefreshableDeviceState;
    *&v19 = v15;
    sub_1DD0DCF8C();
  }

  sub_1DCAFF9E8(&v17, &v19);
  sub_1DCAFF9E8(&v19, v6 + 112);
  sub_1DCB8878C();
  if (!v18)
  {
    sub_1DCB82888();
  }

  sub_1DCB0E9D8(a5, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCB0E9D8(a4, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(a3, &qword_1ECCA2568, &unk_1DD0FE510);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  sub_1DCAFF9E8(&v17, &v19);
  sub_1DCAFF9E8(&v19, v6 + 152);
  return v6;
}

uint64_t sub_1DCB87FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v2 - 1);
      v4 = *v2;
      swift_bridgeObjectRetain_n();
      v6 = sub_1DCB88110();

      if (v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v3 + 16);
          sub_1DCB34108();
          v3 = v10;
        }

        v7 = *(v3 + 16);
        if (v7 >= *(v3 + 24) >> 1)
        {
          sub_1DCB34108();
          v3 = v11;
        }

        *(v3 + 16) = v7 + 1;
        v8 = v3 + 16 * v7;
        *(v8 + 32) = v5;
        *(v8 + 40) = v4;
      }

      else
      {
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1DCB88110()
{
  OUTLINED_FUNCTION_25_13();
  sub_1DD0DDF2C();
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_30_20();
  while (1)
  {
    OUTLINED_FUNCTION_29_16(v6);
    if (v8)
    {
      break;
    }

    OUTLINED_FUNCTION_49_10();
    v8 = *v7 == v3 && v7[1] == v1;
    if (v8 || (sub_1DD0DF0AC() & 1) != 0)
    {

      OUTLINED_FUNCTION_49_10();
      v10 = v9[1];
      *v0 = *v9;
      v0[1] = v10;

      return v5 == 0;
    }

    v6 = v4 + 1;
  }

  v11 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_56_10();
  v12 = OUTLINED_FUNCTION_40_14();
  sub_1DCB88424(v12, v13, v14, v15);
  *v2 = v17;
  *v0 = v3;
  v0[1] = v1;
  return v5 == 0;
}

uint64_t sub_1DCB881F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1DD0DF1DC();

        sub_1DD0DDF2C();
        result = sub_1DD0DF20C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DCB88424(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DCD414B8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DCB881F0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      result = sub_1DD0DF20C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1DD0DF0AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DCD42D78();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_67_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_3()
{
  v2 = *(v0 - 96);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_67_7(uint64_t a1)
{
  *(v1 + *(a1 + 48)) = *(v2 + *(a1 + 48));

  sub_1DD0DCF8C();
}

double OUTLINED_FUNCTION_67_8()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;
  sub_1DCB79378(v3, v4);

  return static ExecuteResponse.complete()();
}

uint64_t OUTLINED_FUNCTION_67_10()
{

  return sub_1DD0DDF2C();
}

uint64_t OUTLINED_FUNCTION_67_13()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_67_16()
{

  Flow.eraseToAnyValueFlow()();
}

uint64_t OUTLINED_FUNCTION_67_17()
{
}

uint64_t OUTLINED_FUNCTION_67_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v14 + 10) = v16;
  *(v14 + 18) = v15;
  v18 = a14[6];
  v17 = a14[7];
  __swift_project_boxed_opaque_existential_1(a14 + 3, v18);
  v19 = *(v17 + 128);
  return v18;
}

uint64_t sub_1DCB8878C()
{
  OUTLINED_FUNCTION_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_33_1();
  v7(v6);
  return v0;
}

uint64_t sub_1DCB88820()
{
  v2 = OUTLINED_FUNCTION_13_7();
  v3 = type metadata accessor for ProtectedAppCheck(v2);
  v0[4] = v1;
  v0[7] = v3;
  v0[8] = &unk_1DD0E1F18;
  v0[9] = v1;
  v0[10] = sub_1DCBF2C84;
  v0[11] = v1;
  v0[12] = &unk_1DD0E1F28;
  v0[13] = v1;
  v0[14] = sub_1DCB8CD44;
  OUTLINED_FUNCTION_3_16();
  v15 = v4;
  OUTLINED_FUNCTION_145_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D40, &qword_1DD0E1F30);
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t sub_1DCB88910()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCB889A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCB88A40();
}

uint64_t sub_1DCB88A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCB88ADC();
}

uint64_t sub_1DCB88ADC()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_21_35();
  v4 = *(v3 + 64);
  v1[7] = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB88B4C()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

uint64_t sub_1DCB88BA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[6];
  v2 = v0[7];
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_6_62();
  sub_1DCB88B4C();
  v3 = sub_1DD0DB04C();
  switch(__swift_getEnumTagSinglePayload(v2, 4, v3))
  {
    case 1u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[8] = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_41_0(v32);

      result = sub_1DCB88EAC();
      break;
    case 2u:
      goto LABEL_3;
    case 3u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[9] = v34;
      *v34 = v35;
      OUTLINED_FUNCTION_41_0(v34);

      result = sub_1DCE9F1A0();
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6FC();
      if (OUTLINED_FUNCTION_23(v22))
      {
        v23 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v23);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[10] = v29;
      *v29 = v30;
      v31 = OUTLINED_FUNCTION_41_0(v29);

      result = sub_1DCB8C5C4(v31);
      break;
    default:
      v4 = v0[7];
      OUTLINED_FUNCTION_2_80();
      sub_1DCB551D4(v5, v6);
LABEL_3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v7 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v9))
      {
        v10 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v10);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
        OUTLINED_FUNCTION_62();
      }

      v16 = v0[5];

      static ExecuteResponse.ongoing(requireInput:)(1, v16);
      v17 = v0[7];

      OUTLINED_FUNCTION_29();

      result = v18();
      break;
  }

  return result;
}

uint64_t sub_1DCB88EAC()
{
  OUTLINED_FUNCTION_42();
  v1[18] = v2;
  v1[19] = v0;
  OUTLINED_FUNCTION_21_35();
  v4 = *(v3 + 64);
  v1[20] = OUTLINED_FUNCTION_38();
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v1[21] = v5;
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[22] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB88F44()
{
  sub_1DCB890C8();

  return swift_deallocClassInstance();
}

void sub_1DCB88F78()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 152);
  v2 = sub_1DD0DD8FC();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void *sub_1DCB890C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t sub_1DCB890F8()
{
  *(v1 + 232) = v0;
  v2 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DCB89120()
{
  OUTLINED_FUNCTION_125();
  v34 = v0;
  v1 = *(v0 + 232);
  sub_1DCB8878C();
  if (!*(v0 + 80))
  {
    v2 = *(v0 + 232);
    type metadata accessor for ProtectedAppCheck(0);
    OUTLINED_FUNCTION_26_28();
    sub_1DCB8BBF0(v3, v4);
    sub_1DD0DCB0C();
  }

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = sub_1DD0DD8FC();
  *(v0 + 240) = OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
  sub_1DCB17CA0(v0 + 16, v0 + 96);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_83();
    v33 = v9;
    *v8 = 136315138;
    v10 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v11 = *(v10 + 16);
    v12 = OUTLINED_FUNCTION_67_14();
    v14 = v13(v12, v10);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    sub_1DCB10E9C(v14, v16, &v33);
    OUTLINED_FUNCTION_67_14();

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "PAC: rebuilding statuses using %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_62();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  v17 = *(v0 + 232);
  v18 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  *(v0 + 248) = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_2_20();
  v19 = *(v17 + v18);
  *(v17 + v18) = MEMORY[0x1E69E7CC0];

  v20 = *(v17 + 24);
  *(v0 + 256) = v20;
  v21 = v20[2];
  *(v0 + 264) = v21;
  if (v21)
  {
    *(v0 + 272) = 0;
    v22 = v20[4];
    *(v0 + 280) = v22;
    v23 = v20[5];
    *(v0 + 288) = v23;
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
    v26 = *(v25 + 8);

    v32 = (v26 + *v26);
    v27 = v26[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 296) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_23_23(v28);

    return v32(v0 + 184, v22, v23, v24, v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_29();

    return v31();
  }
}

uint64_t RCHChildFlowFactory.init(producers:withFallbacks:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  v5 = nullsub_1(__dst);
  OUTLINED_FUNCTION_123_1(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v14[22], v14[23], v14[24], v14[25], v14[26], v14[27], v14[28], v14[29], v14[30], v14[31], v14[32], v14[33], v14[34], v14[35], v14[36], v14[37], v14[38], v14[39], v14[40], v14[41], v14[42], v14[43], __dst[0]);
  memcpy(__srca, a2, sizeof(__srca));
  nullsub_1(__srca);
  memcpy((v3 + 176), __srca, 0xB0uLL);
  memcpy((v2 + 16), v14, 0x160uLL);
  return v2;
}

void OUTLINED_FUNCTION_124_1()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 296);
  v3 = *(v0 + 57);
}

__n128 OUTLINED_FUNCTION_124_3()
{
  result = *(v0 + 16);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v10 = *(v0 + 64);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  return result;
}

uint64_t sub_1DCB89600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB193FC;

  return sub_1DCB896B4(a1, a2, a3);
}

uint64_t sub_1DCB896B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB896D8, 0, 0);
}

uint64_t sub_1DCB896D8()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[14];
    v3 = v0[15];

    v5 = sub_1DCB21038(v4, v3);
    if (v6)
    {
      v7 = *(v2 + 56) + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 17);

      if (v10)
      {
        v12 = v0[13];
        *v12 = v9;
        *(v12 + 8) = v8;
        *(v12 + 16) = 1;
        *(v12 + 17) = v11;
        v13 = v0[1];

        return v13();
      }
    }
  }

  sub_1DCB17CA0(v0[16] + 24, (v0 + 2));
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(v16 + 8);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_1DCB8A1F8;
  v20 = v0[14];
  v21 = v0[15];

  return (v22)(v0 + 10, v20, v21, v15, v16);
}

uint64_t sub_1DCB898EC()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v4 = OUTLINED_FUNCTION_33_1();
  v6 = OUTLINED_FUNCTION_74_13(v4, v5);
  v0[6] = v6;
  if (v3)
  {

LABEL_3:
    v7 = v0[4];
    v8 = v0[2];
    *v8 = v0[3];
LABEL_4:
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;

    OUTLINED_FUNCTION_29();

    return v9();
  }

  v11 = v6;
  if (!v6)
  {
    goto LABEL_3;
  }

  v12 = [v6 applicationState];
  v13 = [v12 isInstalled];

  if ((v13 & 1) == 0)
  {
    v25 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    *v8 = v25;
    goto LABEL_4;
  }

  v14 = v0[5];
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_12_4();
  v26 = (v17 + *v17);
  v19 = *(v18 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v20;
  *v20 = v21;
  v20[1] = sub_1DCB8A0BC;
  v22 = v0[3];
  v23 = v0[4];
  v24 = v0[2];

  return v26(v24, v22, v23, v15, v16);
}

uint64_t sub_1DCB89ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCB89B8C(a1, a2, a3);
}

uint64_t sub_1DCB89B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB898EC, 0, 0);
}

id sub_1DCB89BB0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DD0DDF8C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DD0DAE0C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1DCB89C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCB89D50(a1, a2, a3);
}

uint64_t sub_1DCB89D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1DD0DC81C();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB89E14, 0, 0);
}

uint64_t sub_1DCB89E14()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[23];
  (*(v1 + 104))(v0[24], *MEMORY[0x1E698B088], v0[22]);
  v2 = sub_1DD0DC80C();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_194();
  v5(v4);
  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v9 = sub_1DD0DDF8C();
  v10 = [v8 applicationWithBundleIdentifier_];
  v0[25] = v10;

  if ([v10 isHidden])
  {
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];

    v14 = 0;
    *v13 = v12;
    v15 = 1;
LABEL_10:
    *(v13 + 8) = v11;
    *(v13 + 16) = v14;
    *(v13 + 17) = v15;
    v18 = v0[24];
    v19 = v0[21];

    OUTLINED_FUNCTION_29();

    return v20();
  }

  if (![v10 isLocked])
  {

LABEL_9:
    v11 = v0[21];
    v13 = v0[19];
    *v13 = v0[20];
    v15 = 3;
    v14 = 1;
    goto LABEL_10;
  }

  v16 = [objc_opt_self() sharedGuard];
  v0[26] = v16;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCEA0ADC;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AC8, &qword_1DD0FE968);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCEA0E24;
  v0[13] = &block_descriptor_9;
  v0[14] = v17;
  [v16 getIsChallengeCurrentlyRequiredForSubject:v10 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t OUTLINED_FUNCTION_189()
{
  v3 = *(v1 + 32);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_1DCB8A0BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB8A1A0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB8A1F8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DCB8A2F4, 0, 0);
}

uint64_t sub_1DCB8A2F4()
{
  v12 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 97);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9[0] = v2;
  v9[1] = v3;
  v10 = v4;
  v11 = v5;
  sub_1DCB8A398(v9);
  v6 = *(v0 + 104);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 17) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DCB8A398(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    v20[1] = v3;
    *v10 = 136315138;
    v20[2] = v4;
    v21 = v5;
    v22 = v6;
    v12 = ProtectedAppStatus.debugDescription.getter();
    v14 = v3;
    v15 = v6;
    v16 = v5;
    v17 = sub_1DCB10E9C(v12, v13, v20);

    *(v10 + 4) = v17;
    v5 = v16;
    v6 = v15;
    v3 = v14;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "RCHProtectedAppCheckClient caching PAC status: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  swift_beginAccess();

  v18 = *(v2 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v20[0] = *(v2 + 16);
  sub_1DCB8A730(v3, v4, v5 | (v6 << 8), v3, v4);
  *(v2 + 16) = v20[0];
  return swift_endAccess();
}

uint64_t ProtectedAppStatus.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD120360);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0x656363417369202CLL, 0xEF3D656C62697373);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v5, v6);

  MEMORY[0x1E12A6780](0x3D6574617473202CLL, 0xE800000000000000);
  v7 = 0xEB0000000064656CLL;
  v8 = OUTLINED_FUNCTION_7_56();
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = OUTLINED_FUNCTION_71_11();
      break;
    case 2:
      v7 = 0xE600000000000000;
      v8 = OUTLINED_FUNCTION_49_16();
      break;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1E12A6780](v8, v7);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCB8A730(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DCB21038(a4, a5);
  OUTLINED_FUNCTION_0_17(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2808, &unk_1DD0E6B30);
  if ((sub_1DD0DEDCC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_1DCB21038(a4, a5);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v18;
    v25 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    *(v24 + 17) = HIBYTE(a3);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    sub_1DCB8A884(v18, a4, a5, a1, a2, a3 & 0xFF01, v23);
    OUTLINED_FUNCTION_49();
  }
}

unint64_t sub_1DCB8A884(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  *(v8 + 17) = HIBYTE(a6);
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1DCB8A8E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCB8A9C8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 288);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 201);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();

  v43 = v5;
  v45 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_1DCB10E9C(v10, v9, &v46);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    *(v0 + 208) = v1;
    *(v0 + 216) = v4;
    *(v0 + 224) = v5;
    *(v0 + 225) = v45;
    v13 = ProtectedAppStatus.debugDescription.getter();
    v15 = sub_1DCB10E9C(v13, v14, &v46);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "PAC: status for %s: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v16 = *(v0 + 288);
  }

  v17 = *(v0 + 248);
  v18 = *(v0 + 232);
  swift_beginAccess();
  v19 = *(v18 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + v17) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = *(v0 + 248);
    v40 = *(v0 + 232);
    OUTLINED_FUNCTION_64_13();
    OUTLINED_FUNCTION_47_19();
    sub_1DCB8AE54();
    v19 = v41;
    *(v40 + v39) = v41;
  }

  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    OUTLINED_FUNCTION_21_0(v21);
    sub_1DCB8AE54();
    v19 = v42;
  }

  v23 = *(v0 + 264);
  v24 = *(v0 + 248);
  v25 = *(v0 + 232);
  v26 = *(v0 + 272) + 1;
  *(v19 + 16) = v22 + 1;
  v27 = v19 + 24 * v22;
  *(v27 + 32) = v1;
  *(v27 + 40) = v4;
  *(v27 + 48) = v43;
  *(v27 + 49) = v45;
  *(v25 + v24) = v19;
  swift_endAccess();
  if (v26 == v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X1, X16 }
  }

  v30 = *(v0 + 272) + 1;
  *(v0 + 272) = v30;
  v31 = *(v0 + 256) + 16 * v30;
  *(v0 + 280) = *(v31 + 32);
  *(v0 + 288) = *(v31 + 40);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v33 = *(v32 + 8);

  v44 = v33 + *v33;
  v34 = v33[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_23_23();
  OUTLINED_FUNCTION_33_5();

  __asm { BRAA            X5, X16 }
}

void sub_1DCB8AD98()
{
  OUTLINED_FUNCTION_13_48();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_27_25(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_38_21(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_39_20(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_25_19();
        v1(v17);
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
  if (!v7)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DCB8AE84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCB8AF68()
{
  v83 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_156();
  v3 = *(v1 + v2);

  sub_1DCB8B610(v4);
  v6 = v5;
  v8 = v7;

  v9 = *(v6 + 16);
  if (v9)
  {
    v77 = v8;
    v81 = v0;
    v79 = v0 + 14;
    v82 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_70_10();
    v10 = 0;
    v11 = v82;
    v12 = v82[2];
    v13 = 16 * v12;
    do
    {
      v15 = *(v6 + v10 + 32);
      v14 = *(v6 + v10 + 40);
      v82 = v11;
      v16 = *(v11 + 24);

      if (v12 >= v16 >> 1)
      {
        sub_1DCB38954();
        v11 = v82;
      }

      *(v11 + 16) = v12 + 1;
      v17 = v11 + v13;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      v13 += 16;
      v10 += 24;
      ++v12;
      --v9;
    }

    while (v9);
    v0 = v81;
    v18 = v81[19];

    v19 = v18[7];
    v20 = v18[8];
    __swift_project_boxed_opaque_existential_1(v18 + 4, v19);
    v21 = (*(v20 + 8))(v18, v11, v19, v20);
    v22 = 0;
    v80 = *(v21 + 16);
    v23 = v21 + 40;
    v78 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = (v23 + 16 * v22);
    while (v80 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v26 = *(v24 - 1);
      v25 = *v24;
      v0[14] = v26;
      v0[15] = v25;
      v27 = swift_task_alloc();
      *(v27 + 16) = v79;

      v28 = sub_1DCC3EBE4(sub_1DCD00108, v27, v11);

      if (v28)
      {
        v29 = v78;
        v82 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_64_13();
          OUTLINED_FUNCTION_47_19();
          sub_1DCB38954();
          v29 = v82;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_21_0(v30);
          sub_1DCB38954();
          v29 = v82;
        }

        ++v22;
        *(v29 + 16) = v31 + 1;
        v78 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        v0 = v81;
        v23 = v21 + 40;
        goto LABEL_7;
      }

      v24 += 2;
      ++v22;
      v0 = v81;
    }

    if (!v78[2])
    {
      v8 = v77;
      goto LABEL_26;
    }

    if (!v78[2])
    {
      goto LABEL_47;
    }

    v33 = v0[19];
    v34 = v78[4];
    v0[25] = v34;
    v35 = v78[5];
    v0[26] = v35;

    v36 = v33[17];
    v37 = v33[18];
    __swift_project_boxed_opaque_existential_1(v33 + 14, v36);
    v38 = (*(v37 + 104))(v36, v37);
    v39 = v0[23];
    if (v38)
    {
      v40 = v0[19];

      v41 = v40[OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8];
      v42 = sub_1DD0DD8EC();
      if (v41 != 255)
      {
        v43 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = OUTLINED_FUNCTION_50_0();
          *v44 = 0;
          _os_log_impl(&dword_1DCAFC000, v42, v43, "PAC: Device is still locked after we already pushed deviceUnlockFlow. Stopping execution.", v44, 2u);
          OUTLINED_FUNCTION_80();
        }

        v45 = v0[18];

        static ExecuteResponse.complete()();
        v73 = v0[22];
        v74 = v0[20];

        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_141();

        __asm { BRAA            X1, X16 }
      }

      v69 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v42, v69))
      {
        v70 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v70);
        _os_log_impl(&dword_1DCAFC000, v42, v69, "PAC: Device is locked, will push UnlockDeviceFlow, which should make locked apps accessible as a side-effect.", v40, 2u);
        OUTLINED_FUNCTION_62();
      }

      v71 = v0[18];
      v72 = v0[19];

      sub_1DCE9DF34();
    }

    v63 = sub_1DD0DD8EC();
    v64 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_151();
      v66 = OUTLINED_FUNCTION_83();
      v82 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_1DCB10E9C(v34, v35, &v82);
      _os_log_impl(&dword_1DCAFC000, v63, v64, "PAC: Device is unlocked, will send an unlocked request for app %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    v67 = swift_task_alloc();
    v0[27] = v67;
    *v67 = v0;
    OUTLINED_FUNCTION_59_16(v67);
    OUTLINED_FUNCTION_141();

    sub_1DCE9C928();
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v46 = *(v8 + 16);

    if (!v46)
    {
      v49 = v78[2];

      if (!v49)
      {
        v50 = v0[23];
        v51 = sub_1DD0DD8EC();
        v52 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v52))
        {
          v53 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v53);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v54, v55, v56, v57, v58, 2u);
          OUTLINED_FUNCTION_62();
        }

        v59 = v0[19];

        *(v59 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) = 1;
      }

      v61 = v0[19];
      v60 = v0[20];
      v62 = sub_1DD0DB04C();
      OUTLINED_FUNCTION_12_53(v62);
    }

    v47 = swift_task_alloc();
    v0[32] = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_59_16(v47);
    OUTLINED_FUNCTION_141();

    sub_1DCE9E284();
  }
}

void sub_1DCB8B610(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 49;
  v40 = a1 + 49;
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = (v3 + 24 * v1);
    v5 = v1;
    while (2)
    {
      if (v2 == v5)
      {
        v21 = 0;
        v22 = a1 + 49;
        v44 = MEMORY[0x1E69E7CC0];
        v41 = v22;
        while (1)
        {
          v23 = (v22 + 24 * v21);
          v24 = v21;
          while (2)
          {
            if (v2 == v24)
            {
              type metadata accessor for ProtectedAppCheck(0);
              OUTLINED_FUNCTION_26_28();
              sub_1DCB8BBF0(v38, v39);
              sub_1DD0DCB0C();
            }

            if (v24 >= v2)
            {
              goto LABEL_37;
            }

            v21 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_38;
            }

            v25 = *(v23 - 17);
            v26 = *(v23 - 9);
            v27 = *(v23 - 1);
            OUTLINED_FUNCTION_38_23();
            v28 = *v23;
            OUTLINED_FUNCTION_7_56();
            switch(v28)
            {
              case 1:

                goto LABEL_29;
              case 2:
                OUTLINED_FUNCTION_49_16();
                goto LABEL_26;
              case 3:
                OUTLINED_FUNCTION_18_41();
                goto LABEL_26;
              default:
LABEL_26:
                v29 = OUTLINED_FUNCTION_61_17();

                if ((v29 & 1) == 0)
                {

                  ++v24;
                  v23 += 24;
                  continue;
                }

LABEL_29:
                v30 = v44;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_64_13();
                  v31 = OUTLINED_FUNCTION_47_19();
                  sub_1DCE06BE8(v31, v32, v33);
                  v30 = v44;
                }

                v22 = v41;
                v35 = *(v30 + 16);
                v34 = *(v30 + 24);
                if (v35 >= v34 >> 1)
                {
                  v37 = OUTLINED_FUNCTION_21_0(v34);
                  sub_1DCE06BE8(v37, v35 + 1, 1);
                  v30 = v44;
                }

                *(v30 + 16) = v35 + 1;
                v44 = v30;
                v36 = v30 + 24 * v35;
                *(v36 + 32) = v25;
                *(v36 + 40) = v26;
                *(v36 + 48) = v27;
                *(v36 + 49) = v28;
                break;
            }

            break;
          }
        }
      }

      if (v5 >= v2)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        JUMPOUT(0x1DCB8B998);
      }

      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_36;
      }

      v6 = *(v4 - 17);
      v7 = *(v4 - 9);
      v8 = *(v4 - 1);
      OUTLINED_FUNCTION_38_23();
      v9 = *v4;
      OUTLINED_FUNCTION_7_56();
      switch(v9)
      {
        case 1:
          OUTLINED_FUNCTION_71_11();
          goto LABEL_11;
        case 2:

          if ((v8 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        case 3:
          OUTLINED_FUNCTION_18_41();
          goto LABEL_11;
        default:
LABEL_11:
          v10 = OUTLINED_FUNCTION_62_11();

          if (v8 & 1 | ((v10 & 1) == 0))
          {
LABEL_12:

            ++v5;
            v4 += 24;
            continue;
          }

LABEL_13:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v12 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = *(v42 + 16);
            v14 = OUTLINED_FUNCTION_47_19();
            sub_1DCE06BE8(v14, v15, v16);
            v12 = v42;
          }

          v3 = v40;
          v18 = *(v12 + 16);
          v17 = *(v12 + 24);
          if (v18 >= v17 >> 1)
          {
            v20 = OUTLINED_FUNCTION_21_0(v17);
            sub_1DCE06BE8(v20, v18 + 1, 1);
            v12 = v42;
          }

          *(v12 + 16) = v18 + 1;
          v42 = v12;
          v19 = v12 + 24 * v18;
          *(v19 + 32) = v6;
          *(v19 + 40) = v7;
          *(v19 + 48) = 0;
          *(v19 + 49) = v9;
          break;
      }

      break;
    }
  }
}

void *OUTLINED_FUNCTION_61_6(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_61_7(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 112));
}

uint64_t OUTLINED_FUNCTION_61_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_1DCAFF9E8(&a9, &a13);
}

uint64_t OUTLINED_FUNCTION_61_12()
{

  return sub_1DD0DE02C();
}

double OUTLINED_FUNCTION_61_14@<D0>(uint64_t a1@<X8>)
{

  return sub_1DCB90D40(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1);
}

unint64_t OUTLINED_FUNCTION_61_15()
{
  *(v1 + 14) = v3;
  *(v1 + 22) = v4;
  *(v2 + 136) = v0;

  return sub_1DCDCB08C(v0);
}

void OUTLINED_FUNCTION_61_16()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  sub_1DD0DC9EC();
}

uint64_t OUTLINED_FUNCTION_61_17()
{

  return sub_1DD0DF0AC();
}

uint64_t OUTLINED_FUNCTION_61_19@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + a1), *(v1 + a1 + 24));

  return type metadata accessor for SiriKitEvent(0);
}

uint64_t OUTLINED_FUNCTION_61_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCB10E9C(v2, v3, va);
}

void *OUTLINED_FUNCTION_61_24()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 184), v0);
}

uint64_t OUTLINED_FUNCTION_61_25()
{
  v6 = (v3 + *(v4 + 68));
  *v6 = v0;
  v6[1] = v1;
  *(v3 + v2) = 0;

  return type metadata accessor for ResponseFactory();
}

__n128 OUTLINED_FUNCTION_61_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  a1[1] = a21;
  return result;
}

uint64_t sub_1DCB8BBF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DCB8BC38(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCB8BCD0(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DCB8BCE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_1DCB8BD60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_state;
  swift_beginAccess();
  sub_1DCB8BE08(a1, v1 + v3);
  swift_endAccess();
  sub_1DCB8BE6C();
}

uint64_t SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 16) = a4;
  return v4;
}

uint64_t sub_1DCB8BE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtectedAppCheck.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DCB8BE6C()
{
  v0 = type metadata accessor for ProtectedAppCheck.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCB8C088@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 batchSlotResolutionResult];
  sub_1DCB36A4C();
  v6 = v5;

  if (!v6)
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_93_8();
    v13 = 0xD000000000000037;
LABEL_7:
    *a2 = CommandFailure.init(errorCode:reason:)(v11, v13, v12);
    goto LABEL_8;
  }

  result = [a1 batchSlotResolutionResult];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1DCB359BC();
  v10 = v9;

  if (!v10)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v13 = v14 + 12;
    v12 = v6 | 0x8000000000000000;
    v11 = -1;
    goto LABEL_7;
  }

  *a2 = v6;
  a2[1] = v10;
  type metadata accessor for ResolveConfirmProcessingResult();
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCB8C254()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB8C338(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCB8C3D4(a1);
}

uint64_t sub_1DCB8C3D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB8C3E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_129_2();
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB8C4E4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 24) + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_76_6(v2);
  *v3 = v4;
  v3[1] = sub_1DCB8C57C;
  v5 = *(v0 + 16);

  return sub_1DCB4DF50(v5);
}

uint64_t sub_1DCB8C580(uint64_t a1)
{
  v2 = sub_1DD0DB04C();

  return __swift_getEnumTagSinglePayload(a1, 4, v2);
}

uint64_t sub_1DCB8C5C4(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCB8C5EC()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 216);
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_statuses;
  OUTLINED_FUNCTION_156();
  v5 = *(v1 + v4);
  v6 = *(v3 + 32);

  v6(v1, v5, v2, v3);

  if (*(v1 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_appsRemainInaccessible) == 1)
  {
    v7 = *(v0 + 216);
  }

  else
  {
    v7 = *(v0 + 216);
    v8 = *(v7 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_deviceUnlockResult + 8);
    if (v8 == 255 || (v8 & 1) == 0)
    {
      v9 = *(v1 + v4);
      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = (v9 + 48);
      v12 = v10 + 1;
      while (--v12)
      {
        v13 = *v11;
        v11 += 24;
        if (v13 == 1)
        {
          goto LABEL_10;
        }
      }

      if (*(v7 + OBJC_IVAR____TtC11SiriKitFlow17ProtectedAppCheck_noAppsRequireUnlock) == 1)
      {
LABEL_10:
        OUTLINED_FUNCTION_2_20();
        *(v7 + 16) = 0;
LABEL_11:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v14 = *(v0 + 216);
        v15 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }
    }
  }

  OUTLINED_FUNCTION_2_20();
  *(v7 + 16) = 1;
  goto LABEL_11;
}

void sub_1DCB8C8AC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);

  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1E12A6960](a2, &type metadata for ProtectedAppStatus);
    v9 = sub_1DCB10E9C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, oslog, v4, "DefaultProtectedAppCheckStrategy.protectedAppCheck called with status %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }
}

uint64_t sub_1DCB8CA44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DCB8CA94()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v1 + 176);
  v6 = *(v1 + 160);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1DCB8CBB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB8CC98()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCB8CCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for GuardFlowResult;
  result = OUTLINED_FUNCTION_156();
  *a2 = *(a1 + 16);
  return result;
}

void sub_1DCB8CD48(_BYTE *a1)
{
  if (*a1)
  {
    v1 = -4;
  }

  else
  {
    v1 = 0;
  }

  sub_1DCB87830(0, v1);
}

void sub_1DCB8CD88(__n128 a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DD0DEB3C())
  {
    a1.n128_u64[0] = 136315650;
    v35 = a1;
    a1.n128_u64[0] = 136315138;
    v34 = a1;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12A72C0](0, v4);
      if (!*(a3 + 16) || (v9 = *(v7 + 32), v10 = *(v7 + 40), , v11 = sub_1DCB21038(v9, v10), v13 = v12, , (v13 & 1) == 0))
      {
LABEL_21:
        sub_1DD0DCF8C();
      }

      v14 = *(*(a3 + 56) + 8 * v11);
      v15 = sub_1DCB08B14(v14);
      a3 = v14 & 0xC000000000000001;

      v16 = 0;
      v4 = &selRef_setResetFlowTaskState_;
      do
      {
        if (v15 == v16)
        {
          goto LABEL_20;
        }

        if (a3)
        {
          v17 = MEMORY[0x1E12A72C0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          __break(1u);
          goto LABEL_41;
        }

        v19 = [v17 resolutionResultCode];

        ++v16;
      }

      while (v19 != 3);
      v20 = *(*(v7 + 16) + 16);
      v21 = sub_1DCB08B14(v14);
      if (v20 == v21)
      {
LABEL_20:

        goto LABEL_21;
      }

      v22 = v21;
      if (*(*(v7 + 16) + 16))
      {
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v23 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v23, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      if (!v21)
      {

        v25 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v37 = MEMORY[0x1E69E7CC0];
      sub_1DCE06B48();
      if ((v22 & 0x8000000000000000) == 0)
      {
        v36 = v7;
        v24 = 0;
        v25 = v37;
        v26 = v22;
        do
        {
          if (a3)
          {
            v27 = MEMORY[0x1E12A72C0](v24, v14);
          }

          else
          {
            v27 = *(v14 + 8 * v24 + 32);
          }

          v28 = v27;
          v29 = [v27 *(v4 + 464)] == 0;

          v30 = *(v37 + 16);
          if (v30 >= *(v37 + 24) >> 1)
          {
            sub_1DCE06B48();
          }

          ++v24;
          *(v37 + 16) = v30 + 1;
          *(v37 + v30 + 32) = 2 * v29;
          v4 = 0x1E864F000;
        }

        while (v26 != v24);

        v7 = v36;
LABEL_37:
        v31 = *(v7 + 32);
        v32 = *(v7 + 40);
        v33 = *(v7 + 24);
        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v31, v32, v33, v25);

        sub_1DD0DCF8C();
      }

      __break(1u);
      return;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v4 + 32);
      sub_1DD0DCF8C();
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }
}

id sub_1DCB8D4CC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void *sub_1DCB8D4D8()
{
  v1 = v0;
  v2 = *(v0 + 280);
  if (v2 <= 0xFB)
  {
    v6 = *(v1 + 272);
    sub_1DCB8D4CC(v6, v2 & 1);
  }

  else
  {
    sub_1DD0DEC1C();

    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    sub_1DCB87A3C(v3, v4);
    v5 = sub_1DCC1F6F4(v3, v4);
    MEMORY[0x1E12A6780](v5);

    sub_1DCC20BCC();
    v6 = OUTLINED_FUNCTION_34();
    *v7 = 0xD00000000000002ALL;
    v7[1] = 0x80000001DD114450;
  }

  return v6;
}

void *sub_1DCB8D5C0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  result = sub_1DCB8D4D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1DCB8D62C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14_23();
  v11 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  if (!OUTLINED_FUNCTION_16_13() || v51 == 255)
  {
    OUTLINED_FUNCTION_27_11();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    v16 = OUTLINED_FUNCTION_59_0(v15, qword_1EDE57E00);
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v17))
    {
      OUTLINED_FUNCTION_43_0();
      v18 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v18);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3140, &qword_1DD0E92B8);
      v19 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v19, v20);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v52 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v21 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v21, v22);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v23, v24, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v15);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        v37 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v37);
        *v49 = 136315650;
        v38 = OUTLINED_FUNCTION_45_6();
        OUTLINED_FUNCTION_58_5(v38, v39);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v40 = OUTLINED_FUNCTION_21_7();
        *(v49 + 24) = sub_1DCB10E9C(v40, v41, v42);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v43, v44, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v45 = OUTLINED_FUNCTION_13_18();
      v46(v45);
    }

    v47 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v47, v48);
  }

  v52 = v50;
  v53 = v51 & 1;
  v1(&v52);
  sub_1DCB5524C(v50, v51);
  OUTLINED_FUNCTION_49();
}

void sub_1DCB8D960(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DCB8DA04(a1, a2);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  v11 = *(v6 + 96);
  v12 = *(v6 + 104);
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  v13 = *(v6 + 112);
  *(v6 + 112) = 0;
  sub_1DD0DCF8C();
}

void sub_1DCB8D9FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCB8D62C();
}

uint64_t sub_1DCB8DA04(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCB8DA54(a1, a2);
  return v4;
}

uint64_t sub_1DCB8DA54(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 4;
  return v2;
}

void sub_1DCB8DA98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(*a2 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for RCHFlowAsync.State();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = &v16 - v12;
  if (*(a1 + 8) == 1)
  {
    v14 = *a1;
    *v13 = *a1 | 0x4000000000000000;
    *(v13 + 8) = xmmword_1DD0E5100;
    swift_storeEnumTagMultiPayload();
    v15 = v14;
    sub_1DCB7C864(v13);
  }

  *v13 = a3;
  *(v13 + 1) = a4;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t ProtectedAppCheck.__deallocating_deinit()
{
  ProtectedAppCheck.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB8DC6C(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCB8DCDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCB8DD78(a1);
}

uint64_t sub_1DCB8DD78(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB8DDC0, 0, 0);
}

void sub_1DCB8DDC0()
{
  v47 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[11] = OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_137();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v4);
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v10 = v0[9];

  v11 = *v10;
  v12 = v10 + *(*v10 + 152);
  v13 = *v12;
  v0[12] = *v12;
  v14 = *(v12 + 8);
  v0[13] = v14;
  v15 = *(v12 + 16);
  v0[14] = v15;
  v16 = *(v12 + 24);
  v0[15] = v16;
  v17 = *(v12 + 32);
  v0[16] = v17;
  switch(*(v12 + 40))
  {
    case 0:
      OUTLINED_FUNCTION_3_105();
      sub_1DCB3C2E8(v18, v19, v20, v21, v22, 0);
      sub_1DD0DCF8C();
    case 1:
      sub_1DCF2F3D4(*(v0[9] + *(v11 + 104)), *(v0[10] + 80), *(v0[10] + 88));
    case 7:
      sub_1DCB8E3C0(v13, v14);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v24))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_241(&dword_1DCAFC000, v25, v26, "ResolveConfirmFlow processing complete. Exiting");
        OUTLINED_FUNCTION_80();
      }

      v27 = v0[8];
      OUTLINED_FUNCTION_3_105();
      v33 = 7;
      goto LABEL_14;
    case 8:
      v34 = v13;
      v23 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v35))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_241(&dword_1DCAFC000, v36, v37, "ResolveConfirmFlow is in an error state. Exiting");
        OUTLINED_FUNCTION_80();
      }

      v38 = v0[8];
      OUTLINED_FUNCTION_3_105();
      v33 = 8;
LABEL_14:
      sub_1DCB150B8(v28, v29, v30, v31, v32, v33);
      goto LABEL_15;
    case 9:
      if (v14 | v13 | v15 | v16 | v17)
      {
        goto LABEL_17;
      }

      v23 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_137();
      if (os_log_type_enabled(v23, v42))
      {
        v43 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v43);
        OUTLINED_FUNCTION_120(&dword_1DCAFC000, v44, v45, "ResolveConfirmFlow intent is cancelled. Exiting");
        OUTLINED_FUNCTION_92_0();
        sub_1DCB150B8(0, 0, 0, 0, v17, 9);
      }

      v46 = v0[8];
LABEL_15:

      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X1, X16 }

      return;
    default:
LABEL_17:
      v39 = v0[9];
      sub_1DD0DCF8C();
  }
}

id sub_1DCB8E3C0(id result, unsigned __int8 a2)
{
  if ((a2 >> 6) <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1DCB8E460(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v19 = a3;
  v20 = v5;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v15 = v10[4];
  v16 = *(v10 + 40);
  v17 = v10[6];
  v21 = type metadata accessor for NeedsValueFlowStrategyAdapter();
  (*(v6 + 16))(v9, v19, a4);
  v22 = v11;
  v23 = v12;
  v24 = v14;
  v25 = v13;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB8E6F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v4[8] = *a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB8E840, 0, 0);
}

uint64_t sub_1DCB8E7E8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DCB8E9B0(a1, a2, a3);
  return v9;
}

void sub_1DCB8E840()
{
  OUTLINED_FUNCTION_125();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v0[10] = *(v3 + 16);
  v0[11] = *(v3 + 24);
  v4 = *(*v2 + 96);
  v5 = *(v1 + 80);
  v6 = *(*(*(v1 + 88) + 8) + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB8E9B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v16 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(*v3 + 96);
  OUTLINED_FUNCTION_112(*(*v3 + 80));
  (*(v10 + 32))(v3 + v11);
  OUTLINED_FUNCTION_66();
  v13 = v3 + *(v12 + 104);
  *v13 = *a2;
  *(v13 + 16) = v16;
  *(v13 + 32) = v6;
  *(v13 + 40) = v7;
  *(v13 + 48) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v14 + 112));
  return v3;
}

uint64_t sub_1DCB8EAD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)(a1, a2, a3, a4);
  return v11;
}

void PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DD0DB04C();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  v17 = *(v13 + 8);
  v18 = OUTLINED_FUNCTION_76_13();
  v19(v18);
  v4[8] = sub_1DCB598EC(8);
  v4[9] = v20;
  v4[10] = v21;
  v4[11] = v22;
  v23 = *(*v4 + 112);
  v24 = *(v9 + 80);
  OUTLINED_FUNCTION_24_17();
  type metadata accessor for PromptForValueFlowAsync.State();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_17();
  type metadata accessor for AnyPromptForValueFlowStrategy();
  v5[2] = sub_1DCB8EDB0(a1, a3, a4);
  sub_1DCAFF9E8(a2, (v5 + 3));
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB8EDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_12();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_52_1();
  sub_1DCB15440(v6, a2, a3);
  return v3;
}

uint64_t sub_1DCB8EDFC()
{
  OUTLINED_FUNCTION_42();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  v1[12] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_38();
  v10 = sub_1DD0DD85C();
  v1[14] = v10;
  OUTLINED_FUNCTION_99(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v14 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DCB8EED8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[17] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v10 = v0[16];
  v11 = sub_1DD0DD88C();
  v0[18] = __swift_project_value_buffer(v11, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_103_8();
  sub_1DCB70034(v12, v13, v14, v15);
  v0[19] = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v17;
  *v17 = v18;
  v17[1] = sub_1DCB8C254;
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[7];

  return sub_1DCB8F054((v0 + 2), v21, v19);
}

uint64_t sub_1DCB8F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB8F06C()
{
  OUTLINED_FUNCTION_41();
  if (*(v0[14] + 80) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_62();
    }

    v10 = v0[15];

    v11 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v12 = swift_task_alloc();
    v0[16] = v12;
    sub_1DCB10E5C(0, &qword_1EDE460D0, 0x1E69C7870);
    OUTLINED_FUNCTION_45_22();
    *v12 = v13;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submitToCompanion<A>(_:)();
  }

  else
  {
    if (sub_1DCB610F0())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v16 = v0[14];
      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_29(v0[15]);
    v18 = swift_task_alloc();
    v0[21] = v18;
    sub_1DCB10E5C(0, &qword_1EDE460D0, 0x1E69C7870);
    OUTLINED_FUNCTION_45_22();
    *v18 = v19;
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_48();

    return AceServiceInvokerAsync.submit<A>(_:)();
  }
}

uint64_t PromptForValueFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = *(v3 + 80);
  v8 = *(OUTLINED_FUNCTION_80_9() - 8);
  OUTLINED_FUNCTION_24_0();
  v1[10] = v9;
  v11 = *(v10 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCB8F4D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PromptForValueFlowAsync.execute()();
}

uint64_t sub_1DCB8F56C()
{
  v80 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = *(*v4 + 112);
  OUTLINED_FUNCTION_156();
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DCC333DC(v0[12], v0[8]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v6 = v0[7];
      v7 = v0[8];
      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      OUTLINED_FUNCTION_13_57();
      sub_1DCB2479C(v7, v6, v9);
      v10 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6DC();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[7];
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v79 = v15;
        *v14 = 136315138;
        v16 = Input.description.getter();
        v18 = v17;
        OUTLINED_FUNCTION_6_60();
        sub_1DCB28690(v13, v19);
        v20 = sub_1DCB10E9C(v16, v18, &v79);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_1DCAFC000, v10, v11, "PromptForValueFlow parsing response from user: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_6_60();
        sub_1DCB28690(v13, v72);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[17] = v73;
      *v73 = v74;
      v73[1] = sub_1DCE8B7B8;
      v75 = v0[8];
      v76 = v0[5];
      v77 = v0[6];
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C6BC();
      break;
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v36 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v38))
      {
        v39 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v39);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[19] = v45;
      *v45 = v46;
      OUTLINED_FUNCTION_41_0(v45);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8CE8C();
      break;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v23 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v26);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[13] = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_41_0(v32);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C2B8();
      break;
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v48 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v50))
      {
        v51 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v51);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v52, v53, v54, v55, v56, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[21] = v57;
      *v57 = v58;
      OUTLINED_FUNCTION_41_0(v57);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8D0B4();
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v60 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v60, qword_1EDE57E00);
      v61 = sub_1DD0DD8EC();
      v62 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v62))
      {
        v63 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v63);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[15] = v69;
      *v69 = v70;
      OUTLINED_FUNCTION_41_0(v69);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE8C3E0();
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v21 = v0[6];
      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCB8FD3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB92594;

  return sub_1DCB8FDD8(a1);
}

uint64_t sub_1DCB8FDD8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB8FE20, 0, 0);
}

uint64_t sub_1DCB8FE20()
{
  v1 = v0[10];
  v2 = *(v1 + 64);
  v0[12] = v2;
  v3 = *(v1 + 72);
  v0[13] = v3;
  v4 = *(v1 + 80);
  v0[14] = v4;
  v5 = *(v1 + 88);
  v0[15] = v5;
  v6 = *(v1 + 96);
  v0[16] = v6;
  v7 = *(v1 + 104);
  v0[17] = v7;
  switch(*(v1 + 112))
  {
    case 0:
      v8 = OUTLINED_FUNCTION_5_98();
      sub_1DCB903F8(v8, v9, v10, v11, v12, v13, 0);
      sub_1DD0DCF8C();
    case 2:
      sub_1DCF349BC(v2, v3, v4, v5);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v16, v29))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_30_37(&dword_1DCAFC000, v30, v31, "RouteResolutionResultFlow in state complete. Exiting.");
        OUTLINED_FUNCTION_80();
      }

      v32 = v0[9];
      v21 = OUTLINED_FUNCTION_5_98();
      v27 = 2;
      goto LABEL_13;
    case 3:
      v14 = v2;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v16, v17))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_30_37(&dword_1DCAFC000, v18, v19, "RouteResolutionResultFlow in an error state. Exiting.");
        OUTLINED_FUNCTION_80();
      }

      v20 = v0[9];
      v21 = OUTLINED_FUNCTION_5_98();
      v27 = 3;
LABEL_13:
      sub_1DCB17238(v21, v22, v23, v24, v25, v26, v27);

      goto LABEL_26;
    case 4:
      if (v2 != 1 || (v4 | v3 | v5 | v6 | v7) != 0)
      {
        goto LABEL_18;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_182();
      if (os_log_type_enabled(v36, v37))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_31_28(&dword_1DCAFC000, v38, v39, "RouteResolutionResultFlow in state cancelled. Exiting.");
        OUTLINED_FUNCTION_80();
        sub_1DCB17238(1, 0, 0, v5, v6, v7, 4);
      }

      v40 = v0[9];

LABEL_26:
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();

      return v41();
    default:
LABEL_18:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
        v43 = v0[10];
      }

      v34 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v34, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

id sub_1DCB903F8(id result, id a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
      sub_1DD0DCF8C();
    case 1:
      sub_1DD0DCF8C();
    case 2:

      result = sub_1DCF349BC(result, a2, a3, a4);
      break;
    case 3:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCB904E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCB90534, 0, 0);
}

uint64_t sub_1DCB90534()
{
  v66 = v0;
  v2 = v0[5];
  v3 = v2[4];
  v4 = v2[5];
  v0[8] = v4;
  v5 = v2[3];

  v6 = sub_1DCB90DA0(v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v63 = v6 & 0xC000000000000001;
    v64 = sub_1DCB08B14(v6);
    v62 = v7 & 0xFFFFFFFFFFFFFF8;
    v59 = v4;
    v61 = v7;
    while (1)
    {
      if (v64 == v8)
      {

        OUTLINED_FUNCTION_28_31();
        if (!v12)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v51 = v3;
        v52 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v52, qword_1EDE57E00);
        v53 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_182();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = OUTLINED_FUNCTION_50_0();
          *v55 = 0;
          _os_log_impl(&dword_1DCAFC000, v53, v5, "Results did not require requesting any further values from the user. Transitioning to complete.", v55, 2u);
          OUTLINED_FUNCTION_80();
        }

        v56 = v0[6];
        v57 = v0[3];

        v50 = *(v56 + 64);
        v43 = *(v56 + 72);
        v45 = *(v56 + 80);
        v46 = *(v56 + 88);
        v47 = *(v56 + 96);
        v48 = *(v56 + 104);
        *(v56 + 64) = v51;
        *(v56 + 72) = v4;
        *(v56 + 80) = v9;
        *(v56 + 88) = 0;
        *(v56 + 96) = 0;
        *(v56 + 104) = 0;
        v49 = *(v56 + 112);
        *(v56 + 112) = 2;
        goto LABEL_39;
      }

      if (v63)
      {
        v10 = MEMORY[0x1E12A72C0](v8, v7);
      }

      else
      {
        if (v8 >= *(v62 + 16))
        {
          goto LABEL_43;
        }

        v10 = *(v7 + 8 * v8 + 32);
      }

      v1 = v10;
      v0[9] = v10;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        OUTLINED_FUNCTION_1_2();
        swift_once();
LABEL_28:
        v23 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);

        v24 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_62_0())
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v65 = v26;
          *v25 = 136315394;
          *(v25 + 4) = sub_1DCB10E9C(v3, v59, &v65);
          *(v25 + 12) = 2048;
          *(v25 + 14) = v8;
          OUTLINED_FUNCTION_32_29(&dword_1DCAFC000, v27, v28, "RouteResolutionResultFlow in state resolveParameter for parameter name='%s' index=%ld.");
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          v4 = v59;
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_37();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        v0[10] = v29;
        *v29 = v30;
        v29[1] = sub_1DCB921CC;
        v31 = v0[6];
        v32 = v0[3];
        v33 = v0[4];

        return sub_1DCB91174(v32, v33, v1, v3, v4, v8);
      }

      v11 = [v10 resolutionResultCode];
      v9 = v11;
      if (v11 == 5)
      {
        break;
      }

      v12 = (v11 - 1) < 4 || v11 == 6;
      if (v12)
      {

        OUTLINED_FUNCTION_28_31();
        if (!v12)
        {
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_28_31();
      if (!v12)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v13 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
      v1 = v1;
      v5 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6DC();

      if (OUTLINED_FUNCTION_62_0())
      {
        v15 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v15 = 136315138;
        v0[2] = [v1 resolutionResultCode];
        type metadata accessor for INResolutionResultCode(0);
        v16 = sub_1DD0DE02C();
        v18 = sub_1DCB10E9C(v16, v17, &v65);
        v7 = v61;

        *(v15 + 4) = v18;
        v4 = v59;
        _os_log_impl(&dword_1DCAFC000, v5, v14, "Found a resolution result '%s' that didn't need dialog, looking at the next one", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        goto LABEL_21;
      }

LABEL_24:
      ++v8;
    }

    OUTLINED_FUNCTION_28_31();
    if (!v12)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);

    v5 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();

    if (OUTLINED_FUNCTION_62_0())
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v65 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DCB10E9C(v3, v4, &v65);
      _os_log_impl(&dword_1DCAFC000, v5, v20, "Result code .notRequired should nil out the parameter value for %s. This is handled elsewhere. ", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v7 = v61;
LABEL_21:
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    goto LABEL_24;
  }

  v35 = v3;
  v37 = v0[6];
  v36 = v0[7];
  v38 = v0[3];
  v39 = *(v36 + 80);
  v40 = *(v36 + 88);
  type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError();
  OUTLINED_FUNCTION_1_117();
  swift_getWitnessTable();
  v41 = OUTLINED_FUNCTION_34();
  *v42 = v35;
  *(v42 + 8) = v4;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0;
  v44 = *(v37 + 64);
  v43 = *(v37 + 72);
  v45 = *(v37 + 80);
  v46 = *(v37 + 88);
  v47 = *(v37 + 96);
  v48 = *(v37 + 104);
  *(v37 + 64) = v41;
  *(v37 + 72) = 0u;
  *(v37 + 88) = 0u;
  *(v37 + 104) = 0;
  v49 = *(v37 + 112);
  *(v37 + 112) = 3;
  v50 = v44;
LABEL_39:
  sub_1DCB17238(v50, v43, v45, v46, v47, v48, v49);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v58();
}

uint64_t sub_1DCB90B4C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v4[13] = v0;

  OUTLINED_FUNCTION_92_6();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB90C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DCB21038(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_14(v3);
}

uint64_t sub_1DCB90CAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_28_21();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1DCB91D68;
  v2 = v0[10];
  v3 = OUTLINED_FUNCTION_4_76(v0[9]);

  return sub_1DCB90DA8(v3, v4, v5, v6, v7);
}

double sub_1DCB90D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_16(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1DCB21038(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 32 * v9;

    sub_1DCB0DF6C(v11, v3);
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DCB90DA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = v5;
  *(v6 + 88) = a1;
  *(v6 + 96) = a3;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  *(v6 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 152) = *a2;
  *(v6 + 153) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1DCB90E60, 0, 0);
}

uint64_t sub_1DCB90E60()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_1DCB651D0(v2))
  {
    v22 = *(v0 + 153);
    v17 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 112);
    v20 = *(v0 + 104);
    v21 = *(v0 + 120);
    v19 = *(v0 + 96);
    v5 = (v4 + *(*v4 + 112));
    v6 = (v4 + *(*v4 + 104));
    v7 = [v6[1] typeName];
    v8 = sub_1DD0DDFBC();
    v10 = v9;

    v11 = *v6;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v12 = v6[2];
    v13 = v6[3];
    v18 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for SiriKitEvent(0);
    *v3 = v17;
    *(v3 + 8) = v8;
    *(v3 + 16) = v10;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = v11;
    sub_1DCB17C3C(v0 + 56, v3 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    sub_1DCB17C3C(v0 + 16, v3 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v3 + 136) = v12;
    *(v3 + 144) = v13;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
    *(v3 + 168) = v19;
    *(v3 + 176) = v20;
    *(v3 + 184) = v22;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  v14 = *(v0 + 128);

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCB91174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[42] = a6;
  v7[43] = v6;
  v7[40] = a4;
  v7[41] = a5;
  v7[38] = a2;
  v7[39] = a3;
  v7[37] = a1;
  v7[44] = *v6;
  return MEMORY[0x1EEE6DFA0](sub_1DCB911C8, 0, 0);
}

void sub_1DCB911C8()
{
  v8 = v0;
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  sub_1DD0DCF8C();
}

uint64_t ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = 0;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1DCB9199C(uint64_t a1)
{
  *(v2 + 448) = v1;
  *(v2 + 456) = *v1;
  OUTLINED_FUNCTION_72_15(a1);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB919EC()
{
  v1 = (v0 + 368);
  OUTLINED_FUNCTION_36_30();
  OUTLINED_FUNCTION_24_28();
  if (!v2 && *(v0 + 16))
  {
    v3 = *(v0 + 448);
    v4 = *(v0 + 24);
    v13 = *v1;
    v14 = *(v0 + 384);
    v15 = *(v0 + 400);
    v16 = *(v0 + 416);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_39_23(*(v0 + 448));
  OUTLINED_FUNCTION_23_24();
  if (!v2)
  {
    v5 = *(v0 + 192);
    *(v0 + 464) = v5;
    if (v5)
    {
      v7 = *(v0 + 448);
      v6 = *(v0 + 456);
      v8 = *(v0 + 200);
      *(v0 + 472) = v8;
      v9 = swift_task_alloc();
      *(v0 + 480) = v9;
      v9[2] = v5;
      v9[3] = v8;
      v9[4] = v7;
      v9[5] = v1;
      v10 = *(MEMORY[0x1E69E88D0] + 4);
      sub_1DD0DCF8C();
    }
  }

  v11 = *(v0 + 448);
  v12 = *(*(v0 + 456) + 80);
  type metadata accessor for IntentPromptAnswer();
  sub_1DCEB86C0(0x6C6156736465654ELL, 0xEE00776F6C466575);
}

uint64_t sub_1DCB91C14()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  *v3 = *v0;

  sub_1DCB16DB0((v2 + 2), &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16DB0((v2 + 7), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v7 = v1[16];

  v8 = v6[1];

  return v8();
}

uint64_t sub_1DCB91D68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

unint64_t DialogEngineOutput.description.getter()
{
  result = 0x656E6F6E2ELL;
  switch(*(v0 + 72))
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void *sub_1DCB91EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FE2C0;
}

void OUTLINED_FUNCTION_122_0()
{

  sub_1DCBC61E8();
}

uint64_t OUTLINED_FUNCTION_122_3()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return swift_slowAlloc();
}

uint64_t sub_1DCB91FF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 424);
  *v2 = *v0;
  *(v1 + 432) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCB920EC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 432);
  OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C();
}

uint64_t sub_1DCB921CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB922D0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB92328()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB92410()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  sub_1DCB17238(v6, v5, v4, v3, v1, v2, 0);
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCB924B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCB925C8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_37_5(a1);
}

void sub_1DCB92634(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DCB92668();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1DCB926AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCBB62F0();
  *a1 = result;
  return result;
}

uint64_t sub_1DCB9276C(uint64_t *a1, uint64_t a2, int *a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    v9 = OUTLINED_FUNCTION_11_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = sub_1DD0DD15C();
      v14 = OUTLINED_FUNCTION_11_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
        v12 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1DCB92938()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92974()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_135();

  return swift_deallocObject();
}

uint64_t sub_1DCB929A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB929DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 6);
  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB92A20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 4);
  v2 = v0[10];

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB92A8C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB92AC0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm_0(v0 + 6);
  v3 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1DCB92B58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB92BCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for GuardFlowResult;
  *a2 = *(result + 16);
  return result;
}

id sub_1DCB92D90(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DCB92DA4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_135();

  return swift_deallocObject();
}

uint64_t sub_1DCB92DEC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92E44()
{
  OUTLINED_FUNCTION_122_1((v0 + 16));
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB92E74()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB92F58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCBFA8FC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *_s11SiriKitFlow21ActionGroupTransitionOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBFAABC(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCB93008()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 56);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB930BC()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB93158()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1DCB93428()
{
  OUTLINED_FUNCTION_18_8();
  v3 = type metadata accessor for RelationshipLabel();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCB934BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = type metadata accessor for RelationshipLabel();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCB935BC()
{
  OUTLINED_FUNCTION_18_8();
  v3 = sub_1DD0DBD0C();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCB9364C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = sub_1DD0DBD0C();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCB93704()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCB93744()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _s11SiriKitFlow23AppConfirmationResponseC21AppConfirmationActionOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC103A8(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s11SiriKitFlow25AppDisambiguationResponseC23AppDisambiguationActionOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCC15D8C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

unint64_t *_s11SiriKitFlow23AppResolutionFlowResultOwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCBF4C98(*a2);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCB93B0C()
{
  v1 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB93D24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB93E24()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB93E70()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  if (*(v0 + 104) >= 3uLL)
  {
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_1DCB93F10()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1DCB93FA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCB94000()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  if (*(v0 + 136) >= 3uLL)
  {
  }

  v10 = *(v0 + 144);

  v11 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1DCB940A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  if (*(v0 + 96) >= 3uLL)
  {
  }

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);
  swift_unknownObjectRelease();

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_1DCB9418C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 144);

  return swift_deallocObject();
}

uint64_t sub_1DCB94224()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88) >= 3uLL)
  {
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);
  swift_unknownObjectRelease();

  v10 = *(v0 + 136);

  v11 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1DCB942E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCB9437C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void **_s11SiriKitFlow19AppShortcutProviderVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_1DCB94460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB944F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1DCB9458C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB945C4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1DCB9460C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1DCB946AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_1DCB94738(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t *_s11SiriKitFlow26AuthenticationRequirementsVwta_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DCB94860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCB7A558(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DCB94890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCB94774(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DCB948E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s11SiriKitFlow28AuthoredValueProvidingResultV32AuthoredValueProvidingResultTypeOwCP_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_17(a1, a2);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t _s11SiriKitFlow28AuthoredValueProvidingResultV32AuthoredValueProvidingResultTypeOwta_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCC5F884(v4, v5);
  return a1;
}

uint64_t sub_1DCB94F08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB94FF8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 64);
  v29 = *(v0 + 80);
  v30 = *(v0 + 96);
  v6 = type metadata accessor for CombineAll5();
  OUTLINED_FUNCTION_37_13(v6);
  v27 = *(v8 + 64);
  v9 = v0 + ((*(v7 + 80) + 104) & ~*(v7 + 80));
  OUTLINED_FUNCTION_112(v3);
  (*(v10 + 8))(v9, v3);
  v11 = OUTLINED_FUNCTION_23_9();
  v12 = v11[12];
  OUTLINED_FUNCTION_7_24();
  (*(v13 + 8))(v9 + v14, v2);
  v15 = v11[16];
  OUTLINED_FUNCTION_7_24();
  (*(v16 + 8))(v9 + v17, v5);
  v18 = v11[20];
  OUTLINED_FUNCTION_7_24();
  (*(v19 + 8))(v9 + v20, v4);
  v21 = v11[24];
  OUTLINED_FUNCTION_7_24();
  (*(v22 + 8))(v9 + v23, v26);
  v24 = *(v9 + *(v1 + 116) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB951F4()
{
  v1 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_1DCB9522C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v30 = *(v0 + 56);
  v32 = *(v0 + 72);
  v33 = *(v0 + 88);
  v34 = *(v0 + 104);
  v7 = type metadata accessor for CombineAll6();
  OUTLINED_FUNCTION_37_13(v7);
  v31 = *(v9 + 64);
  v10 = v0 + ((*(v8 + 80) + 120) & ~*(v8 + 80));
  OUTLINED_FUNCTION_112(v3);
  (*(v11 + 8))(v10, v3);
  v12 = OUTLINED_FUNCTION_22_13();
  v13 = v12[12];
  OUTLINED_FUNCTION_7_24();
  (*(v14 + 8))(v10 + v15, v2);
  v16 = v12[16];
  OUTLINED_FUNCTION_7_24();
  (*(v17 + 8))(v10 + v18, v5);
  v19 = v12[20];
  OUTLINED_FUNCTION_7_24();
  (*(v20 + 8))(v10 + v21, v4);
  v22 = v12[24];
  OUTLINED_FUNCTION_7_24();
  (*(v23 + 8))(v10 + v24, v6);
  v25 = v12[28];
  OUTLINED_FUNCTION_7_24();
  (*(v26 + 8))(v10 + v27, v30);
  v28 = *(v10 + *(v1 + 132) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB95464()
{
  v1 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_1DCB95534(uint64_t a1)
{
  v1 = *(a1 + 40);
  type metadata accessor for NeverPlan();
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB95568(uint64_t a1)
{
  v1 = *(a1 + 48);
  type metadata accessor for NeverPlan();
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB955D8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB95610()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9568C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB956C0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB956F4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB95730()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9577C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB957B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB95958()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB95990()
{
  if (*(v0 + 16) >= 2uLL)
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB959D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC85F94();
  *a2 = result;
  return result;
}

uint64_t sub_1DCB95AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB95B34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCB95C90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

void *sub_1DCB95D78(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = v3;
  }

  *a1 = v3;
  return a1;
}

void sub_1DCB960DC(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCC334C8(a1, a2, SBYTE1(a2));
  }
}

void sub_1DCB96104(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1DCBB12E0(a1, a2, SBYTE1(a2));
  }
}

uint64_t sub_1DCB9614C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB96184()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  if (v0[11] >= 3uLL)
  {
  }

  v7 = v0[12];

  v8 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1DCB9620C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_1DCB96290()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCB962D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB96318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC9DE98();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCB9638C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB963C4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for USOKeyPath() - 8);
  v5 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v6 = *(v2 - 8);
  v7 = (v5 + *(*v4 + 64) + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = &v0[v5];
  v10 = *&v0[v5 + 8];

  v11 = *(v9 + 3);

  v12 = *(v9 + 5);

  v13 = *(v6 + 8);
  v13(&v9[v4[15]], v2);
  v14 = *&v9[v4[16] + 8];

  v15 = *&v9[v4[17] + 8];

  v13(&v0[v7], v2);

  return swift_deallocObject();
}

uint64_t sub_1DCB96544()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCB96580(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCCA3578(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB965CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return swift_deallocObject();
}

uint64_t sub_1DCB96638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB96690(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_1DCB966D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConfirmIntentAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB969B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1DCB96A18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB96A68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB96AB8()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1DCB96B08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1DCB96B68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB96BA8()
{
  v2 = type metadata accessor for Input(0);
  v3 = (*(*(v2 - 1) + 80) + 80) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 40);

  v7 = *(v0 + 72);

  v8 = v0 + v3;
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1(v9);
  (*(v10 + 8))(v0 + v3);
  v11 = (v0 + v3 + v2[5]);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v12 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v25 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v25);
      (*(v26 + 8))(v11);
      v27 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v14 = *(v11 + 1);

      v15 = *(v11 + 2);
      goto LABEL_17;
    case 3u:
      v16 = *v11;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v12 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v28 = *v11;
      goto LABEL_23;
    case 6u:
      v29 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v29);
      (*(v30 + 8))(v11);
      v31 = type metadata accessor for USOParse();
      v32 = *(v31 + 20);
      v33 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v33))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v34 + 8))(&v11[v32], v1);
      }

      v24 = *(v31 + 24);
      goto LABEL_16;
    case 7u:
      v17 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v17);
      (*(v18 + 8))(v11);
      v19 = type metadata accessor for USOParse();
      v20 = *(v19 + 20);
      v21 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v21))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v22 + 8))(&v11[v20], v1);
      }

      OUTLINED_FUNCTION_9_23(*(v19 + 24));

      v23 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_9_23(v23[5]);

      OUTLINED_FUNCTION_9_23(v23[6]);

      v24 = v23[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v24);
LABEL_17:

      break;
    case 8u:
      v35 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v35);
      (*(v36 + 8))(v11);
      v37 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_9_23(v37[5]);

      v38 = &v11[v37[6]];
      v39 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v38, 1, v39))
      {
        v40 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v40);
        (*(v41 + 8))(v38);
        v52 = v39;
        v42 = *(v39 + 20);
        v43 = sub_1DD0DB3EC();
        v51 = v42;
        v44 = v38 + v42;
        v45 = v43;
        if (!__swift_getEnumTagSinglePayload(v44, 1, v43))
        {
          OUTLINED_FUNCTION_112(v45);
          (*(v46 + 8))(v38 + v51, v45);
        }

        v47 = *(v38 + *(v52 + 24) + 8);
      }

      v28 = *&v11[v37[7]];
LABEL_23:

      break;
    case 9u:
      v12 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v12);
      (*(v13 + 8))(v11);
      break;
    default:
      break;
  }

  v48 = *(v8 + v2[6]);

  v49 = (v8 + v2[7]);
  if (v49[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB97058()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB971FC()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCB9726C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  type metadata accessor for ConfirmModifier();
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB97328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ConfirmPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB97380()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB973B8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ConfirmPlan() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = *(v5 + v3[11]);

  v7 = *(v5 + v3[12]);

  v8 = *(v5 + v3[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB974C8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB974FC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1DCB97550()
{
  v1 = *(type metadata accessor for RelationshipLabel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + v2 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v8 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1(v8);
    (*(v9 + 8))(v0 + v2 + v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB97748()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB97790()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB977DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_18_3();

  return swift_deallocObject();
}

uint64_t sub_1DCB97944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB97AA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB97BC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCB97BA8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DCB97CDC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCB97D2C()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = (type metadata accessor for USOKeyPath() - 8);
  v5 = (*(*v4 + 80) + 56) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = *(v0 + 6);

  v8 = *&v0[v5 + 8];

  v9 = *&v0[v5 + 24];

  v10 = *&v0[v5 + 40];

  (*(*(v2 - 8) + 8))(&v0[v5 + v4[15]], v2);
  v11 = *&v0[v5 + 8 + v4[16]];

  v12 = *&v0[v5 + 8 + v4[17]];

  return swift_deallocObject();
}

uint64_t sub_1DCB97E58()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1DCB97EA8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DCB98174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1DCB98214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB982A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1DCB98304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9833C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCB983AC()
{
  v1 = *(v0 + 24);

  sub_1DCD00B90(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  if (*(v0 + 176) >= 3uLL)
  {
  }

  v8 = *(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_1DCB984BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCD00FC4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCB984EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB985FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  v2 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1DCB987BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCC85F94();
  *v1 = result & 1;
  return result;
}

uint64_t _s11SiriKitFlow25ExecuteOnRemoteFlowResultOwCP_0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = OUTLINED_FUNCTION_90_3(a1, a2);
  sub_1DCD0EA14(v5, v6);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t _s11SiriKitFlow19ExecuteOnRemoteFlowC5StateOwCP_0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = OUTLINED_FUNCTION_90_3(a1, a2);
  sub_1DCD070D4(v5, v6);
  *v2 = v3;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t sub_1DCB98A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Input(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = ((4 * v8) & 0xC) == 0;
    v10 = ((4 * v8) & 0xC | (v8 >> 2)) ^ 0xF;
    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1DCB98ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Input(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1DCB98CF8()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 7);

  (*(v3 + 8))(&v0[v4], v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB98DB4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB98FF0(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    OUTLINED_FUNCTION_54_9();
    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Parse(0);
    v7 = OUTLINED_FUNCTION_59_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_1DCB9906C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for Parse(0);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCB9942C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB99474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowActionType(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB99A28(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD38250();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCB99A7C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD38324();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCB99AD0(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD383F8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCB99B24(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD3850C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCB99B50(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD385E0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCB99C44(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCD38820();
  *v1 = result;
  v1[1] = v3;
  return result;
}

char *sub_1DCB99CF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB99DF4()
{
  OUTLINED_FUNCTION_50();
  v2 = *(type metadata accessor for Parse(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = (v0 + v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v18 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v18);
      (*(v19 + 8))(v0 + v3);
      v20 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v8 = *(v5 + 1);

      v9 = *(v5 + 2);
      goto LABEL_17;
    case 3u:
      v10 = *v5;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v6 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v21 = *v5;
      goto LABEL_23;
    case 6u:
      v22 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v22);
      (*(v23 + 8))(v0 + v3);
      v24 = type metadata accessor for USOParse();
      v25 = *(v24 + 20);
      v26 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v26))
      {
        (*(*(v1 - 8) + 8))(&v5[v25], v1);
      }

      v17 = *(v24 + 24);
      goto LABEL_16;
    case 7u:
      v11 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v11);
      (*(v12 + 8))(v0 + v3);
      v13 = type metadata accessor for USOParse();
      v14 = *(v13 + 20);
      v15 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v15))
      {
        (*(*(v1 - 8) + 8))(&v5[v14], v1);
      }

      OUTLINED_FUNCTION_42_15(*(v13 + 24));

      v16 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_42_15(v16[5]);

      OUTLINED_FUNCTION_42_15(v16[6]);

      v17 = v16[7];
LABEL_16:
      OUTLINED_FUNCTION_42_15(v17);
LABEL_17:

      break;
    case 8u:
      v27 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v27);
      (*(v28 + 8))(v0 + v3);
      v29 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_42_15(v29[5]);

      v30 = &v5[v29[6]];
      v31 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v30, 1, v31))
      {
        v32 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v32);
        (*(v33 + 8))(v30);
        v34 = *(v31 + 20);
        v35 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v30 + v34, 1, v35))
        {
          (*(*(v35 - 8) + 8))(v30 + v34, v35);
        }

        v36 = *(v30 + *(v31 + 24) + 8);
      }

      v21 = *&v5[v29[7]];
LABEL_23:

      break;
    case 9u:
      v6 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v6);
      (*(v7 + 8))(v0 + v3);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_49();

  return swift_deallocObject();
}

uint64_t sub_1DCB9A208()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9A248()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9A3C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1DCB9A464(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB9A7E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCB9A818()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5038, &qword_1DD0F0CF0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9A9AC()
{
  v3 = type metadata accessor for SiriKitFlowFrameInput();
  OUTLINED_FUNCTION_8_41(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = (v1 + v5);
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v23 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v23);
      (*(v24 + 8))(v1 + v5);
      v25 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v12 = *(v9 + 1);

      v13 = *(v9 + 2);
      goto LABEL_17;
    case 3u:
      v14 = *v9;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v10 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v26 = *v9;
      goto LABEL_23;
    case 6u:
      v27 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v27);
      (*(v28 + 8))(v1 + v5);
      v29 = type metadata accessor for USOParse();
      v30 = *(v29 + 20);
      v31 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_21_19(v31))
      {
        OUTLINED_FUNCTION_112(v2);
        (*(v32 + 8))(&v9[v30], v2);
      }

      v22 = *(v29 + 24);
      goto LABEL_16;
    case 7u:
      v15 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v15);
      (*(v16 + 8))(v1 + v5);
      v17 = type metadata accessor for USOParse();
      v18 = *(v17 + 20);
      v19 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_21_19(v19))
      {
        OUTLINED_FUNCTION_112(v2);
        (*(v20 + 8))(&v9[v18], v2);
      }

      OUTLINED_FUNCTION_4_55(*(v17 + 24));

      v21 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_4_55(v21[5]);

      OUTLINED_FUNCTION_4_55(v21[6]);

      v22 = v21[7];
LABEL_16:
      OUTLINED_FUNCTION_4_55(v22);
LABEL_17:

      break;
    case 8u:
      v33 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v33);
      (*(v34 + 8))(v1 + v5);
      v35 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_4_55(v35[5]);

      v36 = &v9[v35[6]];
      v37 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v36, 1, v37))
      {
        v38 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v38);
        (*(v39 + 8))(v36);
        v40 = *(v37 + 20);
        v41 = sub_1DD0DB3EC();
        v51 = v40;
        v42 = v36 + v40;
        v43 = v41;
        if (!__swift_getEnumTagSinglePayload(v42, 1, v41))
        {
          OUTLINED_FUNCTION_112(v43);
          (*(v44 + 8))(v36 + v51, v43);
        }

        v45 = *(v36 + *(v37 + 24) + 8);
      }

      v26 = *&v9[v35[7]];
LABEL_23:

      break;
    case 9u:
      v10 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v10);
      (*(v11 + 8))(v1 + v5);
      break;
    default:
      break;
  }

  v46 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = *&v9[*(v0 + 24)];

  __swift_destroy_boxed_opaque_existential_1Tm(&v9[*(v0 + 28)]);
  v48 = *(v1 + v46);

  v49 = *(v1 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE48()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1DCB9AE90()
{
  v2 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_8_41(v2);
  v5 = *(v4 + 64);
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = *(v6 + 48);
  if (v9 <= 0xFB)
  {
    sub_1DCD21390(*(v6 + 32), *(v6 + 40), v9);
  }

  v10 = v6 + *(v0 + 36);
  v11 = type metadata accessor for PluginAction();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    v12 = *(v10 + 8);

    v13 = v10 + v11[5];
    v14 = sub_1DD0DB04C();
    OUTLINED_FUNCTION_13_1(v14);
    v97 = *(v15 + 8);
    v98 = v16;
    v97(v13);
    v17 = type metadata accessor for Input(0);
    v18 = (v13 + v17[5]);
    type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v19 = sub_1DD0DC76C();
        goto LABEL_8;
      case 1u:
        v36 = sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1(v36);
        (*(v37 + 8))(v18);
        v38 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

        break;
      case 2u:
        v21 = *(v18 + 1);

        v22 = *(v18 + 2);
        goto LABEL_20;
      case 3u:
        v23 = *v18;
        swift_unknownObjectRelease();
        break;
      case 4u:
        v19 = sub_1DD0DB1EC();
        goto LABEL_8;
      case 5u:
        v39 = *v18;
        goto LABEL_26;
      case 6u:
        v40 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v40);
        (*(v41 + 8))(v18);
        v88 = type metadata accessor for USOParse();
        v94 = *(v88 + 20);
        v42 = sub_1DD0DB3EC();
        if (!OUTLINED_FUNCTION_11_36(v42, v43, v44, v45, v46, v47, v48, v49, v77, v78, v80, v82, v88, v94))
        {
          OUTLINED_FUNCTION_112(v84);
          (*(v50 + 8))(&v18[v95]);
        }

        v35 = *(v89 + 24);
        goto LABEL_19;
      case 7u:
        v24 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v24);
        (*(v25 + 8))(v18);
        v86 = type metadata accessor for USOParse();
        v91 = *(v86 + 20);
        v26 = sub_1DD0DB3EC();
        if (!OUTLINED_FUNCTION_11_36(v26, v27, v28, v29, v30, v31, v32, v33, v77, v78, v80, v82, v86, v91))
        {
          OUTLINED_FUNCTION_112(v83);
          (*(v34 + 8))(&v18[v92]);
        }

        OUTLINED_FUNCTION_10_36(*(v87 + 24));

        v93 = type metadata accessor for LinkParse();
        OUTLINED_FUNCTION_10_36(v93[5]);

        OUTLINED_FUNCTION_10_36(v93[6]);

        v35 = v93[7];
LABEL_19:
        OUTLINED_FUNCTION_10_36(v35);
LABEL_20:

        break;
      case 8u:
        v51 = sub_1DD0DD12C();
        OUTLINED_FUNCTION_13_1(v51);
        (*(v52 + 8))(v18);
        v96 = type metadata accessor for NLRouterParse();
        OUTLINED_FUNCTION_10_36(*(v96 + 20));

        v90 = &v18[*(v96 + 24)];
        v85 = type metadata accessor for USOParse();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v85);
        v54 = v96;
        if (!EnumTagSinglePayload)
        {
          v55 = sub_1DD0DB4BC();
          OUTLINED_FUNCTION_13_1(v55);
          (*(v56 + 8))(v90);
          v81 = *(v85 + 20);
          v79 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v90 + v81, 1, v79))
          {
            OUTLINED_FUNCTION_112(v79);
            (*(v57 + 8))(v90 + v58);
          }

          v59 = *(v90 + *(v85 + 24) + 8);

          v54 = v96;
        }

        v39 = *&v18[*(v54 + 28)];
LABEL_26:

        break;
      case 9u:
        v19 = sub_1DD0DD08C();
LABEL_8:
        OUTLINED_FUNCTION_13_1(v19);
        (*(v20 + 8))(v18);
        break;
      default:
        break;
    }

    v60 = *(v13 + v17[6]);

    v61 = (v13 + v17[7]);
    if (v61[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
    }

    v62 = *(v10 + v11[6]);

    OUTLINED_FUNCTION_4_55(v11[8]);

    v63 = v10 + v11[9];
    type metadata accessor for ActionParaphrase(0);
    v64 = OUTLINED_FUNCTION_96_1();
    if (!__swift_getEnumTagSinglePayload(v64, 1, v17))
    {
      v65 = *(v63 + 8);

      v66 = v63 + v17[5];
      type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
      v67 = OUTLINED_FUNCTION_96_1();
      if (!__swift_getEnumTagSinglePayload(v67, 1, v17))
      {
        v68 = *(v66 + 8);

        v69 = *(v66 + 24);

        v70 = v17[6];
        v71 = sub_1DD0DB66C();
        OUTLINED_FUNCTION_13_1(v71);
        (*(v72 + 8))(v66 + v70);
      }
    }

    v73 = v11[10];
    if (!__swift_getEnumTagSinglePayload(v10 + v73, 1, v98))
    {
      (v97)(v10 + v73, v98);
    }
  }

  v74 = v6 + *(v0 + 40);
  if (*(v74 + 8))
  {

    v75 = *(v74 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9B7DC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1DCB9B814(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1DCC8572C();
}

uint64_t sub_1DCB9B838(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return sub_1DCBB1204();
}

uint64_t sub_1DCB9B848()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v5 = v4;
  v6 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 6);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BA00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BB00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCB5F7AC();
  *a2 = result;
  return result;
}

uint64_t sub_1DCB9BB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCC9DE98();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCB9BB84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCD704D4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCB9BCC8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BD10()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9BD8C()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1DCB9BEE8()
{
  v1 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void *sub_1DCB9BF90(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_1DCB9BFD8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB9C034()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_126();

  return swift_deallocObject();
}

uint64_t sub_1DCB9C090()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88) >= 3uLL)
  {
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);
  swift_unknownObjectRelease();

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C130()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCD8291C();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DCB9C2D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C354()
{
  v1 = type metadata accessor for AceOutput();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  sub_1DCB42C24(v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], *(v3 + 80));
  if (v3[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 11);
  }

  v5 = v3 + v1[7];
  v6 = type metadata accessor for NLContextUpdate();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = *(v5 + 8);

    v8 = *(v5 + 16);

    v9 = *(v5 + 24);

    v10 = *(v5 + 40);

    v11 = *(v5 + 48);

    v12 = *(v5 + 56);

    v13 = *(v5 + 80);

    v14 = *(v5 + 96);

    v15 = *(v5 + 104);

    v16 = *(v5 + 120);

    v17 = *(v5 + 152);

    v18 = *(v5 + 160);

    v19 = *(v5 + 168);

    v20 = *(v5 + 192);

    v21 = *(v5 + 208);

    v22 = *(v5 + 216);

    v23 = *(v5 + 224);

    v24 = *(v5 + 232);

    v25 = *(v5 + 240);

    if (*(v5 + 256))
    {

      v26 = *(v5 + 264);
    }

    v27 = *(v5 + 280);

    v28 = *(v6 + 128);
    v29 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v5 + v28, 1, v29))
    {
      (*(*(v29 - 8) + 8))(v5 + v28, v29);
    }

    v30 = *(v5 + *(v6 + 140) + 8);
  }

  v31 = v1[8];
  v32 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v32);
  (*(v33 + 8))(v3 + v31);
  v34 = v1[9];
  v35 = sub_1DD0DD10C();
  if (!__swift_getEnumTagSinglePayload(v3 + v34, 1, v35))
  {
    (*(*(v35 - 8) + 8))(v3 + v34, v35);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCB9C650()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD6B7B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCB9C704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB9C824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB9C898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C904()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C93C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9C974(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for FlowMappingModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan();
  OUTLINED_FUNCTION_0_57();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9CA08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ErrorReportingFlowModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan();
  OUTLINED_FUNCTION_0_57();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9CA74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9CAB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9CAFC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v1 = v0[10];

  v2 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC64()
{
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CC98()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCB9CE04()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCB9CE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F18, &qword_1DD0F4348);
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB9CFEC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D024()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D05C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D0A4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 5);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9D3E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCDB1CB0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *_s11SiriKitFlow16AttachmentOptionOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_1DCB9D498(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow();
  OUTLINED_FUNCTION_0_64();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9D4EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  type metadata accessor for LifeCycleModifierFlow();
  OUTLINED_FUNCTION_0_64();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9D5BC()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t _s11SiriKitFlow8LinearlyC5StateOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCDB3A9C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB9D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for USOParse();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DCB9D710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for USOParse();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t _s11SiriKitFlow19LinkConnectionEventOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_1DCB9DEB0()
{

  return swift_deallocObject();
}

uint64_t sub_1DCB9DF78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

unint64_t *_s11SiriKitFlow28PermissionPromptSchemaLoggerC12LoggedResultVwCP_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1DCBF4488(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_1DCB9E018()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB9E080()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DCB9E110(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for TransformFlow();
  OUTLINED_FUNCTION_0_65();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E180()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1DCB9E1C0()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB9E1F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for MapModifier();
  OUTLINED_FUNCTION_0_66();
  swift_getWitnessTable();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E290(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  return sub_1DCB9E2A0();
}

uint64_t sub_1DCB9E2B0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v6 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 6);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCB9E3C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for MappingPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9E414()
{
  OUTLINED_FUNCTION_18_8();
  v3 = type metadata accessor for RelationshipLabel();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCB9E4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = type metadata accessor for RelationshipLabel();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCB9E56C()
{
  OUTLINED_FUNCTION_18_8();
  v3 = sub_1DD0DBD0C();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCB9E5FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = sub_1DD0DBD0C();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCB9E6B4()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCB9E6F4()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DCB9E8BC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA6820, qword_1DD0F6A48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DCB9EA20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9EA94()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_112(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9EB74(uint64_t a1)
{
  if ((*(a1 + 40) >> 1) > 0x80000000)
  {
    return -(*(a1 + 40) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCB9EC04()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for DisambiguationResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9ECD0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCB9EF60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9EF98()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9F01C()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCB9F080()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCB9F0CC()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_6_0();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCB9F1D8@<X0>(uint64_t *a1@<X8>)
{
  result = NLContextUpdate.pegasusConversationContext.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCB9F3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCB9F43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCB9F498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_6();
  v6 = sub_1DD0DD12C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    v8 = v3 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1DCB9F574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DD12C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DCB9F748()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCB9F788()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  v2 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_1DCB9F800()
{
  v1 = sub_1DD0DB0FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCB9F8DC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NeverPlan();
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F910(uint64_t *a1)
{
  v1 = *a1;
  sub_1DD0DE97C();
  type metadata accessor for NeverPlan();
  OUTLINED_FUNCTION_10_20();

  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F950(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_17_30();
  type metadata accessor for NeverPlan();
  OUTLINED_FUNCTION_10_20();
  return swift_getWitnessTable();
}

uint64_t sub_1DCB9F9D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCB9FA18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9FB8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9FC2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCB9FC60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCB9FCA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCD01230();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCB9FD24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCB9FD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCB9FDF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCB9FE84(uint64_t a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1DD0DCC3C();
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCB9FFE4(uint64_t result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1DD0DCC3C();
  }

  *(result + 8) = (a2 - 1);
  return result;
}

void *_s11SiriKitFlow12BargeInErrorVwCP_0(void *a1, id *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a1 = v3;
  return a1;
}

uint64_t sub_1DCBA01C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1DCBA0214()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA0468(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_9_56();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    v7 = OUTLINED_FUNCTION_59_2(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_1DCBA04F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCBA0580(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_9_56();
    return (v3 + 1);
  }

  else
  {
    sub_1DD0DB66C();
    v6 = OUTLINED_FUNCTION_59_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1DCBA05F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DD0DB66C();
    v6 = OUTLINED_FUNCTION_59_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DCBA076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
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

uint64_t sub_1DCBA0818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DC76C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBA0938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCBA0980(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_1DCBA09D0()
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_8_41(v8);
  v10 = (v7 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v14 = *(v11 + 64);
  (*(v4 + 8))(v1 + v5, v2);

  v12 = *(v1 + v10 + 8);

  v13 = *(v0 + 20);
  sub_1DD0DCC3C();
}

void sub_1DCBA0D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a4 & 0xF000000000000007) != 0)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCBA0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~a4 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1DCBA0D7C()
{
  OUTLINED_FUNCTION_50();
  v2 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_8_41(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);

  v8 = *(v1 + v4 + 8);

  v9 = *(v0 + 20);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCBA1068()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA12CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA1354(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1DCBA13F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBA14C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}