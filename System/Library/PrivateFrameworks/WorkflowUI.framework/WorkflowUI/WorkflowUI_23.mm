double sub_27494FA4C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_274797F04(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_274797FD4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_27494FAB0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2747985F4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_27494FAF8(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1 & 1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_27494FB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_274797CC0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_27494FB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_274797CC0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27494FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_274797CC0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t SmartShortcutPickerActionTemplate.asSystemAction(with:sectionIdentifier:iconOverride:colorScheme:)()
{
  OUTLINED_FUNCTION_35_0();
  *(v3 + 1064) = v4;
  *(v3 + 1056) = v5;
  *(v3 + 1048) = v6;
  v7 = sub_2749FA4E4();
  *(v3 + 1072) = v7;
  OUTLINED_FUNCTION_27(v7);
  *(v3 + 1080) = v8;
  *(v3 + 1088) = OUTLINED_FUNCTION_45_8();
  memcpy((v3 + 368), v2, 0x81uLL);
  v9 = *v0;
  *(v3 + 185) = *(v0 + 16);
  v10 = *v1;
  v11 = v1[1];
  *(v3 + 1096) = v9;
  *(v3 + 1112) = v10;
  v12 = v1[2];
  *(v3 + 1128) = v11;
  *(v3 + 1144) = v12;
  *(v3 + 186) = *(v1 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_27494FD5C()
{
  OUTLINED_FUNCTION_29_14();
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  if (*(v0 + 186))
  {
    v3 = (v0 + 1120);
  }

  else
  {
    v3 = (v0 + 1144);
  }

  v4 = *v3;
  if (*(v0 + 186))
  {
    v5 = (v0 + 1128);
  }

  else
  {
    v5 = (v0 + 1152);
  }

  v6 = *v5;
  v7 = *(v0 + 185);
  memcpy((v0 + 16), *(v0 + 1048), 0x81uLL);
  *(v0 + 152) = v4;
  *(v0 + 160) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  *(v0 + 184) = v7;
  sub_2749F8F54();
  swift_allocObject();
  sub_274772B38(v0 + 368, v0 + 504);

  v8 = OUTLINED_FUNCTION_44();
  sub_27477D408(v8, v9, v7);
  *(v0 + 1160) = sub_2749F8F44();
  memcpy((v0 + 192), (v0 + 16), 0xA9uLL);
  sub_27477C9A8();
  *(v0 + 1168) = sub_2749F8F34();
  *(v0 + 1176) = v10;
  v11 = *(v0 + 1056);
  if (v11)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_3();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 symbolName];
      v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v15 = v14;

      goto LABEL_12;
    }

    v11 = 0;
  }

  v15 = 0;
LABEL_12:
  *(v0 + 1192) = v15;
  *(v0 + 1184) = v11;
  swift_allocObject();
  *(v0 + 1200) = sub_2749F8F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  sub_2747EC040();
  *(v0 + 1208) = sub_2749F8F34();
  *(v0 + 1216) = v16;
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v20 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  if (*(v0 + 186) == 1)
  {
    *(v0 + 912) = v22;
    *(v0 + 920) = v21;
    *(v0 + 928) = v20;
    *(v0 + 936) = v19;
    *(v0 + 944) = v18;
    *(v0 + 952) = v17;
    *(v0 + 960) = 1;
    OUTLINED_FUNCTION_8_35();
    memcpy(v23, v24, v25);
    v26 = swift_task_alloc();
    *(v0 + 1224) = v26;
    *v26 = v0;
    v26[1] = sub_274950140;
  }

  else
  {
    *(v0 + 968) = v22;
    *(v0 + 976) = v21;
    *(v0 + 984) = v20;
    *(v0 + 992) = v19;
    *(v0 + 1000) = v18;
    *(v0 + 1008) = v17;
    *(v0 + 1016) = 0;
    OUTLINED_FUNCTION_8_35();
    memcpy(v27, v28, v29);
    v30 = swift_task_alloc();
    *(v0 + 1248) = v30;
    *v30 = v0;
    v30[1] = sub_274950284;
  }

  return SmartShortcutPickerActionTemplate.fullyFormedAction(with:)();
}

uint64_t sub_274950140()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1232) = v4;
  *(v2 + 1240) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_274950284()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1256) = v4;
  *(v2 + 1264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2749503C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  *(v12 + 1040) = &unk_288451868;
  v13 = swift_dynamicCastObjCProtocolConditional();
  v14 = *(v12 + 1256);
  if (v13)
  {
    v15 = v14;
    v16 = [v13 associatedAppBundleIdentifier];
    v17 = *(v12 + 1256);
    if (v16)
    {
      v18 = v16;
      v84 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v20 = v19;
    }

    else
    {

      v84 = 0;
      v20 = 0;
    }
  }

  else
  {
    v84 = sub_2747DDFD4(v14, &selRef_appBundleIdentifier);
    v20 = v21;
  }

  if (*(v12 + 1192) || (sub_2747DDFD4(*(v12 + 1256), &selRef_iconSymbolName), v22))
  {
    v23 = objc_allocWithZone(MEMORY[0x277D79EB8]);
    OUTLINED_FUNCTION_44();
    v24 = sub_2749FCD64();
    v87 = [v23 initWithSystemName_];
  }

  else
  {
    v87 = 0;
  }

  v25 = *(v12 + 1264);
  v26 = OUTLINED_FUNCTION_47_8();
  v83 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v86 = v27;

  v28 = OUTLINED_FUNCTION_47_8();
  v82 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v85 = v29;

  OUTLINED_FUNCTION_8_35();
  memcpy(v30, v31, v32);
  v33 = sub_274937654();
  v34 = v25;
  v35 = *(v12 + 1256);
  v36 = *(v12 + 1216);
  v37 = *(v12 + 1208);
  v38 = *(v12 + 1176);
  v39 = *(v12 + 1168);
  if (v34)
  {

    sub_27477C9FC(v12 + 16);
    sub_2747BD02C(v37, v36);
    v40 = OUTLINED_FUNCTION_18_24();
    sub_2747BD02C(v40, v41);

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_65();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v80 = v33;
    OUTLINED_FUNCTION_8_35();
    memcpy(v51, v52, v53);
    v54 = SmartShortcutPickerActionConfiguration.displayString.getter();
    v78 = v55;
    v79 = v54;
    OUTLINED_FUNCTION_8_35();
    memcpy(v56, v57, v58);
    v59 = SmartShortcutPickerActionConfiguration.displayString.getter();
    v77 = v20;
    v61 = v60;
    objc_allocWithZone(MEMORY[0x277D79E90]);
    v62 = v87;
    OUTLINED_FUNCTION_33_13();
    v63 = sub_274954FDC(v83, v86, v82, v85, v84, v77, v80, v79, v78, v59, v61, 0, 0, v87, 0, *v76, v76[2]);
    objc_allocWithZone(MEMORY[0x277D79E58]);
    sub_2747EC0F4(v37, v36);
    v64 = OUTLINED_FUNCTION_18_24();
    sub_2747EC0F4(v64, v65);
    sub_2749551CC(v63, 0, v39, v38, v37, v36);

    sub_2747BD02C(v37, v36);

    v66 = OUTLINED_FUNCTION_18_24();
    sub_2747BD02C(v66, v67);

    sub_27477C9FC(v12 + 16);

    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_65();

    return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
  }
}

uint64_t sub_274950798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  objc_opt_self();
  OUTLINED_FUNCTION_3();
  v13 = swift_dynamicCastObjCClass();
  *(v12 + 1272) = v13;
  if (v13)
  {
    v14 = *(v12 + 1232);

    *(v12 + 1280) = sub_2749FD0A4();
    *(v12 + 1288) = sub_2749FD094();
    OUTLINED_FUNCTION_78();
    sub_2749FD044();
    OUTLINED_FUNCTION_65();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    *(v12 + 1024) = &unk_288451868;
    v19 = swift_dynamicCastObjCProtocolConditional();
    v20 = *(v12 + 1232);
    v21 = *(v12 + 1112);
    if (v19)
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v25 = [v22 associatedAppBundleIdentifier];
      v26 = *(v12 + 1232);
      if (v25)
      {
        v27 = v25;
        v102 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v29 = v28;
      }

      else
      {

        v102 = 0;
        v29 = 0;
      }
    }

    else
    {
      v30 = v21;
      v102 = sub_2747DDFD4(v20, &selRef_appBundleIdentifier);
      v29 = v31;
    }

    if (*(v12 + 1192) || (sub_2747DDFD4(*(v12 + 1232), &selRef_iconSymbolName), v32))
    {
      v33 = objc_allocWithZone(MEMORY[0x277D79EB8]);
      OUTLINED_FUNCTION_44();
      v34 = sub_2749FCD64();
      v104 = [v33 initWithSystemName_];
    }

    else
    {
      v104 = 0;
    }

    v35 = *(v12 + 1240);
    v36 = OUTLINED_FUNCTION_47_8();
    v101 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v38 = v37;

    v39 = OUTLINED_FUNCTION_47_8();
    v100 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v103 = v40;

    OUTLINED_FUNCTION_8_35();
    memcpy(v41, v42, v43);
    sub_274937654();
    v44 = v35;
    v45 = *(v12 + 1232);
    v46 = *(v12 + 1216);
    v47 = *(v12 + 1208);
    v48 = *(v12 + 1176);
    v49 = *(v12 + 1168);
    v50 = *(v12 + 1112);
    if (v44)
    {

      sub_27477C9FC(v12 + 16);
      v51 = OUTLINED_FUNCTION_20_18();
      sub_2747BD02C(v51, v52);
      v53 = OUTLINED_FUNCTION_18_24();
      sub_2747BD02C(v53, v54);

      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_65();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_8_35();
      v98 = v63;
      memcpy(v64, v65, v66);
      v67 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v96 = v68;
      v97 = v67;
      OUTLINED_FUNCTION_8_35();
      memcpy(v69, v70, v71);
      v72 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v95 = v29;
      v74 = v73;
      objc_allocWithZone(MEMORY[0x277D79E90]);
      v75 = v104;
      OUTLINED_FUNCTION_33_13();
      v76 = sub_274954FDC(v101, v38, v100, v103, v102, v95, v98, v97, v96, v72, v74, 0, 0, v104, 0, *v94, v94[2]);
      objc_allocWithZone(MEMORY[0x277D79E58]);
      v77 = OUTLINED_FUNCTION_20_18();
      sub_2747EC0F4(v77, v78);
      v79 = OUTLINED_FUNCTION_18_24();
      sub_2747EC0F4(v79, v80);
      sub_2749551CC(v76, v50, v49, v48, v47, v46);

      v81 = OUTLINED_FUNCTION_20_18();
      sub_2747BD02C(v81, v82);

      v83 = OUTLINED_FUNCTION_18_24();
      sub_2747BD02C(v83, v84);

      sub_27477C9FC(v12 + 16);

      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65();

      return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_274950C44()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 1272);

  *(v0 + 1296) = [v1 linkActionWithSerializedParameters];
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_274950CF0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 1232);
  *(v0 + 1304) = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v3 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274950DB0, v3, v2);
}

uint64_t sub_274950DB0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[159];
  v2 = v0[154];

  v0[164] = [v1 fullyQualifiedLinkActionIdentifier];

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274950E6C()
{
  v1 = *(v0 + 1312);
  v2 = [objc_allocWithZone(MEMORY[0x277D23C30]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274A11F70;
  *(v3 + 32) = v1;
  sub_27471CF08(0, &qword_280970708);
  v4 = v1;
  OUTLINED_FUNCTION_32_1();
  v5 = sub_2749FCF74();

  *(v0 + 1032) = 0;
  v6 = [v2 actionsWithFullyQualifiedIdentifiers:v5 error:v0 + 1032];

  v7 = *(v0 + 1032);
  v8 = *(v0 + 1312);
  v94 = v2;
  if (!v6)
  {
    v66 = *(v0 + 1232);
    v67 = *(v0 + 1216);
    v68 = *(v0 + 1208);
    v69 = *(v0 + 1176);
    v70 = *(v0 + 1168);
    v93 = *(v0 + 1296);
    v71 = v7;

    sub_2749F8FE4();
    swift_willThrow();
    sub_2747BD02C(v68, v67);

    sub_2747BD02C(v70, v69);

    sub_27477C9FC(v0 + 16);

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970710);
  v9 = sub_2749FCCA4();
  v10 = v7;

  v11 = [v8 bundleIdentifier];
  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = v13;

  v15 = sub_27494FBE0(v12, v14, v9);

  if (!v15 || (v16 = [*(v0 + 1312) actionIdentifier], v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v19 = v18, v16, v20 = sub_27494FB48(v17, v19, v15), , , !v20))
  {
    v49 = *(v0 + 1112);
    sub_2749FA3D4();
    v50 = v49;
    v51 = sub_2749FA4D4();
    v52 = sub_2749FD2C4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 1112);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v53;
      *v55 = v53;
      v56 = v53;
      _os_log_impl(&dword_274719000, v51, v52, "Unable to fetch action metadata for action with identifier: %@", v54, 0xCu);
      sub_27493C1E0(v55, &qword_28096A280);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    v57 = *(v0 + 1312);
    v58 = *(v0 + 1296);
    v59 = *(v0 + 1232);
    v60 = *(v0 + 1208);
    v86 = *(v0 + 1216);
    v89 = *(v0 + 1168);
    v91 = *(v0 + 1176);
    v61 = *(v0 + 1112);

    v62 = OUTLINED_FUNCTION_125();
    v63(v62);
    sub_2749552C0();
    OUTLINED_FUNCTION_26_14();
    swift_allocError();
    *v64 = v61;
    *(v64 + 8) = 0;
    swift_willThrow();
    v65 = v61;

    sub_2747BD02C(v60, v86);

    sub_2747BD02C(v89, v91);

    sub_27477C9FC(v0 + 16);
    goto LABEL_10;
  }

  v21 = *(v0 + 1312);
  v22 = *(v0 + 1296);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1112);

  v25 = [v21 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  sub_27471CF08(0, &qword_280970728);
  sub_27471CF08(0, &qword_280970730);
  v26 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v27 = v22;
  v92 = v20;
  v28 = OUTLINED_FUNCTION_42();
  v90 = sub_274954DA0(v28, v29, v30, v31);
  OUTLINED_FUNCTION_8_35();
  memcpy(v32, v33, v34);
  v83 = SmartShortcutPickerActionConfiguration.displayString.getter();
  v88 = v35;
  OUTLINED_FUNCTION_8_35();
  memcpy(v36, v37, v38);
  v39 = v24;
  v40 = sub_274937654();
  v41 = v23;
  v85 = *(v0 + 1312);
  v87 = *(v0 + 1296);
  v84 = *(v0 + 1232);
  v42 = *(v0 + 1216);
  v43 = *(v0 + 1208);
  v44 = *(v0 + 1176);
  v45 = *(v0 + 1168);
  v46 = *(v0 + 1112);
  if (v41)
  {
    sub_2747BD02C(*(v0 + 1208), *(v0 + 1216));

    v47 = OUTLINED_FUNCTION_20_18();
    sub_2747BD02C(v47, v48);

    sub_27477C9FC(v0 + 16);

LABEL_10:

    OUTLINED_FUNCTION_48_0();

    return v72();
  }

  v74 = v40;
  v75 = *(v0 + 1056);
  objc_allocWithZone(MEMORY[0x277D79E68]);
  v76 = OUTLINED_FUNCTION_20_18();
  sub_2747EC0F4(v76, v77);
  v78 = v75;
  v79 = sub_274954E6C(v90, v83, v88, v75, v46, v74, v45, v44, v43, v42);

  v80 = OUTLINED_FUNCTION_20_18();
  sub_2747BD02C(v80, v81);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_24_18();

  return v82(v79);
}

uint64_t sub_27495156C()
{
  OUTLINED_FUNCTION_19_21();

  v1 = OUTLINED_FUNCTION_45();
  sub_2747BD02C(v1, v2);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_274951628()
{
  OUTLINED_FUNCTION_19_21();

  v1 = OUTLINED_FUNCTION_45();
  sub_2747BD02C(v1, v2);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t SmartShortcutPickerActionTemplate.fullyFormedAction(with:)()
{
  OUTLINED_FUNCTION_72();
  *(v1 + 240) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970738);
  *(v1 + 248) = OUTLINED_FUNCTION_45_8();
  v3 = sub_2749F9164();
  *(v1 + 256) = v3;
  OUTLINED_FUNCTION_27(v3);
  *(v1 + 264) = v4;
  *(v1 + 272) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 288) = *v0;
  *(v1 + 152) = v6;
  *(v1 + 280) = v5;
  v8 = *(v0 + 48);
  *(v1 + 145) = v8;
  *(v1 + 168) = v7;
  *(v1 + 184) = v0[2];
  *(v1 + 200) = v8;
  v9 = swift_task_alloc();
  *(v1 + 296) = v9;
  *v9 = v1;
  v9[1] = sub_274951860;

  return sub_274952EA8();
}

uint64_t sub_274951860()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  *(v2 + 304) = v3;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_274951998()
{
  v1 = v0;
  memcpy((v0 + 16), *(v0 + 240), 0x81uLL);
  v2 = sub_274772C3C(v0 + 16);
  if (!v2)
  {
    v7 = *(v0 + 145);
    v8 = CGSizeMake(v0 + 16);
    v84 = v0;
    if (v7 != 1)
    {
      v36 = *(v8 + 16);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = v36 + 56;
        do
        {
          if (*(v38 + 16))
          {
            v85 = v1[38];
            v39 = *(v38 + 40);

            v40 = OUTLINED_FUNCTION_4_40();
            sub_274772C44(v40, v41);

            v42 = OUTLINED_FUNCTION_4_40();
            sub_274772C44(v42, v43);

            swift_unknownObjectRetain();
            v44 = sub_2749FCD64();
            [v85 setParameterState:v39 forKey:v44];
            v1 = v84;

            v45 = OUTLINED_FUNCTION_4_40();
            sub_274772C94(v45, v46);

            swift_unknownObjectRelease_n();
          }

          v38 += 88;
          --v37;
        }

        while (v37);
      }

      goto LABEL_44;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_3();
    if (swift_dynamicCastObjCClass())
    {
      v9 = *(v0 + 288);
      v10 = [objc_allocWithZone(MEMORY[0x277D23B70]) init];
      v11 = [v9 parameterIdentifier];
      if (v11)
      {
        v12 = v11;
        v14 = *(v0 + 272);
        v13 = *(v0 + 280);
        v15 = *(v0 + 256);
        v16 = *(v0 + 264);
        sub_2749F9144();

        (*(v16 + 32))(v13, v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707B0);
        v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_274A0EF10;
        (*(v16 + 16))(v18 + v17, v13, v15);
        v19 = sub_2749FCF74();

        *(v0 + 224) = 0;
        v20 = [v10 propertiesForIdentifiers:v19 error:v0 + 224];

        v21 = *(v0 + 224);
        if (v20)
        {
          v22 = *(v0 + 248);
          sub_27471CF08(0, &qword_2809707B8);
          sub_274955314(&qword_2809707C0, MEMORY[0x277CC95F0]);
          OUTLINED_FUNCTION_42();
          v23 = sub_2749FCCA4();
          v24 = v21;

          sub_2747A6B7C(v23, v22);

          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688C8);
          if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
          {
            v26 = *(v0 + 248);

            v27 = OUTLINED_FUNCTION_125();
            v28(v27);
            sub_27493C1E0(v26, &qword_280970738);
          }

          else
          {
            v67 = *(*(v0 + 248) + *(v25 + 48));
            v68 = [v67 identifier];

            v69 = v68;
            v70 = v68;
            if (!v68)
            {
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v70 = sub_2749FCD64();

              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v69 = sub_2749FCD64();
            }

            v71 = *(v0 + 304);
            v72 = *(v0 + 256);
            v73 = *(v0 + 248);
            v74 = *(*(v0 + 264) + 8);
            v75 = v68;
            v74(v73, v72);
            v76 = [v71 parameterForKey_];

            if (v76 && ([v76 stateClass], swift_getObjCClassMetadata(), v1[29] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
            {
              v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v78 = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
              v79 = [v77 initWithVariable_];

              swift_unknownObjectRetain();
            }

            else
            {
              v79 = 0;
            }

            v1 = v84;
            v80 = *(v84 + 280);
            v81 = *(v84 + 256);
            [*(v84 + 304) setParameterState:v79 forKey:v69];

            swift_unknownObjectRelease_n();
            v74(v80, v81);
          }

          goto LABEL_44;
        }

        v62 = *(v0 + 304);
        v63 = *(v0 + 280);
        v64 = v1[32];
        v65 = v1[33];
        v66 = v21;
        sub_2749F8FE4();

        swift_willThrow();
        (*(v65 + 8))(v63, v64);
        goto LABEL_30;
      }
    }

LABEL_44:

    v82 = v1[1];
    v83 = v1[38];

    return v82(v83);
  }

  if (v2 == 1)
  {
    v3 = CGSizeMake(v0 + 16);
    v4 = *(v0 + 304);
    if (*(v3 + 72))
    {
      v5 = *(v3 + 96);
      swift_unknownObjectRetain_n();
      OUTLINED_FUNCTION_32_1();
      v6 = sub_2749FCD64();
      [v4 setParameterState:v5 forKey:v6];

      swift_unknownObjectRelease_n();
    }

    else
    {
      OUTLINED_FUNCTION_32_1();
      v47 = sub_2749FCD64();
      v48 = [v4 parameterForKey_];

      if (v48 && ([v48 stateClass], swift_getObjCClassMetadata(), v1[26] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
      {
        v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v50 = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
        v51 = [v49 initWithVariable_];

        swift_unknownObjectRetain();
      }

      else
      {
        v51 = 0;
      }

      v60 = v1[38];
      OUTLINED_FUNCTION_32_1();
      v61 = sub_2749FCD64();
      [v60 setParameterState:v51 forKey:v61];

      swift_unknownObjectRelease_n();
    }

    goto LABEL_44;
  }

  v29 = *(v0 + 304);
  v30 = CGSizeMake(v1 + 2);
  v31 = *(v30 + 32);
  v32 = *(v30 + 48);
  v33 = sub_2749FCD64();
  v34 = [v29 parameterForKey_];

  if (!v32)
  {
    sub_27471CF08(0, &unk_280970450);

    v35 = sub_274952604();
LABEL_24:
    v52 = v35;
    v53 = [objc_allocWithZone(MEMORY[0x277D7C158]) initWithCollectionFilter_];
    if (v34 && ([v34 stateClass], swift_getObjCClassMetadata(), v1[27] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
    {
      v54 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
      swift_unknownObjectRetain();
    }

    else
    {
      v54 = 0;
    }

    v55 = v1[38];
    v56 = sub_2749FCD64();
    [v55 setParameterState:v54 forKey:v56];

    swift_unknownObjectRelease_n();
    goto LABEL_44;
  }

  if (v32 == 1)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D79F40]) initWithNamedQueryReference_];
    goto LABEL_24;
  }

  v57 = v1[38];
  sub_27493D788();
  OUTLINED_FUNCTION_26_14();
  swift_allocError();
  swift_willThrow();

LABEL_30:

  v58 = v1[1];

  return v58();
}

uint64_t sub_27495231C()
{
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

id sub_274952410()
{
  OUTLINED_FUNCTION_35_0();
  v2 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 bundleIdentifier];
  if (!v8)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = sub_2749FCD64();
  }

  v9 = [v0 basePhraseTemplate];
  if (!v9)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = sub_2749FCD64();
  }

  v10 = [v1 actionIdentifier];
  if (!v10)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = sub_2749FCD64();
  }

  v11 = [v0 parameterIdentifier];
  if (v11)
  {
    sub_2749F9144();

    v11 = sub_2749F9124();
    (*(v4 + 8))(v7, v2);
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundleIdentifier:v8 basePhraseTemplate:v9 actionIdentifier:v10 parameterIdentifier:v11];

  return v12;
}

id sub_274952604()
{
  OUTLINED_FUNCTION_35_0();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_45();
  v1 = sub_2749FCD64();

  v2 = [v0 initWithSystemEntityCollectionIdentifier_];

  return v2;
}

uint64_t SmartShortcutPickerActionTemplate.isConfigured(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(v1 + 1);
  v7 = v1[4];
  v8 = v1[5];
  if (v1[6])
  {
    if (*(a1 + 48))
    {
      v9 = a1[3];
      v10 = v1[3];
      v21 = *v1;
      v22 = v6;
      v23 = v10;
      v24 = v7;
      v25 = v8;
      v26 = 1;
      v15 = v2;
      v16 = v3;
      v17 = v9;
      v18 = v4;
      v19 = v5;
      v20 = 1;
      return static SmartShortcutPickerActionTemplate.== infix(_:_:)(&v21, &v15);
    }

    return 0;
  }

  if (a1[6])
  {
    return 0;
  }

  v13 = *v1 == v2 && v6 == v3;
  if (!v13 && (sub_2749FDCC4() & 1) == 0)
  {
    return 0;
  }

  v11 = (v5 | v8) == 0;
  if (!v5 || !v8)
  {
    return v11;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_2749FDCC4();
}

BOOL static SmartShortcutPickerActionTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v95[0] = *a1;
  v95[1] = v2;
  v93 = v7;
  v94 = v4;
  v95[2] = v4;
  v95[3] = v5;
  v16 = v6;
  v95[4] = v6;
  v95[5] = v7;
  v96 = v8;
  v97 = v10;
  v98 = v9;
  v99 = v12;
  v100 = v11;
  v101 = v13;
  v102 = v14;
  v103 = v15;
  if ((v8 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_13;
    }

    v42 = v3 == v10 && v2 == v9;
    if (v42 || (v43 = v2, v44 = sub_2749FDCC4(), v2 = v43, (v44 & 1) != 0))
    {
      v45 = v16;
      if (v5)
      {
        if (v11)
        {
          if (v94 == v12 && v5 == v11)
          {
            goto LABEL_26;
          }

          v47 = v2;
          v48 = sub_2749FDCC4();
          v2 = v47;
          if (v48)
          {
            goto LABEL_26;
          }
        }
      }

      else if (!v11)
      {
LABEL_26:
        if (!v93)
        {
          v70 = OUTLINED_FUNCTION_0_39();
          OUTLINED_FUNCTION_46_10(v70, v71, v72, v73, v74, v75);
          v76 = OUTLINED_FUNCTION_3_50();
          sub_27477C094(v76, v77, v78, v79, v45, 0, 0);

          sub_27493C1E0(v95, &unk_2809707D0);
          if (v14)
          {
LABEL_46:

            return 0;
          }

          return 1;
        }

        if (v14)
        {
          v49 = v2;
          if (v45 != v13 || v93 != v14)
          {
            v92 = sub_2749FDCC4();
            v51 = OUTLINED_FUNCTION_0_39();
            sub_27477C094(v51, v52, v53, v54, v55, v56, 0);
            sub_27477C094(v3, v49, v94, v5, v45, v93, 0);
            sub_27493C1E0(v95, &unk_2809707D0);
            return (v92 & 1) != 0;
          }

          v86 = OUTLINED_FUNCTION_1_46();
          v88 = v87;
          sub_27477C094(v86, v89, v90, v91, v45, v87, 0);
          sub_27477C094(v3, v49, v94, v5, v45, v88, 0);
          goto LABEL_49;
        }

        v80 = OUTLINED_FUNCTION_1_46();
        v82 = v81;
        OUTLINED_FUNCTION_46_10(v80, v83, v84, v85, v13, 0);
        v35 = OUTLINED_FUNCTION_3_50();
        v40 = v45;
        v38 = v82;
        goto LABEL_38;
      }

      v57 = OUTLINED_FUNCTION_0_39();
      OUTLINED_FUNCTION_46_10(v57, v58, v59, v60, v61, v62);
      v35 = OUTLINED_FUNCTION_3_50();
      v40 = v45;
    }

    else
    {
      v63 = OUTLINED_FUNCTION_0_39();
      OUTLINED_FUNCTION_46_10(v63, v64, v65, v66, v67, v68);
      v35 = OUTLINED_FUNCTION_3_50();
      v40 = v16;
    }

    v38 = v93;
LABEL_38:
    v41 = 0;
    goto LABEL_39;
  }

  if ((v15 & 1) == 0)
  {
LABEL_13:
    v26 = OUTLINED_FUNCTION_0_39();
    v28 = v27;
    sub_27477C094(v26, v29, v30, v31, v32, v33, v34);
    v35 = v3;
    v36 = v28;
    v38 = v93;
    v37 = v94;
    v39 = v5;
    v40 = v16;
    v41 = v8;
LABEL_39:
    sub_27477C094(v35, v36, v37, v39, v40, v38, v41);
    goto LABEL_40;
  }

  v17 = v2;
  sub_27471CF08(0, &qword_28159E390);
  v18 = OUTLINED_FUNCTION_0_39();
  sub_27477C094(v18, v19, v20, v21, v22, v23, 1);
  sub_27477C094(v3, v17, v94, v5, v16, v93, 1);
  if ((sub_2749FD604() & 1) == 0)
  {
LABEL_40:
    sub_27493C1E0(v95, &unk_2809707D0);
    return 0;
  }

  if (!v94)
  {

    sub_27493C1E0(v95, &unk_2809707D0);
    if (v12)
    {
      goto LABEL_46;
    }

    return 1;
  }

  if (!v12)
  {
    goto LABEL_40;
  }

  if (v17 == v9 && v94 == v12)
  {
LABEL_49:
    sub_27493C1E0(v95, &unk_2809707D0);
    return 1;
  }

  v25 = sub_2749FDCC4();
  sub_27493C1E0(v95, &unk_2809707D0);
  return (v25 & 1) != 0;
}

id sub_274952B50(void *a1)
{
  v1 = a1;
  WFExecutableAppShortcutIdentifier.description.getter();

  v2 = sub_2749FCD64();

  return v2;
}

uint64_t WFExecutableAppShortcutIdentifier.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_2749FD934();
  OUTLINED_FUNCTION_6_25();
  MEMORY[0x277C5EBC0](0xD000000000000026);
  v8 = [v0 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v9 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v9);

  MEMORY[0x277C5EBC0](0x74616C706D657420, 0xEB00000000203A65);
  v10 = [v1 basePhraseTemplate];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v11 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v11);

  MEMORY[0x277C5EBC0](0x3A6E6F6974636120, 0xE900000000000020);
  v12 = [v1 actionIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v13 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v13);

  MEMORY[0x277C5EBC0](0x74656D6172617020, 0xEC000000203A7265);
  v14 = [v1 parameterIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_2749F9144();

    v16 = sub_2749F9164();
    v17 = 0;
  }

  else
  {
    v16 = sub_2749F9164();
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v17, 1, v16);
  v18 = OUTLINED_FUNCTION_45();
  sub_274955358(v18, v19);
  sub_2749F9164();
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_27493C1E0(v7, &qword_2809707E0);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    v21 = sub_2749F9114();
    v20 = v22;
    OUTLINED_FUNCTION_9_3();
    (*(v23 + 8))(v7, v16);
  }

  MEMORY[0x277C5EBC0](v21, v20);

  return v25[0];
}

uint64_t sub_274952EA8()
{
  OUTLINED_FUNCTION_79();
  v2 = sub_2749FA4E4();
  *(v1 + 152) = v2;
  OUTLINED_FUNCTION_27(v2);
  *(v1 + 160) = v3;
  *(v1 + 168) = OUTLINED_FUNCTION_45_8();
  v4 = sub_2749F9164();
  *(v1 + 176) = v4;
  OUTLINED_FUNCTION_27(v4);
  *(v1 + 184) = v5;
  *(v1 + 192) = OUTLINED_FUNCTION_45_8();
  *(v1 + 200) = *v0;
  *(v1 + 320) = *(v0 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_274952FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  if (*(v12 + 320))
  {
    v13 = *(v12 + 200);
    v14 = [objc_allocWithZone(MEMORY[0x277D23B70]) initWithOptions_];
    *(v12 + 216) = v14;
    v15 = [v13 bundleIdentifier];
    if (!v15)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v15 = sub_2749FCD64();
    }

    *(v12 + 224) = v15;
    v16 = [v13 basePhraseTemplate];
    if (!v16)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v16 = sub_2749FCD64();
    }

    *(v12 + 232) = v16;
    v17 = [v13 actionIdentifier];
    if (!v17)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v17 = sub_2749FCD64();
    }

    *(v12 + 240) = v17;
    v18 = [v13 parameterIdentifier];
    if (v18)
    {
      v20 = *(v12 + 184);
      v19 = *(v12 + 192);
      v21 = *(v12 + 176);
      sub_2749F9144();

      v18 = sub_2749F9124();
      (*(v20 + 8))(v19, v21);
    }

    *(v12 + 248) = v18;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 144;
    *(v12 + 24) = sub_2749532BC;
    v22 = swift_continuation_init();
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809708A0);
    *(v12 + 80) = MEMORY[0x277D85DD0];
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_2748AECCC;
    *(v12 + 104) = &block_descriptor_43;
    *(v12 + 112) = v22;
    [v14 retrieveActionForBundleIdentifier:v15 basePhraseTemplate:v16 actionIdentifier:v17 parameterIdentifier:v18 completion:v12 + 80];
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200938](v23);
  }

  else
  {
    v25 = [objc_opt_self() sharedRegistry];
    OUTLINED_FUNCTION_44();
    v26 = sub_2749FCD64();
    [v25 createActionWithIdentifier:v26 serializedParameters:0];

    OUTLINED_FUNCTION_65();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_2749532BC()
{
  OUTLINED_FUNCTION_79();
  *(*v0 + 256) = *(*v0 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2749533C4()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v0[33] = v0[18];

  sub_2749FD0A4();
  v0[34] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274953478, v6, v5);
}

uint64_t sub_274953478()
{
  OUTLINED_FUNCTION_79();

  objc_allocWithZone(sub_2749F9874());
  *(v0 + 280) = sub_2749F9854();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2749534F4()
{
  OUTLINED_FUNCTION_72();
  v1 = [*(v0 + 200) bundleIdentifier];
  v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v4 = v3;

  *(v0 + 288) = v4;
  v8 = (*MEMORY[0x277D7BF50] + MEMORY[0x277D7BF50]);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_2749535E0;
  v6 = *(v0 + 264);

  return v8(v6, 0, v2, v4);
}

uint64_t sub_2749535E0()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2749536EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  v13 = *(v12 + 304);
  if (v13)
  {
    v14 = v13;
    v15 = [v14 actions];
    sub_27471CF08(0, &qword_28096D540);
    v16 = sub_2749FCF84();

    if (sub_27472D918(v16))
    {
      sub_2747B2790(0, (v16 & 0xC000000000000001) == 0, v16);
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C5F6D0](0, v16);
      }

      else
      {
        v17 = *(v16 + 32);
      }

      v18 = *(v12 + 280);
      v19 = *(v12 + 264);

      OUTLINED_FUNCTION_65();

      return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
    }
  }

  v29 = *(v12 + 200);
  sub_2749FA3D4();
  v30 = v29;
  v31 = sub_2749FA4D4();
  v32 = sub_2749FD2C4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v12 + 200);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v33;
    *v35 = v33;
    v36 = v33;
    _os_log_impl(&dword_274719000, v31, v32, "Unable to construct WFAction for action with identifier: %@", v34, 0xCu);
    sub_27493C1E0(v35, &qword_28096A280);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  v37 = *(v12 + 304);
  v38 = *(v12 + 280);
  v39 = *(v12 + 264);
  v40 = *(v12 + 216);
  v41 = *(v12 + 200);

  v42 = OUTLINED_FUNCTION_125();
  v43(v42);
  sub_2749552C0();
  OUTLINED_FUNCTION_26_14();
  swift_allocError();
  *v44 = v41;
  *(v44 + 8) = 1;
  swift_willThrow();
  v45 = v41;

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_65();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_2749539B8()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  swift_willThrow();

  OUTLINED_FUNCTION_48_0();

  return v6();
}

uint64_t sub_274953A60()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[27];

  OUTLINED_FUNCTION_48_0();

  return v4();
}

uint64_t sub_274953AEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_25();
  v5 = a1 == 0xD000000000000010 && v4 == a2;
  if (v5 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_6_25();
    v8 = a1 == 0xD000000000000017 && v7 == a2;
    if (v8 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_6_25();
      if (a1 == 0xD000000000000017 && v9 == a2)
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_11_3();

        if (v11)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }
}

unint64_t sub_274953BD8(char a1)
{
  result = 0xD000000000000017;
  if (!a1)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_274953C28()
{
  sub_2749FDB74();
  OUTLINED_FUNCTION_78();

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

unint64_t sub_274953C78(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_274953CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F68536F747561 && a2 == 0xEC00000074756374)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_11_3();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_274953D64(char a1)
{
  if (a1)
  {
    return 0x726F68536F747561;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_274953DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274953AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274953DE4(uint64_t a1)
{
  v2 = sub_2749554EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953E20(uint64_t a1)
{
  v2 = sub_2749554EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274953E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274953C28();
  *a1 = result;
  return result;
}

unint64_t sub_274953EB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_274953C78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_274953EE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274953C28();
  *a1 = result;
  return result;
}

uint64_t sub_274953F0C(uint64_t a1)
{
  v2 = sub_27495541C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953F48(uint64_t a1)
{
  v2 = sub_27495541C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274953F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274953CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274953FB4(uint64_t a1)
{
  v2 = sub_2749553C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953FF0(uint64_t a1)
{
  v2 = sub_2749553C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmartShortcutPickerActionTemplate.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E8);
  OUTLINED_FUNCTION_43();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707F0);
  OUTLINED_FUNCTION_43();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707F8);
  OUTLINED_FUNCTION_43();
  v44 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = v1[1];
  v42 = *v1;
  v18 = v1[2];
  v35 = v1[3];
  v36 = v18;
  v19 = v1[4];
  v33 = v1[5];
  v34 = v19;
  v20 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2749553C8();
  sub_2749FDE94();
  if (v20)
  {
    OUTLINED_FUNCTION_42_10();
    sub_27495541C();
    v21 = v39;
    OUTLINED_FUNCTION_44_9();
    v22 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    OUTLINED_FUNCTION_6_25();
    v23 = sub_2749FCD64();
    [v22 encodeObject:v42 forKey:v23];

    [v22 finishEncoding];
    v24 = [v22 encodedData];
    v25 = sub_2749F9094();
    v27 = v26;

    v45 = v25;
    v46 = v27;
    v47 = 0;
    sub_27493C23C();
    v28 = v41;
    v29 = v43;
    sub_2749FDC44();
    if (v29)
    {

      sub_2747BD02C(v45, v46);
    }

    else
    {
      sub_2747BD02C(v45, v46);
      v45 = v17;
      v46 = v36;
      v47 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210);
      sub_274955470();
      sub_2749FDC44();
    }

    (*(v40 + 8))(v21, v28);
    return (*(v44 + 8))(v16, v12);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_2749554EC();
    OUTLINED_FUNCTION_44_9();
    LOBYTE(v45) = 0;
    v30 = v43;
    v31 = v38;
    sub_2749FDC34();
    if (!v30)
    {
      v45 = v36;
      v46 = v35;
      v47 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210);
      sub_274955470();
      OUTLINED_FUNCTION_22_18();
      v45 = v34;
      v46 = v33;
      v47 = 2;
      OUTLINED_FUNCTION_22_18();
    }

    (*(v37 + 8))(v11, v31);
    return (*(v44 + 8))(v16, v12);
  }
}

uint64_t SmartShortcutPickerActionTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970820);
  OUTLINED_FUNCTION_43();
  v61 = v4;
  v62 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970828);
  OUTLINED_FUNCTION_43();
  v63 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280970830);
  OUTLINED_FUNCTION_43();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2749553C8();
  v20 = v65;
  sub_2749FDE74();
  if (!v20)
  {
    v60 = v7;
    v21 = v63;
    v22 = v64;
    v65 = v15;
    v23 = sub_2749FDBF4();
    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);

      if (v24)
      {
        OUTLINED_FUNCTION_42_10();
        sub_27495541C();
        OUTLINED_FUNCTION_32_15();
        v25 = v18;
        v26 = v22;
        v27 = v25;
        v69 = 0;
        sub_27493C0C8();
        sub_2749FDBE4();
        v35 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
        v36 = OUTLINED_FUNCTION_87();
        sub_2747EC0F4(v36, v37);
        OUTLINED_FUNCTION_87();
        v39 = sub_27493B908();
        sub_27471CF08(0, &qword_280970840);
        v58 = sub_2749FD574();
        OUTLINED_FUNCTION_42_10();
        v40 = sub_2749FDBB4();
        v63 = v39;
        v48 = v65;
        if (!v58)
        {

          sub_2749FD9B4();
          OUTLINED_FUNCTION_26_14();
          swift_allocError();
          v53 = v52;
          sub_2749FDBA4();
          sub_2749FD9A4();
          OUTLINED_FUNCTION_9_3();
          (*(v54 + 104))(v53);
          swift_willThrow();

          v55 = OUTLINED_FUNCTION_87();
          sub_2747BD02C(v55, v56);
          (*(v61 + 8))(v60, v62);
          (*(v48 + 8))(v27, v13);
          return __swift_destroy_boxed_opaque_existential_0(v66);
        }

        v57 = v41;
        v59 = v40;

        v49 = OUTLINED_FUNCTION_87();
        sub_2747BD02C(v49, v50);
        (*(v61 + 8))(v60, v62);
        (*(v48 + 8))(v27, v13);
        v47 = 0;
        v61 = 0;
        v45 = 0;
      }

      else
      {
        LOBYTE(v67) = 0;
        sub_2749554EC();
        OUTLINED_FUNCTION_32_15();
        v31 = v18;
        v26 = v22;
        v32 = v31;
        LOBYTE(v67) = 0;
        OUTLINED_FUNCTION_10_32();
        v58 = sub_2749FDBD4();
        v59 = v33;
        OUTLINED_FUNCTION_42_10();
        OUTLINED_FUNCTION_10_32();
        v34 = sub_2749FDBB4();
        v62 = v38;
        v57 = v34;
        LOBYTE(v67) = 2;
        OUTLINED_FUNCTION_10_32();
        v61 = sub_2749FDBB4();
        v45 = v44;
        v21[1](v12, v8);
        OUTLINED_FUNCTION_41_13();
        v46(v32, v13);
        v47 = v62;
      }

      v51 = v59;
      *v26 = v58;
      *(v26 + 8) = v51;
      *(v26 + 16) = v57;
      *(v26 + 24) = v47;
      *(v26 + 32) = v61;
      *(v26 + 40) = v45;
      *(v26 + 48) = v24;
    }

    else
    {

      sub_2749FD9B4();
      OUTLINED_FUNCTION_26_14();
      swift_allocError();
      v29 = v28;
      sub_2749FDBA4();
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_2749FD934();
      MEMORY[0x277C5EBC0](0xD000000000000028, 0x8000000274A34180);
      v69 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970848);
      sub_2749FDA74();
      MEMORY[0x277C5EBC0](46, 0xE100000000000000);
      sub_2749FD9A4();
      OUTLINED_FUNCTION_9_3();
      (*(v30 + 104))(v29);
      swift_willThrow();
      OUTLINED_FUNCTION_41_13();
      v42(v18, v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t SmartShortcutPickerActionTemplate.hash(into:)()
{
  v1 = *(v0 + 16);
  if (*(v0 + 48))
  {
    MEMORY[0x277C5FB60](1);
    sub_2749FD614();
    if (v1)
    {
      goto LABEL_6;
    }

    return sub_2749FDE14();
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  MEMORY[0x277C5FB60](0);
  sub_2749FCE24();
  if (v2)
  {
    sub_2749FDE14();
    OUTLINED_FUNCTION_125();
    sub_2749FCE24();
    if (!v3)
    {
      return sub_2749FDE14();
    }
  }

  else
  {
    sub_2749FDE14();
    if (!v3)
    {
      return sub_2749FDE14();
    }
  }

LABEL_6:
  sub_2749FDE14();

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionTemplate.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  SmartShortcutPickerActionTemplate.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_274954D14()
{
  sub_2749FDDF4();
  SmartShortcutPickerActionTemplate.hash(into:)();
  return sub_2749FDE44();
}

id sub_274954DA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v8 = sub_2749FCD64();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_2749FDCA4();
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v10 = [v5 initWithAppBundleIdentifier:v8 linkAction:v9 linkActionMetadata:sub_2749FDCA4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

id sub_274954E6C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v18 = sub_2749FCD64();

  if (a6)
  {
    sub_27471CF08(0, &unk_2809708B0);
    v19 = sub_2749FCF74();
  }

  else
  {
    v19 = 0;
  }

  if (a8 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_2749F9074();
    sub_2747BD018(a7, a8);
  }

  if (a10 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_2749F9074();
    sub_2747BD018(a9, a10);
  }

  v22 = [v11 initWithIntent:a1 named:v18 previewIcon:a4 appShortcutIdentifier:a5 contextualParameters:v19 shortcutsMetadata:v20 colorScheme:v21];

  return v22;
}

id sub_274954FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, __int16 a16, char a17)
{
  v28 = sub_2749FCD64();

  if (a4)
  {
    v27 = sub_2749FCD64();
  }

  else
  {
    v27 = 0;
  }

  if (a6)
  {
    v19 = sub_2749FCD64();
  }

  else
  {
    v19 = 0;
  }

  sub_27471CF08(0, &unk_2809708B0);
  v20 = sub_2749FCF74();

  v21 = sub_2749FCD64();

  v22 = sub_2749FCD64();

  if (a13)
  {
    v23 = sub_2749FCD64();
  }

  else
  {
    v23 = 0;
  }

  BYTE2(v26) = a17 & 1;
  LOWORD(v26) = a16 & 0x101;
  v24 = [v29 initWithIdentifier:v28 wfActionIdentifier:v27 associatedAppBundleIdentifier:v19 parameters:v20 displayString:v21 title:v22 subtitle:v23 icon:a14 accessoryIcon:a15 actionShowsUserInterface:v26 actionHasResult:? isReversible:?];

  return v24;
}

id sub_2749551CC(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2749F9074();
    sub_2747BD018(a3, a4);
  }

  if (a6 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2749F9074();
    sub_2747BD018(a5, a6);
  }

  v16 = [v7 initWithContextualAction:a1 appShortcutIdentifier:a2 shortcutsMetadata:v12 colorScheme:v15];

  return v16;
}

unint64_t sub_2749552C0()
{
  result = qword_280970718;
  if (!qword_280970718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970718);
  }

  return result;
}

uint64_t sub_274955314(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274955358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2749553C8()
{
  result = qword_280970800;
  if (!qword_280970800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970800);
  }

  return result;
}

unint64_t sub_27495541C()
{
  result = qword_280970808;
  if (!qword_280970808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970808);
  }

  return result;
}

unint64_t sub_274955470()
{
  result = qword_280970810;
  if (!qword_280970810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970810);
  }

  return result;
}

unint64_t sub_2749554EC()
{
  result = qword_280970818;
  if (!qword_280970818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970818);
  }

  return result;
}

unint64_t sub_274955544()
{
  result = qword_280970850;
  if (!qword_280970850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970850);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2749555B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
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

uint64_t sub_2749555F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerActionTemplate.CodingKeys.ActionCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_274955750(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27495584C()
{
  result = qword_280970858;
  if (!qword_280970858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970858);
  }

  return result;
}

unint64_t sub_2749558A4()
{
  result = qword_280970860;
  if (!qword_280970860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970860);
  }

  return result;
}

unint64_t sub_2749558FC()
{
  result = qword_280970868;
  if (!qword_280970868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970868);
  }

  return result;
}

unint64_t sub_274955954()
{
  result = qword_280970870;
  if (!qword_280970870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970870);
  }

  return result;
}

unint64_t sub_2749559AC()
{
  result = qword_280970878;
  if (!qword_280970878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970878);
  }

  return result;
}

unint64_t sub_274955A04()
{
  result = qword_280970880;
  if (!qword_280970880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970880);
  }

  return result;
}

unint64_t sub_274955A5C()
{
  result = qword_280970888;
  if (!qword_280970888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970888);
  }

  return result;
}

unint64_t sub_274955AB4()
{
  result = qword_280970890;
  if (!qword_280970890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970890);
  }

  return result;
}

unint64_t sub_274955B0C()
{
  result = qword_280970898;
  if (!qword_280970898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970898);
  }

  return result;
}

uint64_t sub_274955BC0()
{
  sub_2749F9DB4();
  swift_allocObject();
  result = sub_2749F9DA4();
  qword_2809708C0 = result;
  return result;
}

uint64_t GalleryView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = *(v1 + 32);
  v8 = *(v1 + 48);
  *a1 = sub_2749FC914();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708C8);
  return sub_274955C78(v7, a1 + *(v5 + 44));
}

uint64_t sub_274955C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8 - 8];
  v10 = sub_2749FBC64();
  sub_274955EB4(a1, v9);
  v11 = sub_2749FC914();
  v13 = v12;
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E8) + 36)];
  *v14 = 256;
  *(v14 + 1) = v11;
  *(v14 + 2) = v13;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708F0) + 36)];
  *v17 = sub_274956A48;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  KeyPath = swift_getKeyPath();
  sub_274956A50(a1, v24);
  if (qword_280966C68 != -1)
  {
    swift_once();
  }

  v19 = qword_2809708C0;
  v20 = &v9[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  sub_274956A88(v9, v7);
  *a2 = 256;
  *(a2 + 2) = v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708F8);
  sub_274956A88(v7, a2 + *(v21 + 48));

  sub_274956AF8(v9);
  return sub_274956AF8(v7);
}

uint64_t sub_274955EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970900);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for GallerySearchResultsView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 40))
  {

    v10 = sub_2748C8674();

    if (v10)
    {
      type metadata accessor for GallerySearchManager(0);
      sub_274728F60(&qword_28159F478, type metadata accessor for GallerySearchManager);
      *v9 = sub_2749FB084();
      v9[1] = v11;
      v12 = *(v7 + 20);
      *(v9 + v12) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
      swift_storeEnumTagMultiPayload();
      sub_274956EE0(v9, v6);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970950);
      sub_274728F60(&qword_280970958, type metadata accessor for GallerySearchResultsView);
      sub_274956E00();
      sub_2749FB7B4();
      return sub_274956F44(v9);
    }

    else
    {
      v27[5] = v7;
      v27[6] = a2;
      v15 = *a1;
      v14 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 24);
      v18 = *(a1 + 32);
      v27[4] = v4;
      switch(v18 >> 5)
      {
        case 1u:

          sub_2747A3168();

          KeyPath = swift_getKeyPath();
          v32[0] = 0;
          v36[0] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970968);
          sub_2749FC5B4();
          *&v28 = v16;
          *(&v28 + 1) = v17;
          LOBYTE(v29) = v18 & 1 | 0x80;
          *(&v29 + 1) = KeyPath;
          *&v30 = 0;
          BYTE8(v30) = v32[0];
          v31 = __dst[0];
          __dst[0] = v28;
          __dst[1] = v29;
          __dst[2] = v30;
          __dst[3] = v31;
          v33 = 0;
          LOBYTE(__dst[4]) = 0;
          sub_27489DAF8(&v28, v36);
          sub_274956CCC();
          sub_2748302AC();
          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v34 = 1;
          BYTE1(__dst[4]) = 1;
          goto LABEL_13;
        case 2u:
          v24 = swift_getKeyPath();
          v25 = swift_getKeyPath();
          v34 = 0;
          v33 = 0;
          v32[72] = 1;
          *&__dst[0] = v15;
          *(&__dst[0] + 1) = v24;
          v27[2] = v25;
          v27[3] = v24;
          LOBYTE(__dst[1]) = 0;
          *(&__dst[1] + 1) = v25;
          *&__dst[2] = 0;
          BYTE8(__dst[2]) = 0;
          LOBYTE(__dst[4]) = 1;
          sub_2747A3170(v15, v14, v16, v17, v18);
          sub_2747A3170(v15, v14, v16, v17, v18);
          v27[1] = sub_274956CCC();
          sub_2748302AC();

          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v35 = 1;
          BYTE1(__dst[4]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          LOBYTE(v28) = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          sub_274725D44(v15, v14, v16, v17, v18);

          goto LABEL_10;
        case 3u:
          v32[0] = 1;
          v36[0] = v15;
          v36[1] = v14;
          LOBYTE(v36[2]) = v16;
          BYTE2(v36[8]) = 1;
          sub_2747A3140(v15, v14, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          goto LABEL_15;
        case 4u:
          if (qword_280966C58 != -1)
          {
            swift_once();
          }

          type metadata accessor for GalleryLoader();
          sub_274728F60(&qword_280970970, type metadata accessor for GalleryLoader);

          v20 = sub_2749FAD84();
          v22 = v21;
          v23 = swift_getKeyPath();
          v34 = 0;
          v33 = 0;
          *&__dst[0] = v20;
          *(&__dst[0] + 1) = v22;
          __dst[1] = v23;
          LOBYTE(__dst[2]) = 0;
          LOBYTE(__dst[4]) = 0;
          sub_274956C78();
          sub_274956CCC();

          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v35 = 0;
          BYTE1(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          LOBYTE(v28) = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();

LABEL_10:

          break;
        default:

          v19 = swift_getKeyPath();
          v32[0] = 0;
          v36[0] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970968);
          sub_2749FC5B4();
          *&v28 = v16;
          *(&v28 + 1) = v17;
          LOBYTE(v29) = 0;
          *(&v29 + 1) = v19;
          *&v30 = 0;
          BYTE8(v30) = v32[0];
          v31 = __dst[0];
          __dst[0] = v28;
          __dst[1] = v29;
          __dst[2] = v30;
          __dst[3] = v31;
          v33 = 1;
          LOBYTE(__dst[4]) = 1;
          sub_27489DAF8(&v28, v36);
          sub_274956C78();
          sub_274956CCC();
          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v34 = 0;
          BYTE1(__dst[4]) = 0;
LABEL_13:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          v35 = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          sub_274956E8C(&v28);
          break;
      }

      memcpy(__dst, v36, 0x43uLL);
LABEL_15:
      memcpy(v6, __dst, 0x43uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970950);
      sub_274728F60(&qword_280970958, type metadata accessor for GallerySearchResultsView);
      sub_274956E00();
      return sub_2749FB7B4();
    }
  }

  else
  {
    type metadata accessor for GallerySearchManager(0);
    sub_274728F60(&qword_28159F478, type metadata accessor for GallerySearchManager);
    result = sub_2749FB074();
    __break(1u);
  }

  return result;
}

uint64_t sub_2749568B8()
{
  if (qword_280966C68 != -1)
  {
    swift_once();
  }

  return sub_2749F9D94();
}

uint64_t sub_274956930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_274956984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_2749569E4()
{
  result = qword_2809708D0;
  if (!qword_2809708D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809708D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809708D0);
  }

  return result;
}

uint64_t sub_274956A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274956AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274956B60()
{
  result = qword_280970910;
  if (!qword_280970910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970908);
    sub_274956BEC();
    sub_274956D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970910);
  }

  return result;
}

unint64_t sub_274956BEC()
{
  result = qword_280970918;
  if (!qword_280970918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970920);
    sub_274956C78();
    sub_274956CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970918);
  }

  return result;
}

unint64_t sub_274956C78()
{
  result = qword_280970928;
  if (!qword_280970928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970928);
  }

  return result;
}

unint64_t sub_274956CCC()
{
  result = qword_280970930;
  if (!qword_280970930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970930);
  }

  return result;
}

unint64_t sub_274956D20()
{
  result = qword_280970938;
  if (!qword_280970938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970940);
    sub_274956CCC();
    sub_2748302AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970938);
  }

  return result;
}

unint64_t sub_274956DAC()
{
  result = qword_280970948;
  if (!qword_280970948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970948);
  }

  return result;
}

unint64_t sub_274956E00()
{
  result = qword_280970960;
  if (!qword_280970960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970950);
    sub_274956B60();
    sub_274956DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970960);
  }

  return result;
}

uint64_t sub_274956EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GallerySearchResultsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274956F44(uint64_t a1)
{
  v2 = type metadata accessor for GallerySearchResultsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WFAddToHomeScreenItem()
{
  result = qword_280970978;
  if (!qword_280970978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274956FEC()
{
  result = sub_27471CF08(319, &qword_280970690);
  if (v1 <= 0x3F)
  {
    result = sub_2749F9EB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFAddToHomeScreenSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274957160()
{
  result = qword_280970988;
  if (!qword_280970988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970988);
  }

  return result;
}

uint64_t sub_2749571B4(uint64_t a1, uint64_t a2)
{
  sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v37 = v5;
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_9();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E18);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = (&v37 + *(v22 + 56) - v23);
  sub_2747CA634(a1, &v37 - v23);
  sub_2747CA634(a2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2747CA634(v24, v18);
      v32 = *v18;
      v31 = v18[1];
      if (OUTLINED_FUNCTION_3_51() != 1)
      {

        goto LABEL_23;
      }

      if (v32 == *v25 && v31 == v25[1])
      {

        goto LABEL_28;
      }

      v34 = sub_2749FDCC4();

      if (v34)
      {
        goto LABEL_28;
      }

      sub_2747CA698(v24);
      goto LABEL_24;
    case 2u:
      sub_2747CA634(v24, v15);
      if (OUTLINED_FUNCTION_3_51() == 2)
      {
        v28 = v37;
        v27 = v38;
        (*(v37 + 32))(v8, v25, v38);
        v29 = sub_2749F9EA4();
        v30 = *(v28 + 8);
        v30(v8, v27);
        v30(v15, v27);
        goto LABEL_26;
      }

      (*(v37 + 8))(v15, v38);
      goto LABEL_23;
    case 3u:
      sub_2747CA634(v24, v12);
      if (OUTLINED_FUNCTION_3_51() != 3)
      {
        goto LABEL_23;
      }

      v29 = *v12 == *v25;
      goto LABEL_26;
    case 4u:
      if (OUTLINED_FUNCTION_3_51() == 4)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    case 5u:
      if (OUTLINED_FUNCTION_3_51() == 5)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    case 6u:
      if (OUTLINED_FUNCTION_3_51() != 6)
      {
        goto LABEL_23;
      }

LABEL_28:
      sub_2747CA698(v24);
      v29 = 1;
      return v29 & 1;
    default:
      sub_2747CA634(v24, v20);
      v26 = *v20;
      if (OUTLINED_FUNCTION_3_51())
      {

LABEL_23:
        sub_274957CD0(v24);
LABEL_24:
        v29 = 0;
      }

      else
      {
        v35 = *v25;
        sub_27471CF08(0, &qword_28159E390);
        v29 = sub_2749FD604();

LABEL_26:
        sub_2747CA698(v24);
      }

      return v29 & 1;
  }
}

uint64_t sub_2749575BC(char a1)
{
  if (a1 != 3)
  {
    return 0;
  }

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_28159E448;
  OUTLINED_FUNCTION_32_1();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_32_1();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_2749576A4()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

uint64_t sub_2749577DC(char a1)
{
  result = 0x403C000000000000;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0x4038000000000000;
      break;
    case 2:
    case 3:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274957864()
{
  type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_32_1();
  sub_2747CA634(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  v8 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = 1;
      goto LABEL_3;
    case 3:
    case 4:
    case 5:
    case 6:
      return result;
    default:
LABEL_3:
      sub_2747CA698(v3);
      result = v8;
      break;
  }

  return result;
}

void sub_27495791C()
{
  v1 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  sub_2747CA634(v0, v10 - v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x277C5FB60](3);
      OUTLINED_FUNCTION_32_1();
      sub_2749FCE24();

      return;
    case 2u:
      (*(v3 + 32))(v7, v11, v1);
      MEMORY[0x277C5FB60](4);
      sub_274957C88(&qword_280967AF0, MEMORY[0x277D7D388]);
      sub_2749FCD04();
      (*(v3 + 8))(v7, v1);
      return;
    case 3u:
      v14 = *v11;
      MEMORY[0x277C5FB60](6);
      v13 = v14;
      goto LABEL_9;
    case 4u:
      v13 = 0;
      goto LABEL_9;
    case 5u:
      v13 = 1;
      goto LABEL_9;
    case 6u:
      v13 = 5;
LABEL_9:
      MEMORY[0x277C5FB60](v13);
      break;
    default:
      v12 = *v11;
      MEMORY[0x277C5FB60](2);
      sub_2749FD614();

      break;
  }
}

uint64_t sub_274957B34()
{
  sub_2749FDDF4();
  sub_27495791C();
  return sub_2749FDE44();
}

uint64_t sub_274957B80()
{
  sub_2749FDDF4();
  sub_27495791C();
  return sub_2749FDE44();
}

unint64_t sub_274957C08(uint64_t a1)
{
  result = sub_274772A28();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_274957C30(uint64_t a1)
{
  result = sub_274957C88(&qword_280967B00, type metadata accessor for WFAddToHomeScreenItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_274957C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274957CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274957D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_274957D9C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  v10 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  *&v4[v10] = [objc_opt_self() buttonWithType_];
  v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarCancelButtonHorizontalSpacing] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHeight] = 0x4047000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButtonTrailingInset] = 0x4034000000000000;
  v46.receiver = v4;
  v46.super_class = type metadata accessor for WFDrawerSearchControlsView();
  v11 = objc_msgSendSuper2(&v46, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  [v13 addSubview_];
  if (_UISolariumEnabled())
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v18 = [*&v13[v16] searchTextField];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    [v17 setAutoresizingMask_];
    [v17 setUserInteractionEnabled_];
    [v17 setBackgroundColor_];
    v27 = [v17 layer];
    [v27 setCornerRadius_];

    v28 = [*&v13[v16] searchTextField];
    [v28 insertSubview:v17 atIndex:0];
  }

  [*&v13[v16] setSearchBarStyle_];
  [*&v13[v16] _setBackdropStyle_];
  [*&v13[v16] setDrawsBackground_];
  v29 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  v30 = *&v13[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v31 = qword_28159E448;
  v32 = sub_2749FCD64();
  v33 = sub_2749FCD64();

  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v37 = v36;

  sub_274958C38(v35, v37, 0, v30);
  v38 = [*&v13[v29] titleLabel];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_opt_self() preferredFontForTextStyle_];
    [v39 setFont_];
  }

  v41 = *&v13[v29];
  sub_274958CAC();
  OUTLINED_FUNCTION_86();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;
  v44 = sub_2749FD644();
  [v43 addAction:v44 forControlEvents:{64, 0, 0, 0, sub_274958CF0, v42}];

  [*&v13[v29] setAlpha_];
  [v13 addSubview_];

  return v13;
}

void sub_2749582C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v3 = [*(Strong + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        v5 = *&v1[v2];
        [v4 searchBarCancelButtonClicked_];
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_2749583BC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WFDrawerSearchControlsView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
  [v2 intrinsicContentSize];
  v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
  if (v0[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] == 1 && v1 == 1)
  {
    [v2 frame];
    CGRectGetMaxX(v6);
  }

  OUTLINED_FUNCTION_1_47();
  CGRectGetWidth(v7);
  CGRectMake_2();
  [v3 setFrame_];
  if (v1 != 1)
  {
    [v0 bounds];
    CGRectGetWidth(v8);
  }

  CGRectMake_2();
  return [v2 setFrame_];
}

void sub_2749585BC(char a1)
{
  v2 = a1 & 1;
  if (v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] = v2;
    OUTLINED_FUNCTION_86();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v5 = v1;
    v6 = sub_27480FE78(sub_274958BC4, v4, 0.4, 1.0);
    [v6 startAnimation];

    CGAffineTransformMakeScale(&v17, 0.92, 0.94);
    if (a1)
    {
      v7 = *&v5[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
      v16 = v17;
      [v7 setTransform_];
      v8 = 0.3;
      v9 = 0.12;
    }

    else
    {
      v9 = 0.0;
      v8 = 0.15;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v2;
    v11 = *&v17.c;
    *(v10 + 32) = *&v17.a;
    *(v10 + 48) = v11;
    *(v10 + 64) = *&v17.tx;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v12 = v5;
    v13 = sub_27480FE78(sub_274958BCC, v10, v8, 1.0);
    OUTLINED_FUNCTION_86();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v16.tx = sub_274958BDC;
    *&v16.ty = v14;
    *&v16.a = MEMORY[0x277D85DD0];
    *&v16.b = 1107296256;
    *&v16.c = sub_274957D38;
    *&v16.d = &block_descriptor_44;
    v15 = _Block_copy(&v16);

    [v13 addCompletion_];
    _Block_release(v15);
    [v13 startAnimationAfterDelay_];
  }
}

id sub_274958828(void *a1)
{
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

id sub_274958870(uint64_t a1, char a2, uint64_t a3)
{
  v3 = (a3 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton);
  v5 = 0.0;
  if (a2)
  {
    v5 = 1.0;
  }

  v6 = MEMORY[0x277CBF2C0];
  if ((a2 & 1) == 0)
  {
    v6 = a3;
  }

  v11 = *v6;
  if (a2)
  {
    v3 = (MEMORY[0x277CBF2C0] + 16);
  }

  v10 = *v3;
  if (a2)
  {
    v7 = (MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    v7 = (a3 + 32);
  }

  [v4 setAlpha_];
  v12[0] = v11;
  v12[1] = v10;
  v12[2] = v9;
  return [v4 setTransform_];
}

void sub_274958920()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton);
    v3 = *(MEMORY[0x277CBF2C0] + 16);
    v4[0] = *MEMORY[0x277CBF2C0];
    v4[1] = v3;
    v4[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v2 setTransform_];
  }
}

void sub_274958A0C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  *(v0 + v2) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarCancelButtonHorizontalSpacing) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset) = 0x4031000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHeight) = 0x4047000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButtonTrailingInset) = 0x4034000000000000;
  sub_2749FDAE4();
  __break(1u);
}

id WFDrawerSearchControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDrawerSearchControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274958C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2749FCD64();

  [a4 setTitle:v6 forState:a3];
}

unint64_t sub_274958CAC()
{
  result = qword_28096D750;
  if (!qword_28096D750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096D750);
  }

  return result;
}

void sub_274958CF8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A10);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A18);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  *v6 = sub_2749FB524();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A20);
  sub_274958F7C(v2, &v6[*(v15 + 44)]);
  sub_2749FC914();
  sub_2749FB004();
  sub_27475CF54(v6, v10, &qword_280970A08);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_2749FBC74();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v10, v14, &qword_280970A10);
  OUTLINED_FUNCTION_2_44(&v14[*(v12 + 44)]);
  sub_2749FBC84();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v14, a1, &qword_280970A18);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A28);
  OUTLINED_FUNCTION_2_44(a1 + *(v16 + 36));
}

uint64_t sub_274958F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A30);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A38);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = type metadata accessor for ModePickerView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A40);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A48);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v37 = a1;
  v38 = &v37 - v20;
  sub_27495B280(a1, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_27495B2E4(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A50);
  v39 = MEMORY[0x277CE1198];
  sub_27472AB6C(&qword_280970A58, &qword_280970A50);
  sub_2749FC624();
  sub_2749FB574();
  sub_27472AB6C(&qword_280970A60, &qword_280970A40);
  v23 = v38;
  v24 = v40;
  sub_2749FC0E4();

  (*(v41 + 8))(v16, v24);
  v25 = v37;
  sub_27495B280(v37, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_27495B2E4(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v21);
  v49 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A68);
  sub_27472AB6C(&qword_280970A70, &qword_280970A68);
  v27 = v43;
  sub_2749FC624();
  sub_2749FB574();
  sub_27472AB6C(&qword_280970A78, &qword_280970A30);
  v28 = v44;
  v29 = v46;
  sub_2749FC0E4();

  (*(v47 + 8))(v27, v29);
  v30 = v23;
  v31 = v23;
  v32 = v42;
  sub_27473F28C(v31, v42, &qword_280970A48);
  v33 = v45;
  sub_27473F28C(v28, v45, &qword_280970A38);
  v34 = v48;
  sub_27473F28C(v32, v48, &qword_280970A48);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A80);
  sub_27473F28C(v33, v34 + *(v35 + 48), &qword_280970A38);
  sub_27472ECBC(v28, &qword_280970A38);
  sub_27472ECBC(v30, &qword_280970A48);
  sub_27472ECBC(v33, &qword_280970A38);
  return sub_27472ECBC(v32, &qword_280970A48);
}

uint64_t sub_2749595D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = sub_2749FA304();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AD0);
  MEMORY[0x28223BE20](v66);
  v69 = v57 - v4;
  v5 = sub_2749FA2F4();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FA2C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AD8);
  MEMORY[0x28223BE20](v71);
  v13 = v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AE0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v68 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v57 - v17;
  v19 = *(type metadata accessor for ModePickerView() + 20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  v70 = a1;
  v64 = v20;
  sub_2749FC7D4();
  v21 = sub_274880838();
  v23 = v22;

  if (v23 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v57[1] = v19;
  v58 = v18;
  v24 = v71;
  sub_27471CF08(0, &unk_28096B160);
  sub_2747EC0F4(v21, v23);
  v25 = sub_274881438();
  if (!v25)
  {
    sub_2747BD018(v21, v23);
    v18 = v58;
LABEL_5:
    v59 = v8;
    v43 = objc_opt_self();
    v44 = [v43 grayColor];
    v45 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    v46 = [v43 secondarySystemFillColor];
    v47 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    v48 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];
    v49 = objc_allocWithZone(MEMORY[0x277D7A158]);
    sub_274881D2C(0x6F746F6870, 0xE500000000000000, v45, v48);
    (*(v9 + 104))(v11, *MEMORY[0x277D7D680], v59);
    (*(v62 + 104))(v7, *MEMORY[0x277D7D6D0], v63);
    v50 = v60;
    sub_2749FA314();
    v51 = v61;
    v52 = v67;
    (*(v61 + 16))(v69, v50, v67);
    swift_storeEnumTagMultiPayload();
    sub_27495B588();
    sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
    sub_2749FB7B4();
    (*(v51 + 8))(v50, v52);
    goto LABEL_6;
  }

  v26 = v25;
  [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
  v61 = v21;
  (*(v9 + 104))(v11, *MEMORY[0x277D7D680], v8);
  (*(v62 + 104))(v7, *MEMORY[0x277D7D6D0], v63);
  sub_2749FA314();
  v27 = sub_2749FC914();
  v29 = v28;
  v30 = &v13[*(v24 + 36)];
  sub_2749FA324();
  v31 = sub_2749FC454();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4F8);
  *&v30[*(v32 + 52)] = v31;
  *&v30[*(v32 + 56)] = 256;
  LOBYTE(v31) = sub_2749FBC64();
  sub_2749FA9E4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C500) + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AF8) + 36)];
  *v42 = v27;
  v42[1] = v29;
  sub_27473F28C(v13, v69, &qword_280970AD8);
  swift_storeEnumTagMultiPayload();
  sub_27495B588();
  sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
  v18 = v58;
  sub_2749FB7B4();

  sub_2747BD018(v61, v23);
  sub_27472ECBC(v13, &qword_280970AD8);
LABEL_6:
  sub_2749FC7D4();
  v53 = sub_27487FC44();

  v54 = v68;
  sub_27473F28C(v18, v68, &qword_280970AE0);
  v55 = v65;
  sub_27473F28C(v54, v65, &qword_280970AE0);
  *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B00) + 48)) = (v53 & 1) == 0;
  sub_27472ECBC(v18, &qword_280970AE0);
  return sub_27472ECBC(v54, &qword_280970AE0);
}

uint64_t sub_274959E0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModePickerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  sub_2749FC7D4();
  sub_27487FCCC(a2);
}

uint64_t sub_274959E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_2749FB634();
  *(a4 + 8) = 0x4014000000000000;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(a1);
}

uint64_t sub_274959EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2749FA2F4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2749FA2C4();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A90);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v23 = *(type metadata accessor for ModePickerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  sub_2749FC7D4();
  sub_2748809F8();

  (*(v6 + 104))(v8, *MEMORY[0x277D7D680], v24);
  (*(v25 + 104))(v5, *MEMORY[0x277D7D6D0], v26);
  sub_2749FA314();
  v16 = sub_2749FC914();
  v18 = v17;
  v19 = &v15[*(v10 + 44)];
  sub_27495A228(a1, v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A98) + 36));
  *v20 = v16;
  v20[1] = v18;
  sub_2749FC7D4();
  LOBYTE(v16) = sub_27487FC44();

  sub_27473F28C(v15, v13, &qword_280970A90);
  v21 = v27;
  sub_27473F28C(v13, v27, &qword_280970A90);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AA0) + 48)) = v16 & 1;
  sub_27472ECBC(v15, &qword_280970A90);
  return sub_27472ECBC(v13, &qword_280970A90);
}

uint64_t sub_27495A228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA334();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AA8);
  MEMORY[0x28223BE20](v6);
  v48 = v45 - v7;
  v8 = sub_2749FAA94();
  v52 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  v14 = sub_2749F9EB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModePickerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  sub_2749FC7D4();
  sub_27487F7A4(v17);

  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D7D380])
  {
    v45[1] = a1;
    v46 = v6;
    v47 = a2;
    (*(v15 + 96))(v17, v14);
    v18 = *(v17 + 1);

    sub_27471CF08(0, &qword_280968670);
    v19 = [v18 endColor];
    v20 = objc_opt_self();
    v21 = [v20 whiteColor];
    v22 = sub_2749FD604();

    if (v22 & 1) != 0 && (v23 = [v18 startColor], v24 = objc_msgSend(v20, sel_whiteColor), v25 = sub_2749FD604(), v23, v24, v26 = v18, (v25))
    {
      sub_27473B1B4();
      v27 = v52;
      (*(v52 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
      v28 = sub_2749FAA84();
      v29 = *(v27 + 8);
      v29(v11, v8);
      v29(v13, v8);
      v6 = v46;
      if (v28)
      {
        v30 = v49;
        sub_2749FA324();
        sub_2749FC454();
        v31 = sub_2749FC484();

        sub_2749FAB34();
        v33 = v50;
        v32 = v51;
        v34 = v26;
        v35 = v48;
        (*(v50 + 16))(v48, v30, v51);
        v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AB0) + 36);
        v37 = v54;
        *v36 = v53;
        *(v36 + 16) = v37;
        *(v36 + 32) = v55;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AB8);
        *(v35 + *(v38 + 52)) = v31;
        *(v35 + *(v38 + 56)) = 256;

        v39 = sub_2749FC914();
        v41 = v40;

        (*(v33 + 8))(v30, v32);
        v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AC0) + 36));
        *v42 = v39;
        v42[1] = v41;
        a2 = v47;
        sub_27475CF54(v35, v47, &qword_280970AA8);
        v43 = 0;
      }

      else
      {

        v43 = 1;
        a2 = v47;
      }
    }

    else
    {

      v43 = 1;
      v6 = v46;
      a2 = v47;
    }
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v43 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v43, 1, v6);
}

double sub_27495A7F4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_2749FC514();
    sub_2749FBD14();
    swift_getKeyPath();
    sub_2749FC3F4();
  }

  else
  {
    sub_2749FC514();
    sub_2749FBD14();
    swift_getKeyPath();
    sub_2749FC4A4();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B28);
  sub_27495B9B8();
  sub_2749FB7B4();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

id sub_27495A940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemRedColor];
  [v5 setBackgroundColor_];

  v7 = [v5 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  [v8 setActive_];
  v9 = [v5 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  [v10 setActive_];
  v14[3] = ObjectType;
  v14[0] = v5;
  v11 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v12 = sub_2748859DC(v14, sel_onTap);
  [v5 addGestureRecognizer_];

  return v5;
}

uint64_t sub_27495ABD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration;
  swift_beginAccess();
  return sub_2747B960C(v1 + v3, a1);
}

uint64_t sub_27495AC30(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  sub_2747A45FC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_27495AD70()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeScreenModePickerConfiguration.ContentView());

  v2 = sub_27495AE78(v1, v0);
  sub_27495B674(&qword_2809709E0, v3, type metadata accessor for HomeScreenModePickerConfiguration.ContentView);
  return v2;
}

id sub_27495AE78(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ModePickerView();
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = type metadata accessor for HomeScreenModePickerConfiguration();
  v18[4] = sub_27495B674(&qword_2809709E8, v8, type metadata accessor for HomeScreenModePickerConfiguration);
  v18[0] = a1;
  sub_2747B960C(v18, a2 + OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration);
  v17.receiver = a2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2747B960C(v18, v16);
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9B0);
  if (swift_dynamicCast())
  {
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HomeScreenIconState();
    sub_27495B674(&qword_280968B38, 255, type metadata accessor for HomeScreenIconState);

    sub_2749FC804();
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809709F0));
    v12 = sub_2749FADF4();
    [v10 addSubview_];
    v13 = [v12 wf:v10 addConstraintsToFillSuperview:?];

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v10;
}

uint64_t type metadata accessor for ModePickerView()
{
  result = qword_2809709F8;
  if (!qword_2809709F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27495B180()
{
  sub_27472C73C(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_27472C73C(319, &qword_28096C408, type metadata accessor for HomeScreenIconState, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27495B280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27495B2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for ModePickerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
  OUTLINED_FUNCTION_9();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_27495B588()
{
  result = qword_280970AE8;
  if (!qword_280970AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970AD8);
    sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0]);
    sub_27472AB6C(&qword_280970AF0, &qword_280970AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970AE8);
  }

  return result;
}

uint64_t sub_27495B674(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnablementCheckmark(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EnablementCheckmark(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27495B860(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27495B8E4()
{
  result = qword_280970B18;
  if (!qword_280970B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970A10);
    sub_27472AB6C(&qword_280970B20, &qword_280970A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B18);
  }

  return result;
}

unint64_t sub_27495B9B8()
{
  result = qword_280970B30;
  if (!qword_280970B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970B28);
    sub_27488701C();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B30);
  }

  return result;
}

unint64_t sub_27495BA70()
{
  result = qword_280970B38;
  if (!qword_280970B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970B40);
    sub_27495B9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B38);
  }

  return result;
}

id sub_27495BAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A11F50;
  v1 = *MEMORY[0x277D7CFE0];
  v2 = *MEMORY[0x277D7CFD8];
  *(v0 + 32) = *MEMORY[0x277D7CFE0];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x277D7CFE8];
  *(v0 + 48) = *MEMORY[0x277D7CFE8];
  off_280970B48 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t static WFSmartPromptStatus.allCases.getter()
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  swift_beginAccess();
}

uint64_t static WFSmartPromptStatus.allCases.setter(void *a1)
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  swift_beginAccess();
  off_280970B48 = a1;
}

uint64_t (*static WFSmartPromptStatus.allCases.modify())()
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_27495BCF0()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v3 = v3 && v0 == v2;
  if (v3)
  {
LABEL_17:

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v1)
  {
    goto LABEL_22;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v3 && v0 == v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_5();

    if ((v1 & 1) == 0)
    {
      v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v8 = v7;
      if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
      {

        goto LABEL_22;
      }

      v11 = OUTLINED_FUNCTION_5_0();

      if (v11)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_7_31();
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_22:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_32();
  v12 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v13 = sub_2749FCD64();

  v15 = OUTLINED_FUNCTION_13_1(v14, sel_localizedStringForKey_value_table_);

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v16;
}

uint64_t sub_27495BEE8()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v3 = v3 && v0 == v2;
  if (v3)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v1)
  {
    goto LABEL_18;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v3 && v0 == v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_5();

    if ((v1 & 1) == 0)
    {
      v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v8 = v7;
      if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
      {
      }

      else
      {
        v11 = OUTLINED_FUNCTION_5_0();

        if ((v11 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_31();
          __break(1u);
LABEL_17:
        }
      }
    }
  }

LABEL_18:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_32();
  v12 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v13 = sub_2749FCD64();

  v15 = OUTLINED_FUNCTION_13_1(v14, sel_localizedStringForKey_value_table_);

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v16;
}

BOOL sub_27495C0E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_27495C124@<X0>(uint64_t *a1@<X8>)
{
  result = WFSmartPromptStatus.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27495C194@<X0>(uint64_t *a1@<X8>)
{
  result = static WFSmartPromptStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27495C1F0@<X0>(uint64_t a1@<X8>)
{
  v22[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B60);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B68);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = *v1;
  if (v13 == 2)
  {
    v14 = sub_27495C588();
    v22[1] = v15;
    v22[2] = v14;
    v22[4] = a1;
    v22[3] = v22;
    MEMORY[0x28223BE20](v14);
    v22[-2] = v1;
    v16 = OUTLINED_FUNCTION_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    sub_27472AB6C(&qword_280970B98, &qword_280970B90);
    sub_2749FC674();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_39(&qword_280970B80, &qword_280970B70);
    OUTLINED_FUNCTION_2_45();
    sub_27472AB6C(v17, v18);
    sub_2749FB7B4();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    *v5 = sub_2749FB524();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B78);
    sub_27495CBF4(v1, v13 & 1, &v5[*(v20 + 44)]);
    sub_2747B97A0(v5, v8, &qword_280970B60);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_39(&qword_280970B80, &qword_280970B70);
    OUTLINED_FUNCTION_2_45();
    sub_27472AB6C(v21, &qword_280970B60);
    sub_2749FB7B4();
    return sub_27472ECBC(v5, &qword_280970B60);
  }
}

uint64_t sub_27495C588()
{
  v1 = v0;
  sub_2749FD0A4();
  sub_27495DBE8(v0, &v10);
  v2 = sub_2749FD094();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(v0 + 16);
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = *(v0 + 32);
  *(v3 + 80) = *(v0 + 48);
  sub_27495DBE8(v0, &v10);
  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = *(v1 + 16);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(v1 + 32);
  *(v7 + 80) = *(v1 + 48);
  sub_2749FC6F4();
  return v10;
}

uint64_t sub_27495C6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_2749FA2F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FA2C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FA304();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = *(v1 + 24);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
    v15 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v16 = objc_allocWithZone(MEMORY[0x277D7A158]);
    sub_27491A250(0x6C6C69662E707061, 0xE800000000000000, v15);
  }

  (*(v8 + 104))(v10, *MEMORY[0x277D7D6A0], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D7D6D0], v3);
  v17 = v13;
  sub_2749FA314();
  v18 = *(v2 + 16);
  if (v18)
  {
    v19 = *(v2 + 8);
    v20 = v18;
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v21 = qword_28159E448;
    v22 = sub_2749FCD64();
    v23 = sub_2749FCD64();

    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v20 = v25;
  }

  v43 = v19;
  v44 = v20;
  sub_27475D0D0();

  v26 = sub_2749FBEE4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v38 = &v38;
  v43 = v26;
  v44 = v28;
  v30 &= 1u;
  v45 = v30;
  v46 = v32;
  v47 = KeyPath;
  v48 = 1;
  v49 = 0;
  v34 = MEMORY[0x28223BE20](KeyPath);
  *(&v38 - 2) = &v43;
  MEMORY[0x28223BE20](v34);
  v35 = v42;
  *(&v38 - 2) = v42;
  sub_274754DBC(v26, v28, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA0);
  sub_27495DB30();
  sub_27495DE88(&qword_28159E800, MEMORY[0x277D7D6E0]);
  v36 = v40;
  sub_2749FC584();
  sub_27477656C(v26, v28, v30);

  sub_27477656C(v26, v28, v30);

  return (*(v39 + 8))(v35, v36);
}

uint64_t sub_27495CBF4@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v46[3] = a2;
  v59 = a3;
  v4 = sub_2749FAE54();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BB8);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BC0);
  v13 = MEMORY[0x28223BE20](v48);
  v55 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B90);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v50 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v47 = v46 - v19;
  sub_27495C6A8(v46 - v19);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v20 = qword_28159E448;
  v21 = sub_2749FCD64();
  v22 = sub_2749FCD64();

  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v26 = v25;

  v64 = v24;
  v65 = v26;
  v27 = a1[4];
  v28 = a1[5];
  v66 = a1[6];
  v67 = v27;
  v61 = v27;
  v62 = v28;
  v63 = v66;
  MEMORY[0x28223BE20](v29);
  sub_274855714(&v67, v60);

  sub_27495DCA0(&v66, v60);
  type metadata accessor for WFSmartPromptStatus(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BC8);
  sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus);
  sub_27495DD04();
  sub_27475D0D0();
  sub_2749FC664();
  v30 = sub_27472AB6C(&qword_280970BE8, &qword_280970BB0);
  sub_2749FC064();
  (*(v7 + 8))(v9, v6);
  v31 = v56;
  sub_2749FAE44();
  v61 = v6;
  v62 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v49;
  v33 = v54;
  v34 = v58;
  sub_2749FC004();
  (*(v57 + 8))(v31, v34);
  (*(v53 + 8))(v12, v33);
  v35 = v47;
  *(v32 + *(v48 + 36)) = 257;
  v36 = v50;
  v37 = v51;
  v38 = *(v51 + 16);
  v39 = v52;
  v38(v50, v35, v52);
  v40 = v55;
  sub_2747B97A0(v32, v55, &qword_280970BC0);
  v41 = v59;
  v38(v59, v36, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BF0);
  v43 = &v41[*(v42 + 48)];
  *v43 = 0;
  v43[8] = 1;
  sub_2747B97A0(v40, &v41[*(v42 + 64)], &qword_280970BC0);
  sub_27472ECBC(v32, &qword_280970BC0);
  v44 = *(v37 + 8);
  v44(v35, v39);
  sub_27472ECBC(v40, &qword_280970BC0);
  return (v44)(v36, v39);
}

uint64_t sub_27495D2C4(char a1)
{
  if (qword_280966C70 != -1)
  {
LABEL_23:
    swift_once();
  }

  swift_beginAccess();
  v2 = off_280970B48;
  v3 = *(off_280970B48 + 2);

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v4 >= v2[2])
    {
      __break(1u);
      goto LABEL_23;
    }

    v6 = v2[v4 + 4];
    if ((a1 & 1) == 0)
    {
      v15 = v6;
      goto LABEL_16;
    }

    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
    {
      v14 = v6;

LABEL_13:
      if ([objc_opt_self() allowsDeletingWithoutConfirmation])
      {
        goto LABEL_16;
      }

      ++v4;
    }

    else
    {
      v12 = sub_2749FDCC4();
      v13 = v6;

      if (v12)
      {
        goto LABEL_13;
      }

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27476DB9C();
      }

      v16 = *(v5 + 16);
      if (v16 >= *(v5 + 24) >> 1)
      {
        sub_27476DB9C();
      }

      ++v4;
      *(v5 + 16) = v16 + 1;
      *(v5 + 8 * v16 + 32) = v6;
    }
  }

  *(swift_allocObject() + 16) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BE0);
  sub_27472AB6C(&qword_280970BF8, &qword_280970B58);
  sub_27495DD88();
  sub_27495DE88(&qword_280970C00, type metadata accessor for WFSmartPromptStatus);
  return sub_2749FC764();
}

uint64_t sub_27495D5C4(void **a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C08);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = *a1;
  if (a2)
  {
    v25 = sub_27495BEE8();
    v26 = v12;
    sub_27475D0D0();
    *v10 = sub_2749FBEE4();
    *(v10 + 1) = v13;
    v10[16] = v14 & 1;
    *(v10 + 3) = v15;
    *(v10 + 4) = v11;
    v10[40] = 1;
    (*(v8 + 16))(v6, v10, v7);
  }

  else
  {
    v25 = sub_27495BCF0();
    v26 = v16;
    sub_27475D0D0();
    *v10 = sub_2749FBEE4();
    *(v10 + 1) = v17;
    v10[16] = v18 & 1;
    *(v10 + 3) = v19;
    *(v10 + 4) = v11;
    v10[40] = 1;
    (*(v8 + 16))(v6, v10, v7);
  }

  swift_storeEnumTagMultiPayload();
  type metadata accessor for WFSmartPromptStatus(255);
  v21 = v20;
  v22 = sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus);
  v23 = v11;
  v25 = MEMORY[0x277CE0BD8];
  v26 = v21;
  v27 = MEMORY[0x277CE0BC8];
  v28 = v22;
  swift_getOpaqueTypeConformance2();
  sub_2749FB7B4();
  return (*(v8 + 8))(v10, v7);
}

void sub_27495D870(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA8);
  MEMORY[0x277C5E410](&v12, v3);
  v4 = v12;
  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v7 = v6;
  if (v5 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v7 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_2749FDCC4();

    v11 = v10 ^ 1;
  }

  *a2 = v11 & 1;
}

uint64_t sub_27495D964(_BYTE *a1)
{
  if (*a1)
  {
    v1 = MEMORY[0x277D7CFD8];
  }

  else
  {
    v1 = MEMORY[0x277D7CFE0];
  }

  *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA8);
  return sub_2749FC6C4();
}

uint64_t sub_27495D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  sub_274754DBC(v3, v2, v4);
}

uint64_t sub_27495DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA304();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_27495DB30()
{
  result = qword_28159E6E8;
  if (!qword_28159E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BA0);
    sub_27472AB6C(&qword_28159E5A8, &unk_28096D970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6E8);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_27495DCA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFSmartPromptStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27495DD04()
{
  result = qword_280970BD0;
  if (!qword_280970BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BC8);
    sub_27495DD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970BD0);
  }

  return result;
}

unint64_t sub_27495DD88()
{
  result = qword_280970BD8;
  if (!qword_280970BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BE0);
    type metadata accessor for WFSmartPromptStatus(255);
    sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970BD8);
  }

  return result;
}

uint64_t sub_27495DE88(unint64_t *a1, void (*a2)(uint64_t))
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

unsigned __int8 *sub_27495DED0(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_27495DF7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27495E050(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_27495E064(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_27495E080()
{
  result = qword_280970C18;
  if (!qword_280970C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970C20);
    sub_27472AB6C(&qword_280970B80, &qword_280970B70);
    sub_27472AB6C(&qword_280970B88, &qword_280970B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970C18);
  }

  return result;
}

_BYTE *sub_27495E164(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27495E240()
{
  result = qword_280970C28;
  if (!qword_280970C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970C28);
  }

  return result;
}

uint64_t sub_27495E314(uint64_t a1, char a2)
{
  _s11SectionTypeOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  _s13RowIdentifierOMa(0);
  sub_2749619D8(&qword_280970CC0, _s11SectionTypeOMa);
  sub_2749619D8(&qword_280970CC8, _s13RowIdentifierOMa);
  sub_2749FA684();
  v14 = sub_27487FC44();
  v15 = type metadata accessor for WFGlyphCategory();
  __swift_storeEnumTagSinglePayload(v7, 1, 5, v15);
  v16 = OUTLINED_FUNCTION_11_27();
  sub_27495F648(v16, v17);
  OUTLINED_FUNCTION_0_41();
  sub_274961A20(v7, v18);
  if (v14)
  {
    __swift_storeEnumTagSinglePayload(v7, 3, 5, v15);
    v19 = OUTLINED_FUNCTION_11_27();
    sub_27495F648(v19, v20);
    OUTLINED_FUNCTION_0_41();
    sub_274961A20(v7, v21);
    if (!a1)
    {
      GlyphRegistry.categories.getter();
    }

    v25 = OUTLINED_FUNCTION_11_27();
    sub_27495FBB8(v25, v26);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 2, 5, v15);
    v22 = OUTLINED_FUNCTION_11_27();
    sub_27495F648(v22, v23);
    OUTLINED_FUNCTION_0_41();
    sub_274961A20(v7, v24);
  }

  sub_274960464();
  sub_2749FA724();
  sub_274960FA4(a2 & 1);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_27495E5B0(uint64_t a1, uint64_t a2)
{
  sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v54 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  OUTLINED_FUNCTION_34(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CA0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CA8);
  OUTLINED_FUNCTION_34(v21);
  OUTLINED_FUNCTION_4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v26 = &v50 + *(v23 + 56) - v24;
  sub_274961A78(a1, &v50 - v24);
  sub_274961A78(a2, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_52();
      v28 = OUTLINED_FUNCTION_44();
      sub_274961A78(v28, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8);
      v31 = v30[12];
      v32 = *&v18[v31];
      v33 = v30[16];
      v34 = *&v18[v33];
      v35 = v30[20];
      v52 = v18[v35];
      v53 = v34;
      if (OUTLINED_FUNCTION_14_22() != 1)
      {
        sub_27472ECBC(v18, &qword_2809707E0);
        goto LABEL_19;
      }

      v36 = *&v26[v31];
      v51 = *&v26[v33];
      v37 = v26[v35];
      v38 = *(v11 + 48);
      sub_274961B98(v18, v14, &qword_2809707E0);
      sub_274961B98(v26, &v14[v38], &qword_2809707E0);
      v39 = v57;
      if (__swift_getEnumTagSinglePayload(v14, 1, v57) != 1)
      {
        v41 = v55;
        sub_274961AD0(v14, v55);
        if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v39) != 1)
        {
          v50 = v37;
          v42 = v56;
          v43 = &v14[v38];
          v44 = v54;
          (*(v56 + 32))(v54, v43, v39);
          OUTLINED_FUNCTION_2_46();
          sub_2749619D8(v45, v46);
          v47 = sub_2749FCD54();
          v48 = *(v42 + 8);
          v48(v44, v39);
          v48(v41, v39);
          v37 = v50;
          sub_27472ECBC(v14, &qword_2809707E0);
          if (v47)
          {
            goto LABEL_26;
          }

LABEL_29:
          OUTLINED_FUNCTION_6_38();
          return 0;
        }

        (*(v56 + 8))(v41, v39);
LABEL_24:
        sub_27472ECBC(v14, &qword_280970CA0);
        goto LABEL_29;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v39) != 1)
      {
        goto LABEL_24;
      }

      sub_27472ECBC(v14, &qword_2809707E0);
LABEL_26:
      if (v32 != v36 || v53 != v51)
      {
        goto LABEL_29;
      }

      v49 = v52 ^ v37;
      OUTLINED_FUNCTION_6_38();
      return v49 ^ 1u;
    case 2u:
      if (OUTLINED_FUNCTION_14_22() != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 3u:
      if (OUTLINED_FUNCTION_14_22() != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 4u:
      if (OUTLINED_FUNCTION_14_22() != 4)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 5u:
      if (OUTLINED_FUNCTION_14_22() != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 6u:
      if (OUTLINED_FUNCTION_14_22() != 6)
      {
        goto LABEL_19;
      }

LABEL_17:
      OUTLINED_FUNCTION_6_38();
      return 1;
    default:
      OUTLINED_FUNCTION_3_52();
      sub_274961A78(v25, v20);
      if (OUTLINED_FUNCTION_14_22())
      {
LABEL_19:
        sub_27472ECBC(v25, &qword_280970CA8);
        return 0;
      }

      else
      {
        v27 = *v20 == *v26;
        sub_274961A20(v25, _s13RowIdentifierOMa);
      }

      return v27;
  }
}

uint64_t sub_27495EB0C()
{
  v1 = type metadata accessor for WFGlyphCategory();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = _s11SectionTypeOMa(0);
  v7 = OUTLINED_FUNCTION_34(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_41();
  sub_274961A78(v0, v10);
  v11 = 0x53206C6F626D7953;
  switch(__swift_getEnumTagSinglePayload(v10, 5, v1))
  {
    case 1u:
      OUTLINED_FUNCTION_7_32();
      v11 = v13 + 1;
      break;
    case 2u:
      OUTLINED_FUNCTION_7_32();
      v11 = v14 + 5;
      break;
    case 3u:
      return v11;
    case 4u:
      OUTLINED_FUNCTION_7_32();
      v11 = v12 + 3;
      break;
    case 5u:
      OUTLINED_FUNCTION_7_32();
      v11 = v15 | 0xE;
      break;
    default:
      sub_274961B40(v10, v5);
      sub_2749FD934();
      MEMORY[0x277C5EBC0](0xD000000000000011, 0x8000000274A34650);
      sub_2749FDA74();
      v11 = 0;
      sub_274961A20(v5, type metadata accessor for WFGlyphCategory);
      break;
  }

  return v11;
}

uint64_t sub_27495ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = _s11SectionTypeOMa(0);
  v10 = OUTLINED_FUNCTION_34(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C98);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = *(v16 + 56);
  sub_274961A78(a1, &v30 - v17);
  sub_274961A78(a2, &v18[v19]);
  switch(__swift_getEnumTagSinglePayload(v18, 5, v4))
  {
    case 1u:
      if (OUTLINED_FUNCTION_9_28() == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 2u:
      if (OUTLINED_FUNCTION_9_28() != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3u:
      if (OUTLINED_FUNCTION_9_28() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 4u:
      if (OUTLINED_FUNCTION_9_28() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 5u:
      if (OUTLINED_FUNCTION_9_28() == 5)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_4_41();
      sub_274961A78(v18, v13);
      if (OUTLINED_FUNCTION_9_28())
      {
        sub_274961A20(v13, type metadata accessor for WFGlyphCategory);
LABEL_14:
        sub_27472ECBC(v18, &qword_280970C98);
        return 0;
      }

      sub_274961B40(&v18[v19], v8);
      if ((sub_2749F9134() & 1) == 0 || ((v22 = *(v4 + 20), v23 = *(v13 + v22), v24 = *(v13 + v22 + 8), v25 = (v8 + v22), v23 == *v25) ? (v26 = v24 == v25[1]) : (v26 = 0), !v26 && (sub_2749FDCC4() & 1) == 0 || (sub_274785420(*(v13 + *(v4 + 24)), *(v8 + *(v4 + 24))) & 1) == 0))
      {
        OUTLINED_FUNCTION_8_36();
        sub_274961A20(v8, v28);
        sub_274961A20(v13, v4);
        OUTLINED_FUNCTION_0_41();
        sub_274961A20(v18, v29);
        return 0;
      }

      OUTLINED_FUNCTION_8_36();
      sub_274961A20(v8, v27);
      sub_274961A20(v13, v4);
LABEL_13:
      OUTLINED_FUNCTION_0_41();
      sub_274961A20(v18, v20);
      return 1;
  }
}

uint64_t sub_27495EFD0()
{
  OUTLINED_FUNCTION_59_0();
  v1 = type metadata accessor for WFGlyphCategory();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = _s11SectionTypeOMa(0);
  v7 = OUTLINED_FUNCTION_34(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_41();
  sub_274961A78(v0, v10);
  switch(__swift_getEnumTagSinglePayload(v10, 5, v1))
  {
    case 1u:
      v14 = 0;
      goto LABEL_8;
    case 2u:
      v14 = 1;
      goto LABEL_8;
    case 3u:
      v14 = 2;
      goto LABEL_8;
    case 4u:
      v14 = 4;
      goto LABEL_8;
    case 5u:
      v14 = 5;
LABEL_8:
      result = MEMORY[0x277C5FB60](v14);
      break;
    default:
      sub_274961B40(v10, v5);
      MEMORY[0x277C5FB60](3);
      sub_2749F9164();
      OUTLINED_FUNCTION_2_46();
      sub_2749619D8(v11, v12);
      sub_2749FCD04();
      result = sub_274961A20(v5, type metadata accessor for WFGlyphCategory);
      break;
  }

  return result;
}

uint64_t sub_27495F1B4()
{
  v1 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  v9 = OUTLINED_FUNCTION_34(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = (v17 - v16);
  OUTLINED_FUNCTION_3_52();
  sub_274961A78(v0, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8);
      v22 = *&v18[*(v21 + 48)];
      v26[3] = v18[*(v21 + 80)];
      sub_274961B98(v18, v14, &qword_2809707E0);
      MEMORY[0x277C5FB60](5);
      sub_274961AD0(v14, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
      {
        sub_2749FDE14();
      }

      else
      {
        (*(v3 + 32))(v7, v12, v1);
        sub_2749FDE14();
        OUTLINED_FUNCTION_2_46();
        sub_2749619D8(v24, v25);
        sub_2749FCD04();
        (*(v3 + 8))(v7, v1);
      }

      MEMORY[0x277C5FB60](v22);
      sub_2749FDE24();
      sub_2749FDE14();
      return sub_27472ECBC(v14, &qword_2809707E0);
    case 2u:
      v20 = 0;
      return MEMORY[0x277C5FB60](v20);
    case 3u:
      v20 = 1;
      return MEMORY[0x277C5FB60](v20);
    case 4u:
      v20 = 3;
      return MEMORY[0x277C5FB60](v20);
    case 5u:
      v20 = 4;
      return MEMORY[0x277C5FB60](v20);
    case 6u:
      v20 = 6;
      return MEMORY[0x277C5FB60](v20);
    default:
      v19 = *v18;
      MEMORY[0x277C5FB60](2);
      v20 = v19;
      return MEMORY[0x277C5FB60](v20);
  }
}

uint64_t sub_27495F4CC(void (*a1)(_BYTE *))
{
  sub_2749FDDF4();
  a1(v3);
  return sub_2749FDE44();
}

uint64_t sub_27495F55C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2749FDDF4();
  a4(v6);
  return sub_2749FDE44();
}

uint64_t sub_27495F5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + qword_280970C48 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_280970C30) = a2;
  *(v4 + qword_280970C38) = a3;
  *(v4 + qword_280970C40) = a4;

  return sub_2749FA6D4();
}

uint64_t sub_27495F648(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_2749FA4E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s13RowIdentifierOMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s11SectionTypeOMa(0);
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274961A78(a1, v16);
  v17 = type metadata accessor for WFGlyphCategory();
  switch(__swift_getEnumTagSinglePayload(v16, 5, v17))
  {
    case 1u:
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48);
      *(swift_allocObject() + 16) = xmmword_274A0EF10;
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    case 2u:
      v28 = a1;
      v32 = MEMORY[0x277D84F90];
      sub_27476D608();
      v22 = 0;
      v23 = v32;
      do
      {
        *v13 = byte_28838FC30[v22 + 32];
        swift_storeEnumTagMultiPayload();
        v32 = v23;
        v24 = *(v23 + 16);
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_27476D608();
          v23 = v32;
        }

        ++v22;
        *(v23 + 16) = v24 + 1;
        sub_274961B40(v13, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24);
      }

      while (v22 != 3);
      a1 = v28;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8);
      v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_274A0EF10;
      sub_274961A78(a1, v26 + v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
      sub_2749FA654();

      sub_274961A78(a1, v5);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
      sub_2749FA634();

      return sub_27472ECBC(v5, &qword_280968BB8);
    case 4u:
    case 5u:
      goto LABEL_3;
    default:
      sub_274961A20(v16, _s11SectionTypeOMa);
LABEL_3:
      sub_2749FA3D4();
      v18 = sub_2749FA4D4();
      v19 = sub_2749FD2D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        MEMORY[0x277C61040](v20, -1, -1);
      }

      return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_27495FBB8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = _s11SectionTypeOMa(0);
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WFGlyphCategory();
  *&v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v61 - v11;
  v72 = _s13RowIdentifierOMa(0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentTraitCollection];
  v66 = [v14 userInterfaceStyle];

  v65 = v2;

  v15 = sub_274795BF8();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v71 = v4;
  if (v19)
  {
    v20 = v65;

    v21 = sub_274795BF8();
    v23 = v22;

    sub_2747B9BAC(v21, v23);
    v25 = v24;

    v26 = *(v25 + 16);
    if (v26)
    {
      v68 = v7;
      v74 = MEMORY[0x277D84F90];
      sub_27476D608();
      *&v69 = *(v20 + qword_280970C30);
      v27 = v74;
      v28 = 32;
      v29 = v25;
      do
      {
        v30 = *(v25 + v28);
        v31 = sub_27487F5DC();
        if (v33)
        {
          v34 = v30 == v31;
        }

        else
        {
          sub_2747C6E20(v31, v32, 0);
          v34 = 0;
        }

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8);
        v36 = v35[12];
        v37 = v35[16];
        v38 = v35[20];
        v39 = sub_2749F9164();
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v39);
        *&v13[v36] = v66;
        *&v13[v37] = v30;
        v13[v38] = v34;
        swift_storeEnumTagMultiPayload();
        v74 = v27;
        v40 = *(v27 + 16);
        if (v40 >= *(v27 + 24) >> 1)
        {
          sub_27476D608();
          v27 = v74;
        }

        *(v27 + 16) = v40 + 1;
        sub_274961B40(v13, v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40);
        v28 += 2;
        --v26;
        v41 = v71;
        v42 = v67;
        v25 = v29;
      }

      while (v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_274A0EF10;
      v45 = v68;
      __swift_storeEnumTagSinglePayload(v44 + v43, 4, 5, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
      sub_2749FA654();

      v46 = v62;
      __swift_storeEnumTagSinglePayload(v62, 4, 5, v45);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v41);
      sub_2749FA634();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8);
      v59 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v60 = swift_allocObject();
      v69 = xmmword_274A0EF10;
      *(v60 + 16) = xmmword_274A0EF10;
      __swift_storeEnumTagSinglePayload(v60 + v59, 5, 5, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
      sub_2749FA654();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48);
      *(swift_allocObject() + 16) = v69;
      swift_storeEnumTagMultiPayload();
      v46 = v62;
      __swift_storeEnumTagSinglePayload(v62, 5, 5, v7);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v71);
      sub_2749FA634();
    }

    return sub_27472ECBC(v46, &qword_280968BB8);
  }

  else
  {
    v47 = a1;
    v48 = *(a1 + 16);
    v49 = v62;
    v51 = v66;
    v50 = v67;
    if (v48)
    {
      v52 = 0;
      v53 = v47 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v64 = *(v69 + 72);
      v63 = xmmword_274A0EF10;
      do
      {
        v72 = v53;
        v70 = v48;
        sub_274961A78(v53, v9);
        sub_274961A78(v9, v6);
        v54 = __swift_storeEnumTagSinglePayload(v6, 0, 5, v7);
        MEMORY[0x28223BE20](v54);
        *(&v61 - 4) = v65;
        *(&v61 - 3) = v9;
        *(&v61 - 2) = v51;
        v56 = sub_2748889D8(sub_274961BF4, (&v61 - 6), v55);
        v68 = v52;
        *&v69 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8);
        v57 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v63;
        sub_274961A78(v6, v58 + v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
        sub_2749FA654();
        v52 = v68;

        sub_274961A78(v6, v49);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v71);
        sub_2749FA634();

        sub_27472ECBC(v49, &qword_280968BB8);
        sub_274961A20(v6, _s11SectionTypeOMa);
        result = sub_274961A20(v9, type metadata accessor for WFGlyphCategory);
        v53 = v72 + v64;
        v48 = v70 - 1;
      }

      while (v70 != 1);
    }
  }

  return result;
}

uint64_t sub_274960464()
{
  v91 = sub_2749F9284();
  v96 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v75 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = _s13RowIdentifierOMa(0);
  v88 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CD8);
  MEMORY[0x28223BE20](v4);
  v87 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CE0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v75 - v10);
  v98 = type metadata accessor for WFGlyphCategory();
  MEMORY[0x28223BE20](v98);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C98);
  MEMORY[0x28223BE20](v92);
  v14 = &v75 - v13;
  v15 = _s11SectionTypeOMa(0);
  v93 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v75 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CE8);
  MEMORY[0x28223BE20](v83);
  v79 = (&v75 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v82 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = (&v75 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v95 = sub_2749FA674();
  sub_2749FA744();
  v84 = sub_2749FA674();
  v29 = *(v26 + 8);
  v76 = v28;
  v78 = v25;
  v77 = v26 + 8;
  v75 = v29;
  result = v29(v28, v25);
  v31 = 0;
  v89 = qword_280970C48;
  v32 = (v96 + 8);
  v96 = v9;
  v86 = v18;
  while (1)
  {
    v33 = *(v84 + 16);
    if (v31 == v33)
    {
      v85 = v31;
      v34 = 1;
      v36 = v82;
      v35 = v83;
    }

    else
    {
      if (v31 >= v33)
      {
        goto LABEL_57;
      }

      v37 = v31 + 1;
      v35 = v83;
      v38 = v84 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v31;
      v39 = *(v83 + 48);
      v40 = v79;
      *v79 = v31;
      sub_274961A78(v38, v40 + v39);
      v41 = v40;
      v36 = v82;
      sub_274961B98(v41, v82, &qword_280970CE8);
      v34 = 0;
      v85 = v37;
    }

    __swift_storeEnumTagSinglePayload(v36, v34, 1, v35);
    v42 = v81;
    sub_274961B98(v36, v81, &qword_280970CF0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v35) == 1)
    {
    }

    v94 = *v42;
    sub_274961B40(v42 + *(v35 + 48), v97);
    v43 = 0;
    v44 = *(v95 + 16);
LABEL_8:
    if (v43 == v44)
    {
      break;
    }

    v45 = v43++;
    v46 = *(v92 + 48);
    sub_274961A78(v95 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v45, v14);
    sub_274961A78(v97, &v14[v46]);
    switch(__swift_getEnumTagSinglePayload(v14, 5, v98))
    {
      case 1u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_51;
      case 2u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 3u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 4u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 4)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 5u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_51;
      default:
        v47 = v86;
        sub_274961A78(v14, v86);
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98))
        {
          sub_274961A20(v47, type metadata accessor for WFGlyphCategory);
LABEL_21:
          sub_27472ECBC(v14, &qword_280970C98);
          goto LABEL_8;
        }

        v48 = &v14[v46];
        v49 = v80;
        sub_274961B40(v48, v80);
        if ((sub_2749F9134() & 1) == 0 || ((v50 = *(v98 + 20), v51 = &v86[v50], result = *&v86[v50], v52 = *&v86[v50 + 8], v53 = (v49 + v50), *v51 == *v53) ? (v54 = v52 == v53[1]) : (v54 = 0), !v54 && (result = sub_2749FDCC4(), (result & 1) == 0) || (v55 = *(v98 + 24), v56 = *&v86[v55], v57 = *(v49 + v55), v58 = *(v56 + 16), v58 != *(v57 + 16))))
        {
LABEL_38:
          sub_274961A20(v49, type metadata accessor for WFGlyphCategory);
          sub_274961A20(v86, type metadata accessor for WFGlyphCategory);
          sub_274961A20(v14, _s11SectionTypeOMa);
          goto LABEL_8;
        }

        if (v58)
        {
          v59 = v56 == v57;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = (v56 + 32);
          v61 = (v57 + 32);
          while (v58)
          {
            if (*v60 != *v61)
            {
              goto LABEL_38;
            }

            ++v60;
            ++v61;
            if (!--v58)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_56;
        }

LABEL_50:
        sub_274961A20(v49, type metadata accessor for WFGlyphCategory);
        sub_274961A20(v86, type metadata accessor for WFGlyphCategory);
LABEL_51:
        sub_274961A20(v14, _s11SectionTypeOMa);
LABEL_52:
        result = sub_274961A20(v97, _s11SectionTypeOMa);
        v31 = v85;
        break;
    }
  }

  v62 = v76;
  sub_2749FA744();
  v63 = v78;
  v64 = sub_2749FA664();
  result = v75(v62, v63);
  v65 = 0;
  v66 = *(v64 + 16);
  while (1)
  {
    if (v65 == v66)
    {
      v67 = 1;
      v65 = v66;
      goto LABEL_45;
    }

    if ((v65 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v65 >= *(v64 + 16))
    {
      goto LABEL_55;
    }

    v68 = v87;
    v69 = v64 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v65;
    v70 = *(v4 + 48);
    *v87 = v65;
    sub_274961A78(v69, v68 + v70);
    v71 = v68;
    v9 = v96;
    sub_274961B98(v71, v96, &qword_280970CD8);
    v67 = 0;
    ++v65;
LABEL_45:
    __swift_storeEnumTagSinglePayload(v9, v67, 1, v4);
    sub_274961B98(v9, v11, &qword_280970CE0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
    {

      goto LABEL_52;
    }

    v72 = *v11;
    sub_274961B40(v11 + *(v4 + 48), v3);
    v73 = v3;
    v74 = v90;
    MEMORY[0x277C5AFB0](v72, v94);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2747C5BF0(v74, v73);
      swift_unknownObjectRelease();
    }

    (*v32)(v74, v91);
    result = sub_274961A20(v73, _s13RowIdentifierOMa);
    v3 = v73;
    v9 = v96;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_274960FA4(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = _s11SectionTypeOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CD0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = _s13RowIdentifierOMa(0);
  sub_2749619D8(&qword_280970CC8, _s13RowIdentifierOMa);
  sub_2749FA784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48);
  v12 = swift_allocObject();
  v29 = xmmword_274A0EF10;
  *(v12 + 16) = xmmword_274A0EF10;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v30 = v8;
  sub_2749FA754();

  sub_27472ECBC(v7, &qword_280968BB0);
  v13 = sub_27487FC44();
  v28 = v2;
  if (v13)
  {
    *(swift_allocObject() + 16) = xmmword_274A0F620;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    sub_2749FA754();

    sub_27472ECBC(v7, &qword_280968BB0);

    v14 = sub_274795BF8();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v17;

    v18 = sub_274795AA4();

    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
    if ((v18 & 1) != 0 || v24)
    {
      v19 = v30;
      sub_2749FA774();
      goto LABEL_10;
    }

    v19 = v30;
  }

  else
  {
    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    v19 = v30;
    sub_2749FA754();

    sub_27472ECBC(v7, &qword_280968BB0);
    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
  }

  sub_2749FA764();
LABEL_10:

  v20 = type metadata accessor for WFGlyphCategory();
  v21 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 5, v20);
  sub_2749FA734();
  sub_274961A20(v21, _s11SectionTypeOMa);
  return (*(v25 + 8))(v10, v19);
}

uint64_t sub_2749614FC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_27487F5DC();
  if (v10)
  {
    v11 = v7 == v8;
  }

  else
  {
    sub_2747C6E20(v8, v9, 0);
    v11 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  v16 = sub_2749F9164();
  (*(*(v16 - 8) + 16))(a4, a2, v16);
  __swift_storeEnumTagSinglePayload(a4, 0, 1, v16);
  *(a4 + v13) = a3;
  *(a4 + v14) = v7;
  *(a4 + v15) = v11;
  _s13RowIdentifierOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_274961644()
{

  v1 = v0 + qword_280970C48;

  return sub_2747545BC(v1);
}

uint64_t sub_2749616A4(uint64_t a1)
{

  v2 = a1 + qword_280970C48;

  return sub_2747545BC(v2);
}

uint64_t sub_274961770()
{
  v0 = type metadata accessor for WFGlyphCategory();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_2749617E8()
{
  sub_274961854();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_274961854()
{
  if (!qword_280970C80)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809707E0);
    type metadata accessor for UIUserInterfaceStyle(255);
    type metadata accessor for WFGlyphCharacter(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280970C80);
    }
  }
}

uint64_t sub_2749619D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274961A20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274961A78(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274961AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274961B40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274961B98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

id sub_274961C24(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v6 = [objc_opt_self() effectWithVariableBlurRadius:a3 imageMask:a1];
  [v5 setEffect_];

  return v5;
}

uint64_t sub_274961CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749624FC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274961D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749624FC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274961D8C()
{
  sub_2749624FC();
  sub_2749FB774();
  __break(1u);
}

double sub_274961DC0@<D0>(uint64_t *a1@<X8>)
{
  sub_27471CF08(0, &qword_280969480);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = sub_27480D818();
  v3 = sub_2749FCF74();
  [v2 setValue:v3 forKey:*MEMORY[0x277CDA540]];

  v4 = sub_2749F9884();
  v5 = *MEMORY[0x277CDA360];
  [v2 setValue:v4 forKey:*MEMORY[0x277CDA360]];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = sub_27480D818();
  v7 = sub_2749F9884();
  [v6 setValue:v7 forKey:v5];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = sub_27480D818();
  v9 = sub_2749F9884();
  [v8 setValue:v9 forKey:*MEMORY[0x277CDA4F0]];

  v10 = sub_2749FD034();
  [v8 setValue:v10 forKey:*MEMORY[0x277CDA4C8]];

  v11 = sub_2749FD034();
  [v8 setValue:v11 forKey:*MEMORY[0x277CDA448]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v12 = swift_allocObject();
  *&result = 3;
  *(v12 + 16) = xmmword_274A154D0;
  *(v12 + 32) = v2;
  *(v12 + 40) = v6;
  *(v12 + 48) = v8;
  *a1 = v12;
  return result;
}

uint64_t static CustomMaterialConfiguration.searchBackdrop.getter@<X0>(void *a1@<X8>)
{
  if (qword_280966C78 != -1)
  {
    swift_once();
  }

  *a1 = qword_280970D00;
}

id CustomMaterialUIView.init(configuration:)()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CustomMaterialUIView();
  v1 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 layer];
  v3 = sub_27479BED0();

  sub_27480FF3C(v3, v2);

  return v1;
}

id CustomMaterialUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CustomMaterialUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomMaterialUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CustomMaterialView.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for CustomMaterialUIView());

  return CustomMaterialUIView.init(configuration:)();
}

uint64_t sub_274962300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274962550();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274962364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274962550();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2749623C8()
{
  sub_274962550();
  sub_2749FB774();
  __break(1u);
}

unint64_t sub_2749623F4()
{
  result = qword_280970D10;
  if (!qword_280970D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D10);
  }

  return result;
}

unint64_t sub_2749624A8()
{
  result = qword_280970D18;
  if (!qword_280970D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D18);
  }

  return result;
}

unint64_t sub_2749624FC()
{
  result = qword_280970D20;
  if (!qword_280970D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D20);
  }

  return result;
}

unint64_t sub_274962550()
{
  result = qword_280970D28;
  if (!qword_280970D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D28);
  }

  return result;
}

BOOL sub_2749625B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_2749625F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      ++v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
      result = sub_2749F95E4();
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_27496267C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      ++v2;
      v3 = OUTLINED_FUNCTION_45();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3);
      result = sub_2749F95E4();
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_274962734(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
  v3 = sub_2749F9524();
  v4 = sub_2749625B0(a2, v3);

  if (!v4)
  {
    v18 = a2;
    OUTLINED_FUNCTION_103_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, MEMORY[0x277D84F90]);
    v5 = sub_2749F95E4();
  }

  v18 = a2;
  OUTLINED_FUNCTION_103_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
  v13 = sub_2749F95C4();
  if (*v14)
  {

    sub_2747829A0();
  }

  return v13(v17, 0);
}

uint64_t sub_274962804(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = sub_2749F9524();
  v10 = a2 & 1;
  LOBYTE(a5) = a5(v10, v9);

  if ((a5 & 1) == 0)
  {
    v25 = v10;
    OUTLINED_FUNCTION_103_1(v11, v12, v13, v14, v15, v16, v17, v18, v23, MEMORY[0x277D84F90]);
    v11 = sub_2749F95E4();
  }

  v25 = v10;
  OUTLINED_FUNCTION_103_1(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  v19 = sub_2749F95C4();
  if (*v20)
  {

    a6(v21);
  }

  return v19(v24, 0);
}

void sub_2749628E8()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D98);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DA8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v6, 1, v9);
  if (v11)
  {
    sub_27472ECBC(v6, &qword_280970D98);
    v12 = *v0;
    sub_274799308(v4 & 1);
    if (v13)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F040);
      OUTLINED_FUNCTION_143_1();
      v14 = OUTLINED_FUNCTION_246();
      sub_2747D31F8(v14, v1, &qword_280967DA8);
      sub_274772A7C();
      sub_2749FDAA4();
      *v2 = v12;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_27472ECBC(v1, &qword_280970D98);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_3_5();
    sub_2747D31F8(v15, v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_153_0();
    sub_2748F9E1C();
    *v0 = v22;
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_274962AD4()
{
  OUTLINED_FUNCTION_49_2();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA8);
  OUTLINED_FUNCTION_34(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v5, 1, v8);
  if (v12)
  {
    sub_27472ECBC(v5, &qword_280970DA8);
    v13 = sub_2747985F4();
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F058);
      OUTLINED_FUNCTION_143_1();
      sub_2747D31F8(*(v20 + 56) + *(v10 + 72) * v15, v1, &qword_28096F060);
      sub_274772A28();
      OUTLINED_FUNCTION_47_3();
      sub_2749FDAA4();
      *v3 = v20;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    sub_27472ECBC(v1, &qword_280970DA8);
  }

  else
  {
    sub_2747D31F8(v5, v2, &qword_28096F060);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_2748FA210();
    *v3 = v21;
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_274962CE0()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D70);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFF0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v6, 1, v9);
  if (v11)
  {
    sub_27472ECBC(v6, &qword_280970D70);
    v12 = *v0;
    sub_274799308(v4 & 1);
    if (v13)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE8);
      OUTLINED_FUNCTION_143_1();
      v14 = OUTLINED_FUNCTION_246();
      sub_2747D31F8(v14, v1, &qword_28096EFF0);
      sub_274772930();
      sub_2749FDAA4();
      *v2 = v12;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_27472ECBC(v1, &qword_280970D70);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_3_5();
    sub_2747D31F8(v15, v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_153_0();
    sub_2748FA474();
    *v0 = v22;
  }

  OUTLINED_FUNCTION_50_0();
}

char *sub_274962ECC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2749FD844();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_274974114(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_2749FD844() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_2749FD844();
  sub_27476683C(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18);
LABEL_11:
  v13 = OUTLINED_FUNCTION_44();

  return sub_27497453C(v13, v14);
}

uint64_t sub_274962FB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_274974358(a1);
    return a2;
  }

  else
  {

    return sub_274974BCC(a1, a2);
  }
}

void sub_274963008(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_27497444C();
  }

  else
  {
    sub_274974FF4();
  }
}

void sub_27496308C(char *a1, int a2)
{
  v4 = v2;
  HIDWORD(v266) = a2;
  v300 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
  v6 = OUTLINED_FUNCTION_0_0(v5, &v299);
  v269 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1(v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265[0] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D98);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_1(v265 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DA8);
  v16 = OUTLINED_FUNCTION_0_0(v15, v313);
  v285 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DC0);
  v21 = OUTLINED_FUNCTION_34(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v23);
  v24 = sub_2749FA4E4();
  v25 = OUTLINED_FUNCTION_0_0(v24, &v308);
  v297 = v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v28 - v27);
  v306 = sub_2749F9284();
  v29 = OUTLINED_FUNCTION_27(v306);
  v31 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v36 = OUTLINED_FUNCTION_34(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  v43 = OUTLINED_FUNCTION_34(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_85_1();
  v46 = *(v45 + 152);
  OUTLINED_FUNCTION_77();
  v302 = v46;
  sub_27473ADB8(v2 + v46, v2, &qword_280967DB0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8);
  v48 = sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v50 = *(v49 + 8);
  v284 = v2;
  v303 = v50;
  v301 = v49 + 8;
  (v50)(v2, v47);
  v51 = sub_27475F988(v48);
  v305 = v47;
  v52 = sub_2749F9524();
  v281 = sub_27475F988(v52);
  sub_274963008(v281, v51);
  v280 = v53;
  OUTLINED_FUNCTION_85_1();
  v55 = *(v54 + 112);
  swift_beginAccess();
  v267 = v55;
  v290 = *(&v55->isa + v4) + 64;
  OUTLINED_FUNCTION_19_22();
  v58 = v57 & v56;
  v60 = ((v59 + 63) >> 6);
  v293 = v31 + 16;
  v304 = v31 + 32;
  v277 = *MEMORY[0x277D7A490];
  v286 = v31;
  v61 = (v31 + 8);
  v62 = v3;
  v299 = v61;
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_260(v63);
  v287 = v64;

  v65 = 0;
  OUTLINED_FUNCTION_257(MEMORY[0x277D84F98]);
  *&v66 = 136315138;
  v272 = v66;
  v282 = v4;
  v297 = v62;
  v294 = v39;
  v289 = v60;
LABEL_2:
  OUTLINED_FUNCTION_251();
  if (!v58)
  {
    goto LABEL_4;
  }

  do
  {
    v68 = v65;
LABEL_8:
    v69 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v70 = v287;
    v71 = v286;
    (*(v286 + 16))(v292, v287[6] + *(v286 + 72) * (v69 | (v68 << 6)), v306);
    OUTLINED_FUNCTION_245();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    isa_low = SLODWORD(v60[6].isa);
    v39 = v294;
    (*(v71 + 32))();
    *(v39 + isa_low) = v70;
    OUTLINED_FUNCTION_36_14();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v77 = v70;
    v62 = v297;
    v55 = i;
LABEL_9:
    sub_2747D31F8(v39, v55, &unk_280968DD0);
    v78 = OUTLINED_FUNCTION_144();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(v78);
    OUTLINED_FUNCTION_48_7(v79);
    if (v80)
    {

      *(&v267->isa + v4) = v268;

      OUTLINED_FUNCTION_85_1();
      v136 = *(v135 + 184);
      OUTLINED_FUNCTION_77();
      v290 = v136;
      v137 = *(v4 + v136) + 64;
      OUTLINED_FUNCTION_19_22();
      v140 = (v139 & v138);
      v142 = (v141 + 63) >> 6;
      v297 = v143;

      v144 = 0;
      v301 = v137;
      for (i = v142; ; v142 = i)
      {
        if (!v140)
        {
          while (1)
          {
            v145 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_78;
            }

            if (v145 >= v142)
            {
              v185 = OUTLINED_FUNCTION_32_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(v185);
              OUTLINED_FUNCTION_88_2();
              __swift_storeEnumTagSinglePayload(v186, v187, v188, v189);
              v140 = 0;
              goto LABEL_44;
            }

            v140 = *(v137 + 8 * v145);
            v144 = (v144 + 1);
            if (v140)
            {
              v144 = v145;
              break;
            }
          }
        }

        OUTLINED_FUNCTION_205();
        v147 = *(v297[6].isa + v146);
        OUTLINED_FUNCTION_159();
        v65 = &unk_274A10080;
        sub_27473ADB8(v148, v149, &qword_280967DA8);
        v150 = OUTLINED_FUNCTION_32_1();
        v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v150) + 48);
        v152 = v295;
        *v295 = v147;
        sub_2747D31F8(v58, &v152[v151], &qword_280967DA8);
        OUTLINED_FUNCTION_36_14();
        __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
LABEL_44:
        OUTLINED_FUNCTION_159();
        sub_2747D31F8(v157, v158, &qword_280970DC0);
        v159 = OUTLINED_FUNCTION_32_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v159);
        v160 = OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_156_0(v160, 1, &unk_280970DC8);
        if (v80)
        {

          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_26_9();
          sub_27473ADB8(v190, v191, v192);
          v193 = v282;
          v194 = v302;
          OUTLINED_FUNCTION_94_2();
          OUTLINED_FUNCTION_26_9();
          sub_2747D2B90(v195, v196, v197);
          swift_endAccess();
          v198 = *((*MEMORY[0x277D85000] & *v193) + 0x88);
          OUTLINED_FUNCTION_77();
          v199 = OUTLINED_FUNCTION_61_5();
          v305 = v200;
          v200(v199);
          OUTLINED_FUNCTION_67_6();
          v201 = &unk_274A2989F >> 6;

          v202 = 0;
          if (v194)
          {
            while (1)
            {
              v203 = v202;
LABEL_65:
              OUTLINED_FUNCTION_91_3(__clz(__rbit64(v194)) | (v203 << 6));
              OUTLINED_FUNCTION_256();
              sub_2749F95E4();
            }
          }

          while (1)
          {
            v203 = v202 + 1;
            if (__OFADD__(v202, 1))
            {
              goto LABEL_79;
            }

            if (v203 >= v201)
            {
              swift_endAccess();

              if ((v266 & 0x100000000) != 0)
              {
                v304 = *((*MEMORY[0x277D85000] & *v282) + 0xC8);
                *(v282 + v304) = 1;
                sub_27471CF08(0, &qword_280969480);
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_27480D818();
                OUTLINED_FUNCTION_134();
                v204 = sub_2749FD184();
                v205 = OUTLINED_FUNCTION_24_1();
                [v205 v206];

                v207 = sub_2749FD034();
                v208 = OUTLINED_FUNCTION_24_1();
                [v208 v209];

                v210 = sub_2749FD034();
                v211 = OUTLINED_FUNCTION_24_1();
                [v211 v212];

                v213 = OUTLINED_FUNCTION_177();
                [v198 setValue:v213 forKey:*MEMORY[0x277CDA4E8]];

                v214 = sub_2749FCD64();
                v215 = OUTLINED_FUNCTION_24_1();
                [v215 v216];

                v217 = objc_opt_self();
                OUTLINED_FUNCTION_167(v217, &v314);
                OUTLINED_FUNCTION_35_13();
                v218();
                OUTLINED_FUNCTION_130_2();
                OUTLINED_FUNCTION_180();
                i = v219;
                v221 = v220 & 0xFFFFFFFFFFFFFFF8;
                OUTLINED_FUNCTION_101_2(v220 & 0xFFFFFFFFFFFFFFF8);
                v295 = v222;
                v223 = swift_allocObject();
                v224 = OUTLINED_FUNCTION_192(v223);
                v299 = v225;
                v227 = OUTLINED_FUNCTION_195(v224, v226);
                v228(v227);
                v229 = v282;
                *(v144 + v214) = v282;
                *&v214[v221] = v198;
                OUTLINED_FUNCTION_66_4();
                *(v230 - 256) = v231;
                OUTLINED_FUNCTION_60_6();
                v302 = v232;
                v309 = v233;
                OUTLINED_FUNCTION_218(&block_descriptor_153);
                OUTLINED_FUNCTION_291();
                v234 = v229;
                v235 = v229;
                v303 = v198;

                OUTLINED_FUNCTION_82_2();
                v307 = MEMORY[0x277D85DD0];
                OUTLINED_FUNCTION_71_4();
                v309 = v236;
                v237 = OUTLINED_FUNCTION_218(&block_descriptor_156);
                OUTLINED_FUNCTION_2_23();
                OUTLINED_FUNCTION_63_0();
                [v238 v239];
                _Block_release(v237);
                _Block_release(&selRef_setPlaceholder_);
                *(v234 + v304) = 1;
                v140 = v235;
                [v235 contentInset];
                [v235 contentOffset];
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v240();
                OUTLINED_FUNCTION_201();
                v241 = swift_allocObject();
                *(v241 + 16) = v280;
                v65 = v300;
                v242 = OUTLINED_FUNCTION_43_8(v241);
                v144 = v299;
                v299(v242);
                OUTLINED_FUNCTION_222(&v315);
                objc_allocWithZone(MEMORY[0x277D75D40]);

                v243 = v235;
                v244 = sub_27480FE78(sub_2749765A0, v241, 0.6, 0.9);
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v245();
                v246 = swift_allocObject();
                v247 = OUTLINED_FUNCTION_261(v246, &v309);
                v248 = OUTLINED_FUNCTION_43_8(v247);
                v144(v248);
                OUTLINED_FUNCTION_135_2();
                OUTLINED_FUNCTION_64_4();
                *(v249 - 256) = v250;
                v308 = 1107296256;
                OUTLINED_FUNCTION_78_3();
                v309 = v251;
                v252 = OUTLINED_FUNCTION_218(&block_descriptor_165_0);
                v253 = v243;

                [v244 addCompletion_];
                _Block_release(v252);
                [v244 startAnimation];
                OUTLINED_FUNCTION_116_3();

LABEL_76:
                (*(v65 + 1))(v140, v144);
                return;
              }

              OUTLINED_FUNCTION_68_4();
              while (1)
              {
                v256 = v255 + 1;
                if (__OFADD__(v255, 1))
                {
                  goto LABEL_84;
                }

                if (v256 >= v201)
                {

                  sub_27496A010(v257, v258, v259, v260, v261, v262, v263, v264, v265[0], v265[1], v266, v267, v268, v269, v270, v271, v272, *(&v272 + 1), v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
                  goto LABEL_76;
                }

                ++v255;
                if (*(v58 + 8 * v256))
                {
                  while (1)
                  {
                    do
                    {
                      OUTLINED_FUNCTION_87_3();
                      OUTLINED_FUNCTION_181();
                    }

                    while (!v198);
                    [v198 removeFromSuperview];
                  }
                }
              }
            }

            v194 = *(v58 + 8 * v203);
            ++v202;
            if (v194)
            {
              v202 = v203;
              goto LABEL_65;
            }
          }
        }

        OUTLINED_FUNCTION_213();
        v163 = (v162 + *(v161 + 48));
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_237();
        v164();
        v165 = *v163;
        OUTLINED_FUNCTION_263(v163[1]);
        v166 = *(v163 + 16);
        v167 = *v58;
        v310 = *v58;
        v168 = OUTLINED_FUNCTION_290();
        v58 = 0;
        v169 = *(v168 + 16);
        while (1)
        {
          if (v169 == v58)
          {
            v170 = 0;
            goto LABEL_51;
          }

          if (v167 == *(v168 + v58 + 32))
          {
            break;
          }

          ++v58;
        }

        v170 = v58;
LABEL_51:

        sub_2749F95D4();
        if (v307)
        {
          v294 = v170;
          v65 = v165;
          v171 = v166;
          sub_27484F5CC();
          v173 = v172;
          v175 = v174;

          if (v169 != v58 && (v175 & 1) == 0)
          {
            MEMORY[0x277C5AFB0](v173, v294);
            v176 = v291;
            v58 = v273;
            v177 = v273 + *(v291 + 48);
            OUTLINED_FUNCTION_17_24();
            OUTLINED_FUNCTION_237();
            v178();
            v179 = v303;
            *v177 = v65;
            *(v177 + 8) = v179;
            *(v177 + 16) = v171;
            OUTLINED_FUNCTION_143();
            __swift_storeEnumTagSinglePayload(v180, v181, v182, v176);
            v183 = v282;
            OUTLINED_FUNCTION_266(v312);
            OUTLINED_FUNCTION_94_2();
            sub_2747729AC(v65, v179, v171);
            sub_2749628E8();
            swift_endAccess();
            sub_274772984(v65, v179, v171);
            OUTLINED_FUNCTION_124_2();
            OUTLINED_FUNCTION_163();
            OUTLINED_FUNCTION_159();
            v183();
            (v183)(v296, v58);
            goto LABEL_57;
          }
        }

        else
        {
          v65 = v165;
          v171 = v166;
        }

        sub_274772984(v65, v303, v171);
        OUTLINED_FUNCTION_8_2();
        v184(v296, v306);
LABEL_57:
        v137 = v301;
      }
    }

    v81 = *(&v55->isa + SLODWORD(v60[6].isa));
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_237();
    v82();
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_63_3();
    sub_27473ADB8(v83, v84, &qword_280967DB0);
    OUTLINED_FUNCTION_117_0(&v316);
    sub_2749F9524();
    OUTLINED_FUNCTION_59_7();
    OUTLINED_FUNCTION_38_14();
    v85();
    isa = v60[2].isa;

    v55 = v62;
    v87 = sub_2749F9274();
    if (v87 < 0 || v87 >= isa)
    {

      OUTLINED_FUNCTION_8_2();
LABEL_24:
      v109(v62, v306);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_161();
    v89 = v284;
    sub_27473ADB8(v4 + v88, v284, &qword_280967DB0);
    v90 = sub_2749F9524();
    OUTLINED_FUNCTION_38_14();
    v91();
    if (sub_2749F9274() < 0)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_232();
    if (v93)
    {
      goto LABEL_81;
    }

    v288 = v81;
    v39 = v283;
    v94 = *(v90 + v92 + 32);

    OUTLINED_FUNCTION_161();
    sub_27473ADB8(v4 + v95, v89, &qword_280967DB0);
    v96 = sub_2749F9534();
    OUTLINED_FUNCTION_38_14();
    v97();
    if (sub_2749F9274() < 0)
    {
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_232();
    if (v93)
    {
      goto LABEL_83;
    }

    v99 = *(v96 + 8 * v98 + 32);

    v60 = *(v99 + 16);

    OUTLINED_FUNCTION_201();
    v100 = sub_2749F9264();
    if (v100 < 0 || v100 >= v60)
    {
      sub_2749FA3D4();
      OUTLINED_FUNCTION_8_2();
      v110 = v278;
      v62 = v297;
      OUTLINED_FUNCTION_237();
      v111();
      v55 = sub_2749FA4D4();
      v60 = sub_2749FD2D4();
      if (os_log_type_enabled(v55, v60))
      {
        v112 = OUTLINED_FUNCTION_30_9();
        v113 = OUTLINED_FUNCTION_178();
        *v112 = OUTLINED_FUNCTION_215(v113, &v304).n128_u32[0];
        OUTLINED_FUNCTION_2_47();
        sub_274720F90(&qword_280968FC8, v114);
        v274 = v55;
        v115 = sub_2749FDC74();
        v116 = v110;
        v118 = v117;
        v119 = *v299;
        (*v299)(v116, v306);
        v55 = sub_2747AF460(v115, v118, &v307);

        *(v112 + 4) = v55;
        v120 = v60;
        v60 = v274;
        _os_log_impl(&dword_274719000, v274, v120, "On screen cell at invalid index path: %s", v112, 0xCu);
        v121 = OUTLINED_FUNCTION_47_9(&v304);
        __swift_destroy_boxed_opaque_existential_0(v121);
        OUTLINED_FUNCTION_31();
        v4 = v282;
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_185();

        OUTLINED_FUNCTION_8_2();
        v123(v39, v279);
        v119(v62, v306);
      }

      else
      {
        OUTLINED_FUNCTION_185();

        OUTLINED_FUNCTION_124_2();
        v126 = OUTLINED_FUNCTION_229();
        (v60)(v126);
        OUTLINED_FUNCTION_8_2();
        v127(v39, v279);
        (v60)(v62, v110);
      }

      OUTLINED_FUNCTION_254();
      goto LABEL_35;
    }

    v101 = v94;
    v311 = v94;
    OUTLINED_FUNCTION_226();
    sub_2749F95D4();
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_161();
    sub_27473ADB8(v4 + v102, v89, &qword_280967DB0);
    OUTLINED_FUNCTION_226();
    sub_2749F95D4();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_38_14();
    v103();
    v55 = v307;
    if (v60)
    {
      v104 = v288;
      if (!v307)
      {

        OUTLINED_FUNCTION_254();
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_32_1();
      sub_27478547C();
      v106 = v105;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_254();
      if ((v106 & 1) == 0)
      {
        goto LABEL_32;
      }

      v55 = OUTLINED_FUNCTION_290();
      v60 = sub_2748557C8(v101, v55);
      v108 = v107;

      if (v108)
      {
        goto LABEL_32;
      }

      v62 = v297;
      v129 = sub_2749F9264();
      v130 = v292;
      MEMORY[0x277C5AFB0](v129, v60);
      v60 = v104;
      OUTLINED_FUNCTION_47_9(&v296);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_223();
      v55 = &v307;
      v131 = OUTLINED_FUNCTION_24_0();
      sub_2748F9C64(v131, v132);

      OUTLINED_FUNCTION_124_2();
      v133 = OUTLINED_FUNCTION_229();
      (v60)(v133);
      (v60)(v62, v130);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_257(v134);
      OUTLINED_FUNCTION_158();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_254();
    v104 = v288;
LABEL_32:
    if (sub_2747B2784(v101, v281))
    {
      [v104 removeFromSuperview];

      OUTLINED_FUNCTION_8_2();
      v62 = v297;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_8_2();
    v62 = v297;
    v128(v297, v306);

LABEL_35:
    OUTLINED_FUNCTION_251();
    OUTLINED_FUNCTION_158();
  }

  while (v58);
LABEL_4:
  while (1)
  {
    v68 = (v65 + 1);
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v68 >= v60)
    {
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      OUTLINED_FUNCTION_86_2(v124);
      v58 = 0;
      goto LABEL_9;
    }

    v58 = *(v67 + 8 * v68);
    ++v65;
    if (v58)
    {
      v65 = v68;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_2749648E0(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v287) = a2;
  v320 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
  v5 = OUTLINED_FUNCTION_0_0(v4, &v322);
  v290 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_1(v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v286[0] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA8);
  OUTLINED_FUNCTION_34(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_70(v286 - v13);
  v14 = type metadata accessor for WFAddToHomeScreenItem();
  v15 = OUTLINED_FUNCTION_34(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_1(v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060);
  v19 = OUTLINED_FUNCTION_0_0(v18, v334);
  v302 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DB0);
  v24 = OUTLINED_FUNCTION_34(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v26);
  v27 = sub_2749FA4E4();
  v28 = OUTLINED_FUNCTION_0_0(v27, &v328);
  v318 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v32 = (v31 - v30);
  v33 = sub_2749F9284();
  v34 = OUTLINED_FUNCTION_0_0(v33, &v337);
  v36 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v286 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v43 = OUTLINED_FUNCTION_34(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0);
  v50 = OUTLINED_FUNCTION_34(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_54_11();
  v52 = MEMORY[0x277D85000];
  v53 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  OUTLINED_FUNCTION_77();
  v323 = v53;
  sub_27473ADB8(v2 + v53, v2, &unk_280968DC0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
  sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v56 = *(v55 + 8);
  v315 = v2;
  v322 = v56;
  v321 = (v55 + 8);
  (v56)(v2, v54);
  v57 = sub_27475FC74();
  v329 = v54;
  OUTLINED_FUNCTION_201();
  sub_2749F9524();
  v299 = sub_27475FC74();
  v298 = sub_274962FB4(v299, v57);
  v58 = *((*v52 & *v2) + 0x70);
  swift_beginAccess();
  v328 = v3;
  v288 = v58;
  v59 = *(v3 + v58);
  v60 = v46;
  v61 = v309;
  v62 = (v59 + 64);
  OUTLINED_FUNCTION_19_22();
  v65 = v64 & v63;
  v67 = ((v66 + 63) >> 6);
  v316 = v36 + 16;
  v327 = (v36 + 32);
  v296 = *MEMORY[0x277D7A490];
  v303 = v36;
  v68 = (v36 + 8);
  v69 = v40;
  v319 = v68;
  OUTLINED_FUNCTION_53();
  v295 = v70;
  v304 = v71;

  v72 = 0;
  OUTLINED_FUNCTION_257(MEMORY[0x277D84F98]);
  *&v73 = 136315138;
  v293 = v73;
  v74 = v324;
  v307 = v32;
  v326 = v69;
  v318 = v60;
  v311 = v62;
  v310 = v67;
  while (v65)
  {
    v75 = v74;
LABEL_8:
    OUTLINED_FUNCTION_187();
    v62 = v304;
    OUTLINED_FUNCTION_243();
    v77(v313);
    OUTLINED_FUNCTION_245();
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420) + 48);
    v79 = v318;
    v80 = OUTLINED_FUNCTION_3_5();
    v74 = v75;
    v81(v80);
    *(v79 + v78) = v62;
    OUTLINED_FUNCTION_36_14();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    v86 = v62;
    v32 = v307;
    v61 = v309;
    v69 = v326;
LABEL_9:
    OUTLINED_FUNCTION_63_3();
    sub_2747D31F8(v87, v88, &unk_280968DD0);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    OUTLINED_FUNCTION_48_7(v89);
    if (v90)
    {

      OUTLINED_FUNCTION_231();

      v153 = v328;
      *(v328 + v288) = v289;

      v154 = *((*MEMORY[0x277D85000] & *v153) + 0xB8);
      OUTLINED_FUNCTION_77();
      v312 = v154;
      v155 = (*(v153 + v154) + 64);
      OUTLINED_FUNCTION_19_22();
      v158 = (v157 & v156);
      v160 = (v159 + 63) >> 6;
      v322 = v161;

      v162 = 0;
      v163 = &unk_280970DB8;
      v321 = v160;
      v326 = v155;
      while (1)
      {
        v164 = v306;
        if (!v158)
        {
          break;
        }

LABEL_40:
        OUTLINED_FUNCTION_205();
        v167 = *(v322[6] + v166);
        OUTLINED_FUNCTION_159();
        sub_27473ADB8(v168, v169, &qword_28096F060);
        v170 = OUTLINED_FUNCTION_198();
        v171 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v170) + 48);
        *v164 = v167;
        sub_2747D31F8(v69, &v164[v171], &qword_28096F060);
        OUTLINED_FUNCTION_36_14();
        __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
        v160 = v321;
LABEL_41:
        v176 = v164;
        v177 = v305;
        sub_2747D31F8(v176, v305, &qword_280970DB0);
        v178 = OUTLINED_FUNCTION_198();
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(v178);
        OUTLINED_FUNCTION_156_0(v177, 1, v179);
        if (v90)
        {

          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_26_9();
          sub_27473ADB8(v208, v209, v210);
          v211 = v328;
          v212 = v323;
          OUTLINED_FUNCTION_94_2();
          OUTLINED_FUNCTION_26_9();
          sub_2747D2B90(v213, v214, v215);
          swift_endAccess();
          v216 = *((*MEMORY[0x277D85000] & *v211) + 0x88);
          OUTLINED_FUNCTION_77();
          v217 = OUTLINED_FUNCTION_61_5();
          v327 = v218;
          v218(v217);
          OUTLINED_FUNCTION_67_6();
          v219 = "Item" >> 6;

          v220 = 0;
          if (v212)
          {
            while (1)
            {
              v221 = v220;
LABEL_61:
              OUTLINED_FUNCTION_91_3(__clz(__rbit64(v212)) | (v221 << 6));
              sub_2749F95E4();
            }
          }

          while (1)
          {
            v221 = v220 + 1;
            if (__OFADD__(v220, 1))
            {
              goto LABEL_75;
            }

            if (v221 >= v219)
            {
              swift_endAccess();

              if ((v287 & 0x100000000) != 0)
              {
                OUTLINED_FUNCTION_263(*((*MEMORY[0x277D85000] & *v328) + 0xC8));
                *(v223 + v222) = 1;
                sub_27471CF08(0, &qword_280969480);
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_27480D818();
                OUTLINED_FUNCTION_134();
                v224 = sub_2749FD184();
                v225 = OUTLINED_FUNCTION_24_1();
                [v225 v226];

                v227 = sub_2749FD034();
                v228 = OUTLINED_FUNCTION_24_1();
                [v228 v229];

                v230 = sub_2749FD034();
                v231 = OUTLINED_FUNCTION_24_1();
                [v231 v232];

                v233 = OUTLINED_FUNCTION_177();
                [v216 setValue:v233 forKey:*MEMORY[0x277CDA4E8]];

                v234 = sub_2749FCD64();
                v235 = OUTLINED_FUNCTION_24_1();
                [v235 v236];

                v237 = objc_opt_self();
                OUTLINED_FUNCTION_167(v237, v335);
                OUTLINED_FUNCTION_35_13();
                v238();
                OUTLINED_FUNCTION_130_2();
                OUTLINED_FUNCTION_180();
                v320 = v239;
                v241 = v240 & 0xFFFFFFFFFFFFFFF8;
                v319 = (v240 & 0xFFFFFFFFFFFFFFF8);
                v317 = v242;
                v243 = swift_allocObject();
                v244 = OUTLINED_FUNCTION_192(v243);
                v321 = v245;
                v247 = OUTLINED_FUNCTION_195(v244, v246);
                v248(v247);
                v249 = v328;
                *(v155 + v234) = v328;
                *&v234[v241] = v216;
                OUTLINED_FUNCTION_66_4();
                *(v250 - 256) = v251;
                OUTLINED_FUNCTION_60_6();
                v324 = v252;
                v331 = v253;
                OUTLINED_FUNCTION_218(&block_descriptor_99);
                OUTLINED_FUNCTION_291();
                v254 = v249;
                v255 = v249;
                v325 = v216;

                OUTLINED_FUNCTION_82_2();
                v330[0] = MEMORY[0x277D85DD0];
                OUTLINED_FUNCTION_71_4();
                v331 = v256;
                v257 = OUTLINED_FUNCTION_218(&block_descriptor_102);
                OUTLINED_FUNCTION_2_23();
                OUTLINED_FUNCTION_63_0();
                [v258 v259];
                _Block_release(v257);
                _Block_release(&selRef_setPlaceholder_);
                OUTLINED_FUNCTION_116_3();
                v254[v260] = 1;
                v158 = v255;
                [v255 contentInset];
                [v255 contentOffset];
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v261();
                v262 = swift_allocObject();
                *(v262 + 16) = v298;
                v163 = v322;
                v263 = OUTLINED_FUNCTION_43_8(v262);
                v155 = v321;
                v321(v263);
                OUTLINED_FUNCTION_222(&v336);
                objc_allocWithZone(MEMORY[0x277D75D40]);

                v264 = v255;
                v265 = sub_27480FE78(sub_2749763F8, v262, 0.6, 0.9);
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v266();
                v267 = swift_allocObject();
                v268 = OUTLINED_FUNCTION_261(v267, &v329);
                v269 = OUTLINED_FUNCTION_43_8(v268);
                v155(v269);
                OUTLINED_FUNCTION_135_2();
                OUTLINED_FUNCTION_64_4();
                *(v270 - 256) = v271;
                v330[1] = 1107296256;
                OUTLINED_FUNCTION_78_3();
                v331 = v272;
                v273 = OUTLINED_FUNCTION_218(&block_descriptor_111);
                v274 = v264;

                [v265 addCompletion_];
                _Block_release(v273);
                [v265 startAnimation];
                OUTLINED_FUNCTION_161();

LABEL_72:
                v163[1](v158, v155);
                return;
              }

              OUTLINED_FUNCTION_68_4();
              while (1)
              {
                v277 = v276 + 1;
                if (__OFADD__(v276, 1))
                {
                  goto LABEL_80;
                }

                if (v277 >= v219)
                {

                  sub_27496C708(v278, v279, v280, v281, v282, v283, v284, v285, v286[0], v286[1], v287, v288, v289, v290, v291, v292, v293, *(&v293 + 1), v294, v295, v296, v297, v298, v299, v300, v301, v302, v303);
                  goto LABEL_72;
                }

                ++v276;
                if (*(v69 + 8 * v277))
                {
                  while (1)
                  {
                    do
                    {
                      OUTLINED_FUNCTION_87_3();
                      OUTLINED_FUNCTION_181();
                    }

                    while (!v216);
                    [v216 removeFromSuperview];
                  }
                }
              }
            }

            v212 = *(v69 + 8 * v221);
            ++v220;
            if (v212)
            {
              v220 = v221;
              goto LABEL_61;
            }
          }
        }

        v180 = &v177[*(v179 + 48)];
        OUTLINED_FUNCTION_213();
        v182 = *(v181 + 48);
        OUTLINED_FUNCTION_8_2();
        v183 = v317;
        v184 = OUTLINED_FUNCTION_45();
        v185(v184);
        sub_27477BDA4(&v180[v182], v183 + v182);
        v186 = *v177;
        v332 = *v177;
        sub_27477BDA4(v183 + v182, v325);
        OUTLINED_FUNCTION_201();
        v187 = sub_2749F9524();
        v188 = 0;
        v69 = *(v187 + 16);
        while (1)
        {
          if (v69 == v188)
          {
            v189 = 0;
            goto LABEL_48;
          }

          if (*(v187 + v188 + 32) == v186)
          {
            break;
          }

          ++v188;
        }

        v189 = v188;
LABEL_48:

        sub_2749F95D4();
        if (!v330[0] || (v190 = sub_27484FA08(v325, v330[0]), v192 = v191, , v69 == v188) || (v192 & 1) != 0)
        {
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          OUTLINED_FUNCTION_8_2();
          v205(v317, v324);
        }

        else
        {
          v193 = v313;
          MEMORY[0x277C5AFB0](v190, v189);
          v194 = v314;
          v195 = *(v314 + 48);
          OUTLINED_FUNCTION_8_2();
          v196 = v300;
          v197 = OUTLINED_FUNCTION_45();
          v198 = v324;
          v199(v197);
          OUTLINED_FUNCTION_6_39();
          v318 = v200;
          sub_2749768E8(v325, v196 + v195);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v201, v202, v203, v194);
          OUTLINED_FUNCTION_94_2();
          sub_274962AD4();
          swift_endAccess();
          v69 = v319;
          v204 = *v319;
          (*v319)(v193, v198);
          sub_274976940();
          v204(v317, v198);
        }

        v155 = v326;
        v163 = &unk_280970DB8;
      }

      while (1)
      {
        v165 = v162 + 1;
        if (__OFADD__(v162, 1))
        {
          goto LABEL_74;
        }

        if (v165 >= v160)
        {
          v206 = OUTLINED_FUNCTION_198();
          v207 = __swift_instantiateConcreteTypeFromMangledNameV2(v206);
          OUTLINED_FUNCTION_86_2(v207);
          v158 = 0;
          goto LABEL_41;
        }

        v158 = *(v155 + v165);
        ++v162;
        if (v158)
        {
          v162 = v165;
          goto LABEL_40;
        }
      }
    }

    v91 = *(v62 + *"ion");
    v92 = OUTLINED_FUNCTION_17_24();
    v93(v92, v62, v74);
    OUTLINED_FUNCTION_21_20();
    OUTLINED_FUNCTION_63_3();
    sub_27473ADB8(v94, v95, &unk_280968DC0);
    v96 = v69;
    OUTLINED_FUNCTION_123_2(&v339);
    v67 = sub_2749F9524();
    v97 = OUTLINED_FUNCTION_32_16();
    v98(v97);
    v69 = v67[2];

    v62 = v96;
    v99 = sub_2749F9274();
    if (v99 < 0 || v99 >= v69)
    {

      OUTLINED_FUNCTION_8_2();
      v127 = OUTLINED_FUNCTION_151_0();
      v128(v127, v74);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_89_2();
    }

    else
    {
      OUTLINED_FUNCTION_21_20();
      OUTLINED_FUNCTION_63_3();
      sub_27473ADB8(v100, v101, &unk_280968DC0);
      OUTLINED_FUNCTION_123_2(&v339);
      v102 = sub_2749F9524();
      v103 = OUTLINED_FUNCTION_32_16();
      v104(v103);
      if (sub_2749F9274() < 0)
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_232();
      if (v106)
      {
        goto LABEL_77;
      }

      v308 = v91;
      v107 = v61;
      v108 = *(v102 + v105 + 32);

      OUTLINED_FUNCTION_21_20();
      OUTLINED_FUNCTION_63_3();
      sub_27473ADB8(v109, v110, &unk_280968DC0);
      OUTLINED_FUNCTION_123_2(&v339);
      sub_2749F9534();
      v111 = OUTLINED_FUNCTION_59_7();
      v112 = v326;
      (v322)(v111, v69);
      if (sub_2749F9274() < 0)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_232();
      if (v106)
      {
        goto LABEL_79;
      }

      v114 = *(v102 + 8 * v113 + 32);

      v67 = *(v114 + 16);

      v115 = sub_2749F9264();
      if (v115 < 0 || v115 >= v67)
      {
        sub_2749FA3D4();
        OUTLINED_FUNCTION_8_2();
        v129 = v324;
        v130(v107, v112, v324);
        v62 = v32;
        v131 = v32;
        v132 = sub_2749FA4D4();
        v69 = sub_2749FD2D4();
        if (!os_log_type_enabled(v132, v69))
        {
          OUTLINED_FUNCTION_122_1();

          OUTLINED_FUNCTION_124_2();
          (v67)(v107, v129);
          OUTLINED_FUNCTION_8_2();
          v145(v131, v297);
          (v67)(v112, v129);
          v32 = v131;
          v74 = v129;
          v69 = v112;
          OUTLINED_FUNCTION_206();
          goto LABEL_33;
        }

        v67 = OUTLINED_FUNCTION_30_9();
        v133 = OUTLINED_FUNCTION_178();
        *v67 = OUTLINED_FUNCTION_215(v133, &v325).n128_u32[0];
        OUTLINED_FUNCTION_2_47();
        sub_274720F90(&qword_280968FC8, v134);
        v135 = sub_2749FDC74();
        v137 = v136;
        v138 = *v319;
        (*v319)(v107, v129);
        v62 = sub_2747AF460(v135, v137, v330);

        *(v67 + 4) = v62;
        _os_log_impl(&dword_274719000, v132, v69, "On screen cell at invalid index path: %s", v67, 0xCu);
        v139 = OUTLINED_FUNCTION_47_9(&v325);
        __swift_destroy_boxed_opaque_existential_0(v139);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_122_1();

        OUTLINED_FUNCTION_8_2();
        v32 = v307;
        v141(v307, v297);
        v142 = OUTLINED_FUNCTION_123_2(&v338);
        v138(v142, v129);
        v74 = v129;
        OUTLINED_FUNCTION_206();
        OUTLINED_FUNCTION_89_2();
        v61 = v309;
      }

      else
      {
        v333[16] = v108;
        OUTLINED_FUNCTION_226();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_21_20();
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v116, v117, &unk_280968DC0);
        OUTLINED_FUNCTION_226();
        sub_2749F95D4();
        v118 = OUTLINED_FUNCTION_32_16();
        v119(v118);
        v62 = v330[0];
        if (v67)
        {
          OUTLINED_FUNCTION_206();
          if (v62)
          {

            OUTLINED_FUNCTION_32_1();
            sub_2747857F8();
            v69 = v120;
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if (v69)
            {
              OUTLINED_FUNCTION_201();
              v62 = sub_2749F9524();
              v67 = sub_27484F9C4(v108, v62);
              v69 = v121;

              if ((v69 & 1) == 0)
              {
                v122 = v326;
                sub_2749F9264();
                OUTLINED_FUNCTION_203();
                MEMORY[0x277C5AFB0]();
                OUTLINED_FUNCTION_122_1();
                v67 = v123;
                OUTLINED_FUNCTION_47_9(&v319);
                swift_isUniquelyReferenced_nonNull_native();
                OUTLINED_FUNCTION_223();
                v62 = v330;
                sub_2748F9C64(v67, v69);

                OUTLINED_FUNCTION_124_2();
                v124 = v69;
                v69 = v122;
                v74 = v324;
                (v67)(v124, v324);
                v125 = OUTLINED_FUNCTION_144();
                (v67)(v125);
                OUTLINED_FUNCTION_224();
                OUTLINED_FUNCTION_257(v126);
                goto LABEL_33;
              }
            }
          }

          else
          {
          }
        }

        else
        {

          OUTLINED_FUNCTION_206();
        }

        if (sub_2747A707C(v108, v299))
        {
          v146 = OUTLINED_FUNCTION_115_2(v333);
          [v146 v147];

          OUTLINED_FUNCTION_8_2();
          v148 = OUTLINED_FUNCTION_151_0();
          v74 = v324;
          v149(v148, v324);
        }

        else
        {
          OUTLINED_FUNCTION_8_2();
          v150 = OUTLINED_FUNCTION_151_0();
          v74 = v324;
          v151(v150, v324);
          OUTLINED_FUNCTION_122_1();
        }

LABEL_33:
        OUTLINED_FUNCTION_89_2();
        v61 = v107;
      }
    }
  }

  while (1)
  {
    v76 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v76 >= v67)
    {
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      OUTLINED_FUNCTION_86_2(v143);
      v65 = 0;
      goto LABEL_9;
    }

    v65 = v62[v76];
    ++v72;
    if (v65)
    {
      v75 = v74;
      v72 = v76;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_274966138(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v228) = a2;
  v265 = a1;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
  v231 = *(v233 - 8);
  v4 = MEMORY[0x28223BE20](v233);
  v227 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v5;
  MEMORY[0x28223BE20](v4);
  v232 = &v226 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D70);
  MEMORY[0x28223BE20](v7 - 8);
  v236 = &v226 - v8;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFF0);
  v248 = *(v256 - 8);
  v9 = MEMORY[0x28223BE20](v256);
  v261 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v247 = &v226 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D78);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v252 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v251 = &v226 - v15;
  v241 = sub_2749FA4E4();
  v264 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v244 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_2749F9284();
  v17 = *(v270 - 1);
  v18 = MEMORY[0x28223BE20](v270);
  v240 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v226 - v21;
  MEMORY[0x28223BE20](v20);
  v257 = &v226 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v260 = &v226 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v254 = &v226 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v226 - v32;
  v34 = MEMORY[0x277D85000];
  v35 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  swift_beginAccess();
  v267 = v35;
  sub_27473ADB8(v35 + v2, v33, &qword_280967E30);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
  v37 = sub_2749F9524();
  v38 = *(v36 - 8);
  v39 = *(v38 + 8);
  v246 = v33;
  v268 = v39;
  v266 = v38 + 8;
  v39(v33, v36);
  v40 = sub_27475FD04(v37);
  v271 = v36;
  v41 = v27;
  v42 = sub_2749F9524();
  v243 = sub_27475FD04(v42);
  sub_274963008(v243, v40);
  v242 = v43;
  v44 = *((*v34 & *v2) + 0x70);
  swift_beginAccess();
  v229 = v44;
  v45 = *(v3 + v44);
  v46 = v3;
  v47 = *(v45 + 64);
  v255 = v45 + 64;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v47;
  v51 = (v48 + 63) >> 6;
  v258 = (v17 + 16);
  v269 = (v17 + 32);
  v239 = *MEMORY[0x277D7A490];
  v249 = v17;
  v262 = (v17 + 8);
  v238 = v264 + 1;
  v52 = v270;
  v53 = v260;
  v250 = v45;

  v54 = 0;
  v230 = MEMORY[0x277D84F98];
  *&v55 = 136315138;
  v234 = v55;
  v56 = v46;
  v259 = v46;
  v263 = v22;
  v253 = v51;
  v245 = v41;
LABEL_4:
  v57 = v255;
  if (!v50)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v58 = v54;
LABEL_10:
    v59 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v60 = v59 | (v58 << 6);
    v61 = v250;
    v62 = v249;
    v63 = v257;
    (*(v249 + 16))(v257, *(v250 + 48) + *(v249 + 72) * v60, v52);
    v64 = *(*(v61 + 56) + 8 * v60);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    v66 = *(v65 + 48);
    (*(v62 + 32))(v41, v63, v52);
    *(v41 + v66) = v64;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v65);
    v67 = v64;
    v22 = v263;
    v53 = v260;
    v56 = v259;
LABEL_11:
    sub_2747D31F8(v41, v53, &unk_280968DD0);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    if (__swift_getEnumTagSinglePayload(v53, 1, v68) == 1)
    {
      break;
    }

    v264 = *(v53 + *(v68 + 48));
    v52 = v270;
    (*v269)(v22, v53, v270);
    v69 = v254;
    sub_27473ADB8(v267 + v56, v254, &qword_280967E30);
    v70 = v271;
    v71 = sub_2749F9524();
    v268(v69, v70);
    v72 = *(v71 + 16);

    v73 = sub_2749F9274();
    if (v73 < 0 || v73 >= v72)
    {

      (*v262)(v22, v52);
    }

    else
    {
      v74 = v246;
      sub_27473ADB8(v267 + v56, v246, &qword_280967E30);
      v75 = v271;
      v76 = sub_2749F9524();
      v268(v74, v75);
      v77 = sub_2749F9274();
      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v77 >= *(v76 + 16))
      {
        goto LABEL_93;
      }

      v78 = *(v76 + v77 + 32);

      v79 = v56;
      sub_27473ADB8(v267 + v56, v74, &qword_280967E30);
      v80 = v271;
      v81 = sub_2749F9534();
      v268(v74, v80);
      v82 = sub_2749F9274();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_95;
      }

      v83 = *(v81 + 8 * v82 + 32);

      v84 = *(v83 + 16);

      v85 = sub_2749F9264();
      if (v85 < 0 || v85 >= v84)
      {
        v93 = v244;
        sub_2749FA3D4();
        v94 = v240;
        v95 = v263;
        (*v258)(v240, v263, v52);
        v96 = sub_2749FA4D4();
        v97 = sub_2749FD2D4();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          aBlock = v99;
          *v98 = v234;
          sub_274720F90(&qword_280968FC8, MEMORY[0x277CC9AF8]);
          v237 = v96;
          v100 = sub_2749FDC74();
          v102 = v101;
          v103 = *v262;
          (*v262)(v94, v270);
          v104 = sub_2747AF460(v100, v102, &aBlock);
          v52 = v270;

          *(v98 + 4) = v104;
          v105 = v97;
          v106 = v237;
          _os_log_impl(&dword_274719000, v237, v105, "On screen cell at invalid index path: %s", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v99);
          MEMORY[0x277C61040](v99, -1, -1);
          v56 = v259;
          MEMORY[0x277C61040](v98, -1, -1);

          (*v238)(v244, v241);
          v22 = v263;
          v103(v263, v52);
        }

        else
        {
          v56 = v79;

          v108 = *v262;
          (*v262)(v94, v52);
          (*v238)(v93, v241);
          v108(v95, v52);
          v22 = v95;
        }

        v41 = v245;
      }

      else
      {
        v281 = v78;
        v86 = v271;
        sub_2749F95D4();
        v87 = aBlock;
        v56 = v79;
        sub_27473ADB8(v267 + v79, v74, &qword_280967E30);
        sub_2749F95D4();
        v268(v74, v86);
        if (v87)
        {
          v22 = v263;
          v41 = v245;
          if (aBlock)
          {
            v88 = sub_274785998(aBlock, v87);

            if (v88)
            {
              v89 = sub_2749F9524();
              v90 = sub_2748557C8(v78, v89);
              v92 = v91;

              if ((v92 & 1) == 0)
              {
                v110 = sub_2749F9264();
                v111 = v257;
                MEMORY[0x277C5AFB0](v110, v90);
                v112 = v264;
                v113 = v230;
                swift_isUniquelyReferenced_nonNull_native();
                aBlock = v113;
                sub_2748F9C64(v112, v111);

                v114 = *v262;
                v52 = v270;
                (*v262)(v111, v270);
                v114(v22, v52);
                v230 = aBlock;
                v53 = v260;
                v51 = v253;
                goto LABEL_4;
              }
            }
          }

          else
          {
          }
        }

        else
        {

          v22 = v263;
          v41 = v245;
        }

        if (sub_2747B2784(v78, v243))
        {
          v109 = v264;
          [v264 removeFromSuperview];

          v52 = v270;
          (*v262)(v22, v270);
        }

        else
        {
          v52 = v270;
          (*v262)(v22, v270);
        }
      }

      v53 = v260;
    }

    v57 = v255;
    v51 = v253;
    if (!v50)
    {
LABEL_6:
      while (1)
      {
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v58 >= v51)
        {
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          __swift_storeEnumTagSinglePayload(v41, 1, 1, v107);
          v50 = 0;
          goto LABEL_11;
        }

        v50 = *(v57 + 8 * v58);
        ++v54;
        if (v50)
        {
          v54 = v58;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }
  }

  *(v56 + v229) = v230;

  v115 = *((*MEMORY[0x277D85000] & *v56) + 0xB8);
  swift_beginAccess();
  v253 = v115;
  v116 = *(v56 + v115);
  v119 = *(v116 + 64);
  v118 = v116 + 64;
  v117 = v119;
  v120 = 1 << *(*(v56 + v115) + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  v122 = v121 & v117;
  v123 = ((v120 + 63) >> 6);
  v263 = *(v56 + v115);

  v124 = 0;
  v125 = v252;
  v266 = v118;
  v264 = v123;
  if (!v122)
  {
LABEL_43:
    while (1)
    {
      v127 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_90;
      }

      if (v127 >= v123)
      {
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80);
        __swift_storeEnumTagSinglePayload(v125, 1, 1, v160);
        v122 = 0;
        goto LABEL_48;
      }

      v122 = *(v118 + 8 * v127);
      ++v124;
      if (v122)
      {
        v126 = v125;
        v124 = v127;
        goto LABEL_47;
      }
    }
  }

  while (2)
  {
    v126 = v125;
    v127 = v124;
LABEL_47:
    v128 = __clz(__rbit64(v122));
    v122 &= v122 - 1;
    v129 = v128 | (v127 << 6);
    v130 = *(v263 + 7);
    LODWORD(v268) = *(*(v263 + 6) + v129);
    v131 = v247;
    sub_27473ADB8(v130 + *(v248 + 72) * v129, v247, &qword_28096EFF0);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80);
    v133 = *(v132 + 48);
    *v126 = v268;
    v125 = v126;
    sub_2747D31F8(v131, &v126[v133], &qword_28096EFF0);
    __swift_storeEnumTagSinglePayload(v126, 0, 1, v132);
LABEL_48:
    v134 = v251;
    sub_2747D31F8(v125, v251, &qword_280970D78);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80);
    if (__swift_getEnumTagSinglePayload(v134, 1, v135) != 1)
    {
      v136 = &v134[*(v135 + 48) + *(v256 + 48)];
      (*v269)(v261);
      v137 = *v136;
      v268 = *(v136 + 1);
      v138 = v136[16];
      v139 = *v134;
      v280 = *v134;
      v140 = sub_2749F9524();
      v141 = 0;
      v142 = *(v140 + 16);
      while (1)
      {
        if (v142 == v141)
        {
          v143 = 0;
          goto LABEL_55;
        }

        if (v139 == v141[v140 + 32])
        {
          break;
        }

        ++v141;
      }

      v143 = v141;
LABEL_55:

      sub_2749F95D4();
      if (aBlock)
      {
        v260 = v143;
        v144 = v137;
        LODWORD(v137) = v138;
        sub_27484FB04();
        v146 = v145;
        v148 = v147;

        v125 = v252;
        if (v142 != v141 && (v148 & 1) == 0)
        {
          v149 = v257;
          MEMORY[0x277C5AFB0](v146, v260);
          v150 = v256;
          v151 = v236;
          v152 = v236 + *(v256 + 48);
          v153 = v149;
          v154 = v270;
          (*v258)(v236, v153, v270);
          v254 = v144;
          v155 = v268;
          *v152 = v144;
          *(v152 + 8) = v155;
          LODWORD(v255) = v137;
          *(v152 + 16) = v137;
          __swift_storeEnumTagSinglePayload(v151, 0, 1, v150);
          swift_beginAccess();
          v156 = v144;
          v157 = v268;
          v158 = v255;
          sub_274772E38(v156, v268, v255);
          sub_274962CE0();
          swift_endAccess();
          sub_274772E24(v254, v157, v158);
          v159 = *v262;
          (*v262)(v257, v154);
          v159(v261, v154);
          goto LABEL_61;
        }
      }

      else
      {
        v144 = v137;
        LOBYTE(v137) = v138;
        v125 = v252;
      }

      sub_274772E24(v144, v268, v137);
      (*v262)(v261, v270);
LABEL_61:
      v118 = v266;
      v123 = v264;
      if (!v122)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v161 = v246;
  sub_27473ADB8(v265, v246, &qword_280967E30);
  v162 = v259;
  v163 = v267;
  swift_beginAccess();
  sub_2747D2B90(v161, v163 + v162, &qword_280967E30);
  swift_endAccess();
  v164 = *((*MEMORY[0x277D85000] & *v162) + 0x88);
  swift_beginAccess();
  v165 = v231;
  v166 = *(v231 + 16);
  v167 = v232;
  v168 = v233;
  v271 = v231 + 16;
  v270 = v166;
  (v166)(v232, v162 + v164, v233);
  v169 = v242 + 56;
  v170 = 1 << *(v242 + 32);
  v171 = -1;
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  v172 = v171 & *(v242 + 56);
  swift_beginAccess();

  v173 = 0;
  while (v172)
  {
    v174 = v173;
LABEL_72:
    v175 = *(*(v242 + 48) + (__clz(__rbit64(v172)) | (v174 << 6)));
    v172 &= v172 - 1;
    v279 = v175;
    v278 = 0;
    sub_2749F95E4();
  }

  while (1)
  {
    v174 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      break;
    }

    if (v174 >= ((v170 + 63) >> 6))
    {
      swift_endAccess();
      v176 = v242;

      if ((v228 & 0x100000000) != 0)
      {
        v269 = *((*MEMORY[0x277D85000] & *v259) + 0xC8);
        v269[v259] = 1;
        sub_27471CF08(0, &qword_280969480);
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v177 = sub_27480D818();
        v178 = sub_2749FD184();
        [v177 setValue:v178 forKey:*MEMORY[0x277CDA4F0]];

        v179 = sub_2749FD034();
        [v177 setValue:v179 forKey:*MEMORY[0x277CDA4C8]];

        v180 = sub_2749FD034();
        [v177 setValue:v180 forKey:*MEMORY[0x277CDA4A0]];

        v181 = sub_2749FCD64();
        [v177 setValue:v181 forKey:*MEMORY[0x277CDA4E8]];

        v182 = sub_2749FCD64();
        [v177 setValue:v182 forKey:*MEMORY[0x277CDA4B8]];

        v261 = objc_opt_self();
        v183 = v227;
        (v270)(v227, v167, v168);
        v184 = *(v165 + 80);
        v185 = (v184 + 24) & ~v184;
        v265 = v185;
        v186 = (v226 + v185 + 7) & 0xFFFFFFFFFFFFFFF8;
        v263 = v186;
        v262 = ((v186 + 15) & 0xFFFFFFFFFFFFFFF8);
        v260 = v184;
        v187 = swift_allocObject();
        *(v187 + 16) = v176;
        v264 = *(v231 + 32);
        v266 = v231 + 32;
        (v264)(v187 + v185, v183, v233);
        v188 = v259;
        *(v187 + v186) = v259;
        *(v187 + ((v186 + 15) & 0xFFFFFFFFFFFFFFF8)) = v177;
        v276 = sub_2749761D4;
        v277 = v187;
        aBlock = MEMORY[0x277D85DD0];
        v273 = 1107296256;
        v267 = &v274;
        v274 = sub_274760264;
        v275 = &block_descriptor_26_0;
        v189 = _Block_copy(&aBlock);

        v190 = v188;
        v191 = v188;
        v268 = v177;

        v276 = CGSizeMake;
        v277 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v273 = 1107296256;
        v274 = sub_27480D7B8;
        v275 = &block_descriptor_29;
        v192 = _Block_copy(&aBlock);
        [v261 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
        _Block_release(v192);
        _Block_release(v189);
        v269[v190] = 1;
        v193 = v191;
        [v191 contentInset];
        v195 = -v194;
        [v191 contentOffset];
        v197 = v195 - v196;
        (v270)(v183, v232, v233);
        v198 = v262;
        v199 = (v262 + 15) & 0xFFFFFFFFFFFFFFF8;
        v200 = swift_allocObject();
        *(v200 + 16) = v242;
        v201 = v265;
        v202 = v264;
        (v264)(v200 + v265, v183, v233);
        v203 = v263;
        *&v263[v200] = v197;
        *&v198[v200] = v193;
        *(v200 + v199) = v195;
        objc_allocWithZone(MEMORY[0x277D75D40]);

        v204 = v193;
        v205 = sub_27480FE78(sub_2749761FC, v200, 0.6, 0.9);
        (v270)(v183, v232, v233);
        v206 = swift_allocObject();
        *(v206 + 16) = v242;
        (v202)(v206 + v201, v183, v233);
        *&v203[v206] = v204;
        v167 = v232;
        v165 = v231;
        v168 = v233;
        v276 = sub_274976224;
        v277 = v206;
        aBlock = MEMORY[0x277D85DD0];
        v273 = 1107296256;
        v274 = sub_274957D38;
        v275 = &block_descriptor_38;
        v207 = _Block_copy(&aBlock);
        v208 = v204;

        [v205 addCompletion_];
        _Block_release(v207);
        [v205 startAnimation];

LABEL_88:
        (*(v165 + 8))(v167, v168);
        return;
      }

      v209 = 0;
      v210 = 1 << *(v176 + 32);
      v211 = *(v176 + 56);
      v212 = -1;
      if (v210 < 64)
      {
        v212 = ~(-1 << v210);
      }

      v213 = v212 & v211;
      v214 = (v210 + 63) >> 6;
      if ((v212 & v211) != 0)
      {
        do
        {
          v215 = v209;
LABEL_83:
          v216 = __clz(__rbit64(v213));
          v213 &= v213 - 1;
          LOBYTE(v278) = *(*(v176 + 48) + (v216 | (v215 << 6)));
          sub_2749F95D4();
          v217 = aBlock;
          if (aBlock)
          {
            [aBlock removeFromSuperview];
          }

          v209 = v215;
          v176 = v242;
        }

        while (v213);
      }

      while (1)
      {
        v215 = v209 + 1;
        if (__OFADD__(v209, 1))
        {
          goto LABEL_96;
        }

        if (v215 >= v214)
        {

          sub_27496F510(v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          goto LABEL_88;
        }

        v213 = *(v169 + 8 * v215);
        ++v209;
        if (v213)
        {
          goto LABEL_83;
        }
      }
    }

    v172 = *(v169 + 8 * v174);
    ++v173;
    if (v172)
    {
      v173 = v174;
      goto LABEL_72;
    }
  }

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
}

uint64_t sub_274968010(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v31 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2749768B0;
  *(v22 + 24) = v21;
  aBlock[4] = sub_27491222C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_175;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v31 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2749682D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v31 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_274976448;
  *(v22 + 24) = v21;
  aBlock[4] = sub_27491222C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_121;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v31 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274968590(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v31 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_27497624C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_2747D22F0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_47;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v31 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

void sub_274968850(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749768D8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_181;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274968B78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749769EC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_127;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274968EA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749769EC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_53_0;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2749691C8(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      LOBYTE(v29.a) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v35);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496A010(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31, v32, v33, v34);
}

void sub_274969424(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      HIBYTE(v31) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v35);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496C708(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31, v32, v33, v34);
}

void sub_274969680(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      HIBYTE(v31) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v35);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496F510(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31, v32, v33, v34);
}

void sub_2749698DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274969A38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274969B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_274969CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_166();
  v7 = *(v6 + 120);
  OUTLINED_FUNCTION_77();
  v8 = *(v3 + v7);
  v9 = (v8 + 48);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      return 0;
    }

    v11 = *(v9 - 2);
    if (*(v9 - 1) == a1 && *v9 == a2)
    {
      break;
    }

    v9 += 3;
    OUTLINED_FUNCTION_34_2();
  }

  while ((sub_2749FDCC4() & 1) == 0);
  OUTLINED_FUNCTION_166();
  v15 = *(v14 + 128);

  OUTLINED_FUNCTION_77();
  v16 = *(v3 + v15);

  v17 = OUTLINED_FUNCTION_34_2();
  v19 = sub_274955B8C(v17, v18, v16);

  if (!v19)
  {
LABEL_17:
    v13 = [objc_allocWithZone(v11) initWithFrame_];

    return v13;
  }

  sub_2747A6AB0();
  if (!v20)
  {

    goto LABEL_17;
  }

  v13 = v20;
  OUTLINED_FUNCTION_10_3();
  swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  v21 = OUTLINED_FUNCTION_34_2();
  v35 = sub_274797CC0(v21, v22);
  OUTLINED_FUNCTION_168();
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478);
  if ((sub_2749FDA84() & 1) == 0)
  {
    v31 = v35;
LABEL_19:
    if (v26)
    {
      v32 = *(*(v36 + 56) + 8 * v31);

      if (v32)
      {

        *(*(v36 + 56) + 8 * v31) = v32;
      }

      else
      {

        sub_274976180(*(v36 + 48) + 16 * v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D60);
        sub_2749FDAA4();
      }

      *(v3 + v15) = v36;
      swift_endAccess();
      OUTLINED_FUNCTION_166();
      (*(v33 + 80))();
      return v13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = OUTLINED_FUNCTION_34_2();
  v29 = sub_274797CC0(v27, v28);
  if ((v26 & 1) == (v30 & 1))
  {
    v31 = v29;
    goto LABEL_19;
  }

LABEL_27:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

void sub_27496A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v31;
  v32 = v28;
  v33 = sub_2749FA4E4();
  v34 = OUTLINED_FUNCTION_0_0(v33, &v436);
  v398[2] = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v36);
  v38 = v398 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90);
  OUTLINED_FUNCTION_43();
  v398[3] = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v45);
  v46 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v423[2] = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = v398 - v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v56 = OUTLINED_FUNCTION_34(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  v60 = OUTLINED_FUNCTION_34(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v478);
  [v28 contentSize];
  [v28 setContentSize_];
  v63 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_136_2();
  v65 = v28 + *(v64 + 160);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v424 = v29;
    v431 = v53;
    v423[0] = v38;
    v66 = *(v65 + 1);
    [v28 contentOffset];
    v68 = 0.0;
    if (v67 + -70.0 < 0.0)
    {
      v69 = 0.0;
    }

    else
    {
      v69 = v67 + -70.0;
    }

    [v28 frame];
    v438 = v69;
    v71 = v70 + v69 + 70.0;
    [v28 contentSize];
    if (v72 >= v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = v72;
    }

    v437 = v73;
    v442 = [v28 effectiveUserInterfaceLayoutDirection];
    OUTLINED_FUNCTION_136_2();
    v75 = *(v74 + 152);
    OUTLINED_FUNCTION_77();
    v422 = v75;
    sub_27473ADB8(v28 + v75, v28, &qword_280967DB0);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8);
    v77 = sub_2749F9524();
    OUTLINED_FUNCTION_9_3();
    v79 = *(v78 + 8);
    v421 = v76;
    v420 = v79;
    v419 = v78 + 8;
    v79(v28, v76);
    v80 = *(v77 + 16);
    v459 = v28;
    v426 = v39;
    v453 = v46;
    v408 = v77;
    v418 = v80;
    if (v80)
    {
      OUTLINED_FUNCTION_136_2();
      v399 = *(v81 + 208);
      OUTLINED_FUNCTION_136_2();
      v84 = *((v83 & v82) + 0x90);
      v450 = *((v83 & v82) + 0x70);
      OUTLINED_FUNCTION_136_2();
      v406 = *(v85 + 200);
      OUTLINED_FUNCTION_241(v77 + 32);
      OUTLINED_FUNCTION_77();
      v407 = v84;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_39_15();
      v29 = 0;
      OUTLINED_FUNCTION_234();
      OUTLINED_FUNCTION_90_2((v66 + 10));
      OUTLINED_FUNCTION_242();
      v417 = v86;
      OUTLINED_FUNCTION_53();
      *&v449 = v88;
      v429 = v66 + 6;
      v403 = &v465;
      v400 = "ontainerView";
      v89 = 16.0;
      *&v401 = 66.0;
      v460 = v66;
      v441 = v90;
      while (1)
      {
        if (v87 >= *(v77 + 16))
        {
          goto LABEL_176;
        }

        v452 = v87;
        LODWORD(v448) = *(v416 + v87);
        v476 = v448;
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v91, v92, &qword_280967DB0);
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_225();
        v93();
        v94 = v463;
        if (v463)
        {
          v95 = v463 + 32;
          v96 = (v463 + 48);
          v434 = *(v463 + 16);
          v97 = v434 + 1;
          while (--v97)
          {
            v98 = v96 + 24;
            v99 = *v96;
            v96 += 24;
            if ((v99 & 0xFFFFFFFD) == 0)
            {
              v100 = (v98 - 32);
              v95 = (v98 - 40);
              goto LABEL_18;
            }
          }

          if (v434)
          {
            sub_2747B2794(0, 1, v463);
            v100 = (v94 + 40);
            v99 = *(v94 + 48);
LABEL_18:
            v101 = *v100;
            v102 = *v95;
            v474[0] = *v95;
            v474[1] = v101;
            v475 = v99;
            if (v448)
            {
              v103 = 12.0;
            }

            else
            {
              v103 = v89;
            }

            v411 = v102;
            v412 = v101;
            v413 = v99;
            sub_2747729AC(v102, v101, v99);
            [v32 contentSize];
            v105 = v104 - (v103 + v89 + v103 + v89);
            OUTLINED_FUNCTION_47_9(&v460);
            ObjectType = swift_getObjectType();
            OUTLINED_FUNCTION_118_3();
            v107 = *(v95 + 88);
            v108 = (v107)(v474, ObjectType, v95, v105);
            v109 = *(v95 + 80);
            v110 = v84;
            v461[0] = ObjectType;
            v456 = v109;
            v111 = (v109)(v474, ObjectType, v95);
            v112 = trunc(v105 / v108);
            v435 = v105;
            if (v112 <= 1.0)
            {
              v113 = 0.0;
            }

            else
            {
              v113 = fmod(v105, v108) / (v112 + -1.0);
            }

            v425 = v113;
            if (v452 || *(v32 + v399) == 1)
            {
              v68 = v68 + v89;
            }

            OUTLINED_FUNCTION_212();
            OUTLINED_FUNCTION_47_9(&v431);
            OUTLINED_FUNCTION_131_1();
            v415 = v114;
            v114();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_278();
            v115 = OUTLINED_FUNCTION_32_1();
            v414 = v116;
            (v116)(v115);
            v117 = v463;
            v440 = v107;
            if (!v463)
            {
              v118 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
              v117 = sub_2747E99D8(v103);
            }

            v119 = v407;
            v120 = v448;
            v121 = v117;
            v444 = v94;
            v122 = v120;
            v123 = sub_2749FCE14();
            if (qword_28159E3A8 != -1)
            {
              swift_once();
            }

            v124 = qword_28159E448;
            OUTLINED_FUNCTION_32();
            sub_2749FCD64();
            OUTLINED_FUNCTION_59_7();
            sub_2749FCD64();
            OUTLINED_FUNCTION_96();

            OUTLINED_FUNCTION_157_0();
            v127 = [v125 v126];

            v128 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v130 = v129;

            OUTLINED_FUNCTION_44();
            sub_2749FCD64();
            OUTLINED_FUNCTION_59_7();

            [v121 setAccessibilityLabel_];

            v471 = MEMORY[0x277D84F90];
            v439 = v103;
            OUTLINED_FUNCTION_33_14();
            if (v232)
            {
              [v32 contentSize];
              OUTLINED_FUNCTION_105_3();
              v439 = v131 + v132 - v103;
            }

            v133 = v103 + v103 + v111;
            v433 = v121;
            v409 = v124;
            if (v122)
            {
              sub_2749FCE14();
              OUTLINED_FUNCTION_34_1();
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_32_1();
              v134 = sub_2749FCD64();
              OUTLINED_FUNCTION_32_1();
              sub_2749FCD64();
              OUTLINED_FUNCTION_78();

              OUTLINED_FUNCTION_157_0();
              v137 = [v135 v136];

              if (!v137)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_2749FCD64();
                OUTLINED_FUNCTION_59_7();
              }

              v138 = sub_27494FA34(v122, *(v119 + v32));
              if (v138)
              {
                v139 = v138;

                v140 = v139;
              }

              else
              {
                type metadata accessor for WFDrawerSearchControlsView();
                v143 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                *&v143[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                *&v143[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                v144 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                v145 = *&v143[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                v146 = v143;
                v147 = [v145 searchTextField];
                [v147 setPlaceholder_];

                v148 = *&v143[v144];
                v32 = v459;
                v149 = v146;
                v121 = v433;
                v140 = v149;
                [v148 setDelegate_];
                OUTLINED_FUNCTION_102_3();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v472[0] = *(v119 + v32);
                sub_2748F9DEC(v140, v122, isUniquelyReferenced_nonNull_native);
                OUTLINED_FUNCTION_224();
                *(v119 + v32) = v151;
                swift_endAccess();
                v139 = 0;
              }

              v152 = v139;
              v153 = [v140 superview];

              if (v153)
              {
              }

              else
              {
                [*&v121[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
              }

              [v32 contentSize];
              OUTLINED_FUNCTION_105_3();
              v156 = v154 + v155;
              v157 = objc_opt_self();
              v158 = v140;
              [v157 begin];
              [v157 setDisableActions_];
              v159 = OUTLINED_FUNCTION_172();
              [v158 v160];
              MEMORY[0x277C5ECC0]([v157 commit]);
              OUTLINED_FUNCTION_108_3();
              v163 = *(v161 + 16);
              v162 = *(v161 + 24);
              if (v163 >= v162 >> 1)
              {
                OUTLINED_FUNCTION_8(v162);
                sub_2749FCFB4();
              }

              v133 = v133 + 54.0;
              OUTLINED_FUNCTION_45();
              sub_2749FCFF4();
              v142 = v471;

              v141 = *&v401;
            }

            else
            {
              v141 = 16.0;
              v142 = MEMORY[0x277D84F90];
            }

            v443 = v142;
            v84 = v444;
            v164 = v444[2];
            if (v164)
            {
              v121 = objc_opt_self();
              v428 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
              OUTLINED_FUNCTION_256();
              OUTLINED_FUNCTION_77();
              if (v448)
              {
                v165 = 8.0;
              }

              else
              {
                v165 = v89;
              }

              v166 = v84 + 9;
              OUTLINED_FUNCTION_249();
              v427 = v167;
              OUTLINED_FUNCTION_260(-v164);
              v168 = -1;
              v169 = v439;
              OUTLINED_FUNCTION_118_3();
              v170 = v435;
              v458 = v121;
              do
              {
                v171 = v32;
                v173 = *(v166 - 5);
                v172 = *(v166 - 4);
                v174 = *(v166 - 24);
                v472[0] = v173;
                v472[1] = v172;
                v473 = v174;
                v462[0] = v172;
                LODWORD(v451) = v174 & 0xFFFFFFFD;
                if ((v174 & 0xFFFFFFFD) != 0 && (v29 & 1) == 0)
                {
                  if (v168 == -1)
                  {
                    v186 = OUTLINED_FUNCTION_47_3();
                    sub_2747729AC(v186, v187, v174);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_282();
                    if (v168 >= *(v177 + 16))
                    {
                      goto LABEL_175;
                    }

                    v164 = *(v166 - 8);
                    v121 = *(v166 - 7);
                    v178 = *(v166 - 48);
                    v463 = v164;
                    v464 = v121;
                    LOBYTE(v465) = v178;
                    v179 = OUTLINED_FUNCTION_47_3();
                    sub_2747729AC(v179, v180, v174);
                    v181 = OUTLINED_FUNCTION_24_0();
                    sub_2747729AC(v181, v182, v178);
                    OUTLINED_FUNCTION_45_3();
                    v183();
                    OUTLINED_FUNCTION_55_6();
                    OUTLINED_FUNCTION_184();
                    sub_274772984(v184, v185, v178);
                    v141 = v141 + v165 + v108;
                  }

                  v169 = v439;
                }

                else
                {
                  v175 = OUTLINED_FUNCTION_47_3();
                  sub_2747729AC(v175, v176, v174);
                }

                [v121 begin];
                [v121 setDisableActions_];
                v461[1] = v173;
                v463 = v173;
                OUTLINED_FUNCTION_267();
                OUTLINED_FUNCTION_88_3(v472);
                v121 = v445;
                v455 = v168 + 1;
                MEMORY[0x277C5AFB0](v168 + 1, v452);
                OUTLINED_FUNCTION_256();
                v189 = *(v171 + v188);
                v29 = v461[0];
                if (*(v189 + 16))
                {

                  v190 = sub_274797E40();
                  if (v191)
                  {
                    v192 = *v449;
                    v164 = *(*(v189 + 56) + 8 * v190);
                    v192(v121, v453);
                    v171 = v192;

LABEL_72:
                    LODWORD(v454) = 0;
                    goto LABEL_74;
                  }
                }

                v108 = v68 + v141;
                v193 = OUTLINED_FUNCTION_52_7();
                v456(v193);
                OUTLINED_FUNCTION_247();
                v194 = v194 && v108 < v437;
                if (!v194)
                {
                  OUTLINED_FUNCTION_70_3();
                  v195 = OUTLINED_FUNCTION_244();
                  (v171)(v195);
                  v164 = 0;
                  goto LABEL_72;
                }

                v164 = (*(v164 + 48))(v171, &v463, v469, v29, v164);
                OUTLINED_FUNCTION_70_3();
                v196 = OUTLINED_FUNCTION_244();
                (v171)(v196);
                LODWORD(v454) = 1;
LABEL_74:
                v84 = v462[0];
                v197 = OUTLINED_FUNCTION_117_0(&v477);
                [v197 v198];
                if (v164)
                {
                  v443 = v171;
                  v436 = v168 + 2;
                  LODWORD(v447) = v174;
                  v108 = (v440)(v472, v29, v460, v170);
                  OUTLINED_FUNCTION_33_14();
                  [v121 begin];
                  [v121 setDisableActions_];
                  v164 = v164;
                  [v164 layoutIfNeeded];
                  v29 = v459;
                  v199 = [v459 traitCollection];
                  [v199 displayScale];

                  OUTLINED_FUNCTION_238();
                  BSFloatRoundForScale();
                  OUTLINED_FUNCTION_133_2();
                  v202 = [v200 v201];
                  [v202 displayScale];

                  BSFloatRoundForScale();
                  v203 = &selRef_createFolderWithName_icon_error_;
                  OUTLINED_FUNCTION_45_3();
                  v204();
                  v205 = OUTLINED_FUNCTION_238();
                  [v206 v207];

                  v208 = [v121 commit];
                  if (v454)
                  {
                    v203 = v432;
                    MEMORY[0x277C5AFB0](v455, v452);
                    v29 = v459;
                    v209 = v450;
                    OUTLINED_FUNCTION_102_3();
                    v210 = v164;
                    swift_isUniquelyReferenced_nonNull_native();
                    OUTLINED_FUNCTION_263(*(v29 + v209));
                    v211 = OUTLINED_FUNCTION_144();
                    sub_2748F9C64(v211, v212);
                    OUTLINED_FUNCTION_116_3();
                    *(v29 + v209) = v213;
                    OUTLINED_FUNCTION_133_2();
                    v110 = Strong;
                    OUTLINED_FUNCTION_70_3();
                    v443();
                    swift_endAccess();
                    v208 = [OUTLINED_FUNCTION_262(v462) addSubview_];
                  }

                  v84 = &v471;
                  MEMORY[0x277C5ECC0](v208);
                  OUTLINED_FUNCTION_108_3();
                  v121 = *(v214 + 16);
                  v215 = *(v214 + 24);
                  v216 = v447;
                  if (v121 >= v215 >> 1)
                  {
                    OUTLINED_FUNCTION_8(v215);
                    sub_2749FCFB4();
                  }

                  sub_2749FCFF4();
                  v443 = v471;

                  v463 = OUTLINED_FUNCTION_111_2();
                  v464 = v462[0];
                  LOBYTE(v465) = v216;
                  OUTLINED_FUNCTION_282();
                  v220 = *(v219 + 16);
                  v221 = v220 - 1;
                  if (!v220)
                  {
                    v221 = 0;
                  }

                  v32 = v459;
                  v170 = v435;
                  if (v220 && v455 == v221)
                  {
                    sub_274772984(v217, v218, v216);
                    v29 = 0;
                    OUTLINED_FUNCTION_118_3();
LABEL_102:
                    OUTLINED_FUNCTION_184();
                    goto LABEL_103;
                  }

                  v164 = v460;
                  if (!v451)
                  {
                    v84 = v110;
                    v223 = v459;
                    if (v436 >= v220)
                    {
                      v108 = 0.0;
                      OUTLINED_FUNCTION_33_14();
                      v203 = v441;
                      v32 = v440;
                      if (v232)
                      {
                        goto LABEL_97;
                      }

LABEL_90:
                      v228 = OUTLINED_FUNCTION_42_11();
                      v229 = (v32)(v228);
                      v169 = v169 + OUTLINED_FUNCTION_23_18(v229);
                      v108 = v108 + v169;
                      v32 = v223;
                      [v223 contentSize];
                      v232 = v230 == v108;
                      v231 = v230 >= v108;
                    }

                    else
                    {
                      v224 = OUTLINED_FUNCTION_73_3();
                      (v32)(v224);
                      OUTLINED_FUNCTION_55_6();
                      OUTLINED_FUNCTION_133_2();
                      sub_274772984(v225, v226, v227);
                      OUTLINED_FUNCTION_33_14();
                      if (!v232)
                      {
                        goto LABEL_90;
                      }

LABEL_97:
                      v243 = OUTLINED_FUNCTION_42_11();
                      v244 = (v32)(v243);
                      OUTLINED_FUNCTION_16_20(&v455, v244);
                      v32 = v223;
                    }

                    v110 = v84;
                    if (!v232 && v231)
                    {
                      OUTLINED_FUNCTION_49_9();
                      v29 = 0;
                      goto LABEL_102;
                    }
                  }

                  OUTLINED_FUNCTION_52_7();
                  OUTLINED_FUNCTION_188();
                  v110();
                  v245 = OUTLINED_FUNCTION_146();
                  v246 = (v110)(v245);
                  v110 = v32;
                  v32 = v203;
                  v108 = v246;
                  OUTLINED_FUNCTION_49_9();
                  OUTLINED_FUNCTION_196();
                  goto LABEL_102;
                }

                v463 = OUTLINED_FUNCTION_111_2();
                OUTLINED_FUNCTION_267();
                if (v434 && v427 + v168 == -1)
                {
                  sub_274772984(v222, v84, v174);
                  v29 = 0;
                  v32 = v459;
                  OUTLINED_FUNCTION_118_3();
                  goto LABEL_103;
                }

                v32 = v459;
                v164 = v460;
                if (v451)
                {
                  goto LABEL_111;
                }

                v84 = v110;
                v233 = v459;
                if (v168 + 2 >= v434)
                {
                  v108 = 0.0;
                  OUTLINED_FUNCTION_33_14();
                  v171 = v441;
                  v32 = v440;
                  if (v232)
                  {
LABEL_107:
                    v248 = OUTLINED_FUNCTION_42_11();
                    v249 = (v32)(v248);
                    OUTLINED_FUNCTION_16_20(&v455, v249);
                    v32 = v233;
                    goto LABEL_108;
                  }
                }

                else
                {
                  v234 = OUTLINED_FUNCTION_73_3();
                  (v32)(v234);
                  OUTLINED_FUNCTION_55_6();
                  OUTLINED_FUNCTION_184();
                  OUTLINED_FUNCTION_133_2();
                  sub_274772984(v235, v236, v237);
                  OUTLINED_FUNCTION_33_14();
                  if (v232)
                  {
                    goto LABEL_107;
                  }
                }

                v238 = OUTLINED_FUNCTION_42_11();
                v239 = (v32)(v238);
                v169 = v169 + OUTLINED_FUNCTION_23_18(v239);
                v108 = v108 + v169;
                v32 = v233;
                [v233 contentSize];
                v242 = v240 == v108;
                v241 = v240 >= v108;
LABEL_108:
                v110 = v84;
                if (v242 || !v241)
                {
LABEL_111:
                  OUTLINED_FUNCTION_52_7();
                  OUTLINED_FUNCTION_188();
                  v110();
                  v250 = OUTLINED_FUNCTION_146();
                  (v110)(v250);
                  OUTLINED_FUNCTION_184();
                  v110 = v32;
                  v32 = v171;
                  v108 = v251;
                  OUTLINED_FUNCTION_49_9();
                  OUTLINED_FUNCTION_196();
                  goto LABEL_103;
                }

                OUTLINED_FUNCTION_49_9();
                v29 = 0;
LABEL_103:
                v166 += 3;
                ++v168;
                OUTLINED_FUNCTION_109_3();
              }

              while (v247 + v168 != -1);
            }

            OUTLINED_FUNCTION_123_2(&v468);
            sub_27479BB64();
            sub_2749FCF74();
            OUTLINED_FUNCTION_78();

            v252 = OUTLINED_FUNCTION_117_0(v462);
            [v252 v253];

            [v32 contentSize];
            OUTLINED_FUNCTION_105_3();
            v256 = v254 + v255;
            OUTLINED_FUNCTION_47_9(&Strong);
            OUTLINED_FUNCTION_131_1();
            OUTLINED_FUNCTION_280();
            v257();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_278();
            v414();
            v258 = v463;
            if (v463)
            {

              v89 = 16.0;
            }

            else
            {
              v259 = objc_opt_self();
              OUTLINED_FUNCTION_113_3();
              v260 = v32;
              v261 = swift_allocObject();
              *(v261 + 16) = v121;
              *(v261 + 24) = 0x4030000000000000;
              *(v261 + 32) = v68;
              *(v261 + 40) = v256;
              *(v261 + 48) = v133;
              *(v261 + 56) = v260;
              v262 = v121;
              v263 = v260;
              OUTLINED_FUNCTION_83_2();
              OUTLINED_FUNCTION_32_2();
              v264 = swift_allocObject();
              *(v264 + 16) = sub_2749763AC;
              *(v264 + 24) = v261;
              v466 = sub_27491222C;
              OUTLINED_FUNCTION_56_8(v264);
              *(v265 - 256) = v266;
              v464 = 1107296256;
              OUTLINED_FUNCTION_12_29();
              v465 = v267;
              OUTLINED_FUNCTION_101_2(&block_descriptor_83_1);
              v268 = _Block_copy(&v463);

              [v259 performWithoutAnimation_];
              _Block_release(v268);
              LOBYTE(v259) = OUTLINED_FUNCTION_144_1();

              v89 = 16.0;
              if (v259)
              {
                goto LABEL_180;
              }

              v269 = v262;
              v270 = OUTLINED_FUNCTION_24_1();
              [v270 v271];
              [v269 setAlpha_];
              selRef_colorWithDynamicProvider_ = 0;
              selRef_colorWithPaletteColor_ = 0;
              v463 = 0x3FF0000000000000;
              OUTLINED_FUNCTION_101_2(0x3FF0000000000000);
              selRef_colorWithWhite_alpha_ = 0;
              selRef_colors = 0;
              [v269 v272];

              OUTLINED_FUNCTION_88_3(v472);
              OUTLINED_FUNCTION_223();
              v273 = v423[1];
              OUTLINED_FUNCTION_102_3();
              v274 = v269;
              v275 = sub_2749F95E4();
              MEMORY[0x28223BE20](v275);
              OUTLINED_FUNCTION_174();
              *(v276 - 16) = v263;
              v84 = (v260 + v273);
              v277 = v402;
              sub_2749F9554();
              v402 = v277;
              OUTLINED_FUNCTION_190();

              swift_endAccess();
              v405 = sub_2749763AC;
              v404 = v261;
              v32 = v260;
            }

            v77 = v408;
            v63 = v433;
            if (*(v32 + v406) == 1)
            {
              v278 = [v433 layer];
              v279 = sub_2749F9884();
              v280 = OUTLINED_FUNCTION_142_1();
              v281 = OUTLINED_FUNCTION_24_1();
              [v281 v282];

              objc_opt_self();
              OUTLINED_FUNCTION_86();
              v283 = swift_allocObject();
              *(v283 + 16) = v63;
              v466 = sub_274976A14;
              OUTLINED_FUNCTION_56_8(v283);
              *(v284 - 256) = v285;
              OUTLINED_FUNCTION_268();
              v465 = sub_274760264;
              OUTLINED_FUNCTION_101_2(&block_descriptor_90);
              v84 = _Block_copy(&v463);
              v286 = v433;

              OUTLINED_FUNCTION_80_2();
              *(v287 - 256) = v288;
              v467 = 0;
              v63 = v433;
              v463 = MEMORY[0x277D85DD0];
              OUTLINED_FUNCTION_268();
              v465 = sub_27480D7B8;
              OUTLINED_FUNCTION_101_2(&block_descriptor_93_1);
              v289 = _Block_copy(&v463);
              OUTLINED_FUNCTION_2_23();
              v290 = OUTLINED_FUNCTION_279();
              [v290 v291];
              _Block_release(v289);
              _Block_release(v84);
            }

            [v63 setFrame_];
            if (v448)
            {
              sub_2749FCE14();
              OUTLINED_FUNCTION_34_1();
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_32_1();
              v292 = sub_2749FCD64();
              OUTLINED_FUNCTION_32_1();
              sub_2749FCD64();
              OUTLINED_FUNCTION_78();

              OUTLINED_FUNCTION_157_0();

              v295 = [*&v63[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v295 setCornerRadius_];

              OUTLINED_FUNCTION_176();
            }

            else
            {
              OUTLINED_FUNCTION_176();
            }

            v68 = v68 + v133;
          }

          else
          {
          }
        }

        v87 = v452 + 1;
        if (v452 + 1 == v418)
        {
          goto LABEL_130;
        }
      }
    }

    OUTLINED_FUNCTION_39_15();
    OUTLINED_FUNCTION_234();
LABEL_130:
    [v32 contentSize];
    [v32 setContentSize_];
    OUTLINED_FUNCTION_136_2();
    v299 = *(v298 + 112);
    OUTLINED_FUNCTION_77();
    v446 = v299;
    v456 = (*(v32 + v299) + 64);
    OUTLINED_FUNCTION_27_12();
    v302 = v301 & v300;
    OUTLINED_FUNCTION_136_2();
    v304 = *(v303 + 136);
    v307 = *((v306 & v305) + 0x78);
    OUTLINED_FUNCTION_217(v308, *((v306 & v305) + 0x80));
    v461[0] = v304;
    OUTLINED_FUNCTION_77();
    v447 = v307;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_132_2(v472);
    v457 = v309;
    OUTLINED_FUNCTION_90_2(v310 + 32);
    OUTLINED_FUNCTION_242();
    v458 = v311;
    v451 = *MEMORY[0x277D7A490];
    v454 = v312 + 8;
    OUTLINED_FUNCTION_98_3(v423);
    *&v313 = 136315138;
    v449 = v313;
    OUTLINED_FUNCTION_199();
    v455 = v314;
LABEL_131:
    v315 = v456;
    while (v302)
    {
      v316 = v29;
LABEL_138:
      OUTLINED_FUNCTION_62_2();
      v318(v432);
      OUTLINED_FUNCTION_245();
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      v319 = *(v299 + 48);
      v320 = v424;
      v321 = OUTLINED_FUNCTION_29_1();
      v322(v321);
      *(v320 + v319) = v304;
      OUTLINED_FUNCTION_36_14();
      __swift_storeEnumTagSinglePayload(v323, v324, v325, v326);
      v327 = v304;
LABEL_139:
      OUTLINED_FUNCTION_63_3();
      sub_2747D31F8(v328, v329, &unk_280968DD0);
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      OUTLINED_FUNCTION_48_7(v330);
      if (v232)
      {
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_186();

        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_147_0();
        OUTLINED_FUNCTION_25_15();
        return;
      }

      v462[0] = *(v304 + *(v299 + 48));
      OUTLINED_FUNCTION_8_2();
      v331 = OUTLINED_FUNCTION_47_3();
      v332(v331);
      v333 = *v460;
      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_154();
      v334 = OUTLINED_FUNCTION_47_9(&v452);
      v335 = v426;
      v333(v334);
      v299 = sub_2749F9524();
      OUTLINED_FUNCTION_185();
      v337 = *v336;
      (*v336)(v304, v335);
      v338 = *(v299 + 16);

      v339 = sub_2749F9274();
      if (v339 < 0 || v339 >= v338)
      {
        v29 = v316;
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_8_2();
        v345 = OUTLINED_FUNCTION_151_0();
        v346 = v453;
        v347(v345, v431, v453);
        v304 = v316;
        v299 = sub_2749FA4D4();
        v348 = sub_2749FD2D4();
        if (os_log_type_enabled(v299, v348))
        {
          v349 = OUTLINED_FUNCTION_30_9();
          v29 = OUTLINED_FUNCTION_178();
          *v349 = OUTLINED_FUNCTION_112_2(v29, &a20).n128_u32[0];
          OUTLINED_FUNCTION_2_47();
          sub_274720F90(&qword_280968FC8, v350);
          v351 = sub_2749FDC74();
          v353 = v352;
          v354 = *v454;
          (*v454)(v333, v453);
          v304 = sub_2747AF460(v351, v353, v469);

          *(v349 + 4) = v304;
          _os_log_impl(&dword_274719000, v299, v348, "Invalid on screen cell index path %s", v349, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_81_2();

          OUTLINED_FUNCTION_14_23();
          v356(v29, v410);
          v354(v431, v349);
        }

        else
        {
          OUTLINED_FUNCTION_81_2();

          OUTLINED_FUNCTION_124_2();
          (v299)(v333, v346);
          OUTLINED_FUNCTION_14_23();
          v358(v29, v410);
          v359 = OUTLINED_FUNCTION_144();
          (v299)(v359);
        }

        OUTLINED_FUNCTION_258();
      }

      else
      {
        OUTLINED_FUNCTION_119_2();
        OUTLINED_FUNCTION_154();
        v340 = OUTLINED_FUNCTION_47_9(&v435);
        v333(v340);
        sub_2749F9534();
        OUTLINED_FUNCTION_59_7();
        OUTLINED_FUNCTION_185();
        v337();
        v341 = sub_2749F9274();
        v29 = v316;
        if ((v299 & 0xC000000000000001) != 0)
        {
          v304 = MEMORY[0x277C5F6D0](v341, v299);
          OUTLINED_FUNCTION_204();
          v343 = v462[0];
        }

        else
        {
          OUTLINED_FUNCTION_204();
          v343 = v462[0];
          if ((v342 & 0x8000000000000000) != 0)
          {
            goto LABEL_177;
          }

          if (v342 >= *((v299 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_178;
          }

          v304 = *(v299 + 8 * v342 + 32);
        }

        [v343 frame];
        [v304 convertRect:v459 toCoordinateSpace:?];
        if (OUTLINED_FUNCTION_141_0(v479) < v438 || (OUTLINED_FUNCTION_92_3(), CGRectGetMinY(v480), OUTLINED_FUNCTION_247(), v194))
        {
          v462[0] = v304;
          [v343 removeFromSuperview];
          OUTLINED_FUNCTION_119_2();
          OUTLINED_FUNCTION_288();
          v364 = 0;
          for (i = (v304 + 6); ; i += 24)
          {
            if (&qword_280968420 == v364)
            {

              OUTLINED_FUNCTION_203();
              OUTLINED_FUNCTION_294();
              v368 = v343;
              v369 = sub_2749FA4D4();
              v370 = sub_2749FD2D4();

              if (os_log_type_enabled(v369, v370))
              {
                v371 = OUTLINED_FUNCTION_30_9();
                i = OUTLINED_FUNCTION_178();
                *v371 = OUTLINED_FUNCTION_112_2(i, &a20).n128_u32[0];
                v471 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470);
                OUTLINED_FUNCTION_228();
                v372 = sub_2749FCDC4();
                v29 = sub_2747AF460(v372, v373, v469);

                *(v371 + 4) = v29;
                OUTLINED_FUNCTION_199();
                _os_log_impl(&dword_274719000, v369, v370, "Recycled cell without a reuse identifier, cell is of type: %s", v371, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(i);
                OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_31();
              }

              OUTLINED_FUNCTION_14_23();
              v374(&qword_280968420, v410);
              OUTLINED_FUNCTION_204();
              goto LABEL_172;
            }

            if (v364 >= v304[2])
            {
              goto LABEL_179;
            }

            v29 = *(i - 8);
            v366 = *i;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            if ([v343 isKindOfClass_])
            {
              break;
            }

            ++v364;
            OUTLINED_FUNCTION_199();
          }

          v375 = v459;
          v376 = v445;
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_147_0();
          swift_isUniquelyReferenced_nonNull_native();
          v471 = *&v376[v375];
          *&v376[v375] = 0x8000000000000000;
          v377 = OUTLINED_FUNCTION_198();
          sub_274797CC0(v377, v378);
          OUTLINED_FUNCTION_168();
          if (__OFADD__(v381, v382))
          {
            goto LABEL_181;
          }

          v383 = v379;
          i = v380;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478);
          v384 = sub_2749FDA84();
          v385 = v471;
          if (v384)
          {
            v386 = OUTLINED_FUNCTION_198();
            v388 = sub_274797CC0(v386, v387);
            v390 = i & 1;
            i = v453;
            if (v390 != (v389 & 1))
            {
              goto LABEL_182;
            }

            v383 = v388;
          }

          else
          {
            OUTLINED_FUNCTION_204();
          }

          OUTLINED_FUNCTION_119_2();
          *&v445[v391] = v385;
          if (v392)
          {
          }

          else
          {
            sub_274972654(&v471);
            sub_2748FB298(v383, v29, v366, v471, v385);
          }

          OUTLINED_FUNCTION_199();
          v370 = *(v385 + 56) + 8 * v383;
          v393 = v343;
          v394 = OUTLINED_FUNCTION_228();
          sub_274765168(v394);
          v369 = v471;
          swift_endAccess();

          v448 = sub_274972654;
LABEL_172:
          OUTLINED_FUNCTION_158();
          OUTLINED_FUNCTION_266(&v470);
          OUTLINED_FUNCTION_10_3();
          v304 = (&v369->isa + v370);
          OUTLINED_FUNCTION_123_2(v461);
          v299 = sub_274973FF0();
          swift_endAccess();

          OUTLINED_FUNCTION_81_2();
          v396 = OUTLINED_FUNCTION_17_24();
          v397(v396, i);
          v314 = v455;
          goto LABEL_131;
        }

        OUTLINED_FUNCTION_8_2();
        v344(v431, v338);

        OUTLINED_FUNCTION_258();
      }
    }

    while (1)
    {
      v317 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v317 >= v314)
      {
        v316 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        OUTLINED_FUNCTION_117_0(&v453);
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v360, v361, v362, v363);
        v302 = 0;
        goto LABEL_139;
      }

      v302 = *(v315 + v317);
      ++v63;
      if (v302)
      {
        v316 = v29;
        v63 = v317;
        goto LABEL_138;
      }
    }

    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    OUTLINED_FUNCTION_113_3();
    v296 = swift_allocObject();
    *(v296 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v296, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();
  }
}

void sub_27496C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E10);
  v34 = OUTLINED_FUNCTION_34(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v36);
  v37 = type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_43();
  v490 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_54_1();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v417 - v46);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v49);
  v50 = sub_2749FA4E4();
  v51 = OUTLINED_FUNCTION_0_0(v50, &v470);
  v419 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0);
  v56 = OUTLINED_FUNCTION_0_0(v55, &v493);
  v422 = v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v61);
  v62 = sub_2749F9284();
  v63 = OUTLINED_FUNCTION_0_0(v62, &v502);
  v456 = v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v70 = OUTLINED_FUNCTION_34(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_39();
  v73 = v71 - v72;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0);
  v77 = OUTLINED_FUNCTION_34(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v507);
  [v28 contentSize];
  [v28 setContentSize_];
  OUTLINED_FUNCTION_85_1();
  v81 = &v28[*(v80 + 160)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    OUTLINED_FUNCTION_113_3();
    v322 = swift_allocObject();
    *(v322 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v322, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();

    return;
  }

  v83 = Strong;
  v482 = *(v81 + 1);
  [v28 contentOffset];
  v85 = 0.0;
  if (v84 + -70.0 < 0.0)
  {
    v86 = 0.0;
  }

  else
  {
    v86 = v84 + -70.0;
  }

  [v28 frame];
  v88 = v87 + v86 + 70.0;
  [v28 contentSize];
  if (v89 >= v88)
  {
    v90 = v88;
  }

  else
  {
    v90 = v89;
  }

  v467 = [v28 effectiveUserInterfaceLayoutDirection];
  OUTLINED_FUNCTION_85_1();
  v92 = *(v91 + 152);
  OUTLINED_FUNCTION_77();
  v449[2] = v92;
  sub_27473ADB8(&v28[v92], v28, &unk_280968DC0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
  v94 = sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v96 = *(v95 + 8);
  v449[1] = v93;
  v449[0] = v96;
  v448 = v95 + 8;
  v96(v28, v93);
  v97 = *(v94 + 16);
  v486 = v28;
  v459[0] = v73;
  v485 = v83;
  v432 = v94;
  v447 = v97;
  if (!v97)
  {
    OUTLINED_FUNCTION_39_15();
    OUTLINED_FUNCTION_234();
    goto LABEL_155;
  }

  OUTLINED_FUNCTION_85_1();
  v418 = *(v98 + 208);
  OUTLINED_FUNCTION_85_1();
  v101 = *((v100 & v99) + 0x90);
  v474 = *((v100 & v99) + 0x70);
  OUTLINED_FUNCTION_85_1();
  v430 = *(v102 + 200);
  v446 = v94 + 32;
  v440 = v103;
  OUTLINED_FUNCTION_77();
  v423 = v101;
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_15();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_234();
  v466 = v482 + 88;
  *&v476 = v482 + 80;
  v438 = v422 + 16;
  v437 = v422 + 8;
  OUTLINED_FUNCTION_53();
  v472 = v105;
  v459[1] = v106 + 48;
  v427 = &v494;
  v421 = "ontainerView";
  v433 = v90;
  v107 = v431;
  v483 = v37;
  v108 = v445;
  v471 = v47;
  v488 = v29;
LABEL_10:
  if (v104 >= *(v94 + 16))
  {
    goto LABEL_202;
  }

  v109 = v94;
  v477 = v104;
  v110 = *(v446 + v104);
  LOBYTE(v497) = *(v446 + v104);
  OUTLINED_FUNCTION_63_3();
  sub_27473ADB8(v111, v112, &unk_280968DC0);
  OUTLINED_FUNCTION_255();
  sub_2749F95D4();
  v113 = OUTLINED_FUNCTION_32();
  (v449[0])(v113);
  v114 = v492;
  if (!v492)
  {
    goto LABEL_26;
  }

  v115 = 0;
  v478 = v110;
  v491 = *(v492 + 16);
  while (2)
  {
    OUTLINED_FUNCTION_221();
    if (v116 == v115)
    {
      v117 = 1;
      OUTLINED_FUNCTION_88_2();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v37);
      if (v114[2])
      {
        OUTLINED_FUNCTION_81_2();
        OUTLINED_FUNCTION_6_39();
        sub_2749768E8(v114 + v121, v107);
        v117 = 0;
      }

      __swift_storeEnumTagSinglePayload(v107, v117, 1, v37);
      OUTLINED_FUNCTION_156_0(v453, 1, v37);
      v108 = v445;
      if (!v212)
      {
        sub_27472ECBC(v453, &qword_280967E10);
      }

LABEL_23:
      OUTLINED_FUNCTION_156_0(v107, 1, v37);
      if (v212)
      {

        sub_27472ECBC(v107, &qword_280967E10);
LABEL_26:
        v130 = v477;
        v94 = v109;
        goto LABEL_148;
      }

      v452 = v85;
      v131 = v439;
      sub_27477BDA4(v107, v439);
      v457 = v110;
      v132 = dbl_274A298C8[v110];
      [v486 contentSize];
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_47_9(&v503);
      ObjectType = swift_getObjectType();
      v465 = *(v482 + 88);
      v134 = (v465)(v131, ObjectType, v482, v31);
      OUTLINED_FUNCTION_70_3();
      v475 = v135;
      v136 = v135();
      v137 = trunc(v31 / v134);
      if (v137 <= 1.0)
      {
        v138 = 0.0;
      }

      else
      {
        v138 = fmod(v31, v134) / (v137 + -1.0);
      }

      v463 = v138;
      OUTLINED_FUNCTION_256();
      if (v139 || v486[v418] == 1)
      {
        v452 = v452 + 16.0;
      }

      OUTLINED_FUNCTION_47_9(v459);
      OUTLINED_FUNCTION_131_1();
      v436 = v140;
      v140();
      sub_2749F95D4();
      v141 = OUTLINED_FUNCTION_32_1();
      v435 = v142;
      v142(v141);
      v143 = v492;
      if (!v492)
      {
        v115 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
        v143 = sub_2747E99D8(v132);
      }

      v144 = v143;
      OUTLINED_FUNCTION_231();
      sub_2749576A4();
      sub_2749FCD64();
      OUTLINED_FUNCTION_78();

      v454 = v144;
      [v144 setAccessibilityLabel_];

      v501 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_37_14();
      v145 = v486;
      if (v212)
      {
        [v486 contentSize];
        OUTLINED_FUNCTION_105_3();
      }

      v146 = v132 + v132 + v136;
      v481 = ObjectType;
      if (v478 == 3)
      {
        v147 = v145;
        sub_2749FCE14();
        OUTLINED_FUNCTION_34_1();
        v156 = v452;
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_62();
          swift_once();
        }

        OUTLINED_FUNCTION_32_1();
        v29 = sub_2749FCD64();
        OUTLINED_FUNCTION_32_1();
        sub_2749FCD64();
        OUTLINED_FUNCTION_78();

        OUTLINED_FUNCTION_157_0();
        v150 = [v148 v149];

        if (!v150)
        {
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          sub_2749FCD64();
          OUTLINED_FUNCTION_59_7();
        }

        v151 = v147;
        v152 = sub_27494FAB0(3, *&v147[v423]);
        if (v152)
        {
          v153 = v152;

          v154 = v153;
        }

        else
        {
          type metadata accessor for WFDrawerSearchControlsView();
          v157 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          *&v157[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
          *&v157[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
          v158 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
          v159 = *&v157[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
          v29 = v157;
          v160 = [v159 searchTextField];
          [v160 setPlaceholder_];

          v161 = v423;
          v162 = *&v157[v158];
          v154 = v29;
          [v162 setDelegate_];
          OUTLINED_FUNCTION_10_3();
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_265(*&v147[v161]);
          sub_2748FA118();
          v151 = v147;
          *&v147[v161] = v500;
          swift_endAccess();
          v153 = 0;
        }

        v163 = v153;
        v164 = [v154 superview];

        OUTLINED_FUNCTION_133_2();
        if (v164)
        {
        }

        else
        {
          [*&v454[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
        }

        [v151 contentSize];
        OUTLINED_FUNCTION_105_3();
        v167 = v165 + v166;
        v168 = objc_opt_self();
        v169 = v154;
        [v168 begin];
        [v168 setDisableActions_];
        v170 = OUTLINED_FUNCTION_172();
        [v169 v171];
        MEMORY[0x277C5ECC0]([v168 commit]);
        v172 = *((v501 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v501 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v172 >> 1)
        {
          OUTLINED_FUNCTION_8(v172);
          sub_2749FCFB4();
        }

        v132 = v132 + 54.0;
        v146 = v146 + 54.0;
        sub_2749FCFF4();
        v155 = v501;

        v145 = v151;
      }

      else
      {
        v155 = MEMORY[0x277D84F90];
        v156 = v452;
      }

      v444 = v155;
      v450 = v146;
      v173 = v114[2];
      if (!v173)
      {
        goto LABEL_134;
      }

      v487 = objc_opt_self();
      v424 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
      OUTLINED_FUNCTION_81_2();
      v480 = (v114 + ((*(v174 + 80) + 32) & ~*(v174 + 80)));
      OUTLINED_FUNCTION_77();
      v175 = 0;
      OUTLINED_FUNCTION_221();
      v211 = v176 != 0;
      v177 = v176 - 1;
      if (!v211)
      {
        v177 = 0;
      }

      v468 = v177;
      OUTLINED_FUNCTION_260((v173 - 1));
      v178 = v434;
      v462 = v114;
      while (1)
      {
LABEL_57:
        v179 = v175;
        while (2)
        {
          if (v179 >= v114[2])
          {
            goto LABEL_199;
          }

          v180 = (v179 + 1);
          OUTLINED_FUNCTION_81_2();
          v182 = *(v181 + 72);
          sub_2749768E8(v480 + v182 * v179, v29);
          sub_2749768E8(v29, v479);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v184 = v488;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_186();
              sub_274976940();
              if (v178)
              {
                goto LABEL_66;
              }

              goto LABEL_61;
            case 3:
            case 4:
            case 5:
            case 6:
              if (v178)
              {
                goto LABEL_66;
              }

LABEL_61:
              if (!v179)
              {
                goto LABEL_66;
              }

              if (v179 > v114[2])
              {
                goto LABEL_201;
              }

              sub_2749768E8(v480 + v182 * (v179 - 1), v461);
              OUTLINED_FUNCTION_31_17();
              OUTLINED_FUNCTION_10_33();
              v186 = v185();
              v184 = v488;
              sub_274976940();
              v132 = v132 + v186 + dbl_274A298F0[v457];
LABEL_66:
              v187 = v487;
              [v487 begin];
              [v187 setDisableActions_];
              LOBYTE(v492) = v478;
              MEMORY[0x277C5AFB0](v179, v477);
              v173 = *&v145[v474];
              v188 = v485;
              if (!*(v173 + 2))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_115_2(&v506);
              v189 = sub_274797E40();
              if (v190)
              {
                v184 = *v472;
                v29 = *(*(v173 + 7) + 8 * v189);
                OUTLINED_FUNCTION_264();
                v184();

                v191 = 0;
              }

              else
              {

LABEL_70:
                v173 = v188;
                OUTLINED_FUNCTION_10_33();
                if (v86 < v156 + v132 + v192() && v156 + v132 < v90)
                {
                  v195 = OUTLINED_FUNCTION_41_12();
                  v173 = v188;
                  v29 = v196(v195);
                  v197 = OUTLINED_FUNCTION_138_0();
                  (v184)(v197);
                  v191 = 1;
                }

                else
                {
                  v194 = OUTLINED_FUNCTION_138_0();
                  (v184)(v194);
                  v29 = 0;
                  v191 = 0;
                }

                v180 = (v179 + 1);
              }

              [v487 commit];
              if (!v29)
              {
                OUTLINED_FUNCTION_221();
                if (!v198 || v468 != v179)
                {
                  OUTLINED_FUNCTION_6_39();
                  OUTLINED_FUNCTION_133_2();
                  OUTLINED_FUNCTION_63_3();
                  sub_2749768E8(v199, v200);
                  v201 = swift_getEnumCaseMultiPayload();
                  v145 = v486;
                  v173 = v485;
                  v47 = v471;
                  switch(v201)
                  {
                    case 1:
                      OUTLINED_FUNCTION_0_42();
                      OUTLINED_FUNCTION_190();
                      sub_274976940();
                      goto LABEL_114;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                      goto LABEL_114;
                    default:
                      OUTLINED_FUNCTION_0_42();
                      OUTLINED_FUNCTION_190();
                      sub_274976940();
                      OUTLINED_FUNCTION_221();
                      v469 = v179;
                      if (v180 >= v202)
                      {
                        v203 = v47;
                        v207 = 0.0;
                        OUTLINED_FUNCTION_37_14();
                        v206 = v465;
                        if (!v212)
                        {
                          goto LABEL_87;
                        }
                      }

                      else
                      {
                        if (v180 >= v114[2])
                        {
                          goto LABEL_200;
                        }

                        v203 = v47;
                        OUTLINED_FUNCTION_72_4();
                        sub_2749768E8(v204, v461);
                        v205 = OUTLINED_FUNCTION_84_3();
                        v206 = v465;
                        v207 = v465(v205);
                        OUTLINED_FUNCTION_208();
                        v145 = v180;
                        sub_274976940();
                        OUTLINED_FUNCTION_37_14();
                        if (!v212)
                        {
LABEL_87:
                          v208 = OUTLINED_FUNCTION_41_14();
                          v209 = v206(v208);
                          [v145 contentSize];
                          v212 = v210 == v207;
                          v211 = v210 >= v207;
                          goto LABEL_91;
                        }
                      }

                      v213 = OUTLINED_FUNCTION_41_14();
                      v214 = v206(v213);
                      OUTLINED_FUNCTION_16_20(&v492, v214);
LABEL_91:
                      v47 = v203;
                      v114 = v462;
                      v179 = v469;
                      if (v212 || !v211)
                      {
LABEL_114:
                        OUTLINED_FUNCTION_183();
                        v248 = v450;
                        switch(v249)
                        {
                          case 2:
                            goto LABEL_129;
                          case 3:
                            goto LABEL_127;
                          default:
                            v250 = OUTLINED_FUNCTION_7_33();
                            v252 = 0.0;
                            v132 = v132 + v251(v250) + 0.0;
                            OUTLINED_FUNCTION_183();
                            switch(v253)
                            {
                              case 2:
                                goto LABEL_130;
                              case 3:
                                goto LABEL_128;
                              default:
                                goto LABEL_131;
                            }
                        }

                        goto LABEL_131;
                      }

                      OUTLINED_FUNCTION_0_42();
                      sub_274976940();
                      OUTLINED_FUNCTION_53_9();
                      if (!v212)
                      {
                        goto LABEL_94;
                      }

LABEL_133:
                      OUTLINED_FUNCTION_284();
                      break;
                  }

                  goto LABEL_134;
                }

                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_133_2();
                sub_274976940();
                OUTLINED_FUNCTION_53_9();
                v145 = v486;
                v47 = v471;
                if (v212)
                {
                  goto LABEL_133;
                }

LABEL_94:
                v178 = 0;
                ++v179;
                continue;
              }

              OUTLINED_FUNCTION_250();
              OUTLINED_FUNCTION_31_17();
              (v465)();
              OUTLINED_FUNCTION_37_14();
              v215 = OUTLINED_FUNCTION_115_2(&v505);
              [v215 v216];
              v217 = OUTLINED_FUNCTION_279();
              [v217 v218];
              v219 = v29;
              [v219 layoutIfNeeded];
              v220 = OUTLINED_FUNCTION_117_0(&v504);
              v222 = [v220 v221];
              [v222 displayScale];

              OUTLINED_FUNCTION_238();
              BSFloatRoundForScale();
              v223 = [v180 traitCollection];
              [v223 displayScale];

              BSFloatRoundForScale();
              OUTLINED_FUNCTION_250();
              OUTLINED_FUNCTION_31_17();
              OUTLINED_FUNCTION_10_33();
              v224();
              v225 = OUTLINED_FUNCTION_238();
              [v226 v227];

              v228 = [v145 commit];
              if (v191)
              {
                v229 = v455;
                MEMORY[0x277C5AFB0](v179, v477);
                v230 = v486;
                v231 = v474;
                OUTLINED_FUNCTION_10_3();
                v232 = v219;
                swift_isUniquelyReferenced_nonNull_native();
                v233 = OUTLINED_FUNCTION_265(*&v230[v231]);
                sub_2748F9C64(v233, v229);
                *&v230[v231] = v500;
                OUTLINED_FUNCTION_264();
                v184();
                swift_endAccess();
                v228 = [*&v454[v424] addSubview_];
              }

              MEMORY[0x277C5ECC0](v228);
              v234 = *((v501 & 0xFFFFFFFFFFFFFF8) + 0x18);
              v235 = v483;
              if (*((v501 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v234 >> 1)
              {
                OUTLINED_FUNCTION_8(v234);
                sub_2749FCFB4();
              }

              v175 = v179 + 1;
              sub_2749FCFF4();
              v444 = v501;

              v236 = v114[2];
              v237 = v236 - 1;
              if (!v236)
              {
                v237 = 0;
              }

              v145 = v486;
              v173 = v485;
              v90 = v433;
              v29 = v488;
              if (v236 && v237 == v179)
              {
                OUTLINED_FUNCTION_0_42();
                sub_274976940();
                OUTLINED_FUNCTION_284();
                v178 = 0;
                OUTLINED_FUNCTION_53_9();
                v47 = v471;
                v156 = v452;
                if (!v212)
                {
                  goto LABEL_57;
                }

LABEL_134:

                OUTLINED_FUNCTION_117_0(&v471);
                sub_27479BB64();
                v270 = v145;
                sub_2749FCF74();
                OUTLINED_FUNCTION_78();

                v271 = OUTLINED_FUNCTION_123_2(&v482);
                [v271 v272];

                [v145 contentSize];
                OUTLINED_FUNCTION_105_3();
                v275 = v273 + v274;
                OUTLINED_FUNCTION_47_9(&v458);
                OUTLINED_FUNCTION_131_1();
                v436();
                sub_2749F95D4();
                v276 = OUTLINED_FUNCTION_32_1();
                v435(v276);
                v277 = v492;
                if (v492)
                {

                  v31 = v450;
                  goto LABEL_138;
                }

                v278 = v29;
                v491 = objc_opt_self();
                OUTLINED_FUNCTION_113_3();
                v279 = swift_allocObject();
                *(v279 + 16) = v114;
                *(v279 + 24) = 0x4030000000000000;
                *(v279 + 32) = v156;
                *(v279 + 40) = v275;
                v31 = v450;
                *(v279 + 48) = v450;
                *(v279 + 56) = v270;
                v280 = v114;
                v281 = v270;
                OUTLINED_FUNCTION_83_2();
                OUTLINED_FUNCTION_32_2();
                v282 = swift_allocObject();
                *(v282 + 16) = sub_2749769E8;
                *(v282 + 24) = v279;
                v495 = sub_27491222C;
                v496 = v282;
                v492 = MEMORY[0x277D85DD0];
                v493 = 1107296256;
                OUTLINED_FUNCTION_12_29();
                v494 = v283;
                OUTLINED_FUNCTION_209(&block_descriptor_137);
                v284 = _Block_copy(&v492);

                [v491 performWithoutAnimation_];
                _Block_release(v284);
                v285 = OUTLINED_FUNCTION_144_1();

                if (v285)
                {
                  goto LABEL_206;
                }

                v286 = v280;
                [v281 insertSubview:v286 atIndex:0];
                [v286 setAlpha_];
                v493 = 0;
                v494 = 0;
                v492 = 0x3FF0000000000000;
                OUTLINED_FUNCTION_209(0x3FF0000000000000);
                v495 = 0;
                v496 = 0;
                [v286 v287];

                LOBYTE(v499) = v478;
                v500 = v286;
                v288 = v440;
                OUTLINED_FUNCTION_10_3();
                v289 = v286;
                v290 = sub_2749F95E4();
                MEMORY[0x28223BE20](v290);
                OUTLINED_FUNCTION_174();
                *(v291 - 16) = v281;
                v173 = &v270[v288];
                v292 = v426;
                sub_2749F9554();
                v426 = v292;

                swift_endAccess();
                v429 = sub_2749769E8;
                v428 = v279;
                v114 = v454;
                v29 = v278;
LABEL_138:
                v94 = v432;
                v107 = v431;
                v37 = v483;
                if (v270[v430] == 1)
                {
                  v293 = [v114 layer];
                  v294 = sub_2749F9884();
                  v295 = OUTLINED_FUNCTION_142_1();
                  v296 = OUTLINED_FUNCTION_24_1();
                  [v296 v297];

                  objc_opt_self();
                  OUTLINED_FUNCTION_86();
                  v298 = swift_allocObject();
                  v299 = OUTLINED_FUNCTION_261(v298, &v482);
                  v495 = sub_274976A14;
                  v496 = v299;
                  OUTLINED_FUNCTION_74_3();
                  *(v300 - 256) = v301;
                  v493 = 1107296256;
                  v494 = sub_274760264;
                  OUTLINED_FUNCTION_209(&block_descriptor_144);
                  v173 = _Block_copy(&v492);
                  v302 = v454;

                  v495 = CGSizeMake;
                  v496 = 0;
                  OUTLINED_FUNCTION_74_3();
                  *(v303 - 256) = v304;
                  v493 = 1107296256;
                  v494 = sub_27480D7B8;
                  OUTLINED_FUNCTION_209(&block_descriptor_147);
                  v305 = _Block_copy(&v492);
                  OUTLINED_FUNCTION_2_23();
                  v306 = OUTLINED_FUNCTION_279();
                  [v306 v307];
                  v308 = v305;
                  v114 = v454;
                  _Block_release(v308);
                  _Block_release(v173);
                }

                OUTLINED_FUNCTION_92_3();
                [v309 v310];
                v311 = OUTLINED_FUNCTION_231();
                *&v312 = COERCE_DOUBLE(sub_2749577DC(v311));
                if ((v313 & 1) == 0)
                {
                  v314 = *&v312;
                  v315 = [*(v114 + OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView) layer];
                  [v315 setCornerRadius_];
                }

                v108 = v445;
                OUTLINED_FUNCTION_183();
                if (v316 == 3)
                {
                  sub_2749FCE14();
                  OUTLINED_FUNCTION_34_1();
                  if (qword_28159E3A8 != -1)
                  {
                    OUTLINED_FUNCTION_62();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_32_1();
                  v317 = sub_2749FCD64();
                  OUTLINED_FUNCTION_32_1();
                  sub_2749FCD64();
                  OUTLINED_FUNCTION_78();

                  OUTLINED_FUNCTION_157_0();

                  v320 = v454;
                  v321 = [*&v454[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                  [v321 setCornerRadius_];

                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  v94 = v432;
                  v37 = v483;
                  v108 = v445;
                }

                else
                {
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                }

                v85 = v156 + v31;
                v130 = v477;
LABEL_148:
                v104 = v130 + 1;
                if (v104 == v447)
                {
LABEL_155:
                  v324 = v486;
                  [v486 contentSize];
                  [v324 setContentSize_];
                  OUTLINED_FUNCTION_85_1();
                  v326 = *(v325 + 112);
                  OUTLINED_FUNCTION_77();
                  v473 = v326;
                  v327 = *&v324[v326] + 64;
                  OUTLINED_FUNCTION_27_12();
                  v330 = v329 & v328;
                  OUTLINED_FUNCTION_85_1();
                  v332 = *(v331 + 136);
                  v335 = *((v334 & v333) + 0x78);
                  OUTLINED_FUNCTION_217(v336, *((v334 & v333) + 0x80));
                  v490 = v332;
                  OUTLINED_FUNCTION_77();
                  v474 = v335;
                  OUTLINED_FUNCTION_77();
                  v475 = 0;
                  v337 = 0;
                  v487 = (v456 + 16);
                  OUTLINED_FUNCTION_90_2(v456 + 32);
                  OUTLINED_FUNCTION_242();
                  v488 = v338;
                  OUTLINED_FUNCTION_233(*MEMORY[0x277D7A490]);
                  OUTLINED_FUNCTION_98_3(v449);
                  *&v339 = 136315138;
                  v476 = v339;
                  OUTLINED_FUNCTION_134_2();
                  v482 = v327;
                  v481 = v340;
LABEL_156:
                  OUTLINED_FUNCTION_182();
                  while (v330)
                  {
LABEL_162:
                    OUTLINED_FUNCTION_187();
                    v343 = v479;
                    OUTLINED_FUNCTION_243();
                    v344(v455);
                    v326 = *(*(v343 + 56) + 8 * v326);
                    v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
                    v345 = v332[12];
                    v346 = v459[0];
                    v347 = OUTLINED_FUNCTION_3_5();
                    v348(v347);
                    *(v346 + v345) = v326;
                    OUTLINED_FUNCTION_143();
                    __swift_storeEnumTagSinglePayload(v349, v350, v351, v332);
                    v352 = v326;
                    OUTLINED_FUNCTION_182();
LABEL_163:
                    sub_2747D31F8(v346, v326, &unk_280968DD0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
                    v353 = OUTLINED_FUNCTION_78();
                    OUTLINED_FUNCTION_156_0(v353, 1, v332);
                    if (v212)
                    {
                      swift_unknownObjectRelease();

                      OUTLINED_FUNCTION_186();

                      OUTLINED_FUNCTION_83_2();
                      OUTLINED_FUNCTION_147_0();
                      OUTLINED_FUNCTION_25_15();
                      return;
                    }

                    v354 = *(v326 + v332[12]);
                    OUTLINED_FUNCTION_8_2();
                    v355 = v460;
                    v356(v460, v326, v47);
                    v326 = *v489;
                    OUTLINED_FUNCTION_26_15();
                    v359 = v458;
                    v360 = v464;
                    (v326)(v458, v357 + v358, v464);
                    v361 = sub_2749F9524();
                    v362 = *v488;
                    (*v488)(v359, v360);
                    v363 = *(v361 + 16);

                    v364 = sub_2749F9274();
                    if (v364 < 0 || v364 >= v363)
                    {
                      OUTLINED_FUNCTION_203();
                      OUTLINED_FUNCTION_294();
                      OUTLINED_FUNCTION_8_2();
                      v326 = v441;
                      v370 = OUTLINED_FUNCTION_44();
                      v47 = v484;
                      v371(v370);
                      v332 = v363;
                      v372 = sub_2749FA4D4();
                      v373 = sub_2749FD2D4();
                      if (os_log_type_enabled(v372, v373))
                      {
                        v374 = OUTLINED_FUNCTION_30_9();
                        v47 = OUTLINED_FUNCTION_178();
                        *v374 = OUTLINED_FUNCTION_112_2(v47, &a21).n128_u32[0];
                        OUTLINED_FUNCTION_2_47();
                        sub_274720F90(&qword_280968FC8, v375);
                        v332 = sub_2749FDC74();
                        v483 = v354;
                        v326 = *v480;
                        OUTLINED_FUNCTION_264();
                        (v326)();
                        v376 = OUTLINED_FUNCTION_32();
                        sub_2747AF460(v376, v377, v378);
                        OUTLINED_FUNCTION_96();

                        *(v374 + 4) = v332;
                        _os_log_impl(&dword_274719000, v372, v373, "Invalid on screen cell index path %s", v374, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v47);
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_31();
                        v379 = v451;
                        OUTLINED_FUNCTION_31();
                        OUTLINED_FUNCTION_259();

                        OUTLINED_FUNCTION_14_23();
                        v381(v379, v443);
                        (v326)(v460, v47);
                      }

                      else
                      {

                        OUTLINED_FUNCTION_124_2();
                        (v326)();
                        OUTLINED_FUNCTION_14_23();
                        v382(v363, v443);
                        (v326)(v355, v47);
                      }

                      OUTLINED_FUNCTION_182();
                      v327 = v482;
                      OUTLINED_FUNCTION_155_0();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_26_15();
                      v365 = v442;
                      v47 = v464;
                      OUTLINED_FUNCTION_213();
                      (v326)();
                      v366 = sub_2749F9534();
                      v362(v365, v47);
                      v367 = sub_2749F9274();
                      if ((v366 & 0xC000000000000001) != 0)
                      {
                        v332 = MEMORY[0x277C5F6D0](v367, v366);
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_182();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_182();
                        if ((v368 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_203;
                        }

                        if (v368 >= *((v366 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_204;
                        }

                        v332 = *(v366 + 8 * v368 + 32);
                      }

                      [v354 frame];
                      [v332 convertRect:v486 toCoordinateSpace:?];
                      if (OUTLINED_FUNCTION_141_0(v508) < v86 || (OUTLINED_FUNCTION_92_3(), v90 < CGRectGetMinY(v509)))
                      {
                        v471 = v332;
                        v483 = v354;
                        [v354 removeFromSuperview];
                        OUTLINED_FUNCTION_119_2();
                        v388 = *(v387 + v474);
                        v389 = *(v388 + 16);

                        v390 = 0;
                        v391 = (v388 + 48);
                        v327 = v482;
                        while (1)
                        {
                          if (v389 == v390)
                          {

                            v326 = v417;
                            OUTLINED_FUNCTION_294();
                            OUTLINED_FUNCTION_259();
                            v395 = v394;
                            v396 = sub_2749FA4D4();
                            v397 = sub_2749FD2D4();

                            if (os_log_type_enabled(v396, v397))
                            {
                              v398 = OUTLINED_FUNCTION_30_9();
                              v399 = OUTLINED_FUNCTION_178();
                              *v398 = OUTLINED_FUNCTION_112_2(v399, &a21).n128_u32[0];
                              v499 = swift_getObjectType();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470);
                              v400 = sub_2749FCDC4();
                              v47 = sub_2747AF460(v400, v401, &v497);

                              *(v398 + 4) = v47;
                              OUTLINED_FUNCTION_134_2();
                              _os_log_impl(&dword_274719000, v396, v397, "Recycled cell without a reuse identifier, cell is of type: %s", v398, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v399);
                              OUTLINED_FUNCTION_31();
                              OUTLINED_FUNCTION_31();
                            }

                            OUTLINED_FUNCTION_14_23();
                            v402(v326, v443);
                            OUTLINED_FUNCTION_158();
                            v403 = v483;
                            goto LABEL_195;
                          }

                          if (v390 >= *(v388 + 16))
                          {
                            goto LABEL_205;
                          }

                          v392 = *(v391 - 1);
                          v47 = *v391;
                          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

                          if ([v483 isKindOfClass_])
                          {
                            break;
                          }

                          ++v390;
                          v391 += 3;
                          OUTLINED_FUNCTION_134_2();
                        }

                        OUTLINED_FUNCTION_158();
                        OUTLINED_FUNCTION_283();
                        OUTLINED_FUNCTION_10_3();
                        OUTLINED_FUNCTION_147_0();
                        swift_isUniquelyReferenced_nonNull_native();
                        v404 = *(v389 + ObjCClassFromMetadata);
                        OUTLINED_FUNCTION_223();
                        *(v389 + ObjCClassFromMetadata) = 0x8000000000000000;
                        v405 = sub_274797CC0(v392, v47);
                        v406 = *(v404 + 16);
                        LODWORD(v475) = v407;
                        if (__OFADD__(v406, (v407 & 1) == 0))
                        {
                          goto LABEL_207;
                        }

                        v326 = v405;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478);
                        v408 = sub_2749FDA84();
                        v409 = v499;
                        if (v408)
                        {
                          v410 = sub_274797CC0(v392, v47);
                          if ((v475 & 1) != (v411 & 1))
                          {
                            goto LABEL_208;
                          }

                          v326 = v410;
                        }

                        OUTLINED_FUNCTION_119_2();
                        *(v472 + v412) = v409;
                        if (v413)
                        {
                        }

                        else
                        {
                          sub_274972654(&v499);
                          sub_2748FB298(v326, v392, v47, v499, v409);
                        }

                        v403 = v483;
                        v414 = v483;
                        sub_274765168(&v499);
                        OUTLINED_FUNCTION_181();
                        swift_endAccess();

                        v475 = sub_274972654;
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_158();
LABEL_195:
                        OUTLINED_FUNCTION_266(&v498);
                        OUTLINED_FUNCTION_10_3();
                        OUTLINED_FUNCTION_115_2(&v489);
                        v332 = sub_274973FF0();
                        swift_endAccess();

                        OUTLINED_FUNCTION_282();
                        OUTLINED_FUNCTION_8_2();
                        v416(v326, v47);
                        OUTLINED_FUNCTION_155_0();
                        goto LABEL_156;
                      }

                      OUTLINED_FUNCTION_8_2();
                      v369(v460, v47);

                      v327 = v482;
                      OUTLINED_FUNCTION_155_0();
                    }
                  }

                  while (1)
                  {
                    v342 = v337 + 1;
                    if (__OFADD__(v337, 1))
                    {
                      goto LABEL_198;
                    }

                    if (v342 >= v341)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
                      v346 = v459[0];
                      OUTLINED_FUNCTION_88_2();
                      __swift_storeEnumTagSinglePayload(v383, v384, v385, v386);
                      v330 = 0;
                      goto LABEL_163;
                    }

                    v330 = *(v327 + 8 * v342);
                    ++v337;
                    if (v330)
                    {
                      v337 = v342;
                      goto LABEL_162;
                    }
                  }
                }

                goto LABEL_10;
              }

              OUTLINED_FUNCTION_6_39();
              sub_2749768E8(v29, v425);
              v238 = swift_getEnumCaseMultiPayload();
              v47 = v471;
              v156 = v452;
              switch(v238)
              {
                case 1:
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  goto LABEL_125;
                case 3:
                case 4:
                case 5:
                case 6:
                  goto LABEL_125;
                default:
                  v469 = v179;
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  v239 = v114[2];
                  v420 = v179 + 1;
                  if (v175 < v239)
                  {
                    sub_2747B2794(v179 + 1, 1, v114);
                    OUTLINED_FUNCTION_72_4();
                    sub_2749768E8(v240, v461);
                    v241 = OUTLINED_FUNCTION_84_3();
                    v254 = v465(v241);
                    OUTLINED_FUNCTION_208();
                    v145 = v235;
                    sub_274976940();
                    v114 = v462;
                    OUTLINED_FUNCTION_37_14();
                    if (!v212)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v254 = 0.0;
                    OUTLINED_FUNCTION_37_14();
                    if (!v255)
                    {
LABEL_112:
                      v242 = OUTLINED_FUNCTION_41_14();
                      v244 = v243(v242);
                      [v145 contentSize];
                      v247 = v245 == v254;
                      v246 = v245 >= v254;
                      goto LABEL_119;
                    }
                  }

                  v256 = OUTLINED_FUNCTION_41_14();
                  v258 = v257(v256);
                  OUTLINED_FUNCTION_16_20(&v492, v258);
LABEL_119:
                  v179 = v469;
                  v175 = v420;
                  if (v247 || !v246)
                  {
LABEL_125:
                    OUTLINED_FUNCTION_183();
                    v248 = v450;
                    switch(v259)
                    {
                      case 2:
LABEL_129:
                        v265 = OUTLINED_FUNCTION_7_33();
                        v132 = v132 + v266(v265) + 16.0;
LABEL_130:
                        v252 = 16.0;
                        break;
                      case 3:
LABEL_127:
                        v263 = OUTLINED_FUNCTION_7_33();
                        v132 = v132 + v264(v263) + 8.0;
LABEL_128:
                        v252 = 8.0;
                        break;
                      default:
                        v260 = OUTLINED_FUNCTION_7_33();
                        v252 = 0.0;
                        v132 = v132 + v261(v260) + 0.0;
                        OUTLINED_FUNCTION_183();
                        switch(v262)
                        {
                          case 2:
                            goto LABEL_130;
                          case 3:
                            goto LABEL_128;
                          default:
                            goto LABEL_131;
                        }
                    }

LABEL_131:
                    v267 = OUTLINED_FUNCTION_7_33();
                    v269 = v268(v267);
                    OUTLINED_FUNCTION_0_42();
                    sub_274976940();
                    OUTLINED_FUNCTION_53_9();
                    v450 = v248 + v252 + v269;
                    if (!v212)
                    {
                      v90 = v433;
                      v175 = v179 + 1;
                      v178 = 1;
                      goto LABEL_57;
                    }

                    v434 = 1;
                    v90 = v433;
                    goto LABEL_134;
                  }

                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  OUTLINED_FUNCTION_284();
                  v178 = 0;
                  OUTLINED_FUNCTION_53_9();
                  if (v212)
                  {
                    goto LABEL_134;
                  }

                  break;
              }

              break;
            default:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_186();
              sub_274976940();
              goto LABEL_66;
          }

          break;
        }
      }
    }

    if (v115 < v114[2])
    {
      sub_2749768E8(v114 + ((*(v490 + 80) + 32) & ~*(v490 + 80)) + *(v490 + 9) * v115, v108);
      sub_2749768E8(v108, v47);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          goto LABEL_17;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
LABEL_17:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          ++v115;
          continue;
        default:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          OUTLINED_FUNCTION_63_3();
          sub_27477BDA4(v122, v123);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v124, v125, v126, v37);
          sub_27477BDA4(v115, v107);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v127, v128, v129, v37);
          goto LABEL_23;
      }
    }

    break;
  }

  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  sub_2749FDD54();
  __break(1u);
}

void sub_27496F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v33;
  v34 = sub_2749FA4E4();
  v35 = OUTLINED_FUNCTION_0_0(v34, &v496);
  v37 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68);
  v44 = OUTLINED_FUNCTION_0_0(v43, &v518);
  v456 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v49);
  v50 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v484[3] = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = v455 - v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v60 = OUTLINED_FUNCTION_34(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39();
  v63 = v61 - v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  v67 = OUTLINED_FUNCTION_34(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v541);
  [v28 contentSize];
  [v28 setContentSize_];
  v70 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_166();
  v72 = *(v71 + 160);
  v524 = v28;
  v73 = v28 + v72;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v455[1] = v37;
    v485 = v63;
    v512 = v50;
    v74 = *(v73 + 1);
    v75 = OUTLINED_FUNCTION_117_0(&a9);
    [v75 v76];
    v78 = 0.0;
    if (v77 + -70.0 < 0.0)
    {
      v79 = 0.0;
    }

    else
    {
      v79 = v77 + -70.0;
    }

    [v50 frame];
    v496 = v79;
    *&v459 = 70.0;
    v81 = v80 + v79 + 70.0;
    [v50 contentSize];
    if (v82 >= v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = v82;
    }

    v495 = v83;
    v502 = [v50 effectiveUserInterfaceLayoutDirection];
    OUTLINED_FUNCTION_166();
    v85 = *(v84 + 152);
    OUTLINED_FUNCTION_77();
    v483 = v85;
    sub_27473ADB8(v50 + v85, v28, &qword_280967E30);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
    v87 = sub_2749F9524();
    OUTLINED_FUNCTION_9_3();
    v89 = *(v88 + 8);
    v482 = v86;
    v481 = v89;
    v480 = v88 + 8;
    v89(v28, v86);
    v90 = *(v87 + 16);
    v455[0] = v40;
    v470 = v57;
    v466 = v87;
    v479 = v90;
    if (v90)
    {
      OUTLINED_FUNCTION_166();
      v457 = *(v91 + 208);
      v28 = *((v93 & v92) + 0x90);
      v509 = *((v93 & v92) + 0x70);
      v464 = *((v93 & v92) + 0xC8);
      OUTLINED_FUNCTION_241(v87 + 32);
      OUTLINED_FUNCTION_77();
      v465 = v28;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_235();
      v70 = 0;
      v460 = 0;
      v501 = v74 + 88;
      v516 = v74 + 80;
      v478 = v456 + 16;
      v477 = v456 + 8;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_260(v94);
      v506 = v74;
      v490 = v74 + 48;
      v95 = 0;
      v461 = &v527;
      v458 = "ontainerView";
      while (1)
      {
        if (v95 >= *(v87 + 16))
        {
          goto LABEL_171;
        }

        v505 = v95;
        v510 = *(v95 + v476);
        v539 = v510;
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v96, v97, &qword_280967E30);
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_225();
        v99(v98);
        v504 = v525;
        if (v525)
        {
          v100 = (v504 + 48);
          v493 = *(v504 + 16);
          v101 = v493 + 1;
          v102 = v505;
          while (--v101)
          {
            v103 = v100 + 24;
            v104 = *v100;
            v100 += 24;
            if (v104 == 1)
            {
              v106 = *(v103 - 5);
              v105 = *(v103 - 4);
              v107 = 1;
              goto LABEL_19;
            }
          }

          if (v493)
          {
            v108 = v504;
            sub_2747B2794(0, 1, v504);
            v106 = *(v108 + 32);
            v105 = *(v108 + 40);
            v107 = *(v108 + 48);
            v109 = OUTLINED_FUNCTION_32_1();
            sub_274772E38(v109, v110, v107);
LABEL_19:
            v472 = v106;
            v537[0] = v106;
            v537[1] = v105;
            v473 = v105;
            v471 = v107;
            v538 = v107;
            OUTLINED_FUNCTION_160();
            if (v111)
            {
              v112 = 12.0;
            }

            else
            {
              v112 = 0.0;
            }

            v113 = OUTLINED_FUNCTION_163();
            [v113 v114];
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_47_9(&v540);
            ObjectType = swift_getObjectType();
            v500 = *(v506 + 88);
            v116 = (v500)(v537, ObjectType, v506, v31);
            OUTLINED_FUNCTION_122_1();
            v515 = v117;
            v118 = v117();
            v119 = trunc(v31 / v116);
            v120 = v465;
            if (v119 <= 1.0)
            {
              v121 = 0.0;
            }

            else
            {
              v121 = fmod(v31, v116) / (v119 + -1.0);
            }

            v486 = v121;
            OUTLINED_FUNCTION_282();
            if (v122 || (OUTLINED_FUNCTION_26_15(), *(v124 + v123) == 1))
            {
              v78 = v78 + 16.0;
            }

            OUTLINED_FUNCTION_212();
            OUTLINED_FUNCTION_47_9(&v491);
            OUTLINED_FUNCTION_131_1();
            v475 = v125;
            v125();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_278();
            v126 = OUTLINED_FUNCTION_32_1();
            v474 = v127;
            (v127)(v126);
            v128 = v525;
            if (!v525)
            {
              v106 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
              v128 = sub_2747E99D8(v112);
            }

            v518 = ObjectType;
            v492 = v128;
            OUTLINED_FUNCTION_160();
            sub_2749FCE14();
            if (qword_28159E3A8 != -1)
            {
              OUTLINED_FUNCTION_62();
              swift_once();
            }

            v129 = qword_28159E448;
            sub_2749FCD64();
            OUTLINED_FUNCTION_96();
            v130 = sub_2749FCD64();

            v131 = [v129 localizedStringForKey:v106 value:v130 table:0];

            v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v133 = v132;

            OUTLINED_FUNCTION_32();
            v134 = sub_2749FCD64();

            [v492 setAccessibilityLabel_];

            v534 = MEMORY[0x277D84F90];
            v494 = v112;
            OUTLINED_FUNCTION_34_9();
            if (v135)
            {
              v136 = OUTLINED_FUNCTION_163();
              [v136 v137];
              OUTLINED_FUNCTION_105_3();
              v494 = v138 + v139 - v112;
            }

            v140 = v112 + v112 + v118;
            v467 = v129;
            OUTLINED_FUNCTION_160();
            if (v141)
            {
              sub_2749FCE14();
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_93();
              v142 = sub_2749FCD64();
              OUTLINED_FUNCTION_93();
              v143 = sub_2749FCD64();

              v144 = [v129 localizedStringForKey:v142 value:v143 table:0];

              if (!v144)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_2749FCD64();
                OUTLINED_FUNCTION_78();
              }

              OUTLINED_FUNCTION_81_2();
              v146 = sub_27494FA34(v510, *(v120 + v145));
              if (v146)
              {
                v147 = v146;

                v148 = v147;
              }

              else
              {
                type metadata accessor for WFDrawerSearchControlsView();
                v150 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                *&v150[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                *&v150[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                v151 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                v152 = *&v150[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                v153 = v150;
                v154 = [v152 searchTextField];
                [v154 setPlaceholder_];

                v155 = *&v150[v151];
                v156 = v153;
                v157 = v524;
                v148 = v156;
                [v155 setDelegate_];
                OUTLINED_FUNCTION_102_3();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v535[0] = *(v120 + v157);
                sub_2748FA314(v148, v510, isUniquelyReferenced_nonNull_native);
                OUTLINED_FUNCTION_224();
                *(v120 + v157) = v159;
                swift_endAccess();
                v147 = 0;
              }

              v160 = v147;
              v161 = [v148 superview];

              if (v161)
              {
              }

              else
              {
                [*&v492[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
              }

              v162 = OUTLINED_FUNCTION_163();
              [v162 v163];
              OUTLINED_FUNCTION_105_3();
              v166 = v164 + v165;
              v167 = objc_opt_self();
              v133 = v148;
              [v167 begin];
              v168 = OUTLINED_FUNCTION_279();
              [v168 v169];
              v170 = OUTLINED_FUNCTION_172();
              [v133 v171];
              v28 = &v534;
              MEMORY[0x277C5ECC0]([v167 commit]);
              OUTLINED_FUNCTION_108_3();
              v174 = *(v172 + 16);
              v173 = *(v172 + 24);
              if (v174 >= v173 >> 1)
              {
                OUTLINED_FUNCTION_8(v173);
                sub_2749FCFB4();
              }

              v140 = v140 + 58.0;
              sub_2749FCFF4();
              OUTLINED_FUNCTION_275();

              v149 = *&v459;
            }

            else
            {
              v149 = 0.0;
              v497 = MEMORY[0x277D84F90];
            }

            v102 = v505;
            v499 = v140;
            OUTLINED_FUNCTION_236();
            v176 = *(v175 + 16);
            if (v176)
            {
              v177 = objc_opt_self();
              v489 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
              OUTLINED_FUNCTION_26_15();
              OUTLINED_FUNCTION_77();
              OUTLINED_FUNCTION_236();
              OUTLINED_FUNCTION_249();
              v487 = v178;
              v503 = -v176;
              v179 = -1;
              v180 = v494;
              OUTLINED_FUNCTION_283();
              v523 = v177;
              do
              {
                v183 = *(v181 - 40);
                v182 = *(v181 - 32);
                LODWORD(v184) = *(v181 - 24);
                v535[0] = v183;
                v535[1] = v182;
                v536 = v184;
                LODWORD(v519) = v184;
                v517 = v181;
                if (v184 != 1)
                {
                  if (v70)
                  {
                    v185 = OUTLINED_FUNCTION_169();
                    sub_274772E38(v185, v186, v187);
                  }

                  else
                  {
                    if (v179 == -1)
                    {
                      v195 = OUTLINED_FUNCTION_169();
                      sub_274772E38(v195, v196, v197);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_236();
                      if (v179 >= *(v189 + 16))
                      {
                        goto LABEL_170;
                      }

                      v133 = v102;
                      v184 = *(v188 - 56);
                      v190 = *(v188 - 48);
                      v525 = *(v188 - 64);
                      v526 = v184;
                      LOBYTE(v527) = v190;
                      sub_274772E38(v183, v182, v519);
                      v191 = OUTLINED_FUNCTION_41_12();
                      sub_274772E38(v191, v192, v190);
                      OUTLINED_FUNCTION_264();
                      OUTLINED_FUNCTION_99_3();
                      v32 = v193();
                      OUTLINED_FUNCTION_283();
                      OUTLINED_FUNCTION_140_0(v194);
                      v149 = v149 + v112 + v32;
                    }

                    v180 = v494;
                  }
                }

                [v177 begin];
                [v177 setDisableActions_];
                v525 = v183;
                OUTLINED_FUNCTION_104_2();
                OUTLINED_FUNCTION_88_3(v537);
                v198 = OUTLINED_FUNCTION_144();
                MEMORY[0x277C5AFB0](v198);
                OUTLINED_FUNCTION_26_15();
                v201 = *(v200 + v199);
                v202 = *(v201 + 16);
                v514 = (v179 + 1);
                if (v202)
                {

                  OUTLINED_FUNCTION_250();
                  v203 = sub_274797E40();
                  if (v204)
                  {
                    v205 = v133;
                    v133 = *v507;
                    v206 = *(*(v201 + 56) + 8 * v203);
                    v207 = OUTLINED_FUNCTION_250();
                    (v133)(v207, v512);
                    LODWORD(v184) = v519;

                    v513 = 0;
                    goto LABEL_72;
                  }
                }

                v32 = v78 + v149;
                OUTLINED_FUNCTION_11_28();
                OUTLINED_FUNCTION_99_3();
                v208();
                OUTLINED_FUNCTION_247();
                v209 = v209 && v32 < v495;
                v205 = v133;
                if (v209)
                {
                  v206 = (v133[6])(v524, &v525, &v531, v177, v133);
                  OUTLINED_FUNCTION_109_3();
                  v211 = OUTLINED_FUNCTION_197();
                  (v133)(v211);
                  v513 = 1;
                }

                else
                {
                  OUTLINED_FUNCTION_109_3();
                  v210 = OUTLINED_FUNCTION_197();
                  (v133)(v210);
                  v206 = 0;
                  v513 = 0;
                }

                OUTLINED_FUNCTION_281();
LABEL_72:
                v520 = v179;
                v28 = (v179 + 2);
                [v177 commit];
                if (!v206)
                {
                  v525 = v183;
                  OUTLINED_FUNCTION_104_2();
                  v242 = v520;
                  if (!v493 || v487 + v520 != -1)
                  {
                    v133 = v205;
                    if (v184 != 1)
                    {
                      goto LABEL_94;
                    }

                    if (v28 >= v493)
                    {
                      v32 = 0.0;
                      OUTLINED_FUNCTION_34_9();
                      v177 = v518;
                      if (v135)
                      {
                        goto LABEL_103;
                      }

LABEL_93:
                      v271 = OUTLINED_FUNCTION_20_19();
                      v273 = v272(v271);
                      v180 = v180 + OUTLINED_FUNCTION_23_18(v273);
                      v32 = v32 + v180;
                      v274 = OUTLINED_FUNCTION_163();
                      [v274 v275];
                      if (v276 <= v32)
                      {
                        goto LABEL_94;
                      }

LABEL_104:
                      v70 = 0;
                    }

                    else
                    {
                      v511 = v182;
                      OUTLINED_FUNCTION_259();
                      v182 = *(v265 - 2);
                      v184 = *(v265 - 1);
                      v266 = *v265;
                      v531 = v182;
                      v532 = v184;
                      v533 = v266;
                      v267 = OUTLINED_FUNCTION_41_12();
                      sub_274772E38(v267, v268, v266);
                      OUTLINED_FUNCTION_11_28();
                      OUTLINED_FUNCTION_214();
                      v500();
                      v269 = OUTLINED_FUNCTION_189();
                      v28 = *(v270 - 256);
                      OUTLINED_FUNCTION_140_0(v269);
                      v133 = v28;
                      v102 = v242;
                      OUTLINED_FUNCTION_253();
                      OUTLINED_FUNCTION_34_9();
                      if (!v135)
                      {
                        goto LABEL_93;
                      }

LABEL_103:
                      v285 = OUTLINED_FUNCTION_20_19();
                      v287 = v286(v285);
                      v180 = v180 - OUTLINED_FUNCTION_23_18(v287);
                      if (v180 - v32 > 0.0)
                      {
                        goto LABEL_104;
                      }

LABEL_94:
                      OUTLINED_FUNCTION_11_28();
                      v70 = v102;
                      v277 = v184;
                      v278 = v183;
                      v279 = v515;
                      v515();
                      v280 = OUTLINED_FUNCTION_240();
                      (v279)(v280);
                      OUTLINED_FUNCTION_253();
                      v32 = v281;
                      sub_274772E24(v278, v182, v277);
                      OUTLINED_FUNCTION_120_2();
                    }

                    OUTLINED_FUNCTION_281();
                    goto LABEL_106;
                  }

                  v245 = OUTLINED_FUNCTION_169();
                  sub_274772E24(v245, v246, v247);
                  v70 = 0;
                  goto LABEL_100;
                }

                v498 = v179 + 2;
                *&v508 = v183;
                v511 = v182;
                v212 = v78;
                v213 = Strong;
                v177 = v518;
                v32 = (v500)(v535, v518, v205, v31);
                OUTLINED_FUNCTION_34_9();
                v214 = OUTLINED_FUNCTION_111_2();
                [v214 v215];
                v216 = OUTLINED_FUNCTION_111_2();
                [v216 v217];
                v218 = v206;
                [v218 layoutIfNeeded];
                v219 = OUTLINED_FUNCTION_47_9(&a9);
                v221 = [v219 v220];
                [v221 displayScale];

                BSFloatRoundForScale();
                v223 = v222;
                v224 = [v213 &selRef_setSelectedTabIndex_];
                [v224 displayScale];

                BSFloatRoundForScale();
                v226 = v225;
                OUTLINED_FUNCTION_281();
                OUTLINED_FUNCTION_99_3();
                [v218 setFrame_];

                v228 = [v177 &selRef_applicationDidForeground];
                v229 = v514;
                if (v513)
                {
                  v230 = v491;
                  MEMORY[0x277C5AFB0](v514, v505);
                  v231 = v524;
                  v232 = v509;
                  OUTLINED_FUNCTION_102_3();
                  v233 = v218;
                  swift_isUniquelyReferenced_nonNull_native();
                  OUTLINED_FUNCTION_263(*(v232 + v231));
                  sub_2748F9C64(v233, v230);
                  OUTLINED_FUNCTION_116_3();
                  *(v232 + v231) = v234;
                  OUTLINED_FUNCTION_109_3();
                  (v133)();
                  swift_endAccess();
                  v228 = [OUTLINED_FUNCTION_262(&v522) addSubview_];
                }

                v28 = &v534;
                MEMORY[0x277C5ECC0](v228);
                OUTLINED_FUNCTION_108_3();
                v237 = *(v235 + 16);
                v236 = *(v235 + 24);
                LODWORD(v238) = v519;
                v133 = v508;
                if (v237 >= v236 >> 1)
                {
                  OUTLINED_FUNCTION_8(v236);
                  sub_2749FCFB4();
                }

                sub_2749FCFF4();
                OUTLINED_FUNCTION_275();

                v525 = v133;
                OUTLINED_FUNCTION_104_2();
                OUTLINED_FUNCTION_236();
                v240 = *(v239 + 16);
                v241 = (v240 - 1);
                if (!v240)
                {
                  v241 = 0;
                }

                v78 = v212;
                v102 = v505;
                v242 = v520;
                if (!v240 || v229 != v241)
                {
                  v205 = v506;
                  if (v238 != 1)
                  {
                    goto LABEL_89;
                  }

                  if (v498 >= v240)
                  {
                    v32 = 0.0;
                    OUTLINED_FUNCTION_34_9();
                    v177 = v518;
                    if (v135)
                    {
                      goto LABEL_97;
                    }

LABEL_88:
                    v254 = OUTLINED_FUNCTION_20_19();
                    v256 = v255(v254);
                    v180 = v180 + OUTLINED_FUNCTION_23_18(v256);
                    v32 = v32 + v180;
                    v257 = OUTLINED_FUNCTION_163();
                    [v257 v258];
                    if (v259 <= v32)
                    {
                      goto LABEL_89;
                    }

LABEL_98:
                    v70 = 0;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_259();
                    v238 = *(v248 - 1);
                    v249 = *v248;
                    v531 = *(v248 - 2);
                    v532 = v238;
                    v533 = v249;
                    v250 = OUTLINED_FUNCTION_41_12();
                    sub_274772E38(v250, v251, v249);
                    OUTLINED_FUNCTION_11_28();
                    OUTLINED_FUNCTION_214();
                    v500();
                    v252 = OUTLINED_FUNCTION_189();
                    v205 = *(v253 - 256);
                    OUTLINED_FUNCTION_140_0(v252);
                    v102 = v242;
                    OUTLINED_FUNCTION_253();
                    OUTLINED_FUNCTION_34_9();
                    if (!v135)
                    {
                      goto LABEL_88;
                    }

LABEL_97:
                    v282 = OUTLINED_FUNCTION_20_19();
                    v284 = v283(v282);
                    v180 = v180 - OUTLINED_FUNCTION_23_18(v284);
                    if (v180 - v32 > 0.0)
                    {
                      goto LABEL_98;
                    }

LABEL_89:
                    OUTLINED_FUNCTION_11_28();
                    v70 = v102;
                    v260 = v515;
                    v515();
                    v261 = OUTLINED_FUNCTION_240();
                    (v260)(v261);
                    OUTLINED_FUNCTION_253();
                    v32 = v262;
                    v263 = OUTLINED_FUNCTION_45();
                    sub_274772E24(v263, v264, v238);
                    OUTLINED_FUNCTION_120_2();
                  }

                  OUTLINED_FUNCTION_281();
LABEL_100:
                  v133 = v205;
                  goto LABEL_106;
                }

                v243 = OUTLINED_FUNCTION_45();
                sub_274772E24(v243, v244, v238);
                v70 = 0;
                OUTLINED_FUNCTION_283();
LABEL_106:
                v181 = v517 + 24;
                v179 = v242 + 1;
              }

              while (v503 + v179 != -1);
            }

            OUTLINED_FUNCTION_190();

            OUTLINED_FUNCTION_123_2(&v526);
            sub_27479BB64();
            sub_2749FCF74();
            OUTLINED_FUNCTION_78();

            v288 = v492;
            [v492 setAccessibilityElements_];

            v289 = OUTLINED_FUNCTION_115_2(&a9);
            [v289 v290];
            OUTLINED_FUNCTION_105_3();
            v293 = v291 + v292;
            OUTLINED_FUNCTION_47_9(&v490);
            OUTLINED_FUNCTION_131_1();
            OUTLINED_FUNCTION_280();
            v294();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_278();
            v474();
            v295 = v525;
            if (v525)
            {

              v296 = v499;
            }

            else
            {
              v497 = v133;
              v297 = objc_opt_self();
              v298 = v524;
              v299 = v297;
              OUTLINED_FUNCTION_113_3();
              v300 = swift_allocObject();
              v301 = v288;
              v302 = v300;
              *(v300 + 16) = v301;
              *(v300 + 24) = 0x4030000000000000;
              *(v300 + 32) = v78;
              *(v300 + 40) = v293;
              v296 = v499;
              *(v300 + 48) = v499;
              *(v300 + 56) = v298;
              v303 = v301;
              v304 = v298;
              OUTLINED_FUNCTION_287();
              OUTLINED_FUNCTION_32_2();
              v305 = swift_allocObject();
              *(v305 + 16) = sub_2749769E8;
              *(v305 + 24) = v302;
              v528 = sub_27491222C;
              v529 = v305;
              v525 = MEMORY[0x277D85DD0];
              v526 = 1107296256;
              OUTLINED_FUNCTION_12_29();
              v527 = v306;
              OUTLINED_FUNCTION_101_2(&block_descriptor_63);
              v307 = _Block_copy(&v525);

              [v299 performWithoutAnimation_];
              _Block_release(v307);
              LOBYTE(v299) = OUTLINED_FUNCTION_144_1();

              if (v299)
              {
                goto LABEL_175;
              }

              v308 = v303;
              [v304 insertSubview:v308 atIndex:0];
              [v308 setAlpha_];
              v526 = 0;
              v527 = 0;
              v525 = 0x3FF0000000000000;
              OUTLINED_FUNCTION_101_2(0x3FF0000000000000);
              v528 = 0;
              v529 = 0;
              [v308 v309];

              OUTLINED_FUNCTION_88_3(v537);
              v535[0] = v308;
              v310 = v484[2];
              OUTLINED_FUNCTION_102_3();
              v311 = v308;
              v312 = sub_2749F95E4();
              MEMORY[0x28223BE20](v312);
              OUTLINED_FUNCTION_174();
              *(v313 - 16) = v304;
              v28 = (v298 + v310);
              v314 = v460;
              sub_2749F9554();
              v460 = v314;

              swift_endAccess();
              v463 = sub_2749769E8;
              v462 = v302;
              v102 = v505;
              v288 = v492;
            }

            OUTLINED_FUNCTION_26_15();
            v29 = v470;
            if (*(v316 + v315) == 1)
            {
              v317 = [v288 layer];
              v318 = sub_2749F9884();
              v319 = OUTLINED_FUNCTION_142_1();
              v320 = OUTLINED_FUNCTION_24_1();
              [v320 v321];

              v28 = objc_opt_self();
              OUTLINED_FUNCTION_86();
              v322 = swift_allocObject();
              v323 = OUTLINED_FUNCTION_261(v322, &v522);
              v528 = sub_2747EA124;
              v529 = v323;
              OUTLINED_FUNCTION_75_3();
              *(v324 - 256) = v325;
              OUTLINED_FUNCTION_268();
              v527 = sub_274760264;
              OUTLINED_FUNCTION_101_2(&block_descriptor_69_1);
              v326 = _Block_copy(&v525);
              v327 = v492;

              OUTLINED_FUNCTION_80_2();
              *(v328 - 256) = v329;
              v529 = 0;
              OUTLINED_FUNCTION_75_3();
              *(v330 - 256) = v331;
              OUTLINED_FUNCTION_268();
              v296 = v499;
              v527 = sub_27480D7B8;
              OUTLINED_FUNCTION_101_2(&block_descriptor_72);
              v332 = _Block_copy(&v525);
              OUTLINED_FUNCTION_2_23();
              [v28 v333];
              v288 = v492;
              _Block_release(v332);
              _Block_release(v326);
            }

            [v288 setFrame_];
            OUTLINED_FUNCTION_160();
            if (v334)
            {
              sub_2749FCE14();
              v28 = v335;
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_93();
              v336 = sub_2749FCD64();
              OUTLINED_FUNCTION_93();
              v337 = sub_2749FCD64();

              v338 = [*&v288[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v338 setCornerRadius_];

              OUTLINED_FUNCTION_175();
            }

            else
            {
              v339 = [*&v288[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v339 setCornerRadius_];

              OUTLINED_FUNCTION_175();
            }

            v78 = v78 + v296;
            v87 = v466;
            v57 = v29;
          }

          else
          {
            OUTLINED_FUNCTION_190();
          }
        }

        else
        {
          v102 = v505;
        }

        v95 = (v102 + 1);
        if (v95 == v479)
        {
          goto LABEL_125;
        }
      }
    }

    OUTLINED_FUNCTION_235();
    v460 = 0;
LABEL_125:
    v342 = OUTLINED_FUNCTION_47_9(&a9);
    [v342 v343];
    [v28 setContentSize_];
    v344 = MEMORY[0x277D85000];
    v345 = *((*MEMORY[0x277D85000] & *v28) + 0x70);
    OUTLINED_FUNCTION_77();
    v505 = v345;
    v346 = *(v345 + v28) + 64;
    OUTLINED_FUNCTION_27_12();
    v349 = v348 & v347;
    v350 = *v344;
    v351 = *((*v344 & *v28) + 0x88);
    v352 = *((v350 & *v28) + 0x78);
    OUTLINED_FUNCTION_217(v353, *((v350 & *v28) + 0x80));
    v520 = v351;
    OUTLINED_FUNCTION_77();
    v506 = v352;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_132_2(&v533);
    v516 = v354;
    v522 = v355 + 32;
    OUTLINED_FUNCTION_242();
    v518 = v356;
    OUTLINED_FUNCTION_233(*MEMORY[0x277D7A490]);
    OUTLINED_FUNCTION_98_3(v484);
    *&v357 = 136315138;
    v508 = v357;
    OUTLINED_FUNCTION_230();
    v517 = v346;
    v515 = v358;
    while (v349)
    {
      v359 = v70;
      v360 = v57;
LABEL_132:
      OUTLINED_FUNCTION_62_2();
      v362(v491);
      OUTLINED_FUNCTION_245();
      v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      v363 = *(v345 + 12);
      v364 = v485;
      v365 = OUTLINED_FUNCTION_144();
      v366 = v359;
      v367(v365);
      *(v364 + v363) = v28;
      OUTLINED_FUNCTION_36_14();
      __swift_storeEnumTagSinglePayload(v368, v369, v370, v371);
      v372 = v28;
LABEL_133:
      OUTLINED_FUNCTION_63_3();
      sub_2747D31F8(v373, v374, &unk_280968DD0);
      v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      OUTLINED_FUNCTION_48_7(v375);
      if (v135)
      {
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_186();

        OUTLINED_FUNCTION_287();
        sub_27471F8A4(v507);
        OUTLINED_FUNCTION_25_15();
        return;
      }

      v523 = *(v28 + *(v345 + 12));
      OUTLINED_FUNCTION_8_2();
      v57 = v360;
      v376 = v360;
      v70 = v366;
      v377(v376, v28, v366);
      v378 = *v519;
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_154();
      v379 = OUTLINED_FUNCTION_47_9(&v513);
      v380 = v488;
      (v378)(v379);
      v345 = sub_2749F9524();
      v381 = *v518;
      (*v518)(v28, v380);
      v382 = v345[2];

      v383 = sub_2749F9274();
      if (v383 < 0 || v383 >= v382)
      {
        OUTLINED_FUNCTION_203();
        sub_2749FA3D4();
        OUTLINED_FUNCTION_8_2();
        v389 = v468;
        v390 = OUTLINED_FUNCTION_29_1();
        v391(v390);
        v28 = v378;
        v392 = sub_2749FA4D4();
        v393 = sub_2749FD2D4();
        if (os_log_type_enabled(v392, v393))
        {
          v70 = v389;
          v394 = OUTLINED_FUNCTION_30_9();
          v395 = OUTLINED_FUNCTION_178();
          *v394 = OUTLINED_FUNCTION_216(v395, &v536).n128_u32[0];
          OUTLINED_FUNCTION_2_47();
          sub_274720F90(&qword_280968FC8, v396);
          OUTLINED_FUNCTION_231();
          v345 = sub_2749FDC74();
          v28 = v397;
          v398 = *v514;
          (*v514)(v70, v512);
          v399 = OUTLINED_FUNCTION_44();
          sub_2747AF460(v399, v400, v401);
          OUTLINED_FUNCTION_59_7();

          *(v394 + 4) = v345;
          _os_log_impl(&dword_274719000, v392, v393, "Invalid on screen cell index path %s", v394, 0xCu);
          v402 = OUTLINED_FUNCTION_115_2(&v536);
          __swift_destroy_boxed_opaque_existential_0(v402);
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_213();

          OUTLINED_FUNCTION_14_23();
          v404(v484[1], v469);
          v405 = OUTLINED_FUNCTION_115_2(&v497);
          v398(v405, v70);
          v57 = v345;
        }

        else
        {
          OUTLINED_FUNCTION_213();

          OUTLINED_FUNCTION_124_2();
          (v345)(v389, v70);
          OUTLINED_FUNCTION_14_23();
          v407(v378, v469);
          v408 = OUTLINED_FUNCTION_208();
          (v345)(v408);
        }

        v346 = v517;
        OUTLINED_FUNCTION_155_0();
      }

      else
      {
        OUTLINED_FUNCTION_81_2();
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_47_9(&v495);
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_185();
        (v378)();
        v384 = sub_2749F9534();
        v385 = OUTLINED_FUNCTION_32_1();
        v381(v385);
        v386 = sub_2749F9274();
        if ((v384 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x277C5F6D0](v386, v384);
          v345 = v523;
        }

        else
        {
          v345 = v523;
          if ((v386 & 0x8000000000000000) != 0)
          {
            goto LABEL_172;
          }

          if (v386 >= *((v384 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_173;
          }

          v28 = *(v384 + 8 * v386 + 32);
        }

        [v345 frame];
        [v28 convertRect:v524 toCoordinateSpace:?];
        if (OUTLINED_FUNCTION_141_0(v542) < v496 || (OUTLINED_FUNCTION_92_3(), CGRectGetMinY(v543), OUTLINED_FUNCTION_247(), v209))
        {
          v509 = v28;
          [v345 removeFromSuperview];
          OUTLINED_FUNCTION_81_2();
          OUTLINED_FUNCTION_288();
          v413 = 0;
          for (i = v28 + 6; ; i += 3)
          {
            v415 = v517;
            if (&qword_280968420 == v413)
            {

              OUTLINED_FUNCTION_203();
              sub_2749FA3D4();
              v420 = v523;
              v70 = v523;
              v421 = sub_2749FA4D4();
              v422 = sub_2749FD2D4();

              if (os_log_type_enabled(v421, v422))
              {
                v423 = OUTLINED_FUNCTION_30_9();
                v424 = OUTLINED_FUNCTION_178();
                *v423 = OUTLINED_FUNCTION_216(v424, v530).n128_u32[0];
                v534 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470);
                OUTLINED_FUNCTION_228();
                v425 = sub_2749FCDC4();
                v70 = v426;
                v427 = sub_2747AF460(v425, v426, &v531);

                *(v423 + 4) = v427;
                _os_log_impl(&dword_274719000, v421, v422, "Recycled cell without a reuse identifier, cell is of type: %s", v423, 0xCu);
                v428 = OUTLINED_FUNCTION_115_2(v530);
                __swift_destroy_boxed_opaque_existential_0(v428);
                OUTLINED_FUNCTION_31();
                v429 = v517;
                OUTLINED_FUNCTION_31();
              }

              else
              {
                v429 = v415;
              }

              OUTLINED_FUNCTION_14_23();
              v443(&qword_280968420, v469);
              OUTLINED_FUNCTION_230();
              goto LABEL_166;
            }

            if (v413 >= v28[2])
            {
              goto LABEL_174;
            }

            v416 = *(i - 1);
            v70 = *i;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v418 = OUTLINED_FUNCTION_111_2();
            if ([v418 v419])
            {
              break;
            }

            v413 = (v413 + 1);
          }

          v430 = v524;
          v431 = v504;
          OUTLINED_FUNCTION_10_3();
          sub_27471F8A4(v507);
          swift_isUniquelyReferenced_nonNull_native();
          v534 = *(v430 + v431);
          *(v430 + v431) = 0x8000000000000000;
          sub_274797CC0(v416, v70);
          OUTLINED_FUNCTION_168();
          if (__OFADD__(v434, v435))
          {
            goto LABEL_176;
          }

          v436 = v432;
          LODWORD(v507) = v433;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478);
          v437 = sub_2749FDA84();
          v438 = v534;
          if (v437)
          {
            v439 = sub_274797CC0(v416, v70);
            v441 = v523;
            if ((v507 & 1) != (v440 & 1))
            {
              goto LABEL_177;
            }

            v442 = v439;
          }

          else
          {
            v441 = v523;
            v442 = v436;
          }

          OUTLINED_FUNCTION_81_2();
          *(v444 + v431) = v438;
          if (v445)
          {
          }

          else
          {
            sub_274972654(&v534);
            v446 = OUTLINED_FUNCTION_41_12();
            sub_2748FB298(v446, v447, v70, v448, v438);
          }

          v429 = v517;
          v420 = v441;
          v421 = (*(v438 + 56) + 8 * v442);
          v449 = v441;
          v450 = OUTLINED_FUNCTION_228();
          sub_274765168(v450);
          v451 = v534;
          swift_endAccess();

          v507 = sub_274972654;
          OUTLINED_FUNCTION_230();
LABEL_166:
          v452 = v524;
          OUTLINED_FUNCTION_266(&v531);
          OUTLINED_FUNCTION_10_3();
          v28 = (v421 + v452);
          v345 = sub_274973FF0();
          swift_endAccess();

          OUTLINED_FUNCTION_8_2();
          v453 = OUTLINED_FUNCTION_208();
          v454(v453);
          OUTLINED_FUNCTION_155_0();
          v346 = v429;
        }

        else
        {
          OUTLINED_FUNCTION_8_2();
          v387 = OUTLINED_FUNCTION_208();
          v388(v387);

          OUTLINED_FUNCTION_155_0();
          v346 = v517;
        }
      }
    }

    while (1)
    {
      v361 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v361 >= v358)
      {
        v366 = v70;
        v360 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        OUTLINED_FUNCTION_117_0(&v514);
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v409, v410, v411, v412);
        v349 = 0;
        goto LABEL_133;
      }

      v349 = *(v346 + 8 * v361);
      ++v29;
      if (v349)
      {
        v359 = v70;
        v360 = v57;
        v29 = v361;
        goto LABEL_132;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    OUTLINED_FUNCTION_113_3();
    v340 = swift_allocObject();
    *(v340 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v340, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();
  }
}

void sub_274971E2C(void *a1, void *a2)
{
  [a1 setFrame_];
  if (*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC8)) == 1)
  {
    [a1 setAlpha_];
    CGAffineTransformMakeScale(&v21, 0.5, 0.5);
    tx = v21.tx;
    ty = v21.ty;
    v18 = *&v21.c;
    v19 = *&v21.a;
    [a1 bounds];
    Height = CGRectGetHeight(v22);
    *&v21.a = v19;
    *&v21.c = v18;
    v21.tx = tx;
    v21.ty = ty;
    CGAffineTransformTranslate(&v20, &v21, 0.0, Height * -0.175);
    v21 = v20;
    [a1 setTransform_];
    v7 = sub_27471CF08(0, &qword_280969480);
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = sub_27480D818();
    v9 = sub_2749FD184();
    OUTLINED_FUNCTION_164();

    v10 = sub_2749FD034();
    OUTLINED_FUNCTION_164();

    v11 = sub_2749FD034();
    OUTLINED_FUNCTION_164();

    v12 = sub_2749FCD64();
    [v8 setValue:v12 forKey:*MEMORY[0x277CDA4E8]];

    v13 = sub_2749FCD64();
    OUTLINED_FUNCTION_164();

    v14 = [a1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
    OUTLINED_FUNCTION_113_3();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_274A0EF10;
    *(v15 + 56) = v7;
    *(v15 + 32) = v8;
    v16 = v8;
    v17 = sub_2749FCF74();

    [v14 setFilters_];
  }
}

BOOL sub_2749720D0(char a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v22) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v10, v9, &qword_280967DB0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8);
  v12 = sub_2749F9524();
  v13 = *(*(v11 - 8) + 8);
  v13(v9, v11);
  v14 = sub_2748557C8(a1 & 1, v12);
  v16 = v15;

  if (v16)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v10, v9, &qword_280967DB0);
  v17 = sub_2749F9524();
  v13(v9, v11);
  v18 = sub_2748557C8(BYTE4(v22) & 1, v17);
  v20 = v19;

  return (v20 & 1) == 0 && v14 < v18;
}

BOOL sub_2749722A8(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v22) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v10, v9, &unk_280968DC0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
  v12 = sub_2749F9524();
  v13 = *(*(v11 - 8) + 8);
  v13(v9, v11);
  v14 = sub_27484F9C4(a1, v12);
  v16 = v15;

  if (v16)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v10, v9, &unk_280968DC0);
  v17 = sub_2749F9524();
  v13(v9, v11);
  v18 = sub_27484F9C4(BYTE4(v22), v17);
  v20 = v19;

  return (v20 & 1) == 0 && v14 < v18;
}

BOOL sub_27497247C(char a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v22) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v10, v9, &qword_280967E30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
  v12 = sub_2749F9524();
  v13 = *(*(v11 - 8) + 8);
  v13(v9, v11);
  v14 = sub_2748557C8(a1 & 1, v12);
  v16 = v15;

  if (v16)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v10, v9, &qword_280967E30);
  v17 = sub_2749F9524();
  v13(v9, v11);
  v18 = sub_2748557C8(BYTE4(v22) & 1, v17);
  v20 = v19;

  return (v20 & 1) == 0 && v14 < v18;
}

void sub_274972654(void *a1@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_2749FD844())
  {
    sub_2747B0198(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *a1 = v2;
}

uint64_t sub_2749726B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88);
  sub_274772930();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_16();
  sub_27496267C(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  sub_274962804(inited, 0, &qword_280967E38, &unk_274A10138, sub_274976A58, sub_2747829CC);
  swift_setDeallocating();
  sub_2747A34C8();

  sub_274962804(v2, 1, &qword_280967E38, &unk_274A10138, sub_274976A58, sub_2747829CC);
}

uint64_t sub_27497280C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88);
  sub_274772930();
  sub_2749F9594();

  OUTLINED_FUNCTION_13_28();
  sub_274962804(v0, 1, v1, v2, v3, sub_2747829CC);
}

void sub_2749728C4()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_19();
  v9 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88);
    sub_274772930();
    sub_2749F9594();
    sub_27496267C(&unk_28838FD80);
    sub_2747B9BAC(v4, v2);
    v11 = v10;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v31 = v6;
      v32 = MEMORY[0x277D84F90];
      sub_27476D858();
      v13 = v32;
      v14 = (v11 + 32);
      v15 = *(v32 + 16);
      v16 = 24 * v15;
      do
      {
        v18 = *v14++;
        v17 = v18;
        v19 = v15 + 1;
        if (v15 >= *(v32 + 24) >> 1)
        {
          sub_27476D858();
        }

        *(v32 + 16) = v19;
        v20 = v32 + v16;
        *(v20 + 32) = v17;
        *(v20 + 40) = 0;
        *(v20 + 48) = 1;
        v16 += 24;
        v15 = v19;
        --v12;
      }

      while (v12);
      v6 = v31;
    }

    OUTLINED_FUNCTION_13_28();
    sub_274962804(v13, 1, v21, v22, v23, sub_2747829CC);

    v24 = *(v11 + 16);

    if (!v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A0EF10;
      *(inited + 32) = xmmword_274A11F60;
      *(inited + 48) = 2;
      OUTLINED_FUNCTION_13_28();
      sub_274962804(v26, 1, v27, v28, v29, sub_2747829CC);
      swift_setDeallocating();
      sub_2747A34C8();
    }

    sub_2747D31F8(v0, v6, &qword_280967E30);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    sub_27497280C();
  }
}

void sub_274972B84()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D80);
  OUTLINED_FUNCTION_43();
  v30 = v14;
  v31 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistryCancellable] = 0;
  v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear] = 0;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_allSymbolItems] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView] = v6;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_collection] = v4;
  v18 = qword_2815A0A40;
  v19 = v6;
  v32 = v4;

  if (v18 != -1)
  {
    swift_once();
  }

  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistry] = qword_2815A0A48;
  v20 = type metadata accessor for WFCollectionConfigurationDataSource();
  v34.receiver = v0;
  v34.super_class = v20;

  v21 = objc_msgSendSuper2(&v34, sel_init);
  OUTLINED_FUNCTION_10_3();
  v22 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  sub_2749FA8D4();
  swift_endAccess();

  sub_27471CF08(0, &qword_28159E4E0);
  v23 = sub_2749FD404();
  v33 = v23;
  v24 = sub_2749FD3E4();
  OUTLINED_FUNCTION_86_2(v24);
  sub_27472ABB4(&qword_280967D90, &qword_280967D78);
  sub_27477ACFC();
  sub_2749FA954();
  sub_27472ECBC(v1, &qword_28096B180);

  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_86();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_32_2();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v19;
  sub_27472ABB4(&qword_280967DA0, &qword_280967D80);
  v27 = v19;
  v28 = v31;
  v29 = sub_2749FA974();

  (*(v30 + 8))(v17, v28);
  *&v22[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistryCancellable] = v29;

  OUTLINED_FUNCTION_46();
}

uint64_t sub_274972FB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_2749730C4(v1);
    *&v3[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_allSymbolItems] = v4;

    sub_2749733FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0EF10;

    v6 = sub_27478FCD4();

    *(inited + 32) = v6;
    *(inited + 40) = 0;
    *(inited + 48) = 1;
    sub_27477A58C(inited, 0, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);

    swift_setDeallocating();
    return sub_2747A34C8();
  }

  return result;
}

void sub_2749730C4(uint64_t a1)
{
  v2 = type metadata accessor for WFGlyphCategory();
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v35 = *(a1 + 16);
  if (!v35)
  {
    return;
  }

  v7 = 0;
  v8 = *(v3 + 80);
  v33 = *(v3 + 72);
  v34 = a1 + ((v8 + 32) & ~v8);
  v32 = v2;
  while (1)
  {
    sub_2749768E8(v34 + v33 * v7, v5);
    v9 = &v5[*(v2 + 20)];
    v11 = *v9;
    v10 = *(v9 + 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2747643D4();
      v6 = v28;
    }

    v12 = *(v6 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_2747643D4();
      v6 = v29;
    }

    *(v6 + 16) = v13;
    v14 = v6 + 24 * v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    *(v14 + 48) = 0;
    v15 = *&v5[*(v2 + 24)];
    v16 = *(v15 + 16);
    if (v16)
    {
      v36 = MEMORY[0x277D84F90];
      sub_27476D858();
      v17 = v36;
      v18 = (v15 + 32);
      v19 = *(v36 + 16);
      v20 = 24 * v19;
      do
      {
        v22 = *v18++;
        v21 = v22;
        v36 = v17;
        if (v19++ >= *(v17 + 24) >> 1)
        {
          sub_27476D858();
          v17 = v36;
        }

        *(v17 + 16) = v19;
        v24 = v17 + v20;
        *(v24 + 32) = v21;
        *(v24 + 40) = 0;
        *(v24 + 48) = 1;
        v20 += 24;
        --v16;
      }

      while (v16);
      v13 = *(v6 + 16);
      v2 = v32;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      v19 = *(MEMORY[0x277D84F90] + 16);
    }

    if (__OFADD__(v13, v19))
    {
      break;
    }

    if ((v13 + v19) > *(v6 + 24) >> 1)
    {
      sub_2747643D4();
      v6 = v30;
      v13 = *(v30 + 16);
      if (*(v17 + 16))
      {
LABEL_17:
        if (((*(v6 + 24) >> 1) - v13) < v19)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v25 = *(v6 + 16);
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_28;
          }

          *(v6 + 16) = v27;
        }

        goto LABEL_23;
      }
    }

    else if (v19)
    {
      goto LABEL_17;
    }

    if (v19)
    {
      goto LABEL_26;
    }

LABEL_23:
    ++v7;
    sub_274976940();
    if (v7 == v35)
    {
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_27497342C()
{
  OUTLINED_FUNCTION_49_2();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_29_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  v9 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView);
  v3();
  sub_274966138(v1, v5);

  OUTLINED_FUNCTION_7_16();
  sub_27472ECBC(v10, v11);
  OUTLINED_FUNCTION_50_0();
}

void sub_2749734E4()
{
  OUTLINED_FUNCTION_49_2();
  v2 = OUTLINED_FUNCTION_29_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_3();
  v5 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView);
  OUTLINED_FUNCTION_45();
  sub_2749728C4();
  sub_274966138(v1, 0);

  OUTLINED_FUNCTION_7_16();
  sub_27472ECBC(v6, v7);
  OUTLINED_FUNCTION_50_0();
}

void sub_27497359C()
{
  OUTLINED_FUNCTION_48();
  v61 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_59_0();
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v59 = v8;
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v58 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  if (!v2)
  {
    if (!OUTLINED_FUNCTION_286("IconPickerHeaderView"))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_59_0();
    type metadata accessor for WFIconPickerHeaderView();
    OUTLINED_FUNCTION_3();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_24_0();
      sub_274885D4C(v30, v31, v32);
      v33 = OUTLINED_FUNCTION_24_0();
      sub_274976098(v33, v34, v29);
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v6 | v4)
    {
      sub_274969CF0(0xD000000000000016, 0x8000000274A2B070);
      goto LABEL_18;
    }

    v57 = v24;
    if (!sub_274969CF0(0xD00000000000002DLL, 0x8000000274A2B900))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_134();
    type metadata accessor for WFCollectionNameFieldCell();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {

      goto LABEL_18;
    }

    v54 = v6;
    v55 = OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_collection;

    v36 = sub_27478FDB8();
    v38 = v37;

    v39 = (v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
    *v39 = v36;
    v39[1] = v38;

    sub_27481FB98();
    OUTLINED_FUNCTION_86();
    v40 = swift_allocObject();
    v41 = v61;
    swift_unknownObjectWeakInit();
    v42 = (v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
    v56 = *(v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
    *v42 = sub_274976150;
    v42[1] = v40;

    sub_27471F8A4(v56);

    if (v41[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear])
    {
      goto LABEL_18;
    }

    v56 = OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear;
    v43 = *&v55[v41];

    sub_27478FDB8();
    OUTLINED_FUNCTION_34_1();

    if (v43 || v40 != 0xE000000000000000)
    {
      OUTLINED_FUNCTION_32_1();
      v44 = sub_2749FDCC4();

      if ((v44 & 1) == 0)
      {
LABEL_22:
        v61[v56] = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_27471CF08(0, &qword_28159E4E0);
    v53 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v45 = *(v57 + 8);
    v57 += 8;
    v55 = v45;
    (v45)(v22, v18);
    OUTLINED_FUNCTION_86();
    v46 = swift_allocObject();
    *(v46 + 16) = v35;
    v62[4] = sub_274976158;
    v62[5] = v46;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 1107296256;
    v62[2] = sub_274760264;
    v62[3] = &block_descriptor_45;
    v52 = _Block_copy(v62);
    v47 = v54;

    sub_2749FCA94();
    v62[0] = MEMORY[0x277D84F90];
    sub_274720F90(&qword_28159E580, MEMORY[0x277D85198]);
    v48 = OUTLINED_FUNCTION_32_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v48);
    sub_27472ABB4(&qword_28159E530, &unk_28096DB60);
    v49 = v60;
    sub_2749FD7B4();
    v51 = v52;
    v50 = v53;
    MEMORY[0x277C5F120](v26, v17, v11, v52);
    _Block_release(v51);

    (*(v59 + 8))(v11, v49);
    (*(v58 + 8))(v17, v12);
    (v55)(v26, v18);
    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_286("IconPickerSymbolCell"))
  {
    OUTLINED_FUNCTION_59_0();
    type metadata accessor for WFIconPickerSymbolCell();
    OUTLINED_FUNCTION_3();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
      sub_2749775FC(v28, 1);

      LOWORD(v28) = sub_27478FCD4();

      *(v27 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = v6 == v28;
      sub_274977DCC();
      goto LABEL_18;
    }

LABEL_11:
  }

LABEL_18:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274973C18()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_27478FE2C();
  }

  return result;
}

id sub_274973CAC(int a1, id a2)
{
  result = [a2 isFirstResponder];
  if (result)
  {
    sub_2749760F0(a2);
    sub_2749734E4();
  }

  return result;
}

void sub_274973D20(uint64_t a1, void *a2)
{
  v2 = sub_2749760F0(a2);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_5:

    sub_274973414();
  }
}

double sub_274973DA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      return 50.0;
    }

    if (!(a1 | a2))
    {
      return 54.0;
    }

    if (qword_280966BF0 != -1)
    {
      swift_once();
    }

    return *&qword_2809891A0;
  }

  else
  {
    if (qword_280966C10 != -1)
    {
      swift_once();
    }

    [qword_2809891C8 lineHeight];
    return v4 + 12.0;
  }
}

double sub_274973E68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return 50.0;
  }

  return result;
}

id sub_274973EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFCollectionConfigurationDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274973FF0()
{
  v1 = v0;
  v2 = sub_274797E40();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE0);
  sub_2749FDA84();
  v5 = *(v12 + 48);
  v6 = sub_2749F9284();
  OUTLINED_FUNCTION_9();
  (*(v7 + 8))(v5 + *(v7 + 72) * v4, v6);
  v8 = *(*(v12 + 56) + 8 * v4);
  type metadata accessor for WFGridViewCell();
  OUTLINED_FUNCTION_2_47();
  sub_274720F90(v9, v10);
  OUTLINED_FUNCTION_7_16();
  sub_2749FDAA4();
  *v1 = v12;
  return v8;
}

void sub_274974114(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_2749FD844())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2749FD804();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
    sub_27472ABB4(&qword_2809688C0, &qword_280967A10);
    sub_2749FD174();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_274730F8C();
      return;
    }

    while (1)
    {
      v16 = sub_274770A04(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2749FD874())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_274974358(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_274770B38(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_27497444C()
{
  OUTLINED_FUNCTION_49_2();
  if (*(*v0 + 16))
  {
    v3 = v2;
    v4 = v1;
    v5 = v1 + 56;
    OUTLINED_FUNCTION_19_22();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    if (!v8)
    {
      goto LABEL_4;
    }

    do
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v3(*(*(v4 + 48) + (v13 | (v12 << 6))));
    }

    while (v8);
    while (1)
    {
LABEL_4:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

char *sub_27497453C(uint64_t a1, char *a2)
{
  v4 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 2))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  v55 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2749FD804();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
    v4 = v55;
    sub_27472ABB4(&qword_2809688C0, &qword_280967A10);
    sub_2749FD174();
    v5 = v61;
    v6 = v62;
    v7 = v63;
    i = v64;
    v9 = v65;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    i = 0;
  }

  v47 = v7;
  v13 = (v7 + 64) >> 6;
  v53 = v6;
  v54 = v4 + 56;
  v14 = i;
  v15 = v9;
  v50 = v13;
  v51 = v5;
  if (v5 < 0)
  {
LABEL_16:
    v49 = v9;
    v19 = sub_2749FD874();
    if (!v19)
    {
      goto LABEL_51;
    }

    v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
    swift_dynamicCast();
    v18 = v57;
    v2 = v14;
    v3 = v15;
    if (!v57)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
    v16 = v14;
    v17 = v15;
    for (i = v14; !v17; ++v16)
    {
      i = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_54;
      }

      if (i >= v13)
      {
        goto LABEL_51;
      }

      v17 = *(v6 + 8 * i);
    }

    v3 = (v17 - 1) & v17;
    v18 = *(*(v5 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));
    v2 = i;
    v49 = v3;
    if (!v18)
    {
      goto LABEL_51;
    }
  }

  v52 = i;
  v7 = v18;
  v20 = sub_2749FD5F4();
  v21 = ~(-1 << v4[32]);
  while (1)
  {
    v15 = v20 & v21;
    v6 = (v20 & v21) >> 6;
    v5 = 1 << (v20 & v21);
    if ((v5 & v54[v6]) == 0)
    {

      v14 = v2;
      v15 = v3;
      v5 = v51;
      i = v52;
      v6 = v53;
      v9 = v49;
      v13 = v50;
      if ((v51 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
    v22 = *(*(v4 + 6) + 8 * v15);
    v7 = sub_2749FD604();

    if (v7)
    {
      break;
    }

    v20 = v15 + 1;
    v4 = v55;
  }

  i = v51;
  v58[0] = v51;
  v58[1] = v53;
  v58[2] = v47;
  v59 = v52;
  v60 = v49;

  v4 = v55;
  v24 = *(v55 + 32);
  v44 = ((1 << v24) + 63) >> 6;
  v7 = 8 * v44;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_55;
  }

  while (2)
  {
    v45 = &v43;
    MEMORY[0x28223BE20](v23);
    v25 = &v43 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v54, v7);
    v43 = 0;
    v26 = *&v25[8 * v6] & ~v5;
    v27 = *(v4 + 2);
    v48 = v25;
    *&v25[8 * v6] = v26;
    v28 = v27 - 1;
    v6 = v53;
    v29 = v50;
    while (1)
    {
      v46 = v28;
LABEL_27:
      if ((i & 0x8000000000000000) == 0)
      {
        break;
      }

      v33 = sub_2749FD874();
      if (!v33)
      {
        v2 = v52;
        goto LABEL_50;
      }

      v56 = v33;
      swift_dynamicCast();
      v32 = v57;
      v5 = v55;
      if (!v57)
      {
LABEL_48:
        v2 = v52;
LABEL_50:
        sub_274975F58();
        v4 = v40;
        v52 = v2;
        goto LABEL_51;
      }

LABEL_37:
      v7 = v32;
      v34 = sub_2749FD5F4();
      v35 = ~(-1 << *(v5 + 32));
      do
      {
        v15 = v34 & v35;
        v36 = (v34 & v35) >> 6;
        v37 = 1 << (v34 & v35);
        if ((v37 & v54[v36]) == 0)
        {

          v29 = v50;
          i = v51;
          v6 = v53;
          goto LABEL_27;
        }

        v4 = *(*(v55 + 48) + 8 * v15);
        v7 = sub_2749FD604();

        v34 = v15 + 1;
      }

      while ((v7 & 1) == 0);

      v38 = *&v48[8 * v36];
      *&v48[8 * v36] = v38 & ~v37;
      v39 = (v38 & v37) == 0;
      v29 = v50;
      i = v51;
      v6 = v53;
      if (v39)
      {
        goto LABEL_27;
      }

      v28 = v46 - 1;
      if (__OFSUB__(v46, 1))
      {
        __break(1u);
      }

      if (v46 == 1)
      {

        v4 = MEMORY[0x277D84FA0];
        goto LABEL_51;
      }
    }

    v5 = v55;
    if (v3)
    {
LABEL_33:
      v31 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v32 = *(*(i + 48) + ((v2 << 9) | (8 * v31)));
      v52 = v2;
      v49 = v3;
      if (!v32)
      {
        goto LABEL_48;
      }

      goto LABEL_37;
    }

    while (1)
    {
      v30 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v30);
      ++v2;
      if (v3)
      {
        v2 = v30;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v42 = swift_slowAlloc();
  v4 = sub_274975A24(v42, v44, v54, v44, v4, v15, v58);

  MEMORY[0x277C61040](v42, -1, -1);
  v52 = v59;
LABEL_51:
  sub_274730F8C();
  return v4;
}

uint64_t sub_274974BCC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v40 = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v44 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v13 = 1;
  v46 = a1 + 56;
  v47 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      v15 = (v15 + 1);
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    sub_274730F8C();
    return v3;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v17 = *(*(a1 + 48) + (v16 | (v14 << 6)));
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v17);
  v18 = sub_2749FDE44();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = (v18 & v20);
    v2 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & *(v12 + 8 * v2)) == 0)
    {
      v4 = v14;
      v6 = v46;
      a1 = v47;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(v4 + *(v3 + 48)) == v17)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v50 = v44;
  v51 = v14;
  v52 = v10;
  v49[0] = v47;
  v49[1] = v46;
  v13 = (63 - v19) >> 6;
  v6 = 8 * v13;

  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v41 = v13;
    v42 = &v39;
    MEMORY[0x28223BE20](v21);
    v4 = (&v39 - v22);
    memcpy(&v39 - v22, (v3 + 56), v6);
    v23 = v4[v2] & ~v7;
    v24 = *(v3 + 16);
    v45 = v4;
    v4[v2] = v23;
    v25 = v24 - 1;
    v13 = 1;
    v2 = v46;
    v7 = v47;
LABEL_19:
    v43 = v25;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v27 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v6 = *(*(v7 + 48) + (v27 | (v14 << 6)));
      sub_2749FDDF4();
      v4 = &v48;
      MEMORY[0x277C5FB60](v6);
      v28 = sub_2749FDE44();
      v29 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v30 = v28 & v29;
        v31 = (v28 & v29) >> 6;
        v32 = 1 << (v28 & v29);
        if ((v32 & *(v12 + 8 * v31)) == 0)
        {
          break;
        }

        v28 = v30 + 1;
        if (*(*(v3 + 48) + v30) == v6)
        {
          v33 = v45[v31];
          v45[v31] = v33 & ~v32;
          if ((v33 & v32) == 0)
          {
            goto LABEL_20;
          }

          v25 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
            __break(1u);
          }

          if (v43 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v26 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v26 >= v11)
      {
        v3 = sub_274975BE0(v45, v41, v43, v3);
        goto LABEL_35;
      }

      v10 = *(v2 + 8 * v26);
      ++v14;
      if (v10)
      {
        v14 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v40;
  v37 = sub_274975AAC(v35, v13, (v3 + 56), v13, v3, v4, v49);
  if (!v36)
  {
    v38 = v37;

    MEMORY[0x277C61040](v35, -1, -1);
    v44 = v50;
    v3 = v38;
    goto LABEL_35;
  }

  result = MEMORY[0x277C61040](v35, -1, -1);
  __break(1u);
  return result;
}

void sub_274974FF4()
{
  OUTLINED_FUNCTION_48();
  v6 = v2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(v2 + 16))
  {
    v43 = v5;
    v44 = v3;
    v45 = v4;
    v40 = 0;
    v7 = 0;
    v9 = v1 + 56;
    v8 = *(v1 + 56);
    v10 = -1;
    v11 = -1 << *(v1 + 32);
    v46 = ~v11;
    v47 = v1;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v8;
    v14 = (63 - v11) >> 6;
    v15 = v2 + 56;
    v16 = 1;
    v48 = v1 + 56;
    if ((v12 & v8) != 0)
    {
LABEL_6:
      v17 = v7;
LABEL_11:
      OUTLINED_FUNCTION_202();
      v21 = *(*(v19 + 48) + v20);
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v21);
      v22 = sub_2749FDE44();
      v23 = -1 << *(v6 + 32);
      v24 = ~v23;
      while (1)
      {
        v7 = (v22 & v24);
        v0 = (v22 & v24) >> 6;
        v10 = 1 << (v22 & v24);
        if ((v10 & *(v15 + 8 * v0)) == 0)
        {
          v7 = v17;
          v9 = v48;
          v10 = -1;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (v21 == *(v7 + *(v6 + 48)))
        {
          break;
        }

        v22 = v7 + 1;
      }

      v51 = v46;
      v52 = v17;
      v53 = v13;
      v50[0] = v47;
      v50[1] = v48;
      v16 = (63 - v23) >> 6;
      v9 = 8 * v16;

      if (v16 > 0x80)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v41 = v16;
        v42 = &v40;
        MEMORY[0x28223BE20](v25);
        v16 = &v40 - v26;
        memcpy(&v40 - v26, (v6 + 56), v9);
        v27 = *(v6 + 16);
        *(v16 + 8 * v0) &= ~v10;
        v28 = (v27 - 1);
        v9 = 1;
        v10 = v47;
        v0 = v48;
        while (1)
        {
          v43 = v28;
LABEL_20:
          if (!v13)
          {
            break;
          }

LABEL_25:
          OUTLINED_FUNCTION_202();
          v31 = *(*(v10 + 48) + v30);
          sub_2749FDDF4();
          v7 = &v49;
          MEMORY[0x277C5FB60](v31);
          v32 = sub_2749FDE44();
          v33 = ~(-1 << *(v6 + 32));
          do
          {
            v34 = v32 & v33;
            v35 = (v32 & v33) >> 6;
            v36 = 1 << (v32 & v33);
            if ((v36 & *(v15 + 8 * v35)) == 0)
            {
              v0 = v48;
              goto LABEL_20;
            }

            v32 = v34 + 1;
          }

          while (v31 != *(*(v6 + 48) + v34));
          v37 = *(v16 + 8 * v35);
          *(v16 + 8 * v35) = v37 & ~v36;
          v0 = v48;
          if ((v37 & v36) == 0)
          {
            goto LABEL_20;
          }

          v28 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
            __break(1u);
          }

          if (v43 == 1)
          {

            goto LABEL_35;
          }
        }

        while (1)
        {
          v29 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v29 >= v14)
          {
            sub_274975DE0(v16, v41, v43, v6, v44);
            goto LABEL_35;
          }

          v13 = *(v0 + 8 * v29);
          ++v17;
          if (v13)
          {
            v17 = v29;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v38 = swift_slowAlloc();
      v39 = v40;
      (v43)(v38, v16, v6 + 56, v16, v6, v7, v50);
      if (v39)
      {

        OUTLINED_FUNCTION_31();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_78();

      OUTLINED_FUNCTION_31();
      v46 = v51;
LABEL_35:
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
LABEL_7:
      v18 = v7;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_41;
        }

        if (v17 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v17);
        v18 = (v18 + 1);
        if (v13)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_157_0();
    }

    sub_274730F8C();
  }

  else
  {
  }

  OUTLINED_FUNCTION_46();
}

void sub_274975400(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v25 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2749FD874())
      {
        goto LABEL_25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
      swift_dynamicCast();
      v13 = v28;
      if (!v28)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_274975F58();
      return;
    }

LABEL_15:
    v16 = sub_2749FD5F4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_2749FD604();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = *(a1 + 8 * v19);
    *(a1 + 8 * v19) = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_27;
    }

    if (v25 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_27497564C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + (__clz(__rbit64(v12)) | (v13 << 6)));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v14);
    result = sub_2749FDE44();
    v15 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = 1 << (result & v15);
      if ((v18 & *(v10 + 8 * v17)) == 0)
      {
        break;
      }

      result = v16 + 1;
      if (*(*(a3 + 48) + v16) == v14)
      {
        v19 = v7[v17];
        v7[v17] = v19 & ~v18;
        if ((v19 & v18) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      return sub_274975BE0(v7, a2, v9, a3);
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2749757E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  v12 = MEMORY[0x277D84FA0];
LABEL_2:
  v25 = v10;
LABEL_3:
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_8:
    v16 = *(*(*a5 + 48) + (__clz(__rbit64(v14)) | (v15 << 6)));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v16);
    result = sub_2749FDE44();
    v17 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v18 = result & v17;
      v19 = (result & v17) >> 6;
      v20 = 1 << (result & v17);
      if ((v20 & *(v11 + 8 * v19)) == 0)
      {
        break;
      }

      result = v18 + 1;
      if (v16 == *(*(a3 + 48) + v18))
      {
        v21 = *(v8 + 8 * v19);
        *(v8 + 8 * v19) = v21 & ~v20;
        if ((v21 & v20) == 0)
        {
          goto LABEL_3;
        }

        v10 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          goto LABEL_18;
        }

        if (v25 != 1)
        {
          goto LABEL_2;
        }

        return v12;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    if (v15 >= ((a5[2] + 64) >> 6))
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  a5[3] = v13;
  a5[4] = 0;

  sub_274975DE0(v8, a2, v25, a3, a6);
  return v22;
}

uint64_t sub_27497598C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2749757E0(a1, a2, a5, a6, a7, &qword_280967A20);

  return v12;
}

uint64_t sub_274975A24(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_274975400(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_274975AAC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_27497564C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_274975B34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2749757E0(a1, a2, a5, a6, a7, &qword_280967900);

  return v12;
}

uint64_t sub_274975BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967978);
  result = sub_2749FD914();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v16);
    result = sub_2749FDE44();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

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

void sub_274975DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      OUTLINED_FUNCTION_292(a1, a2, a3, a4, a5);
      OUTLINED_FUNCTION_96();
      v8 = sub_2749FD914();
      if (v5 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *v6;
      }

      v10 = 0;
      while (v9)
      {
        OUTLINED_FUNCTION_277();
LABEL_16:
        v13 = *(*(a4 + 48) + (v11 | (v10 << 6)));
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v13);
        sub_2749FDE44();
        OUTLINED_FUNCTION_114_2();
        if (v14)
        {
          OUTLINED_FUNCTION_30_1();
          while (++v16 != v18 || (v17 & 1) == 0)
          {
            v19 = v16 == v18;
            if (v16 == v18)
            {
              v16 = 0;
            }

            v17 |= v19;
            if (*(v8 + 56 + 8 * v16) != -1)
            {
              OUTLINED_FUNCTION_29_0();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_31_1();
LABEL_25:
        OUTLINED_FUNCTION_125_2(v15);
        *(v21 + v20) = v13;
        OUTLINED_FUNCTION_248();
        if (v22)
        {
          goto LABEL_29;
        }
      }

      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v5)
        {
          goto LABEL_5;
        }

        ++v12;
        if (v6[v10])
        {
          OUTLINED_FUNCTION_276();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_274975F58()
{
  OUTLINED_FUNCTION_48();
  v7 = v5;
  if (!v4)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v5 + 16) == v4)
  {
LABEL_6:
    OUTLINED_FUNCTION_46();
    return;
  }

  OUTLINED_FUNCTION_292(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_96();
  v8 = sub_2749FD914();
  if (v0 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v1;
  }

  v10 = 0;
  v11 = v8 + 56;
  while (v9)
  {
    OUTLINED_FUNCTION_277();
LABEL_16:
    v14 = *(*(v7 + 48) + 8 * (v12 | (v10 << 6)));
    sub_2749FD5F4();
    OUTLINED_FUNCTION_114_2();
    if (v15)
    {
      OUTLINED_FUNCTION_30_1();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v11 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_29_0();
          goto LABEL_25;
        }
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_25:
    OUTLINED_FUNCTION_125_2(v16);
    *(v22 + 8 * v21) = v14;
    OUTLINED_FUNCTION_248();
    if (v23)
    {
      goto LABEL_29;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v0)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v1[v10])
    {
      OUTLINED_FUNCTION_276();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_274976098(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setAccessibilityLabel_];
}

uint64_t sub_2749760F0(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_274976274(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_27(v4);
  OUTLINED_FUNCTION_51_6();
  v6 = *(v3 + 16);
  v8 = *(v3 + v7);
  v9 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v8, v9);
}

uint64_t objectdestroy_31Tm_0()
{
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_289();
  v3 = OUTLINED_FUNCTION_170();
  v4(v3);

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2749765C8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, __n128, __n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_27(v4);
  OUTLINED_FUNCTION_51_6();
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8.n128_u64[0] = *(v3 + v6);
  v9 = *(v3 + v7);
  v10.n128_u64[0] = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v3 + 16);

  return a3(v11, v3 + v5, v9, v8, v10);
}

uint64_t objectdestroy_34Tm(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_43();
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 24) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = OUTLINED_FUNCTION_170();
  v7(v6);

  return MEMORY[0x2821FE8E8](v1, v5 + 8, v3 | 7);
}

uint64_t sub_274976750(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_27(v6);
  OUTLINED_FUNCTION_51_6();
  v8 = *(v4 + 16);
  v10 = *(v4 + v9);

  return a4(a1, v8, v4 + v7, v10);
}

uint64_t objectdestroy_22Tm_0()
{
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_289();
  v4 = OUTLINED_FUNCTION_170();
  v5(v4);

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2749768E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274976940()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

void OUTLINED_FUNCTION_49_9()
{
  v3 = *(v1 - 408);
  v4 = *(v1 - 400);

  sub_274772984(v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_87_3()
{
  *(v3 - 232) = *(*(v2 + 48) + (__clz(__rbit64(v0)) | (v1 << 6)));

  return sub_2749F95D4();
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_102_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1)
{

  return sub_274772E24(a1, v1, v2);
}

double OUTLINED_FUNCTION_141_0(CGRect rect)
{

  return CGRectGetMaxY(rect);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_143_1()
{

  return sub_2749FDA84();
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v2 = *(v0 - 536);

  return sub_27471F8A4(v2);
}

id OUTLINED_FUNCTION_164()
{

  return [v0 (v2 + 3192)];
}

uint64_t OUTLINED_FUNCTION_175()
{
  v2 = *(v0 - 872);
  v3 = *(v0 - 864);
  v4 = *(v0 - 876);

  return sub_274772E24(v2, v3, v4);
}

void OUTLINED_FUNCTION_176()
{
  v2 = *(v0 - 880);
  v3 = *(v0 - 872);
  v4 = *(v0 - 860);

  sub_274772984(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_177()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_215@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 280) = a1;
  return *(v2 - 592);
}

__n128 OUTLINED_FUNCTION_216@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 312) = a1;
  return *(v2 - 544);
}

uint64_t OUTLINED_FUNCTION_217@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 256) = a2;
  *(v3 - 488) = a1;
}

void *OUTLINED_FUNCTION_218@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return _Block_copy((v1 - 280));
}

void OUTLINED_FUNCTION_222(uint64_t a1@<X8>)
{
  *(v2 + *(a1 - 256)) = v6;
  *(v2 + v1) = v4;
  *(v2 + v3) = v5;
}

uint64_t OUTLINED_FUNCTION_286@<X0>(uint64_t a1@<X8>)
{

  return sub_274969CF0(0xD000000000000014, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_287()
{
  v2 = *(v0 - 968);

  return sub_27471F8A4(v2);
}

uint64_t OUTLINED_FUNCTION_288()
{
}

uint64_t OUTLINED_FUNCTION_289()
{
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_2749F9524();
}

uint64_t OUTLINED_FUNCTION_291()
{
}

uint64_t OUTLINED_FUNCTION_292(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t OUTLINED_FUNCTION_294()
{

  return sub_2749FA3D4();
}

id sub_27497759C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];

  return sub_27497854C();
}

void sub_2749775FC(void *a1, char a2)
{
  v3 = v2;
  v5 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon];
  *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon] = a1;
  v6 = a1;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = v6;
  [v8 glyph];
  v10 = WFSystemImageNameForGlyphCharacter();
  if (!v10)
  {

LABEL_6:
    v23 = v6;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = v13;

  if (a2)
  {
    v15 = sub_27486D008(v12, v14);
    v17 = v16;

    v18 = [objc_opt_self() clearColor];
    v19 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v20 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v21 = v15;
    v22 = v17;
  }

  else
  {
    v24 = [objc_opt_self() clearColor];
    v19 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v25 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v21 = v12;
    v22 = v14;
  }

  v23 = sub_27491A250(v21, v22, v19);

LABEL_9:
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    sub_2749F9F84();
    v59 = v23;
    v28 = [v27 symbolName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    v29 = [v3 traitCollection];
    [v29 displayScale];

    sub_2749F9F74();
    v31 = v30;

    v32 = [v27 symbolName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_2749F9F64();
    v34 = v33;
    v36 = v35;

    v37 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
    sub_27486D4F8();
    v38 = [v27 symbolName];
    v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v41 = v40;

    v42 = [objc_opt_self() systemFontOfSize:v31 weight:*MEMORY[0x277D74410]];
    v43 = [objc_opt_self() configurationWithFont_];

    v44 = sub_274977C3C(v39, v41, v43);
    [v37 setImage_];

    CGAffineTransformMakeTranslation(&aBlock, v34, v36);
    sub_27497759C(&aBlock);

LABEL_11:

    return;
  }

  v45 = objc_opt_self();
  v59 = v23;
  v46 = [v45 loadIcon:v59 size:0 style:{40.0, 40.0}];
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();

  v48 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  if (!v47)
  {
    if (v46)
    {
      v58 = [v46 imageWithRenderingMode_];
    }

    else
    {
      v58 = 0;
    }

    [v48 setImage_];

    goto LABEL_11;
  }

  [*&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView] setImage_];
  v49 = [v47 bundleIdentifier];
  if (!v49)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v49 = sub_2749FCD64();
  }

  v50 = objc_opt_self();
  v51 = [objc_opt_self() currentDevice];
  [v51 screenScale];
  v53 = v52;

  OUTLINED_FUNCTION_86();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v47;
  *&aBlock.tx = sub_274978A5C;
  *&aBlock.ty = v55;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_27486FE60;
  *&aBlock.d = &block_descriptor_46;
  v56 = _Block_copy(&aBlock);
  v57 = v59;

  [v50 applicationIconImageForBundleIdentifier:v49 length:v56 scale:40.0 completionHandler:v53];

  _Block_release(v56);
}

id sub_274977C3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

void sub_274977CBC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon);
    if (v7)
    {
      v8 = v7 == a3;
    }

    else
    {
      v8 = 0;
    }

    if (v8 && a1 != 0)
    {
      v10 = objc_allocWithZone(MEMORY[0x277D79FD0]);
      v11 = a1;
      v12 = [v10 initWithImage_];
      v13 = [objc_opt_self() loadIcon:v12 size:0 style:{40.0, 40.0}];
      [*&v6[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView] setImage_];

      v6 = v13;
    }
  }
}

id sub_274977DCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  if (v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected] == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemBlueColor];
    [v2 setTintColor_];

    v5 = [v3 systemBlueColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    v8 = sub_2747CA0C4(sub_274977F24, 0);
    [v2 setTintColor_];

    v6 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor_];

  return sub_27497854C();
}

id sub_274977F24(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 systemGray2Color];
    v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v5 = [v3 resolvedColorWithTraitCollection_];

    return v5;
  }

  else
  {
    v7 = [v2 systemGrayColor];

    return v7;
  }
}

char *sub_274978008(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = &v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *v10 = *MEMORY[0x277CBF2C0];
  v10[1] = v12;
  v10[2] = *(v11 + 32);
  *&v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon] = 0;
  v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected] = 0;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for WFIconPickerSymbolCell();
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  v15 = *&v13[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  v16 = v13;
  [v15 setContentMode_];
  v17 = *&v13[v14];
  v18 = v16;
  [v18 addSubview_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [v18 layer];
  [v20 setCornerCurve_];

  v21 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  [v21 setMinimumPressDuration_];
  v22 = v21;
  [v22 addTarget:v18 action:sel_handleTap_];
  [v22 setDelegate_];

  [v18 addGestureRecognizer_];
  [v18 setIsAccessibilityElement_];

  return v18;
}

void sub_27497824C(void *a1)
{
  if ([a1 state] == 1)
  {
    OUTLINED_FUNCTION_86();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v4 = v1;
    v5 = sub_2747B68DC;
    v6 = 0.05;
  }

  else
  {
    if ([a1 state] != 3)
    {
      [v1 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [a1 locationInView_];
      v20.x = v15;
      v20.y = v16;
      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      if (CGRectContainsPoint(v21, v20))
      {
        return;
      }
    }

    OUTLINED_FUNCTION_86();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v17 = v1;
    v5 = sub_2747B68F4;
    v6 = 0.6;
  }

  v18 = sub_27480FE78(v5, v3, v6, 1.0);
  [v18 startAnimation];
}

id sub_27497845C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WFIconPickerSymbolCell();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform + 16];
  v4[0] = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v4[1] = v2;
  v4[2] = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform + 32];
  return [v1 setTransform_];
}

id sub_27497854C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon];
  if (!v2)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    [v4 glyph];
    v6 = WFNameForGlyphCharacter();
    if (!v6)
    {
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v7 = sub_2749FCD64();
      v8 = sub_2749FCD64();

      v6 = OUTLINED_FUNCTION_56(v9, sel_localizedStringForKey_value_table_);
    }

    v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v12 = v11;

    sub_2749789F8(v10, v12, v1);
    goto LABEL_15;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_14:
    [v1 setAccessibilityLabel_];
    goto LABEL_15;
  }

  v14 = v13;
  sub_2749F93D4();
  v15 = v2;
  sub_2749F93C4();
  v16 = [v14 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  v17 = sub_2749F93B4();
  v19 = v18;

  if (!v19)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v20 = sub_2749FCD64();
    v21 = sub_2749FCD64();

    v23 = OUTLINED_FUNCTION_56(v22, sel_localizedStringForKey_value_table_);

    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v24;
  }

  sub_2749789F8(v17, v19, v1);

LABEL_15:
  v25 = *MEMORY[0x277D76548];
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected))
  {
    v26 = *MEMORY[0x277D76598];
  }

  else
  {
    v26 = 0;
  }

  return [v1 setAccessibilityTraits_];
}

void sub_274978838()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = MEMORY[0x277CBF2C0];
  v3 = (v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *v3 = *MEMORY[0x277CBF2C0];
  v3[1] = v4;
  v3[2] = *(v2 + 32);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_274978914()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon);
}

id sub_274978954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPickerSymbolCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2749789F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setAccessibilityLabel_];
}

void _BTSessionEvent(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if (!(a3 | a2))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v6 = 0;
    BTLocalDeviceGetDefault();
    BTSessionDetachWithQueue();
    [a4 finishWithDevices:v5];
  }
}

void sub_2749793C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL WFShouldRedrawIconForTraitCollectionChange(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 userInterfaceStyle];
  v6 = [v3 userInterfaceStyle];
  v7 = [v4 accessibilityContrast];

  v8 = [v3 accessibilityContrast];
  return v5 != v6 || v7 != v8;
}

Class initHUTriggerActionFlow()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerActionFlow");
  classHUTriggerActionFlow = result;
  getHUTriggerActionFlowClass = HUTriggerActionFlowFunction;
  return result;
}

void *__HomeUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib = result;
  return result;
}

Class initHUTriggerSummaryViewController()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerSummaryViewController");
  classHUTriggerSummaryViewController = result;
  getHUTriggerSummaryViewControllerClass = HUTriggerSummaryViewControllerFunction;
  return result;
}

Class initHUTriggerBuilderContext()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerBuilderContext");
  classHUTriggerBuilderContext = result;
  getHUTriggerBuilderContextClass = HUTriggerBuilderContextFunction;
  return result;
}

Class initHFTriggerBuilder()
{
  if (HomeLibrary_sOnce != -1)
  {
    dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_513);
  }

  result = objc_getClass("HFTriggerBuilder");
  classHFTriggerBuilder = result;
  getHFTriggerBuilderClass = HFTriggerBuilderFunction;
  return result;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

Class initHFTriggerItem()
{
  if (HomeLibrary_sOnce != -1)
  {
    dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_513);
  }

  result = objc_getClass("HFTriggerItem");
  classHFTriggerItem = result;
  getHFTriggerItemClass = HFTriggerItemFunction;
  return result;
}

uint64_t __WFAutomationsSortForUI_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 trigger];
  v8 = [v6 trigger];
  v9 = *(a1 + 32);
  v10 = [v9 indexOfObject:objc_opt_class()];
  v11 = [v9 indexOfObject:objc_opt_class()];

  if (v10 == v11)
  {

    v12 = [v5 trigger];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v6 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [v5 trigger];
        v8 = [v6 trigger];
        v15 = [v7 event];
        v16 = [v8 event];
        if (!(v15 | v16) || v15 == 1 && v16 == 1)
        {
          v17 = [v7 timeOffset];
          v18 = [v8 timeOffset];
          v19 = -1;
          if (v17 >= v18)
          {
            v19 = 1;
          }

          if (v17 == v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }

          goto LABEL_23;
        }

        if (!v15 && v16)
        {
          goto LABEL_26;
        }

        v26 = v15 != 0;
        v28 = v15 == 1 && v16 != 1;
        if (v16)
        {
          v26 = v28;
        }

        if (v26)
        {
          v20 = 1;
          goto LABEL_23;
        }

        if (v16 == 1 && v15 != 1)
        {
LABEL_26:
          v20 = -1;
          goto LABEL_23;
        }

        v23 = [MEMORY[0x277CBEA80] currentCalendar];
        v29 = [v7 time];
        v24 = [v23 dateFromComponents:v29];

        v30 = [v8 time];
        v31 = [v23 dateFromComponents:v30];

        v20 = [v24 compare:v31];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    v7 = [v5 trigger];
    v8 = [v7 localizedDescriptionWithConfigurationSummary];
    v23 = [v6 trigger];
    v24 = [v23 localizedDescriptionWithConfigurationSummary];
    v20 = [v8 localizedStandardCompare:v24];
    goto LABEL_22;
  }

  v21 = -1;
  if (v10 < v11)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = v22;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 1;
  }

  else
  {
    v20 = v21;
  }

LABEL_23:

  return v20;
}

Class initHFTriggerIconFactory()
{
  if (HomeLibrary_sOnce_1754 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_1754, &__block_literal_global_235);
  }

  result = objc_getClass("HFTriggerIconFactory");
  classHFTriggerIconFactory = result;
  getHFTriggerIconFactoryClass = HFTriggerIconFactoryFunction;
  return result;
}

void *__HomeLibrary_block_invoke_1756()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_1758 = result;
  return result;
}

Class initHFTriggerUISummary()
{
  if (HomeLibrary_sOnce_1754 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_1754, &__block_literal_global_235);
  }

  result = objc_getClass("HFTriggerUISummary");
  classHFTriggerUISummary = result;
  getHFTriggerUISummaryClass = HFTriggerUISummaryFunction;
  return result;
}

void sub_274989AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27498C6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:25 description:{@"Unable to find class %s", "MTAlarmManager"}];

    __break(1u);
  }
}

void __getMTAlarmDataSourceClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmDataSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmDataSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:26 description:{@"Unable to find class %s", "MTAlarmDataSource"}];

    __break(1u);
  }
}

void MobileTimerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MobileTimerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279EE77F0;
    v5 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileTimerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:24 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MobileTimerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  return result;
}

Class initSUICProgressEventViewController()
{
  if (SiriUICoreLibrary_sOnce != -1)
  {
    dispatch_once(&SiriUICoreLibrary_sOnce, &__block_literal_global_3076);
  }

  result = objc_getClass("SUICProgressEventViewController");
  classSUICProgressEventViewController = result;
  getSUICProgressEventViewControllerClass = SUICProgressEventViewControllerFunction;
  return result;
}

void *__SiriUICoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriUICore.framework/SiriUICore", 2);
  SiriUICoreLibrary_sLib = result;
  return result;
}

void sub_274994BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initAPUIActionCardRequest()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = objc_getClass("APUIActionCardRequest");
  classAPUIActionCardRequest = result;
  getAPUIActionCardRequestClass = APUIActionCardRequestFunction;
  return result;
}

void *__AppPredictionUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionUI.framework/AppPredictionUI", 2);
  AppPredictionUILibrary_sLib = result;
  return result;
}

Class initAPUIActionCardViewConfig()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = objc_getClass("APUIActionCardViewConfig");
  classAPUIActionCardViewConfig = result;
  getAPUIActionCardViewConfigClass = APUIActionCardViewConfigFunction;
  return result;
}

void sub_274995984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCRKOverlayButton()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKOverlayButton");
  classCRKOverlayButton = result;
  getCRKOverlayButtonClass = CRKOverlayButtonFunction;
  return result;
}

void *__CardKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CardKit.framework/CardKit", 2);
  CardKitLibrary_sLib = result;
  return result;
}

Class initCRKCardPresentationConfiguration()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKCardPresentationConfiguration");
  classCRKCardPresentationConfiguration = result;
  getCRKCardPresentationConfigurationClass = CRKCardPresentationConfigurationFunction;
  return result;
}

Class initCRKCardPresentation()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKCardPresentation");
  classCRKCardPresentation = result;
  getCRKCardPresentationClass = CRKCardPresentationFunction;
  return result;
}

uint64_t (*initAPUIRegisterCardKitProvidersIfNeeded())()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = dlsym(AppPredictionUILibrary_sLib, "APUIRegisterCardKitProvidersIfNeeded");
  softLinkAPUIRegisterCardKitProvidersIfNeeded = result;
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t (*initAPUIRegisterCardServicesIfNeeded())()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = dlsym(AppPredictionUILibrary_sLib, "APUIRegisterCardServicesIfNeeded");
  softLinkAPUIRegisterCardServicesIfNeeded = result;
  if (result)
  {

    return result();
  }

  return result;
}

id initCRKCardViewControllerDelegate()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  v0 = objc_getProtocol("CRKCardViewControllerDelegate");
  v1 = protocolCRKCardViewControllerDelegate;
  protocolCRKCardViewControllerDelegate = v0;

  getCRKCardViewControllerDelegateProtocol = CRKCardViewControllerDelegateFunction;
  v2 = protocolCRKCardViewControllerDelegate;

  return v2;
}

void sub_274998B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initHUTriggerIconView()
{
  if (HomeUILibrary_sOnce_4353 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_4353, &__block_literal_global_4354);
  }

  result = objc_getClass("HUTriggerIconView");
  classHUTriggerIconView = result;
  getHUTriggerIconViewClass = HUTriggerIconViewFunction;
  return result;
}

void *__HomeUILibrary_block_invoke_4358()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_4360 = result;
  return result;
}

void WFPresentWorkflowSettingsViewController(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [[WFWorkflowSettingsViewController alloc] initWithWorkflow:v9 database:v8 hideNavigationBar:0];

  if (!v11)
  {
    v11 = objc_opt_new();
    objc_setAssociatedObject(v10, &WFWorkflowSettingsViewControllerDelegateKey, v11, 1);
  }

  [(WFWorkflowSettingsViewController *)v10 setDelegate:v11];
  [(WFWorkflowSettingsViewController *)v10 setModalPresentationStyle:2];
  [v7 presentViewController:v10 animated:1 completion:0];
}

NSString *UIContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void *UIContentSizeCategoryOneSmallerThanSizeCategory(void *a1)
{
  v1 = a1;
  v2 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767E8]);
  v3 = *MEMORY[0x277D767F0];
  if (v2)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767F0]);
    v3 = *MEMORY[0x277D767F8];
    if (v4)
    {
      v5 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767F8]);
      v3 = *MEMORY[0x277D76800];
      if (v5)
      {
        v6 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76800]);
        v3 = *MEMORY[0x277D76808];
        if (v6)
        {
          v7 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76808]);
          v3 = *MEMORY[0x277D76818];
          if (v7)
          {
            v8 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76818]);
            v3 = *MEMORY[0x277D76820];
            if (v8)
            {
              v9 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76820]);
              v3 = *MEMORY[0x277D76828];
              if (v9)
              {
                v10 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76828]);
                v3 = *MEMORY[0x277D76838];
                if (v10)
                {
                  v11 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76838]);
                  v3 = *MEMORY[0x277D76840];
                  if (v11)
                  {
                    v12 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76840]);
                    v3 = *MEMORY[0x277D76858];
                    if (v12)
                    {
                      v13 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76858]);
                      v3 = *MEMORY[0x277D76830];
                      if (v13)
                      {
                        if (UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76830]))
                        {
                          v3 = *MEMORY[0x277D76860];
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

  v14 = v3;

  return v3;
}

Class initHFTriggerIconFactory_4676()
{
  if (HomeLibrary_sOnce_4677 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4677, &__block_literal_global_253);
  }

  result = objc_getClass("HFTriggerIconFactory");
  classHFTriggerIconFactory_4678 = result;
  getHFTriggerIconFactoryClass_4674 = HFTriggerIconFactoryFunction_4680;
  return result;
}

void *__HomeLibrary_block_invoke_4682()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_4683 = result;
  return result;
}

Class initHFTriggerUISummary_4685()
{
  if (HomeLibrary_sOnce_4677 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4677, &__block_literal_global_253);
  }

  result = objc_getClass("HFTriggerUISummary");
  classHFTriggerUISummary_4687 = result;
  getHFTriggerUISummaryClass_4673 = HFTriggerUISummaryFunction_4689;
  return result;
}

void sub_27499ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDetailDateMaskToStringSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary_5106)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileTimerLibraryCore_block_invoke_5107;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279EE79F8;
    v7 = 0;
    MobileTimerLibraryCore_frameworkLibrary_5106 = _sl_dlopen();
  }

  v2 = MobileTimerLibraryCore_frameworkLibrary_5106;
  if (!MobileTimerLibraryCore_frameworkLibrary_5106)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull MobileTimerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAlarmTableViewCell.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "DetailDateMaskToString");
  *(*(a1[4] + 8) + 24) = result;
  getDetailDateMaskToStringSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MobileTimerLibraryCore_block_invoke_5107()
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary_5106 = result;
  return result;
}

void sub_27499F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTUIAlarmViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MobileTimerUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MobileTimerUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279EE79E0;
    v8 = 0;
    MobileTimerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull MobileTimerUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAlarmTableViewCell.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MTUIAlarmView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getMTUIAlarmViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAlarmTableViewCell.m" lineNumber:26 description:{@"Unable to find class %s", "MTUIAlarmView"}];

LABEL_10:
    __break(1u);
  }

  getMTUIAlarmViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileTimerUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileTimerUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2749A0C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749A7820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFMessageTriggerConfigurationSenderStringsFromContact(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (WFCNContactIsAuthorizedToAccessContact())
  {
    v2 = [v1 contact];
    v3 = [v2 identifier];

    if (v3)
    {
      v4 = [v1 contact];
      v5 = [v4 identifier];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
LABEL_8:

      goto LABEL_9;
    }
  }

  v4 = [v1 contact];
  v6 = objc_opt_new();
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v7 = [v4 phoneNumbers];
    v8 = [v7 if_map:&__block_literal_global_8426];
    [v6 addObjectsFromArray:v8];
  }

  if ([v4 isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    v5 = [v4 emailAddresses];
    v9 = [v5 if_map:&__block_literal_global_172];
    [v6 addObjectsFromArray:v9];

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

id __WFMessageTriggerConfigurationSenderStringsFromContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 unformattedInternationalStringValue];

  return v3;
}

void sub_2749B19F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v37 - 176));
  _Unwind_Resume(a1);
}

NSString *WFUIContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void sub_2749B8A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749B94C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

Class initPHAsset()
{
  if (PhotosLibrary_sOnce != -1)
  {
    dispatch_once(&PhotosLibrary_sOnce, &__block_literal_global_10139);
  }

  result = objc_getClass("PHAsset");
  classPHAsset = result;
  getPHAssetClass = PHAssetFunction;
  return result;
}

void *__PhotosLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 2);
  PhotosLibrary_sLib = result;
  return result;
}

void sub_2749BB110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2749C0168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPSleepLaunchURLRouteOnboardSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SleepLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SleepLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279EE7E58;
    v6 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SleepLibraryCore_frameworkLibrary;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SleepLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getHKSPProvenanceSourceShortcutsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPProvenanceSourceShortcuts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPProvenanceSourceShortcutsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKSPSleepURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPSleepURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPSleepURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SleepLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2749C29A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFFooterTextForHomeAction(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 workflow];
  if ([v4 environment] == 1 || (objc_msgSend(v3, "homesToWhichWeCanAddHomeAutomations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v9 = WFLocalizedString(@"This action will not work when this device is away from your home’s network because you don’t have a home hub set up.");
    v10 = WFLocalizedString(@"Set up home hub…");
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v9, v10];
    v12 = [v11 rangeOfString:v10];
    v14 = v13;
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
    v15 = *MEMORY[0x277D740E8];
    v16 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D7D010]];
    [v7 addAttribute:v15 value:v16 range:{v12, v14}];
  }

  return v7;
}

void sub_2749C8C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAddConstraintsToFillAnchorProvider(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a1;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v12 topAnchor];
  v25 = [v11 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:a3];
  v27[0] = v24;
  v13 = [v12 bottomAnchor];
  v14 = [v11 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-a5];
  v27[1] = v15;
  v16 = [v12 leadingAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:a4];
  v27[2] = v18;
  v19 = [v12 trailingAnchor];

  v20 = [v11 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:-a6];
  v27[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];

  return v22;
}

uint64_t WFRunSelectionForTrigger(void *a1)
{
  v1 = a1;
  if ([v1 isEnabled])
  {
    v2 = [v1 shouldPrompt];
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_2749CEA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_13822);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_274719000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

void sub_2749D03EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749D0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  _Unwind_Resume(a1);
}

void sub_2749D1294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

void HomeLibrary()
{
  if (!HomeLibraryCore())
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeLibrary(void)"];
    [v0 handleFailureInFunction:v1 file:@"WFAutomationTriggerDataSource.m" lineNumber:22 description:{@"%s", 0}];

    __break(1u);
    free(v2);
  }
}

void __getHFTriggerItemClass_block_invoke(uint64_t a1)
{
  HomeLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HFTriggerItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHFTriggerItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHFTriggerItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAutomationTriggerDataSource.m" lineNumber:24 description:{@"Unable to find class %s", "HFTriggerItem"}];

    __break(1u);
  }
}

id getHFTriggerUISummaryClass_14509()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHFTriggerUISummaryClass_softClass;
  v6 = getHFTriggerUISummaryClass_softClass;
  if (!getHFTriggerUISummaryClass_softClass)
  {
    HomeLibraryCore();
    v4[3] = objc_getClass("HFTriggerUISummary");
    getHFTriggerUISummaryClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_2749D3400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHFTriggerUISummaryClass_block_invoke(uint64_t a1)
{
  HomeLibraryCore();
  result = objc_getClass("HFTriggerUISummary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHFTriggerUISummaryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HomeLibraryCore()
{
  if (!HomeLibraryCore_frameworkLibrary)
  {
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return HomeLibraryCore_frameworkLibrary;
}

uint64_t __HomeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  return result;
}

Class initHUTriggerIconView_15166()
{
  if (HomeUILibrary_sOnce_15167 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_15167, &__block_literal_global_15168);
  }

  result = objc_getClass("HUTriggerIconView");
  classHUTriggerIconView_15170 = result;
  getHUTriggerIconViewClass_15163 = HUTriggerIconViewFunction_15172;
  return result;
}

void *__HomeUILibrary_block_invoke_15175()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_15177 = result;
  return result;
}

void sub_2749D8D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2749D8F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL WFIsRunningOniPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

void sub_2749DBBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749DF420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E3D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E4E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAutomationTableSectionHeaderViewWithTitle(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  [v3 setFont:v5];

  [v3 setText:v1];
  [v2 addSubview:v3];
  v6 = [v3 wf_addConstraintsToFillSuperview:v2 insets:{18.0, 0.0, 12.0, 0.0}];

  return v2;
}

void sub_2749E5FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E6C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E73B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2749E7A84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2749E8040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initHUTriggerTypePickerViewController()
{
  if (HomeUILibrary_sOnce_16530 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_16530, &__block_literal_global_435);
  }

  result = objc_getClass("HUTriggerTypePickerViewController");
  classHUTriggerTypePickerViewController = result;
  getHUTriggerTypePickerViewControllerClass = HUTriggerTypePickerViewControllerFunction;
  return result;
}

void *__HomeUILibrary_block_invoke_16532()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_16533 = result;
  return result;
}

Class initHFHomeKitDispatcher()
{
  if (HomeLibrary_sOnce_16534 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_16534, &__block_literal_global_431);
  }

  result = objc_getClass("HFHomeKitDispatcher");
  classHFHomeKitDispatcher = result;
  getHFHomeKitDispatcherClass = HFHomeKitDispatcherFunction;
  return result;
}

void *__HomeLibrary_block_invoke_16536()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_16537 = result;
  return result;
}

void sub_2749E961C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPKIconForMerchantCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitUILibrary();
  result = dlsym(v2, "PKIconForMerchantCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKIconForMerchantCategorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PassKitUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279EE88E8;
    v6 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PassKitUILibraryCore_frameworkLibrary;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:36 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFAutocapitalizationTypeFromLocalizedString(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 integerValue];
  v2 = 1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t WFAutocapitalizationTypeFromLocale()
{
  v0 = WFLocalizedStringWithKey(@"Auto-capitalization for Shortcut Name", @"2");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 integerValue];
    v3 = 1;
    if (v2 == 1)
    {
      v3 = 2;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_2749EE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL WFUIScrollViewCanScroll(void *a1)
{
  v1 = a1;
  [v1 contentSize];
  UIRoundToViewScale();
  v3 = v2;
  [v1 bounds];
  UIRoundToViewScale();
  v5 = v4;

  return v3 > v5;
}

void sub_2749F2840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2749F2BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

id WFScaledImage(void *a1)
{
  v1 = a1;
  v5.width = 29.0;
  v5.height = 29.0;
  UIGraphicsBeginImageContextWithOptions(v5, 0, 0.0);
  [v1 drawInRect:{0.0, 0.0, 29.0, 29.0}];

  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

void sub_2749F6504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPaymentTransactionIconGeneratorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary_19437)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PassKitUILibraryCore_block_invoke_19438;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279EE8D18;
    v8 = 0;
    PassKitUILibraryCore_frameworkLibrary_19437 = _sl_dlopen();
  }

  if (!PassKitUILibraryCore_frameworkLibrary_19437)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWalletMerchantSelectionTableViewController.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKPaymentTransactionIconGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPaymentTransactionIconGeneratorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWalletMerchantSelectionTableViewController.m" lineNumber:23 description:{@"Unable to find class %s", "PKPaymentTransactionIconGenerator"}];

LABEL_10:
    __break(1u);
  }

  getPKPaymentTransactionIconGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUILibraryCore_block_invoke_19438()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary_19437 = result;
  return result;
}

void sub_2749F77D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initTLKImage()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKImage");
  classTLKImage = result;
  getTLKImageClass = TLKImageFunction;
  return result;
}

void *__TemplateKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TemplateKit.framework/TemplateKit", 2);
  TemplateKitLibrary_sLib = result;
  return result;
}

Class initTLKRichText()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKRichText");
  classTLKRichText = result;
  getTLKRichTextClass = TLKRichTextFunction;
  return result;
}

Class initTLKFormattedText()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKFormattedText");
  classTLKFormattedText = result;
  getTLKFormattedTextClass = TLKFormattedTextFunction;
  return result;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}