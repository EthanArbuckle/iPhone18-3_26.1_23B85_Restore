uint64_t OUTLINED_FUNCTION_2_11()
{
  result = v0[103];
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[94];
  v7 = v0[91];
  v8 = v0[88];
  v9 = v0[85];
  v10 = v0[82];
  v11 = v0[79];
  v12 = v0[76];
  return result;
}

id OUTLINED_FUNCTION_3_11()
{
  v3 = v0[103];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[50];

  return v1;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v3 = v0[75];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[55];
  v12 = v0[54];
}

void OUTLINED_FUNCTION_10_10()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[50];
}

uint64_t OUTLINED_FUNCTION_18_4()
{
  v2 = v0[115];
  v3 = v0[72];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[66];
  v8 = v0[65];
}

void OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_40_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 408);
  v4 = *(a1 + 96);
  return v1;
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return sub_231157C88();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_task_alloc();
}

uint64_t ShortcutTransformer.init(shortcutToolDefinition:database:drawerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_231158418();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ShortcutTransformer();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for ShortcutTransformer()
{
  result = qword_27DD3C6F8;
  if (!qword_27DD3C6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutTransformer.transform(item:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_231158338();
  v2[15] = v3;
  OUTLINED_FUNCTION_5(v3);
  v2[16] = v4;
  v6 = *(v5 + 64);
  v2[17] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231157A08();
  v2[18] = v7;
  OUTLINED_FUNCTION_5(v7);
  v2[19] = v8;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v11 = sub_231158368();
  v2[22] = v11;
  OUTLINED_FUNCTION_5(v11);
  v2[23] = v12;
  v14 = *(v13 + 64);
  v2[24] = OUTLINED_FUNCTION_21_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B0, &qword_2311647F8);
  OUTLINED_FUNCTION_19(v15);
  v17 = *(v16 + 64);
  v2[25] = OUTLINED_FUNCTION_21_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B8, &qword_231164800);
  OUTLINED_FUNCTION_19(v18);
  v20 = *(v19 + 64);
  v2[26] = OUTLINED_FUNCTION_21_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6C0, &unk_231164808);
  OUTLINED_FUNCTION_19(v21);
  v23 = *(v22 + 64);
  v2[27] = OUTLINED_FUNCTION_21_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120);
  OUTLINED_FUNCTION_19(v24);
  v26 = *(v25 + 64);
  v2[28] = OUTLINED_FUNCTION_21_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB8, &unk_231161CE0);
  OUTLINED_FUNCTION_19(v27);
  v29 = *(v28 + 64);
  v2[29] = OUTLINED_FUNCTION_21_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760);
  OUTLINED_FUNCTION_19(v30);
  v32 = *(v31 + 64);
  v2[30] = OUTLINED_FUNCTION_21_0();
  v33 = sub_231158418();
  v2[31] = v33;
  OUTLINED_FUNCTION_5(v33);
  v2[32] = v34;
  v36 = *(v35 + 64);
  v2[33] = OUTLINED_FUNCTION_21_0();
  v37 = sub_231158488();
  v2[34] = v37;
  OUTLINED_FUNCTION_5(v37);
  v2[35] = v38;
  v40 = *(v39 + 64);
  v2[36] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23109A208, 0, 0);
}

uint64_t sub_23109A208()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = type metadata accessor for ShortcutTransformer();
  v0[37] = v3;
  v4 = *(v1 + *(v3 + 20));
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v5 = sub_231158E28();

  v6 = [v4 referenceForWorkflowID_];
  v0[38] = v6;

  if (!v6)
  {
    v27 = v0[36];
    v28 = v0[33];
    v30 = v0[29];
    v29 = v0[30];
    v32 = v0[27];
    v31 = v0[28];
    v34 = v0[25];
    v33 = v0[26];
    v35 = v0[24];
    v36 = v0[21];
    v57 = v0[20];
    v59 = v0[17];

    v37 = v0[1];
    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X2, X16 }
  }

  v7 = v0[33];
  v58 = v0[36];
  v8 = v0[31];
  v9 = v0[29];
  v10 = v0[30];
  v54 = v0[27];
  v55 = v0[26];
  v56 = v0[28];
  v12 = v0[13];
  v11 = v0[14];
  (*(v0[32] + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0x6C666B726F574657;
  *(inited + 40) = 0xEA0000000000776FLL;
  v14 = sub_231158968();
  v53 = swift_allocBox();
  v16 = v15;
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v17 = v6;
  v18 = [v17 name];
  sub_231158E58();

  v19 = sub_231158B88();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  sub_231158B98();
  v20 = sub_231158BF8();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  sub_231158958();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D729C8], v14);
  v21 = sub_231158978();
  v22 = MEMORY[0x277D72A68];
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v53;
  v23 = *MEMORY[0x277D72A58];
  (*(*(v21 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  sub_231158DB8();
  v24 = sub_231158588();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v24);
  v25 = sub_231158578();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v25);
  [v17 hasOutputAction];
  sub_231158598();
  v26 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v26);
  sub_231158448();
  v40 = v0[25];
  v41 = v0[13];
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v0[39] = v42;
  v43 = [v17 name];
  sub_231158E58();
  v45 = v44;

  v0[40] = v45;
  sub_2311593A8();
  v46 = sub_2311585B8();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v46);
  v47 = *(MEMORY[0x277D72260] + 4);
  v48 = swift_task_alloc();
  v0[41] = v48;
  *v48 = v0;
  v48[1] = sub_23109A7BC;
  v49 = v0[36];
  v50 = v0[25];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2821DA7D8]();
}

uint64_t sub_23109A7BC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = v2[41];
  v6 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v7 = v6;
  v3[42] = v8;
  v3[43] = v0;

  v9 = v2[40];
  v10 = v2[39];
  if (v0)
  {
    v11 = v3[38];
    v12 = v3[25];

    sub_23109B604(v12);
    v13 = sub_23109B4EC;
  }

  else
  {
    sub_23109B604(v3[25]);

    v13 = sub_23109A944;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_23109A944()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 184);
  v146 = *(v0 + 176);
  v149 = *(v0 + 192);
  v4 = *(v0 + 104);
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v5 = sub_231158E28();

  [v1 setUniqueIdentifier_];

  v6 = OUTLINED_FUNCTION_4_9();
  v7 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  sub_231055EDC(v7, v8, v6, &selRef_setIdentifier_);

  v9 = OUTLINED_FUNCTION_4_9();
  v10 = [v2 name];
  v11 = sub_231158E58();
  v13 = v12;

  sub_231055EDC(v11, v13, v9, &selRef_setTitle_);
  v14 = OUTLINED_FUNCTION_4_9();
  v15 = [v2 name];
  v16 = sub_231158E58();
  v18 = v17;

  sub_231055EDC(v16, v18, v14, &selRef_setDisplayName_);
  v19 = OUTLINED_FUNCTION_4_9();
  [v19 setContentDescription_];

  v20 = OUTLINED_FUNCTION_4_9();
  sub_231054A0C(0, &qword_280CCAE60, 0x277CCABB0);
  v21 = sub_2311593F8();
  v22 = OUTLINED_FUNCTION_5_10();
  [v22 v23];

  v24 = OUTLINED_FUNCTION_4_9();
  v25 = sub_2311593F8();
  v26 = OUTLINED_FUNCTION_5_10();
  [v26 v27];

  v28 = OUTLINED_FUNCTION_4_9();
  v29 = sub_2311593F8();
  [v28 setUserCreated_];

  v30 = OUTLINED_FUNCTION_4_9();
  (*(v3 + 104))(v149, *MEMORY[0x277D72200], v146);
  sub_231158358();
  v31 = *(v3 + 8);
  v32 = OUTLINED_FUNCTION_17();
  v33(v32);
  v34 = sub_231158E28();
  result = sub_231158438();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v36 = result;
  v37 = *(v0 + 336);
  v38 = *(v0 + 304);
  v39 = *(v0 + 168);
  v40 = *(v0 + 144);
  v41 = *(v0 + 152);

  v42 = OUTLINED_FUNCTION_5_10();
  [v42 v43];

  v44 = [v37 attributeSet];
  v45 = [v38 creationDate];
  sub_2311579D8();

  v46 = sub_2311579B8();
  v47 = *(v41 + 8);
  v47(v39, v40);
  v48 = OUTLINED_FUNCTION_5_10();
  [v48 v49];

  v50 = [v37 attributeSet];
  v51 = [v38 modificationDate];
  sub_2311579D8();

  v52 = sub_2311579B8();
  v47(v39, v40);
  v53 = OUTLINED_FUNCTION_5_10();
  [v53 v54];

  v55 = [v37 attributeSet];
  v56 = [v38 lastRunDate];
  if (v56)
  {
    v57 = v56;
    v58 = *(v0 + 160);
    v59 = *(v0 + 144);
    sub_2311579D8();

    v60 = sub_2311579B8();
    v47(v58, v59);
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v0 + 336);
  v62 = *(v0 + 304);
  v63 = *(v0 + 104);
  [v55 setLastUsedDate_];

  v64 = [v61 attributeSet];
  v65 = [v62 runEventsCount];
  [v64 setPlayCount_];

  v66 = [v61 attributeSet];
  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0);
  v68 = sub_231092AD0(0xD000000000000021, 0x80000002311673A0, 0, 0, 1, 0);
  if (v68)
  {
    v69 = v68;
    v70 = *(v0 + 304);
    [v66 setValue:v67 forCustomKey:v68];

    sub_23108C5B4(v70, &selRef_associatedAppBundleIdentifier);
    if (v71)
    {
      v72 = [*(v0 + 336) attributeSet];
      v73 = OUTLINED_FUNCTION_17();
LABEL_13:
      sub_231055EDC(v73, v74, v72, v75);
LABEL_14:

      v92 = *(v0 + 336);
      v94 = *(v0 + 296);
      v93 = *(v0 + 304);
      v96 = *(v0 + 104);
      v95 = *(v0 + 112);
      v150 = v92;
      sub_231054A0C(0, &qword_27DD3C6D8, 0x277CD3FE8);
      v97 = *(v95 + *(v94 + 24));
      v98 = v93;
      v99 = v97;
      v100 = sub_23109B66C(v98, 1, v97);
      v101 = [v92 attributeSet];
      [v100 configureAttributeSet:v101 includingData:0];

      v102 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v142 = v103;
      v144 = v102;
      v104 = [v98 name];
      v105 = sub_231158E58();
      v107 = v106;

      v108 = [v98 color];
      LOWORD(v94) = [v98 glyphCharacter];
      v109 = v98;
      v110 = sub_23108C5B4(v109, &selRef_associatedAppBundleIdentifier);
      v112 = v111;
      v113 = sub_23108C5B4(v109, &selRef_searchAttributionAppBundleIdentifier);
      v115 = v114;
      v116 = objc_allocWithZone(MEMORY[0x277D7A1D0]);
      v117 = sub_23109B870(v144, v142, v105, v107, v108, v94, v110, v112, v113, v115);
      v118 = [v150 attributeSet];
      v119 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      sub_231055EDC(v119, v120, v118, &selRef_setUniqueIdentifier_);

      v121 = [v150 attributeSet];
      [v121 setWorkflowReferenceForDisplayRepresentation_];

      v122 = [v109 icon];
      [v122 glyphCharacter];

      v123 = WFSystemImageNameForGlyphCharacter();
      if (v123)
      {
        v124 = v123;
        v125 = *(v0 + 304);
        v127 = *(v0 + 280);
        v126 = *(v0 + 288);
        v128 = *(v0 + 272);
        v129 = [*(v0 + 336) attributeSet];
        v130 = v124;
        v131 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
        [v129 setValue:v130 forCustomKey:v131];

        (*(v127 + 8))(v126, v128);
      }

      else
      {
        v132 = *(v0 + 304);
        (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
      }

      v133 = *(v0 + 336);
      OUTLINED_FUNCTION_0_15();
      v134 = *(v0 + 168);
      v145 = *(v0 + 160);
      v148 = *(v0 + 136);
      v151 = v135;

      v136 = *(v0 + 8);

      return v136(v151);
    }

    v85 = *(v0 + 128);
    v84 = *(v0 + 136);
    v86 = *(v0 + 120);
    v87 = [*(v0 + 304) icon];
    sub_231054A0C(0, &qword_27DD3C6D0, 0x277D7A1E0);
    sub_231158A18();
    (*(v85 + 104))(v84, *MEMORY[0x277D721F0], v86);
    sub_231158328();
    v89 = v88;
    (*(v85 + 8))(v84, v86);
    v90 = *(v0 + 336);
    if (v89 >> 60 == 15)
    {
      v72 = [*(v0 + 336) attributeSet];
      v91 = *MEMORY[0x277D7A338];
      v73 = sub_231158E58();
      v75 = &selRef_setThumbnailBundleID_;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_17();
    v137 = sub_231157998();
    v138 = OUTLINED_FUNCTION_17();
    sub_231054A4C(v138, v139);
    v72 = [v90 attributeSet];
    v140 = v137;
    result = sub_231158428();
    if (result)
    {
      v141 = result;
      [v72 setValue:v140 forCustomKey:result];

      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v76 = *(v0 + 336);
  v77 = *(v0 + 304);
  v79 = *(v0 + 280);
  v78 = *(v0 + 288);
  v80 = *(v0 + 272);

  sub_23109B97C();
  swift_allocError();
  *v81 = 1;
  swift_willThrow();

  (*(v79 + 8))(v78, v80);
  OUTLINED_FUNCTION_0_15();
  v82 = *(v0 + 168);
  v143 = *(v0 + 160);
  v147 = *(v0 + 136);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_23109B4EC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 344);
  OUTLINED_FUNCTION_0_15();
  v5 = *(v0 + 168);
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23109B604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B0, &qword_2311647F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23109B66C(void *a1, char a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflowReference:a1 includeIcon:a2 & 1 iconDrawerContext:a3];

  return v5;
}

uint64_t sub_23109B6D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23109B768;

  return ShortcutTransformer.transform(item:)(a2);
}

uint64_t sub_23109B768(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_19_5();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_19_5();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

id sub_23109B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_231158E28();

  v15 = sub_231158E28();

  if (!a8)
  {
    v16 = 0;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_231158E28();

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_231158E28();

LABEL_6:
  v18 = [v10 initWithIdentifier:v14 name:v15 color:a5 glyphCharacter:a6 associatedAppBundleIdentifier:v16 searchAttributionAppBundleIdentifier:v17];

  return v18;
}

unint64_t sub_23109B97C()
{
  result = qword_27DD3C6C8;
  if (!qword_27DD3C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C6C8);
  }

  return result;
}

uint64_t sub_23109B9D0(uint64_t a1)
{
  *(a1 + 8) = sub_23109BA6C(&qword_27DD3C6E0);
  result = sub_23109BA6C(&qword_27DD3C6E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23109BA6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231159228();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23109BAD8()
{
  result = sub_231158418();
  if (v1 <= 0x3F)
  {
    result = sub_231054A0C(319, &qword_27DD3C708, 0x277D7C2F0);
    if (v2 <= 0x3F)
    {
      result = sub_231054A0C(319, &qword_27DD3C710, 0x277D7A1F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShortcutTransformer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23109BC74()
{
  result = qword_27DD3C718;
  if (!qword_27DD3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C718);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{
  result = v0[36];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  return result;
}

id OUTLINED_FUNCTION_4_9()
{

  return [v1 (v0 + 116)];
}

void sub_23109BD08()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_35_2(&qword_27DD3C7F0, &qword_27DD3D020, &qword_2311649D0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_10_11();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A2258;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BDA0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_3_12(&qword_27DD3C800, &unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 16) = sub_2310A1F94;
  *(v0 + 24) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BE3C()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_35_2(&qword_27DD3C8D0, &qword_27DD3C8D8, &unk_231166700);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_10_11();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A2058;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BED4()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_33_2(&unk_27DD3C860, &qword_27DD3C970, &qword_231164A00);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 24) = sub_2310A2058;
  *(v0 + 32) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BF70()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3BF68, &unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_10_11();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A2258;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C008()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&unk_27DD3C8C0, &qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_10_11();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A2258;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C0A0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_3_12(&qword_27DD3BF70, &qword_27DD3C840, &qword_2311649F0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 16) = sub_2310A2030;
  *(v0 + 24) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109C13C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = a2();
  if (result)
  {
    result = swift_beginAccess();
    v7 = *(a4 + 32);
    if (v7)
    {
      v8 = *(a4 + 40);

      v7(a1);
      return sub_231046164(v7);
    }
  }

  return result;
}

uint64_t sub_23109C1C0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void (*)(void), uint64_t))
{
  v10 = a1;
  result = a2(&v10);
  if (result)
  {
    result = OUTLINED_FUNCTION_81();
    v8 = *(a4 + 32);
    if (v8)
    {
      v9 = *(a4 + 40);

      v8(&v10);
      return a5(v8, v9);
    }
  }

  return result;
}

uint64_t sub_23109C248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  result = a3(v9);
  if (result)
  {
    result = swift_beginAccess();
    v7 = *(a5 + 32);
    if (v7)
    {
      v8 = *(a5 + 40);

      v7(v9);
      return sub_231046164(v7);
    }
  }

  return result;
}

uint64_t sub_23109C364(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(*(a2(0) - 8) + 16);
  v3 = OUTLINED_FUNCTION_51();

  return v4(v3);
}

unint64_t sub_23109C428(unint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = result;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v3;
  }

  result = sub_2311594D8();
  v7 = result;
  if (!result)
  {
    return v3;
  }

LABEL_3:
  if (v7 >= 1)
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231925080](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      ++v8;
      OUTLINED_FUNCTION_28_1();
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      *(v9 + 32) = a2;
      *(v9 + 40) = v3;

      a3(v10, v11);
    }

    while (v7 != v8);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23109C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  result = swift_beginAccess();
  v5 = *(a3 + 24);
  if (v5)
  {
    v6 = *(a3 + 32);

    v5(v7);
    return sub_231046164(v5);
  }

  return result;
}

uint64_t sub_23109C5B0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  result = swift_beginAccess();
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);

    v4(&v6);
    return sub_231046164(v4);
  }

  return result;
}

void sub_23109C61C()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3C7F8, &unk_27DD3C7E0, &unk_231166790);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A1F60;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C6B0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3BF68, &unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A1F44;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C744()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_33_2(&unk_27DD3C810, &unk_27DD3C730, &unk_2311649A0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v0 + 24) = sub_2310A1FA0;
  *(v0 + 32) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C7E0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_3_12(&qword_27DD3C800, &unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 16) = sub_2310A1F60;
  *(v0 + 24) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C87C()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3C8F0, &qword_27DD3C8F8, &qword_231164A40);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A225C;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C910()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3C900, &qword_27DD3C908, &qword_231164A48);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A225C;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C9A4()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_3_12(&qword_27DD3BF48, &qword_27DD3C820, &unk_2311649E0);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v3);
  OUTLINED_FUNCTION_28_1();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 16) = sub_2310A1FAC;
  *(v0 + 24) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109CA40()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&unk_27DD3C8C0, &qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A225C;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109CAD4()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_0_16(&qword_27DD3C828, &unk_27DD3C830, &unk_231166780);
  OUTLINED_FUNCTION_19_6(v2);
  OUTLINED_FUNCTION_8();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 32) = sub_2310A1FA0;
  *(v0 + 40) = v1;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109CB68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v10[0] = a1;
  v10[1] = a2;
  result = swift_beginAccess();
  v7 = *(a3 + 32);
  if (v7)
  {
    v8 = *(a3 + 40);

    a4(&v9, v10);
    v7(&v9);
    sub_231046164(v7);
  }

  return result;
}

void sub_23109CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_81();
  v30 = *(v27 + 32);
  if (v30)
  {
    v31 = *(v27 + 40);

    v25(&a9, v29);
    v30(&a9);
    v23(v30, v31);
  }

  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109CC98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(a2 + 40);

    a3(&v9, a1);
    v7(&v9);
    sub_231046164(v7);
  }

  return result;
}

uint64_t sub_23109CD38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a1;
  result = OUTLINED_FUNCTION_81();
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);

    a3(&v8, &v9);
    v6(&v8);
    sub_231046164(v6);
  }

  return result;
}

void sub_23109CDC8()
{
  OUTLINED_FUNCTION_77();
  v2 = v1;
  v45[2] = *MEMORY[0x277D85DE8];
  v3 = sub_231157948();
  v4 = OUTLINED_FUNCTION_4(v3);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = sub_231157988();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v41 - v20;
  if ([objc_opt_self() isIndexingAvailable] && (sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0), (v21 = sub_231092AD0(0xD000000000000022, 0x80000002311673D0, 0, 0, 0, 0)) != 0))
  {
    v22 = v21;
    v42 = v14;
    v23 = *MEMORY[0x277D7A338];
    sub_231158E58();
    v41 = v3;
    v24 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v0[2] = sub_2310C0D80();
    v0[3] = v2;
    v0[4] = v22;
    v25 = objc_opt_self();
    v26 = v2;
    v27 = v22;
    v28 = [v25 wf_realLibraryDirectoryURL];
    sub_231157968();

    v45[0] = 0xD000000000000017;
    v45[1] = 0x8000000231169A50;
    v29 = v43;
    v30 = v41;
    (*(v43 + 104))(v10, *MEMORY[0x277CC91D0], v41);
    sub_2310A2170();
    v31 = v44;
    sub_231157978();
    (*(v29 + 8))(v10, v30);
    v32 = *(v42 + 8);
    v32(v19, v11);
    v33 = sub_231157958();
    LODWORD(v29) = [v33 wf_fileExists];

    if (v29)
    {
      v34 = [objc_opt_self() defaultManager];
      v35 = sub_231157958();
      v45[0] = 0;
      v36 = [v34 removeItemAtURL:v35 error:v45];

      if (!v36)
      {
        v39 = v45[0];
        v40 = sub_231157938();

        swift_willThrow();
        v32(v31, v11);
        goto LABEL_8;
      }

      v37 = v45[0];
    }

    v32(v31, v11);
  }

  else
  {

    type metadata accessor for WFSpotlightSyncService();
    swift_deallocPartialClassInstance();
  }

LABEL_8:
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_78();
}

uint64_t sub_23109D204()
{
  OUTLINED_FUNCTION_4_1();
  v15 = *MEMORY[0x277D85DE8];
  v1[19] = v0;
  v2 = sub_231158258();
  v1[20] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_231159228();
  v1[24] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[25] = v7;
  v9 = *(v8 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23109D358()
{
  OUTLINED_FUNCTION_28_0();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0[19] + 24);
  v0[18] = 0;
  v2 = [v1 databaseWithError_];
  v0[29] = v2;
  v3 = v0[18];
  if (v2)
  {
    v4 = v3;
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_23109D4EC;
    v6 = v0[19];
    v7 = *MEMORY[0x277D85DE8];

    return sub_23109ECB0();
  }

  else
  {
    v9 = v3;
    sub_231157938();

    swift_willThrow();
    OUTLINED_FUNCTION_45_3();

    OUTLINED_FUNCTION_1();
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }
}

uint64_t sub_23109D4EC()
{
  OUTLINED_FUNCTION_4_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  *(v3 + 248) = v7;
  *(v3 + 256) = v0;

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23109D620()
{
  v199 = *MEMORY[0x277D85DE8];
  v1 = v0[32];
  v2 = v0[29];
  v3 = sub_231159248();
  v4 = v0[31];
  if (v1)
  {
    v5 = v0[29];
    v6 = v0[31];

    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v11 = v0[22];
    v10 = v0[23];

    OUTLINED_FUNCTION_1();
    v12 = *MEMORY[0x277D85DE8];
    goto LABEL_3;
  }

  v15 = v3;
  v16 = *(v4 + 16);
  v17 = MEMORY[0x277D84F90];
  v196 = v0;
  v185 = v3;
  v182 = v16;
  if (v16)
  {
    v18 = v0[25];
    v197 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v19, v16, 0);
    v17 = v197;
    v20 = *(v18 + 16);
    v18 += 16;
    v21 = *(v18 + 64);
    OUTLINED_FUNCTION_71_0();
    v23 = v4 + v22;
    v187 = *(v18 + 56);
    v191 = v24;
    v25 = (v18 - 8);
    do
    {
      v26 = v0[28];
      v27 = v0[24];
      v191(v26, v23, v27);
      v28 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v30 = v29;
      (*v25)(v26, v27);
      v32 = *(v197 + 16);
      v31 = *(v197 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = OUTLINED_FUNCTION_13_10(v31);
        sub_23104CA0C(v34, v32 + 1, 1);
      }

      *(v197 + 16) = v32 + 1;
      v33 = v197 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v23 += v187;
      --v16;
      v0 = v196;
    }

    while (v16);
    v15 = v185;
    v16 = v182;
  }

  v35 = sub_2310BE194(v17);
  v36 = v35;
  v37 = *(v15 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v188 = v35;
    v39 = v0[25];
    v198 = MEMORY[0x277D84F90];
    v40 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v40, v37, 0);
    v41 = v198;
    v43 = *(v39 + 16);
    v42 = v39 + 16;
    v44 = *(v42 + 64);
    OUTLINED_FUNCTION_71_0();
    v46 = v15 + v45;
    v192 = *(v42 + 56);
    v194 = v47;
    do
    {
      v194(v196[28], v46, v196[24]);
      v48 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v50 = v49;
      v51 = *(v42 - 8);
      v52 = OUTLINED_FUNCTION_51();
      v53(v52);
      v55 = *(v198 + 16);
      v54 = *(v198 + 24);
      if (v55 >= v54 >> 1)
      {
        v57 = OUTLINED_FUNCTION_13_10(v54);
        sub_23104CA0C(v57, v55 + 1, 1);
      }

      *(v198 + 16) = v55 + 1;
      v56 = v198 + 16 * v55;
      *(v56 + 32) = v48;
      *(v56 + 40) = v50;
      v46 += v192;
      --v37;
    }

    while (v37);
    v0 = v196;
    v15 = v185;
    v36 = v188;
    v16 = v182;
    v38 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v181 = sub_2310A11C4(v41, v36);

  v58 = v0[31];
  if (v16)
  {
    v59 = v0[25];
    v60 = OUTLINED_FUNCTION_44_1();
    sub_23104CDD4(v60, v16, 0);
    v61 = v38;
    v63 = *(v59 + 16);
    v62 = v59 + 16;
    v64 = *(v62 + 64);
    OUTLINED_FUNCTION_71_0();
    v66 = v58 + v65;
    v189 = *(v62 + 56);
    v193 = v67;
    do
    {
      v68 = v16;
      v193(v0[28], v66, v0[24]);
      v69 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v71 = v70;
      v72 = sub_231159218();
      v73 = *(v62 - 8);
      v74 = OUTLINED_FUNCTION_51();
      v75(v74);
      v77 = *(v38 + 16);
      v76 = *(v38 + 24);
      if (v77 >= v76 >> 1)
      {
        v79 = OUTLINED_FUNCTION_13_10(v76);
        sub_23104CDD4(v79, v77 + 1, 1);
      }

      *(v38 + 16) = v77 + 1;
      v78 = (v38 + 24 * v77);
      v78[4] = v69;
      v78[5] = v71;
      v78[6] = v72;
      v66 += v189;
      v16 = v68 - 1;
      v0 = v196;
    }

    while (v68 != 1);
    v80 = v196[31];

    v15 = v185;
  }

  else
  {
    v81 = v0[31];

    v61 = MEMORY[0x277D84F90];
  }

  v82 = v0[25];
  v83 = 0;
  v195 = sub_23109EA94(v61);
  v183 = (v82 + 32);
  v184 = *(v15 + 16);
  v190 = (v82 + 8);
  v84 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[33] = v85;
    if (v184 == v83)
    {
      break;
    }

    if (v83 >= *(v15 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
    }

    v86 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v87 = *(v82 + 72);
    (*(v82 + 16))(v0[27], v15 + v86 + v87 * v83, v0[24]);
    v88 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
    if (*(v195 + 16))
    {
      v90 = sub_23105FECC(v88, v89);
      v92 = v91;

      if (v92)
      {
        v93 = *(*(v195 + 56) + 8 * v90);
        v94 = 1;
      }

      else
      {
        v93 = 0;
        v94 = 0;
      }

      v0 = v196;
    }

    else
    {

      v93 = 0;
      v94 = 0;
    }

    v95 = v0[27];
    v96 = sub_231159218();
    v97 = v0[27];
    if (v94 && v93 == v96)
    {
      (*v190)(v0[27], v0[24]);
      ++v83;
      v15 = v185;
    }

    else
    {
      v180 = *v183;
      (*v183)(v0[26], v0[27], v0[24]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = *(v85 + 16);
        v99 = OUTLINED_FUNCTION_44_1();
        sub_23104CD7C(v99, v100, 1);
      }

      v102 = *(v85 + 16);
      v101 = *(v85 + 24);
      if (v102 >= v101 >> 1)
      {
        v105 = OUTLINED_FUNCTION_13_10(v101);
        sub_23104CD7C(v105, v102 + 1, 1);
      }

      ++v83;
      v0 = v196;
      v103 = v196[26];
      v104 = v196[24];
      *(v85 + 16) = v102 + 1;
      v180(v85 + v86 + v102 * v87, v103, v104);
      v15 = v185;
    }
  }

  v106 = *(v85 + 16);
  if (v106)
  {
    v107 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v107, v106, 0);
    v108 = *(v82 + 80);
    OUTLINED_FUNCTION_71_0();
    v110 = v85 + v109;
    v111 = *(v82 + 72);
    v186 = *(v82 + 16);
    do
    {
      v186(v196[28], v110, v196[24]);
      v112 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v114 = v113;
      v115 = *v190;
      v116 = OUTLINED_FUNCTION_51();
      v117(v116);
      v119 = *(v84 + 16);
      v118 = *(v84 + 24);
      v120 = v119 + 1;
      if (v119 >= v118 >> 1)
      {
        v122 = OUTLINED_FUNCTION_13_10(v118);
        sub_23104CA0C(v122, v119 + 1, 1);
      }

      *(v84 + 16) = v120;
      v121 = v84 + 16 * v119;
      *(v121 + 32) = v112;
      *(v121 + 40) = v114;
      v110 += v111;
      --v106;
    }

    while (v106);
  }

  else
  {
    v120 = *(v84 + 16);
  }

  v123 = 0;
  v124 = MEMORY[0x277D84F90];
LABEL_51:
  v125 = v196;
  v126 = (v84 + 40 + 16 * v123);
  while (v120 != v123)
  {
    if (v123 >= *(v84 + 16))
    {
      goto LABEL_79;
    }

    if (*(v195 + 16))
    {
      v128 = *(v126 - 1);
      v127 = *v126;

      sub_23105FECC(v128, v127);
      if (v129)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = *(v124 + 16);
          v131 = OUTLINED_FUNCTION_44_1();
          sub_23104CA0C(v131, v132, 1);
        }

        v134 = *(v124 + 16);
        v133 = *(v124 + 24);
        if (v134 >= v133 >> 1)
        {
          v136 = OUTLINED_FUNCTION_13_10(v133);
          sub_23104CA0C(v136, v134 + 1, 1);
        }

        ++v123;
        *(v124 + 16) = v134 + 1;
        v135 = v124 + 16 * v134;
        *(v135 + 32) = v128;
        *(v135 + 40) = v127;
        goto LABEL_51;
      }

      v125 = v196;
    }

    v126 += 2;
    ++v123;
  }

  v125[34] = sub_2310BE194(v124);
  if (!*(v181 + 16))
  {

    if (*(v125[33] + 16))
    {
      v142 = v125[22];
      v143 = *MEMORY[0x277D7A4C8];
      sub_2311581C8();

      v144 = sub_231158238();
      v145 = sub_2311592F8();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        OUTLINED_FUNCTION_80(v146, 3.852e-34);
        OUTLINED_FUNCTION_17_3(&dword_23103C000, v147, v148, "Indexing %ld shortcuts into spotlight index");
        MEMORY[0x2319267C0](v146, -1, -1);
      }

      else
      {
        v166 = v125[33];
      }

      v167 = v125[34];
      v168 = v125[29];
      v169 = v125[19];
      (*(v125[21] + 8))(v125[22], v125[20]);
      v170 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
      v125[37] = v170;
      v171 = *(v169 + 16);
      OUTLINED_FUNCTION_8();
      v172 = swift_allocObject();
      v125[38] = v172;
      v172[2] = v168;
      v172[3] = v170;
      v172[4] = v169;
      v173 = v168;
      v174 = v170;

      v175 = swift_task_alloc();
      v125[39] = v175;
      *v175 = v125;
      OUTLINED_FUNCTION_23_6(v175);
      v176 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_18_5(v125[33]);
      OUTLINED_FUNCTION_28();

      __asm { BR              X5 }
    }

    v156 = v125[34];
    v157 = v125[33];

    v158 = v125[28];
    v159 = v125[29];
    v161 = v125[26];
    v160 = v125[27];
    v163 = v125[22];
    v162 = v125[23];
    [objc_opt_self() _resetCache];

    v164 = v125[1];
    v165 = *MEMORY[0x277D85DE8];
LABEL_3:
    OUTLINED_FUNCTION_28();

    __asm { BRAA            X1, X16 }
  }

  v137 = v125[23];
  v138 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v139 = sub_231158238();
  v140 = sub_2311592F8();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 134217984;
    *(v141 + 4) = *(v181 + 16);

    _os_log_impl(&dword_23103C000, v139, v140, "Removing %ld shortcuts from spotlight index", v141, 0xCu);
    MEMORY[0x2319267C0](v141, -1, -1);
  }

  else
  {
  }

  v149 = v125[19];
  (*(v125[21] + 8))(v125[23], v125[20]);
  v150 = *(v149 + 16);
  sub_231092834(v181);
  v151 = sub_231158F38();
  v125[35] = v151;

  v125[2] = v125;
  v125[3] = sub_23109E210;
  v152 = swift_continuation_init();
  v125[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v125[10] = MEMORY[0x277D85DD0];
  v125[11] = 1107296256;
  v125[12] = sub_23106FF5C;
  v125[13] = &block_descriptor_72;
  v125[14] = v152;
  [v150 deleteSearchableItemsWithIdentifiers:v151 completionHandler:v125 + 10];
  v153 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_28();

  return MEMORY[0x282200938](v154);
}

uint64_t sub_23109E210()
{
  OUTLINED_FUNCTION_4_1();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[36] = v5;
  if (v5)
  {
    v6 = v2[33];
    v7 = v2[34];
  }

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_23109E350()
{
  v32 = *MEMORY[0x277D85DE8];

  if (*(*(v0 + 264) + 16))
  {
    v1 = *(v0 + 176);
    v2 = *MEMORY[0x277D7A4C8];
    sub_2311581C8();

    v3 = sub_231158238();
    v4 = sub_2311592F8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_80(v5, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v6, v7, "Indexing %ld shortcuts into spotlight index");
      MEMORY[0x2319267C0](v5, -1, -1);
    }

    else
    {
      v19 = *(v0 + 264);
    }

    v20 = *(v0 + 272);
    v21 = *(v0 + 232);
    v22 = *(v0 + 152);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v23 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
    *(v0 + 296) = v23;
    v24 = *(v22 + 16);
    OUTLINED_FUNCTION_8();
    v25 = swift_allocObject();
    *(v0 + 304) = v25;
    v25[2] = v21;
    v25[3] = v23;
    v25[4] = v22;
    v26 = v21;
    v27 = v23;

    v28 = swift_task_alloc();
    *(v0 + 312) = v28;
    *v28 = v0;
    OUTLINED_FUNCTION_23_6(v28);
    v29 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_18_5(*(v0 + 264));
    OUTLINED_FUNCTION_39_1();

    __asm { BR              X5 }
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 264);

  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  [objc_opt_self() _resetCache];

  OUTLINED_FUNCTION_1();
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23109E5E8()
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  v2[40] = v0;

  if (!v0)
  {
    v8 = v2[38];
    v11 = v2 + 33;
    v9 = v2[33];
    v10 = v11[1];
  }

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23109E73C()
{
  OUTLINED_FUNCTION_28_0();
  v10 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  [objc_opt_self() _resetCache];

  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_23109E82C()
{
  v5 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_23109E8EC()
{
  OUTLINED_FUNCTION_28_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[36];
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_23109E9B4()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];

  v6 = v0[40];
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_23109EA94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C890, &qword_231164A20);
    v1 = sub_2311596F8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2310A15CC(v2, 1, &v4);

  return v4;
}

uint64_t sub_23109EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23109EB6C, 0, 0);
}

uint64_t sub_23109EB6C()
{
  v2 = v0[2];
  v1 = v0[3];
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v3 = sub_231158E28();

  v4 = [v1 referenceForWorkflowID_];

  if (v4)
  {
    v5 = v0[5];
    v6 = v0[2];
    v7 = [v4 searchableItemRepresentationWithIconDrawerContext_];
    v8 = [v7 attributeSet];
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [v8 setValue:v9 forCustomKey:*(v5 + 32)];
  }

  else
  {
    v7 = 0;
  }

  v10 = v0[1];

  return v10(v7);
}

uint64_t sub_23109ECB0()
{
  OUTLINED_FUNCTION_4_1();
  v1[3] = v0;
  v2 = sub_231159228();
  v1[4] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_21_0();
  v6 = sub_231159278();
  v1[7] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_21_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C870, &qword_231164A08);
  OUTLINED_FUNCTION_19(v10);
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_21_0();
  v13 = sub_231159298();
  v1[11] = v13;
  OUTLINED_FUNCTION_5(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_21_0();
  v17 = sub_231159288();
  v1[14] = v17;
  OUTLINED_FUNCTION_5(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23109EE68()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_231159588();

  v5 = *MEMORY[0x277D7A350];
  v6 = sub_231158E58();
  MEMORY[0x231924980](v6);

  MEMORY[0x231924980](34, 0xE100000000000000);
  v7 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[17] = v7;
  v8 = sub_231158F38();
  [v7 setFetchAttributes_];

  objc_allocWithZone(MEMORY[0x277CC3498]);
  v9 = v7;
  v0[18] = sub_231092B74(0xD00000000000001ALL, 0x8000000231169640, v7);
  sub_2311592A8();
  sub_231159258();
  (*(v3 + 8))(v2, v4);
  v0[19] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_27_5();
  sub_2310A212C(v10, v11);
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_17_7(v13);

  return MEMORY[0x282200308](v14);
}

uint64_t sub_23109F05C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23109F158()
{
  v1 = v0[10];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[13];
    v6 = v0[9];
    v7 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v8 = v0[1];
    v9 = v0[19];
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X2, X16 }
  }

  v12 = v0[3];
  (*(v0[8] + 32))(v0[9], v1, v2);
  v13 = sub_231159268();
  v14 = [v13 attributeSet];
  v15 = [v14 valueForCustomKey_];

  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      [v16 longLongValue];
    }

    swift_unknownObjectRelease();
  }

  v17 = v0[19];
  v18 = v0[6];
  v19 = [v13 uniqueIdentifier];
  sub_231158E58();

  sub_2311591F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = *(v21 + 16);
    v36 = v0[19];
    sub_2310CC5C8();
    v21 = v37;
  }

  v22 = *(v21 + 16);
  v23 = v13;
  if (v22 >= *(v21 + 24) >> 1)
  {
    sub_2310CC5C8();
    v21 = v38;
  }

  v25 = v0[8];
  v24 = v0[9];
  v27 = v0[6];
  v26 = v0[7];
  v29 = v0[4];
  v28 = v0[5];

  (*(v25 + 8))(v24, v26);
  *(v21 + 16) = v22 + 1;
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, v27, v29);
  v0[19] = v21;
  OUTLINED_FUNCTION_27_5();
  sub_2310A212C(v30, v31);
  v32 = *(MEMORY[0x277D856D0] + 4);
  v33 = swift_task_alloc();
  v0[20] = v33;
  *v33 = v0;
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200308]();
}

uint64_t sub_23109F480()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[19];
  v0[2] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23109F518()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 48);

  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_51();
  v11(v10);

  OUTLINED_FUNCTION_1();
  v13 = *(v0 + 168);

  return v12();
}

uint64_t sub_23109F60C()
{
  sub_23109F5DC();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23109F660()
{
  OUTLINED_FUNCTION_26_1();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_23109FAFC;
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_231164990;
  *(v2 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x8000000231169960;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v1;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_231161B80;
  *(v4 + 32) = inited;
  swift_retain_n();
  static TaskBuilder.buildBlock(_:)(v4);
  OUTLINED_FUNCTION_66_1();
  swift_setDeallocating();
  sub_2310639FC();
  return v2;
}

double sub_23109F7B0(uint64_t *a1, uint64_t a2)
{
  v2 = sub_23109F898(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C428(v2, sub_2310A1D64, sub_2310646D4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_23109F898(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = sub_2310DF1AC(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C428(v4, sub_2310A1D64, sub_2310646D4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C744();
  v6 = v5;

  v7 = sub_2310A0BF0(&unk_2845D7900);
  v8 = v3;
  sub_2310A1D98(v7, v8);

  swift_allocObject();
  sub_23109C6B0();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_231162950;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;

  return v11;
}

uint64_t sub_23109FA48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23105FDEC;

  return sub_23109D204();
}

uint64_t sub_23109FB04()
{
  OUTLINED_FUNCTION_4_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_19_3(v1);

  return sub_23109FA48();
}

void sub_23109FB90()
{
  OUTLINED_FUNCTION_75();
  v25 = OUTLINED_FUNCTION_32_4();
  v1 = OUTLINED_FUNCTION_4(v25);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_63_1();
  v5 = OUTLINED_FUNCTION_30_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_62_2();
  v9 = OUTLINED_FUNCTION_19(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_41_4();
  v12 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v12, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  sub_231040CB0(v15, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6();
  v16 = *MEMORY[0x277D85260];
  v17 = OUTLINED_FUNCTION_47_3();
  v18(v17);
  v0[4] = OUTLINED_FUNCTION_14_9();
  v19 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v0[2] = v19;
  v20 = v19;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v21, sel_addTarget_action_);

  v22 = v0[3];
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_58_2();
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  *(v22 + 24) = sub_2310A1D38;
  *(v22 + 32) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

void sub_23109FDE4()
{
  OUTLINED_FUNCTION_75();
  v26 = OUTLINED_FUNCTION_32_4();
  v2 = OUTLINED_FUNCTION_4(v26);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_63_1();
  v6 = OUTLINED_FUNCTION_30_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = OUTLINED_FUNCTION_62_2();
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
  v0[3] = v1;
  v13 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v13, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  sub_231040CB0(v16, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6();
  v17 = *MEMORY[0x277D85260];
  v18 = OUTLINED_FUNCTION_47_3();
  v19(v18);
  v0[4] = OUTLINED_FUNCTION_14_9();
  v20 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v0[2] = v20;
  v21 = v20;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v22, sel_addTarget_action_);

  v23 = v0[3];
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_58_2();
  v24 = *(v23 + 32);
  v25 = *(v23 + 40);
  *(v23 + 32) = sub_2310A2044;
  *(v23 + 40) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

void sub_2310A004C()
{
  OUTLINED_FUNCTION_75();
  v25 = OUTLINED_FUNCTION_32_4();
  v1 = OUTLINED_FUNCTION_4(v25);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_63_1();
  v5 = OUTLINED_FUNCTION_30_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_62_2();
  v9 = OUTLINED_FUNCTION_19(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_41_4();
  v12 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v12, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  sub_231040CB0(v15, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6();
  v16 = *MEMORY[0x277D85260];
  v17 = OUTLINED_FUNCTION_47_3();
  v18(v17);
  v0[4] = OUTLINED_FUNCTION_14_9();
  v19 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v0[2] = v19;
  v20 = v19;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v21, sel_addTarget_action_);

  v22 = v0[3];
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_58_2();
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  *(v22 + 32) = sub_2310A203C;
  *(v22 + 40) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

uint64_t sub_2310A02A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2310A0384(a1);
  }

  return result;
}

void sub_2310A0300()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_81();
  if (swift_weakLoadStrong())
  {
    sub_2310A0660();
  }

  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_2310A0384(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231158CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231158D48();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2310A204C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_62;
  v14 = _Block_copy(aBlock);

  sub_231158D08();
  v18 = MEMORY[0x277D84F90];
  sub_2310A212C(&qword_280CCB090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231040CB0(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
  sub_231159498();
  MEMORY[0x231924E10](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

void sub_2310A0660()
{
  OUTLINED_FUNCTION_77();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = sub_231158CF8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v30 = sub_231158D48();
  v18 = OUTLINED_FUNCTION_4(v30);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v25 = v24 - v23;
  v29 = *(v5 + 32);
  OUTLINED_FUNCTION_8();
  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = v9;
  v26[4] = v7;
  v32[4] = v4;
  v32[5] = v26;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_231040F30;
  v32[3] = v2;
  v27 = _Block_copy(v32);

  sub_231158D08();
  sub_2310A212C(&qword_280CCB090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  OUTLINED_FUNCTION_1_13();
  sub_231040CB0(v28, &unk_27DD3C750, &qword_231161B50);
  sub_231159498();
  MEMORY[0x231924E10](0, v25, v17, v27);
  _Block_release(v27);
  (*(v31 + 8))(v17, v10);
  (*(v20 + 8))(v25, v30);

  OUTLINED_FUNCTION_78();
}

id sub_2310A08EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a1 + 56))
  {
    v4 = *(a1 + 56);

    v5 = sub_2310DEDCC();

    v6 = *(a1 + 56);
    *(a1 + 56) = v5;
  }

  else
  {
    *(a1 + 56) = a2;
  }

  return [*(a1 + 16) poke];
}

id sub_2310A0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;

  return [*(a1 + 16) poke];
}

void sub_2310A0A00()
{
  OUTLINED_FUNCTION_77();
  v4 = v3;
  v5 = sub_231157A78();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_2();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_2(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A8, &qword_231164A38), OUTLINED_FUNCTION_51_3(), v18 = sub_231159568(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_21_8();
    while (v19 < *(v4 + 16))
    {
      v20 = OUTLINED_FUNCTION_25_5(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      OUTLINED_FUNCTION_24_3();
      v23 = sub_2310A212C(&qword_27DD3C8B0, v22);
      OUTLINED_FUNCTION_76(v23);
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_40_3(v24);
        if (v26)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_42_3();
        (v4)(v27);
        OUTLINED_FUNCTION_24_3();
        sub_2310A212C(&qword_27DD3C8B8, v28);
        OUTLINED_FUNCTION_61_2();
        v29 = OUTLINED_FUNCTION_70_0();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = OUTLINED_FUNCTION_37_3(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      OUTLINED_FUNCTION_50_3();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_78();
  }
}

uint64_t sub_2310A0BF0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C808, &qword_2311649D8);
  OUTLINED_FUNCTION_51_3();
  result = sub_231159568();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v5++);
    v8 = *(v3 + 40);
    sub_231159918();
    MEMORY[0x2319253F0](v7);
    result = sub_231159948();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 8 * v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_2310A0D38()
{
  OUTLINED_FUNCTION_77();
  v4 = v3;
  v5 = sub_231157EB8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_2();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_2(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C848, &qword_2311649F8), OUTLINED_FUNCTION_51_3(), v18 = sub_231159568(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_21_8();
    while (v19 < *(v4 + 16))
    {
      v20 = OUTLINED_FUNCTION_25_5(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      OUTLINED_FUNCTION_26_5();
      v23 = sub_2310A212C(&qword_27DD3C850, v22);
      OUTLINED_FUNCTION_76(v23);
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_40_3(v24);
        if (v26)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_42_3();
        (v4)(v27);
        OUTLINED_FUNCTION_26_5();
        sub_2310A212C(&qword_27DD3C858, v28);
        OUTLINED_FUNCTION_61_2();
        v29 = OUTLINED_FUNCTION_70_0();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = OUTLINED_FUNCTION_37_3(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      OUTLINED_FUNCTION_50_3();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_78();
  }
}

uint64_t sub_2310A0F28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C890, &qword_231164A20);
  v38 = a2;
  result = sub_2311596E8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_2310DF388(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_231159918();
    sub_231158EA8();
    result = sub_231159948();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2310A11C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46[0] = a1;
    v3 = *(a1 + 16);
    v44 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v43 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v44 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_231159918();

      sub_231158EA8();
      v10 = sub_231159948();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v43;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (sub_231159818() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v46[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v37 = swift_slowAlloc();
          v38 = sub_2310A1A4C(v37, v20, (v2 + 56), v20, v2, v12, v46);

          MEMORY[0x2319267C0](v37, -1, -1);

          v2 = v38;
          goto LABEL_35;
        }
      }

      v39[0] = v20;
      v39[1] = v39;
      MEMORY[0x28223BE20](v18);
      v22 = v39 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v41 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v45;
      v43 = *(v45 + 16);
      v20 = v17;
      while (1)
      {
        v40 = v24;
        v42 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v43)
          {
            v2 = sub_2310A1AD4(v41, v39[0], v40, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v44 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_231159918();

          sub_231158EA8();
          v27 = sub_231159948();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v45;
              v17 = v42;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_231159818();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v41[v29];
          v41[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v45;
          v17 = v42;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v40 - 1;
        if (__OFSUB__(v40, 1))
        {
          break;
        }

        v17 = v20;
        if (v40 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_35:
  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2310A15CC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231159888();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_23105FECC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C898, &qword_231164A28);
      sub_2311596A8();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_2310A0F28(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_23105FECC(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231159588();
  MEMORY[0x231924980](0xD00000000000001BLL, 0x8000000231169A00);
  sub_231159688();
  MEMORY[0x231924980](39, 0xE100000000000000);
  sub_2311596C8();
  __break(1u);
}

uint64_t sub_2310A18A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_2310A1AD4(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_231159918();

    sub_231158EA8();
    v15 = sub_231159948();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = sub_231159818();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2310A1A4C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2310A18A0(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_2310A1AD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159568();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_231159918();

    sub_231158EA8();
    result = sub_231159948();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2310A1CF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_2310A0300();
}

void sub_2310A1D74(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  j__OUTLINED_FUNCTION_34_3(a1);
}

void sub_2310A1D98(uint64_t a1, void *a2)
{
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  sub_23107F530();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C7E0, &unk_231166790);
  swift_allocObject();
  v4 = a2;
  sub_23109BDA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D020, &qword_2311649D0);
  swift_allocObject();
  sub_23109C61C();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C770, qword_2311649B0);
  swift_allocObject();

  sub_23109BD08();
}

void sub_2310A1FD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_2310A0300();
}

uint64_t sub_2310A2084()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_19_3(v5);

  return sub_23109EB48(v6, v2, v3, v4);
}

uint64_t sub_2310A212C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_51_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2310A2170()
{
  result = qword_27DD3C8E8;
  if (!qword_27DD3C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C8E8);
  }

  return result;
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_16(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_12(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_4_10(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_8_10(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  sub_231046164(v0);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_11_8(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 152) | 0x8000000000000000;

  return sub_231159358();
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{
  *(a1 + 8) = sub_23109F05C;
  v2 = v1[16];
  v3 = v1[14];
  return v1[10];
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t result)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  v2[3] = result;
  return result;
}

void OUTLINED_FUNCTION_21_8()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_231159498();
}

uint64_t OUTLINED_FUNCTION_25_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_231159328();
}

uint64_t OUTLINED_FUNCTION_33_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_35_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_231040CB0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_37_3@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

double OUTLINED_FUNCTION_41_4()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v2 - 136) = v1;
  *(v0 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_3()
{
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
}

uint64_t OUTLINED_FUNCTION_47_3()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

void OUTLINED_FUNCTION_50_3()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_57_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 152) = a2 - 32;
  *(v2 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_59_2(id a1, SEL a2)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_60_1(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  v2 = *(v0 - 88);

  return sub_231158E18();
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return sub_231158D48();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_231159318();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  sub_231046164(v0);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{

  return MEMORY[0x2821FBA08](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_beginAccess();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2310A29B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2310A29F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL sub_2310A2A40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_2311594D8();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_2310A2A80()
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_2310A41DC;
  *(v1 + 24) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_231164BC8;
  *(v2 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x8000000231169B00;
  *(inited + 48) = sub_2310A4274;
  *(inited + 56) = v1;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_231164BD0;
  *(inited + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_231161B80;
  *(v4 + 32) = inited;
  swift_retain_n();
  v5 = static TaskBuilder.buildBlock(_:)(v4);
  swift_setDeallocating();
  sub_2310639FC();
  return v5;
}

double sub_2310A2BE0(uint64_t *a1, uint64_t a2)
{
  sub_2310A2CE8(*a1, a2);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C970, &qword_231164A00);
  swift_allocObject();
  sub_23109C3FC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C978, &unk_231164BE0);
  swift_allocObject();
  sub_23109BED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C980, &qword_231162A18);
  swift_allocObject();
  sub_23109FDE4();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_231161E80;
  *(v6 + 32) = v5;
  return result;
}

double sub_2310A2CE8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v3 = sub_2310A0BF0(&unk_2845D7928);
  v4 = *(a2 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(v3, v4, &v9);
  v6 = v5;

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_231161E80;
  *(v7 + 32) = v6;
  return result;
}

void sub_2310A2D9C(uint64_t *a1)
{
  v1 = *a1;
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v2 = sub_2310DEC64();
  v3 = [v2 deletedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  v24 = sub_231159178();

  v4 = sub_2310DEC64();
  v5 = [v4 updatedDescriptors];

  v23 = sub_231159178();

  v6 = sub_2310DEC64();
  v7 = [v6 insertedDescriptors];

  v8 = sub_231159178();
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2311594C8();
    sub_2311591A8();
    v10 = v26;
    v9 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
    v10 = v8;
  }

  v17 = (v11 + 64) >> 6;
  while (v10 < 0)
  {
    if (!sub_2311594F8() || (swift_dynamicCast(), (v20 = v25) == 0))
    {
LABEL_19:
      sub_231043ED0();

      v22 = sub_2310A2A40(v23);

      if (v22)
      {
        sub_2310A2A40(v24);

        return;
      }

      goto LABEL_21;
    }

LABEL_17:
    v21 = [v20 objectType];

    if (!v21)
    {

      sub_231043ED0();
LABEL_21:

      return;
    }
  }

  v18 = v12;
  v19 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v19 - 1) & v19;
    v20 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_19;
    }

    v19 = *(v9 + 8 * v12);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2310A30E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2310A3170;

  return sub_2310A33A8();
}

uint64_t sub_2310A3170()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 32) = v11;
    *v11 = v7;
    v11[1] = sub_2310A32C8;

    return sub_2310A3DD0();
  }
}

uint64_t sub_2310A32C8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_46_0();

  return v5();
}

uint64_t sub_2310A33BC()
{
  OUTLINED_FUNCTION_4_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  inited = swift_initStackObject();
  v0[8] = inited;
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000231169AE0;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = inited;
  v3 = *(MEMORY[0x277D859B8] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2310A34E4;

  return MEMORY[0x282200740]();
}

void sub_2310A34E4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 72);
    swift_setDeallocating();
    sub_231063A58();

    MEMORY[0x2822009F8](sub_231063774, 0, 0);
  }
}

uint64_t sub_2310A361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A36C4, 0, 0);
}

uint64_t sub_2310A36C4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  for (i = (v1 + 40); ; i += 2)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    if (!v2)
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = sub_2311590C8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = v6;
    sub_23106FC70(v5, v4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8);
    swift_bridgeObjectRetain_n();
    v11 = *(v0 + 88);
    if (EnumTagSinglePayload == 1)
    {
      sub_23106FCE0(*(v0 + 88));
    }

    else
    {
      sub_2311590B8();
      (*(*(v8 - 8) + 8))(v11, v8);
    }

    if (v9[2])
    {
      v12 = v9[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_231159048();
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = **(v0 + 72);

    if (v15 | v13)
    {
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v13;
      *(v0 + 40) = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v0 + 96);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v16;
    swift_task_create();

    sub_23106FCE0(v18);
    --v2;
  }

  v19 = *(v0 + 96);

  OUTLINED_FUNCTION_46_0();

  return v20();
}

uint64_t sub_2310A3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2310A3940, 0, 0);
}

uint64_t sub_2310A3940()
{
  OUTLINED_FUNCTION_21();
  sub_231158D78();
  v0[4] = sub_231158D68();
  v1 = *MEMORY[0x277D7A2F8];
  v2 = sub_231158E58();
  v4 = v3;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2310A3A14;
  v7 = v0[2];
  v6 = v0[3];

  return sub_2310A3BA8(v7, v6, v2, v4);
}

uint64_t sub_2310A3A14()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2310A3B40, 0, 0);
  }

  else
  {
    v10 = v3[4];
    v9 = v3[5];

    OUTLINED_FUNCTION_46_0();

    return v11();
  }
}

uint64_t sub_2310A3B40()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_2310A3BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_2310A3BD0, 0, 0);
}

uint64_t sub_2310A3BD0()
{
  v1 = v0 + 2;
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2310A3CD4;
  v7 = swift_continuation_init();
  *(swift_allocObject() + 16) = v7;
  sub_231158D58();

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310A3CD4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_19_5();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2310A3DE4()
{
  OUTLINED_FUNCTION_21();
  v1 = [objc_opt_self() sharedInstance];
  v2 = *MEMORY[0x277D7A2F8];
  v3 = sub_231158E28();
  sub_2310A3FF8(v2, 0xD000000000000010, 0x8000000231169AA0, v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2310A3ED4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2310A3F54(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x282200958](a2, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_2310A3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_231158E28();
  [a5 reloadControlsForExtension:a1 kind:v8 reason:a4];
}

uint64_t sub_2310A4070()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_231072874;

  return sub_2310A361C(v4, v2, v5);
}

uint64_t sub_2310A4118(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_0(v7);
  *v8 = v9;
  v8[1] = sub_231072874;

  return sub_2310A3920(a1, v3, v4, v6, v5);
}

uint64_t sub_2310A41E4()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  v4[1] = sub_231072874;

  return sub_2310A30E0(v2, v0);
}

uint64_t sub_2310A427C()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0(v5);
  *v6 = v7;
  v6[1] = sub_2310721C0;

  return sub_231063368(v2, v4, v3);
}

unint64_t sub_2310A431C()
{
  result = qword_280CCAEA0;
  if (!qword_280CCAEA0)
  {
    sub_231054A0C(255, &qword_280CCAEB0, 0x277D79EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAEA0);
  }

  return result;
}

uint64_t WFConfiguredSystemActionMigrator.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2310A45D8;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231164BF8;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x8000000231169B20;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)(v6);
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_2310A4518(uint64_t *a1, void *a2)
{
  v2 = sub_2310A45E0(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2310A45E0(uint64_t a1, void *a2)
{
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  swift_allocObject();
  sub_23109C7E0();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  swift_allocObject();
  sub_23109BE3C();
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C908, &qword_231164A48);
  swift_allocObject();
  v5 = a2;
  sub_23109C008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C910();
  v7 = v6;
  v13 = a1;

  v8 = [v5 databaseProvider];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(MEMORY[0x277D84FA0], v8, &v13);
  swift_unknownObjectRelease_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8F8, &qword_231164A40);
  swift_allocObject();
  sub_23109BF70();
  swift_allocObject();
  sub_23109C87C();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_231162950;
  *(v11 + 32) = v7;
  *(v11 + 40) = v10;

  return v11;
}

void sub_2310A490C(uint64_t *a1, void *a2)
{
  v3 = sub_2310DE3B0(*a1);
  v4 = v3;
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(v4 + 48) + ((v11 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = sub_231158E28();
    v17 = [a2 hasSystemActionForBundleIdentifier_];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_2310A4A44(uint64_t *a1)
{
  v1 = *a1;
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v2 = sub_2310DEC64();
  v3 = [v2 updatedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  v4 = sub_231159178();

  LOBYTE(v3) = sub_2310A2A40(v4);

  if (v3)
  {

    v5 = sub_2310DEC64();
    v6 = [v5 deletedDescriptors];

    v7 = sub_231159178();
    LOBYTE(v6) = sub_2310A2A40(v7);

    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2310A4B98()
{
  [*(v0 + 16) updateActionsIfNeeded];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310A4C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2310A4E78;

  return sub_2310A4B78(a1, v4);
}

uint64_t sub_2310A4CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2310A4D6C;

  return sub_231061F1C(a1, v5, v4);
}

uint64_t sub_2310A4D6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2310A4EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v9 - v6, a1);
  return sub_231158528();
}

uint64_t sub_2310A4F60()
{
  type metadata accessor for ShortcutTransformer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA28, &unk_231164D70);
  return sub_231158E68();
}

uint64_t sub_2310A4FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[46] = a5;
  v6[47] = v5;
  v6[44] = a3;
  v6[45] = a4;
  v6[42] = a1;
  v6[43] = a2;
  v7 = sub_231158258();
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A50B8, 0, 0);
}

uint64_t sub_2310A50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = v12[56];
  v15 = v12[42];
  v12[57] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v16 = sub_231158238();
  v17 = sub_2311592C8();
  v18 = OUTLINED_FUNCTION_20_2(v17);
  v19 = v12[42];
  if (v18)
  {
    OUTLINED_FUNCTION_40_4();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v20, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v21, v22, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v23 = v12[42];
  }

  v24 = v12[56];
  v25 = v12[48];
  v26 = v12[42];
  OUTLINED_FUNCTION_115(v12[49]);
  v12[58] = v27;
  v12[59] = v28;
  v27();
  v29 = MEMORY[0x277D84F90];
  v12[41] = MEMORY[0x277D84F90];
  v30 = *(v26 + 16);
  v12[60] = v30;
  v12[61] = v29;
  if (v30)
  {
    v12[62] = 1;
    v31 = v12[45];
    OUTLINED_FUNCTION_28_5(v12[42]);

    OUTLINED_FUNCTION_0_9();
    a9 = v32;
    v33 = *(v31 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v12[63] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_8_11(v34);
    OUTLINED_FUNCTION_39_1();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {
    v56 = v12[61];

    OUTLINED_FUNCTION_70_1();

    v57 = sub_231158238();
    v58 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v58))
    {
      v59 = v12[60];
      v60 = v12[42];
      OUTLINED_FUNCTION_40_4();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v61, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v62, v63, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v64 = v12[42];
    }

    v65 = OUTLINED_FUNCTION_10_12();
    v66(v65);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_140();
  sub_231158238();
  v44 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v44))
  {
    v45 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v45);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v46, v47, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_64_1();
  v48 = OUTLINED_FUNCTION_51_1();
  v13(v48);
  sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v49 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_147(v49);
  OUTLINED_FUNCTION_52_1();
  v12[10] = v50;
  OUTLINED_FUNCTION_22_7();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v51);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v52 = OUTLINED_FUNCTION_23_3();
  [v52 v53];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v54);
}

uint64_t sub_2310A541C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v8 = *(v7 + 504);
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  v5[64] = v0;

  if (v0)
  {
    v11 = v5[61];
  }

  else
  {
    v5[65] = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310A5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_152();

  v11 = v10[64];
  v13 = v10[55];
  v12 = v10[56];
  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2310A5D24()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 544) = v5;
  if (v5)
  {
    v6 = *(v2 + 528);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310A5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 536);
  v15 = *(v12 + 528);

  v16 = *(v12 + 288);
  v17 = *(v12 + 304);
  v18 = *(v12 + 320);

  v20 = MEMORY[0x277D84F90];
  *(v12 + 328) = MEMORY[0x277D84F90];
  v21 = *(v12 + 496);
  *(v12 + 488) = v20;
  v22 = *(v12 + 480);
  if (v21 == v22)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_140();
      sub_231158238();
      v23 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v23))
      {
        v24 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v24);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v25, v26, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_64_1();
      v27 = OUTLINED_FUNCTION_51_1();
      v13(v27);
      sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v28 = OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_147(v28);
      OUTLINED_FUNCTION_52_1();
      *(v12 + 80) = v29;
      OUTLINED_FUNCTION_22_7();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v30);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v31 = OUTLINED_FUNCTION_23_3();
      [v31 v32];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v19);
    }

    v48 = *(v12 + 488);

    OUTLINED_FUNCTION_70_1();

    v49 = sub_231158238();
    v50 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v50))
    {
      v51 = *(v12 + 480);
      v52 = *(v12 + 336);
      OUTLINED_FUNCTION_40_4();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v53, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v54, v55, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v56 = *(v12 + 336);
    }

    v57 = OUTLINED_FUNCTION_10_12();
    v58(v57);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  if (v21 >= v22)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 496) = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      v34 = *(v12 + 360);
      OUTLINED_FUNCTION_28_5(*(v12 + 336) + 56 * v21);

      OUTLINED_FUNCTION_0_9();
      a9 = v35;
      v36 = *(v34 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_27_1();
      *(v12 + 504) = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_8_11();
      OUTLINED_FUNCTION_39_1();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v19);
}

uint64_t sub_2310A6148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[68];
  v12 = v10[67];
  v13 = v10[65];
  swift_willThrow();

  OUTLINED_FUNCTION_152();

  v14 = v10[68];
  v16 = v10[55];
  v15 = v10[56];
  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2310A620C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A6308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_70_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    v13 = *(v10 + 480);
    v14 = *(v10 + 336);
    OUTLINED_FUNCTION_40_4();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v15, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v16, v17, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v18 = *(v10 + 336);
  }

  v19 = OUTLINED_FUNCTION_10_12();
  v20(v19);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_2310A6418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[70];
  v12 = v10[69];
  swift_willThrow();

  v13 = v10[70];
  v15 = v10[55];
  v14 = v10[56];
  OUTLINED_FUNCTION_33_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2310A64C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[41] = a5;
  v6[42] = v5;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_231158258();
  v6[43] = v7;
  v8 = *(v7 - 8);
  v6[44] = v8;
  v9 = *(v8 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310A65D0, 0, 0);
}

uint64_t sub_2310A65D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = v12[51];
  v15 = v12[37];
  v12[52] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v16 = sub_231158238();
  v17 = sub_2311592C8();
  v18 = OUTLINED_FUNCTION_20_2(v17);
  v19 = v12[37];
  if (v18)
  {
    OUTLINED_FUNCTION_40_4();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v20, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v21, v22, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v23 = v12[37];
  }

  v24 = v12[51];
  v25 = v12[43];
  v26 = v12[37];
  OUTLINED_FUNCTION_115(v12[44]);
  v12[53] = v27;
  v12[54] = v28;
  v27();
  v29 = MEMORY[0x277D84F90];
  v12[36] = MEMORY[0x277D84F90];
  v30 = *(v26 + 16);
  v12[55] = v30;
  v12[56] = v29;
  if (v30)
  {
    v31 = v12[37];
    v32 = *(v31 + 40);
    v12[57] = v32;
    v12[58] = 1;
    v33 = v12[40];
    v12[34] = *(v31 + 32);
    v12[35] = v32;

    OUTLINED_FUNCTION_0_9();
    a9 = v34;
    v35 = *(v33 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v12[59] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_7_12(v36);
    OUTLINED_FUNCTION_39_1();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {
    v58 = v12[56];

    OUTLINED_FUNCTION_69_1();

    v59 = sub_231158238();
    v60 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v60))
    {
      v61 = v12[55];
      v62 = v12[37];
      OUTLINED_FUNCTION_40_4();
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v63, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v64, v65, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v66 = v12[37];
    }

    v67 = OUTLINED_FUNCTION_9_12();
    v68(v67);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_137();
  sub_231158238();
  v46 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v46))
  {
    v47 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v47);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v48, v49, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_63_2();
  v50 = OUTLINED_FUNCTION_51_1();
  v13(v50);
  sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v51 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_145(v51);
  OUTLINED_FUNCTION_52_1();
  v12[10] = v52;
  OUTLINED_FUNCTION_21_9();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v53);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v54 = OUTLINED_FUNCTION_23_3();
  [v54 v55];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v56);
}

uint64_t sub_2310A6930()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v8 = *(v7 + 472);
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  v5[60] = v0;

  if (v0)
  {
    v11 = v5[56];
  }

  else
  {
    v5[61] = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310A7158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[57];

  v12 = v10[60];
  v14 = v10[50];
  v13 = v10[51];
  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_2310A71F8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 512) = v5;
  if (v5)
  {
    v6 = *(v2 + 496);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310A7300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v15 = v12[62];
  v14 = v12[63];
  v16 = v12[61];
  v17 = v12[57];

  v19 = MEMORY[0x277D84F90];
  v12[36] = MEMORY[0x277D84F90];
  v20 = v12[58];
  v12[56] = v19;
  v21 = v12[55];
  if (v20 == v21)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_137();
      sub_231158238();
      v22 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v22))
      {
        v23 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v23);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v24, v25, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_63_2();
      v26 = OUTLINED_FUNCTION_51_1();
      v13(v26);
      sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v27 = OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_145(v27);
      OUTLINED_FUNCTION_52_1();
      v12[10] = v28;
      OUTLINED_FUNCTION_21_9();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v29);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v30 = OUTLINED_FUNCTION_23_3();
      [v30 v31];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v18);
    }

    v50 = v12[56];

    OUTLINED_FUNCTION_69_1();

    v51 = sub_231158238();
    v52 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v52))
    {
      v53 = v12[55];
      v54 = v12[37];
      OUTLINED_FUNCTION_40_4();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v55, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v56, v57, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v58 = v12[37];
    }

    v59 = OUTLINED_FUNCTION_9_12();
    v60(v59);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  if (v20 >= v21)
  {
    __break(1u);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_175(v20);
    v12[57] = v18;
    v12[58] = v34;
    if (!v35)
    {
      v36 = v12[40];
      v12[34] = *(v33 + 32);
      v12[35] = v18;

      OUTLINED_FUNCTION_0_9();
      a9 = v37;
      v38 = *(v36 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_27_1();
      v12[59] = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_39_1();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v18);
}

uint64_t sub_2310A75EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[63];
  v12 = v10[64];
  v13 = v10[61];
  v14 = v10[57];
  swift_willThrow();

  v15 = v10[64];
  v17 = v10[50];
  v16 = v10[51];
  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_2310A76A4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A77A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_69_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    v13 = *(v10 + 440);
    v14 = *(v10 + 296);
    OUTLINED_FUNCTION_40_4();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v15, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v16, v17, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v18 = *(v10 + 296);
  }

  v19 = OUTLINED_FUNCTION_9_12();
  v20(v19);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_2310A78B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[66];
  v12 = v10[65];
  swift_willThrow();

  v13 = v10[66];
  v15 = v10[50];
  v14 = v10[51];
  OUTLINED_FUNCTION_32_5();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2310A7958()
{
  OUTLINED_FUNCTION_4_1();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[35] = v5;
  v1[36] = v6;
  v7 = sub_231158258();
  v1[41] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[42] = v8;
  v10 = *(v9 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310A7A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 392);
  v15 = *(v12 + 280);
  *(v12 + 400) = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v16 = sub_231158238();
  v17 = sub_2311592C8();
  v18 = OUTLINED_FUNCTION_20_2(v17);
  v19 = *(v12 + 280);
  if (v18)
  {
    OUTLINED_FUNCTION_40_4();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_101(v20, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v21, v22, "Starting indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v23 = *(v12 + 280);
  }

  v24 = *(v12 + 392);
  v25 = *(v12 + 328);
  v26 = *(v12 + 280);
  OUTLINED_FUNCTION_115(*(v12 + 336));
  *(v12 + 408) = v27;
  *(v12 + 416) = v28;
  v27();
  v29 = MEMORY[0x277D84F90];
  *(v12 + 272) = MEMORY[0x277D84F90];
  v30 = *(v26 + 16);
  *(v12 + 424) = v30;
  *(v12 + 432) = v29;
  if (v30)
  {
    v31 = sub_231159228();
    OUTLINED_FUNCTION_19(v31);
    *(v12 + 440) = 1;
    v32 = *(v12 + 280);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    OUTLINED_FUNCTION_4_11(*(v12 + 304));
    a9 = v35;
    v37 = *(v36 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    *(v12 + 448) = v38;
    *v38 = v39;
    v38[1] = sub_2310A7E00;
    v40 = *(v12 + 312);
    OUTLINED_FUNCTION_39_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  if (!sub_23106FF58(MEMORY[0x277D84F90]))
  {
    v61 = *(v12 + 432);

    OUTLINED_FUNCTION_71_1();

    v62 = sub_231158238();
    v63 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v63))
    {
      v64 = *(v12 + 424);
      v65 = *(v12 + 280);
      OUTLINED_FUNCTION_40_4();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_144(v66, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v67, v68, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v69 = *(v12 + 280);
    }

    v70 = OUTLINED_FUNCTION_11_9();
    v71(v70);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_149();
  sub_231158238();
  v49 = sub_2311592C8();
  if (OUTLINED_FUNCTION_60_2(v49))
  {
    v50 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v50);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v51, v52, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  OUTLINED_FUNCTION_65_1();
  v53 = OUTLINED_FUNCTION_51_1();
  v13(v53);
  sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v54 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_146(v54);
  OUTLINED_FUNCTION_52_1();
  *(v12 + 80) = v55;
  OUTLINED_FUNCTION_23_7();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v56);
  OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_5();
  v57 = OUTLINED_FUNCTION_23_3();
  [v57 v58];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v59);
}

uint64_t sub_2310A7E00()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  OUTLINED_FUNCTION_2_4();
  *v6 = v5;
  v8 = *(v7 + 448);
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  v5[57] = v0;

  if (v0)
  {
    v11 = v5[54];
  }

  else
  {
    v5[60] = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310A7F14()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310A8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_71_1();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    v13 = *(v10 + 424);
    v14 = *(v10 + 280);
    OUTLINED_FUNCTION_40_4();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_61_3(v15, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v16, v17, "Done indexing %ld items");
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v18 = *(v10 + 280);
  }

  v19 = OUTLINED_FUNCTION_11_9();
  v20(v19);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_2310A8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[58];
  v12 = v10[59];
  swift_willThrow();

  v13 = v10[59];
  v15 = v10[48];
  v14 = v10[49];
  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2310A8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[57];
  v13 = v10[48];
  v12 = v10[49];
  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2310A8998()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 504) = v5;
  if (v5)
  {
    v6 = *(v2 + 488);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310A8AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 488);
  v15 = *(v12 + 480);

  v17 = MEMORY[0x277D84F90];
  *(v12 + 272) = MEMORY[0x277D84F90];
  v18 = *(v12 + 440);
  *(v12 + 432) = v17;
  v19 = *(v12 + 424);
  if (v18 == v19)
  {
    if (sub_23106FF58(MEMORY[0x277D84F90]))
    {
      OUTLINED_FUNCTION_149();
      sub_231158238();
      v20 = sub_2311592C8();
      if (OUTLINED_FUNCTION_60_2(v20))
      {
        v21 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_56_0(v21);
        OUTLINED_FUNCTION_25_2(&dword_23103C000, v22, v23, "Finished generating searchable items, triggering final index");
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      OUTLINED_FUNCTION_65_1();
      v24 = OUTLINED_FUNCTION_51_1();
      v13(v24);
      sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
      v25 = OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_146(v25);
      OUTLINED_FUNCTION_52_1();
      *(v12 + 80) = v26;
      OUTLINED_FUNCTION_23_7();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      OUTLINED_FUNCTION_6_5(v27);
      OUTLINED_FUNCTION_74(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_4_5();
      v28 = OUTLINED_FUNCTION_23_3();
      [v28 v29];
      OUTLINED_FUNCTION_39_1();

      return MEMORY[0x282200938](v16);
    }

    v48 = *(v12 + 432);

    OUTLINED_FUNCTION_71_1();

    v49 = sub_231158238();
    v50 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v50))
    {
      v51 = *(v12 + 424);
      v52 = *(v12 + 280);
      OUTLINED_FUNCTION_40_4();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_61_3(v53, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v54, v55, "Done indexing %ld items");
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    else
    {
      v56 = *(v12 + 280);
    }

    v57 = OUTLINED_FUNCTION_11_9();
    v58(v57);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  if (v18 >= v19)
  {
    __break(1u);
  }

  else
  {
    v31 = sub_231159228();
    v33 = *(v31 - 8);
    v16 = v31 - 8;
    v32 = v33;
    *(v12 + 440) = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      v34 = *(v12 + 280) + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v18;
      OUTLINED_FUNCTION_4_11(*(v12 + 304));
      a9 = v35;
      v37 = *(v36 + 4);
      v38 = swift_task_alloc();
      *(v12 + 448) = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_57_2(v38);
      OUTLINED_FUNCTION_39_1();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }
  }

  __break(1u);
  return MEMORY[0x282200938](v16);
}

uint64_t sub_2310A8DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[62];
  v12 = v10[63];
  v13 = v10[60];
  swift_willThrow();

  v14 = v10[63];
  v16 = v10[48];
  v15 = v10[49];
  OUTLINED_FUNCTION_35_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_85();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2310A8E6C(uint64_t a1)
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

  result = sub_2310B2D14(result, 1, sub_2310CC07C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2310A8F44(uint64_t a1)
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

  result = sub_2310B2D14(result, 1, sub_2310CC18C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2310A9018(uint64_t a1)
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

  result = sub_2310B2D14(result, 1, sub_2310CC36C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA60, qword_231164E50);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2310A9108(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2310B2D14(v6 + v5, 1, sub_2310CC36C);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_231093880(&v43, *v2 + 40 * v7 + 32, v8, a1);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v10 + v3 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v44)
  {
    goto LABEL_7;
  }

  v14 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < *(v43 + 16))
  {
    v15 = *(v1 + 16);
    v16 = v43 + 40 * v14;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    v20 = *(v16 + 56);
    v21 = *(v16 + 64);
    v22 = *(v16 + 65);
    OUTLINED_FUNCTION_128();
    v24 = v23;
    v26 = v25;
    sub_231079464();
    v10 = v15;
    v27 = v24;
    v36 = v26 + 25;
    v37 = v26;
LABEL_15:
    v39 = v27;
    v40 = *(v1 + 24) >> 1;
    v38 = v10;
    if (v40 < v10 + 1)
    {
      sub_2310CC36C();
      v10 = v38;
      v27 = v39;
      v1 = v35;
      v40 = *(v35 + 24) >> 1;
    }

    v3 = 0;
    v28 = 40 * v10;
    v29 = (v36 + 40 * v27);
    for (i = -1; ; --i)
    {
      if (v10 + v3 >= v40)
      {
        *(v1 + 16) = v10 + v3;
        v27 -= v3;
        v10 += v3;
        goto LABEL_15;
      }

      v31 = v1 + v28;
      *(v31 + 32) = v42;
      *(v31 + 40) = v41;
      *(v31 + 48) = v19;
      *(v31 + 56) = v20;
      *(v31 + 64) = v21;
      *(v31 + 65) = v22 & 1;
      if (v27 == v3)
      {
        goto LABEL_24;
      }

      if (v27 + i >= *(v37 + 16))
      {
        break;
      }

      v32 = *(v29 - 33);
      v33 = *(v29 - 25);
      v19 = *(v29 - 17);
      v20 = *(v29 - 9);
      v21 = *(v29 - 1);
      v34 = *v29;
      v29 -= 40;
      v22 = v34;
      OUTLINED_FUNCTION_128();
      sub_231079464();
      v10 = v38;
      v27 = v39;
      ++v3;
      v28 += 40;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_2310A9360(unint64_t a1)
{
  v3 = sub_23106FF58(a1);
  v4 = sub_23106FF58(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2310B2C74(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2310B2D8C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2310A940C(uint64_t a1)
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

  sub_2310B2D14(result, 1, sub_2310CC5C8);
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
  result = sub_231159228();
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

uint64_t sub_2310A9520()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  *(v1 + 408) = v3;
  *(v1 + 320) = v4;
  *(v1 + 328) = v5;
  v6 = sub_231158C58();
  *(v1 + 352) = v6;
  OUTLINED_FUNCTION_5(v6);
  *(v1 + 360) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310A95D8()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 376) = v1;
  OUTLINED_FUNCTION_132();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_90(v5);

  return v7(v6);
}

uint64_t sub_2310A96DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;
  v3[50] = v0;

  if (!v0)
  {
    v8 = v3[47];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2310A97E4()
{
  v1 = *(v0 + 320);
  if (*(v0 + 408))
  {
    v2 = *(v1 + 16);
    v98 = *(v0 + 328);
    if (v2)
    {
      v3 = *(v0 + 392);
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D84F90];
      v99 = v3;
      v101 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90];
      do
      {
        v8 = *(v4 - 1);
        v7 = *v4;
        v9 = *(v3 + 16);

        if (v9 && (v10 = *(v0 + 392), , v9 = sub_23105FECC(v8, v7), v12 = v11, , (v12 & 1) != 0))
        {
          v13 = OUTLINED_FUNCTION_164(*(v3 + 56));
          sub_2310548A0(v13, v0 + 56);
          sub_231093C48((v0 + 56), v0 + 16);
          v14 = *(v0 + 40);
          v15 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_0((v0 + 16), v14);
          *(v0 + 120) = &type metadata for ToolTransformer.Item;
          *(v0 + 128) = &off_2845D9018;
          *(v0 + 96) = v8;
          *(v0 + 104) = v7;

          v16 = sub_231090444((v0 + 96), v14, v15);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          if (v16)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = *(v6 + 16);
              OUTLINED_FUNCTION_17_8();
              sub_2310CC18C();
              v6 = v35;
            }

            v3 = v99;
            v18 = *(v6 + 16);
            v17 = *(v6 + 24);
            OUTLINED_FUNCTION_107();
            if (v20)
            {
              OUTLINED_FUNCTION_3_13(v19);
              sub_2310CC18C();
              v6 = v21;
            }

            else
            {
              v21 = v6;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v26 = v101;
            }

            else
            {
              v36 = *(v101 + 16);
              OUTLINED_FUNCTION_17_8();
              sub_2310CC18C();
              v26 = v37;
            }

            v3 = v99;
            v18 = *(v26 + 16);
            v27 = *(v26 + 24);
            OUTLINED_FUNCTION_107();
            if (v20)
            {
              OUTLINED_FUNCTION_3_13(v29);
              sub_2310CC18C();
              v101 = v21;
            }

            else
            {
              v101 = v28;
              v21 = v28;
            }
          }

          *(v21 + 16) = v16;
          v30 = v21 + 16 * v18;
          *(v30 + 32) = v8;
          *(v30 + 40) = v7;
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = *(v5 + 16);
            OUTLINED_FUNCTION_17_8();
            sub_2310CC18C();
            v5 = v32;
          }

          v23 = *(v5 + 16);
          v22 = *(v5 + 24);
          OUTLINED_FUNCTION_107();
          if (v20)
          {
            OUTLINED_FUNCTION_3_13(v24);
            sub_2310CC18C();
            v5 = v33;
          }

          *(v5 + 16) = v9;
          v25 = v5 + 16 * v23;
          *(v25 + 32) = v8;
          *(v25 + 40) = v7;
        }

        v4 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      v101 = MEMORY[0x277D84F90];
    }

    v76 = *(v0 + 392);

    v100 = 0xE700000000000000;
    OUTLINED_FUNCTION_163();
  }

  else
  {
    v38 = *(v1 + 16);
    if (v38)
    {
      v39 = *(v0 + 392);
      v40 = (v1 + 40);
      v5 = MEMORY[0x277D84F90];
      v101 = MEMORY[0x277D84F90];
      v41 = MEMORY[0x277D84F90];
      do
      {
        v42 = *(v40 - 1);
        v43 = *v40;
        v44 = v39[2];

        if (v44 && (, v44 = sub_23105FECC(v42, v43), v46 = v45, , (v46 & 1) != 0))
        {
          v47 = OUTLINED_FUNCTION_164(v39[7]);
          sub_2310548A0(v47, v0 + 176);
          sub_231093C48((v0 + 176), v0 + 136);
          v48 = *(v0 + 160);
          v49 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_0((v0 + 136), v48);
          *(v0 + 240) = &type metadata for ToolTransformer.Item;
          *(v0 + 248) = &off_2845D9018;
          *(v0 + 216) = v42;
          *(v0 + 224) = v43;

          v50 = sub_231090444((v0 + 216), v48, v49);
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));

          if (v50)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = *(v41 + 16);
              OUTLINED_FUNCTION_17_8();
              sub_2310CC18C();
              v41 = v73;
            }

            v52 = *(v41 + 16);
            v51 = *(v41 + 24);
            OUTLINED_FUNCTION_107();
            if (v20)
            {
              OUTLINED_FUNCTION_3_13(v53);
              sub_2310CC18C();
              v41 = v54;
            }

            else
            {
              v54 = v41;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v59 = v101;
            }

            else
            {
              v74 = *(v101 + 16);
              OUTLINED_FUNCTION_17_8();
              sub_2310CC18C();
              v59 = v75;
            }

            v52 = *(v59 + 16);
            v60 = *(v59 + 24);
            OUTLINED_FUNCTION_107();
            if (v20)
            {
              OUTLINED_FUNCTION_3_13(v62);
              sub_2310CC18C();
              v101 = v54;
            }

            else
            {
              v101 = v61;
              v54 = v61;
            }
          }

          *(v54 + 16) = v50;
          v63 = v54 + 16 * v52;
          *(v63 + 32) = v42;
          *(v63 + 40) = v43;

          v64 = sub_23105FECC(v42, v43);
          v66 = v65;

          if (v66)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v102 = v39;
            v67 = v39[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
            sub_231159698();
            v39 = v102;
            v68 = *(v102[6] + 16 * v64 + 8);

            sub_231093C48((v102[7] + 40 * v64), v0 + 256);
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
            sub_2311596B8();
          }

          else
          {

            *(v0 + 288) = 0;
            *(v0 + 256) = 0u;
            *(v0 + 272) = 0u;
          }

          sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
          __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = *(v5 + 16);
            OUTLINED_FUNCTION_17_8();
            sub_2310CC18C();
            v5 = v70;
          }

          v56 = *(v5 + 16);
          v55 = *(v5 + 24);
          OUTLINED_FUNCTION_107();
          if (v20)
          {
            OUTLINED_FUNCTION_3_13(v57);
            sub_2310CC18C();
            v5 = v71;
          }

          *(v5 + 16) = v44;
          v58 = v5 + 16 * v56;
          *(v58 + 32) = v42;
          *(v58 + 40) = v43;
        }

        v40 += 2;
        --v38;
      }

      while (v38);
    }

    else
    {
      v78 = *(v0 + 392);
      v5 = MEMORY[0x277D84F90];
      v101 = MEMORY[0x277D84F90];
    }

    v98 = sub_2310927B4(v79);
    v100 = 0xE400000000000000;
    v77 = 1819047270;
  }

  v97 = v77;
  v81 = *(v0 + 360);
  v80 = *(v0 + 368);
  v96 = *(v0 + 352);
  sub_231158B68();
  sub_231158B58();
  *(v0 + 296) = *(v5 + 16);
  v82 = sub_2311597C8();
  v94 = v83;
  v95 = v82;
  *(v0 + 304) = *(v101 + 16);
  v84 = sub_2311597C8();
  v86 = v85;
  *(v0 + 312) = *(v98 + 16);
  v87 = sub_2311597C8();
  *v80 = v97;
  v80[1] = v100;
  v80[2] = v95;
  v80[3] = v94;
  v80[4] = v84;
  v80[5] = v86;
  v80[6] = v87;
  v80[7] = v88;
  v89 = *MEMORY[0x277D73270];
  OUTLINED_FUNCTION_127();
  v90(v80);
  sub_231158B48();

  (*(v81 + 8))(v80, v96);

  v91 = *(v0 + 8);
  OUTLINED_FUNCTION_21_4();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_2310A9EFC()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[46];
  v1 = v0[47];

  OUTLINED_FUNCTION_1();
  v4 = v0[50];

  return v3();
}

uint64_t sub_2310A9F60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 336) = a4;
  *(v5 + 344) = v4;
  *(v5 + 488) = a3;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  v6 = sub_231159228();
  *(v5 + 352) = v6;
  v7 = *(v6 - 8);
  *(v5 + 360) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  v9 = sub_231158C58();
  *(v5 + 432) = v9;
  v10 = *(v9 - 8);
  *(v5 + 440) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AA0D8, 0, 0);
}

uint64_t sub_2310AA0D8()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 456) = v1;
  OUTLINED_FUNCTION_132();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_90(v5);

  return v7(v6);
}

uint64_t sub_2310AA1DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (!v0)
  {
    v8 = v3[57];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310AA2E4()
{
  v1 = *(v0 + 320);
  if ((*(v0 + 488) & 1) == 0)
  {
    v77 = *(v1 + 16);
    if (!v77)
    {
      v170 = *(v0 + 472);
      v265 = MEMORY[0x277D84F90];
      v261 = MEMORY[0x277D84F90];
LABEL_58:

      v168 = sub_2310927B4(v171);
      v219 = 0xE400000000000000;
      v169 = 1819047270;
      goto LABEL_59;
    }

    v78 = *(v0 + 360);
    v80 = *(v78 + 16);
    v78 += 16;
    v79 = v80;
    v81 = (*(v78 + 64) + 32) & ~*(v78 + 64);
    v82 = v1 + v81;
    v251 = (v78 - 8);
    v256 = (v78 + 16);
    v83 = *(v0 + 472);
    v216 = (v0 + 408);
    v223 = (v0 + 400);
    v261 = MEMORY[0x277D84F90];
    v265 = MEMORY[0x277D84F90];
    v230 = MEMORY[0x277D84F90];
    v237 = v81;
    v259 = v80;
    v263 = *(v78 + 56);
    while (1)
    {
      v79(*(v0 + 424), v82, *(v0 + 352));
      v84 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      if (!v83[2])
      {
        break;
      }

      sub_23105FECC(v84, v85);
      v87 = v86;

      if ((v87 & 1) == 0)
      {
        goto LABEL_37;
      }

      v88 = *(v0 + 424);
      v89 = *(v0 + 352);
      v90 = OUTLINED_FUNCTION_164(v83[7]);
      sub_2310548A0(v90, v0 + 176);
      sub_231093C48((v0 + 176), v0 + 136);
      v91 = v79;
      v92 = *(v0 + 160);
      v93 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_0((v0 + 136), v92);
      *(v0 + 240) = v89;
      *(v0 + 248) = &protocol witness table for WFDatabase.SpotlightSyncableWorkflow;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      v91(boxed_opaque_existential_1, v88, v89);
      LOBYTE(v92) = sub_231090444((v0 + 216), v92, v93);
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v95 = *(v0 + 424);
      v96 = *(v0 + 352);
      if (v92)
      {
        v91(*v216, v95, v96);
        v97 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = *(v230 + 16);
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v97 = v164;
        }

        v81 = v237;
        v104 = *(v97 + 16);
        v103 = *(v97 + 24);
        v105 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          OUTLINED_FUNCTION_55_3(v103);
          sub_2310CC5C8();
          v107 = v216;
          v230 = v106;
        }

        else
        {
          v230 = v97;
          v106 = v97;
          v107 = v216;
        }
      }

      else
      {
        v91(*v223, v95, v96);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v98 = v261;
        }

        else
        {
          v165 = *(v261 + 16);
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v98 = v166;
        }

        v81 = v237;
        v104 = *(v98 + 16);
        v129 = *(v98 + 24);
        v105 = v104 + 1;
        if (v104 >= v129 >> 1)
        {
          OUTLINED_FUNCTION_55_3(v129);
          sub_2310CC5C8();
          v107 = v223;
          v261 = v106;
        }

        else
        {
          v261 = v98;
          v106 = v98;
          v107 = v223;
        }
      }

      v130 = *v107;
      v131 = *(v0 + 424);
      v132 = *(v0 + 352);
      *(v106 + 16) = v105;
      OUTLINED_FUNCTION_171(v106 + v81 + v104 * v263, v130, v132, v98, v99, v100, v101, v102, v183, v189, v195, v200, v206, v216, v223, v230, v237, v83, v251, v256);
      v133();
      v134 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v136 = sub_23105FECC(v134, v135);
      LOBYTE(v131) = v137;

      v146 = *(v0 + 424);
      v147 = *(v0 + 352);
      if (v131)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v266 = v83;
        v148 = v83[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
        v81 = v239;
        sub_231159698();
        v83 = v266;
        v149 = *(v266[6] + 16 * v136 + 8);

        sub_231093C48((v266[7] + 40 * v136), v0 + 256);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
        v150 = sub_2311596B8();
        OUTLINED_FUNCTION_131(v150, v151, v152, v153, v154, v155, v156, v157, v187, v193, v199, v204, v211, v218, v225, v232, v239, v246, v253);
        v158(v146, v147);
      }

      else
      {
        OUTLINED_FUNCTION_131(v138, v139, v140, v141, v142, v143, v144, v145, v187, v193, v199, v204, v211, v218, v225, v232, v239, v246, v253);
        v159(v146, v147);
        *(v0 + 288) = 0;
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
      }

      v79 = v259;
      sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v120 = v263;
LABEL_50:
      v82 += v120;
      if (!--v77)
      {

        goto LABEL_58;
      }
    }

LABEL_37:
    v79(*(v0 + 416), *(v0 + 424), *(v0 + 352));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = *(v265 + 16);
      OUTLINED_FUNCTION_17_8();
      sub_2310CC5C8();
      v265 = v161;
    }

    v116 = *(v265 + 16);
    v115 = *(v265 + 24);
    if (v116 >= v115 >> 1)
    {
      OUTLINED_FUNCTION_3_13(v115);
      sub_2310CC5C8();
      v265 = v162;
    }

    v117 = *(v0 + 416);
    v118 = *(v0 + 352);
    OUTLINED_FUNCTION_131(*(v0 + 424), v108, v109, v110, v111, v112, v113, v114, v183, v189, v195, v200, v206, v216, v223, v230, v237, v241, v251);
    v119();
    *(v265 + 16) = v116 + 1;
    v120 = v263;
    OUTLINED_FUNCTION_171(v265 + v81 + v116 * v263, v121, v122, v123, v124, v125, v126, v127, v186, v192, v198, v203, v210, v217, v224, v231, v238, v245, v252, v256);
    v128();
    v79 = v259;
    goto LABEL_50;
  }

  v2 = *(v0 + 328);
  v3 = *(v1 + 16);
  if (v3)
  {
    v207 = *(v0 + 328);
    v4 = *(v0 + 472);
    v5 = *(v0 + 360);
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v262 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v8 = v1 + v262;
    v248 = v5 + 16;
    v255 = (v5 - 8);
    v220 = (v0 + 368);
    v213 = (v0 + 376);
    v261 = MEMORY[0x277D84F90];
    v265 = MEMORY[0x277D84F90];
    v234 = v7;
    v242 = MEMORY[0x277D84F90];
    v227 = v4;
    v258 = *(v5 + 56);
    while (1)
    {
      (v6)(*(v0 + 392), v8, *(v0 + 352));
      v9 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      if (!*(v4 + 2))
      {
        break;
      }

      v11 = *(v0 + 472);
      sub_23105FECC(v9, v10);
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }

      v14 = *(v0 + 392);
      v15 = *(v0 + 352);
      v16 = OUTLINED_FUNCTION_164(*(v4 + 7));
      sub_2310548A0(v16, v0 + 56);
      sub_231093C48((v0 + 56), v0 + 16);
      v17 = *(v0 + 40);
      v18 = *(v0 + 48);
      v4 = v6;
      v19 = __swift_project_boxed_opaque_existential_0((v0 + 16), v17);
      *(v0 + 120) = v15;
      *(v0 + 128) = &protocol witness table for WFDatabase.SpotlightSyncableWorkflow;
      v20 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      v4(v20, v14, v15);
      v21 = sub_231090444((v0 + 96), v17, v18);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v22 = *(v0 + 392);
      v23 = *(v0 + 352);
      if (v21)
      {
        v4(*v213, v22, v23);
        v24 = v242;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = *(v242 + 16);
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v24 = v72;
        }

        OUTLINED_FUNCTION_172();
        if (v33)
        {
          OUTLINED_FUNCTION_3_13(v32);
          sub_2310CC5C8();
          v24 = v73;
          v34 = v213;
          v242 = v73;
        }

        else
        {
          v242 = v24;
          v34 = v213;
        }
      }

      else
      {
        v4(*v220, v22, v23);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v24 = v261;
        }

        else
        {
          v74 = *(v261 + 16);
          OUTLINED_FUNCTION_17_8();
          sub_2310CC5C8();
          v24 = v75;
        }

        OUTLINED_FUNCTION_172();
        if (v33)
        {
          OUTLINED_FUNCTION_3_13(v56);
          sub_2310CC5C8();
          v24 = v76;
          v34 = v220;
          v261 = v76;
        }

        else
        {
          v261 = v24;
          v34 = v220;
        }
      }

      v57 = *v34;
      v58 = *(v0 + 352);
      OUTLINED_FUNCTION_171(*(v0 + 392), v25, v26, v27, v28, v29, v30, v31, v183, v189, v195, v200, v207, v213, v220, v227, v234, v242, v248, v255);
      v59();
      *(v24 + 16) = v21;
      v47 = v258;
      OUTLINED_FUNCTION_131(v24 + v262 + v19 * v258, v60, v61, v62, v63, v64, v65, v66, v185, v191, v197, v202, v209, v215, v222, v229, v236, v244, v250);
      v67();
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v6 = v234;
LABEL_22:
      v8 += v47;
      if (!--v3)
      {

        v2 = v207;
        goto LABEL_56;
      }
    }

LABEL_12:
    (v6)(*(v0 + 384), *(v0 + 392), *(v0 + 352));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v265 + 16);
      OUTLINED_FUNCTION_17_8();
      sub_2310CC5C8();
      v265 = v69;
    }

    v43 = *(v265 + 16);
    v42 = *(v265 + 24);
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_3_13(v42);
      sub_2310CC5C8();
      v265 = v70;
    }

    v44 = *(v0 + 384);
    v45 = *(v0 + 352);
    OUTLINED_FUNCTION_171(*(v0 + 392), v35, v36, v37, v38, v39, v40, v41, v183, v189, v195, v200, v207, v213, v220, v227, v234, v242, v248, v255);
    v46();
    *(v265 + 16) = v43 + 1;
    v47 = v258;
    OUTLINED_FUNCTION_131(v265 + v262 + v43 * v258, v48, v49, v50, v51, v52, v53, v54, v184, v190, v196, v201, v208, v214, v221, v228, v235, v243, v249);
    v55();
    goto LABEL_22;
  }

  v265 = MEMORY[0x277D84F90];
  v261 = MEMORY[0x277D84F90];
LABEL_56:
  v167 = *(v0 + 472);
  v168 = v2;

  v219 = 0xE700000000000000;
  OUTLINED_FUNCTION_163();
LABEL_59:
  v212 = v169;
  v173 = *(v0 + 440);
  v172 = *(v0 + 448);
  v205 = *(v0 + 432);
  v226 = *(v0 + 424);
  v233 = *(v0 + 416);
  v240 = *(v0 + 408);
  v247 = *(v0 + 400);
  v254 = *(v0 + 392);
  v257 = *(v0 + 384);
  v260 = *(v0 + 376);
  v264 = *(v0 + 368);
  sub_231158B68();
  sub_231158B58();
  *(v0 + 296) = *(v265 + 16);
  OUTLINED_FUNCTION_51_1();
  v174 = sub_2311597C8();
  v188 = v175;
  v194 = v174;
  *(v0 + 304) = *(v261 + 16);
  OUTLINED_FUNCTION_51_1();
  v176 = sub_2311597C8();
  v178 = v177;
  *(v0 + 312) = *(v168 + 16);
  OUTLINED_FUNCTION_51_1();
  v179 = sub_2311597C8();
  *v172 = v212;
  v172[1] = v219;
  v172[2] = v194;
  v172[3] = v188;
  v172[4] = v176;
  v172[5] = v178;
  v172[6] = v179;
  v172[7] = v180;
  (*(v173 + 104))(v172, *MEMORY[0x277D73270], v205);
  sub_231158B48();

  (*(v173 + 8))(v172, v205);

  v181 = *(v0 + 8);

  return v181(v265, v261, v168);
}

uint64_t sub_2310AACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = v12[56];
  v13 = v12[57];
  v16 = v12[52];
  v15 = v12[53];
  v18 = v12[50];
  v17 = v12[51];
  v20 = v12[48];
  v19 = v12[49];
  v22 = v12[46];
  v21 = v12[47];

  OUTLINED_FUNCTION_1();
  v23 = v12[60];
  OUTLINED_FUNCTION_39_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

void sub_2310AADB4(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      OUTLINED_FUNCTION_89();
      break;
    case 1:
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_46_3();
      break;
    default:
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      MEMORY[0x231924980](a1, a2);
      break;
  }
}

uint64_t sub_2310AAEC8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = sub_231158C58();
  v0[5] = v1;
  OUTLINED_FUNCTION_5(v1);
  v0[6] = v2;
  v4 = *(v3 + 64) + 15;
  v0[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2310AAFAC;

  return sub_2310AB220();
}

uint64_t sub_2310AAFAC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_1();

    return v13();
  }
}

uint64_t sub_2310AB0C8()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_231158B68();
  sub_231158B58();
  v5 = sub_231159588();
  OUTLINED_FUNCTION_159(v5, v6, v7, v8, v9, v10, v11, v12, v23, 0, 0xE000000000000000);
  OUTLINED_FUNCTION_89();
  MEMORY[0x231924980](0xD00000000000002BLL);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v13 = v0[3];
  *v2 = v24;
  v2[1] = v13;
  v14 = *MEMORY[0x277D73298];
  OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_62_3();
  v16(v15);
  sub_231158B48();

  v17 = *(v3 + 8);
  v18 = OUTLINED_FUNCTION_17();
  v19(v18);
  v20 = v0[7];

  OUTLINED_FUNCTION_1();

  return v21();
}

uint64_t sub_2310AB220()
{
  OUTLINED_FUNCTION_4_1();
  v9 = *MEMORY[0x277D85DE8];
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310AB2AC()
{
  OUTLINED_FUNCTION_22_0();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_databaseProvider);
  *(v0 + 40) = 0;
  v2 = [v1 databaseWithError_];
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    *(v0 + 16) = sub_231159248();
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    v10 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
    *(v0 + 80) = v10;
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_2310AB488;
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);
    v15 = *MEMORY[0x277D85DE8];

    return sub_2310AB6E0(v14, v12, v0 + 16, v4, v10);
  }

  else
  {
    v6 = v3;
    sub_231157938();

    swift_willThrow();
    OUTLINED_FUNCTION_1();
    v8 = *MEMORY[0x277D85DE8];

    return v7();
  }
}

uint64_t sub_2310AB488()
{
  OUTLINED_FUNCTION_21();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  v2[12] = v0;

  v8 = v2[2];
  v2 += 2;
  v9 = v2[8];
  sub_231092F7C(v8, v2[1], *(v2 + 16));

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AB5D0()
{
  OUTLINED_FUNCTION_4_1();
  v4 = *MEMORY[0x277D85DE8];

  OUTLINED_FUNCTION_1();
  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

uint64_t sub_2310AB658()
{
  OUTLINED_FUNCTION_4_1();
  v5 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_1();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_2310AB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 96) = *(a3 + 16);
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  v14 = *(v12 + 96);
  v16 = *(v12 + 56);
  v15 = *(v12 + 64);
  v17 = *(v12 + 40);
  v18 = *(v12 + 24);
  v19 = *(v12 + 32);
  v20 = *(v12 + 16);
  v35 = *(*(v12 + 48) + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_queue);
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  v21 = swift_allocObject();
  *(v12 + 72) = v21;
  *(v21 + 16) = v13;
  *(v21 + 24) = v16;
  *(v21 + 32) = v15;
  *(v21 + 40) = v14;
  *(v21 + 48) = v19;
  *(v21 + 56) = v17;
  *(v21 + 64) = v20;
  *(v21 + 72) = v18;
  sub_2310B28B8(v16, v15, v14);
  v22 = v19;
  v23 = v17;
  sub_2310B28F4(v20, v18);
  v24 = *(MEMORY[0x277D79D60] + 4);
  v25 = swift_task_alloc();
  *(v12 + 80) = v25;
  *v25 = v12;
  v25[1] = sub_2310AB858;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_2310AB858()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310AB958()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_2310AB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v29;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 336) = a5;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a2;
  v9 = type metadata accessor for ShortcutTransformer();
  *(v8 + 96) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_231158368();
  *(v8 + 112) = v11;
  v12 = *(v11 - 8);
  *(v8 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v14 = sub_231157A38();
  *(v8 + 136) = v14;
  v15 = *(v14 - 8);
  *(v8 + 144) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  *(v8 + 160) = v17;
  v18 = *(v17 - 8);
  *(v8 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v20 = sub_231158538();
  *(v8 + 184) = v20;
  v21 = *(v20 - 8);
  *(v8 + 192) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v24 = sub_231158418();
  *(v8 + 224) = v24;
  v25 = *(v24 - 8);
  *(v8 + 232) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310ABC7C, 0, 0);
}

uint64_t sub_2310ABC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_166();
  v20 = *(v19 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v19 + 248) = Strong;
  if (!Strong)
  {
LABEL_4:
    OUTLINED_FUNCTION_106();

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_32();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  OUTLINED_FUNCTION_173();
  sub_231158888();
  v22 = sub_231158878();
  *(v19 + 256) = v22;
  v23 = v22;
  v24 = *(v19 + 208);
  v25 = *(v19 + 192);
  v26 = *(v19 + 176);
  a13 = *(v19 + 216);
  v66 = *(v19 + 184);
  v27 = *(v19 + 160);
  v28 = *(v19 + 168);
  a9 = v27;
  a10 = *(v19 + 200);
  a12 = *(v19 + 152);
  sub_231158508();
  swift_getKeyPath();
  a11 = v23;
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();
  OUTLINED_FUNCTION_14_6();
  *(v29 + 16) = 0xD00000000000001FLL;
  *(v29 + 24) = v30;
  *v26 = v29;
  v31 = *MEMORY[0x277D721C8];
  OUTLINED_FUNCTION_127();
  v32(v26);
  sub_231051AE0();
  sub_231051E04(&qword_27DD3BCE8, &unk_27DD3C310, &unk_231163B00);
  sub_2311588F8();

  (*(v28 + 8))(v26, v27);
  v33 = *(v25 + 8);
  v34 = v66;
  a14 = v25 + 8;
  v33(a10, v34);
  sub_231157A28();
  sub_2311586D8();
  v35 = *(v19 + 216);
  v36 = *(v19 + 224);
  v37 = *(v19 + 208);
  v38 = *(v19 + 184);
  (*(*(v19 + 144) + 8))(*(v19 + 152), *(v19 + 136));
  v33(v37, v38);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    v39 = *(v19 + 216);

    sub_231093B90(v39, &qword_27DD3BCE0, &qword_231161D10);
    goto LABEL_4;
  }

  v50 = *(v19 + 120);
  v49 = *(v19 + 128);
  v51 = *(v19 + 112);
  v52 = *(v19 + 336);
  (*(*(v19 + 232) + 32))(*(v19 + 240), *(v19 + 216), *(v19 + 224));
  v53 = *&v18[OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_differ];
  (*(v50 + 104))(v49, *MEMORY[0x277D72200], v51);
  v54 = swift_task_alloc();
  *(v19 + 264) = v54;
  *v54 = v19;
  v54[1] = sub_2310AC09C;
  v55 = *(v19 + 128);
  v57 = *(v19 + 48);
  v56 = *(v19 + 56);
  OUTLINED_FUNCTION_32();

  return v62(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, sub_2310A9F60, a15, a16, a17, a18);
}

uint64_t sub_2310AC09C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[33];
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v10[34] = v8;
  v10[35] = v9;
  v10[36] = v11;
  v10[37] = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310AC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[31];
  v13 = v10[12];
  v12 = v10[13];
  v15 = v10[10];
  v14 = v10[11];
  v17 = v10[8];
  v16 = v10[9];
  (*(v10[29] + 16))(v12, v10[30], v10[28]);
  *(v12 + *(v13 + 20)) = v17;
  *(v12 + *(v13 + 24)) = v16;
  v18 = *(v11 + OBJC_IVAR____TtC14VoiceShortcuts28ShortcutSpotlightCoordinator_indexer);
  v10[38] = v18;
  v19 = v17;
  v20 = v16;
  v18;
  sub_2310AADB4(v15, v14);
  v10[39] = v21;
  v22 = swift_task_alloc();
  v10[40] = v22;
  *v22 = v10;
  v22[1] = sub_2310AC324;
  v23 = v10[35];
  v24 = v10[36];
  v25 = v10[34];
  v26 = v10[13];
  OUTLINED_FUNCTION_85();

  return v33(v27, v28, v29, v30, v31, v32, v33, v34, sub_2310AE3DC, a10);
}

uint64_t sub_2310AC324()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  v3[41] = v0;

  v6 = v2[39];
  v7 = v2[38];
  if (!v0)
  {
    v9 = v3[35];
    v8 = v3[36];
    v10 = v3[34];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AC488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_28_0();
  v12 = v10[31];
  v11 = v10[32];
  v14 = v10[29];
  v13 = v10[30];
  v15 = v10[28];
  v16 = v10[13];

  sub_2310B2908(v16);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_85();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2310AC554()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  (*(v4 + 8))(v3, v5);
  v6 = v0[37];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_2310AC630()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v9 = v0[13];

  sub_2310B2908(v9);
  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_21_2();
  v12(v11);
  v13 = v0[41];
  v14 = v0[30];
  v16 = v0[26];
  v15 = v0[27];
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_1();

  return v17();
}

uint64_t sub_2310AC734()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_231158258();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  v17 = sub_231158238();
  v18 = sub_2311592F8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_53();
    *v19 = 0;
    _os_log_impl(&dword_23103C000, v17, v18, "Database changed. Syncing shortcuts to Spotlight", v19, 2u);
    v20 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x2319267C0](v20);
  }

  (*(v11 + 8))(v15, v8);
  v21 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v1;
  v23 = v1;
  v24 = OUTLINED_FUNCTION_114();
  sub_23105ED1C(v24, v25, v7, v26, v22);
}

uint64_t sub_2310AC90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310AB220();
}

uint64_t sub_2310ACA8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v9 = v0;
  v10 = OUTLINED_FUNCTION_114();
  sub_23105ED1C(v10, v11, v6, v12, v8);
}

uint64_t sub_2310ACB5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310AB220();
}

void sub_2310ACC54(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = sub_231158C58();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = (&v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v38);
  __swift_project_boxed_opaque_existential_0(v38, v38[3]);
  DynamicType = swift_getDynamicType();
  v14 = v38[4];

  __swift_destroy_boxed_opaque_existential_0(v38);
  v37[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v37[4] = sub_231086674();
  LOBYTE(v37[0]) = 4;
  (*(v14 + 40))(&v39, v37, DynamicType, v14);
  __swift_destroy_boxed_opaque_existential_0(v37);
  OUTLINED_FUNCTION_93();
  LOBYTE(v38[0]) = 2;
  v15 = *(v3 + 80);
  OUTLINED_FUNCTION_168();
  v16();
  OUTLINED_FUNCTION_93();
  (*(v3 + 104))(v14, v3, 5.0);
  OUTLINED_FUNCTION_93();
  v17 = *(v3 + 128);
  OUTLINED_FUNCTION_168();
  v18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_231161B80;
  v20 = *MEMORY[0x277D7A338];
  *(v19 + 32) = sub_231158E58();
  *(v19 + 40) = v21;
  OUTLINED_FUNCTION_93();
  v22 = *(v3 + 152);
  OUTLINED_FUNCTION_168();
  v23();
  OUTLINED_FUNCTION_93();
  v38[0] = 5;
  v24 = *(v3 + 32);
  OUTLINED_FUNCTION_168();
  v25();
  sub_2310ADC14(&v39);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(&v39);
    v39 = v2;
    v26 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v38[0] & 1) == 0)
    {

      sub_231158B68();
      sub_231158B58();
      OUTLINED_FUNCTION_14_6();
      *v12 = 0xD00000000000004ALL;
      v12[1] = v32;
      v33 = *MEMORY[0x277D73290];
      v34 = OUTLINED_FUNCTION_165();
      v35(v34);
      sub_231158B48();

      (*(v8 + 8))(v12, v5);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v39);
    sub_231158B68();
    sub_231158B58();
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_231159588();

    OUTLINED_FUNCTION_14_6();
    v39 = 0xD00000000000002FLL;
    v40 = v27;
    sub_2310AADB4(a1, v41);
    MEMORY[0x231924980]();

    v28 = v40;
    *v12 = v39;
    v12[1] = v28;
    v29 = *MEMORY[0x277D73280];
    v30 = OUTLINED_FUNCTION_165();
    v31(v30);
    sub_231158B48();

    (*(v8 + 8))(v12, v5);
  }
}

uint64_t sub_2310AD0BC()
{
  OUTLINED_FUNCTION_4_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231157F18();
  v1[4] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310AD16C()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D79C58])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[2];

    v9 = *MEMORY[0x277D7A338];
    v10 = sub_231158E58();
    v12 = sub_23106EED8(v10, v11, v7);

    if (v12)
    {
    }

    else
    {
      v15 = sub_231158E58();
      v17 = sub_23106EED8(v15, v16, v6);

      if (!v17)
      {
LABEL_10:
        v18 = v0[6];

        OUTLINED_FUNCTION_46_0();

        return v19();
      }
    }

    OUTLINED_FUNCTION_89();
    v13 = 0xD00000000000001BLL;
LABEL_8:
    sub_2310ACC54(v13, v14);
    goto LABEL_10;
  }

  if (v4 == *MEMORY[0x277D79C48])
  {
    v13 = 0x696572206C6C7546;
    v14 = 0xEC0000007865646ELL;
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D79C50])
  {
    goto LABEL_10;
  }

  v21 = v0[4];

  return sub_231159808();
}

uint64_t sub_2310AD36C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = sub_231157F18();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v22 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v32 - v23;
  sub_2310DC330(a1);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return sub_231093B90(v14, &unk_27DD3CE70, &qword_2311626F0);
  }

  v26 = v8;
  v32[1] = v8;
  v27 = *(v18 + 32);
  v27(v24, v14, v15);
  v28 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v28);
  (*(v18 + 16))(v22, v24, v15);
  v29 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v1;
  v27(&v30[v29], v22, v15);
  v31 = v1;
  OUTLINED_FUNCTION_114();
  sub_2310798FC();

  return (*(v18 + 8))(v24, v15);
}

uint64_t sub_2310AD5F0()
{
  v1 = sub_231158C58();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2310AD6EC;

  return sub_2310AD0BC();
}

uint64_t sub_2310AD6EC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_1();

    return v13();
  }
}

uint64_t sub_2310AD808()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_231159588();
  OUTLINED_FUNCTION_159(v5, v6, v7, v8, v9, v10, v11, v12, v24, 0, 0xE000000000000000);
  MEMORY[0x231924980](0xD000000000000034, 0x8000000231169BC0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  OUTLINED_FUNCTION_89();
  MEMORY[0x231924980](0xD000000000000025);
  v13 = v0[3];
  sub_231158B68();
  sub_231158B58();
  *v2 = v25;
  v2[1] = v13;
  v14 = *MEMORY[0x277D73298];
  v15 = *(v3 + 104);
  v16 = OUTLINED_FUNCTION_62_3();
  v17(v16);
  sub_231158B48();

  v18 = *(v3 + 8);
  v19 = OUTLINED_FUNCTION_17();
  v20(v19);
  v21 = v0[7];

  OUTLINED_FUNCTION_1();

  return v22();
}

id sub_2310ADA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutSpotlightCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2310ADB3C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_173();
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_19(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_11_0();

  return sub_2310AD5F0();
}

uint64_t sub_2310ADC14(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v7 = qword_280CCB570;
  sub_2310548A0(a1, v30);
  v8 = &off_231161000;
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_40_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_43_3();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v2 = 136315138;
    v11 = v31;
    v10 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v12 = v11;
    v8 = &off_231161000;
    v13 = (*(v10 + 16))(v12, v10);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v16 = sub_2310488F8(v13, v15, &v33);

    *(v2 + 4) = v16;
    _os_log_impl(&dword_23103C000, v7, v6, "task '%s': submitting to run", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v3 = v2;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v17 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v17);
  result = (*(v18 + 16))(a1, v17, v18);
  if (!v3)
  {
    v20 = sub_2311592F8();
    sub_2310548A0(a1, v30);
    if (os_log_type_enabled(v7, v20))
    {
      OUTLINED_FUNCTION_40_4();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_54_3();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = *(v8 + 8);
      v23 = v31;
      v24 = v32;
      __swift_project_boxed_opaque_existential_0(v30, v31);
      v25 = (*(v24 + 16))(v23, v24);
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v28 = sub_2310488F8(v25, v27, &v33);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_23103C000, v7, v20, "task '%s': submitted to run", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v29 = OUTLINED_FUNCTION_24_4();
      MEMORY[0x2319267C0](v29);
      OUTLINED_FUNCTION_40();
      return MEMORY[0x2319267C0]();
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  return result;
}

uint64_t sub_2310ADED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310ADEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_170();
  *(v13 + 72) = *(v12 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_109(v14);
  v15 = *(MEMORY[0x277D79D60] + 4);

  v16 = swift_task_alloc();
  *(v13 + 88) = v16;
  *v16 = v13;
  v16[1] = sub_2310AE020;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2310AE020()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[12] = v0;

  if (!v0)
  {
    v10 = v3[9];
    v9 = v3[10];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AE128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310AE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_170();
  *(v13 + 72) = *(v12 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_135();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_109(v14);
  v15 = *(MEMORY[0x277D79D60] + 4);

  v16 = swift_task_alloc();
  *(v13 + 88) = v16;
  *v16 = v13;
  v16[1] = sub_2310AE270;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x2821E1890](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2310AE270()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[12] = v0;

  if (!v0)
  {
    v10 = v3[9];
    v9 = v3[10];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AE378()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_1();
  v4 = v0[12];

  return v3();
}

uint64_t sub_2310AE3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(type metadata accessor for ShortcutTransformer() - 8);
  v7[9] = v8;
  v7[10] = *(v8 + 64);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AE4AC, 0, 0);
}

uint64_t sub_2310AE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v13 = v12[11];
  v14 = v12[9];
  v15 = v12[7];
  v34 = v12[10];
  v35 = v12[6];
  v16 = v12[4];
  v17 = v12[5];
  v19 = v12[2];
  v18 = v12[3];
  v36 = *(v12[8] + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  v12[12] = v36;
  OUTLINED_FUNCTION_9_0();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2310B2964(v17, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = swift_allocObject();
  v12[13] = v22;
  v22[2] = v20;
  v22[3] = v35;
  v22[4] = v15;
  v22[5] = v19;
  v22[6] = v18;
  v22[7] = v16;
  sub_2310B29C8(v13, v22 + v21);
  v23 = *(MEMORY[0x277D79D60] + 4);

  v24 = swift_task_alloc();
  v12[14] = v24;
  *v24 = v12;
  v24[1] = sub_2310AE630;
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821E1890](v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, a12);
}

uint64_t sub_2310AE630()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[15] = v0;

  if (!v0)
  {
    v10 = v3[12];
    v9 = v3[13];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310AE738()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_2310AE790()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  OUTLINED_FUNCTION_1();
  v5 = v0[15];

  return v4();
}

uint64_t sub_2310AE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231158258();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v12 = sub_231158C58();
  v8[34] = v12;
  v13 = *(v12 - 8);
  v8[35] = v13;
  v14 = *(v13 + 64) + 15;
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AE934, 0, 0);
}

uint64_t sub_2310AEDBC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310AEEB8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[37];
  swift_willThrow();

  v5 = v0[50];
  OUTLINED_FUNCTION_180();

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_2310AEF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v18 = *(v16 + 392);
  v19 = *(v16 + 224);

  v20 = *(v19 + 16);
  v21 = *MEMORY[0x277D73268];
  for (i = v19 + 40; v20; --v20)
  {
    v24 = *(v16 + 344);
    v23 = *(v16 + 352);
    v26 = *(v16 + 328);
    v25 = *(v16 + 336);
    v28 = *(v16 + 296);
    v27 = *(v16 + 304);
    v29 = *(v16 + 288);
    v17 = *(v16 + 272);
    v30 = OUTLINED_FUNCTION_44_2();
    v31(v30);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v32 = OUTLINED_FUNCTION_45();
    v24(v32);
    i += 16;
  }

  OUTLINED_FUNCTION_134();
  v63 = v18;

  v33 = v21;
  sub_2310A8E6C(v17);
  *(v16 + 416) = v18;
  v34 = *(v17 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    a9 = v18;
    a10 = v33;
    v36 = *(v16 + 216);
    v62 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v35 = v62;
    v37 = (v36 + 80);
    do
    {
      v38 = *(v37 - 5);
      v39 = *(v37 - 4);
      v40 = *(v37 - 2);
      if (v40)
      {
        v41 = *v37;
        v42 = *(v37 - 3);
        v63 = *(v37 - 5);
        a13 = *(v37 - 4);

        swift_bridgeObjectRetain_n();

        MEMORY[0x231924980](45, 0xE100000000000000);

        MEMORY[0x231924980](v42, v40);

        v38 = v63;
      }

      else
      {
        v43 = *(v37 - 4);
      }

      a11 = v35;
      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      if (v45 >= v44 >> 1)
      {
        v47 = OUTLINED_FUNCTION_55_3(v44);
        sub_23104CA0C(v47, v45 + 1, 1);
      }

      *(v35 + 16) = v45 + 1;
      v46 = v35 + 16 * v45;
      *(v46 + 32) = v38;
      *(v46 + 40) = v39;
      v37 += 7;
      --v34;
    }

    while (v34);
  }

  v48 = *(v16 + 296);
  v49 = *(v16 + 232);
  *(v16 + 424) = sub_2310BE194(v35);
  OUTLINED_FUNCTION_26_1();
  v50 = swift_allocObject();
  *(v16 + 432) = v50;
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  OUTLINED_FUNCTION_151(dword_231164DF0);
  v51 = v48;
  v52 = swift_task_alloc();
  *(v16 + 440) = v52;
  *v52 = v16;
  v52[1] = sub_2310AF1E8;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_23_0();

  return v58(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, v63, a13, a14, a15, a16);
}

uint64_t sub_2310AF1E8()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[55];
  *v4 = *v1;
  *(v3 + 448) = v0;

  v6 = v2[54];
  v7 = v2[53];
  v8 = v2[52];
  v9 = v2[51];
  if (v0)
  {
    v10 = v2[54];
  }

  else
  {
    v11 = v2[53];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310AF384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v51 = *(v16 + 352);
  v52 = *(v16 + 360);
  v17 = *(v16 + 336);
  v50 = *(v16 + 344);
  v18 = *(v16 + 320);
  v19 = *(v16 + 328);
  v20 = *(v16 + 288);
  v21 = *(v16 + 272);
  v22 = *(v16 + 256);
  v24 = *(v16 + 192);
  v23 = *(v16 + 200);
  v25 = *(*(v16 + 296) + *(v16 + 304));
  *(v16 + 176) = *(v16 + 312);
  v53 = sub_231158E68();
  v54 = v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v24, v23);
  *v20 = v53;
  v20[1] = v54;
  v19(v20, *MEMORY[0x277D732B0], v21);
  sub_231158B48();
  v27 = OUTLINED_FUNCTION_21_2();
  v50(v27);
  sub_2311581C8();
  v28 = sub_231158238();
  v29 = sub_2311592F8();
  v30 = OUTLINED_FUNCTION_20_2(v29);
  v31 = *(v16 + 296);
  if (v30)
  {
    v32 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v32);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_126(v33, v34, v35, v36);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v37 = v28;
  }

  else
  {
    v37 = *(v16 + 296);
    v31 = v28;
  }

  v38 = *(v16 + 288);
  v39 = *(v16 + 264);
  v40 = *(v16 + 248) + 8;
  (*(v16 + 368))(*(v16 + 256), *(v16 + 240));

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, a14, a15, a16);
}

uint64_t sub_2310AF510()
{
  OUTLINED_FUNCTION_21();

  v1 = *(v0 + 448);
  OUTLINED_FUNCTION_180();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310AF588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231158258();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v12 = sub_231158C58();
  v8[34] = v12;
  v13 = *(v12 - 8);
  v8[35] = v13;
  v14 = *(v13 + 64) + 15;
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310AF6BC, 0, 0);
}

uint64_t sub_2310AFB44()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310AFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v16 = *(v14 + 392);
  v17 = *(v14 + 224);

  v18 = *(v17 + 16);
  v19 = *MEMORY[0x277D73268];
  for (i = v17 + 40; v18; --v18)
  {
    v22 = *(v14 + 344);
    v21 = *(v14 + 352);
    v24 = *(v14 + 328);
    v23 = *(v14 + 336);
    v26 = *(v14 + 296);
    v25 = *(v14 + 304);
    v27 = *(v14 + 288);
    v15 = *(v14 + 272);
    v28 = OUTLINED_FUNCTION_44_2();
    v29(v28);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v30 = OUTLINED_FUNCTION_45();
    v22(v30);
    i += 16;
  }

  OUTLINED_FUNCTION_134();
  v57 = v16;

  v31 = v19;
  sub_2310A8F44(v15);
  v32 = v16;
  *(v14 + 416) = v16;
  v33 = *(v15 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    a9 = v32;
    a10 = v31;
    v35 = *(v14 + 216);
    v58 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v34 = v58;
    v36 = *(v58 + 16);
    v37 = 16 * v36;
    v38 = (v35 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v57 = v34;
      v41 = *(v34 + 24);

      if (v36 >= v41 >> 1)
      {
        sub_23104CA0C((v41 > 1), v36 + 1, 1);
      }

      *(v34 + 16) = v36 + 1;
      v42 = v34 + v37;
      *(v42 + 32) = v40;
      *(v42 + 40) = v39;
      v37 += 16;
      v38 += 2;
      ++v36;
      --v33;
    }

    while (v33);
  }

  v43 = *(v14 + 296);
  v44 = *(v14 + 232);
  *(v14 + 424) = sub_2310BE194(v34);
  OUTLINED_FUNCTION_26_1();
  v45 = swift_allocObject();
  *(v14 + 432) = v45;
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;
  OUTLINED_FUNCTION_151(dword_231164E38);
  v46 = v43;
  v47 = swift_task_alloc();
  *(v14 + 440) = v47;
  *v47 = v14;
  v47[1] = sub_2310AFE68;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_10();

  return v53(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v57, a12, a13, a14);
}

uint64_t sub_2310AFE68()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[55];
  *v4 = *v1;
  *(v3 + 448) = v0;

  v6 = v2[54];
  v7 = v2[53];
  v8 = v2[52];
  v9 = v2[51];
  if (v0)
  {
    v10 = v2[54];
  }

  else
  {
    v11 = v2[53];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310B0004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[23] = a2;
  v9 = sub_231159228();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v12 = type metadata accessor for ShortcutTransformer();
  v8[33] = v12;
  v13 = *(v12 - 8);
  v8[34] = v13;
  v8[35] = *(v13 + 64);
  v8[36] = swift_task_alloc();
  v14 = sub_231158258();
  v8[37] = v14;
  v15 = *(v14 - 8);
  v8[38] = v15;
  v16 = *(v15 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v17 = sub_231158C58();
  v8[41] = v17;
  v18 = *(v17 - 8);
  v8[42] = v18;
  v19 = *(v18 + 64) + 15;
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B01F8, 0, 0);
}

uint64_t sub_2310B01F8()
{
  v79 = v0;
  OUTLINED_FUNCTION_77_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  if (!Strong)
  {
    v45 = v0[42];
    v44 = v0[43];
    v46 = v0[41];
    sub_231158B68();
    sub_231158B58();
    OUTLINED_FUNCTION_41_5();
    v47 = *MEMORY[0x277D73298];
    v48 = *(v45 + 104);
    v49 = OUTLINED_FUNCTION_62_3();
    v48(v49);
    sub_231158B48();

    v50 = *(v45 + 8);
    v51 = OUTLINED_FUNCTION_17();
    v50(v51);
    sub_231158B58();
    OUTLINED_FUNCTION_41_5();
    v52 = *MEMORY[0x277D732B0];
    v53 = OUTLINED_FUNCTION_62_3();
    v48(v53);
    sub_231158B48();

    v54 = OUTLINED_FUNCTION_17();
    v50(v54);
    sub_2310B2AF8();
    v55 = swift_allocError();
    OUTLINED_FUNCTION_104(v55, v56);
    OUTLINED_FUNCTION_100();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[33];
  v72 = v0[27];
  v7 = v0[25];
  v73 = v0[26];
  v74 = v0[28];
  v8 = v0[24];
  v9 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
  v0[45] = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
  v76 = Strong;
  v10 = *(Strong + v9);
  v0[21] = v6;
  v0[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA28, &unk_231164D70);
  v77 = sub_231158E68();
  v78 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v8, v7);
  v12 = v78;
  *v3 = v77;
  v3[1] = v12;
  v13 = *MEMORY[0x277D732A8];
  OUTLINED_FUNCTION_75_0();
  v0[47] = v14;
  v0[48] = v15;
  v14(v3);
  sub_231158B48();
  v16 = *(v2 + 8);
  v0[49] = v16;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v3, v5);
  v0[51] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  swift_bridgeObjectRetain_n();

  v17 = sub_231158238();
  sub_2311592F8();

  v18 = OUTLINED_FUNCTION_26_4();
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[38];
  if (v18)
  {
    v22 = v0[30];
    v23 = v0[27];
    v71 = v0[28];
    v24 = v0[26];
    OUTLINED_FUNCTION_54_3();
    swift_slowAlloc();
    v77 = OUTLINED_FUNCTION_156();
    *v10 = 136315650;
    MEMORY[0x231924A30](v24, v22);
    v75 = v19;
    OUTLINED_FUNCTION_105();

    v25 = OUTLINED_FUNCTION_45();
    v28 = sub_2310488F8(v25, v26, v27);

    *(v10 + 4) = v28;
    v29 = OUTLINED_FUNCTION_112();
    MEMORY[0x231924A30](v29, v22);
    OUTLINED_FUNCTION_103();
    v30 = OUTLINED_FUNCTION_17();
    v33 = sub_2310488F8(v30, v31, v32);

    *(v10 + 14) = v33;
    *(v10 + 22) = v20;
    v34 = MEMORY[0x231924A30](v71, MEMORY[0x277D837D0]);
    v36 = sub_2310488F8(v34, v35, &v77);

    *(v10 + 24) = v36;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v37, v38, v39, v40, v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v42 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x2319267C0](v42);

    v43 = *(v21 + 8);
    v43(v75, v20);
  }

  else
  {
    v60 = v0[26];
    v59 = v0[27];
    swift_bridgeObjectRelease_n();

    v43 = *(v21 + 8);
    v61 = OUTLINED_FUNCTION_45();
    v43(v61, v62);
  }

  OUTLINED_FUNCTION_116();
  v63 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index;
  v0[52] = v43;
  v0[53] = v63;
  v64 = *(v76 + v63);
  v0[54] = v64;
  v65 = v64;
  v0[55] = sub_231158F38();
  v0[2] = v0;
  v0[3] = sub_2310B06E8;
  OUTLINED_FUNCTION_102();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_16_6(v66);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_148(v67, sel_deleteSearchableItemsWithIdentifiers_completionHandler_);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x282200938](v68);
}

uint64_t sub_2310B06E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310B07E4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[44];
  swift_willThrow();

  v5 = v0[56];
  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_2310B0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_166();
  v19 = *(v18 + 440);
  v20 = *(v18 + 224);

  v21 = *(v20 + 16);
  v22 = *MEMORY[0x277D73268];
  for (i = v20 + 40; v21; --v21)
  {
    v25 = *(v18 + 392);
    v24 = *(v18 + 400);
    v27 = *(v18 + 376);
    v26 = *(v18 + 384);
    v29 = *(v18 + 352);
    v28 = *(v18 + 360);
    v30 = *(v18 + 344);
    v31 = *(v18 + 328);
    v32 = OUTLINED_FUNCTION_44_2();
    v33(v32);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v34 = OUTLINED_FUNCTION_45();
    v25(v34);
    i += 16;
  }

  v35 = *(v18 + 208);
  v36 = *(v18 + 216);
  v37 = *(*(v18 + 352) + *(v18 + 424));
  *(v18 + 456) = v37;
  v72 = v35;

  v38 = v37;
  sub_2310A940C(v36);
  *(v18 + 464) = v35;
  v39 = *(v36 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    a10 = v35;
    a11 = v38;
    v41 = *(v18 + 248);
    v42 = *(v18 + 216);
    v73 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_141();
    v40 = v73;
    v43 = *(v41 + 16);
    v41 += 16;
    v44 = v42 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    a12 = *(v41 + 56);
    a13 = v43;
    v45 = (v41 - 8);
    do
    {
      v46 = *(v18 + 256);
      v47 = *(v18 + 240);
      a13(v46, v44, v47);
      v48 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v50 = v49;
      (*v45)(v46, v47);
      v72 = v40;
      v52 = *(v40 + 16);
      v51 = *(v40 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_23104CA0C((v51 > 1), v52 + 1, 1);
      }

      *(v40 + 16) = v52 + 1;
      v53 = v40 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v44 += a12;
      --v39;
    }

    while (v39);
  }

  v54 = *(v18 + 352);
  v55 = *(v18 + 280);
  v56 = *(v18 + 288);
  v57 = *(v18 + 272);
  v58 = *(v18 + 232);
  *(v18 + 472) = sub_2310BE194(v40);
  sub_2310B2964(v58, v56);
  v59 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v60 = swift_allocObject();
  *(v18 + 480) = v60;
  sub_2310B29C8(v56, v60 + v59);
  *(v60 + ((v55 + v59 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;
  v61 = v54;
  v62 = swift_task_alloc();
  *(v18 + 488) = v62;
  *v62 = v18;
  v62[1] = sub_2310B0B74;
  OUTLINED_FUNCTION_32();

  return v68(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, sub_2310A7958, v72, a16, a17, a18);
}