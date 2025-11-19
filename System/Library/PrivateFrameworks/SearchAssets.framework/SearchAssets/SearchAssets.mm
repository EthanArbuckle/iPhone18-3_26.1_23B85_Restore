uint64_t sub_2157E5990(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

uint64_t sub_2157E59C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2157E59D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2157E5A0C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2157E5A50()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2157E5AD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2157E5B08()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2157E5B3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2157E5B7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  OUTLINED_FUNCTION_65(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2157E6460()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2157E6498()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2157E64E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2157E6574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = qword_28119D880;

  if (v8 != -1)
  {
    swift_once();
  }

  result = sub_215802CAC(v4, v5, v6, v7, byte_28119DA70);
  if (result)
  {
    v10 = 0;
    v11 = 0;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v11 = &off_2827B5910;
    v10 = &unk_2827B58F8;
  }

  a3[3] = v10;
  a3[4] = v11;
  return result;
}

char *sub_2157E6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a4;
  v64 = sub_21580B700();
  OUTLINED_FUNCTION_12();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = sub_21580B760();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v67 = a6;
  sub_2157EC008(a6, v69, &qword_27CA73BF8, &qword_21580CB18);
  v66 = a7;
  sub_2157EC008(a7, v68, &qword_27CA73C00, &qword_21580CB20);
  v27 = objc_allocWithZone(type metadata accessor for SASafariAssistantAssetManager());

  v28 = v70;
  swift_unknownObjectRetain();

  sub_2157EBA44(a8);
  v29 = sub_2157EB2A4(a3, v28, a1, a2, v69, v68, a8, a9, v27);
  v30 = *&v29[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_activityMonitor];
  (*(v15 + 104))(v21, *MEMORY[0x277D39D88], v64);
  v31 = v29;

  sub_21580B770();
  v32 = type metadata accessor for ResourceAccessSpan();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_215801DF0(v30, 67, v26, 0, 1);
  LOBYTE(v26) = v31[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_shouldReportAnalytics];

  if ((v26 & 1) == 0)
  {
    *(v35 + qword_28119D508) = 1;
  }

  v36 = *(v70 + 40);
  if (!v36)
  {

    *(v35 + qword_28119D500) = 82;
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v40 = sub_21580B7F0();
    __swift_project_value_buffer(v40, qword_28119DA40);
    v41 = sub_21580B7D0();
    v42 = sub_21580BAC0();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_23();
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2157E4000, v41, v42, "SafariSummarizationPrefetch - Missing countryCode, unable to subscribe to AssetProvider", v43, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    v44 = "TB,N,R,VhasMatchedPattern";
    v45 = 0xD000000000000039;
    v46 = 1;
    goto LABEL_16;
  }

  v37 = *(v70 + 32);
  v39 = *&v31[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler];
  v38 = *&v31[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler + 8];

  v39(v69, v37, v36, a1, a2);

  if (!v69[3])
  {
    sub_2157EC06C(v69, &qword_27CA73C10, &qword_21580CB30);
    *(v35 + qword_28119D500) = 97;
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v45 = 0xD000000000000025;
    v47 = sub_21580B7F0();
    __swift_project_value_buffer(v47, qword_28119DA40);

    v48 = sub_21580B7D0();
    v49 = a2;
    v50 = sub_21580BAC0();

    v65 = v48;
    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v51 = 136643075;
      v52 = sub_215808B34(v37, v36, v69);

      *(v51 + 4) = v52;
      *(v51 + 12) = 2085;
      v53 = sub_215808B34(a1, v49, v69);

      *(v51 + 14) = v53;
      _os_log_impl(&dword_2157E4000, v65, v50, "SafariSummarizationPrefetch - Unsupported countryCode: %{sensitive}s and locale: %{sensitive}s", v51, 0x16u);
      v46 = 2;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();

      v44 = "ubscribe to AssetProvider";
    }

    else
    {

      v44 = "ubscribe to AssetProvider";
      v46 = 2;
    }

LABEL_16:
    v54 = sub_21580B890();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C08, &qword_21580CB28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    v58 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_21580B890();
    *(inited + 40) = v59;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v45;
    *(inited + 56) = v44 | 0x8000000000000000;
    v60 = sub_21580B850();
    v61 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2157E8FEC(v54, v56, v46, v60);
    swift_willThrow();

    OUTLINED_FUNCTION_26();
    swift_unknownObjectRelease();
    sub_2157EC06C(v66, &qword_27CA73C00, &qword_21580CB20);
    sub_2157EC06C(v67, &qword_27CA73BF8, &qword_21580CB18);
    return v31;
  }

  sub_2157EC06C(v69, &qword_27CA73C10, &qword_21580CB30);
  *(v35 + qword_28119D500) = 81;
  sub_215802470();

  OUTLINED_FUNCTION_26();
  swift_unknownObjectRelease();
  sub_2157EC06C(v66, &qword_27CA73C00, &qword_21580CB20);
  sub_2157EC06C(v67, &qword_27CA73BF8, &qword_21580CB18);
  return v31;
}

uint64_t sub_2157E6DB0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_2157E6DC8()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v3 = *(v2 + 40);
  if (v3)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v2 + 32);
    v7 = v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler;
    v9 = *v7;
    v8 = *(v7 + 8);

    v9(v6, v3, v5, v4);

    if (*(v0 + 80))
    {
      v10 = *(v0 + 136);
      sub_2157E59C0((v0 + 56), v0 + 16);
      *(v0 + 144) = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_11(&unk_21580CB80);
      v22 = v11;
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v13 = OUTLINED_FUNCTION_10(v12);

      return v22(v13);
    }

    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v15, qword_28119DA40);
    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();
    if (OUTLINED_FUNCTION_24(v17))
    {
      OUTLINED_FUNCTION_23();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v18);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v19, v20, "SafariSummarizationPrefetch - Missing countryCode, unable to subscribe to AssetProvider");
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }

  OUTLINED_FUNCTION_6();

  return v21();
}

uint64_t sub_2157E6FE8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2157E70CC()
{
  OUTLINED_FUNCTION_3();
  v1 = (v0[17] + v0[18]);
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&unk_21580CB78);
  v7 = v3;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_10(v4);

  return v7(v5);
}

uint64_t sub_2157E7174()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2157E7278(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21580B890();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2157EC36C;

  return sub_2157E6DB0(v5, v7);
}

uint64_t sub_2157E734C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = sub_21580BA60();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_21580CBA8;
  v9[5] = v8;
  sub_2157E934C(0, 0, v6, &unk_21580CBB8, v9);
}

uint64_t sub_2157E745C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_2157E7474()
{
  v35 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v3 = *(v2 + 40);
  if (!v3)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v22 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v22, qword_28119DA40);
    v23 = sub_21580B7D0();
    v24 = sub_21580BAC0();
    if (OUTLINED_FUNCTION_24(v24))
    {
      OUTLINED_FUNCTION_23();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v25);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v26, v27, "SafariSummarizationPrefetch - Missing countryCode, unable to call forceDownloadAssetsIfNeeded");
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    goto LABEL_19;
  }

  v4 = *(v2 + 32);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler;
  v9 = *v7;
  v8 = *(v7 + 8);

  v9(v4, v3, v6, v5);

  if (!*(v0 + 80))
  {

    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
LABEL_19:
    OUTLINED_FUNCTION_6();

    return v32();
  }

  v10 = *(v0 + 136);
  sub_2157E59C0((v0 + 56), v0 + 16);
  v11 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  *(v0 + 144) = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  v12 = (v10 + v11);
  OUTLINED_FUNCTION_9();
  v13 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
  OUTLINED_FUNCTION_20();
  if (sub_2157E9E1C(v13))
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v14 = *(v0 + 128);
    v15 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v15, qword_28119DA40);

    v16 = sub_21580B7D0();
    v17 = sub_21580BAE0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v20 = 136643075;
      v21 = sub_215808B34(v4, v3, &v34);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2085;
      *(v20 + 14) = sub_215808B34(v19, v18, &v34);
      _os_log_impl(&dword_2157E4000, v16, v17, "SafariSummarizationPrefetch - Asset already downloaded, skip triggering force download of asset with countryCode: %{sensitive}s, locale: %{sensitive}s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&unk_21580CB70);
  v33 = v28;
  v29 = swift_task_alloc();
  *(v0 + 152) = v29;
  *v29 = v0;
  v30 = OUTLINED_FUNCTION_10(v29);

  return v33(v30);
}

uint64_t sub_2157E7828()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2157E790C()
{
  OUTLINED_FUNCTION_3();
  v1 = (v0[17] + v0[18]);
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&unk_21580CB78);
  v7 = v3;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_10(v4);

  return v7(v5);
}

uint64_t sub_2157E79B4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2157E7A98()
{
  OUTLINED_FUNCTION_3();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2157E7B10(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_27();

  return sub_2157E734C(v10, v11);
}

uint64_t sub_2157E7B90(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21580B890();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2157E7C64;

  return sub_2157E745C(v5, v7);
}

uint64_t sub_2157E7C64()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v4[2](v4);
  _Block_release(v4);
  OUTLINED_FUNCTION_6();

  return v8();
}

id sub_2157E7DAC(uint8_t *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_21580B4D0();
  OUTLINED_FUNCTION_12();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  v17 = sub_215805F9C(a1, a2);
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v17;
  v20 = v18;
  sub_21580B4C0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_2157EC06C(v7, &unk_27CA73C58, &dword_21580CB68);
LABEL_4:
    v21 = objc_allocWithZone(type metadata accessor for PrefilterSafariSummarizationPrefetchModel());
    v22 = OUTLINED_FUNCTION_28();
    return sub_2157E8BF0(v22, 0, 0);
  }

  (*(v10 + 32))(v16, v7, v8);
  v24 = sub_21580B480();
  v26 = 0;
  if (v24)
  {
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = 1;
    }
  }

  v27 = objc_allocWithZone(type metadata accessor for PrefilterSafariSummarizationPrefetchModel());
  v23 = sub_2157E8BF0(v19, v20, v26);
  (*(v10 + 8))(v16, v8);
  return v23;
}

uint64_t sub_2157E80A4(uint8_t *a1, unint64_t a2)
{
  v2 = [sub_2157E7DAC(a1 a2)];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = sub_21580B890();

  return v3;
}

uint64_t sub_2157E81CC()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40) + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2157E8270;

  return sub_2157EF54C();
}

uint64_t sub_2157E8270()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2157E83CC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2157E8474;

  return sub_2157E81B8();
}

uint64_t sub_2157E8474()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_6();

  return v7();
}

void sub_2157E8598()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  sub_2157EFA58();
  v1 = (v0 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter);
  swift_beginAccess();
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_215803D9C();
}

uint64_t sub_2157E8658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v5 = *(v4 + 40);
  if (!v5)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v17 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v17, qword_28119DA40);
    v18 = sub_21580B7D0();
    v19 = sub_21580BAC0();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_23();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v20);
      _os_log_impl(&dword_2157E4000, v18, v19, "SafariSummarizationPrefetch - Missing countryCode, unable to get Asset Version", 0, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    return 0;
  }

  v8 = *(v4 + 32);
  v10 = *(v3 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler);
  v9 = *(v3 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler + 8);

  v10(&v22, v8, v5, a1, a2);

  if (!v23)
  {
    sub_2157EC06C(&v22, &qword_27CA73C10, &qword_21580CB30);
    return 0;
  }

  sub_2157E59C0(&v22, v24);
  v11 = (v3 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider);
  OUTLINED_FUNCTION_9();
  v12 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v13 = sub_2157EA8E8(v12);
  if (!v14)
  {
    v15 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v13 = sub_2157EABD8();
  }

  v16 = v13;
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v16;
}

uint64_t sub_2157E8904()
{
  OUTLINED_FUNCTION_17();
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAA0();
  if (OUTLINED_FUNCTION_24(v3))
  {
    OUTLINED_FUNCTION_23();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_25(v4);
    OUTLINED_FUNCTION_18(&dword_2157E4000, v5, v6, "SafariSummarizationPrefetch - Loading data for filter");
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  v7 = *(v0 + 40);

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_2157E8270;

  return sub_215803F20();
}

uint64_t sub_2157E8B80()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_prefilterUrl);
  v2 = *(v0 + OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_prefilterUrl + 8);

  return OUTLINED_FUNCTION_27();
}

id sub_2157E8BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_prefilterUrl];
  *v4 = a1;
  v4[1] = a2;
  v3[OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_hasMatchedPattern] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PrefilterSafariSummarizationPrefetchModel();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_2157E8C98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_2157E8D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8D40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2157E8DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2157E8E1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8E3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2157E8EA0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2157E8F34(char a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

void *sub_2157E8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = swift_slowAlloc();
  v3[5] = v4;
  *v4 = 0;
  return v3;
}

uint64_t sub_2157E8F98(char a1)
{
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 16) = Lock.init()();
  *(v1 + 24) = a1;
  return v1;
}

id sub_2157E8FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21580B880();

  if (a4)
  {
    v8 = sub_21580B820();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2157E909C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2157EC370;

  return v7();
}

uint64_t sub_2157E9184(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2157E926C;

  return v8();
}

uint64_t sub_2157E926C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2157E934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_2157EC008(a3, v24 - v10, &qword_27CA73C68, &qword_21580E930);
  v12 = sub_21580BA60();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2157EC06C(v11, &qword_27CA73C68, &qword_21580E930);
  }

  else
  {
    sub_21580BA50();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_21580BA10();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21580B8F0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2157EC06C(a3, &qword_27CA73C68, &qword_21580E930);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2157EC06C(a3, &qword_27CA73C68, &qword_21580E930);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2157E9628(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2157E9720;

  return v7(a1);
}

uint64_t sub_2157E9720()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

unint64_t sub_2157E9804(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2160721A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2160721A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2157E9890(uint64_t a1)
{
  v1[7] = a1;
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;
  return MEMORY[0x2822009F8](sub_2157E98C4, 0, 0);
}

uint64_t sub_2157E98C4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7];
  OUTLINED_FUNCTION_19(v2, &unk_2827B58F8);
  v3 = sub_2157F0E34();
  v4 = *(v1 + 96);
  *(v1 + 96) = v3;
  v5 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19(v5, v0[5]);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2157E997C;
  v7 = v0[7];

  return sub_2157EFE0C();
}

uint64_t sub_2157E997C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_6();

  return v6();
}

uint64_t sub_2157E9A64(uint64_t a1)
{
  v1[7] = a1;
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;
  return MEMORY[0x2822009F8](sub_2157E9A98, 0, 0);
}

uint64_t sub_2157E9A98()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19(v1, &unk_2827B58F8);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2157E9B30;
  v3 = *(v0 + 56);

  return sub_2157F16E8();
}

uint64_t sub_2157E9B30()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2157E9C58, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_6();

    return v7();
  }
}

uint64_t sub_2157E9C58()
{
  v10 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAC0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v6 = 136315651;
    *(v6 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v9);
    *(v6 + 12) = 2085;
    *(v6 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v9);
    *(v6 + 22) = 2085;
    *(v6 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v9);
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Failed to update loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v6, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_2157E9E1C(uint64_t a1)
{
  v29 = &unk_2827B58F8;
  v30 = &off_2827B5910;
  __swift_project_boxed_opaque_existential_1(v28, &unk_2827B58F8);
  swift_beginAccess();
  v2 = *(a1 + 88);

  v3 = sub_2158033D4();

  v4 = sub_21580A1D8(v3);

  if (v4 && (__swift_project_boxed_opaque_existential_1(v28, v29), v5 = sub_2158036AC(v4), , v5))
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v6 = sub_21580B7F0();
    __swift_project_value_buffer(v6, qword_28119DA40);
    v7 = v5;
    v8 = sub_21580B7D0();
    v9 = sub_21580BAE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315907;
      v12 = [v7 metadata];
      v13 = sub_21580B830();

      v14 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v13);
      v16 = v15;

      if (v16)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1701736302;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      v19 = sub_215808B34(v17, v18, &v27);

      *(v10 + 4) = v19;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v27);
      *(v10 + 22) = 2085;
      *(v10 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v27);
      *(v10 + 32) = 2085;
      *(v10 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v27);
      _os_log_impl(&dword_2157E4000, v8, v9, "SafariSummarizationPrefetch - Has loadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v11, -1, -1);
      MEMORY[0x216072190](v10, -1, -1);
    }

    else
    {
    }

    v25 = 1;
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v20 = sub_21580B7F0();
    __swift_project_value_buffer(v20, qword_28119DA40);
    v21 = sub_21580B7D0();
    v22 = sub_21580BAE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315651;
      *(v23 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v27);
      *(v23 + 12) = 2085;
      *(v23 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v27);
      *(v23 + 22) = 2085;
      *(v23 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v27);
      _os_log_impl(&dword_2157E4000, v21, v22, "SafariSummarizationPrefetch - No loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v24, -1, -1);
      MEMORY[0x216072190](v23, -1, -1);
    }

    v25 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

uint64_t sub_2157EA274(void *a1)
{
  v1[12] = a1;
  v1[13] = *a1;
  v2 = sub_21580B810();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;

  return MEMORY[0x2822009F8](sub_2157EA370, 0, 0);
}

void sub_2157EA370()
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v4 = 136316163;
    *(v4 + 4) = sub_215808B34(0xD000000000000011, 0x800000021580EDD0, &v20);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_215808B34(0xD000000000000018, 0x800000021580EB20, &v20);
    *(v4 + 22) = 2085;
    *(v4 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v20);
    *(v4 + 32) = 2085;
    *(v4 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v20);
    *(v4 + 42) = 2080;
    *(v4 + 44) = sub_215808B34(0xD00000000000001DLL, 0x800000021580EDF0, &v20);
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Attempting to asynchronously retrieve assets on-demand, for subscriberName: %s, subscriptionName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s, assetName: %s", v4, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  v6 = v0[12];
  if (!*(v6 + 96))
  {
    OUTLINED_FUNCTION_19(v5, v0[5]);
    v7 = sub_2157F0E34();
    v8 = *(v6 + 96);
    *(v6 + 96) = v7;
    swift_unknownObjectRelease();
    v6 = v0[12];
  }

  v9 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  sub_2157EBCCC(v6 + 40, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
  sub_2157EBD30();
  (*(v9 + 104))(v10, *MEMORY[0x277D851B8], v11);
  v0[17] = sub_21580BAF0();
  (*(v9 + 8))(v10, v11);
  v15 = swift_allocObject();
  v0[18] = v15;
  *(v15 + 16) = v12;
  v16 = *(v14 + 16);
  v19 = v16 + *v16;
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_2157EA764;
  v22 = v13;
  v23 = v14;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_2157EA764()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[17];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2157EA87C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_2157EA8E8(uint64_t a1)
{
  v19 = &unk_2827B58F8;
  v20 = &off_2827B5910;
  __swift_project_boxed_opaque_existential_1(v18, &unk_2827B58F8);
  swift_beginAccess();
  v2 = *(a1 + 88);

  v3 = sub_2158033D4();

  v4 = sub_21580A1D8(v3);

  if (v4 && (__swift_project_boxed_opaque_existential_1(v18, v19), v5 = sub_2158036AC(v4), , v5))
  {
    v6 = [v5 metadata];
    v7 = sub_21580B830();

    v8 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v7);
    v10 = v9;

    if (v10)
    {
      if (qword_28119CC70 != -1)
      {
        swift_once();
      }

      v11 = sub_21580B7F0();
      __swift_project_value_buffer(v11, qword_28119DA40);

      v12 = sub_21580B7D0();
      v13 = sub_21580BAE0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315907;
        *(v14 + 4) = sub_215808B34(v8, v10, &v17);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v17);
        *(v14 + 22) = 2085;
        *(v14 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v17);
        *(v14 + 32) = 2085;
        *(v14 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v17);
        _os_log_impl(&dword_2157E4000, v12, v13, "SafariSummarizationPrefetch - Has loadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v14, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x216072190](v15, -1, -1);
        MEMORY[0x216072190](v14, -1, -1);
      }
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v8;
}

uint64_t sub_2157EABD8()
{
  v28 = &unk_2827B58F8;
  v29 = &off_2827B5910;
  if (qword_28119D1D8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v27, &unk_2827B58F8);
  swift_beginAccess();
  v0 = sub_21580A1D8(qword_28119D1E0);
  if (v0)
  {
    v1 = v0;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v2 = sub_215803828(v1);
    v4 = v3;
    swift_endAccess();

    if (v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_endAccess();
  }

  __swift_project_boxed_opaque_existential_1(v27, v28);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_2157F28DC(0);
  v6 = v5;
  v7 = [v6 metadata];
  v8 = sub_21580B830();

  v2 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v8);
  v10 = v9;

  if (v10)
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v11 = sub_21580B7F0();
    __swift_project_value_buffer(v11, qword_28119DA40);

    v12 = sub_21580B7D0();
    v13 = sub_21580BAE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136315907;
      *(v14 + 4) = sub_215808B34(v2, v10, v26);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v26);
      *(v14 + 22) = 2085;
      *(v14 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      *(v14 + 32) = 2085;
      *(v14 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      _os_log_impl(&dword_2157E4000, v12, v13, "SafariSummarizationPrefetch - Caching downloadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v15, -1, -1);
      MEMORY[0x216072190](v14, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C48, &qword_21580CB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    *(inited + 32) = v2;
    *(inited + 40) = v10;
    sub_2157EBC50();

    v17 = sub_21580B850();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = qword_28119D1E0;
    sub_2157F99C8(v17, isUniquelyReferenced_nonNull_native);
    qword_28119D1E0 = v25;
    swift_endAccess();
  }

  else
  {

    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v20 = sub_21580B7F0();
    __swift_project_value_buffer(v20, qword_28119DA40);
    v21 = sub_21580B7D0();
    v22 = sub_21580BAE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136315651;
      *(v23 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v26);
      *(v23 + 12) = 2085;
      *(v23 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      *(v23 + 22) = 2085;
      *(v23 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      _os_log_impl(&dword_2157E4000, v21, v22, "SafariSummarizationPrefetch - No downloadedAssets version, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v24, -1, -1);
      MEMORY[0x216072190](v23, -1, -1);
    }

    v2 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v2;
}

id sub_2157EB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v72 = a8;
  v71 = a7;
  v73 = a6;
  v68 = a4;
  v67 = a3;
  v12 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_shouldReportAnalytics;
  v13 = a9;
  v14 = sub_2157E9804(0x3E8uLL);
  a9[v12] = v14 == 0;
  *&v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_activityMonitor] = a1;
  v15 = &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext];
  *v15 = a2;
  *(v15 + 1) = &off_2827B4CD0;
  v69 = a5;
  sub_2157EC008(a5, &v79, &qword_27CA73BF8, &qword_21580CB18);
  v70 = a1;
  if (v80)
  {
    sub_2157E59C0(&v79, &v81);
  }

  else
  {
    swift_retain_n();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C18, &qword_21580CB38);
    sub_2157EBA9C();
    sub_21580B850();
    OUTLINED_FUNCTION_28();
    v17 = type metadata accessor for SASafariAssistantAssetProvider();
    swift_allocObject();
    v18 = sub_2157EF2B8(a1, v16, v14 == 0);
    v82 = v17;
    v83 = &off_2827B4FE0;
    *&v81 = v18;
    if (v80)
    {
      sub_2157EC06C(&v79, &qword_27CA73BF8, &qword_21580CB18);
    }
  }

  v19 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  sub_2157E59C0(&v81, &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider]);
  v20 = v72;
  v21 = v71;
  OUTLINED_FUNCTION_13();
  v22 = swift_allocObject();
  if (v71)
  {
    *(v22 + 16) = v71;
    *(v22 + 24) = v20;
    v23 = sub_2157EBBD4;
  }

  else
  {
    *(v22 + 16) = a2;
    *(v22 + 24) = &off_2827B4CD0;

    v23 = sub_2157EBAF0;
  }

  v24 = v23;
  OUTLINED_FUNCTION_13();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  v26 = &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler];
  *v26 = sub_2157EBAF8;
  v26[1] = v25;
  sub_2157EC008(v73, &v79, &qword_27CA73C00, &qword_21580CB20);
  if (v80)
  {
    OUTLINED_FUNCTION_22();

    sub_2157E59C0(&v79, &v81);
  }

  else
  {
    v27 = *(a2 + 40);
    v65 = *(a2 + 32);
    v63[0] = v27;
    swift_beginAccess();
    sub_2157EBCCC(&v13[v19], &v81);
    v64 = a9[v12];
    __swift_mutable_project_boxed_opaque_existential_1(&v81, v82);
    v66 = v63;
    OUTLINED_FUNCTION_12();
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_7();
    v33 = (v32 - v31);
    (*(v34 + 16))(v32 - v31);
    v35 = *v33;
    v36 = type metadata accessor for SASafariAssistantAssetProvider();
    v78[3] = v36;
    v78[4] = &off_2827B4FE0;
    v78[0] = v35;
    v37 = type metadata accessor for SASafariAssistantPrefetchRequestFilter();
    v38 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v78, v36);
    v63[1] = v63;
    OUTLINED_FUNCTION_12();
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_7();
    v44 = (v43 - v42);
    (*(v45 + 16))(v43 - v42);
    v46 = *v44;
    v76 = v36;
    v77 = &off_2827B4FE0;
    *&v75 = v46;
    *(v38 + 24) = 0;
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C28, &qword_21580CB40);
    OUTLINED_FUNCTION_13();
    swift_allocObject();
    v47 = v70;

    OUTLINED_FUNCTION_22();
    v48 = v63[0];

    *(v38 + 136) = sub_2157E8F34(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C30, &qword_21580CB48);
    swift_allocObject();
    v49 = OUTLINED_FUNCTION_28();
    *(v38 + 152) = sub_2157E8F64(v49, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C38, &qword_21580CB50);
    swift_allocObject();
    *(v38 + 160) = sub_2157E8F98(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C40, &qword_21580CB58);
    OUTLINED_FUNCTION_13();
    swift_allocObject();
    v50 = OUTLINED_FUNCTION_28();
    *(v38 + 168) = sub_2157E5990(v50);
    *(v38 + 32) = v65;
    *(v38 + 40) = v48;
    v51 = v68;
    *(v38 + 48) = v67;
    *(v38 + 56) = v51;
    sub_2157E59C0(&v75, v38 + 64);
    *(v38 + 144) = 0;
    *(v38 + 128) = v64;
    *(v38 + 104) = v47;
    *(v38 + 112) = sub_2157EBAF8;
    *(v38 + 120) = v25;
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v82 = v37;
    v83 = &off_2827B59A8;

    *&v81 = v38;
    if (v80)
    {
      sub_2157EC06C(&v79, &qword_27CA73C00, &qword_21580CB20);
    }
  }

  sub_2157E59C0(&v81, &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter]);
  v52 = type metadata accessor for SASafariAssistantAssetManager();
  v74.receiver = v13;
  v74.super_class = v52;
  v53 = objc_msgSendSuper2(&v74, sel_init);
  v54 = v53 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  swift_beginAccess();
  v55 = *(v54 + 24);
  v56 = *(v54 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v57 = *(v56 + 16);
  v58 = v53;
  v57(v53, &off_2827B4B08, v55, v56);
  swift_endAccess();
  v59 = v58 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter;
  swift_beginAccess();
  v60 = *(v59 + 24);
  v61 = *(v59 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  (*(v61 + 16))(v53, &off_2827B4AF8, v60, v61);
  swift_endAccess();

  sub_2157EBA8C(v21);

  sub_2157EC06C(v73, &qword_27CA73C00, &qword_21580CB20);
  sub_2157EC06C(v69, &qword_27CA73BF8, &qword_21580CB18);
  return v58;
}

uint64_t sub_2157EBA44(uint64_t result)
{
  if (result)
  {
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

uint64_t sub_2157EBA8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2157EBA9C()
{
  result = qword_28119CE00;
  if (!qword_28119CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CE00);
  }

  return result;
}

uint64_t sub_2157EBAF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_2157E6574(a1, a2, a3);
}

uint64_t sub_2157EBAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  return v5(v9, v8);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2157EBBD4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2157EBC50()
{
  result = qword_28119CFF0;
  if (!qword_28119CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFF0);
  }

  return result;
}

uint64_t sub_2157EBCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2157EBD30()
{
  result = qword_28119CC00;
  if (!qword_28119CC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CC00);
  }

  return result;
}

uint64_t sub_2157EBD7C()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v4[1] = sub_2157EC370;
  v6 = OUTLINED_FUNCTION_27();

  return v7(v6);
}

uint64_t sub_2157EBE44()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16(v5);
  *v6 = v7;
  v6[1] = sub_2157EC370;

  return sub_2157E909C(v1, v2, v4);
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2157EBF40(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16(v7);
  *v8 = v9;
  v8[1] = sub_2157EC370;

  return sub_2157E9184(a1, v3, v4, v6);
}

uint64_t sub_2157EC008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return a2;
}

uint64_t sub_2157EC06C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2157EC0CC()
{
  OUTLINED_FUNCTION_17();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return v7(v6);
}

uint64_t sub_2157EC164()
{
  OUTLINED_FUNCTION_17();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return v7(v6);
}

uint64_t sub_2157EC1FC()
{
  OUTLINED_FUNCTION_17();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14(v5);

  return v8(v7);
}

uint64_t objectdestroy_93Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2157EC2D8()
{
  OUTLINED_FUNCTION_17();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14(v5);

  return v8(v7);
}

uint64_t *OUTLINED_FUNCTION_4()
{
  result = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void *OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), a2);
  v3 = *(v2 + 40);

  return __swift_project_boxed_opaque_existential_1((v2 + 16), v3);
}

void *OUTLINED_FUNCTION_20()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);

  return sub_2157EBA44(v2);
}

BOOL OUTLINED_FUNCTION_24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26()
{
  v1 = *(v0 - 368);
  sub_2157EBA8C(*(v0 - 360));
  v2 = *(v0 - 352);
}

uint64_t sub_2157EC608(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_2827B47A8 != a1);
  return v2 & 1;
}

uint64_t sub_2157EC630(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_2827B4780 != a1);
  return v2 & 1;
}

void sub_2157EC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_0();
      sub_21580B790();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_0(v25, xmmword_21580C9B0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_0(v17, xmmword_21580CC30);
      sub_2157EBCCC(v18, v19);
      v15 = OUTLINED_FUNCTION_4_0();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_0(v20, xmmword_21580CC20);
      sub_2157EBCCC(v21, v22);
      v23 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_0(v10, xmmword_21580CC10);
      sub_2157EBCCC(v11, v12);
      v13 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v13, v14);
      sub_2157EBCCC(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_0(v26, xmmword_21580CC00);
      sub_2157EBCCC(v27, v28);
      v29 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v29, v30);
      sub_2157EBCCC(a10 + 112, &v26[7]);
      sub_2157EBCCC(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_2157EBCCC(v15, v16);
      OUTLINED_FUNCTION_2_0();
      sub_21580B790();

      break;
    default:
      return;
  }
}

uint64_t sub_2157EC970()
{
  result = sub_2157F7B84();
  byte_28119DA70 = result & 1;
  return result;
}

uint64_t sub_2157EC994()
{
  v1 = v0;
  v2 = sub_21580B6F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v7 = [objc_opt_self() currentLocale];
  sub_21580B6E0();

  v8 = sub_21580B6D0();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 24);
  *(v1 + 16) = v8;
  *(v1 + 24) = v10;

  v12 = [objc_opt_self() sharedConfiguration];
  if (v12)
  {
    v12 = sub_2157FC448(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + 40);
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;

  v15 = sub_21580B710();
  v16 = *(v1 + 56);
  *(v1 + 48) = v15;
  *(v1 + 56) = v17;

  v18 = sub_21580B720();
  v19 = *(v1 + 72);
  *(v1 + 64) = v18;
  *(v1 + 72) = v20;

  return v1;
}

void *sub_2157ECB18()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t sub_2157ECB50()
{
  sub_2157ECB18();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2157ECBAC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2157ECC4C()
{
  v1 = *v0;
  MEMORY[0x216072190](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_2157ECCE8()
{
  sub_2157ECC4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_2157ECDE8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_2157ECE20()
{
  OUTLINED_FUNCTION_3_1();
  v2 = *(v0 + *(v1 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_1();

  OUTLINED_FUNCTION_3_1();
  v5 = *(v0 + *(v4 + 480));

  return swift_unknownObjectRelease();
}

void *sub_2157ECE88()
{
  OUTLINED_FUNCTION_3_1();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_2157ED944();
  }

  v2 = sub_2157FD298();
  v3 = *(v2 + *(*v2 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_8_0();
  v6 = *(v2 + *(v5 + 480));
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2157ECF18()
{
  v0 = sub_2157ECE88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2157ECF84()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  v3 = *(v0 + *(v2 + 128));
  sub_21580BAC0();
  sub_21580B780();
  sub_2157FD424();
  sub_21580BAC0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v5 = OUTLINED_FUNCTION_7_0();
  *(v5 + 16) = xmmword_21580C9B0;
  v6 = (v1 + *(*v1 + 464));
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D70, &qword_21580CEC8);
  v9 = sub_21580B8E0();
  v11 = v10;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2157EDE30();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  sub_21580B780();

  sub_21580BAC0();
  v129 = v4;
  v13 = OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1(v13, v14, v15, v16, v17, v18, v19, v20, v106, v112, v118, v124, v129, v135, v21);
  ObjectType = swift_getObjectType();
  v113 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v24 = sub_21580B8E0();
  v13[3].n128_u64[1] = MEMORY[0x277D837D0];
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v24;
  v13[2].n128_u64[1] = v25;
  v136 = v3;
  sub_21580B780();

  v119 = sub_2157ED444();
  if (v28)
  {
    sub_21580BAC0();
    v29 = OUTLINED_FUNCTION_7_0();
    v38 = OUTLINED_FUNCTION_4_1(v29, v30, v31, v32, v33, v34, v35, v36, ObjectType, v113, v119, v12, v130, v3, v37);
    (v23)(v108, v114, v38);
    v39 = sub_21580B8E0();
    v40 = MEMORY[0x277D837D0];
    v41 = v125;
    v29[3].n128_u64[1] = MEMORY[0x277D837D0];
    v29[4].n128_u64[0] = v125;
    v29[2].n128_u64[0] = v39;
    v29[2].n128_u64[1] = v42;
    sub_21580B780();
    v43 = v40;
  }

  else
  {
    v44 = v26;
    v45 = v27;
    v46 = HIDWORD(v27);
    sub_21580BAC0();
    v47 = OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4_1(v47, v48, v49, v50, v51, v52, v53, v54, ObjectType, v113, v119, v12, v130, v136, v55);
    v56 = MEMORY[0x277D83C10];
    v57[7] = v58;
    v57[8] = v56;
    v57[4] = v44;
    sub_21580B780();

    sub_21580BAC0();
    v59 = OUTLINED_FUNCTION_5_0();
    v60 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_4_1(v59, v61, v62, v63, v64, v65, v66, v67, v109, v115, v121, v126, v132, v138, v68);
    v69 = MEMORY[0x277D84D30];
    *(v70 + 56) = v60;
    *(v70 + 64) = v69;
    *(v70 + 32) = v46;
    OUTLINED_FUNCTION_1_1();
    sub_21580B780();

    sub_21580BAC0();
    v71 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_1(v71, v72, v73, v74, v75, v76, v77, v78, v110, v116, v122, v127, v133, v139, v79);
    *(v80 + 56) = v60;
    *(v80 + 64) = v69;
    *(v80 + 32) = v45;
    OUTLINED_FUNCTION_1_1();
    sub_21580B780();

    sub_21580BAC0();
    v81 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_1(v81, v82, v83, v84, v85, v86, v87, v88, v111, v117, v123, v128, v134, v140, v89);
    v90 = MEMORY[0x277D83A80];
    v91[7] = v92;
    v91[8] = v90;
    v91[4] = v120;
    OUTLINED_FUNCTION_1_1();
    sub_21580B780();
    v43 = MEMORY[0x277D837D0];
    v41 = v125;
  }

  sub_21580BAC0();
  v93 = OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1(v93, v94, v95, v96, v97, v98, v99, v100, v108, v114, v120, v125, v131, v137, v101);
  v102 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D78, &unk_21580CED0);
  v103 = sub_21580B8E0();
  v93[3].n128_u64[1] = v43;
  v93[4].n128_u64[0] = v41;
  v93[2].n128_u64[0] = v103;
  v93[2].n128_u64[1] = v104;
  OUTLINED_FUNCTION_9_0();
  sub_21580B780();

  sub_21580BAC0();
  OUTLINED_FUNCTION_9_0();
  return sub_21580B780();
}

uint64_t sub_2157ED444()
{
  OUTLINED_FUNCTION_3_1();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v19 = OUTLINED_FUNCTION_7_0();
    *(v19 + 16) = xmmword_21580C9B0;
    v83 = v6(ObjectType, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
    v20 = sub_21580B8E0();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2157EDE30();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_0();
    sub_2157FE3C8();

    sub_2157FD96C();
    *&result = 0.0;
    return result;
  }

  [v9 statusCode];
  if (!(*(v4 + 8))(ObjectType, v4))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_6_0();
  *&v88 = 0xD000000000000021;
  *(&v88 + 1) = v10;
  v11 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v11, v12, v13, v14, v15, v16, v17, v18, v61, v65, v69, v74, v79, v83, v84, v85, v86, v87, v88);
  sub_2157EDE84(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
    sub_2157EDED8(&v88);
  }

  OUTLINED_FUNCTION_6_0();
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = v24;
  v25 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v25, v26, v27, v28, v29, v30, v31, v32, v62, v66, v70, v75, v80, v83, v84, v85, v86, v87, v88);
  sub_2157EDE84(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
    sub_2157EDED8(&v88);
  }

  OUTLINED_FUNCTION_6_0();
  v71 = v33;
  v34 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v34, v35, v36, v37, v38, v39, v40, v41, v63, 0xD00000000000001BLL, v71, v76, v81, v83, v84, v85, v86, v87, v88);
  sub_2157EDE84(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_1())
    {
      v78 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    sub_2157EDED8(&v88);
  }

  OUTLINED_FUNCTION_6_0();
  v72 = v42;
  v43 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v43, v44, v45, v46, v47, v48, v49, v50, v64, 0xD00000000000001BLL, v72, v77, v82, v83, v84, v85, v86, v87, v88);
  sub_2157EDE84(&v83);
  if (!v89)
  {
    sub_2157EDED8(&v88);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  v51 = *&v78;
  OUTLINED_FUNCTION_6_0();
  v73 = v52;
  v53 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v53, v54, v55, v56, v57, v58, v59, v60, v64, 0xD00000000000001ALL, v73, v78, v82, v83, v84, v85, v86, v87, v88);

  sub_2157EDE84(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_1())
    {
      *&result = v68 - v51;
      return result;
    }
  }

  else
  {
    sub_2157EDED8(&v88);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

uint64_t sub_2157ED854(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC10;
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
  sub_2157FE3C8("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_2157ED944()
{
  OUTLINED_FUNCTION_3_1();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_2157ED444();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v3 = OUTLINED_FUNCTION_7_0();
      *(v3 + 16) = xmmword_21580C9B0;
      OUTLINED_FUNCTION_8_0();
      v5 = (v0 + *(v4 + 464));
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
      v9 = sub_21580B8E0();
      v11 = v10;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_2157EDE30();
      *(v3 + 32) = v9;
      *(v3 + 40) = v11;
      OUTLINED_FUNCTION_9_0();
      sub_2157FE3C8();
    }

    else
    {
      OUTLINED_FUNCTION_8_0();
      (*(v12 + 568))(v13, v14);
    }

    sub_2157FD96C();
  }
}

uint64_t sub_2157EDADC(uint64_t a1, uint64_t (*a2)(uint64_t))
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
      sub_21580BAA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
      v10 = sub_21580B8E0();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2157EDE30();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      sub_21580B780();
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_2157EDC60(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D50, &qword_21580CEA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21580CC10;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  OUTLINED_FUNCTION_6_0();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_2157EDDE0();
  return sub_21580B850();
}

unint64_t sub_2157EDDE0()
{
  result = qword_28119CBB0;
  if (!qword_28119CBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CBB0);
  }

  return result;
}

unint64_t sub_2157EDE30()
{
  result = qword_28119CC40;
  if (!qword_28119CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC40);
  }

  return result;
}

uint64_t sub_2157EDED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D80, &unk_21580D0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2157EDF40(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21580B830();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_215803648(&a14, v19, &a19);
}

__n128 OUTLINED_FUNCTION_4_1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_allocObject();
}

uint64_t AtomicValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AtomicValue.init(_:)(a1);
  return v5;
}

char *AtomicValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 2) = Lock.init()();
  OUTLINED_FUNCTION_8_0();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v4 + 96)], a1);
  return v1;
}

void AtomicValue.load()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 2);
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v7 = *(v6 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 16))(a1, &v2[v7]);
  Lock.unlock()();
}

void AtomicValue.store(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 2);
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v7 = *(v6 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&v2[v7], a1);
  swift_endAccess();
  Lock.unlock()();
}

void AtomicValue.store(resultOf:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  v12 = v1[2];
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v14 = *(v13 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v9, v2 + v14, v4);
  v15 = v17;
  a1(v9);
  (*(v5 + 8))(v9, v4);
  if (!v15)
  {
    swift_beginAccess();
    (*(v5 + 40))(v2 + v14, v11, v4);
    swift_endAccess();
  }

  sub_2157EE4A4(v2);
}

char *AtomicValue.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2157EE5A0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2157EE688(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v6 = [v3 newHashesArray];
  v7 = MEMORY[0x216071300](&v14, 8);
  v9 = v8;
  v10 = sub_21580B630();

  v11 = [v3 getWithHashes_];
  sub_2157EEF40(v7, v9);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2157EE7A4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return -1;
  }

  v5 = sub_2157EE810();
  v7 = v6;
  v8 = sub_2157EE994(v5, v6, a3);
  sub_2157EEF2C(v5, v7);
  return v8;
}

uint64_t sub_2157EE810()
{
  v0 = sub_21580B8D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21580B8C0();
  v5 = sub_21580B8A0();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 != 15)
  {
    v8 = sub_21580BA00();
    *(v8 + 16) = 32;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    v13 = v8;
    sub_2157EEF98(v5, v7);
    sub_2157EEBE0(v5, v7, v5, v7, &v13);

    v10 = sub_2157EEE34(v9);
    sub_2157EEF2C(v5, v7);

    return v10;
  }

  return v5;
}

uint64_t sub_2157EE994(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    return -1;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    v5 = sub_2157EF164(v5);
    goto LABEL_8;
  }

  v3 = a2;
  v4 = a1;
  if (a3 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a3;
  }

  sub_2157EEF98(a1, a2);
  v5 = sub_2157EEAFC(0, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = *(v5 + 16);
  v11 = sub_21580B620();
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D90, &qword_21580CF28);
  sub_2157EF178();
  sub_2157EF214(&qword_28119CC18, &qword_27CA73D90, &qword_21580CF28);
  sub_21580B430();
  sub_2157EEF40(v11, v12);
  v6 = *(v5 + 32);

  if (v6 < 0)
  {
    v6 = -v6;
  }

  sub_2157EEF2C(v4, v3);
  return v6;
}

uint64_t sub_2157EEAFC(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_21580BA00();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

unsigned __int8 *sub_2157EEB6C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x216071310](a3, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (!(result >> 32))
    {
      sub_2157EEFF0(0);
      return CC_SHA256(a1, v8, (*a5 + 32));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2157EEBE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_2157EEF98(a3, a4);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = sub_21580B4E0();
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = sub_21580B500();
      if (__OFSUB__(a1, v21))
      {
LABEL_26:
        __break(1u);
      }

      v17 += a1 - v21;
LABEL_14:
      v20 = (a1 >> 32) - a1;
LABEL_15:
      v22 = sub_21580B4F0();
      if (v22 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 + v17);
      if (v17)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = v17;
      v12 = a3;
      v13 = a4;
      v14 = a5;
LABEL_22:
      sub_2157EEB6C(v11, v10, v12, v13, v14);
LABEL_23:
      sub_2157EEF40(a3, a4);
      result = sub_2157EEF40(a3, a4);
      v26 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v17 = sub_21580B4E0();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = sub_21580B500();
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_25;
      }

      v17 += v16 - v18;
LABEL_6:
      v19 = __OFSUB__(v15, v16);
      v20 = v15 - v16;
      if (!v19)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      sub_2157EEF98(a3, a4);
      sub_2157EF0CC(0, 0, a3, a4, a5);
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v27 = a1;
      v28 = a2;
      v29 = BYTE2(a2);
      v30 = BYTE3(a2);
      v31 = BYTE4(a2);
      v32 = BYTE5(a2);
      v10 = &v27 + BYTE6(a2);
      v11 = &v27;
      v12 = a3;
      v13 = a4;
      v14 = a5;
      goto LABEL_22;
  }
}

uint64_t sub_2157EEE34(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D98, &qword_21580CF30);
  v8 = sub_2157EF214(&qword_28119CC20, &qword_27CA73D98, &qword_21580CF30);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_2157EF054(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_2157EEF2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2157EEF40(a1, a2);
  }

  return a1;
}

uint64_t sub_2157EEF40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2157EEF98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2157EEFF0(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    result = sub_2157F9688(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_2157EF054@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_21580B5F0();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2160712C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2160712D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2157EF0CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  sub_2157EEB6C(&v9, &v9 + BYTE6(a2), a3, a4, a5);
  result = sub_2157EEF40(a3, a4);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2157EF178()
{
  result = qword_28119DA20;
  if (!qword_28119DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA20);
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

uint64_t sub_2157EF214(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2157EF25C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE8, &qword_21580D138);
  sub_2157EBA9C();
  result = sub_21580B850();
  qword_28119D1E0 = result;
  return result;
}

void *sub_2157EF2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v3[4] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_opt_self() sharedManager];
  v3[8] = sub_2157F74BC(0, &qword_28119CBD0, 0x277D779F8);
  v3[9] = &off_2827B4FA8;
  v3[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C18, &qword_21580CB38);
  sub_2157EBA9C();
  v9 = sub_21580B850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DA0, &qword_21580D0D0);
  OUTLINED_FUNCTION_13();
  swift_allocObject();
  v4[11] = sub_2157EC374(v9);
  v4[12] = 0;
  v4[2] = a1;
  swift_beginAccess();

  OUTLINED_FUNCTION_13();
  swift_allocObject();
  v4[11] = sub_2157EC374(a2);
  swift_endAccess();

  *(v4 + 80) = a3;
  return v4;
}

void *sub_2157EF448()
{
  if (v0[12])
  {
    v1 = v0[12];
    v2 = swift_unknownObjectRetain();
    sub_2157F1670(v2);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  v3 = v0[11];

  v9 = sub_2158033D4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v4);
  sub_2158035A0(v9);

  v5 = v0[2];

  sub_2157E6544((v0 + 3));
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v6 = v0[11];

  v7 = v0[12];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2157EF518()
{
  sub_2157EF448();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2157EF564()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  v2 = *(v1 + 88);

  v10 = sub_2158033D4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v3);
  sub_2158035A0(v10);

  if (*(v1 + 96))
  {
    v4 = *(v0 + 40);
    v5 = *(v1 + 96);
    v6 = swift_unknownObjectRetain();
    sub_2157F1670(v6);
    swift_unknownObjectRelease();
  }

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_2157EF670;
  v8 = *(v0 + 40);

  return sub_2157F0958();
}

uint64_t sub_2157EF670()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2157EF76C()
{
  OUTLINED_FUNCTION_17();
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v0 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v0, qword_28119DA40);
  v1 = sub_21580B7D0();
  v2 = sub_21580BAE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_79();
    *v3 = 0;
    _os_log_impl(&dword_2157E4000, v1, v2, "SafariSummarizationPrefetch - Successfully cleaned cache", v3, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_2157EF85C()
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v2, qword_28119DA40);
  v3 = v1;
  v4 = sub_21580B7D0();
  v5 = sub_21580BAC0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    OUTLINED_FUNCTION_15_0();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_13_0();
    swift_slowAlloc();
    *v8 = 138412802;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2080;
    OUTLINED_FUNCTION_45();
    v12 = OUTLINED_FUNCTION_34();
    *(v8 + 14) = sub_215808B34(v12, v13, v14);
    *(v8 + 22) = 2080;
    OUTLINED_FUNCTION_45();
    *(v8 + 24) = sub_215808B34(v15, v16, v17);
    OUTLINED_FUNCTION_20_0(&dword_2157E4000, v18, v5, "SafariSummarizationPrefetch - Failed to unsubscribe with error: %@, from subscription name %s, assetSetName: %s");
    sub_2157F7220(v9, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v19 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v19);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6();

  return v20();
}

void sub_2157EFA58()
{
  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  v1 = *(v0 + 88);

  v7 = sub_2158033D4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v2);
  sub_2158035A0(v7);

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v3 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v3, qword_28119DA40);
  v4 = sub_21580B7D0();
  v5 = sub_21580BAE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_79();
    *v6 = 0;
    _os_log_impl(&dword_2157E4000, v4, v5, "SafariSummarizationPrefetch - Successfully cleaned cache", v6, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }
}

void sub_2157EFB70(void *a1)
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v4, qword_28119DA40);
  v5 = a1;
  v6 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_37();
  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_42();
    swift_slowAlloc();
    *v1 = 134219522;
    *(v1 + 4) = [v5 downloadStatus];
    *(v1 + 12) = 2048;
    [v5 completedPercent];
    *(v1 + 14) = v8;
    *(v1 + 22) = 2048;
    *(v1 + 24) = [v5 completedBytes];
    *(v1 + 32) = 2048;
    *(v1 + 34) = [v5 totalBytes];

    *(v1 + 42) = 2080;
    OUTLINED_FUNCTION_45();
    v9 = OUTLINED_FUNCTION_34();
    *(v1 + 44) = sub_215808B34(v9, v10, v11);
    *(v1 + 52) = 2080;
    OUTLINED_FUNCTION_45();
    *(v1 + 54) = sub_215808B34(v12, v13, v14);
    *(v1 + 62) = 2080;
    OUTLINED_FUNCTION_45();
    *(v1 + 64) = sub_215808B34(v15, v16, v17);
    _os_log_impl(&dword_2157E4000, v6, v2, "SafariSummarizationPrefetch - Progress retrieving assets on-demand has downloadStatus: %lu, completedPercent: %f%%, completedBytes: %ld, totalBytes: %ld, for subscriberName: %s, subscriptionName: %s, assetName: %s", v1, 0x48u);
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v18 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v18);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  if ([v5 downloadStatus] == 4)
  {
    oslog = sub_21580B7D0();
    v19 = sub_21580BAE0();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = OUTLINED_FUNCTION_79();
      *v20 = 0;
      _os_log_impl(&dword_2157E4000, oslog, v19, "SafariSummarizationPrefetch - Progress retrieving assets on-demand complete. Asset downloaded (or skipped)", v20, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }
}

uint64_t sub_2157EFE0C()
{
  OUTLINED_FUNCTION_3();
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC8, &qword_21580D118);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = sub_21580B6C0();
  v1[16] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_18_0();
  v1[17] = v7;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2157EFEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v26 = v22[18];
  v25 = v22[19];
  v28 = v22[16];
  v27 = v22[17];
  v29 = v22[15];
  v30 = sub_21580B850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD0, &qword_21580D120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21580C9B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000021580EDB0;
  *(inited + 48) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD8, &qword_21580D128);
  v32 = sub_21580B850();
  sub_21580B6A0();
  sub_21580B660();
  (*(v27 + 16))(v29, v25, v28);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
  v33 = objc_allocWithZone(MEMORY[0x277D77A08]);
  v34 = sub_2157F64F0(0xD000000000000018, 0x800000021580EB20, v32, 0, v29);
  v22[20] = v34;
  if (v34)
  {
    v35 = v34;
    sub_2157EBCCC(v22[14] + 40, (v22 + 9));
    v36 = v22[13];
    __swift_project_boxed_opaque_existential_1(v22 + 9, v22[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB0, &qword_21580D0E0);
    v37 = swift_allocObject();
    v22[21] = v37;
    *(v37 + 16) = xmmword_21580CF80;
    *(v37 + 32) = v35;
    v38 = *(v36 + 8);
    v39 = v35;
    v77 = v38 + *v38;
    v40 = v38[1];
    v41 = swift_task_alloc();
    v22[22] = v41;
    *v41 = v22;
    v41[1] = sub_2157F0388;
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_44();

    return v48(v42, v43, v44, v45, v46, v47, v48, v49, v77, v36 + 8, a11, a12, a13, a14);
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v52 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v52, qword_28119DA40);
    v53 = sub_21580B7D0();
    v54 = sub_21580BAC0();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v22[19];
    v57 = v22[16];
    v58 = v22[17];
    if (v55)
    {
      OUTLINED_FUNCTION_53();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      a11 = swift_slowAlloc();
      *v59 = 136315907;
      OUTLINED_FUNCTION_36();
      v60 = OUTLINED_FUNCTION_34();
      v63 = sub_215808B34(v60, v61, v62);
      v64 = OUTLINED_FUNCTION_68(v63);
      *(v59 + 14) = sub_215808B34(v64, 0x800000021580EDB0, &a11);
      *(v59 + 22) = 2085;
      *(v59 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &a11);
      *(v59 + 32) = 2085;
      *(v59 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &a11);
      _os_log_impl(&dword_2157E4000, v53, v54, "SafariSummarizationPrefetch - Failed to initialize UAFAssetSetSubscription for subscription name %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v59, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v65 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v65);
    }

    (*(v58 + 8))(v56, v57);
    v67 = v22[18];
    v66 = v22[19];
    v68 = v22[15];

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_44();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2157F0388()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2157F048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  __swift_destroy_boxed_opaque_existential_1(v22 + 9);
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v26 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v26, qword_28119DA40);
  v27 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_37();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[19];
  v31 = v22[20];
  v32 = v22[16];
  v33 = v22[17];
  if (v29)
  {
    a10 = v22[19];
    OUTLINED_FUNCTION_53();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    a11 = swift_slowAlloc();
    *v34 = 136315907;
    a9 = v32;
    v35 = OUTLINED_FUNCTION_34();
    v38 = sub_215808B34(v35, v36, v37);
    v39 = OUTLINED_FUNCTION_68(v38);
    *(v34 + 14) = sub_215808B34(v39, 0x800000021580EDB0, &a11);
    *(v34 + 22) = 2085;
    v40 = OUTLINED_FUNCTION_67();
    *(v34 + 24) = sub_215808B34(v40, v41, v42);
    *(v34 + 32) = 2085;
    v43 = OUTLINED_FUNCTION_67();
    *(v34 + 34) = sub_215808B34(v43, v44, v45);
    _os_log_impl(&dword_2157E4000, v27, v23, "SafariSummarizationPrefetch - Successfully UAFAssetSetManager.subscribed to assets with subscriberName: %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v34, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v46 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v46);

    (*(v33 + 8))(a10, v32);
  }

  else
  {

    (*(v33 + 8))(v30, v32);
  }

  v48 = v22[18];
  v47 = v22[19];
  v49 = v22[15];

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_44();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2157F0698()
{
  v32 = v0;
  v1 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v3, qword_28119DA40);
  v4 = v2;
  v5 = sub_21580B7D0();
  v6 = sub_21580BAC0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  if (v7)
  {
    v30 = *(v0 + 160);
    v29 = *(v0 + 128);
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v31 = swift_slowAlloc();
    *v12 = 138413315;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2080;
    v16 = OUTLINED_FUNCTION_34();
    *(v12 + 14) = sub_215808B34(v16, v17, v18);
    *(v12 + 22) = 2080;
    v19 = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v31);
    *(v12 + 24) = v19;
    *(v12 + 32) = 2085;
    v21 = OUTLINED_FUNCTION_78(v19, v20, &v31);
    *(v12 + 34) = v21;
    *(v12 + 42) = 2085;
    *(v12 + 44) = OUTLINED_FUNCTION_78(v21, v22, &v31);
    _os_log_impl(&dword_2157E4000, v5, v6, "SafariSummarizationPrefetch - Failed to UAFAssetSetManager.subscribe error: %@, subscriberName: %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v12, 0x34u);
    sub_2157F7220(v13, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v23 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v23);

    (*(v10 + 8))(v9, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 120);

  OUTLINED_FUNCTION_6();

  return v27();
}

uint64_t sub_2157F0958()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return OUTLINED_FUNCTION_22_0(sub_2157F0998);
}

uint64_t sub_2157F0998()
{
  OUTLINED_FUNCTION_17();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2157F0A84;
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2157F0A84()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2157F0BAC()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_2157F0C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-1] - v7;
  sub_2157EBCCC(a2 + 40, v15);
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 48))(0xD000000000000011, 0x800000021580EDD0, &unk_2827B4898, 0, sub_2157F7334, v12, v9, v10);

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_2157F0DC0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
    return sub_21580BA20();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
    return sub_21580BA30();
  }
}

uint64_t sub_2157F0E34()
{
  v1 = *v0;
  sub_2157EBCCC((v0 + 5), v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = 0xD000000000000014;
  v9[1] = 0x800000021580EDB0;
  v4 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_13();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = *(v3 + 24);

  v7 = v6(v9, 0, sub_2157F7218, v5, v2, v3);

  sub_2157F7220(v9, &unk_27CA73D80, &unk_21580D0F0);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void sub_2157F0F9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23[-1] - v5;
  if (qword_28119CC70 != -1)
  {
    swift_once();
  }

  v7 = sub_21580B7F0();
  __swift_project_value_buffer(v7, qword_28119DA40);
  v8 = sub_21580B7D0();
  v9 = sub_21580BAE0();
  v10 = objc_release_x22;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315651;
    *(v11 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v23);
    *(v11 + 12) = 2085;
    *(v11 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v23);
    *(v11 + 22) = 2085;
    *(v11 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v23);
    _os_log_impl(&dword_2157E4000, v8, v9, "SafariSummarizationPrefetch - Observing referenced assetSet is updated for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216072190](v12, -1, -1);
    v13 = v11;
    v10 = objc_release_x22;
    MEMORY[0x216072190](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_21580BA60();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a2;
    sub_215803914();
  }

  else
  {
    v18 = sub_21580B7D0();
    v19 = sub_21580BAC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = *(v10 + 307);
      *(v20 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v22);
      *(v20 + 12) = 2085;
      *(v20 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v22);
      *(v20 + 22) = 2085;
      *(v20 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v22);
      _os_log_impl(&dword_2157E4000, v18, v19, "SafariSummarizationPrefetch - Failed to update loadedAssets due to self for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v21, -1, -1);
      MEMORY[0x216072190](v20, -1, -1);
    }
  }
}

uint64_t sub_2157F1334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2157F13C4;

  return sub_2157F16E8();
}

uint64_t sub_2157F13C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_6();

    return v12();
  }
}

uint64_t sub_2157F14DC()
{
  v21 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v2, qword_28119DA40);
  v3 = sub_21580B7D0();
  sub_21580BAC0();
  OUTLINED_FUNCTION_37();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_15_0();
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315651;
    OUTLINED_FUNCTION_36();
    *(v7 + 4) = sub_215808B34(0xD000000000000014, v8, &v20);
    *(v7 + 12) = 2085;
    v9 = OUTLINED_FUNCTION_63();
    *(v7 + 14) = sub_215808B34(v9, v10, v11);
    *(v7 + 22) = 2085;
    v12 = OUTLINED_FUNCTION_63();
    *(v7 + 24) = sub_215808B34(v12, v13, v14);
    OUTLINED_FUNCTION_20_0(&dword_2157E4000, v15, v1, "SafariSummarizationPrefetch - Failed to update loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s");
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v16 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v16);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190](v17);
  }

  OUTLINED_FUNCTION_6();

  return v18();
}

uint64_t sub_2157F1670(uint64_t a1)
{
  sub_2157EBCCC(v1 + 40, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2157F16E8()
{
  OUTLINED_FUNCTION_3();
  v1[10] = v0;
  v2 = sub_21580B5E0();
  v1[11] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_18_0();
  v1[12] = v4;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_21580B700();
  v1[16] = v7;
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_18_0();
  v1[17] = v9;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v12 = sub_21580B760();
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2157F1830()
{
  v150 = v0;
  v2 = v0[19];
  v3 = v0[10];
  v4 = *(v3 + 16);
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D39D88], v0[16]);

  sub_21580B770();
  v5 = type metadata accessor for ResourceAccessSpan();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_215801DF0(v4, 65, v2, 0, 1);
  v0[20] = v8;
  if ((*(v3 + 80) & 1) == 0)
  {
    *(v8 + qword_28119D508) = 1;
  }

  v9 = v0[10];
  sub_2157F28DC(v8);
  v0[21] = v10;
  v18 = v10;
  v19 = [v10 location];
  if (!v19)
  {
    OUTLINED_FUNCTION_23_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v26 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v26, qword_28119DA40);
    v27 = v18;
    v28 = sub_21580B7D0();
    v29 = sub_21580BAC0();

    v30 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_15_0();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v149[0] = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_54(5.9286e-34);
      v37 = OUTLINED_FUNCTION_12_0(v34, v35, v36);
      *(v32 + 14) = v37;
      *(v32 + 22) = v1;
      *(v32 + 24) = OUTLINED_FUNCTION_21_0(v37, v38, v39);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v40, v29, "SafariSummarizationPrefetch - Failed to get asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v33, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_39();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v41 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v41, v42);
    swift_willThrow();

    goto LABEL_4;
  }

  v20 = v19;
  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[11];
  v24 = v0[12];
  sub_21580B580();

  (*(v24 + 32))(v21, v22, v23);
  v25 = sub_21580B570();
  if (v25)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v43 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v43, qword_28119DA40);
    v44 = v18;
    v45 = sub_21580B7D0();
    v46 = sub_21580BAE0();

    v47 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_15_0();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v149[0] = swift_slowAlloc();
      *v49 = 138740483;
      *(v49 + 4) = v44;
      *v50 = v44;
      *(v49 + 12) = 2085;
      v51 = v44;
      v54 = OUTLINED_FUNCTION_12_0(v51, v52, v53);
      *(v49 + 14) = v54;
      *(v49 + 22) = 2085;
      v1 = MEMORY[0x277D84F70];
      *(v49 + 24) = OUTLINED_FUNCTION_21_0(v54, v55, v56);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v57, v46, "SafariSummarizationPrefetch - Successfully retrieved reachable asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v50, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }

  v58 = [v18 metadata];
  v59 = sub_21580B830();

  v60 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v59);
  v62 = v61;

  if (!v62)
  {
    OUTLINED_FUNCTION_23_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v101 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v101, qword_28119DA40);
    v102 = v18;
    v103 = sub_21580B7D0();
    v104 = sub_21580BAC0();

    v105 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v105, v106))
    {
      OUTLINED_FUNCTION_15_0();
      v107 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v108 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v149[0] = swift_slowAlloc();
      v109 = OUTLINED_FUNCTION_54(5.9286e-34);
      v112 = OUTLINED_FUNCTION_12_0(v109, v110, v111);
      *(v107 + 14) = v112;
      *(v107 + 22) = v1;
      *(v107 + 24) = OUTLINED_FUNCTION_21_0(v112, v113, v114);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v115, v104, "SafariSummarizationPrefetch - Failed to get asset metadata version for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v108, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_39();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    v116 = v0[15];
    v117 = v0[11];
    v118 = v0[12];
    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v119 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v119, v120);
    swift_willThrow();

    v121 = OUTLINED_FUNCTION_43();
    v122(v121);
LABEL_4:
    v12 = v0[18];
    v11 = v0[19];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];

    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  v148 = v60;
  v63 = v0[10];
  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  v64 = *(v63 + 88);

  v65 = sub_2158033D4();

  v66 = sub_21580A1D8(v65);

  if (!v66)
  {
    goto LABEL_31;
  }

  v67 = sub_2158036AC(v66);

  if (!v67)
  {
    goto LABEL_31;
  }

  v68 = [v67 metadata];
  v69 = sub_21580B830();

  v70 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v69);
  v72 = v71;

  if (!v72)
  {
LABEL_30:

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB8, &qword_21580D0E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    *(inited + 32) = v18;
    sub_2157F74BC(0, &qword_28119CBA8, 0x277D779E0);
    sub_2157EBC50();
    v76 = v18;
    v77 = sub_21580B850();
    v78 = *(v63 + 88);

    v79 = sub_2158033D4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = v79;
    sub_2157F99B4(v77, isUniquelyReferenced_nonNull_native);
    sub_2158035A0(v79);

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v81 = v0[15];
    v83 = v0[12];
    v82 = v0[13];
    v84 = v0[11];
    v85 = sub_21580B7F0();
    __swift_project_value_buffer(v85, qword_28119DA40);
    (*(v83 + 16))(v82, v81, v84);

    v86 = sub_21580B7D0();
    v87 = sub_21580BAE0();

    v88 = os_log_type_enabled(v86, v87);
    v90 = v0[12];
    v89 = v0[13];
    v91 = v0[11];
    if (v88)
    {
      log = v87;
      v92 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v92 = 136316163;
      v93 = sub_215808B34(v148, v62, v149);

      *(v92 + 4) = v93;
      *(v92 + 12) = 2085;
      sub_2157F71C0();
      v94 = sub_21580BD10();
      v96 = v95;
      v97 = OUTLINED_FUNCTION_43();
      v98(v97);
      v99 = sub_215808B34(v94, v96, v149);

      *(v92 + 14) = v99;
      *(v92 + 22) = 2080;
      OUTLINED_FUNCTION_36();
      *(v92 + 24) = sub_215808B34(0xD00000000000001DLL, v100, v149);
      *(v92 + 32) = 2085;
      *(v92 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v149);
      *(v92 + 42) = 2085;
      *(v92 + 44) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v149);
      _os_log_impl(&dword_2157E4000, v86, log, "SafariSummarizationPrefetch - Successfully loaded the retrieved asset version: %s, assetLocation: %{sensitive}s, assetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v92, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v123 = OUTLINED_FUNCTION_43();
      v124(v123);
    }

    OUTLINED_FUNCTION_27_0(qword_28119D500);
    sub_215802470();
    v125 = 0x28119C000uLL;
    goto LABEL_42;
  }

  if (v70 == v148 && v72 == v62)
  {
  }

  else
  {
    v74 = sub_21580BD30();

    if ((v74 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v125 = 0x28119C000uLL;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v138 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v138, qword_28119DA40);
  v139 = v18;

  v140 = sub_21580B7D0();
  v141 = sub_21580BAC0();

  if (os_log_type_enabled(v140, v141))
  {
    OUTLINED_FUNCTION_53();
    v142 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    loga = v140;
    v143 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v142 = 136315907;
    v144 = sub_215808B34(v148, v62, v149);

    *(v142 + 4) = v144;
    *(v142 + 12) = 2117;
    *(v142 + 14) = v139;
    *v143 = v139;
    *(v142 + 22) = 2085;
    v145 = v139;
    *(v142 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v149);
    *(v142 + 32) = 2085;
    v125 = 0x28119C000;
    *(v142 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v149);
    _os_log_impl(&dword_2157E4000, loga, v141, "SafariSummarizationPrefetch - Skipping update to loadedAssets, already updated to asset version: %s, asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s", v142, 0x2Au);
    sub_2157F7220(v143, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_0(qword_28119D500);
  sub_215802470();

LABEL_42:
  v126 = v0[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {
    if (*(v125 + 3184) != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v131 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v131, qword_28119DA40);
    v132 = sub_21580B7D0();
    v133 = sub_21580BAC0();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = OUTLINED_FUNCTION_79();
      *v134 = 0;
      _os_log_impl(&dword_2157E4000, v132, v133, "SafariSummarizationPrefetch - Failed to call didUpdateLoadedAssets since delegate is not set", v134, 2u);
      v135 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v135);
    }

    else
    {
    }

    v136 = OUTLINED_FUNCTION_33();
    v137(v136);

    OUTLINED_FUNCTION_6();
LABEL_5:
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v128 = swift_task_alloc();
  v0[23] = v128;
  *v128 = v0;
  v128[1] = sub_2157F2744;
  OUTLINED_FUNCTION_73();

  return sub_2157E88F0();
}

uint64_t sub_2157F2744()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2157F2828()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  swift_unknownObjectRelease();

  v4 = OUTLINED_FUNCTION_33();
  v5(v4);

  OUTLINED_FUNCTION_6();

  return v6();
}

void sub_2157F28DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_21580B850();
  v6 = MEMORY[0x216071B70]();
  sub_2157F29C8(v2, v5, a1, &v7, &v8);

  objc_autoreleasePoolPop(v6);
}

void sub_2157F29C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB0, &qword_21580D0E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21580CF80;
  sub_2157F74BC(0, &unk_28119CBD8, 0x277D46E38);
  *(v9 + 32) = sub_2157F2FCC();
  v10 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v11 = sub_2157F665C(0xD000000000000020, 0x800000021580F2D0, v8);
  v37[0] = 0;
  if ([v11 acquireWithError_])
  {
    v12 = v37[0];
  }

  else
  {
    v13 = v37[0];
    v14 = sub_21580B520();

    swift_willThrow();
  }

  sub_2157EBCCC(a1 + 40, v37);
  v15 = v38;
  v16 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v17 = (*(v16 + 32))(0xD000000000000014, 0x800000021580EDB0, a2, v15, v16);
  if (!v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v21 = sub_21580B7F0();
    __swift_project_value_buffer(v21, qword_28119DA40);
    v22 = sub_21580B7D0();
    v23 = sub_21580BAC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315651;
      *(v24 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v37);
      *(v24 + 12) = 2085;
      *(v24 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v37);
      *(v24 + 22) = 2085;
      *(v24 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v37);
      _os_log_impl(&dword_2157E4000, v22, v23, "SafariSummarizationPrefetch - Failed to retrieve AssetSet: %s, countryCode: %{sensitive}s, locale: %{sensitive}s. Most likely due to UAF assets not downloaded", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v25, -1, -1);
      MEMORY[0x216072190](v24, -1, -1);
    }

    if (a3)
    {
      *(a3 + qword_28119D500) = 84;
      sub_215802470();
    }

    sub_2157F6704();
    v26 = swift_allocError();
    *v27 = 6;
    swift_willThrow();
    goto LABEL_21;
  }

  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(v37);
  v19 = sub_21580B880();
  v20 = [v18 assetNamed_];

  if (!v20)
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v28 = sub_21580B7F0();
    __swift_project_value_buffer(v28, qword_28119DA40);
    v29 = sub_21580B7D0();
    v30 = sub_21580BAC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v31 = 136315907;
      *(v31 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v37);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_215808B34(0xD00000000000001DLL, 0x800000021580EDF0, v37);
      *(v31 + 22) = 2085;
      *(v31 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v37);
      *(v31 + 32) = 2085;
      *(v31 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v37);
      _os_log_impl(&dword_2157E4000, v29, v30, "SafariSummarizationPrefetch - Failed to retrieve AssetSet: %s, with name: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v32, -1, -1);
      MEMORY[0x216072190](v31, -1, -1);
    }

    if (a3)
    {
      *(a3 + qword_28119D500) = 85;
      sub_215802470();
    }

    sub_2157F6704();
    v26 = swift_allocError();
    *v33 = 6;
    swift_willThrow();

LABEL_21:
    [v11 invalidate];

    *a4 = v26;
    goto LABEL_22;
  }

  *a5 = v20;
  [v11 invalidate];

LABEL_22:
  v34 = *MEMORY[0x277D85DE8];
}

id sub_2157F2FCC()
{
  v0 = sub_21580B880();

  v1 = sub_21580B880();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

NSObject *sub_2157F3060(uint64_t a1)
{
  v3 = v1;
  v4 = sub_21580B5E0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v71 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21580B700();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = sub_21580B760();
  v22 = OUTLINED_FUNCTION_48(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = *(v3 + 16);
  (*(v15 + 104))(v20, *MEMORY[0x277D39D88], v12);

  sub_21580B770();
  v29 = type metadata accessor for ResourceAccessSpan();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_215801DF0(v28, 62, v27, 0, 1);
  if ((*(v3 + 80) & 1) == 0)
  {
    *(v32 + qword_28119D508) = 1;
  }

  OUTLINED_FUNCTION_46();
  swift_beginAccess();
  v33 = *(v3 + 88);

  v34 = sub_2158033D4();

  v35 = sub_21580A1D8(v34);

  if (v35 && (v36 = sub_2158036AC(v35), , v36))
  {
    v37 = [v36 location];
    if (v37)
    {
      v38 = v37;
      sub_21580B580();

      OUTLINED_FUNCTION_27_0(qword_28119D500);
      sub_215802470();
      (*(v71 + 16))(a1, v11, v4);
      v39 = [v36 metadata];
      v40 = sub_21580B830();

      (*(v71 + 8))(v11, v4);
    }

    else
    {
      OUTLINED_FUNCTION_23_0(qword_28119D500);
      sub_215802470();
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v54 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v54, qword_28119DA40);
      v55 = v36;
      v40 = sub_21580B7D0();
      v56 = sub_21580BAC0();

      v57 = OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v57, v58))
      {
        OUTLINED_FUNCTION_15_0();
        v59 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_0();
        v60 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v72 = swift_slowAlloc();
        *v59 = 138740483;
        *(v59 + 4) = v55;
        *v60 = v36;
        *(v59 + 12) = 2085;
        v61 = v55;
        v62 = OUTLINED_FUNCTION_67();
        *(v59 + 14) = sub_215808B34(v62, v63, v64);
        *(v59 + 22) = 2085;
        v65 = OUTLINED_FUNCTION_67();
        *(v59 + 24) = sub_215808B34(v65, v66, v67);
        _os_log_impl(&dword_2157E4000, v40, v56, "SafariSummarizationPrefetch - Failed to get loaded asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s", v59, 0x20u);
        sub_2157F7220(v60, &qword_27CA73DA8, &qword_21580D0D8);
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_39();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      v68 = swift_allocError();
      OUTLINED_FUNCTION_8_1(v68, v69);
      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v41 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v41, qword_28119DA40);
    v40 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v40, v42))
    {
      OUTLINED_FUNCTION_15_0();
      swift_slowAlloc();
      OUTLINED_FUNCTION_42();
      v72 = swift_slowAlloc();
      *v2 = 136315651;
      OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_215808B34(0xD000000000000014, v43, &v72);
      *(v2 + 12) = 2085;
      v44 = OUTLINED_FUNCTION_63();
      *(v2 + 14) = sub_215808B34(v44, v45, v46);
      *(v2 + 22) = 2085;
      v47 = OUTLINED_FUNCTION_63();
      *(v2 + 24) = sub_215808B34(v47, v48, v49);
      _os_log_impl(&dword_2157E4000, v40, v4, "SafariSummarizationPrefetch - Failed to get loaded asset for assetNamed: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v2, 0x20u);
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      v50 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v50);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v51 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v51, v52);
    swift_willThrow();
  }

  return v40;
}

NSObject *sub_2157F3650@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v174 = a1;
  v175 = a2;
  v166 = a4;
  v9 = sub_21580B530();
  v10 = OUTLINED_FUNCTION_2_2(v9);
  v168 = v11;
  v169 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v167 = v15 - v14;
  v173 = sub_21580B700();
  v16 = OUTLINED_FUNCTION_2_2(v173);
  v171 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = sub_21580B760();
  v24 = OUTLINED_FUNCTION_48(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v172 = v28 - v27;
  v29 = sub_21580B5E0();
  v30 = OUTLINED_FUNCTION_2_2(v29);
  v170 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_61();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v158 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v39);
  v41 = &v158 - v40;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v42 = v4;
  v43 = v178;
  result = sub_2157F3060(v41);
  if (v43)
  {
    return result;
  }

  v159 = v6;
  v160 = v5;
  v161 = v38;
  v162 = 0;
  v163 = v7;
  v164 = v41;
  v178 = result;
  v165 = v29;
  v45 = *(v4 + 16);
  (*(v171 + 104))(v22, *MEMORY[0x277D39D88], v173);

  v46 = v172;
  sub_21580B770();
  v47 = type metadata accessor for ResourceAccessSpan();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_215801DF0(v45, 63, v46, 0, 1);
  v51 = v50;
  if ((*(v42 + 80) & 1) == 0)
  {
    *(v50 + qword_28119D508) = 1;
  }

  v52 = sub_2157F74BC(0, &qword_28119CC08, 0x277D42540);
  v53 = sub_2157EE79C(v174, v175);
  v54 = v178;
  if (v53 < 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v7 = v53;

  v56 = sub_2157F43E0(v55);
  v58 = v57;

  if (v58)
  {
    v5 = 1;
  }

  else
  {
    v5 = v56;
  }

  if (!v5)
  {
    goto LABEL_50;
  }

  v175 = v51;
  v176 = v7 % v5;
  v59 = sub_21580BD10();
  v176 = 0xD000000000000019;
  v177 = 0x800000021580F2B0;
  MEMORY[0x216071600](v59);

  v38 = v176;
  v51 = v177;
  v60 = sub_2158036F4(v176, v177, v54);
  if (!v61)
  {
    if (qword_28119CC70 == -1)
    {
LABEL_13:
      v73 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v73, qword_28119DA40);

      v74 = sub_21580B7D0();
      v75 = sub_21580BAC0();

      if (os_log_type_enabled(v74, v75))
      {
        OUTLINED_FUNCTION_53();
        v76 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v176 = swift_slowAlloc();
        *v76 = 136315907;
        v77 = sub_215808B34(v38, v51, &v176);

        *(v76 + 4) = v77;
        *(v76 + 12) = 2053;
        *(v76 + 14) = v7;
        *(v76 + 22) = 2048;
        *(v76 + 24) = v5;
        *(v76 + 32) = 2080;
        v78 = OUTLINED_FUNCTION_1_2();
        sub_2158036F4(v78, v79, v178);
        OUTLINED_FUNCTION_38();
        v83 = v82 | 0x610000u;
        if (v84)
        {
          v80 = v83;
          v85 = 0xE300000000000000;
        }

        else
        {
          v85 = v81;
        }

        v86 = sub_215808B34(v80, v85, &v176);

        *(v76 + 34) = v86;
        _os_log_impl(&dword_2157E4000, v74, v75, "SafariSummarizationPrefetch - Failed to find %s key in metadata dictionary for hash: %{sensitive}llu, numShards: %llu, version: %s", v76, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      else
      {
      }

      *(v175 + qword_28119D500) = 88;
      sub_215802470();
      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      swift_allocError();
      *v115 = 8;
      swift_willThrow();

      (*(v170 + 8))(v164, v165);
    }

LABEL_51:
    OUTLINED_FUNCTION_0();
    swift_once();
    goto LABEL_13;
  }

  v62 = v61;
  v173 = v38;
  v174 = v51;
  v176 = v60;
  v177 = v61;
  v63 = v167;
  v64 = v168;
  v65 = v60;
  v66 = v169;
  (*(v168 + 104))(v167, *MEMORY[0x277CC91D8], v169);
  sub_2157F6758();
  v68 = v163;
  v67 = v164;
  sub_21580B5D0();
  (*(v64 + 8))(v63, v66);
  v69 = v162;
  v70 = sub_21580B560();
  if (v69)
  {

    v71 = *(v170 + 8);
    v72 = v165;
    v71(v68, v165);
    v71(v67, v72);
  }

  v171 = v65;
  v172 = v52;
  v87 = v165;
  if ((v70 & 1) == 0)
  {
    v116 = v175;

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v117 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v117, qword_28119DA40);
    v118 = v170;
    v119 = v160;
    (*(v170 + 16))(v160, v68, v87);
    v120 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_13_0();
      v176 = swift_slowAlloc();
      OUTLINED_FUNCTION_70(4.9655e-34);
      sub_21580B5A0();
      v123 = OUTLINED_FUNCTION_25_0();
      v119(v123);
      v124 = OUTLINED_FUNCTION_52();
      v126 = sub_215808B34(v124, v118, v125);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2080;
      v127 = OUTLINED_FUNCTION_1_2();
      sub_2158036F4(v127, v128, v178);
      OUTLINED_FUNCTION_38();
      v131 = v130 | 0x610000u;
      if (v84)
      {
        v129 = v131;
      }

      v132 = OUTLINED_FUNCTION_59(v129);

      *(v122 + 14) = v132;
      OUTLINED_FUNCTION_76(&dword_2157E4000, v133, v134, "SafariSummarizationPrefetch - Failed to find bloom filter asset at path: %{sensitive}s, version: %s");
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v87 = v165;
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v135 = OUTLINED_FUNCTION_47();
      v119(v135);
    }

    *(v116 + qword_28119D500) = 83;
    sub_215802470();
    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    swift_allocError();
    *v136 = 0;
    goto LABEL_46;
  }

  v88 = v67;
  v162 = 0;
  sub_21580B5A0();
  v89 = sub_2157F437C();
  v90 = v174;
  if (!v89)
  {
    v137 = v175;

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v138 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v138, qword_28119DA40);
    v139 = v170;
    v119 = v159;
    (*(v170 + 16))(v159, v68, v87);
    v140 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_13_0();
      v176 = swift_slowAlloc();
      OUTLINED_FUNCTION_70(4.9655e-34);
      sub_21580B5A0();
      v143 = OUTLINED_FUNCTION_25_0();
      v119(v143);
      v144 = OUTLINED_FUNCTION_52();
      v146 = sub_215808B34(v144, v139, v145);

      *(v142 + 4) = v146;
      *(v142 + 12) = 2080;
      v147 = OUTLINED_FUNCTION_1_2();
      sub_2158036F4(v147, v148, v178);
      OUTLINED_FUNCTION_38();
      v151 = v150 | 0x610000u;
      if (v84)
      {
        v149 = v151;
      }

      v152 = OUTLINED_FUNCTION_59(v149);

      *(v142 + 14) = v152;
      OUTLINED_FUNCTION_76(&dword_2157E4000, v153, v154, "SafariSummarizationPrefetch - Failed to deserialize installed bloom filter binary at path: %{sensitive}s, version: %s");
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v87 = v165;
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v156 = OUTLINED_FUNCTION_47();
      v119(v156);
    }

    *(v137 + qword_28119D500) = 91;
    sub_215802470();
    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    swift_allocError();
    *v157 = 1;
LABEL_46:
    swift_willThrow();

    (v119)(v163, v87);
    (v119)(v164, v87);
  }

  v91 = v89;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v92 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v92, qword_28119DA40);
  v93 = v170;
  (*(v170 + 16))(v161, v68, v87);

  v94 = v87;
  v95 = sub_21580B7D0();
  v96 = sub_21580BAE0();

  if (os_log_type_enabled(v95, v96))
  {
    OUTLINED_FUNCTION_53();
    v97 = swift_slowAlloc();
    v169 = v91;
    v98 = v97;
    OUTLINED_FUNCTION_69();
    v168 = swift_slowAlloc();
    v176 = v168;
    *v98 = 136315907;
    v99 = sub_215808B34(v173, v90, &v176);

    *(v98 + 4) = v99;
    LODWORD(v174) = v96;
    *(v98 + 12) = 2080;
    v100 = sub_215808B34(v171, v62, &v176);

    *(v98 + 14) = v100;
    *(v98 + 22) = 2080;
    v101 = OUTLINED_FUNCTION_1_2();
    v102 = v161;
    sub_2158036F4(v101, v103, v178);
    OUTLINED_FUNCTION_38();
    v106 = v105 | 0x610000u;
    if (v84)
    {
      v104 = v106;
    }

    v107 = OUTLINED_FUNCTION_59(v104);

    *(v98 + 24) = v107;
    *(v98 + 32) = 2085;
    sub_21580B5A0();
    v109 = v108;
    v110 = *(v93 + 8);
    v110(v102, v165);
    v111 = OUTLINED_FUNCTION_52();
    v113 = sub_215808B34(v111, v109, v112);

    *(v98 + 34) = v113;
    _os_log_impl(&dword_2157E4000, v95, v174, "SafariSummarizationPrefetch - Successfully fetched and deserialized bloom filter shard binary: %s, file: %s, version: %s, at path: %{sensitive}s", v98, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v91 = v169;
    v88 = v164;
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();

    v114 = v165;
  }

  else
  {

    v110 = *(v93 + 8);
    v110(v161, v94);
    v114 = v94;
  }

  *(v175 + qword_28119D500) = 81;
  sub_215802470();
  v155 = v166;
  v166[3] = v172;
  v155[4] = &off_2827B4F98;

  *v155 = v91;
  v110(v163, v114);
  v110(v88, v114);
}

id sub_2157F437C()
{
  v0 = sub_21580B880();

  v1 = [swift_getObjCClassFromMetadata() bloomFilterWithPathToFile_];

  return v1;
}

uint64_t sub_2157F43E0(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  result = sub_2158036F4(0xD000000000000017, v3, a1);
  if (!v5)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v15, qword_28119DA40);

    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_90;
    }

    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    v20 = OUTLINED_FUNCTION_1_2();
    sub_2158036F4(v20, v21, a1);
    OUTLINED_FUNCTION_38();
    v25 = v24 | 0x610000u;
    if (v12)
    {
      v22 = v25;
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_215808B34(v22, v26, v42);

    *(v18 + 4) = v27;
    v28 = "SafariSummarizationPrefetch - Failed to find num_bloom_filter_shards key in metadata dictionary, version: %s";
    goto LABEL_89;
  }

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  v8 = result & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_82:
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v32 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v32, qword_28119DA40);

    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_90;
    }

    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    v33 = OUTLINED_FUNCTION_1_2();
    sub_2158036F4(v33, v34, a1);
    OUTLINED_FUNCTION_38();
    v38 = v37 | 0x610000u;
    if (v12)
    {
      v35 = v38;
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = v36;
    }

    v40 = sub_215808B34(v35, v39, v42);

    *(v18 + 4) = v40;
    v28 = "SafariSummarizationPrefetch - num_bloom_filter_shards value incorrect in metadata dictionary, version: %s";
LABEL_89:
    _os_log_impl(&dword_2157E4000, v16, v17, v28, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
LABEL_90:

    return 0;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v1 = sub_2157F67AC(result, v6, 10);
    v31 = v41;
LABEL_81:

    if ((v31 & 1) == 0)
    {
      return v1;
    }

    goto LABEL_82;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_21580BC20();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          v1 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_10_0();
              if (!v12 && v11)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_50();
              if (!v12)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_41();
              if (v11)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_49();
              if (v12)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_69;
        }

        goto LABEL_79;
      }

      goto LABEL_97;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v1 = 0;
        if (result)
        {
          while (1)
          {
            v30 = *result - 48;
            if (v30 > 9)
            {
              goto LABEL_79;
            }

            if (!is_mul_ok(v1, 0xAuLL))
            {
              goto LABEL_79;
            }

            v11 = __CFADD__(10 * v1, v30);
            v1 = 10 * v1 + v30;
            if (v11)
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_69;
      }

LABEL_79:
      v1 = 0;
      v14 = 1;
      goto LABEL_80;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        v1 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_10_0();
            if (!v12 && v11)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_50();
            if (!v12)
            {
              goto LABEL_79;
            }

            v11 = 10 * v1 >= v13;
            v1 = 10 * v1 - v13;
            if (!v11)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_49();
            if (v12)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_69:
        v14 = 0;
LABEL_80:
        v43 = v14;
        v31 = v14;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v42[0] = result;
  v42[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v7)
      {
        v1 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_10_0();
          if (!v12 && v11)
          {
            break;
          }

          OUTLINED_FUNCTION_50();
          if (!v12)
          {
            break;
          }

          OUTLINED_FUNCTION_41();
          if (v11)
          {
            break;
          }

          OUTLINED_FUNCTION_49();
          if (v12)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        OUTLINED_FUNCTION_72();
        while (1)
        {
          OUTLINED_FUNCTION_10_0();
          if (!v12 && v11)
          {
            break;
          }

          OUTLINED_FUNCTION_50();
          if (!v12)
          {
            break;
          }

          v11 = 10 * v1 >= v29;
          v1 = 10 * v1 - v29;
          if (!v11)
          {
            break;
          }

          OUTLINED_FUNCTION_49();
          if (v12)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_96;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_10_0();
        if (!v12 && v11)
        {
          break;
        }

        OUTLINED_FUNCTION_50();
        if (!v12)
        {
          break;
        }

        OUTLINED_FUNCTION_41();
        if (v11)
        {
          break;
        }

        OUTLINED_FUNCTION_49();
        if (v12)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_98:
  __break(1u);
  return result;
}

NSObject *sub_2157F4884(uint64_t a1, void *a2, uint64_t a3)
{
  v131 = a3;
  v132 = a1;
  v7 = sub_21580B530();
  v8 = OUTLINED_FUNCTION_2_2(v7);
  v133 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = sub_21580B5E0();
  v16 = OUTLINED_FUNCTION_2_2(v15);
  v134 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v22);
  v24 = &v125 - v23;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = v136;
  v26 = sub_2157F3060(v24);
  if (!v25)
  {
    v127 = v4;
    v128 = 0;
    v28 = v133;
    v29 = v7;
    v125 = v5;
    v126 = v3;
    v136 = v24;
    v129 = v26;
    v130 = v15;
    v30 = sub_2158036F4(0xD000000000000015, 0x800000021580F250, v26);
    if (v31)
    {
      v5 = v30;
      v32 = v31;
      v135[0] = v30;
      v135[1] = v31;
      (v28[13].isa)(v14, *MEMORY[0x277CC91D8], v7);
      sub_2157F6758();
      v33 = v132;
      v34 = v136;
      sub_21580B5D0();
      (v28[1].isa)(v14, v29);
      v35 = v128;
      v36 = sub_21580B570();
      if (v35)
      {

        v37 = *(v134 + 8);
        v38 = v130;
        v37(v33, v130);
        v37(v34, v38);
      }

      else
      {
        v53 = v130;
        v54 = v134;
        if (v36)
        {
          v133 = v5;
          OUTLINED_FUNCTION_36();
          v56 = sub_2158036F4(0xD000000000000015, v55, v129);
          v57 = v131;
          if (v58)
          {
            v5 = v56;
            if (qword_28119CC70 != -1)
            {
              OUTLINED_FUNCTION_0();
              swift_once();
            }

            v59 = sub_21580B7F0();
            __swift_project_value_buffer(v59, qword_28119DA40);
            OUTLINED_FUNCTION_40();
            v60(v127, v132, v53);

            v61 = v129;

            v62 = sub_21580B7D0();
            v63 = sub_21580BAE0();

            LODWORD(v132) = v63;
            if (os_log_type_enabled(v62, v63))
            {
              OUTLINED_FUNCTION_15_0();
              swift_slowAlloc();
              OUTLINED_FUNCTION_42();
              v128 = swift_slowAlloc();
              v135[0] = v128;
              *v53 = 136315651;
              v64 = sub_215808B34(v133, v32, v135);
              v133 = v62;
              v65 = v64;

              *(v53 + 4) = v65;
              *(v53 + 12) = 2080;
              v66 = OUTLINED_FUNCTION_1_2();
              v68 = sub_2158036F4(v66, v67, v61);
              v70 = v69;

              if (v70)
              {
                v71 = v68;
              }

              else
              {
                v71 = 6369134;
              }

              v72 = OUTLINED_FUNCTION_59(v71);

              *(v53 + 14) = v72;
              *(v53 + 22) = 2085;
              v73 = v127;
              sub_21580B5A0();
              v75 = v74;
              OUTLINED_FUNCTION_60();
              v32(v73, v130);
              v76 = OUTLINED_FUNCTION_52();
              v78 = sub_215808B34(v76, v75, v77);
              v79 = v130;

              *(v53 + 24) = v78;
              v80 = v133;
              _os_log_impl(&dword_2157E4000, v133, v132, "SafariSummarizationPrefetch - Successfully fetched url path filter jsonl file: %s, version: %s, at path: %{sensitive}s", v53, 0x20u);
              swift_arrayDestroy();
              v53 = v79;
              v57 = v131;
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
            }

            else
            {

              OUTLINED_FUNCTION_60();
              v32(v127, v53);
            }

            *(v57 + qword_28119D500) = 81;
            sub_215802470();
            v32(v136, v53);
          }

          else
          {

            *(v57 + qword_28119D500) = 95;
            sub_215802470();
            if (qword_28119CC70 != -1)
            {
              OUTLINED_FUNCTION_0();
              swift_once();
            }

            v103 = sub_21580B7F0();
            __swift_project_value_buffer(v103, qword_28119DA40);
            OUTLINED_FUNCTION_40();
            v104 = v125;
            v105(v125, v132, v53);
            v106 = v129;

            v107 = sub_21580B7D0();
            v108 = sub_21580BAC0();

            if (os_log_type_enabled(v107, v108))
            {
              v109 = v104;
              v110 = OUTLINED_FUNCTION_58();
              OUTLINED_FUNCTION_13_0();
              v133 = swift_slowAlloc();
              v135[0] = v133;
              OUTLINED_FUNCTION_70(4.9655e-34);
              v111 = sub_21580B5A0();
              v112 = v54;
              v114 = v113;
              v5 = *(v112 + 8);
              (v5)(v109, v130);
              v115 = sub_215808B34(v111, v114, v135);

              *(v110 + 4) = v115;
              *(v110 + 12) = 2080;
              v116 = OUTLINED_FUNCTION_1_2();
              v118 = sub_2158036F4(v116, v117, v106);
              v120 = v119;

              if (v120)
              {
                v121 = v118;
              }

              else
              {
                v121 = 6369134;
              }

              if (v120)
              {
                v122 = v120;
              }

              else
              {
                v122 = 0xE300000000000000;
              }

              v123 = sub_215808B34(v121, v122, v135);

              *(v110 + 14) = v123;
              _os_log_impl(&dword_2157E4000, v107, v108, "SafariSummarizationPrefetch - Failed to find path filter hash at path: %{sensitive}s, version: %s", v110, 0x16u);
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
              v53 = v130;
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
            }

            else
            {

              v5 = *(v54 + 8);
              (v5)(v104, v53);
            }

            sub_2157F6704();
            OUTLINED_FUNCTION_14_0();
            swift_allocError();
            *v124 = 5;
            swift_willThrow();
            (v5)(v132, v53);
            (v5)(v136, v53);
          }
        }

        else
        {

          *(v131 + qword_28119D500) = 83;
          sub_215802470();
          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_0();
            swift_once();
          }

          v82 = sub_21580B7F0();
          __swift_project_value_buffer(v82, qword_28119DA40);
          OUTLINED_FUNCTION_40();
          v83 = v126;
          v84(v126, v33, v53);
          v85 = v129;

          v86 = sub_21580B7D0();
          v87 = sub_21580BAC0();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = OUTLINED_FUNCTION_58();
            OUTLINED_FUNCTION_13_0();
            v133 = swift_slowAlloc();
            v135[0] = v133;
            OUTLINED_FUNCTION_70(4.9655e-34);
            sub_21580B5A0();
            v89 = v54;
            v91 = v90;
            v5 = *(v89 + 8);
            (v5)(v83, v130);
            v92 = OUTLINED_FUNCTION_52();
            v94 = sub_215808B34(v92, v91, v93);

            *(v88 + 4) = v94;
            *(v88 + 12) = 2080;
            v95 = OUTLINED_FUNCTION_1_2();
            v97 = sub_2158036F4(v95, v96, v85);
            v99 = v98;

            if (v99)
            {
              v100 = v97;
            }

            else
            {
              v100 = 6369134;
            }

            v101 = OUTLINED_FUNCTION_59(v100);

            *(v88 + 14) = v101;
            v33 = v132;
            _os_log_impl(&dword_2157E4000, v86, v87, "SafariSummarizationPrefetch - Failed to find path filter asset at path: %{sensitive}s, version: %s", v88, 0x16u);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_8();
            MEMORY[0x216072190]();
            v53 = v130;
            OUTLINED_FUNCTION_8();
            MEMORY[0x216072190]();
          }

          else
          {

            v5 = *(v54 + 8);
            (v5)(v83, v53);
          }

          sub_2157F6704();
          OUTLINED_FUNCTION_14_0();
          swift_allocError();
          *v102 = 3;
          swift_willThrow();
          (v5)(v33, v53);
          (v5)(v136, v53);
        }
      }
    }

    else
    {
      *(v131 + qword_28119D500) = 88;
      sub_215802470();
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v39 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v39, qword_28119DA40);
      v5 = v129;

      v40 = sub_21580B7D0();
      v41 = sub_21580BAC0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v134;
      if (v42)
      {
        v44 = OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_13_0();
        v135[0] = swift_slowAlloc();
        *v44 = 136315394;
        *(v44 + 4) = sub_215808B34(0xD000000000000015, 0x800000021580F250, v135);
        *(v44 + 12) = 2080;
        v45 = OUTLINED_FUNCTION_1_2();
        v47 = sub_2158036F4(v45, v46, v5);
        v49 = v48;

        if (v49)
        {
          v50 = v47;
        }

        else
        {
          v50 = 6369134;
        }

        if (v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0xE300000000000000;
        }

        v52 = sub_215808B34(v50, v51, v135);

        *(v44 + 14) = v52;
        _os_log_impl(&dword_2157E4000, v40, v41, "SafariSummarizationPrefetch - Failed to find path filter filename for %s in metadata, version: %s", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      else
      {
      }

      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      swift_allocError();
      *v81 = 2;
      swift_willThrow();
      (*(v43 + 8))(v136, v130);
    }
  }

  return v5;
}

uint64_t sub_2157F5434(unsigned __int8 a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1);
  return sub_21580BDE0();
}

uint64_t sub_2157F547C(uint64_t a1, uint64_t a2)
{
  *(*v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2157F54E0()
{
  v1 = *v0;
  sub_21580BDC0();
  MEMORY[0x216071A90](v1);
  return sub_21580BDE0();
}

uint64_t sub_2157F5534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_2157F5560, 0, 0);
}

uint64_t sub_2157F5560()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_77(&unk_21580D150);
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2157F5600;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return v8(0, 0, v6, v4, v5, v2);
}

uint64_t sub_2157F5600()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2157F56E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = sub_21580B880();
  v7[18] = v10;
  sub_2157F74BC(0, &qword_28119CBC8, 0x277D77A08);
  v11 = sub_21580B9F0();
  v7[19] = v11;
  v7[2] = v7;
  v7[3] = sub_2157F5858;
  v12 = swift_continuation_init();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DF8, &qword_21580D158);
  v7[10] = MEMORY[0x277D85DD0];
  v7[11] = 1107296256;
  v7[12] = sub_2157F598C;
  v7[13] = &block_descriptor_71;
  v7[14] = v12;
  [v8 subscribe:v10 subscriptions:v11 queue:a6 completion:v7 + 10];

  return MEMORY[0x282200938](v7 + 2);
}

uint64_t sub_2157F5858()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_1();
  *v3 = v1;
  v4 = v2[19];
  v5 = v2[18];
  if (v2[6])
  {
    v6 = v2[6];
    swift_willThrow();
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2157F598C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2157F59FC(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_2157F59FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E00, &unk_21580D160);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2157F5A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *v8;
  return MEMORY[0x2822009F8](sub_2157F5AA4, 0, 0);
}

void sub_2157F5AA4()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_77(&unk_21580D140);
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_2157F5B54;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  v11 = v0[8];
  v12 = v0[9];

  __asm { BR              X8 }
}

uint64_t sub_2157F5B54()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2157F5C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v19;
  v13 = sub_21580B880();
  v9[18] = v13;
  if (a6)
  {
    a6 = sub_21580B880();
  }

  v9[19] = a6;
  if (a7)
  {
    a7 = sub_21580B9F0();
  }

  v9[20] = a7;
  if (v19)
  {
    v9[14] = v19;
    v9[15] = v20;
    v9[10] = MEMORY[0x277D85DD0];
    v9[11] = 1107296256;
    v9[12] = sub_2157F5F68;
    v9[13] = &block_descriptor_66;
    v12 = _Block_copy(v9 + 10);
    v14 = v9[15];
  }

  v9[21] = v12;
  v9[2] = v9;
  v9[3] = sub_2157F5E38;
  v15 = swift_continuation_init();
  v9[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DF0, &qword_21580D148);
  v9[10] = MEMORY[0x277D85DD0];
  v9[11] = 1107296256;
  v9[12] = sub_2157F5FD0;
  v9[13] = &block_descriptor_63;
  v9[14] = v15;
  [v8 updateAssetsForSubscriber:v13 subscriptionName:a6 policies:a7 queue:a8 detailedProgress:v12 completion:v9 + 10];

  return MEMORY[0x282200938](v9 + 2);
}

uint64_t sub_2157F5E38()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  v2 = v1[21];
  v3 = v1[20];
  v4 = v1[19];
  v5 = v1[18];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  _Block_release(v8);

  OUTLINED_FUNCTION_6();

  return v9();
}

void sub_2157F5F68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2157F5FD0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

id sub_2157F602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2157F73C4(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_21580BD20();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = 0;
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2157F6208;
  aBlock[3] = &block_descriptor_59;
  v15 = _Block_copy(aBlock);

  v16 = [v4 observeAssetSet:v14 queue:a2 handler:v15];
  swift_unknownObjectRelease();
  _Block_release(v15);

  return v16;
}

uint64_t sub_2157F6208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_2157F6270(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21580B880();
  if (a3)
  {
    a3 = sub_21580B820();
  }

  v6 = [v3 retrieveAssetSet:v5 usages:a3];

  return v6;
}

void sub_2157F632C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a5)
  {
    a6 = 0;
  }

  v7 = *v6;
  sub_2157F637C(a1, a2, a3, a4, a5, a6);
}

void sub_2157F637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_21580B880();
  v12 = sub_21580B9F0();
  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2157F6484;
    v13[3] = &block_descriptor;
    a5 = _Block_copy(v13);
  }

  [v7 unsubscribe:v11 subscriptionNames:v12 queue:a4 completion:a5];
  _Block_release(a5);
}

void sub_2157F6484(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_2157F64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_21580B880();

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD8, &qword_21580D128);
    v11 = sub_21580B820();

    if (a4)
    {
LABEL_3:
      v12 = sub_21580B820();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_21580B6C0();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_21580B670();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

id sub_2157F665C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21580B880();

  sub_2157F74BC(0, &qword_28119CC10, 0x277D46DD8);
  v6 = sub_21580B9F0();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

unint64_t sub_2157F6704()
{
  result = qword_28119DA18;
  if (!qword_28119DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA18);
  }

  return result;
}

unint64_t sub_2157F6758()
{
  result = qword_28119CC50;
  if (!qword_28119CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC50);
  }

  return result;
}

unsigned __int8 *sub_2157F67AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21580B9C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2157F6D34(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21580BC20();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2157F6D34(uint64_t a1, unint64_t a2)
{
  v2 = sub_2157F6DA0(sub_2157F6D9C, 0, a1, a2);
  v6 = sub_2157F6DD4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2157F6DA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2157F6DD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21580B910();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21580BB50();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_215808F3C(v9, 0);
  v12 = sub_2157F6F34(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21580B910();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21580BC20();
LABEL_4:

  return sub_21580B910();
}

unint64_t sub_2157F6F34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2157F7144(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21580B9A0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21580BC20();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2157F7144(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21580B980();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2157F7144(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21580B9B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x216071650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2157F71C0()
{
  result = qword_28119DA28;
  if (!qword_28119DA28)
  {
    sub_21580B5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA28);
  }

  return result;
}

uint64_t sub_2157F7220(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_65(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2157F7274()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16(v5);
  *v6 = v7;
  v6[1] = sub_2157EC370;

  return sub_2157F1334();
}

uint64_t sub_2157F7334(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 80);

  return sub_2157F0DC0(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2157F73C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D80, &unk_21580D0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2157F7444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2157F74BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for SafariSummarizationPrefetchAssetsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafariSummarizationPrefetchAssetsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2157F7678()
{
  result = qword_27CA73E08;
  if (!qword_27CA73E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, va);
}

void OUTLINED_FUNCTION_20_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_215808B34(v3, 0xE600000000000000, va);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  result = v1;
  v4 = *(v0 + 8);
  v5 = *(v2 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[11];
  v6 = *(v0[12] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_47()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

id OUTLINED_FUNCTION_54(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2085;

  return v2;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return MEMORY[0x2821FB8C8](0, a1);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return sub_215808B34(a1, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  return v1 + 3;
}

uint64_t OUTLINED_FUNCTION_75()
{
  v2 = *(v0 - 112);

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_76(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_77@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_215808B34(v3, 0xE600000000000000, a3);
}

uint64_t OUTLINED_FUNCTION_79()
{

  return swift_slowAlloc();
}

uint64_t sub_2157F7B84()
{
  v9 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_21580B800())
  {
    if (qword_28119D1F0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v1 = sub_21580B7F0();
    __swift_project_value_buffer(v1, qword_28119D1F8);
    v2 = sub_21580B7D0();
    v3 = sub_21580BAB0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      swift_beginAccess();
      *(v4 + 4) = 0;
      *(v4 + 12) = 1024;
      *(v4 + 14) = 0;
      _os_log_impl(&dword_2157E4000, v2, v3, "Read os_eligibility_get_domain_answer API: %llu. Enabled: %{BOOL}d", v4, 0x12u);
LABEL_10:
      MEMORY[0x216072190](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28119D1F0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_21580B7F0();
    __swift_project_value_buffer(v5, qword_28119D1F8);
    v2 = sub_21580B7D0();
    v6 = sub_21580BAC0();
    if (os_log_type_enabled(v2, v6))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = domain_answer;
      _os_log_impl(&dword_2157E4000, v2, v6, "failed to read sba os eligibility with status: %d", v4, 8u);
      goto LABEL_10;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_2157F7DA8()
{
  v0 = sub_21580B7F0();
  __swift_allocate_value_buffer(v0, qword_28119D1F8);
  __swift_project_value_buffer(v0, qword_28119D1F8);
  return sub_21580B7E0();
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

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t sub_2157F7EB8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_215800608();
  }

  v1 = sub_2157FF4A4();
  v2 = *(v1 + *(*v1 + 464));
  swift_unknownObjectRelease();

  v3 = *(v1 + *(*v1 + 480));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F7F40()
{
  v1 = v0;
  v2 = *(v0 + 96);
  sub_21580BAC0();
  sub_21580B780();
  sub_2157FF5B8();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21580C9B0;
  v4 = (v1 + *(*v1 + 464));
  v6 = *v4;
  v5 = v4[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D70, &qword_21580CEC8);
  v7 = sub_21580B8E0();
  v9 = v8;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2157EDE30();
  *(v3 + 64) = v10;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  sub_21580B780();

  sub_21580BAC0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21580C9B0;
  ObjectType = swift_getObjectType();
  v44 = v5;
  v12 = v5;
  v13 = *(v5 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v14 = sub_21580B8E0();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v10;
  v46 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  sub_21580B780();

  v45 = sub_215800060();
  if (v18)
  {
    sub_21580BAC0();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21580C9B0;
    v13(ObjectType, v44);
    v20 = sub_21580B8E0();
    v21 = MEMORY[0x277D837D0];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    sub_21580B780();
    v24 = v21;
  }

  else
  {
    v25 = v16;
    v26 = v17;
    v27 = HIDWORD(v17);
    sub_21580BAC0();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = xmmword_21580C9B0;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v25;
    sub_21580B780();

    sub_21580BAC0();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D84CC0];
    *(v31 + 16) = xmmword_21580C9B0;
    v33 = MEMORY[0x277D84D30];
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    *(v31 + 32) = v27;
    sub_21580B780();

    sub_21580BAC0();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_21580C9B0;
    *(v34 + 56) = v32;
    *(v34 + 64) = v33;
    *(v34 + 32) = v26;
    sub_21580B780();

    sub_21580BAC0();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D839F8];
    *(v35 + 16) = xmmword_21580C9B0;
    v37 = MEMORY[0x277D83A80];
    *(v35 + 56) = v36;
    *(v35 + 64) = v37;
    *(v35 + 32) = v45;
    sub_21580B780();
    v24 = MEMORY[0x277D837D0];
    v22 = v46;
  }

  sub_21580BAC0();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21580C9B0;
  v39 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D78, &unk_21580CED0);
  v40 = sub_21580B8E0();
  *(v38 + 56) = v24;
  *(v38 + 64) = v22;
  *(v38 + 32) = v40;
  *(v38 + 40) = v41;
  sub_21580B780();

  sub_21580BAC0();
  return sub_21580B780();
}

uint64_t sub_2157F8490(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC10;
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
  sub_2158013B8("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

uint64_t sub_2157F85D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2157F7EAC();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_2157F860C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2157F8644()
{
  v1 = qword_27CA74CA0;
  v2 = sub_21580B760();
  OUTLINED_FUNCTION_65(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_2157F86A0()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_215800608();
  }

  v1 = sub_2157F7EB8();
  v2 = qword_27CA74CA0;
  v3 = sub_21580B760();
  OUTLINED_FUNCTION_65(v3);
  (*(v4 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_2157F8708()
{
  v0 = sub_2157F86A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan()
{
  result = qword_27CA73E10;
  if (!qword_27CA73E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2157F87A8()
{
  result = sub_21580B760();
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

uint64_t sub_2157F8840()
{
  v1 = *(v0 + 96);
  sub_21580BAC0();
  sub_21580B780();
  sub_2157F7F40();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21580C9B0;
  v3 = sub_21580B740();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2157EDE30();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_21580B780();

  sub_21580BAC0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21580C9B0;
  v9 = sub_21580B740();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_21580B780();

  sub_21580BAC0();

  return sub_21580B780();
}

uint64_t sub_2157F8A00(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_2157EDC60(a1, a2, a3);
  sub_21580B750();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_2157F9884(v7, 0x726574706F6461, 0xE700000000000000);
  sub_215801468(v6);

  return sub_2157F8490(a1, a2, a3);
}

unint64_t sub_2157F8B04()
{
  result = qword_27CA73E20;
  if (!qword_27CA73E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E20);
  }

  return result;
}

unint64_t sub_2157F8B58(uint64_t a1)
{
  *(a1 + 8) = sub_2157F8B88();
  result = sub_2157F8BDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2157F8B88()
{
  result = qword_27CA73E28;
  if (!qword_27CA73E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E28);
  }

  return result;
}

unint64_t sub_2157F8BDC()
{
  result = qword_27CA73E30;
  if (!qword_27CA73E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E30);
  }

  return result;
}

unint64_t sub_2157F8C34()
{
  result = qword_27CA73E38;
  if (!qword_27CA73E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E38);
  }

  return result;
}

unint64_t sub_2157F8C88(uint64_t a1)
{
  result = sub_2157F8CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2157F8CB0()
{
  result = qword_27CA73E40;
  if (!qword_27CA73E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E40);
  }

  return result;
}

uint64_t sub_2157F8D04()
{
  OUTLINED_FUNCTION_0_3();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F8D48()
{
  sub_2157E6544(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2157F8D80()
{
  OUTLINED_FUNCTION_0_3();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F8DFC()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
  sub_2157F8F58(v0, &v16);
  os_unfair_lock_unlock(v2);

  result = swift_unknownObjectWeakLoadStrong();
  v4 = v16;
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v4, ObjectType, v5);
    result = swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = *(v4 + 16);
  for (i = (v4 + 40); ; i += 2)
  {
    if (v8 == v7)
    {

      sub_2157E6544(v1 + 16);
      v14 = *(v1 + 32);

      v15 = *(v1 + 40);

      return v1;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    ++v7;
    v10 = *(i - 1);
    v11 = *i;
    v12 = swift_getObjectType();
    v13 = *(v11 + 72);
    swift_unknownObjectRetain();
    v13(v12, v11);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_2157F8F58(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v35 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v34 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v35 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v35 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v24 + 16);

            v32 = sub_2157F9774(0, v31 + 1, 1, v24);
            v33 = *a2;
            *a2 = v32;

            v24 = *a2;
          }

          v27 = *(v24 + 16);
          v26 = *(v24 + 24);
          v5 = v34;
          if (v27 >= v26 >> 1)
          {
            v24 = sub_2157F9774(v26 > 1, v27 + 1, 1, v24);
            *a2 = v24;
          }

          *(v24 + 16) = v27 + 1;
          v28 = *a2 + 16 * v27;
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_2157F9C98();

          v29 = sub_21580BB20();
          sub_21580BAC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_21580C9B0;
          *(v30 + 56) = MEMORY[0x277D837D0];
          *(v30 + 64) = sub_2157EDE30();
          *(v30 + 32) = v17;
          *(v30 + 40) = v16;

          sub_21580B780();
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2157F9244()
{
  sub_2157F8DFC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2157F92C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_21580386C(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_2157F8D04();
  swift_beginAccess();
  v15 = *(a1 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 40);
  sub_2157F9AD8(v14, a2, a3);
  *(a1 + 40) = v17;
  return swift_endAccess();
}

uint64_t sub_2157F941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = sub_2158090E4(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *(a1 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + 40);
    v15 = v31[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E48, "RI");
    sub_21580BC30();
    v16 = *(v31[6] + 16 * v13 + 8);

    v17 = *(v31[7] + 8 * v13);
    type metadata accessor for ActivityMonitor.WeakReference();
    sub_21580BC50();
    *(a1 + 40) = v31;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 40))(a4, a5, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = swift_getObjectType();
    v22 = (*(a5 + 32))(v21, a5);
    sub_21580BAC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21580CC30;
    v24 = (*(a5 + 24))(v21, a5);
    v26 = v25;
    v27 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v28 = sub_2157EDE30();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    (*(a5 + 40))(v21, a5);
    v29 = sub_21580BC00();
    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    sub_21580B780();
  }
}

uint64_t sub_2157F9688(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_215808A0C((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2157F9774(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E58, &qword_21580D4A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_215808B08((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E60, &qword_21580D4A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2157F9884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2158090E4(a2, a3);
  OUTLINED_FUNCTION_1_3(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E50, &qword_21580D498);
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_2158090E4(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_21580BD60();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_2157F9C50(v14, a2, a3, a1, v19);
  }
}

unint64_t sub_2157F99DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v9 = *v4;
  v10 = sub_21580915C();
  OUTLINED_FUNCTION_1_3(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v7;
  v18 = sub_21580915C();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_21580BD60();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v7;
  if ((v16 & 1) == 0)
  {
    return sub_2157F9C14(v15, a1, v20);
  }

  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v15);
  *(v21 + 8 * v15) = a1;
}

uint64_t sub_2157F9AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2158090E4(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E48, "RI");
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2158090E4(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21580BD60();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_2157F9C50(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_2157F9C14(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t sub_2157F9C50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2157F9C98()
{
  result = qword_28119CBA0;
  if (!qword_28119CBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CBA0);
  }

  return result;
}

uint64_t sub_2157F9CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 56))(a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_2157F941C(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_2157F9DA0(a2, a1, a3, a4);
}

uint64_t sub_2157F9DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

id sub_2157F9E68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v4 = sub_2157F8D80();
  type metadata accessor for DeviceContext();
  swift_allocObject();
  v5 = sub_2157EC994();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v6 = objc_allocWithZone(type metadata accessor for SASafariAssistantAssetManager());

  return sub_2157EB2A4(v4, v5, a1, a2, v10, v8, 0, 0, v6);
}

char *sub_2157F9F90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceContext();
  swift_allocObject();
  v4 = sub_2157EC994();
  v5 = sub_2157FA100(a1, a2, v4);

  return v5;
}

SAAssetManagerFactory __swiftcall SAAssetManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_2157FA100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v6 = sub_2157F8D80();
  type metadata accessor for SASafariAssistantAssetManager();
  v14 = 0;
  *v12 = 0u;
  v13 = 0u;
  v11 = 0;
  *v9 = 0u;
  v10 = 0u;

  v7 = sub_2157E6634(a1, a2, v6, a3, &off_2827B4CD0, v12, v9, 0, 0);

  return v7;
}

uint64_t sub_2157FA264(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_21580B880();
  v5 = [v4 _web_looksLikeIPAddress];

  if (v5)
  {
  }

  else
  {
    sub_2157F6758();
    v6 = sub_21580BB70();
    v3 = sub_2157FA340(v6, v3);
  }

  return v3;
}

uint64_t sub_2157FA340(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2160715C0](16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 16 * v3 + 24);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      if (v4)
      {
        sub_21580B960();
      }

      sub_2157FA50C();
      sub_21580B950();

      v9 = sub_21580B880();
      IsDomainTopLevel = _CFHostIsDomainTopLevel();

      v11 = IsDomainTopLevel != 0;
      if (!IsDomainTopLevel && v5)
      {
        break;
      }

      ++v4;
      v6 -= 2;
      v5 = IsDomainTopLevel != 0;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v11 = 1;
LABEL_10:
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (v11)
  {
    if (v12)
    {
      v13 = sub_21580B930();
    }

    else
    {
      v13 = 0;
    }

    v14 = a2;
    v15 = sub_21580B930();
    if (v12 && v13 == v15)
    {
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

unint64_t sub_2157FA50C()
{
  result = qword_28119CC58;
  if (!qword_28119CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC58);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2157FA574(uint64_t a1, int a2)
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

uint64_t sub_2157FA5B4(uint64_t result, int a2, int a3)
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

uint64_t sub_2157FA604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E74736F68 && a2 == 0xE800000000000000;
  if (v4 || (sub_21580BD30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265755168746170 && a2 == 0xEF676E6972747379)
  {

    return 1;
  }

  else
  {
    v7 = sub_21580BD30();

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

uint64_t sub_2157FA6DC(char a1)
{
  if (a1)
  {
    return 0x7265755168746170;
  }

  else
  {
    return 0x656D616E74736F68;
  }
}

uint64_t sub_2157FA728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2157FA604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2157FA770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2157FA6D4();
  *a1 = result;
  return result;
}

uint64_t sub_2157FA798(uint64_t a1)
{
  v2 = sub_2157FB0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2157FA7D4(uint64_t a1)
{
  v2 = sub_2157FB0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2157FA810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EA0, &qword_21580D588);
  OUTLINED_FUNCTION_2_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB0C0();
  sub_21580BE00();
  v19 = 0;
  sub_21580BCE0();
  if (!v4)
  {
    v17[1] = v17[0];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E98, &qword_21580D580);
    v15 = sub_2157FB168(&qword_27CA73EA8, sub_2157FB1E0);
    OUTLINED_FUNCTION_1_4(v15);
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_2157FA9B8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E90, &qword_21580D578);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB0C0();
  sub_21580BDF0();
  if (!v1)
  {
    v7 = sub_21580BCB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E98, &qword_21580D580);
    sub_2157FB168(&unk_28119CC30, sub_2157FB114);
    OUTLINED_FUNCTION_3_2();
    sub_21580BCD0();
    v9 = OUTLINED_FUNCTION_2_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_2157FABB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_21580BD30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261507972657571 && a2 == 0xEA00000000006D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_21580BD30();

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

uint64_t sub_2157FAC88(char a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1 & 1);
  return sub_21580BDE0();
}

uint64_t sub_2157FACD0(char a1)
{
  if (a1)
  {
    return 0x7261507972657571;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_2157FAD04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73ED0, &qword_21580D758);
  OUTLINED_FUNCTION_2_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB4D4();
  sub_21580BE00();
  v19 = 0;
  sub_21580BCF0();
  if (!v3)
  {
    v17[1] = a3;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
    v15 = sub_2157FB528(&qword_27CA73ED8);
    OUTLINED_FUNCTION_1_4(v15);
  }

  return (*(v8 + 8))(v13, v6);
}