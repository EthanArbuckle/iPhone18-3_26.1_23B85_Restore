uint64_t sub_26BCEB58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495A8, type metadata accessor for AllSolutionsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCEB60C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491D0, type metadata accessor for AllSolutionsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCEB67C()
{
  sub_26BCFF280(&qword_2804491D0, type metadata accessor for AllSolutionsResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BCEB720()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B18);
  __swift_project_value_buffer(v0, qword_280448B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_26BDA19B0;
  v4 = v88 + v3;
  v5 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  *(v5 + 24) = "solutionType";
  *(v5 + 32) = 12;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sub_type_string";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  *(v9 + 24) = "solutionSubType";
  *(v9 + 32) = 15;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rank";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v89 = *MEMORY[0x277D21870];
  v8();
  v12 = v1[14];
  v13 = (v4 + 3 * v2);
  *v13 = 4;
  v14 = v13 + v12;
  *v14 = "call_to_action_title";
  *(v14 + 1) = 20;
  v14[16] = 2;
  *(v14 + 3) = "ctaTitle";
  *(v14 + 4) = 8;
  v14[40] = 2;
  v8();
  v15 = v1[14];
  v16 = (v4 + 4 * v2);
  *v16 = 5;
  v17 = v16 + v15;
  *v17 = "is_eligible";
  *(v17 + 1) = 11;
  v17[16] = 2;
  *(v17 + 3) = "eligible";
  *(v17 + 4) = 8;
  v17[40] = 2;
  v8();
  v18 = v1[14];
  v19 = (v4 + 5 * v2);
  *v19 = 6;
  v20 = v19 + v18;
  *v20 = "image_url_string";
  *(v20 + 1) = 16;
  v20[16] = 2;
  *(v20 + 3) = "imageUrl";
  *(v20 + 4) = 8;
  v20[40] = 2;
  v8();
  v21 = (v4 + 6 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "is_for_premium_advisor";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v90 = *MEMORY[0x277D21888];
  v8();
  v23 = v1[14];
  v24 = (v4 + 7 * v2);
  *v24 = 8;
  v25 = v24 + v23;
  *v25 = "is_serial_required";
  *(v25 + 1) = 18;
  v25[16] = 2;
  *(v25 + 3) = "serialRequired";
  *(v25 + 4) = 14;
  v25[40] = 2;
  v8();
  v26 = v1[14];
  v27 = (v4 + 8 * v2);
  *v27 = 9;
  v28 = v27 + v26;
  *v28 = "localized_description";
  *(v28 + 1) = 21;
  v28[16] = 2;
  *(v28 + 3) = "description";
  *(v28 + 4) = 11;
  v28[40] = 2;
  v8();
  v29 = v1[14];
  v30 = (v4 + 9 * v2);
  *v30 = 10;
  v31 = v30 + v29;
  *v31 = "localized_title";
  *(v31 + 1) = 15;
  v31[16] = 2;
  *(v31 + 3) = "title";
  *(v31 + 4) = 5;
  v31[40] = 2;
  v8();
  v32 = (v4 + 10 * v2);
  v33 = v32 + v1[14];
  *v32 = 11;
  *v33 = "localized_footer";
  *(v33 + 1) = 16;
  v33[16] = 2;
  v8();
  v34 = (v4 + 11 * v2);
  v35 = v34 + v1[14];
  *v34 = 12;
  *v35 = "footer_article";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v8();
  v36 = (v4 + 12 * v2);
  v37 = v36 + v1[14];
  *v36 = 13;
  *v37 = "application_data";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v8();
  v38 = (v4 + 13 * v2);
  v39 = v38 + v1[14];
  *v38 = 14;
  *v39 = "pricing";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v4 + 14 * v2);
  v41 = v40 + v1[14];
  *v40 = 15;
  *v41 = "localized_details";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = v1[14];
  v43 = (v4 + 15 * v2);
  *v43 = 16;
  v44 = v43 + v42;
  *v44 = "display_style";
  *(v44 + 1) = 13;
  v44[16] = 2;
  *(v44 + 3) = "style";
  *(v44 + 4) = 5;
  v44[40] = 2;
  v8();
  v45 = (v4 + 16 * v2);
  v46 = v45 + v1[14];
  *v45 = 17;
  *v46 = "eligible_product_ids";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v8();
  v47 = (v4 + 17 * v2);
  v48 = v47 + v1[14];
  *v47 = 18;
  *v48 = "is_enabled_in_store_demo_mode";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v8();
  v49 = (v4 + 18 * v2);
  v50 = v49 + v1[14];
  *v49 = 19;
  *v50 = "alignment";
  *(v50 + 1) = 9;
  v50[16] = 2;
  v8();
  v51 = v1[14];
  v52 = (v4 + 19 * v2);
  *v52 = 20;
  v53 = v52 + v51;
  *v53 = "deprecated_v3_product_coverage_selection_details";
  *(v53 + 1) = 48;
  v53[16] = 2;
  *(v53 + 3) = "productCoverageSelectionDetails";
  *(v53 + 4) = 31;
  v53[40] = 2;
  v8();
  v54 = v1[14];
  v55 = (v4 + 20 * v2);
  *v55 = 21;
  v56 = v55 + v54;
  *v56 = "product_coverage_selection_details";
  *(v56 + 1) = 34;
  v56[16] = 2;
  *(v56 + 3) = "productCoverageSelectionDetailsV4";
  *(v56 + 4) = 33;
  v56[40] = 2;
  v8();
  v57 = (v4 + 21 * v2);
  v58 = v57 + v1[14];
  *v57 = 100;
  *v58 = "cin";
  *(v58 + 1) = 3;
  v58[16] = 2;
  v8();
  v59 = (v4 + 22 * v2);
  v60 = v59 + v1[14];
  *v59 = 101;
  *v60 = "c2c";
  *(v60 + 1) = 3;
  v60[16] = 2;
  v8();
  v61 = (v4 + 23 * v2);
  v62 = v61 + v1[14];
  *v61 = 102;
  *v62 = "scb";
  *(v62 + 1) = 3;
  v62[16] = 2;
  v8();
  v63 = (v4 + 24 * v2);
  v64 = v63 + v1[14];
  *v63 = 103;
  *v64 = "phone";
  *(v64 + 1) = 5;
  v64[16] = 2;
  v8();
  v65 = (v4 + 25 * v2);
  v66 = v65 + v1[14];
  *v65 = 104;
  *v66 = "c2ch";
  *(v66 + 1) = 4;
  v66[16] = 2;
  v8();
  v67 = (v4 + 26 * v2);
  v68 = v67 + v1[14];
  *v67 = 105;
  *v68 = "bzcht";
  *(v68 + 1) = 5;
  v68[16] = 2;
  v8();
  v69 = (v4 + 27 * v2);
  v70 = v69 + v1[14];
  *v69 = 106;
  *v70 = "eml";
  *(v70 + 1) = 3;
  v70[16] = 2;
  v8();
  v71 = (v4 + 28 * v2);
  v72 = v71 + v1[14];
  *v71 = 107;
  *v72 = "bcs";
  *(v72 + 1) = 3;
  v72[16] = 2;
  v8();
  v73 = (v4 + 29 * v2);
  v74 = v73 + v1[14];
  *v73 = 108;
  *v74 = "kb";
  *(v74 + 1) = 2;
  v74[16] = 2;
  v8();
  v75 = (v4 + 30 * v2);
  v76 = v75 + v1[14];
  *v75 = 109;
  *v76 = "cas";
  *(v76 + 1) = 3;
  v76[16] = 2;
  v8();
  v77 = (v4 + 31 * v2);
  v78 = v77 + v1[14];
  *v77 = 110;
  *v78 = "ers";
  *(v78 + 1) = 3;
  v78[16] = 2;
  v8();
  v79 = (v4 + 32 * v2);
  v80 = v79 + v1[14];
  *v79 = 111;
  *v80 = "smb";
  *(v80 + 1) = 3;
  v80[16] = 2;
  v8();
  v81 = (v4 + 33 * v2);
  v82 = v81 + v1[14];
  *v81 = 112;
  *v82 = "maasp";
  *(v82 + 1) = 5;
  v82[16] = 2;
  v8();
  v83 = (v4 + 34 * v2);
  v84 = v83 + v1[14];
  *v83 = 113;
  *v84 = "contact_options";
  *(v84 + 1) = 15;
  v84[16] = 2;
  v8();
  v85 = (v4 + 35 * v2);
  v86 = v85 + v1[14];
  *v85 = 114;
  *v86 = "mcr";
  *(v86 + 1) = 3;
  v86[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCEC25C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_119(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26BCEC2AC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  v2 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData) = xmmword_26BDA19C0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v5 = type metadata accessor for SupportOption.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_26BCEC404(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v61 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v62 = (v1 + 72);
  *(v1 + 80) = 0;
  v63 = (v1 + 80);
  *(v1 + 96) = 0;
  v64 = (v1 + 96);
  *(v1 + 104) = 0;
  v65 = (v1 + 104);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v66 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v67 = (v1 + 136);
  *(v1 + 144) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle;
  v10 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v68 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData) = xmmword_26BDA19C0;
  v70 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  v71 = (v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v72 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle) = 0;
  v73 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds) = MEMORY[0x277D84F90];
  v74 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode) = 0;
  v75 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  *(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment) = 0;
  v76 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, 1, 1, v10);
  v77 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, 1, 1, v10);
  v12 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v78 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  LOBYTE(v10) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v16;
  *(v1 + 40) = v15;
  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;
  swift_beginAccess();
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v18;
  *(v1 + 64) = v19;

  swift_beginAccess();
  LOBYTE(v15) = *(a1 + 72);
  v20 = v62;
  swift_beginAccess();
  *v20 = v15;
  swift_beginAccess();
  v22 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = v63;
  swift_beginAccess();
  v24 = *(v1 + 88);
  *v23 = v22;
  *(v1 + 88) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 96);
  v25 = v64;
  swift_beginAccess();
  *v25 = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 97);
  swift_beginAccess();
  *(v1 + 97) = v21;
  swift_beginAccess();
  v27 = *(a1 + 104);
  v26 = *(a1 + 112);
  v28 = v65;
  swift_beginAccess();
  v29 = *(v1 + 112);
  *v28 = v27;
  *(v1 + 112) = v26;

  swift_beginAccess();
  v31 = *(a1 + 120);
  v30 = *(a1 + 128);
  v32 = v66;
  swift_beginAccess();
  v33 = *(v1 + 128);
  *v32 = v31;
  *(v1 + 128) = v30;

  swift_beginAccess();
  v35 = *(a1 + 136);
  v34 = *(a1 + 144);
  v36 = v67;
  swift_beginAccess();
  v37 = *(v1 + 144);
  *v36 = v35;
  *(v1 + 144) = v34;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v68;
  swift_beginAccess();
  v42 = v41;
  v43 = *v41;
  v44 = v42[1];
  *v42 = v40;
  v42[1] = v39;
  sub_26BCFEFC4(v40, v39);
  sub_26BCFF01C(v43, v44);
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v71;
  swift_beginAccess();
  v49 = v48[1];
  *v48 = v47;
  v48[1] = v46;

  v50 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  LODWORD(v50) = *(a1 + v50);
  v51 = v72;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  v53 = *(a1 + v52);
  v54 = v73;
  swift_beginAccess();
  v55 = *(v1 + v54);
  *(v1 + v54) = v53;

  v56 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v74;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  LODWORD(v58) = *(a1 + v58);
  v59 = v75;
  swift_beginAccess();
  *(v1 + v59) = v58;
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();

  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  return v1;
}

void *sub_26BCECD48()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[11];

  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__footerArticle, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData + 8));
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__pricing, &qword_280448F88, &qword_26BDA5440);
  v7 = *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3ProductCoverageSelectionDetails, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__productCoverageSelectionDetails, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details, &qword_2804490B0, &qword_26BDA1A58);
  return v0;
}

uint64_t sub_26BCECE80(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

void sub_26BCECF30()
{
  OUTLINED_FUNCTION_246();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_119(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_36();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCECFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BD04DD8();
        sub_26BDA0930();
        goto LABEL_31;
      case 2:
      case 4:
      case 6:
      case 9:
      case 10:
      case 11:
      case 15:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_31;
      case 3:
        swift_beginAccess();
        sub_26BDA0980();
        goto LABEL_31;
      case 5:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_31;
      case 12:
      case 14:
      case 20:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09B0();
        goto LABEL_31;
      case 13:
        swift_beginAccess();
        sub_26BDA0940();
        goto LABEL_31;
      case 16:
      case 19:
        swift_beginAccess();
        sub_26BDA0950();
        goto LABEL_31;
      case 17:
        swift_beginAccess();
        sub_26BDA0970();
LABEL_31:
        v5 = 0;
        swift_endAccess();
        break;
      case 21:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        switch(result)
        {
          case 'd':
            sub_26BCED6F8(a1, a2, a3, a4);
            goto LABEL_27;
          case 'e':
            sub_26BCEDC4C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'f':
            sub_26BCEE1BC(a1, a2, a3, a4);
            goto LABEL_27;
          case 'g':
            sub_26BCEE72C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'h':
            sub_26BCEEC9C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'i':
            sub_26BCEF20C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'j':
            sub_26BCEF77C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'k':
            sub_26BCEFCF0(a1, a2, a3, a4);
            goto LABEL_27;
          case 'l':
            sub_26BCF0260(a1, a2, a3, a4);
            goto LABEL_27;
          case 'm':
            sub_26BCF07D0(a1, a2, a3, a4);
            goto LABEL_27;
          case 'n':
            sub_26BCF0D40(a1, a2, a3, a4);
            goto LABEL_27;
          case 'o':
            sub_26BCF12B4(a1, a2, a3, a4);
            goto LABEL_27;
          case 'p':
            sub_26BCF1828(a1, a2, a3, a4);
            goto LABEL_27;
          case 'q':
            sub_26BCF1D9C(a1, a2, a3, a4);
            goto LABEL_27;
          case 'r':
            sub_26BCF230C(a1, a2, a3, a4);
LABEL_27:
            v5 = 0;
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_26BCED6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for SupportOption.CINDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495F0, &qword_26BDA3528);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEEB0();
    }

    else
    {
      sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails);
  v28 = v37;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v25;
    return sub_26BD04E80(v29, &qword_2804495F0, &qword_26BDA3528);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
    v29 = v23;
    return sub_26BD04E80(v29, &qword_2804495F0, &qword_26BDA3528);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v25, &qword_2804495F0, &qword_26BDA3528);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.C2CDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495F8, &qword_26BDA3530);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_2804495F8, &qword_26BDA3530);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_2804495F8, &qword_26BDA3530);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_2804495F8, &qword_26BDA3530);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.SCBDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449600, &qword_26BDA3538);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449600, &qword_26BDA3538);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449600, &qword_26BDA3538);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449600, &qword_26BDA3538);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.PhoneDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449608, &qword_26BDA3540);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449608, &qword_26BDA3540);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449608, &qword_26BDA3540);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449608, &qword_26BDA3540);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.C2CHDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449610, &qword_26BDA3548);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449610, &qword_26BDA3548);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449610, &qword_26BDA3548);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449610, &qword_26BDA3548);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.BZCHTDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449618, &qword_26BDA3550);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449618, &qword_26BDA3550);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449618, &qword_26BDA3550);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449618, &qword_26BDA3550);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEF77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v36[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCEFCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.BCSDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449620, &qword_26BDA3558);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449620, &qword_26BDA3558);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449620, &qword_26BDA3558);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449620, &qword_26BDA3558);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF0260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.KBDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449628, &qword_26BDA3560);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449628, &qword_26BDA3560);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449628, &qword_26BDA3560);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449628, &qword_26BDA3560);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.CASDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449630, &qword_26BDA3568);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449630, &qword_26BDA3568);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449630, &qword_26BDA3568);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449630, &qword_26BDA3568);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF0D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v36[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF12B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v36[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF1828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v36[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449638, &qword_26BDA3570);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v32[1] = v26;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v32[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails);
  v27 = v38;
  sub_26BDA09B0();
  if (v27)
  {
    v28 = v25;
    return sub_26BD04E80(v28, &qword_280449638, &qword_26BDA3570);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
    v28 = v23;
    return sub_26BD04E80(v28, &qword_280449638, &qword_26BDA3570);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v30 = v35;
  sub_26BD04E80(v25, &qword_280449638, &qword_26BDA3570);
  v31 = v33;
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for SupportOption.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    v36[0] = a1;
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BCF28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_129();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BCF2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v86 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v86 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - v22;
  v99 = sub_26BDA0810();
  v96 = *(v99 - 8);
  v24 = *(v96 + 64);
  v25 = MEMORY[0x28223BE20](v99);
  v90 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v91 = &v86 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v94 = &v86 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v86 - v31;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v33 = *(a1 + 24);
    v97 = *(a1 + 16);
    v98 = v33;
    sub_26BD04DD8();
    result = sub_26BDA0A50();
    if (v4)
    {
      return result;
    }
  }

  v89 = v13;
  swift_beginAccess();
  v35 = *(a1 + 40);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 40);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 64);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 64);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 72) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 88);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(a1 + 88);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 97) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 112);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = *(a1 + 112);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v47 = *(a1 + 128);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    goto LABEL_35;
  }

  v49 = *(a1 + 128);

  sub_26BDA0AB0();
  if (v4)
  {
  }

LABEL_35:
  swift_beginAccess();
  v50 = *(a1 + 144);
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {
    v52 = *(a1 + 144);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  v53 = v99;
  if (__swift_getEnumTagSinglePayload(v23, 1, v99) == 1)
  {
    sub_26BD04E80(v23, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v96 + 32))(v32, v23, v53);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    sub_26BDA0AD0();
    if (v4)
    {
      return (*(v96 + 8))(v32, v53);
    }

    (*(v96 + 8))(v32, v53);
  }

  v54 = a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData;
  swift_beginAccess();
  v55 = sub_26BD50FE4(*v54, *(v54 + 8));
  v56 = v95;
  if (!v55)
  {
    v57 = *v54;
    v58 = *(v54 + 8);
    sub_26BCFEFC4(v57, v58);
    sub_26BDA0A60();
    if (v4)
    {
      return sub_26BCFF01C(v57, v58);
    }

    sub_26BCFF01C(v57, v58);
  }

  swift_beginAccess();
  sub_26BD04E2C();
  v59 = v99;
  v60 = a3;
  if (__swift_getEnumTagSinglePayload(v56, 1, v99) == 1)
  {
    v61 = v59;
    sub_26BD04E80(v56, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v88 = a3;
    v62 = v96;
    v63 = v94;
    (*(v96 + 32))(v94, v56, v59);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v64 = v88;
    sub_26BDA0AD0();
    if (v4)
    {
      return (*(v62 + 8))(v63, v59);
    }

    v65 = v63;
    v61 = v59;
    (*(v62 + 8))(v65, v59);
    v60 = v64;
  }

  v66 = a4;
  v67 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v71 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  if (!*(a1 + v71) || (result = sub_26BDA0A70(), !v5))
  {
    v72 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
    swift_beginAccess();
    if (*(*(a1 + v72) + 16))
    {

      sub_26BDA0A90();
      if (v5)
      {
      }
    }

    v73 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
    swift_beginAccess();
    if (*(a1 + v73) != 1 || (result = sub_26BDA0A40(), !v5))
    {
      v74 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
      swift_beginAccess();
      if (!*(a1 + v74) || (result = sub_26BDA0A70(), !v5))
      {
        swift_beginAccess();
        v75 = v93;
        sub_26BD04E2C();
        v76 = v61;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v61);
        v87 = v66;
        v88 = v60;
        if (EnumTagSinglePayload == 1)
        {
          sub_26BD04E80(v75, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          v78 = v96;
          v79 = v91;
          (*(v96 + 32))(v91, v75, v76);
          sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
          sub_26BDA0AD0();
          if (v5)
          {
            return (*(v78 + 8))(v79, v76);
          }

          (*(v78 + 8))(v79, v76);
        }

        swift_beginAccess();
        v80 = v92;
        sub_26BD04E2C();
        v81 = v99;
        if (__swift_getEnumTagSinglePayload(v80, 1, v99) == 1)
        {
          sub_26BD04E80(v80, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          v82 = v96;
          v83 = v90;
          (*(v96 + 32))();
          sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
          sub_26BDA0AD0();
          if (v5)
          {
            return (*(v82 + 8))(v83, v81);
          }

          (*(v82 + 8))(v83, v81);
        }

        swift_beginAccess();
        v84 = v89;
        sub_26BD04E2C();
        v85 = type metadata accessor for SupportOption.OneOf_Details(0);
        result = __swift_getEnumTagSinglePayload(v84, 1, v85);
        if (result != 1)
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_26BCF3A64(a1, a2, v88, v87);
              break;
            case 2u:
              sub_26BCF3C98(a1, a2, v88, v87);
              break;
            case 3u:
              sub_26BCF3ECC(a1, a2, v88, v87);
              break;
            case 4u:
              sub_26BCF4100(a1, a2, v88, v87);
              break;
            case 5u:
              sub_26BCF4334(a1, a2, v88, v87);
              break;
            case 6u:
              sub_26BCF4568(a1, a2, v88, v87);
              break;
            case 7u:
              sub_26BCF47BC(a1, a2, v88, v87);
              break;
            case 8u:
              sub_26BCF49F0(a1, a2, v88, v87);
              break;
            case 9u:
              sub_26BCF4C24(a1, a2, v88, v87);
              break;
            case 0xAu:
              sub_26BCF4E58(a1, a2, v88, v87);
              break;
            case 0xBu:
              sub_26BCF50AC(a1, a2, v88, v87);
              break;
            case 0xCu:
              sub_26BCF5300(a1, a2, v88, v87);
              break;
            case 0xDu:
              sub_26BCF5554(a1, a2, v88, v87);
              break;
            case 0xEu:
              sub_26BCF5788(a1, a2, v88, v87);
              break;
            default:
              sub_26BCF3834(a1, a2, v88, v87);
              break;
          }

          return sub_26BCFEEB0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BCF3834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.CINDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.C2CDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.SCBDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.PhoneDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.C2CHDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.BZCHTDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.BCSDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF49F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.KBDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.CASDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF4E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26BD04E2C();
  v10 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for SupportOption.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCF5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_184();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_173();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v12, v13);
  OUTLINED_FUNCTION_242();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BCF5AE0(uint64_t a1, uint64_t a2)
{
  v140 = type metadata accessor for SupportOption.OneOf_Details(0);
  v4 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v137 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495E0, &qword_26BDA3520);
  v6 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v8 = &v134 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v139 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v134 - v13;
  v152 = sub_26BDA0810();
  v150 = *(v152 - 8);
  v14 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v16 = *(*(v151 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v151);
  v145 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v134 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v134 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v134 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v142 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v143 = &v134 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v144 = &v134 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v146 = &v134 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v134 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v134 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v134 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v134 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  swift_beginAccess();
  v47 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v47)
    {
      case 1:
        if (v46 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v46 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v46 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v46 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v46 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v46 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v46 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v46 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v46 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v46 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v46)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v46 != v47)
  {
    return 0;
  }

LABEL_6:
  v136 = v8;
  swift_beginAccess();
  v48 = *(a1 + 32);
  v49 = *(a1 + 40);
  swift_beginAccess();
  v50 = v48 == *(a2 + 32) && v49 == *(a2 + 40);
  if (!v50 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 48);
  swift_beginAccess();
  if (v51 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 56);
  v53 = *(a1 + 64);
  swift_beginAccess();
  v54 = v52 == *(a2 + 56) && v53 == *(a2 + 64);
  if (!v54 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 72);
  swift_beginAccess();
  if (v55 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 80);
  v57 = *(a1 + 88);
  swift_beginAccess();
  v58 = v56 == *(a2 + 80) && v57 == *(a2 + 88);
  if (!v58 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v59 = *(a1 + 96);
  swift_beginAccess();
  if (v59 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v60 = *(a1 + 97);
  swift_beginAccess();
  if (v60 != *(a2 + 97))
  {
    return 0;
  }

  swift_beginAccess();
  v61 = *(a1 + 104);
  v62 = *(a1 + 112);
  swift_beginAccess();
  v63 = v61 == *(a2 + 104) && v62 == *(a2 + 112);
  if (!v63 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v64 = *(a1 + 120);
  v65 = *(a1 + 128);
  swift_beginAccess();
  v66 = v64 == *(a2 + 120) && v65 == *(a2 + 128);
  if (!v66 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v67 = *(a1 + 136);
  v68 = *(a1 + 144);
  swift_beginAccess();
  v69 = v67 == *(a2 + 136) && v68 == *(a2 + 144);
  if (!v69 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v70 = *(v151 + 48);
  sub_26BD04E2C();
  v135 = v70;
  sub_26BD04E2C();
  v71 = v152;
  if (__swift_getEnumTagSinglePayload(v24, 1, v152) == 1)
  {

    sub_26BD04E80(v45, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v24[v135], 1, v71) != 1)
    {
      goto LABEL_65;
    }

    sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    sub_26BD04E2C();
    v72 = v135;
    if (__swift_getEnumTagSinglePayload(&v24[v135], 1, v71) == 1)
    {

      sub_26BD04E80(v45, &qword_280448F88, &qword_26BDA5440);
      (*(v150 + 8))(v43, v71);
      goto LABEL_65;
    }

    (*(v150 + 32))(v149, &v24[v72], v71);
    v135 = sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);

    HIDWORD(v134) = sub_26BDA0BB0();
    v135 = *(v150 + 8);
    (v135)(v149, v71);
    sub_26BD04E80(v45, &qword_280448F88, &qword_26BDA5440);
    (v135)(v43, v71);
    sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
    if ((v134 & 0x100000000) == 0)
    {
      goto LABEL_101;
    }
  }

  v74 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v76 = *v74;
  v75 = v74[1];
  v77 = (a2 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  sub_26BCFEFC4(v76, v75);
  sub_26BCFEFC4(v79, v78);
  v80 = MEMORY[0x26D695520](v76, v75, v79, v78);
  sub_26BCFF01C(v79, v78);
  sub_26BCFF01C(v76, v75);
  if ((v80 & 1) == 0)
  {
    goto LABEL_101;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v81 = *(v151 + 48);
  v24 = v148;
  sub_26BD04E2C();
  sub_26BD04E2C();
  v82 = v152;
  if (__swift_getEnumTagSinglePayload(v24, 1, v152) == 1)
  {
    sub_26BD04E80(v40, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v24[v81], 1, v82) == 1)
    {
      sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_75;
    }

LABEL_65:
    v73 = v24;
LABEL_66:
    sub_26BD04E80(v73, &qword_2804490C8, &qword_26BDA7780);
LABEL_101:

    return 0;
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(&v24[v81], 1, v82) == 1)
  {
    sub_26BD04E80(v40, &qword_280448F88, &qword_26BDA5440);
    (*(v150 + 8))(v37, v82);
    goto LABEL_65;
  }

  v83 = v149;
  v84 = v150;
  (*(v150 + 32))(v149, &v24[v81], v82);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v135) = sub_26BDA0BB0();
  v85 = *(v84 + 8);
  v85(v83, v82);
  sub_26BD04E80(v40, &qword_280448F88, &qword_26BDA5440);
  v85(v37, v82);
  sub_26BD04E80(v24, &qword_280448F88, &qword_26BDA5440);
  if ((v135 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_75:
  v86 = (a1 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (a2 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDetails);
  swift_beginAccess();
  v90 = v87 == *v89 && v88 == v89[1];
  if (!v90 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_101;
  }

  v91 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  LODWORD(v91) = *(a1 + v91);
  v92 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  swift_beginAccess();
  if (v91 != *(a2 + v92))
  {
    goto LABEL_101;
  }

  v93 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  v94 = *(a1 + v93);
  v95 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__eligibleProductIds;
  swift_beginAccess();
  if ((sub_26BCFF1F4(v94, *(a2 + v95)) & 1) == 0)
  {
    goto LABEL_101;
  }

  v96 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  LODWORD(v96) = *(a1 + v96);
  v97 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  swift_beginAccess();
  if (v96 != *(a2 + v97))
  {
    goto LABEL_101;
  }

  v98 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  LODWORD(v98) = *(a1 + v98);
  v99 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  swift_beginAccess();
  if (v98 != *(a2 + v99))
  {
    goto LABEL_101;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v100 = *(v151 + 48);
  v101 = v147;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v101, 1, v152) == 1)
  {
    sub_26BD04E80(v146, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v147 + v100, 1, v152) == 1)
    {
      sub_26BD04E80(v147, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v102 = v147;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v102 + v100, 1, v152) == 1)
  {
    sub_26BD04E80(v146, &qword_280448F88, &qword_26BDA5440);
    (*(v150 + 8))(v144, v152);
LABEL_89:
    v73 = v147;
    goto LABEL_66;
  }

  v103 = v149;
  v104 = v150;
  v105 = v147;
  v106 = v152;
  (*(v150 + 32))(v149, v147 + v100, v152);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v107 = v144;
  v108 = sub_26BDA0BB0();
  v109 = *(v104 + 8);
  v109(v103, v106);
  sub_26BD04E80(v146, &qword_280448F88, &qword_26BDA5440);
  v109(v107, v106);
  sub_26BD04E80(v105, &qword_280448F88, &qword_26BDA5440);
  if ((v108 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_91:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v110 = *(v151 + 48);
  v111 = v145;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v111, 1, v152) == 1)
  {
    sub_26BD04E80(v143, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v145 + v110, 1, v152) == 1)
    {
      sub_26BD04E80(v145, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v112 = v145;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v112 + v110, 1, v152) == 1)
  {
    sub_26BD04E80(v143, &qword_280448F88, &qword_26BDA5440);
    (*(v150 + 8))(v142, v152);
LABEL_96:
    v73 = v145;
    goto LABEL_66;
  }

  v113 = v149;
  v114 = v150;
  v115 = v145;
  v116 = v152;
  (*(v150 + 32))(v149, v145 + v110, v152);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v117 = v142;
  v118 = sub_26BDA0BB0();
  v119 = *(v114 + 8);
  v119(v113, v116);
  sub_26BD04E80(v143, &qword_280448F88, &qword_26BDA5440);
  v119(v117, v116);
  sub_26BD04E80(v115, &qword_280448F88, &qword_26BDA5440);
  if ((v118 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_98:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v120 = *(v138 + 48);
  v121 = v136;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v121, 1, v140) != 1)
  {
    v123 = v136;
    sub_26BD04E2C();
    if (__swift_getEnumTagSinglePayload(v123 + v120, 1, v140) == 1)
    {

      sub_26BD04E80(v141, &qword_2804490B0, &qword_26BDA1A58);
      sub_26BCFEEB0();
      goto LABEL_105;
    }

    v125 = v136;
    v124 = v137;
    sub_26BCFEE08();
    static SupportOption.OneOf_Details.== infix(_:_:)(v139, v124, v126, v127, v128, v129, v130, v131, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    v133 = v132;

    sub_26BCFEEB0();
    sub_26BD04E80(v141, &qword_2804490B0, &qword_26BDA1A58);
    sub_26BCFEEB0();
    sub_26BD04E80(v125, &qword_2804490B0, &qword_26BDA1A58);
    return (v133 & 1) != 0;
  }

  sub_26BD04E80(v141, &qword_2804490B0, &qword_26BDA1A58);
  if (__swift_getEnumTagSinglePayload(&v136[v120], 1, v140) != 1)
  {
LABEL_105:
    sub_26BD04E80(v136, &qword_2804495E0, &qword_26BDA3520);
    return 0;
  }

  sub_26BD04E80(v136, &qword_2804490B0, &qword_26BDA1A58);
  return 1;
}

uint64_t sub_26BCF7138(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495A0, type metadata accessor for SupportOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF71B8(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7228()
{
  sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF72B4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B48);
  __swift_project_value_buffer(v0, qword_280448B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "repair_label_type";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "localized_store_selection_disclaimer_header";
  *(v10 + 1) = 43;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.CINDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      v3 = *(type metadata accessor for SupportOption.CINDetails(0) + 24);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v4);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
LABEL_8:
      v0 = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_116();
      sub_26BDA0990();
      goto LABEL_8;
    }
  }
}

uint64_t (*sub_26BCF7614(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_26BCF7668(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449598, type metadata accessor for SupportOption.CINDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF76E8(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7758()
{
  sub_26BCFF280(&qword_2804491F8, type metadata accessor for SupportOption.CINDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF77E4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B68);
  __swift_project_value_buffer(v0, qword_280448B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_itcc_list";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "estimated_wait_time";
  *(v13 + 1) = 19;
  v13[16] = 2;
  *(v13 + 3) = "ewt";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v14 = *MEMORY[0x277D21878];
  v9();
  v15 = v1[14];
  v16 = (v5 + 3 * v2);
  *v16 = 4;
  v17 = v16 + v15;
  *v17 = "estimated_wait_time_id";
  *(v17 + 1) = 22;
  v17[16] = 2;
  *(v17 + 3) = "ewtId";
  *(v17 + 4) = 5;
  v17[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.C2CDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        goto LABEL_7;
      case 2:
        v3 = *(type metadata accessor for SupportOption.C2CDetails(0) + 32);
        sub_26BDA0810();
        OUTLINED_FUNCTION_3();
        sub_26BCFF280(&qword_280449130, v4);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
LABEL_7:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void SupportOption.C2CDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_267();
  v8 = sub_26BDA0810();
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v14 = *v0;
  v15 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v16 || (OUTLINED_FUNCTION_288(), (v3 = v1) == 0))
  {
    v34 = type metadata accessor for SupportOption.C2CDetails(0);
    v17 = *(v34 + 32);
    sub_26BD04E2C();
    OUTLINED_FUNCTION_112(v2, 1, v8);
    if (v18)
    {
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_294(v11);
      v20(v19);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v21, v22);
      v1 = v3;
      sub_26BDA0AD0();
      if (v3)
      {
        v23 = OUTLINED_FUNCTION_224();
        v24(v23);
        goto LABEL_14;
      }

      v25 = OUTLINED_FUNCTION_224();
      v26(v25);
    }

    v27 = v0[2];
    v28 = v0[3];
    OUTLINED_FUNCTION_29();
    if (!v29 || (OUTLINED_FUNCTION_288(), !v1))
    {
      v30 = v0[4];
      v31 = v0[5];
      OUTLINED_FUNCTION_29();
      if (!v32 || (OUTLINED_FUNCTION_288(), !v1))
      {
        v33 = v0 + *(v34 + 28);
        sub_26BDA0830();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t (*sub_26BCF7E38(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_26BCF7E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449590, type metadata accessor for SupportOption.C2CDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF7F0C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF7F7C()
{
  sub_26BCFF280(&qword_280449210, type metadata accessor for SupportOption.C2CDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8008()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448B88);
  __swift_project_value_buffer(v0, qword_280448B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_itcc_list";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCF82FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449588, type metadata accessor for SupportOption.SCBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF837C(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF83EC()
{
  sub_26BCFF280(&qword_280449228, type metadata accessor for SupportOption.SCBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8484()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BA8);
  __swift_project_value_buffer(v0, qword_280448BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  *(v6 + 24) = "phone";
  *(v6 + 32) = 5;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localized_operating_hours";
  *(v10 + 1) = 25;
  v10[16] = 2;
  *(v10 + 3) = "hours";
  *(v10 + 4) = 5;
  v10[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t (*sub_26BCF8750(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_26BCF87A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449580, type metadata accessor for SupportOption.PhoneDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF8824(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF8894()
{
  sub_26BCFF280(&qword_280449240, type metadata accessor for SupportOption.PhoneDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF892C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BC8);
  __swift_project_value_buffer(v0, qword_280448BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26BDA19E0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "transaction_id";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "estimated_wait_time";
  *(v11 + 1) = 19;
  v11[16] = 2;
  *(v11 + 3) = "ewt";
  *(v11 + 4) = 3;
  v11[40] = 2;
  v12 = *MEMORY[0x277D21878];
  v7();
  v13 = v1[14];
  v14 = (v19 + v3 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "estimated_wait_time_id";
  *(v15 + 1) = 22;
  v15[16] = 2;
  *(v15 + 3) = "ewtId";
  *(v15 + 4) = 5;
  v15[40] = 2;
  v7();
  v16 = (v19 + v3 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "rtct_opted";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.C2CHDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOption.C2CHDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = *(v2 + 48);
        v14 = *(v2 + 56);
        OUTLINED_FUNCTION_29();
        if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
          {
            v16 = *(type metadata accessor for SupportOption.C2CHDetails(0) + 36);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_26BCF8E08(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_26BCF8E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449578, type metadata accessor for SupportOption.C2CHDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF8EDC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF8F4C()
{
  sub_26BCFF280(&qword_280449258, type metadata accessor for SupportOption.C2CHDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF8FE4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448BE8);
  __swift_project_value_buffer(v0, qword_280448BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "transaction_id";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "rtct_opted";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "raw_url";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.BZCHTDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 3:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOption.BZCHTDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
      {
        v10 = *(v2 + 40);
        v11 = *(v2 + 48);
        OUTLINED_FUNCTION_29();
        if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v13 = *(type metadata accessor for SupportOption.BZCHTDetails(0) + 32);
          return OUTLINED_FUNCTION_104();
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_26BCF9434(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_26BCF9488(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449570, type metadata accessor for SupportOption.BZCHTDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCF9508(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCF9578()
{
  sub_26BCFF280(&qword_280449270, type metadata accessor for SupportOption.BZCHTDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCF9604()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C08);
  __swift_project_value_buffer(v0, qword_280448C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26BDA19F0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 3;
  *v8 = "bcs_type";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "should_create_case";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "call_to_action";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "diagnostics_consideration";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "trigger_solution";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "adaptive_content";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.BCSDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 2:
        OUTLINED_FUNCTION_117();
        sub_26BCF9A24(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      case 5:
        OUTLINED_FUNCTION_117();
        sub_26BCF9F44(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_117();
        sub_26BCFA468(v11, v12, v13, v14);
        break;
      case 7:
        OUTLINED_FUNCTION_117();
        sub_26BCFA96C(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BCF9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v46 = a3;
  v45 = a2;
  v5 = sub_26BDA0810();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v15 = *(*(Step - 8) + 64);
  v16 = MEMORY[0x28223BE20](Step);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - v24;
  __swift_storeEnumTagSinglePayload(&v36 - v24, 1, 1, v5);
  v37 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v38 = a1;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, Step);
  v40 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v13, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BCFEEB0();
    }

    else
    {
      sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v42 + 32);
      v28 = v39;
      v27(v39, v18, v5);
      v27(v25, v28, v5);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v29 = v43;
  sub_26BDA09B0();
  if (v29)
  {
    v30 = v25;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
    v30 = v23;
    return sub_26BD04E80(v30, &qword_280448F88, &qword_26BDA5440);
  }

  v32 = *(v42 + 32);
  v32(v41, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v33 = v40;
  sub_26BD04E80(v25, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34 = v38;
  sub_26BD04E80(v38 + v37, &qword_2804490D8, &qword_26BDA1A70);
  v32((v34 + v35), v41, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34 + v35, 0, 1, v33);
}

uint64_t sub_26BCF9F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v45 = a3;
  v44 = a2;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v16 = *(*(Step - 8) + 64);
  v17 = MEMORY[0x28223BE20](Step);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v35 - v25;
  __swift_storeEnumTagSinglePayload(&v35 - v25, 1, 1, v5);
  v36 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v37 = a1;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, Step);
  v39 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v14, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v41 + 32);
      v27(v10, v19, v5);
      v27(v26, v10, v5);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v28 = v42;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v26;
    return sub_26BD04E80(v29, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
    v29 = v24;
    return sub_26BD04E80(v29, &qword_280448F88, &qword_26BDA5440);
  }

  v31 = *(v41 + 32);
  v31(v40, v24, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v39;
  sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
  v34 = v36;
  v33 = v37;
  sub_26BD04E80(v37 + v36, &qword_2804490D8, &qword_26BDA1A70);
  v31((v33 + v34), v40, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v33 + v34, 0, 1, v32);
}

uint64_t sub_26BCFA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v14 = *(*(Step - 8) + 64);
  v15 = MEMORY[0x28223BE20](Step);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D8, &qword_26BDA3518);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v30 = a1;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, Step);
  v32 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v12, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BD04E80(v22, &qword_2804495D8, &qword_26BDA3518);
      sub_26BCFEE08();
      sub_26BCFEE08();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution);
  v23 = v34;
  sub_26BDA09B0();
  if (v23)
  {
    v24 = v22;
    return sub_26BD04E80(v24, &qword_2804495D8, &qword_26BDA3518);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_26BD04E80(v22, &qword_2804495D8, &qword_26BDA3518);
    v24 = v20;
    return sub_26BD04E80(v24, &qword_2804495D8, &qword_26BDA3518);
  }

  sub_26BCFEE08();
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v26 = v32;
  sub_26BD04E80(v22, &qword_2804495D8, &qword_26BDA3518);
  v28 = v29;
  v27 = v30;
  sub_26BD04E80(v30 + v29, &qword_2804490D8, &qword_26BDA1A70);
  sub_26BCFEE08();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_26BCFA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v45 = a3;
  v44 = a2;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v16 = *(*(Step - 8) + 64);
  v17 = MEMORY[0x28223BE20](Step);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v35 - v25;
  __swift_storeEnumTagSinglePayload(&v35 - v25, 1, 1, v5);
  v36 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  v37 = a1;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, Step);
  v39 = Step;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v14, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFEE08();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
      v27 = *(v41 + 32);
      v27(v10, v19, v5);
      v27(v26, v10, v5);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v5);
    }

    else
    {
      sub_26BCFEEB0();
    }
  }

  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v28 = v42;
  sub_26BDA09B0();
  if (v28)
  {
    v29 = v26;
    return sub_26BD04E80(v29, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
    v29 = v24;
    return sub_26BD04E80(v29, &qword_280448F88, &qword_26BDA5440);
  }

  v31 = *(v41 + 32);
  v31(v40, v24, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  v32 = v39;
  sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
  v34 = v36;
  v33 = v37;
  sub_26BD04E80(v37 + v36, &qword_2804490D8, &qword_26BDA1A70);
  v31((v33 + v34), v40, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v33 + v34, 0, 1, v32);
}

void SupportOption.BCSDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v7 = OUTLINED_FUNCTION_110(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38();
  v57[1] = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_193();
  v58 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v16 = sub_26BDA0810();
  v17 = OUTLINED_FUNCTION_18(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44();
  v24 = v23 - v22;
  v25 = *v0;
  v26 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v27 || (sub_26BDA0AB0(), !v1))
  {
    v57[2] = v5;
    v57[3] = v3;
    v57[0] = type metadata accessor for SupportOption.BCSDetails(0);
    v28 = *(v57[0] + 28);
    sub_26BD04E2C();
    Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
    OUTLINED_FUNCTION_112(v15, 1, Step);
    if (v30)
    {
      sub_26BD04E80(v15, &qword_2804490D8, &qword_26BDA1A70);
    }

    else if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_4();
      sub_26BCFEEB0();
    }

    else
    {
      (*(v19 + 32))(v24, v15, v16);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v35, v36);
      sub_26BDA0AD0();
      if (v1)
      {
        v37 = *(v19 + 8);
        v38 = OUTLINED_FUNCTION_167();
        v39(v38);
        goto LABEL_26;
      }

      v41 = *(v19 + 8);
      v42 = OUTLINED_FUNCTION_167();
      v43(v42);
    }

    v32 = v0[2];
    v33 = v0[3];
    OUTLINED_FUNCTION_29();
    if (!v34 || (sub_26BDA0AB0(), !v1))
    {
      if (*(v0 + 32) != 1 || (sub_26BDA0A40(), !v1))
      {
        sub_26BD04E2C();
        OUTLINED_FUNCTION_112(v58, 1, Step);
        if (v30)
        {
          goto LABEL_25;
        }

        sub_26BD04E2C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            OUTLINED_FUNCTION_117();
            sub_26BCFB29C(v52, v53, v54, v55);
            break;
          case 2:
            OUTLINED_FUNCTION_117();
            sub_26BCFB4E8(v44, v45, v46, v47);
            break;
          case 3:
            OUTLINED_FUNCTION_117();
            sub_26BCFB708(v48, v49, v50, v51);
            break;
          default:
            OUTLINED_FUNCTION_4();
            sub_26BCFEEB0();
            goto LABEL_25;
        }

        OUTLINED_FUNCTION_4();
        sub_26BCFEEB0();
        if (!v1)
        {
LABEL_25:
          sub_26BD04E80(v58, &qword_2804490D8, &qword_26BDA1A70);
          v56 = *(v57[0] + 32);
          OUTLINED_FUNCTION_104();
        }

        else
        {
          sub_26BD04E80(v58, &qword_2804490D8, &qword_26BDA1A70);
        }
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFB29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  sub_26BD04E2C();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  sub_26BD04E2C();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BCFEE08();
      sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution);
      sub_26BDA0AD0();
      return sub_26BCFEEB0();
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SupportOption.BCSDetails(0) + 28);
  sub_26BD04E2C();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, Step) == 1)
  {
    result = sub_26BD04E80(v7, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BCFEEB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BCFB9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449568, type metadata accessor for SupportOption.BCSDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFBA78(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFBAE8()
{
  sub_26BCFF280(&qword_280449288, type metadata accessor for SupportOption.BCSDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFBB68()
{
  result = MEMORY[0x26D695B80](0xD000000000000010, 0x800000026BDAB500);
  qword_280448C28 = 0xD000000000000018;
  unk_280448C30 = 0x800000026BDAADC0;
  return result;
}

uint64_t static SupportOption.BCSDetails.TriggerSolution.protoMessageName.getter()
{
  if (qword_280448C20 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCFBC40()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C40);
  __swift_project_value_buffer(v0, qword_280448C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serial_number_collection_title";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serial_number_collection_my_devices_footer";
  *(v10 + 1) = 42;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BCFBE58()
{
  OUTLINED_FUNCTION_246();
  v2 = v1;
  v3 = v0;
  while (1)
  {
    v4 = sub_26BDA0900();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      v6 = *(v2(0) + 24);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v7);
      sub_26BDA09B0();
LABEL_8:
      v3 = 0;
    }

    else if (v4 == 1)
    {
      sub_26BDA0990();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BCFBF7C()
{
  OUTLINED_FUNCTION_246();
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_267();
  v8 = sub_26BDA0810();
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v14 = *v0;
  v15 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v16 || (sub_26BDA0AB0(), !v1))
  {
    v17 = v29(0);
    v18 = *(v17 + 24);
    sub_26BD04E2C();
    OUTLINED_FUNCTION_112(v2, 1, v8);
    if (v19)
    {
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_294(v11);
      v21(v20);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v22, v23);
      sub_26BDA0AD0();
      if (v1)
      {
        v24 = OUTLINED_FUNCTION_224();
        v25(v24);
        goto LABEL_10;
      }

      v26 = OUTLINED_FUNCTION_224();
      v27(v26);
    }

    v28 = v0 + *(v17 + 20);
    sub_26BDA0830();
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFC23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449560, type metadata accessor for SupportOption.BCSDetails.TriggerSolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFC2BC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFC32C()
{
  sub_26BCFF280(&qword_2804492A0, type metadata accessor for SupportOption.BCSDetails.TriggerSolution);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFC3C4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C60);
  __swift_project_value_buffer(v0, qword_280448C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCFC5AC()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BCFC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_60();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_29();
  if (!v10 || (result = OUTLINED_FUNCTION_103(), !v5))
  {
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    OUTLINED_FUNCTION_29();
    if (!v14 || (result = OUTLINED_FUNCTION_103(), !v5))
    {
      v15 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BCFC754(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449558, type metadata accessor for SupportOption.KBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFC7D4(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFC844()
{
  sub_26BCFF280(&qword_2804492B8, type metadata accessor for SupportOption.KBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFC8D0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448C80);
  __swift_project_value_buffer(v0, qword_280448C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localized_additional_info";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_language_codes";
  *(v10 + 1) = 24;
  v10[16] = 2;
  *(v10 + 3) = "supportedLocales";
  *(v10 + 4) = 16;
  v10[40] = 2;
  v11 = *MEMORY[0x277D21878];
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOption.CASDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0970();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SupportOption.CASDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A90(), !v1))
    {
      v7 = *(type metadata accessor for SupportOption.CASDetails(0) + 24);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BCFCC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449550, type metadata accessor for SupportOption.CASDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFCCEC(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFCD5C()
{
  sub_26BCFF280(&qword_2804492D0, type metadata accessor for SupportOption.CASDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFCDF4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CA0);
  __swift_project_value_buffer(v0, qword_280448CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A00;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "flow";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26BDA0AE0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26BDA0AF0();
}

uint64_t SupportOption.ContactOptionsDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for SupportOption.ContactOptionsDetails(0) + 20);
      sub_26BDA0810();
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_280449130, v4);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      v0 = 0;
    }
  }

  return result;
}

void SupportOption.ContactOptionsDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_229();
  v7 = sub_26BDA0810();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v13 = OUTLINED_FUNCTION_267();
  v14 = *(type metadata accessor for SupportOption.ContactOptionsDetails(v13) + 20);
  sub_26BD04E2C();
  v15 = OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_112(v15, v16, v7);
  if (v17)
  {
    sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
LABEL_7:
    sub_26BDA0830();
    goto LABEL_8;
  }

  (*(v10 + 32))(v1, v2, v7);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v18, v19);
  sub_26BDA0AD0();
  if (!v0)
  {
    (*(v10 + 8))(v1, v7);
    goto LABEL_7;
  }

  (*(v10 + 8))(v1, v7);
LABEL_8:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BCFD2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449548, type metadata accessor for SupportOption.ContactOptionsDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFD354(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFD3C4()
{
  sub_26BCFF280(&qword_2804492E8, type metadata accessor for SupportOption.ContactOptionsDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFD45C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CC0);
  __swift_project_value_buffer(v0, qword_280448CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26BDA1A10;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "call_support_options";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "chat_support_option";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "contact_apple_support_option";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rank";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v7();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "should_hide_by_default";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v7();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "locale";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "localized_language_detail_info";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v7();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "other_support_options";
  *(v21 + 1) = 21;
  v21[16] = 2;
  *(v21 + 3) = "otherSolutions";
  *(v21 + 4) = 14;
  v21[40] = 2;
  v22 = *MEMORY[0x277D21878];
  v7();
  return sub_26BDA0AF0();
}

uint64_t ContactSupportOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 8:
        OUTLINED_FUNCTION_318();
        OUTLINED_FUNCTION_10();
        sub_26BCFF280(&qword_280449190, v4);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_12;
      case 2:
        v5 = *(type metadata accessor for ContactSupportOptions(0) + 44);
        goto LABEL_10;
      case 3:
        v3 = *(type metadata accessor for ContactSupportOptions(0) + 48);
LABEL_10:
        OUTLINED_FUNCTION_318();
        OUTLINED_FUNCTION_10();
        sub_26BCFF280(&qword_280449190, v6);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        goto LABEL_12;
      case 5:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        goto LABEL_12;
      case 6:
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
LABEL_12:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void ContactSupportOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  v4 = OUTLINED_FUNCTION_110(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_57();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = OUTLINED_FUNCTION_318();
  v14 = OUTLINED_FUNCTION_34(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38();
  v39[1] = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_10(), sub_26BCFF280(v19, v20), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_223(), sub_26BDA0AC0(), !v1))
  {
    v39[0] = type metadata accessor for ContactSupportOptions(0);
    v21 = *(v39[0] + 44);
    sub_26BD04E2C();
    OUTLINED_FUNCTION_112(v12, 1, v2);
    if (v22)
    {
      sub_26BD04E80(v12, &qword_2804490F0, &qword_26BDA1A88);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_167();
      sub_26BCFEE08();
      OUTLINED_FUNCTION_10();
      sub_26BCFF280(v23, v24);
      OUTLINED_FUNCTION_223();
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_25();
      sub_26BCFEEB0();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    v25 = *(v39[0] + 48);
    sub_26BD04E2C();
    v26 = OUTLINED_FUNCTION_244();
    OUTLINED_FUNCTION_112(v26, v27, v2);
    if (v22)
    {
      sub_26BD04E80(v9, &qword_2804490F0, &qword_26BDA1A88);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      sub_26BCFEE08();
      OUTLINED_FUNCTION_10();
      sub_26BCFF280(v28, v29);
      OUTLINED_FUNCTION_223();
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_25();
      sub_26BCFEEB0();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    if (*(v0 + 8) == 0.0 || (OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_261(), sub_26BDA0AA0(), !v1))
    {
      if (*(v0 + 16) != 1 || (OUTLINED_FUNCTION_231(), sub_26BDA0A40(), !v1))
      {
        v30 = *(v0 + 24);
        v31 = *(v0 + 32);
        OUTLINED_FUNCTION_29();
        if (!v32 || (OUTLINED_FUNCTION_231(), sub_26BDA0AB0(), !v1))
        {
          v33 = *(v0 + 40);
          v34 = *(v0 + 48);
          OUTLINED_FUNCTION_29();
          if (!v35 || (OUTLINED_FUNCTION_231(), sub_26BDA0AB0(), !v1))
          {
            if (!*(*(v0 + 56) + 16) || (OUTLINED_FUNCTION_10(), sub_26BCFF280(v36, v37), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_223(), sub_26BDA0AC0(), !v1))
            {
              v38 = v0 + *(v39[0] + 40);
              OUTLINED_FUNCTION_261();
              sub_26BDA0830();
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static ContactSupportOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_181();
  v5 = type metadata accessor for SupportOption(v4);
  v6 = OUTLINED_FUNCTION_34(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_263();
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  v13 = OUTLINED_FUNCTION_110(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449198, &qword_26BDA1AF8);
  v23 = OUTLINED_FUNCTION_34(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38();
  v71 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  if ((sub_26BD011F4(*v0, *v3) & 1) == 0)
  {
    goto LABEL_26;
  }

  v67 = v1;
  v68 = v18;
  v30 = type metadata accessor for ContactSupportOptions(0);
  v31 = *(v30 + 44);
  v32 = *(v22 + 48);
  v69 = v30;
  v70 = v0;
  sub_26BD04E2C();
  v33 = v3;
  sub_26BD04E2C();
  OUTLINED_FUNCTION_56(v29);
  if (v34)
  {
    OUTLINED_FUNCTION_56(&v29[v32]);
    if (v34)
    {
      sub_26BD04E80(v29, &qword_2804490F0, &qword_26BDA1A88);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_126();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_56(&v29[v32]);
  if (v34)
  {
    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0();
LABEL_10:
    v35 = &qword_280449198;
    v36 = &qword_26BDA1AF8;
LABEL_11:
    v37 = v29;
LABEL_25:
    sub_26BD04E80(v37, v35, v36);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5();
  sub_26BCFEE08();
  v38 = *(v5 + 20);
  v39 = *&v21[v38];
  v40 = *&v11[v38];
  if (v39 != v40)
  {
    v41 = *&v21[v38];

    v42 = sub_26BCF5AE0(v39, v40);

    if (!v42)
    {
      OUTLINED_FUNCTION_203();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_147();
      sub_26BCFEEB0();
      v35 = &qword_2804490F0;
      v36 = &qword_26BDA1A88;
      goto LABEL_11;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v43, v44);
  OUTLINED_FUNCTION_157();
  v45 = sub_26BDA0BB0();
  sub_26BCFEEB0();
  OUTLINED_FUNCTION_128();
  sub_26BCFEEB0();
  sub_26BD04E80(v29, &qword_2804490F0, &qword_26BDA1A88);
  if ((v45 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v47 = v69;
  v46 = v70;
  v48 = *(v69 + 48);
  v49 = *(v22 + 48);
  v50 = v71;
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_56(v50);
  if (!v34)
  {
    v51 = v68;
    sub_26BD04E2C();
    OUTLINED_FUNCTION_56(v50 + v49);
    if (!v52)
    {
      OUTLINED_FUNCTION_5();
      v54 = v67;
      sub_26BCFEE08();
      if (*(v51 + *(v5 + 20)) == *(v54 + *(v5 + 20)) || (, , v55 = OUTLINED_FUNCTION_147(), v57 = sub_26BCF5AE0(v55, v56), , , v57))
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v58, v59);
        OUTLINED_FUNCTION_130();
        v60 = sub_26BDA0BB0();
        OUTLINED_FUNCTION_203();
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_170();
        sub_26BCFEEB0();
        sub_26BD04E80(v50, &qword_2804490F0, &qword_26BDA1A88);
        if ((v60 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      sub_26BCFEEB0();
      sub_26BCFEEB0();
      v35 = &qword_2804490F0;
      v36 = &qword_26BDA1A88;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0();
LABEL_23:
    v35 = &qword_280449198;
    v36 = &qword_26BDA1AF8;
LABEL_24:
    v37 = v50;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_56(v50 + v49);
  if (!v34)
  {
    goto LABEL_23;
  }

  sub_26BD04E80(v50, &qword_2804490F0, &qword_26BDA1A88);
LABEL_31:
  if (*(v46 + 1) == *(v33 + 1) && *(v46 + 16) == *(v33 + 16))
  {
    v61 = v46[3] == v33[3] && v46[4] == v33[4];
    if (v61 || (sub_26BDA0FB0() & 1) != 0)
    {
      v62 = v46[5] == v33[5] && v46[6] == v33[6];
      if (v62 || (sub_26BDA0FB0()) && (sub_26BD011F4(v46[7], v33[7]))
      {
        v63 = *(v47 + 40);
        sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v64, v65);
        v53 = sub_26BDA0BB0();
        goto LABEL_27;
      }
    }
  }

LABEL_26:
  v53 = 0;
LABEL_27:
  OUTLINED_FUNCTION_258(v53);
  OUTLINED_FUNCTION_188();
}

uint64_t (*sub_26BCFE3B4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_26BCFE408(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449540, type metadata accessor for ContactSupportOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFE488(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFE4F8()
{
  sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFE590()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448CE0);
  __swift_project_value_buffer(v0, qword_280448CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "articles";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "limit";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCFE7BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_113(v5);
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t ArticleSupportOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0950();
LABEL_10:
        v0 = 0;
        break;
      case 2:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        goto LABEL_10;
      case 1:
        sub_26BDA0810();
        OUTLINED_FUNCTION_3();
        sub_26BCFF280(&qword_280449130, v3);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_10;
    }
  }
}

uint64_t ArticleSupportOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (!*(*v1 + 16) || (sub_26BDA0810(), OUTLINED_FUNCTION_3(), sub_26BCFF280(v4, v5), OUTLINED_FUNCTION_242(), v2 = v0, result = sub_26BDA0AC0(), !v0))
  {
    if (*(v3 + 8) == 0.0 || (v2 = v0, OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v0))
    {
      if (!*(v3 + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A70(), !v2))
      {
        v7 = *(type metadata accessor for ArticleSupportOptions(0) + 28);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static ArticleSupportOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  v3 = *v2;
  v5 = *v4;
  sub_26BD01478();
  if ((v6 & 1) == 0 || *(v1 + 8) != *(v0 + 8) || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v7 = *(type metadata accessor for ArticleSupportOptions(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v8, v9);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BCFEB10()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  sub_26BDA1050();
  v1(0);
  v2 = OUTLINED_FUNCTION_130();
  sub_26BCFF280(v2, v3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BCFEBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_280449538, type metadata accessor for ArticleSupportOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCFEC68(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCFECD8()
{
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions);

  return sub_26BDA0A00();
}

uint64_t sub_26BCFED54()
{
  sub_26BDA1050();
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26BCFEE08()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BCFEE5C()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BCFEEB0()
{
  v1 = OUTLINED_FUNCTION_134();
  v3 = v2(v1);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26BCFEFC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BCFF01C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BCFF1F4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_26BDA0FB0() & 1) == 0)
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

uint64_t sub_26BCFF280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BCFF2C8()
{
  OUTLINED_FUNCTION_184();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  return v0;
}

uint64_t sub_26BCFF33C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

void sub_26BCFF3AC()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v4 = v3;
  v5 = sub_26BDA07E0();
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  v12 = OUTLINED_FUNCTION_110(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  v139 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_252();
  v138 = v17;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  v18 = OUTLINED_FUNCTION_34(v147);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38();
  v149 = v21;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_252();
  v150 = v23;
  v24 = OUTLINED_FUNCTION_176();
  v144 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v24);
  v25 = OUTLINED_FUNCTION_34(v144);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_38();
  v145 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_252();
  v148 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v32 = OUTLINED_FUNCTION_110(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_38();
  v146 = v35;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_252();
  v141 = v37;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C0, &unk_26BDA3500);
  v38 = OUTLINED_FUNCTION_34(v152);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_38();
  v143 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_252();
  v151 = v43;
  v44 = OUTLINED_FUNCTION_176();
  v45 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(v44);
  v46 = OUTLINED_FUNCTION_51(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_97();
  v153 = v49 - v50;
  MEMORY[0x28223BE20](v51);
  v154 = (&v130 - v53);
  v54 = *(v4 + 16);
  if (v54 == *(v2 + 16) && v54 && v4 != v2)
  {
    v133 = v0;
    OUTLINED_FUNCTION_96(v52);
    v56 = v4 + v55;
    v57 = v2 + v55;
    v132 = (v8 + 32);
    v134 = (v8 + 8);
    v136 = *(v58 + 72);
    v137 = v5;
    v60 = v143;
    v59 = v144;
    v140 = v45;
    while (1)
    {
      sub_26BCFEE5C();
      if (!v54)
      {
        break;
      }

      v142 = v54;
      sub_26BCFEE5C();
      v61 = *v154;
      v62 = v154[1];
      OUTLINED_FUNCTION_233();
      v65 = v65 && v63 == v64;
      if (!v65 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_57;
      }

      v66 = v45[6];
      v67 = v151;
      v68 = *(v152 + 48);
      sub_26BD04E2C();
      sub_26BD04E2C();
      OUTLINED_FUNCTION_56(v67);
      if (v65)
      {
        OUTLINED_FUNCTION_56(v67 + v68);
        if (!v65)
        {
          goto LABEL_46;
        }

        sub_26BD04E80(v67, &qword_2804495B8, &qword_26BDA7810);
        v45 = v140;
      }

      else
      {
        v135 = v57;
        v69 = v141;
        sub_26BD04E2C();
        OUTLINED_FUNCTION_56(v67 + v68);
        if (v70)
        {
          OUTLINED_FUNCTION_208();
          sub_26BCFEEB0();
LABEL_46:
          v127 = &qword_2804495C0;
          v128 = &unk_26BDA3500;
          v129 = v67;
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_195();
        sub_26BCFEE08();
        v71 = *(v59 + 24);
        v72 = *(v147 + 48);
        sub_26BD04E2C();
        sub_26BD04E2C();
        v73 = OUTLINED_FUNCTION_244();
        v74 = v137;
        OUTLINED_FUNCTION_112(v73, v75, v137);
        if (v65)
        {
          OUTLINED_FUNCTION_20(v150 + v72);
          if (!v65)
          {
            goto LABEL_50;
          }

          sub_26BD04E80(v150, &qword_280449520, &unk_26BDA44F0);
          v76 = v148;
        }

        else
        {
          v77 = v150;
          v78 = v138;
          sub_26BD04E2C();
          OUTLINED_FUNCTION_20(v77 + v72);
          if (v79)
          {
            (*v134)(v78, v74);
LABEL_50:
            sub_26BD04E80(v150, &qword_280449528, &unk_26BDA34F0);
LABEL_51:
            OUTLINED_FUNCTION_209();
            sub_26BCFEEB0();
            sub_26BCFEEB0();
            v127 = &qword_2804495B8;
            v128 = &qword_26BDA7810;
            v129 = v151;
            goto LABEL_56;
          }

          v80 = *v132;
          v131 = v56;
          v81 = v150;
          v82 = OUTLINED_FUNCTION_296();
          v83(v82);
          OUTLINED_FUNCTION_24();
          sub_26BCFF280(&qword_280449530, v84);
          v85 = sub_26BDA0BB0();
          v86 = v78;
          v87 = *v134;
          v88 = OUTLINED_FUNCTION_281();
          (v87)(v88);
          v69 = v141;
          v87(v86, v74);
          v56 = v131;
          sub_26BD04E80(v81, &qword_280449520, &unk_26BDA44F0);
          v76 = v148;
          if ((v85 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v89 = *v69;
        v90 = *v76;
        sub_26BD00960();
        if ((v91 & 1) == 0)
        {
          goto LABEL_51;
        }

        v92 = v144;
        v93 = *(v144 + 20);
        v94 = sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(&qword_2804490C0, v95);
        sub_26BDA0BB0();
        OUTLINED_FUNCTION_194();
        v59 = v92;
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_281();
        sub_26BCFEEB0();
        sub_26BD04E80(v151, &qword_2804495B8, &qword_26BDA7810);
        v60 = v143;
        v45 = v140;
        v57 = v135;
        if ((v94 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v96 = v45[7];
      v97 = *(v152 + 48);
      sub_26BD04E2C();
      sub_26BD04E2C();
      OUTLINED_FUNCTION_56(v60);
      if (v65)
      {
        OUTLINED_FUNCTION_56(v60 + v97);
        if (!v65)
        {
          goto LABEL_48;
        }

        sub_26BD04E80(v60, &qword_2804495B8, &qword_26BDA7810);
      }

      else
      {
        sub_26BD04E2C();
        OUTLINED_FUNCTION_56(v60 + v97);
        if (v98)
        {
          OUTLINED_FUNCTION_208();
          sub_26BCFEEB0();
LABEL_48:
          v127 = &qword_2804495C0;
          v128 = &unk_26BDA3500;
LABEL_55:
          v129 = v60;
LABEL_56:
          sub_26BD04E80(v129, v127, v128);
LABEL_57:
          sub_26BCFEEB0();
          sub_26BCFEEB0();
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_195();
        sub_26BCFEE08();
        v99 = *(v59 + 24);
        v100 = *(v147 + 48);
        sub_26BD04E2C();
        sub_26BD04E2C();
        v101 = OUTLINED_FUNCTION_244();
        v102 = v137;
        OUTLINED_FUNCTION_112(v101, v103, v137);
        if (v65)
        {
          OUTLINED_FUNCTION_20(v149 + v100);
          if (!v65)
          {
            goto LABEL_53;
          }

          sub_26BD04E80(v149, &qword_280449520, &unk_26BDA44F0);
          v105 = v145;
          v104 = v146;
        }

        else
        {
          v106 = v149;
          v107 = v139;
          sub_26BD04E2C();
          OUTLINED_FUNCTION_20(v106 + v100);
          if (v108)
          {
            (*v134)(v107, v102);
LABEL_53:
            sub_26BD04E80(v149, &qword_280449528, &unk_26BDA34F0);
LABEL_54:
            OUTLINED_FUNCTION_209();
            sub_26BCFEEB0();
            sub_26BCFEEB0();
            v127 = &qword_2804495B8;
            v128 = &qword_26BDA7810;
            goto LABEL_55;
          }

          v109 = *v132;
          v110 = v149;
          v111 = OUTLINED_FUNCTION_296();
          v112(v111);
          OUTLINED_FUNCTION_24();
          sub_26BCFF280(&qword_280449530, v113);
          OUTLINED_FUNCTION_304();
          LODWORD(v135) = sub_26BDA0BB0();
          v114 = *v134;
          v115 = v60;
          v60 = v143;
          v116 = v145;
          (*v134)(v115, v102);
          v114(v139, v102);
          v59 = v144;
          v117 = v110;
          v105 = v116;
          sub_26BD04E80(v117, &qword_280449520, &unk_26BDA44F0);
          v104 = v146;
          if ((v135 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        v118 = *v104;
        v119 = *v105;
        sub_26BD00960();
        if ((v120 & 1) == 0)
        {
          goto LABEL_54;
        }

        v121 = *(v59 + 20);
        v122 = sub_26BDA0850();
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(&qword_2804490C0, v123);
        sub_26BDA0BB0();
        OUTLINED_FUNCTION_194();
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_272();
        sub_26BCFEEB0();
        sub_26BD04E80(v60, &qword_2804495B8, &qword_26BDA7810);
        v45 = v140;
        if ((v122 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v124 = v45[5];
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v125);
      v126 = sub_26BDA0BB0();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_272();
      sub_26BCFEEB0();
      if (v126)
      {
        v54 = v142 - 1;
        v57 += v136;
        v56 += v136;
        if (v142 != 1)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    __break(1u);
  }

  else
  {
LABEL_58:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
  }
}

void sub_26BCFFF00()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v5 = v4;
  v6 = sub_26BDA07E0();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_280();
  v56 = v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34(v57);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v19 = type metadata accessor for TriageRequest.HMTContext.UserAction(0);
  v20 = OUTLINED_FUNCTION_51(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_97();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v29 = (&v49 - v28);
  v30 = *(v5 + 16);
  if (v30 == *(v3 + 16) && v30 && v5 != v3)
  {
    OUTLINED_FUNCTION_96(v27);
    OUTLINED_FUNCTION_305();
    v49 = v32;
    v50 = v31;
    v52 = *(v33 + 72);
    v53 = v0;
    v55 = v19;
    while (1)
    {
      sub_26BCFEE5C();
      if (!v30)
      {
        break;
      }

      v58 = v30;
      OUTLINED_FUNCTION_131();
      sub_26BCFEE5C();
      v34 = *(v19 + 28);
      v35 = *(v57 + 48);
      sub_26BD04E2C();
      sub_26BD04E2C();
      OUTLINED_FUNCTION_106(v0);
      if (v38)
      {
        OUTLINED_FUNCTION_106(v0 + v35);
        if (!v38)
        {
          goto LABEL_28;
        }

        v36 = OUTLINED_FUNCTION_167();
        sub_26BD04E80(v36, v37, &unk_26BDA44F0);
      }

      else
      {
        sub_26BD04E2C();
        OUTLINED_FUNCTION_106(v0 + v35);
        if (v38)
        {
          (*v50)(v56, v6);
LABEL_28:
          sub_26BD04E80(v0, &qword_280449528, &unk_26BDA34F0);
LABEL_29:
          sub_26BCFEEB0();
          sub_26BCFEEB0();
          goto LABEL_30;
        }

        v39 = v0 + v35;
        v40 = v6;
        v6 = v56;
        v41 = v54;
        (*v49)(v54, v39, v40);
        OUTLINED_FUNCTION_24();
        sub_26BCFF280(&qword_280449530, v42);
        OUTLINED_FUNCTION_157();
        v51 = sub_26BDA0BB0();
        v43 = OUTLINED_FUNCTION_276();
        v34(v43);
        (v34)(v41, v40);
        sub_26BD04E80(v0, &qword_280449520, &unk_26BDA44F0);
        if ((v51 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v44 = *v29 == *v25 && v29[1] == v25[1];
      if (!v44 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_29;
      }

      v45 = v29[2] == v25[2] && v29[3] == v25[3];
      if (!v45 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_29;
      }

      v19 = v55;
      v46 = *(v55 + 24);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v47);
      v48 = OUTLINED_FUNCTION_309();
      sub_26BCFEEB0();
      sub_26BCFEEB0();
      if (v48)
      {
        v30 = v58 - 1;
        v0 = v53;
        v5 += v52;
        v1 += v52;
        if (v58 != 1)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
  }
}

void sub_26BD00458()
{
  OUTLINED_FUNCTION_189();
  v67 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_181();
  v69 = sub_26BDA07E0();
  v8 = OUTLINED_FUNCTION_18(v69);
  v63 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_280();
  v65 = v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34(v66);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v68 = v5(0);
  v25 = OUTLINED_FUNCTION_51(v68);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_97();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v34 = (&v58 - v33);
  v35 = *(v0 + 16);
  if (v35 != *(v7 + 16) || !v35 || v0 == v7)
  {
    goto LABEL_34;
  }

  v59 = v14;
  OUTLINED_FUNCTION_96(v32);
  v37 = v0 + v36;
  v38 = v7 + v36;
  v58 = (v63 + 32);
  v60 = (v63 + 8);
  v63 = *(v39 + 72);
  v64 = v3;
  while (1)
  {
    sub_26BCFEE5C();
    sub_26BCFEE5C();
    v40 = *(v68 + 32);
    v41 = *(v66 + 48);
    sub_26BD04E2C();
    sub_26BD04E2C();
    OUTLINED_FUNCTION_112(v24, 1, v69);
    if (!v43)
    {
      break;
    }

    OUTLINED_FUNCTION_112(&v24[v41], 1, v69);
    if (!v43)
    {
      goto LABEL_32;
    }

    sub_26BD04E80(v24, &qword_280449520, &unk_26BDA44F0);
LABEL_12:
    v52 = *v34 == *v30 && v34[1] == v30[1];
    if (!v52 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v53 = v34[2] == v30[2] && v34[3] == v30[3];
    if (!v53 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v54 = v34[4] == v30[4] && v34[5] == v30[5];
    if (!v54 && (sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v55 = *(v68 + 28);
    sub_26BDA0850();
    OUTLINED_FUNCTION_1();
    sub_26BCFF280(&qword_2804490C0, v56);
    v57 = sub_26BDA0BB0();
    sub_26BCFEEB0();
    sub_26BCFEEB0();
    if (v57)
    {
      v38 += v63;
      v37 += v63;
      if (--v35)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  v42 = v65;
  sub_26BD04E2C();
  OUTLINED_FUNCTION_112(&v24[v41], 1, v69);
  if (!v43)
  {
    v44 = v69;
    (*v58)(v59, &v24[v41], v69);
    OUTLINED_FUNCTION_24();
    sub_26BCFF280(&qword_280449530, v45);
    v61 = sub_26BDA0BB0();
    v62 = v38;
    v46 = v37;
    v47 = v24;
    v48 = v42;
    v49 = *v60;
    v50 = OUTLINED_FUNCTION_169();
    v49(v50);
    v51 = v48;
    v24 = v47;
    v37 = v46;
    v38 = v62;
    (v49)(v51, v44);
    sub_26BD04E80(v24, &qword_280449520, &unk_26BDA44F0);
    if ((v61 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (*v60)(v42, v69);
LABEL_32:
  sub_26BD04E80(v24, &qword_280449528, &unk_26BDA34F0);
LABEL_33:
  sub_26BCFEEB0();
  sub_26BCFEEB0();
LABEL_34:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD00960()
{
  OUTLINED_FUNCTION_189();
  v5 = OUTLINED_FUNCTION_218();
  v6 = type metadata accessor for TriageRequest.HMTContext.Setting(v5);
  v7 = OUTLINED_FUNCTION_51(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v15 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_96(v11);
    OUTLINED_FUNCTION_268(v12);
    while (1)
    {
      OUTLINED_FUNCTION_167();
      sub_26BCFEE5C();
      sub_26BCFEE5C();
      OUTLINED_FUNCTION_266();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v16 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
      if (!v16 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v17 = *(v6 + 24);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v18);
      v19 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_279();
      sub_26BCFEEB0();
      if (v19)
      {
        OUTLINED_FUNCTION_178();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_26BCFEEB0();
    OUTLINED_FUNCTION_126();
    sub_26BCFEEB0();
  }

LABEL_22:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD00B40()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v5 = v4;
  v6 = sub_26BDA07E0();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30();
  v57 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_280();
  v63 = v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34(v64);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_228();
  v19 = type metadata accessor for PhoneNumber(0);
  v20 = OUTLINED_FUNCTION_51(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_97();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v29 = (&v53 - v28);
  v30 = *(v5 + 16);
  if (v30 == *(v3 + 16) && v30 && v5 != v3)
  {
    OUTLINED_FUNCTION_96(v27);
    OUTLINED_FUNCTION_305();
    v54 = v32;
    v55 = v31;
    v58 = *(v33 + 72);
    v59 = v19;
    v34 = &unk_26BDA44F0;
    v61 = v25;
    v62 = v0;
    v60 = v29;
    while (1)
    {
      sub_26BCFEE5C();
      OUTLINED_FUNCTION_131();
      sub_26BCFEE5C();
      v35 = *v29 == *v25 && v29[1] == v25[1];
      if (!v35 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v36 = v29[2] == v25[2] && v29[3] == v25[3];
      if (!v36 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v37 = *(v19 + 28);
      v38 = *(v64 + 48);
      v39 = v62;
      v40 = v34;
      sub_26BD04E2C();
      sub_26BD04E2C();
      OUTLINED_FUNCTION_106(v39);
      if (v35)
      {
        OUTLINED_FUNCTION_106(v39 + v38);
        if (!v35)
        {
          goto LABEL_27;
        }

        v41 = OUTLINED_FUNCTION_216();
        sub_26BD04E80(v41, v42, v34);
        v19 = v59;
        v29 = v60;
        v25 = v61;
      }

      else
      {
        sub_26BD04E2C();
        OUTLINED_FUNCTION_106(v39 + v38);
        if (v43)
        {
          (*v55)(v63, v6);
LABEL_27:
          sub_26BD04E80(v39, &qword_280449528, &unk_26BDA34F0);
          break;
        }

        v44 = v39 + v38;
        v45 = v6;
        v6 = v63;
        v46 = v57;
        (*v54)(v57, v44, v45);
        OUTLINED_FUNCTION_24();
        sub_26BCFF280(&qword_280449530, v47);
        OUTLINED_FUNCTION_157();
        v56 = sub_26BDA0BB0();
        v48 = OUTLINED_FUNCTION_276();
        qword_280449520(v48);
        v49 = v46;
        v34 = v40;
        qword_280449520(v49);
        sub_26BD04E80(v39, &qword_280449520, v40);
        v19 = v59;
        v29 = v60;
        v25 = v61;
        if ((v56 & 1) == 0)
        {
          break;
        }
      }

      v50 = *(v19 + 24);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v51);
      v52 = OUTLINED_FUNCTION_309();
      sub_26BCFEEB0();
      sub_26BCFEEB0();
      if (v52)
      {
        v5 += v58;
        v1 += v58;
        if (--v30)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_26BCFEEB0();
    sub_26BCFEEB0();
  }

LABEL_29:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD01014()
{
  OUTLINED_FUNCTION_189();
  v5 = OUTLINED_FUNCTION_218();
  v6 = type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v5);
  v7 = OUTLINED_FUNCTION_51(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v15 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_96(v11);
    OUTLINED_FUNCTION_268(v12);
    while (1)
    {
      OUTLINED_FUNCTION_167();
      sub_26BCFEE5C();
      sub_26BCFEE5C();
      OUTLINED_FUNCTION_266();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_26BDA0FB0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24))
      {
        break;
      }

      v16 = *(v6 + 28);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v17);
      v18 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_279();
      sub_26BCFEEB0();
      if (v18)
      {
        OUTLINED_FUNCTION_178();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_26BCFEEB0();
    OUTLINED_FUNCTION_126();
    sub_26BCFEEB0();
  }

LABEL_19:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD011F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportOption(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_26BCFEE5C();
      sub_26BCFEE5C();
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_26BCF5AE0(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      sub_26BDA0850();
      sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8]);
      v22 = sub_26BDA0BB0();
      sub_26BCFEEB0();
      sub_26BCFEEB0();
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_26BCFEEB0();
    sub_26BCFEEB0();
    goto LABEL_12;
  }

  v22 = 1;
  return v22 & 1;
}

void sub_26BD01478()
{
  OUTLINED_FUNCTION_189();
  v1 = v0;
  v3 = v2;
  v4 = sub_26BDA0810();
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = v3 + v14;
    v16 = v1 + v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = (v17 - 8);
    v29 = *(v17 + 56);
    v30 = v18;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_262();
      v21 = v30;
      v30(v20);
      if (!v13)
      {
        break;
      }

      v22 = OUTLINED_FUNCTION_275();
      v23 = v17;
      v21(v22);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(&qword_2804490D0, v24);
      v25 = sub_26BDA0BB0();
      v26 = *v19;
      v27 = OUTLINED_FUNCTION_147();
      v26(v27);
      (v26)(v12, v4);
      if (v25)
      {
        v16 += v29;
        v15 += v29;
        v28 = v13-- == 1;
        v17 = v23;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_188();
  }
}

uint64_t sub_26BD02860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_184();
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    v12 = OUTLINED_FUNCTION_175(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v14 = *(a3 + 24);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_26BD02960()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_242();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    v9 = OUTLINED_FUNCTION_175(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v11 = *(v2 + 24);
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

void sub_26BD02A4C()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD02B48(319, &qword_280449340, type metadata accessor for TriageRequest.CaseMetaData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26BD02B48(319, &unk_280449348, type metadata accessor for TriageRequest.ClientContext, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD02B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_102Tm()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  v4 = sub_26BDA0850();
  result = OUTLINED_FUNCTION_175(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_242();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26BD02D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26BDA0850();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD02DF0()
{
  v0 = type metadata accessor for SupportOption.CINDetails(319);
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for SupportOption.C2CDetails(319);
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for SupportOption.SCBDetails(319);
      if (v3 <= 0x3F)
      {
        v0 = type metadata accessor for SupportOption.PhoneDetails(319);
        if (v4 <= 0x3F)
        {
          v0 = type metadata accessor for SupportOption.C2CHDetails(319);
          if (v5 <= 0x3F)
          {
            v0 = type metadata accessor for SupportOption.BZCHTDetails(319);
            if (v6 <= 0x3F)
            {
              v0 = sub_26BDA0810();
              if (v7 <= 0x3F)
              {
                v8 = type metadata accessor for SupportOption.BCSDetails(319);
                if (v9 > 0x3F)
                {
                  return v8;
                }

                v8 = type metadata accessor for SupportOption.KBDetails(319);
                if (v10 > 0x3F)
                {
                  return v8;
                }

                v8 = type metadata accessor for SupportOption.CASDetails(319);
                if (v11 > 0x3F)
                {
                  return v8;
                }

                v8 = type metadata accessor for SupportOption.ContactOptionsDetails(319);
                if (v12 > 0x3F)
                {
                  return v8;
                }

                else
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_26BD02F90()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD03054()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v3 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD03108()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03244()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD032BC()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD0331C()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD033C0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD03438()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD03498()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD03534()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_175(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = *(v5 + 28);
  }

  else
  {
    sub_26BDA0850();
    v9 = *(v5 + 32);
  }

  v10 = OUTLINED_FUNCTION_174(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_26BD03604()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      sub_26BDA0850();
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD036B8()
{
  sub_26BD02B48(319, &unk_280449420, type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03794()
{
  v0 = sub_26BDA0810();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(319);
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t __swift_get_extra_inhabitant_index_126Tm()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_127Tm()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v3 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v5 = *(v0 + 24);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD039A8()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_245();
    }
  }
}

uint64_t sub_26BD03A74()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_245();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_153Tm()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_154Tm()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_26BD03BBC()
{
  sub_26BD04F78(319, &qword_280449480, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_184();
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_26BD03D34()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_184();
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_242();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

void sub_26BD03DD4()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD03E9C()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
    v7 = *(v2 + 44);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD03F60()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v5 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
      v7 = *(v2 + 44);
    }

    v8 = OUTLINED_FUNCTION_107(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26BD04018()
{
  sub_26BD02B48(319, &qword_2804494B0, type metadata accessor for SupportOption, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD02B48(319, &qword_2804494B8, type metadata accessor for SupportOption, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD0414C()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*v0);
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD041C4()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v4 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_26BD04228()
{
  sub_26BD02B48(319, &unk_2804494D0, MEMORY[0x277D215C8], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD042FC()
{
  sub_26BD02B48(319, &qword_2804494F0, type metadata accessor for ContactSupportOptions, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_26BD02B48(319, &qword_2804494F8, type metadata accessor for ArticleSupportOptions, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26BD044EC()
{
  sub_26BD02B48(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26BD02B48(319, &unk_280449510, type metadata accessor for SupportOption.OneOf_Details, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BD04688()
{
  OUTLINED_FUNCTION_189();
  v5 = OUTLINED_FUNCTION_218();
  v6 = type metadata accessor for AssociatedProductInfo(v5);
  v7 = OUTLINED_FUNCTION_51(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_149();
  if (v15 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_96(v11);
    OUTLINED_FUNCTION_268(v12);
    while (1)
    {
      OUTLINED_FUNCTION_167();
      sub_26BCFEE5C();
      sub_26BCFEE5C();
      OUTLINED_FUNCTION_266();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v16 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
      if (!v16 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v17 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
      if (!v17 && (sub_26BDA0FB0() & 1) == 0)
      {
        break;
      }

      v18 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
      if (!v18 && (sub_26BDA0FB0() & 1) == 0 || *(v2 + 64) != *(v1 + 64))
      {
        break;
      }

      v19 = *(v6 + 36);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v20);
      v21 = OUTLINED_FUNCTION_249();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_279();
      sub_26BCFEEB0();
      if (v21)
      {
        OUTLINED_FUNCTION_178();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    sub_26BCFEEB0();
    OUTLINED_FUNCTION_126();
    sub_26BCFEEB0();
  }

LABEL_33:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_188();
}

void sub_26BD04960()
{
  OUTLINED_FUNCTION_189();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_97();
  MEMORY[0x28223BE20](v9);
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    OUTLINED_FUNCTION_96(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_204();
      sub_26BCFEE5C();
      OUTLINED_FUNCTION_141();
      sub_26BCFEE5C();
      v17 = OUTLINED_FUNCTION_167();
      v18 = v1(v17);
      OUTLINED_FUNCTION_126();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_302();
      sub_26BCFEEB0();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_188();
}

void sub_26BD04ACC()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_218();
  v4 = type metadata accessor for ExecuteResponse.Task(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v11 = (v29 - v10);
  v12 = *(v2 + 16);
  if (v12 == *(v0 + 16) && v12 && v2 != v0)
  {
    v13 = 0;
    OUTLINED_FUNCTION_96(v9);
    v29[1] = v2 + v14;
    v16 = *(v15 + 72);
    while (1)
    {
      sub_26BCFEE5C();
      if (v13 == v12)
      {
        break;
      }

      sub_26BCFEE5C();
      v17 = *v11;
      v18 = *v1;
      v19 = *(*v11 + 16);
      if (v19 != *(*v1 + 16))
      {
        goto LABEL_34;
      }

      if (v19)
      {
        v20 = v17 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v17 + 40);
        v22 = (v18 + 40);
        while (v19)
        {
          v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
          if (!v23 && (sub_26BDA0FB0() & 1) == 0)
          {
            goto LABEL_34;
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        break;
      }

LABEL_19:
      v24 = v11[1] == v1[1] && v11[2] == v1[2];
      if (!v24 && (sub_26BDA0FB0() & 1) == 0 || v11[3] != v1[3] || (v11[4] == v1[4] ? (v25 = v11[5] == v1[5]) : (v25 = 0), !v25 && (sub_26BDA0FB0() & 1) == 0))
      {
LABEL_34:
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_126();
        sub_26BCFEEB0();
        goto LABEL_35;
      }

      v26 = *(v4 + 32);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(&qword_2804490C0, v27);
      v28 = sub_26BDA0BB0();
      sub_26BCFEEB0();
      sub_26BCFEEB0();
      if ((v28 & 1) != 0 && ++v13 != v12)
      {
        continue;
      }

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_225();
    OUTLINED_FUNCTION_188();
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

unint64_t sub_26BD04DD8()
{
  result = qword_2804495E8;
  if (!qword_2804495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804495E8);
  }

  return result;
}

uint64_t sub_26BD04E2C()
{
  OUTLINED_FUNCTION_184();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  return v0;
}

uint64_t sub_26BD04E80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_34(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_26BD04F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result)
{
  *(v1 + 40) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_26BD04E80(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = type metadata accessor for SupportOption(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_27()
{
  result = type metadata accessor for AllSolutionsResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SupportOption(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for AllSolutionsResponse(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_39()
{
  result = type metadata accessor for SupportOption(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{
  result = type metadata accessor for SupportOption(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{
  result = type metadata accessor for AllSolutionsResponse(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_54(uint64_t result)
{
  v1 = *(*result + 48);
  v2 = *(*result + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58()
{
  v1 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_59(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{
  v0 = type metadata accessor for SupportOption._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_82()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_86(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_93()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_94()
{
  v0 = type metadata accessor for AllSolutionsResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_26BCFEE08();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_26BDA0830();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_108()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_119(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_125@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_135()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_140()
{
  result = type metadata accessor for SupportOption.BCSDetails(0);
  v1 = *(result + 28);
  return result;
}

void OUTLINED_FUNCTION_146()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_154()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_159()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_160()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_163()
{
  v1 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for AllSolutionsResponse(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t **OUTLINED_FUNCTION_179(uint64_t **result)
{
  v1 = *(*result + 10);
  v2 = (*result)[3];
  v3 = (*result)[4];
  v4 = (*result)[1];
  v5 = (*result)[2];
  v6 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_182(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 72) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1)
{
  v2 = *(*a1 + 84);
  v3 = *(*(*a1 + 72) + *(*a1 + 80));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_191()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_211()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_212()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_220()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_221()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_226()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_230()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for SupportOption(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_235()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_236()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_240()
{
  result = *(v0 + v2);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_245()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_248@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v4 = v1 + *(v2 + 28);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_251()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_260(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_266()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_269()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_282()
{
  v2 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_288()
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_292@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 24);

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_293(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_297()
{
  result = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_301@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  v2 = v1 + *(type metadata accessor for SupportOption.C2CHDetails(0) + 36);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_308()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_309()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_310()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_313()
{

  return sub_26BD04E2C();
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_26BCFEE08();
}

uint64_t OUTLINED_FUNCTION_315()
{
}

uint64_t OUTLINED_FUNCTION_319@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26BCFEE08();
}

uint64_t OUTLINED_FUNCTION_320@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
  v2 = v1 + *(type metadata accessor for SupportOption.BZCHTDetails(0) + 32);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_321@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  v2 = v1 + *(type metadata accessor for SupportOption.C2CDetails(0) + 28);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06C6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = MEMORY[0x277D84F90];
  *(a1 + 96) = 0;
  v2 = type metadata accessor for AuthResponse.Account(0);
  v3 = a1 + v2[12];
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v4 = v2[13];
  v5 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = v2[14];
  v7 = type metadata accessor for AuthResponse.AuthenticationToken(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
}

uint64_t sub_26BD06D24@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for AuthResponse.ImproveSearchConsent(0) + 24);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06D64@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  a1[2] = 0;
  a1[3] = 0;
  v3 = a1 + *(v2 + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD06DA4@<X0>(uint64_t a1@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v2 = *(type metadata accessor for AuthResponse(0) + 20);
  if (qword_280448D00 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280449790;
}

uint64_t sub_26BD06E20()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459EE0);
  __swift_project_value_buffer(v0, qword_280459EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26BDA3640;
  v4 = v37 + v3;
  v5 = v37 + v3 + v1[14];
  *(v37 + v3) = 9;
  *v5 = "primary_account";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "smb_account";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 11;
  *v11 = "improve_search_consent";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 1;
  *v13 = "deprecated_uses_phone_number_for_apple_id";
  *(v13 + 1) = 41;
  v13[16] = 2;
  *(v13 + 3) = "usesPhoneNumberForAppleID";
  *(v13 + 4) = 25;
  v13[40] = 2;
  v14 = *MEMORY[0x277D21878];
  v8();
  v15 = v1[14];
  v16 = (v4 + 4 * v2);
  *v16 = 2;
  v17 = v16 + v15;
  *v17 = "deprecated_given_name";
  *(v17 + 1) = 21;
  v17[16] = 2;
  *(v17 + 3) = "firstName";
  *(v17 + 4) = 9;
  v17[40] = 2;
  v8();
  v18 = v1[14];
  v19 = (v4 + 5 * v2);
  *v19 = 3;
  v20 = v19 + v18;
  *v20 = "deprecated_family_name";
  *(v20 + 1) = 22;
  v20[16] = 2;
  *(v20 + 3) = "lastName";
  *(v20 + 4) = 8;
  v20[40] = 2;
  v8();
  v21 = v1[14];
  v22 = (v4 + 6 * v2);
  *v22 = 4;
  v23 = v22 + v21;
  *v23 = "deprecated_nickname";
  *(v23 + 1) = 19;
  v23[16] = 2;
  *(v23 + 3) = "nickName";
  *(v23 + 4) = 8;
  v23[40] = 2;
  v8();
  v24 = v1[14];
  v25 = (v4 + 7 * v2);
  *v25 = 5;
  v26 = v25 + v24;
  *v26 = "deprecated_email_address";
  *(v26 + 1) = 24;
  v26[16] = 2;
  *(v26 + 3) = "email";
  *(v26 + 4) = 5;
  v26[40] = 2;
  v8();
  v27 = v1[14];
  v28 = (v4 + 8 * v2);
  *v28 = 6;
  v29 = v28 + v27;
  *v29 = "deprecated_region_code";
  *(v29 + 1) = 22;
  v29[16] = 2;
  *(v29 + 3) = "regionCode";
  *(v29 + 4) = 10;
  v29[40] = 2;
  v8();
  v30 = v1[14];
  v31 = (v4 + 9 * v2);
  *v31 = 7;
  v32 = v31 + v30;
  *v32 = "deprecated_phone";
  *(v32 + 1) = 16;
  v32[16] = 2;
  *(v32 + 3) = "phone";
  *(v32 + 4) = 5;
  v32[40] = 2;
  v8();
  v33 = v1[14];
  v34 = (v4 + 10 * v2);
  *v34 = 8;
  v35 = v34 + v33;
  *v35 = "deprecated_auth_token";
  *(v35 + 1) = 21;
  v35[16] = 2;
  *(v35 + 3) = "authToken";
  *(v35 + 4) = 9;
  v35[40] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD072B8()
{
  v0 = type metadata accessor for AuthResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26BD072F8();
  qword_280449790 = result;
  return result;
}

uint64_t sub_26BD072F8()
{
  v1 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  v2 = type metadata accessor for AuthResponse.Account(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v4 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v11 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v13 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  return v0;
}

uint64_t sub_26BD07430(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  v15 = type metadata accessor for AuthResponse.Account(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v52[1] = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v52[2] = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent;
  v17 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v53 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  *(v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID) = 0;
  v18 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  v55 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v56 = v22;
  v57 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone;
  v24 = type metadata accessor for PhoneNumber(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v58 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken;
  v26 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v53;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  swift_beginAccess();
  v32 = v18[1];
  *v18 = v30;
  v18[1] = v31;

  v33 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  swift_beginAccess();
  v36 = v19[1];
  *v19 = v34;
  v19[1] = v35;

  v37 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  swift_beginAccess();
  v40 = v20[1];
  *v20 = v38;
  v20[1] = v39;

  v41 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v55;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v42;
  v44[1] = v43;

  v46 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v56;
  swift_beginAccess();
  v50 = v49[1];
  *v49 = v48;
  v49[1] = v47;

  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD0D868();

  swift_beginAccess();
  sub_26BD0D978();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD07B00()
{
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__smbAccount, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__improveSearchConsent, &qword_280449900, &unk_26BDA3CA0);
  v1 = *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedPhone, &qword_280449840, &qword_26BDA36D8);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedAuthToken, &qword_280449848, &qword_26BDA36E0);
  return v0;
}

uint64_t sub_26BD07C2C()
{
  v0 = *sub_26BD07B00();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x2821FE8D8]();
}

void sub_26BD07CA8()
{
  sub_26BD07EE4(319, &qword_280449800, type metadata accessor for AuthResponse.Account, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_26BD07EE4(319, &qword_280449808, type metadata accessor for AuthResponse.ImproveSearchConsent, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_26BD07EE4(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_26BD07EE4(319, &qword_280449818, type metadata accessor for AuthResponse.AuthenticationToken, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26BD07EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26BD07F9C()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD08014()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_174(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BD08084()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD08124()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD0819C()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_174(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BD0820C()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD0829C()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 16));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[12];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
    OUTLINED_FUNCTION_175(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
      v7 = v2[14];
    }
  }

  v10 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_26BD083AC()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
      OUTLINED_FUNCTION_175(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[13];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
        v9 = v5[14];
      }
    }

    v12 = OUTLINED_FUNCTION_174(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v0, v14);
  }
}

void sub_26BD084B8()
{
  sub_26BD07EE4(319, &qword_280449860, type metadata accessor for PhoneNumber, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD07EE4(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26BD07EE4(319, &qword_280449818, type metadata accessor for AuthResponse.AuthenticationToken, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}