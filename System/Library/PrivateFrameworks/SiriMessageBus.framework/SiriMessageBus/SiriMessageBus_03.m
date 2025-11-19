uint64_t sub_2237A3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24[1] = a5;
  v24[2] = a7;
  v24[0] = a4;
  v24[4] = a12;
  v24[5] = a11;
  v24[3] = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v24 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_2237B540C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  sub_2237B4A4C();

  sub_2237B4A1C();
  v22 = sub_2237B412C();
  (*(*(v22 - 8) + 16))(v15, v24[0], v22);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_2237B4A6C();

  sub_2237B4A5C();

  sub_2237B4A0C();

  sub_2237B4A2C();

  return sub_2237B4A3C();
}

void sub_2237A3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v27;
  a20 = v28;
  v62 = v29;
  OUTLINED_FUNCTION_288(v30, v80);
  v60 = a23;
  v59 = a22;
  v58 = a21;
  v31 = sub_2237B5C7C();
  v32 = OUTLINED_FUNCTION_0_2(v31);
  v64 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_4();
  v66 = v23;
  v67 = v24;
  v68 = v26;
  v69 = v25;
  v70 = v23;
  v71 = v61;
  OUTLINED_FUNCTION_183();
  v72 = v42;
  v73 = v41;
  v74 = v62;
  v75 = v58;
  v76 = v59;
  v77 = v60;
  OUTLINED_FUNCTION_338();
  v78 = v43;
  v44 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  v63 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v45 = *(v64 + 16);
  v46 = OUTLINED_FUNCTION_107(&a9);
  v45(v46);
  v47 = OUTLINED_FUNCTION_65();
  v45(v47);
  v48 = *(v64 + 80);
  OUTLINED_FUNCTION_23_2();
  v49 = OUTLINED_FUNCTION_305();
  v50 = OUTLINED_FUNCTION_103(v49);
  (type metadata for Logger.Kind)(v50);
  v51 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v51);
  OUTLINED_FUNCTION_76((v64 + 16 + v35));
  OUTLINED_FUNCTION_84(v52);
  v53 = &v44[v64 + 16];
  *v53 = sub_2237A7FBC;
  v53[1] = &v65;
  OUTLINED_FUNCTION_5_3();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_223761F8C;
  *(v54 + 24) = v64 + 16;
  v80[0] = sub_223761F78;
  v80[1] = v54;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v79[2] = v55;
  v79[3] = &block_descriptor_311;
  _Block_copy(v79);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v63, v44);
  _Block_release(v44);
  OUTLINED_FUNCTION_351(&a14);
  v56 = OUTLINED_FUNCTION_145(&a11);
  (type metadata for Logger.Kind)(v56);
  v57 = OUTLINED_FUNCTION_145(&a13);
  (type metadata for Logger.Kind)(v57);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (0x237BA9C0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A3AD4()
{
  OUTLINED_FUNCTION_16_3();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2237B412C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_4();
  v15 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    v18 = v17(v1);
    MEMORY[0x28223BE20](v18);
    v19 = objc_allocWithZone(sub_2237B489C());
    OUTLINED_FUNCTION_34_0();
    v20 = sub_2237B47CC();
    if (v20)
    {
      v21 = v20;
      v22 = *(v2 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v20);

      (*(v12 + 8))(v1, v9);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v28 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v28, qword_28131B550);

      v29 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_90();

      if (OUTLINED_FUNCTION_57())
      {
        OUTLINED_FUNCTION_20();
        v40 = OUTLINED_FUNCTION_32();
        *v9 = 136315138;
        v30 = OUTLINED_FUNCTION_184();
        *(v9 + 4) = sub_223763694(v30, v31, v32);
        OUTLINED_FUNCTION_247();
        OUTLINED_FUNCTION_217(v33, v34, v35, v36);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      (*(v12 + 8))(v1, v9);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v23, qword_28131B550);

  v39 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_90();

  if (os_log_type_enabled(v39, v8))
  {
    OUTLINED_FUNCTION_25_0();
    v40 = OUTLINED_FUNCTION_99();
    *v15 = 136315394;
    v24 = OUTLINED_FUNCTION_293();
    v27 = sub_223763694(v24, v25, v26);
    OUTLINED_FUNCTION_45_0(v27);
    *(v15 + 14) = sub_223763694(v6, v4, &v40);
    OUTLINED_FUNCTION_257(&dword_22375F000, v39, v8, "No active session for assistantId: %s, cannot send voice command context for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A3EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v29[0] = a4;
  v29[1] = a5;
  v30 = a13;
  v31 = a14;
  v29[5] = a11;
  v29[3] = a7;
  v29[4] = a12;
  v29[2] = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v29 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v29 - v23;
  v25 = *MEMORY[0x277D5CDC8];
  v26 = sub_2237B540C();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  sub_2237B485C();

  sub_2237B480C();
  v27 = sub_2237B412C();
  (*(*(v27 - 8) + 16))(v20, v29[0], v27);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v27);
  sub_2237B487C();

  sub_2237B486C();

  sub_2237B47FC();

  sub_2237B481C();

  sub_2237B482C();
  if (v30)
  {
    [v30 BOOLValue];
  }

  sub_2237B484C();
  if (v31)
  {
    [v31 BOOLValue];
  }

  sub_2237B483C();
  if (a15)
  {
    [a15 BOOLValue];
  }

  sub_2237B47EC();
  if (a16)
  {
    [a16 BOOLValue];
  }

  sub_2237B47DC();
  if (a17)
  {
    [a17 BOOLValue];
  }

  return sub_2237B488C();
}

void sub_2237A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v24;
  OUTLINED_FUNCTION_104(v28, v29, v30, &a15);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_205(a24);
  OUTLINED_FUNCTION_167(a23);
  v39 = sub_2237B5C7C();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_4();
  v70[2] = v27;
  v70[3] = v38;
  v70[4] = v36;
  v70[5] = v34;
  OUTLINED_FUNCTION_206();
  v70[6] = v32;
  v70[7] = v50;
  OUTLINED_FUNCTION_114(&a9);
  v70[8] = v52;
  v70[9] = v51;
  OUTLINED_FUNCTION_110(&a15);
  OUTLINED_FUNCTION_115(&v72);
  v70[13] = v54;
  v70[14] = v53;
  v55 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  sub_2237B573C();
  OUTLINED_FUNCTION_134(*(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v56 = *(v42 + 16);
  v57 = OUTLINED_FUNCTION_107(&a11);
  v56(v57);
  v58 = OUTLINED_FUNCTION_65();
  v56(v58);
  v59 = *(v42 + 80);
  OUTLINED_FUNCTION_23_2();
  v60 = OUTLINED_FUNCTION_305();
  v61 = OUTLINED_FUNCTION_103(v60);
  (type metadata for Logger.Kind)(v61);
  v62 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v62);
  OUTLINED_FUNCTION_76((v42 + 16 + v44));
  OUTLINED_FUNCTION_84(v63);
  v64 = &v55[v42 + 16];
  *v64 = sub_2237A800C;
  v64[1] = v70;
  OUTLINED_FUNCTION_5_3();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_223761F8C;
  *(v65 + 24) = v42 + 16;
  v71[4] = sub_223761F78;
  v72 = v65;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v71[2] = v66;
  v71[3] = &block_descriptor_322;
  _Block_copy(v71);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v69, v55);
  _Block_release(v55);
  OUTLINED_FUNCTION_351(&a12);
  v67 = OUTLINED_FUNCTION_145(&a14);
  (type metadata for Logger.Kind)(v67);
  v68 = OUTLINED_FUNCTION_145(&a16);
  (type metadata for Logger.Kind)(v68);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v29;
  a20 = v30;
  OUTLINED_FUNCTION_104(v31, v32, v33, &a14);
  OUTLINED_FUNCTION_288(v34, &v80);
  v64 = a25;
  OUTLINED_FUNCTION_167(a23);
  v35 = sub_2237B5C7C();
  v36 = OUTLINED_FUNCTION_0_2(v35);
  v66 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_20_4();
  v68 = v25;
  v69 = v26;
  v70 = v28;
  v71 = v27;
  OUTLINED_FUNCTION_206();
  v72 = v25;
  v73 = v45;
  OUTLINED_FUNCTION_114(&a9);
  v74 = v47;
  v75 = v46;
  OUTLINED_FUNCTION_110(&a14);
  OUTLINED_FUNCTION_338();
  v76 = v49;
  v77 = v48;
  v78 = v64;
  v50 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  v65 = *(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v51 = *(v66 + 16);
  v52 = OUTLINED_FUNCTION_107(&a11);
  v51(v52);
  OUTLINED_FUNCTION_245();
  v53 = OUTLINED_FUNCTION_65();
  v51(v53);
  v54 = *(v66 + 80);
  OUTLINED_FUNCTION_23_2();
  v55 = OUTLINED_FUNCTION_305();
  v56 = OUTLINED_FUNCTION_103(v55);
  (type metadata for Logger.Kind)(v56);
  v57 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v57);
  OUTLINED_FUNCTION_76((v66 + 16 + v39));
  OUTLINED_FUNCTION_84(v58);
  v59 = &v50[v66 + 16];
  *v59 = sub_2237A8060;
  *(v59 + 1) = &v67;
  OUTLINED_FUNCTION_5_3();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_223761F8C;
  *(v60 + 24) = v66 + 16;
  v79[4] = sub_223761F78;
  v79[5] = v60;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v79[2] = v61;
  v79[3] = &block_descriptor_333;
  _Block_copy(v79);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v65, v50);
  _Block_release(v50);
  OUTLINED_FUNCTION_351(&a16);
  v62 = OUTLINED_FUNCTION_145(&a13);
  (type metadata for Logger.Kind)(v62);
  v63 = OUTLINED_FUNCTION_145(&a15);
  (type metadata for Logger.Kind)(v63);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (0x237BAB00)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A4B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  OUTLINED_FUNCTION_16_3();
  v27 = v25;
  v117 = v28;
  v118 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v111 = a25;
  v115 = a24;
  v116 = v38;
  v113 = a23;
  v114 = v39;
  v112 = a22;
  v40 = sub_2237B412C();
  v41 = OUTLINED_FUNCTION_0_2(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  v46 = *(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_151();
  sub_22376F45C();
  if (v47)
  {
    v109 = v43;
    v110 = v40;
    v48 = *(v43 + 16);
    v107[1] = v47;
    v49 = v48(v26, v47 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v40);
    MEMORY[0x28223BE20](v49);
    v107[0] = v35;
    v108 = v26;
    OUTLINED_FUNCTION_225(v107);
    v50 = objc_allocWithZone(sub_2237B471C());
    OUTLINED_FUNCTION_34_0();
    v51 = sub_2237B467C();
    if (!v51)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v76 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v76, qword_28131B550);

      v77 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_321();
      v78 = OUTLINED_FUNCTION_57();
      v80 = v109;
      v79 = v110;
      v81 = v108;
      if (v78)
      {
        v82 = OUTLINED_FUNCTION_20();
        v83 = OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_339(v83);
        *v82 = 136315138;
        v84 = OUTLINED_FUNCTION_13_3();
        *(v82 + 4) = sub_223763694(v84, v85, v86);
        OUTLINED_FUNCTION_247();
        _os_log_impl(v87, v88, v89, v90, v82, 0xCu);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10();
      }

      (*(v80 + 8))(v81, v79);
      goto LABEL_24;
    }

    v52 = v51;
    v53 = v31;
    v54 = *(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v55 = sub_2237654A4(v51);
    v56 = v108;
    if (v111)
    {
      MEMORY[0x28223BE20](v55);
      OUTLINED_FUNCTION_278();
      v57 = v107[0];
      *(v58 - 48) = v37;
      *(v58 - 40) = v57;
      *(v58 - 32) = v56;
      *(v58 - 24) = v33;
      *(v58 - 16) = v53;
      v59 = objc_allocWithZone(sub_2237B542C());
      OUTLINED_FUNCTION_34_0();
      v60 = sub_2237B541C();
      if (!v60)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v93 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v93, qword_28131B550);

        v94 = sub_2237B5C8C();
        sub_2237B5FFC();

        v95 = OUTLINED_FUNCTION_57();
        v96 = v109;
        if (v95)
        {
          v97 = OUTLINED_FUNCTION_20();
          v98 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_339(v98);
          *v97 = 136315138;
          *(v97 + 4) = sub_223763694(v37, v57, &v119);
          OUTLINED_FUNCTION_247();
          _os_log_impl(v99, v100, v101, v102, v97, 0xCu);
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_10();
        }

        v103 = *(v96 + 8);
        v104 = OUTLINED_FUNCTION_186();
        v106(v104, v105);
        goto LABEL_24;
      }

      v61 = v60;
      sub_2237654A4(v60);
    }

    v62 = *(v109 + 8);
    v63 = OUTLINED_FUNCTION_186();
    v64(v63);
LABEL_24:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v65 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v65, qword_28131B550);

  v118 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_321();

  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v66 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v66);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v67 = OUTLINED_FUNCTION_119();
    v70 = sub_223763694(v67, v68, v69);
    OUTLINED_FUNCTION_45_0(v70);
    v71 = OUTLINED_FUNCTION_234();
    *(v46 + 14) = sub_223763694(v71, v72, v73);
    OUTLINED_FUNCTION_152(&dword_22375F000, v74, v75, "No active session for assistantId: %s, cannot send voice command context for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = a4;
  v34 = a5;
  v32[1] = a2;
  v39 = a14;
  v40 = a13;
  v38 = a11;
  v36 = a7;
  v37 = a12;
  v35 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C68, &qword_2237B9248);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v32 - v24;
  v26 = *MEMORY[0x277D5CDC8];
  v27 = sub_2237B540C();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
  sub_2237B46CC();

  sub_2237B468C();
  v28 = sub_2237B412C();
  (*(*(v28 - 8) + 16))(v21, v33, v28);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v28);
  sub_2237B470C();

  sub_2237B46FC();

  sub_2237B46EC();

  sub_2237B46BC();

  sub_2237B46DC();

  sub_2237B46AC();
  v29 = *MEMORY[0x277D5D010];
  v30 = sub_2237B545C();
  (*(*(v30 - 8) + 104))(v17, v29, v30);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  return sub_2237B469C();
}

void sub_2237A53A0()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  OUTLINED_FUNCTION_187(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_168();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_113();
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 104))(v3, v19, v20);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  v2(v3);

  v25 = OUTLINED_FUNCTION_120();
  v5(v25);
  v26 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v26);
  (*(v27 + 16))(v1, v31, v26);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
  v32(v1);

  v33(v34, v0);
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A5538()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_174();
  v30 = sub_2237B5C7C();
  v7 = OUTLINED_FUNCTION_0_2(v30);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_344(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_336("announceNotificationHandlingStateUpdated(withAssistantId:toState:)");
  v32[4] = v6;
  v32[5] = v4;
  v16 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320();
  v17 = OUTLINED_FUNCTION_165(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v16)(v17);
  OUTLINED_FUNCTION_139();
  v16();
  v18 = (v11 + *(v0 + 80) + ((*(v0 + 80) + 16) & ~*(v0 + 80))) & ~*(v0 + 80);
  OUTLINED_FUNCTION_47_0();
  v19 = OUTLINED_FUNCTION_221();
  v20 = OUTLINED_FUNCTION_46_0(v19);
  v2(v20);
  v21 = OUTLINED_FUNCTION_67();
  v2(v21);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v19));
  *(v22 + 8) = v28;
  v23 = (v19 + v1);
  *v23 = sub_2237A80AC;
  v23[1] = v32;
  OUTLINED_FUNCTION_5_3();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_223761F8C;
  *(v24 + 24) = v19;
  v33[4] = sub_223761F78;
  v33[5] = v24;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v33[2] = v25;
  v33[3] = &block_descriptor_344;
  _Block_copy(v33);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v31, v29);
  _Block_release(v29);
  v26 = OUTLINED_FUNCTION_162();
  (type metadata for Logger.Kind)(v26);
  v27 = OUTLINED_FUNCTION_231();
  (type metadata for Logger.Kind)(v27);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A5864()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_174();
  v8 = sub_2237B412C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_4();
  v14 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_136();
  sub_22376F45C();
  if (v15)
  {
    OUTLINED_FUNCTION_241();
    v17 = v16(v2);
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_275();
    *(v18 - 32) = v1;
    *(v18 - 24) = v7;
    *(v18 - 16) = v2;
    *(v18 - 8) = v5;
    v19 = objc_allocWithZone(sub_2237B52DC());
    OUTLINED_FUNCTION_34_0();
    v20 = sub_2237B528C();
    if (v20)
    {
      v21 = v20;
      v22 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v20);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v36, qword_28131B550);

      v37 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_365())
      {
        v38 = OUTLINED_FUNCTION_20();
        v39 = OUTLINED_FUNCTION_19_0();
        v53 = v39;
        *v38 = 136315138;
        v40 = OUTLINED_FUNCTION_136();
        *(v38 + 4) = sub_223763694(v40, v41, v42);
        OUTLINED_FUNCTION_331();
        _os_log_impl(v43, v44, v45, v46, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_135();
      }
    }

    v47 = *(v11 + 8);
    v48 = OUTLINED_FUNCTION_19_3();
    v49(v48);
    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v23, qword_28131B550);

  v52 = sub_2237B5C8C();
  v24 = sub_2237B5FFC();

  if (os_log_type_enabled(v52, v24))
  {
    OUTLINED_FUNCTION_25_0();
    v25 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_325(v25);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v26 = OUTLINED_FUNCTION_136();
    v29 = sub_223763694(v26, v27, v28);
    OUTLINED_FUNCTION_45_0(v29);
    v30 = AFExternalNotificationRequestHandlerStateGetName();
    if (v30)
    {
      v31 = v30;
      v32 = sub_2237B5E2C();
      v34 = v33;

      v35 = sub_223763694(v32, v34, &v53);

      *(v14 + 14) = v35;
      OUTLINED_FUNCTION_257(&dword_22375F000, v52, v24, "No active session for assistantId: %s, cannot update announce notification handling state: %s");
      OUTLINED_FUNCTION_310();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_74();

LABEL_15:
      OUTLINED_FUNCTION_14_2();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_2237B52BC();

  sub_2237B52AC();
  v15 = sub_2237B412C();
  (*(*(v15 - 8) + 16))(v8, a4, v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_2237B52CC();
  return sub_2237B529C();
}

void sub_2237A5DAC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v6, qword_28131B550);
  v7 = a3;
  v8 = sub_2237B5C8C();
  v9 = sub_2237B5FEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a4 & 1;
    v12 = v7;
    _os_log_impl(&dword_22375F000, v8, v9, "Received MultiUserInfo command: %@, isRMVEnabled=%{BOOL}d", v10, 0x12u);
    sub_2237710FC(v11, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_13_1();
  }

  v29 = sub_2237B5C8C();
  v13 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_315(v13, v14, v15, v16, v17, v18, v19, v20, v27, v29))
  {
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_222(&dword_22375F000, v21, v22, "Ignoring MultiUserInfo on this device platform", v23, v24, v25, v26, v28, v30);
    OUTLINED_FUNCTION_74();
  }
}

void sub_2237A5FA4()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_262();
  v2 = sub_2237B563C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_29_1();
  v12 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v15 = OUTLINED_FUNCTION_81();
    v16(v15);
    v17 = *MEMORY[0x277D5D258];
    v18 = *(v5 + 104);
    v18(v10, v17, v2);
    v19 = sub_223766744();
    v20 = *(v5 + 8);
    v20(v10, v2);
    v21 = OUTLINED_FUNCTION_16_5();
    (v20)(v21);
    if ((v19 & 1) == 0)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v22 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v22, qword_28131B550);
      v23 = sub_2237B5C8C();
      v24 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_261(v24))
      {
        v41 = v24;
        v25 = OUTLINED_FUNCTION_20();
        v42 = OUTLINED_FUNCTION_19_0();
        *v25 = 136315138;
        v18(v1, v17, v2);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v26 = OUTLINED_FUNCTION_16_5();
        (v20)(v26);
        v27 = OUTLINED_FUNCTION_256();
        sub_223763694(v27, v28, v29);
        OUTLINED_FUNCTION_148();

        *(v25 + 4) = v1;
        _os_log_impl(&dword_22375F000, v23, v41, "Current session is not of type %s, cannot start speech request", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_8();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v30 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v30, qword_28131B550);

    v31 = sub_2237B5C8C();
    v32 = sub_2237B600C();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_25_0();
      v33 = OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_300(v33);
      OUTLINED_FUNCTION_212(4.8151e-34);
      v34 = OUTLINED_FUNCTION_120();
      v37 = sub_223763694(v34, v35, v36);
      OUTLINED_FUNCTION_45_0(v37);
      v38 = OUTLINED_FUNCTION_151();
      *(v12 + 14) = sub_223763694(v38, v39, v40);
      OUTLINED_FUNCTION_257(&dword_22375F000, v31, v32, "No active session for assistantId: %s cannot start a request for request id: %s");
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_74();
    }
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A6320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = sub_2237B551C();
  (*(*(v19 - 8) + 16))(v18, a2, v19);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  sub_2237B4CAC();

  sub_2237B4CBC();
  v20 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v21 = sub_2237B412C();
  (*(*(v21 - 8) + 16))(v14, a5 + v20, v21);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
  sub_2237B4CDC();
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v10, v22, v23);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v23);
  return sub_2237B4CCC();
}

void sub_2237A6598()
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v0, qword_28131B550);
  v17 = sub_2237B5C8C();
  v1 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_315(v1, v2, v3, v4, v5, v6, v7, v8, v15, v17))
  {
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_222(&dword_22375F000, v9, v10, "Operation not supported.", v11, v12, v13, v14, v16, v18);
    OUTLINED_FUNCTION_74();
  }
}

id RequestDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2237A67E4()
{
  v1 = *(*(sub_2237B563C() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2237A688C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_2237A68B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CC8, &qword_2237B9280);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2237A69B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D18, &qword_2237B92D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_2237A6AAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D30, &qword_2237B92F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D38, &unk_2237B92F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2237A6BE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CC8, &qword_2237B9280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_2237A6C5C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_2237A6C84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_150(a3, result);
  }

  return result;
}

char *sub_2237A6CA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_150(a3, result);
  }

  return result;
}

void *sub_2237A6CCC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2237A6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_2237A6D98()
{
  sub_2237B563C();
  sub_223766F90(&qword_28131A898, MEMORY[0x277D5D268]);
  return sub_2237B5E0C() & 1;
}

BOOL sub_2237A6E28(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_2237B563C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_2237A6EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2237B5E1C();

  [a3 setAceId_];
}

void sub_2237A6F60()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_2237A70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v134 = v26;
  OUTLINED_FUNCTION_174();
  v27 = sub_2237B5CCC();
  v28 = OUTLINED_FUNCTION_8_6(v27, &a16);
  v140 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v32);
  v129 = sub_2237B603C();
  v33 = OUTLINED_FUNCTION_4(v129);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v36);
  v37 = sub_2237B605C();
  v38 = OUTLINED_FUNCTION_8_6(v37, &a17);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v45 = v44 - v43;
  v46 = sub_2237B5D0C();
  v47 = OUTLINED_FUNCTION_8_6(v46, &a11);
  v136 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_4();
  v51 = sub_2237B5C7C();
  v52 = OUTLINED_FUNCTION_8_6(v51, &a13);
  v138 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_158(v58);
  OUTLINED_FUNCTION_204(v156);
  MEMORY[0x28223BE20](v59);
  v61 = v121 - v60;
  v156[0] = sub_2237B571C();
  v156[1] = MEMORY[0x277D60048];
  v130 = v156[0];
  v155[0] = v25;
  v62 = sub_223761B80();
  v135 = v61;
  v142 = v62;
  sub_2237B574C();
  v63 = qword_28131B3C0;
  v144 = v20;
  swift_unknownObjectRetain_n();
  if (v63 != -1)
  {
    swift_once();
  }

  v64 = qword_28131B5E0;
  v122 = qword_28131B5E0;

  LODWORD(v127) = AFDeviceSupportsSiriUOD();
  LODWORD(v126) = AFShouldRunAsrOnServerForUOD();
  v65 = type metadata accessor for UAFAssetSetObserverProvider();
  v66 = swift_allocObject();
  v147 = v65;
  v148 = &off_2836D3A40;
  *&v145 = v66;
  v67 = type metadata accessor for AssetInstrumentationLogger();
  v68 = OUTLINED_FUNCTION_369(v67);
  v121[3] = sub_223766240(0, &qword_28131A7D8, 0x277D85C78);
  sub_2237B5CDC();
  v124 = *MEMORY[0x277D85268];
  v69 = *(v40 + 104);
  v121[5] = v40 + 104;
  v123 = v69;
  v69(v45);
  *&v152 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_140();
  v121[2] = sub_223766F90(v70, v71);
  v121[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
  OUTLINED_FUNCTION_4_8();
  v131 = v72;
  v121[4] = sub_223766FD8(v73, &qword_27D0979A8, &qword_2237B8500);
  sub_2237B60FC();
  *(v68 + 16) = sub_2237B608C();
  v74 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  v75 = sub_2237B412C();
  OUTLINED_FUNCTION_2_1(v68 + v74, v76, v77, v75);
  *(v68 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = 0;
  *(v68 + 24) = v64;
  *(v68 + 32) = v127;
  *(v68 + 33) = v126;
  sub_2237709BC(&v145, v68 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetSetObserverProvider);
  sub_223781B5C(v155, &v145);
  v78 = objc_opt_self();
  v127 = [v78 sharedPreferences];
  v79 = [v78 sharedPreferences];
  OUTLINED_FUNCTION_297();
  v80 = sub_2237B58BC();
  v81 = OUTLINED_FUNCTION_369(v80);
  sub_2237B58CC();
  v82 = OUTLINED_FUNCTION_250();
  v126 = type metadata accessor for RequestDispatcher(v82);
  v83 = objc_allocWithZone(v126);
  v153 = v80;
  v154 = MEMORY[0x277D600A8];
  v125 = v81;
  *&v152 = v81;
  v84 = OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue;

  v128 = v21;
  sub_2237B5CFC();
  v123(v45, v124, v141);
  v151 = MEMORY[0x277D84F90];
  sub_2237B60FC();
  *&v83[v84] = sub_2237B608C();
  v85 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D28, &qword_2237B92E8);
  *&v83[v85] = sub_2237B5DBC();
  v86 = &v83[OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver];
  *(v86 + 4) = 0;
  *v86 = 0u;
  *(v86 + 1) = 0u;
  v87 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  v88 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_2_1(&v83[v87], v89, v90, v88);
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_serviceHelper] = v144;
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil] = v122;
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger] = v68;
  v91 = *&v83[v84];
  type metadata accessor for Broker();
  swift_allocObject();
  swift_unknownObjectRetain();

  v92 = sub_223781FF0(v91);
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_broker] = v92;
  type metadata accessor for MessagePublisher();
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_messagePublisher] = v93;
  type metadata accessor for SessionsManager();
  v94 = *&v83[v84];
  swift_unownedRetain();
  v95 = v94;
  OUTLINED_FUNCTION_370();
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager] = sub_2237B1F48(v94);
  v96 = v127;
  *&v83[OBJC_IVAR___SRDRequestDispatcherInternal_afPreferences] = v127;
  sub_223781B5C(&v152, &v83[OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils]);
  sub_223781B5C(&v145, &v83[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker]);
  v97 = v96;
  v83[OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled] = sub_2237B578C() & 1;
  v150.receiver = v83;
  v150.super_class = v126;
  v98 = objc_msgSendSuper2(&v150, sel_init);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  __swift_destroy_boxed_opaque_existential_0Tm(&v152);
  v99 = v98;
  v100 = v143;
  sub_2237B574C();
  v101 = *&v99[OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue];
  v141 = v99;
  v102 = v138;
  v103 = v133;
  v104 = v100;
  v105 = v139;
  (*(v138 + 16))(v133, v104, v139);
  sub_223781B5C(v155, &v152);
  v106 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v107 = (v132 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 47) & 0xFFFFFFFFFFFFFFF8;
  v109 = swift_allocObject();
  (*(v102 + 32))(v109 + v106, v103, v105);
  sub_2237709BC(&v152, v109 + v107);
  OUTLINED_FUNCTION_183();
  *(v109 + v108) = v110;
  *(v109 + ((v108 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
  v148 = sub_2237A92B4;
  v149 = v109;
  *&v145 = MEMORY[0x277D85DD0];
  *(&v145 + 1) = 1107296256;
  v146 = sub_2237639EC;
  v147 = &block_descriptor_458;
  v111 = _Block_copy(&v145);
  v112 = v101;
  v113 = v128;
  sub_2237B5CEC();
  v151 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5();
  sub_223766F90(v114, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223766FD8(&qword_28131A820, &unk_27D097C90, qword_2237B7940);
  OUTLINED_FUNCTION_287(&a14);
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v113, v103, v111);
  swift_unknownObjectRelease();
  _Block_release(v111);

  OUTLINED_FUNCTION_96(&a15);
  v116 = OUTLINED_FUNCTION_340();
  v117(v116);
  OUTLINED_FUNCTION_96(&a10);
  v118(v113, v137);
  v119 = *(v102 + 8);
  v120 = OUTLINED_FUNCTION_335();
  v119(v120);

  OUTLINED_FUNCTION_185(&a9);
  sub_2237B572C();
  swift_unknownObjectRelease();
  (v119)(v111, v105);
  __swift_destroy_boxed_opaque_existential_0Tm(v155);
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A7C94()
{
  v1 = OUTLINED_FUNCTION_60();
  v10 = *(v0 + 96);
  return sub_2237938F8(v1, v2, v3, v4, v5, v6, v7, v8, *(v0 + 80), *(v0 + 88));
}

uint64_t sub_2237A7CC8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_22379515C(*(v0 + 16));
}

uint64_t sub_2237A7CEC()
{
  v1 = OUTLINED_FUNCTION_273();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return v4(v1);
}

void sub_2237A7D98()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
  sub_223798040();
}

uint64_t sub_2237A7E14()
{
  v1 = OUTLINED_FUNCTION_60();
  v5 = *(v0 + 96);
  v4 = *(v0 + 80);
  return v2(v1);
}

uint64_t sub_2237A7E7C()
{
  v1 = OUTLINED_FUNCTION_60();
  v10 = v0[13];
  return sub_22379DB10(v1, v2, v3, v4, v5, v6, v7, v8, v0[10], v0[11], v0[12]);
}

uint64_t sub_2237A7F10()
{
  v1 = OUTLINED_FUNCTION_273();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return v4(v1);
}

void sub_2237A7FBC()
{
  OUTLINED_FUNCTION_88();
  v1 = *(v0 + 80);
  v5 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 120);
  v2 = *(v0 + 88);
  sub_2237A3AD4();
}

uint64_t sub_2237A8024()
{
  v1 = OUTLINED_FUNCTION_60();
  v6 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 96);
  return v2(v1);
}

void sub_2237A80AC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_2237A5864();
}

void sub_2237A80E0()
{
  sub_2237A8AD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RequestDispatcher.startTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
}

uint64_t dispatch thunk of RequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x308);

  return v2();
}

void sub_2237A8AD0()
{
  if (!qword_28131B0A0[0])
  {
    type metadata accessor for RequestDispatcher.SessionContext(255);
    v0 = sub_2237B60AC();
    if (!v1)
    {
      atomic_store(v0, qword_28131B0A0);
    }
  }
}

uint64_t sub_2237A8B28()
{
  result = sub_2237B56DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2237A8DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22379FB94();
}

uint64_t sub_2237A8DD0()
{
  OUTLINED_FUNCTION_330();
  v11 = *(v0 + 80);
  return sub_22379AE44(v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2237A8F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_223795E94();
}

uint64_t objectdestroy_424Tm()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2237A8FD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_223795840();
}

uint64_t objectdestroy_362Tm()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_2237A90E0()
{
  OUTLINED_FUNCTION_93();
  v6 = *(v0 + 80);
  v5 = *(v0 + 72);
  return v3(v1, v2);
}

unint64_t sub_2237A9230()
{
  result = qword_28131AE70;
  if (!qword_28131AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131AE70);
  }

  return result;
}

uint64_t sub_2237A9284()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2237A92B4()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_270(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_268();
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10);
  v12 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22378F2E8(v0 + v8, (v0 + v9), v11);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_0@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 232) = *(v2 + a1);
  v4 = *(*(v3 - 216) + 16);
  result = v1;
  v6 = *(v3 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a6;
  *(v6 - 304) = a5;
  *(v6 - 312) = a4;
  *(v6 - 320) = a3;

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_66()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_68(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  *(a5 - 256) = a4;
  *(v5 - 312) = a3;
  *(v5 - 320) = a2;
  *(v5 - 336) = a1;
}

void OUTLINED_FUNCTION_93()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_108()
{
  v1 = *(v0 - 312);
  *(v0 - 192) = *(v0 - 320);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_109()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

__n128 OUTLINED_FUNCTION_110@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = *(a1 - 256);
  result = *(v1 - 384);
  *(v1 - 184) = result;
  return result;
}

void OUTLINED_FUNCTION_116()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_125()
{
  v2 = *(v0 - 104);
}

void OUTLINED_FUNCTION_127()
{
  *(v2 - 152) = v0;
  *(v2 - 144) = v1;
  *(v2 - 184) = MEMORY[0x277D85DD0];
}

void OUTLINED_FUNCTION_135()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_149()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_152(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 96);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_2237B5C7C();
}

uint64_t OUTLINED_FUNCTION_165@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 208) = *(v2 + a1);
  v5 = *(v1 + 16);
  result = v3;
  v7 = *(v4 - 224);
  return result;
}

__n128 OUTLINED_FUNCTION_167@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  result = v2[1];
  v2[-24] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 192) = *(v3 + a1);
  v5 = *(v2 + 16);
  result = v1;
  v7 = *(v4 - 208);
  return result;
}

void OUTLINED_FUNCTION_173()
{

  JUMPOUT(0x223DEACD0);
}

uint64_t OUTLINED_FUNCTION_175()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 160) = a6;
  *(v9 - 152) = v8;
  *(v9 - 224) = a7;
  *(v9 - 216) = a8;
  *(v9 - 232) = a3;
  v11 = *(v9 + 24);
  *(v9 - 176) = *(v9 + 16);
  *(v9 - 168) = v11;

  return sub_2237B5CCC();
}

uint64_t OUTLINED_FUNCTION_178()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 240);

  return sub_2237B60FC();
}

void OUTLINED_FUNCTION_182()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
}

void OUTLINED_FUNCTION_187(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  *(v5 - 96) = *(v5 + 24);
  *(v5 - 88) = a5;
  *(v5 - 112) = a4;
  *(v5 - 104) = v6;
}

void OUTLINED_FUNCTION_189(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 176) = v1;
  *(v2 - 168) = v3;
}

void OUTLINED_FUNCTION_190(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 208) = v1;
  *(v2 - 200) = v3;
}

uint64_t OUTLINED_FUNCTION_195()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_196(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 344) = a3;
  *(v3 - 360) = a2;
  *(v3 - 328) = *(v3 + 16);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_198()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 288) = a8;
  *(v8 - 312) = a7;
  *(v8 - 328) = a6;
}

BOOL OUTLINED_FUNCTION_218()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_219()
{
  *(v2 - 192) = v1;
  *(v2 - 184) = v0;
  v4 = *(v2 - 168);
  v5 = *(v2 - 160);
  v6 = *(v2 - 176);
  v7 = *(v2 - 152);

  sub_22378B3F0();
}

uint64_t OUTLINED_FUNCTION_220()
{
  *(v1 - 288) = v0;

  return sub_2237B549C();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_222(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_2237B573C();
}

uint64_t OUTLINED_FUNCTION_224()
{
  *(v5 - 144) = v2;
  *(v5 - 136) = v1;
  *(v5 - 128) = v0;
  *(v5 - 120) = v4;
  *(v5 - 112) = v3;
  *(v5 - 104) = *(v5 - 180);
  return 0;
}

uint64_t OUTLINED_FUNCTION_237(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 - 180) = a5;

  return sub_2237B563C();
}

void OUTLINED_FUNCTION_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 312) = a7;
  *(v7 - 320) = a6;
  *(v7 - 328) = a5;
}

uint64_t OUTLINED_FUNCTION_252()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_253()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_260()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_280()
{

  return sub_2237B58AC();
}

uint64_t OUTLINED_FUNCTION_282()
{
}

uint64_t OUTLINED_FUNCTION_305()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_308(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_309()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_310()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_313()
{
  *(v2 - 176) = *(v2 - 256);
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;

  return sub_223761B80();
}

uint64_t OUTLINED_FUNCTION_320()
{

  return sub_2237B573C();
}

uint64_t OUTLINED_FUNCTION_326()
{
  v2 = *(*(v1 - 200) + 8);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

void OUTLINED_FUNCTION_336(uint64_t a1@<X8>)
{
  *(v3 - 176) = v2;
  *(v3 - 168) = v1;
  *(v3 - 248) = (a1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_354(uint64_t result)
{
  *(result + 16) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_359(float a1)
{
  *v2 = a1;

  return sub_223763694(v3, v1, (v4 - 144));
}

void OUTLINED_FUNCTION_360(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_361()
{
}

void OUTLINED_FUNCTION_362()
{
  v3 = *(v1 - 232);

  dispatch_sync(v3, v0);
}

uint64_t OUTLINED_FUNCTION_363()
{

  return sub_2237B573C();
}

uint64_t OUTLINED_FUNCTION_364()
{

  return sub_2237B573C();
}

BOOL OUTLINED_FUNCTION_365()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_366()
{
  v2 = *(v0 - 176);
}

BOOL OUTLINED_FUNCTION_368()
{
  v3 = *(v1 - 96);

  return os_log_type_enabled(v3, v0);
}

uint64_t OUTLINED_FUNCTION_369(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_370()
{
}

uint64_t OUTLINED_FUNCTION_371(uint64_t a1, unint64_t a2)
{

  return sub_223763694(a1, a2, (v2 - 136));
}

uint64_t sub_2237AA494(char a1, char a2)
{
  v3 = sub_22376AC64(a1);
  v5 = v4;
  if (v3 == sub_22376AC64(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2237B629C();
  }

  return v8 & 1;
}

uint64_t sub_2237AA520()
{
  result = sub_2237B412C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_2237B40DC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2237B551C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2237AA64C(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = v2;
  *(v3 + 72) = a2;
  *(v3 + 56) = a1;
  v4 = sub_2237B42CC();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v8 = sub_2237B429C();
  *(v3 + 128) = v8;
  v9 = *(v8 - 8);
  *(v3 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v11 = sub_2237B42AC();
  *(v3 + 160) = v11;
  v12 = *(v11 - 8);
  *(v3 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v14 = *(*(sub_2237B412C() - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v15 = sub_2237B592C();
  *(v3 + 200) = v15;
  v16 = *(v15 - 8);
  *(v3 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v18 = type metadata accessor for IntelligenceFlowProxyError(0);
  *(v3 + 232) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = *(v2 + 16);
  *(v3 + 272) = *(v2 + 8);
  *(v3 + 280) = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2237AA91C, 0, 0);
}

uint64_t sub_2237AA91C()
{
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_2237B5C9C();
  v0[37] = __swift_project_value_buffer(v1, qword_27D0999E8);
  v2 = sub_2237B5C8C();
  v3 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v3))
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_28_2(4.8752e-34, v19);
    OUTLINED_FUNCTION_73(v7);
    v8 = OUTLINED_FUNCTION_233();
    v11 = sub_223763694(v8, v9, v10);

    *(v6 + 14) = v11;
    OUTLINED_FUNCTION_71_0(&dword_22375F000, v12, v13, "%{public}s, requestId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v14 = OUTLINED_FUNCTION_15_6(&unk_2237B9380);
  v0[38] = v14;
  *v14 = v0;
  v14[1] = sub_2237AAAB4;
  v15 = v0[7];
  v16 = OUTLINED_FUNCTION_30_2(v0[30]);

  return v18(v16);
}

uint64_t sub_2237AAAB4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  v6 = *(v5 + 304);
  *v4 = *v1;
  v3[39] = v7;

  if (v0)
  {
    sub_2237B1B44(v3[30], v3[31]);
  }

  else
  {
    v8 = v3[8];
    v3[40] = v8[6];
    v3[41] = v8[4];
    v3[42] = v8[5];
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2237AABDC()
{
  v52 = v0;
  v1 = v0[42];
  v34 = v0[41];
  v2 = v0[40];
  v41 = v0[39];
  v48 = v0[37];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[28];
  v6 = v0[26];
  v35 = v0[25];
  v36 = v0[27];
  v7 = v0[24];
  v42 = v0[21];
  v43 = v0[20];
  v44 = v0[22];
  v33 = v0[19];
  v8 = v0[17];
  v37 = v0[23];
  v38 = v0[18];
  v49 = v0[16];
  v39 = v0[15];
  v45 = v0[14];
  v47 = v0[13];
  v40 = v0[11];
  v46 = v0[10];
  sub_2237B595C();

  sub_22377A88C(v7, v3, v4, v34, v1, v2, 2, v5);
  sub_2237B428C();
  (*(v8 + 104))(v33, *MEMORY[0x277D1C8B0], v49);
  v9 = *(v6 + 16);
  v9(v36, v5, v35);

  sub_2237B424C();
  (*(v8 + 16))(v38, v33, v49);
  MEMORY[0x223DE8E80](v38);
  sub_2237B423C();
  v9(v39, v36, v35);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v35);
  sub_2237B421C();
  v10 = *(v6 + 8);
  v0[43] = v10;
  v0[44] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v36, v35);
  (*(v8 + 8))(v33, v49);
  (*(v42 + 104))(v37, *MEMORY[0x277D1C6E8], v43);
  sub_2237B595C();
  (*(v42 + 16))(v44, v37, v43);

  sub_2237B42BC();
  v12 = (v40 + 16);
  v11 = *(v40 + 16);
  v11(v47, v45, v46);
  v13 = sub_2237B5C8C();
  v14 = sub_2237B5FEC();
  v15 = OUTLINED_FUNCTION_261(v14);
  v16 = v0[13];
  if (v15)
  {
    v17 = v0[11];
    v18 = v0[12];
    v19 = v0[10];
    OUTLINED_FUNCTION_20();
    v50 = OUTLINED_FUNCTION_32();
    v51 = v50;
    *v37 = 136315138;
    v20 = OUTLINED_FUNCTION_233();
    (v11)(v20);
    sub_2237B5E3C();
    v21 = OUTLINED_FUNCTION_44_1();
    v12(v21);
    v22 = sub_223763694(v18, v11, &v51);

    *(v37 + 4) = v22;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v23, v24, "IntelligenceFlowProxy: sending message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v25 = v0[10];
    v26 = v0[11];

    v12 = *(v26 + 8);
    (v12)(v16, v25);
  }

  v0[45] = v12;
  v27 = v0[39];
  sub_2237B596C();
  v28 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v29 = *(MEMORY[0x277D46B08] + 4);
  v30 = swift_task_alloc();
  v0[46] = v30;
  *v30 = v0;
  v30[1] = sub_2237AB148;
  v31 = OUTLINED_FUNCTION_17_5(v0[14]);

  return MEMORY[0x2821A9EF8](v31);
}

uint64_t sub_2237AB034()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  sub_2237B1B44(v0[31], v0[9]);

  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_7_6();

  return v5();
}

uint64_t sub_2237AB148()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_11_7();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2237AB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_0();
  v29 = v28[45];
  v49 = v28[43];
  v50 = v28[44];
  v30 = v28[39];
  v51 = v28[34];
  v52 = v28[33];
  v53 = v28[35];
  v54 = v28[31];
  v55 = v28[36];
  v31 = v28[28];
  v56 = v28[30];
  v57 = v28[27];
  v32 = v28[25];
  v33 = v28[23];
  v58 = v28[24];
  v59 = v28[22];
  v34 = v28[20];
  v35 = v28[21];
  v60 = v28[19];
  v61 = v28[18];
  v36 = v28[14];
  v62 = v28[15];
  v63 = v28[13];
  v64 = v28[12];
  v37 = v28[10];
  v38 = v28[11];

  v39 = OUTLINED_FUNCTION_57_1();
  v29(v39);
  (*(v35 + 8))(v33, v34);
  v49(v31, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 2);

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_65_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, a26, a27, a28);
}

uint64_t sub_2237AB3D0()
{
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v1 = *(v0 + 312);
  v20 = *(v0 + 280);
  v21 = *(v0 + 288);
  v18 = *(v0 + 272);
  v19 = *(v0 + 264);
  v2 = *(v0 + 232);
  v15 = *(v0 + 224);
  v13 = *(v0 + 360);
  v14 = *(v0 + 200);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  **(v0 + 72) = *(v0 + 376);
  OUTLINED_FUNCTION_57_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v9, v10);
  OUTLINED_FUNCTION_57_1();
  swift_willThrowTypedImpl();

  v13(v6, v7);
  (*(v4 + 8))(v3, v5);
  v16(v15, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_7_6();

  return v11();
}

uint64_t sub_2237AB5AC(uint64_t a1, uint64_t a2)
{
  v3[58] = v2;
  v3[59] = a2;
  v3[57] = a1;
  v4 = sub_2237B42CC();
  v3[60] = v4;
  v5 = *(v4 - 8);
  v3[61] = v5;
  v6 = *(v5 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0) - 8) + 64) + 15;
  v3[67] = swift_task_alloc();
  v8 = sub_2237B429C();
  v3[68] = v8;
  v9 = *(v8 - 8);
  v3[69] = v9;
  v10 = *(v9 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v11 = sub_2237B42AC();
  v3[72] = v11;
  v12 = *(v11 - 8);
  v3[73] = v12;
  v13 = *(v12 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v14 = *(*(sub_2237B412C() - 8) + 64) + 15;
  v3[77] = swift_task_alloc();
  v15 = sub_2237B592C();
  v3[78] = v15;
  v16 = *(v15 - 8);
  v3[79] = v16;
  v17 = *(v16 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v18 = type metadata accessor for IntelligenceFlowProxyError(0);
  v3[82] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v20 = v2[3];
  v3[85] = v2[2];
  v3[86] = v20;
  memcpy(v3 + 2, v2, 0x48uLL);

  return MEMORY[0x2822009F8](sub_2237AB8A0, 0, 0);
}

uint64_t sub_2237AB8A0()
{
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_2237B5C9C();
  v0[87] = __swift_project_value_buffer(v1, qword_27D0999E8);
  v2 = sub_2237B5C8C();
  v3 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v3))
  {
    v4 = v0[86];
    v5 = v0[85];
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_28_2(4.8752e-34, v19);
    OUTLINED_FUNCTION_73(v7);
    v8 = OUTLINED_FUNCTION_233();
    v11 = sub_223763694(v8, v9, v10);

    *(v6 + 14) = v11;
    OUTLINED_FUNCTION_71_0(&dword_22375F000, v12, v13, "%{public}s, requestId: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v14 = OUTLINED_FUNCTION_15_6(&unk_2237B9380);
  v0[88] = v14;
  *v14 = v0;
  v14[1] = sub_2237ABA3C;
  v15 = v0[57];
  v16 = OUTLINED_FUNCTION_30_2(v0[83]);

  return v18(v16);
}

uint64_t sub_2237ABA3C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  v6 = *(v5 + 704);
  *v4 = *v1;
  v3[89] = v7;

  if (v0)
  {
    sub_2237B1B44(v3[83], v3[84]);
  }

  else
  {
    v8 = v3[58];
    v3[90] = v8[8];
    v3[91] = v8[4];
    v3[92] = v8[5];
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2237ABB68()
{
  v55 = v0;
  v1 = v0[92];
  v38 = v0[91];
  v36 = v0[90];
  v46 = v0[89];
  v2 = v0[86];
  v3 = v0[85];
  v52 = v0[87];
  v4 = v0[81];
  v5 = v0[79];
  v39 = v0[78];
  v40 = v0[80];
  v6 = v0[77];
  v45 = v0[73];
  v47 = v0[72];
  v48 = v0[75];
  v7 = v0[71];
  v41 = v0[76];
  v42 = v0[70];
  v8 = v0[69];
  v37 = v0[68];
  v43 = v0[67];
  v49 = v0[66];
  v51 = v0[65];
  v44 = v0[61];
  v50 = v0[60];
  sub_2237B595C();

  sub_22377A88C(v6, v3, v2, v38, v1, v36, 2, v4);
  sub_2237B427C();
  (*(v8 + 104))(v7, *MEMORY[0x277D1C8A0], v37);
  v9 = *(v5 + 16);
  v0[93] = v9;
  v0[94] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v4, v39);

  sub_2237B424C();
  (*(v8 + 16))(v42, v7, v37);
  MEMORY[0x223DE8E80](v42);
  sub_2237B423C();
  v9(v43, v40, v39);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v39);
  sub_2237B421C();
  v10 = *(v5 + 8);
  v0[95] = v10;
  v0[96] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v40, v39);
  (*(v8 + 8))(v7, v37);
  v11 = *MEMORY[0x277D1C6E8];
  v12 = *(v45 + 104);
  v0[97] = v12;
  v0[98] = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v41, v11, v47);
  sub_2237B595C();
  v13 = *(v45 + 16);
  v0[99] = v13;
  v0[100] = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v48, v41, v47);

  sub_2237B42BC();
  v15 = (v44 + 16);
  v14 = *(v44 + 16);
  v0[101] = v14;
  v0[102] = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v51, v49, v50);
  v16 = sub_2237B5C8C();
  v17 = sub_2237B5FEC();
  v18 = OUTLINED_FUNCTION_261(v17);
  v19 = v0[65];
  if (v18)
  {
    v20 = v0[64];
    v22 = v0[60];
    v21 = v0[61];
    OUTLINED_FUNCTION_20();
    v53 = OUTLINED_FUNCTION_32();
    v54 = v53;
    *v39 = 136315138;
    v23 = OUTLINED_FUNCTION_233();
    (v14)(v23);
    sub_2237B5E3C();
    v24 = OUTLINED_FUNCTION_44_1();
    v15(v24);
    v25 = sub_223763694(v20, v14, &v54);

    *(v39 + 4) = v25;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v26, v27, "IntelligenceFlowProxy: sending UserTurnStarted message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v28 = v0[60];
    v29 = v0[61];

    v15 = *(v29 + 8);
    (v15)(v19, v28);
  }

  v0[103] = v15;
  v30 = v0[89];
  sub_2237B596C();
  v31 = v0[51];
  __swift_project_boxed_opaque_existential_1(v0 + 47, v0[50]);
  v32 = *(MEMORY[0x277D46B08] + 4);
  v33 = swift_task_alloc();
  v0[104] = v33;
  *v33 = v0;
  v33[1] = sub_2237AC124;
  v34 = OUTLINED_FUNCTION_17_5(v0[66]);

  return MEMORY[0x2821A9EF8](v34);
}

uint64_t sub_2237AC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  sub_2237B1B44(v18[84], v18[59]);
  OUTLINED_FUNCTION_75(v18 + 11);
  sub_2237B1BA8((v18 + 11));
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2237AC124()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_7();
  *v4 = v3;
  v6 = *(v5 + 832);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[105] = v0;

  if (!v0)
  {
    v9 = v3[58];
    v3[106] = *(v9 + 48);
    v3[107] = *(v9 + 56);
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2237AC234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_67_0();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v39 = v36[107];
  v74 = v36[106];
  v87 = v36[101];
  v89 = v36[102];
  v76 = v36[97];
  v40 = v36[94];
  v41 = v36[93];
  v77 = v36[89];
  v78 = v36[98];
  v85 = v36[100];
  v86 = v36[87];
  v83 = v36[99];
  v84 = v36[85];
  v42 = v36[81];
  v43 = v36[80];
  v44 = v36[78];
  v45 = v36[77];
  v75 = v36[75];
  v46 = v36[74];
  v47 = v36[72];
  v79 = v36[63];
  v80 = v36[86];
  v81 = v36[62];
  v82 = v36[60];
  __swift_destroy_boxed_opaque_existential_0Tm(v36 + 47);
  v41(v43, v42, v44);

  sub_22377AF60(v74, v39, v43);
  v76(v46, *MEMORY[0x277D1C890], v47);
  sub_2237B595C();
  v83(v75, v46, v47);

  sub_2237B42BC();
  v87(v81, v79, v82);
  v48 = sub_2237B5C8C();
  v49 = sub_2237B5FEC();
  v50 = OUTLINED_FUNCTION_261(v49);
  v51 = v36[103];
  if (v50)
  {
    v52 = v36[101];
    v53 = v36[64];
    v54 = v36[62];
    v88 = v36[102];
    v90 = v36[61];
    v55 = v36[60];
    OUTLINED_FUNCTION_20();
    v56 = OUTLINED_FUNCTION_32();
    a25 = v56;
    *v79 = 136315138;
    v57 = OUTLINED_FUNCTION_45_1();
    v52(v57);
    v58 = sub_2237B5E3C();
    v60 = v59;
    v51(v54, v55);
    v61 = sub_223763694(v58, v60, &a25);

    *(v79 + 4) = v61;
    OUTLINED_FUNCTION_17_3(&dword_22375F000, v62, v63, "IntelligenceFlowProxy: sending Request message to IF: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v65 = v36[61];
    v64 = v36[62];
    v66 = v36[60];

    v51(v64, v66);
  }

  v67 = v36[89];
  sub_2237B596C();
  v68 = v36[56];
  __swift_project_boxed_opaque_existential_1(v36 + 52, v36[55]);
  v69 = *(MEMORY[0x277D46B08] + 4);
  v70 = swift_task_alloc();
  v36[108] = v70;
  *v70 = v36;
  v70[1] = sub_2237AC6EC;
  OUTLINED_FUNCTION_17_5(v36[63]);
  OUTLINED_FUNCTION_65_0();

  return MEMORY[0x2821A9EF8](v71);
}

uint64_t sub_2237AC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  v44 = *(v18 + 760);
  v45 = *(v18 + 768);
  v19 = *(v18 + 712);
  v20 = *(v18 + 656);
  v43 = *(v18 + 648);
  v41 = *(v18 + 824);
  v42 = *(v18 + 624);
  v21 = *(v18 + 608);
  v22 = *(v18 + 584);
  v23 = *(v18 + 576);
  v24 = *(v18 + 528);
  v26 = *(v18 + 480);
  v25 = *(v18 + 488);
  **(v18 + 472) = *(v18 + 840);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v27, v28);
  swift_willThrowTypedImpl();

  v41(v24, v26);
  v29 = *(v22 + 8);
  v30 = OUTLINED_FUNCTION_45_1();
  v31(v30);
  v44(v43, v42);
  __swift_destroy_boxed_opaque_existential_0Tm((v18 + 376));
  OUTLINED_FUNCTION_75((v18 + 160));
  sub_2237B1BA8(v18 + 160);
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v41, v42, v43, v44, v45, a16, a17, a18);
}

uint64_t sub_2237AC6EC()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_11_7();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 872) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2237AC7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_0();
  v29 = v28[103];
  v51 = v28[95];
  v52 = v28[96];
  v30 = v28[89];
  v53 = v28[84];
  v54 = v28[83];
  v49 = v28[78];
  v50 = v28[81];
  v55 = v28[80];
  v56 = v28[77];
  v31 = v28[76];
  v32 = v28[74];
  v33 = v28[73];
  v34 = v28[72];
  v57 = v28[75];
  v58 = v28[71];
  v59 = v28[70];
  v60 = v28[67];
  v35 = v28[66];
  v36 = v28[63];
  v62 = v28[65];
  v63 = v28[64];
  v61 = v36;
  v37 = v28[61];
  v64 = v28[62];
  v38 = v28[60];

  v29(v36, v38);
  v39 = *(v33 + 8);
  v39(v32, v34);
  v29(v35, v38);
  v39(v31, v34);
  v51(v50, v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v28 + 52);
  OUTLINED_FUNCTION_75(v28 + 38);
  sub_2237B1BA8((v28 + 38));

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_65_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, a26, a27, a28);
}

uint64_t sub_2237AC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_68_0();
  v19 = *(v18 + 824);
  v44 = *(v18 + 760);
  v45 = *(v18 + 768);
  v20 = *(v18 + 712);
  v21 = *(v18 + 656);
  v42 = *(v18 + 624);
  v43 = *(v18 + 648);
  v39 = *(v18 + 592);
  v22 = *(v18 + 584);
  v23 = *(v18 + 576);
  v40 = *(v18 + 528);
  v41 = *(v18 + 608);
  v24 = *(v18 + 504);
  v25 = *(v18 + 480);
  v26 = *(v18 + 488);
  **(v18 + 472) = *(v18 + 872);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v27, v28);
  swift_willThrowTypedImpl();

  v19(v24, v25);
  v29 = *(v22 + 8);
  v29(v39, v23);
  v19(v40, v25);
  v29(v41, v23);
  v44(v43, v42);
  __swift_destroy_boxed_opaque_existential_0Tm((v18 + 416));
  OUTLINED_FUNCTION_75((v18 + 232));
  sub_2237B1BA8(v18 + 232);
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_66_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, a16, a17, a18);
}

uint64_t sub_2237ACBC0(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = a1;
  v3 = sub_2237B59CC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237ACC98, v1, 0);
}

uint64_t sub_2237ACC98()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v3 = qword_27D0999D0;
  v4 = sub_2237B59EC();
  v5 = sub_2237B1BFC(&unk_27D097E60, MEMORY[0x277D46B48]);
  v6 = *(MEMORY[0x277D46B68] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_2237ACDA4;
  v12 = v0[7];

  return MEMORY[0x2821A9F50](v1 + v3, v12, v4, v5, v7, v8, v9, v10);
}

uint64_t sub_2237ACDA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *(v4 + 72);
  *v6 = *v2;

  v8 = *(v4 + 16);
  if (v1)
  {
    v9 = sub_2237ACF4C;
  }

  else
  {
    *(v5 + 80) = a1;
    v9 = sub_2237ACED4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2237ACED4()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4(v5);
}

uint64_t sub_2237ACF4C()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = *(v4 + 32);
  v8 = OUTLINED_FUNCTION_21_4();
  v7(v8);
  (v7)(v3, v2, v5);
  (*(v4 + 16))(v6, v3, v5);
  type metadata accessor for IntelligenceFlowProxyError(0);
  OUTLINED_FUNCTION_45_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v9, v10);
  OUTLINED_FUNCTION_45_1();
  swift_willThrowTypedImpl();
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_7_6();

  return v11();
}

uint64_t sub_2237AD08C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v16 = a1[2];
  v17 = *(a1 + 6);
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v4 = sub_2237B5C9C();
  __swift_project_value_buffer(v4, qword_27D0999E8);
  v5 = sub_2237B5C8C();
  v6 = sub_2237B5FEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_223763694(0xD000000000000010, 0x80000002237BB410, &v13);
    _os_log_impl(&dword_22375F000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x223DEB690](v8, -1, -1);
    MEMORY[0x223DEB690](v7, -1, -1);
  }

  v9 = *(v2 + 136);
  v10 = swift_allocObject();
  v11 = v15;
  *(v10 + 16) = v14;
  *(v10 + 32) = v11;
  *(v10 + 48) = v16;
  *(v10 + 64) = v17;
  *(v10 + 72) = v2;

  sub_2237B587C();
}

uint64_t sub_2237AD254(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v3 = sub_2237B5C9C();
  __swift_project_value_buffer(v3, qword_27D0999E8);
  v4 = sub_2237B5C8C();
  v5 = sub_2237B5FEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_223763694(0xD000000000000010, 0x80000002237BB410, &v11);
    _os_log_impl(&dword_22375F000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223DEB690](v7, -1, -1);
    MEMORY[0x223DEB690](v6, -1, -1);
  }

  v8 = *(v2 + 136);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __dst, 0x48uLL);
  *(v9 + 88) = v2;

  sub_2237B587C();
}

uint64_t sub_2237AD410(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for IntelligenceFlowProxyError(0);
  v2[11] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237AD4B0, 0, 0);
}

uint64_t sub_2237AD4B0()
{
  OUTLINED_FUNCTION_6_1();
  sub_2237B1CDC(v0[9], (v0 + 2));
  v1 = OUTLINED_FUNCTION_15_6(&unk_2237B93A0);
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2237AD550;
  v2 = v0[12];
  v3 = v0[9];
  v4 = OUTLINED_FUNCTION_30_2(v0[10]);

  return v6(v4);
}

uint64_t sub_2237AD550()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    sub_2237B1B44(v7, v6);
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = *(v4 + 8);

    return v11();
  }
}

uint64_t sub_2237AD6C4()
{
  OUTLINED_FUNCTION_11_1();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v4, v5);
  OUTLINED_FUNCTION_69_0();
  sub_2237B1B44(v2, v6);

  OUTLINED_FUNCTION_5_1();

  return v7();
}

uint64_t sub_2237AD76C(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = type metadata accessor for IntelligenceFlowProxyError(0);
  v2[13] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2237AD80C, 0, 0);
}

uint64_t sub_2237AD80C()
{
  OUTLINED_FUNCTION_6_1();
  sub_2237B1AE8(v0[11], (v0 + 2));
  v1 = OUTLINED_FUNCTION_15_6(&unk_2237B9378);
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2237AD8AC;
  v2 = v0[14];
  v3 = v0[11];
  v4 = OUTLINED_FUNCTION_30_2(v0[12]);

  return v6(v4);
}

uint64_t sub_2237AD8AC()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    sub_2237B1B44(v7, v6);
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = *(v4 + 8);

    return v11();
  }
}

uint64_t sub_2237ADA20()
{
  OUTLINED_FUNCTION_11_1();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  OUTLINED_FUNCTION_0_7();
  sub_2237B1BFC(v4, v5);
  OUTLINED_FUNCTION_69_0();
  sub_2237B1B44(v2, v6);

  OUTLINED_FUNCTION_5_1();

  return v7();
}

id SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = [v2 initWithUnderlyingRequestDispatcher:sub_2237B628C() requestDispatcherServiceHelper:v0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  return v3;
}

id SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)(uint64_t *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v5 = &v2[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v6 = sub_2237B571C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2237B570C();
  v10 = MEMORY[0x277D60048];
  v5[3] = v6;
  v5[4] = v10;
  *v5 = v9;
  v11 = &v2[OBJC_IVAR___SRDRequestDispatcher_reportingProvider];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a2;
  sub_22376AEC8(a1, v17);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097DC0, &qword_2237B9350);
  swift_dynamicCast();
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher] = v16[1];
  v12 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  swift_allocObject();
  v13 = sub_223786A3C();
  v17[3] = v12;
  v17[4] = &off_2836D22B0;
  v17[0] = v13;
  swift_beginAccess();
  sub_2237ADE08(v17, v11);
  swift_endAccess();
  v16[0].receiver = v2;
  v16[0].super_class = SRDRequestDispatcher;
  v14 = [(objc_super *)v16 init];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v14;
}

uint64_t sub_2237ADE08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097DD0, &qword_2237B9358);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:)()
{
  OUTLINED_FUNCTION_249();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestDispatcherServiceHelper_];
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v4 = &v1[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v5 = sub_2237B571C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2237B570C();
  v9 = MEMORY[0x277D60048];
  v4[3] = v5;
  v4[4] = v9;
  *v4 = v8;
  OUTLINED_FUNCTION_60_0(OBJC_IVAR___SRDRequestDispatcher_reportingProvider);
  *&v1[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a1;
  v10 = objc_allocWithZone(type metadata accessor for RequestDispatcher(0));
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRetain_n();
  v13 = sub_2237B570C();
  sub_2237A70AC(a1, MEMORY[0x277D84F90], v13, 1, v14, v15, v16, v17, v26.receiver, v26.super_class, v27, v28, v29, v30, v31[0], v31[1], v31[2], v32, v33, v34);
  v19 = v18;
  swift_getObjectType();
  v20 = *((*MEMORY[0x277D85000] & *v10) + 0x30);
  v21 = *((*MEMORY[0x277D85000] & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  v22 = &v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher];
  *v22 = v19;
  *(v22 + 1) = &protocol witness table for RequestDispatcher;
  v23 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  v24 = swift_allocObject();
  v32 = v23;
  v33 = &off_2836D22B0;
  v31[0] = sub_223786A3C();
  OUTLINED_FUNCTION_70();
  sub_2237ADE08(v31, v4);
  swift_endAccess();
  v26.receiver = v2;
  v26.super_class = SRDRequestDispatcher;
  objc_msgSendSuper2(&v26, sel_init);
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v24;
}

id SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v2 = sub_2237B5F1C();

  v3 = [v1 initWithRequestDispatcherServiceHelper:v0 bridgeConnectionListeners:v2];
  swift_unknownObjectRelease();

  return v3;
}

uint64_t SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy] = 0;
  v6 = &v2[OBJC_IVAR___SRDRequestDispatcher_featureChecker];
  v7 = sub_2237B571C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2237B570C();
  v11 = MEMORY[0x277D60048];
  v6[3] = v7;
  v6[4] = v11;
  *v6 = v10;
  OUTLINED_FUNCTION_60_0(OBJC_IVAR___SRDRequestDispatcher_reportingProvider);
  *&v2[OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper] = a1;
  v12 = objc_allocWithZone(type metadata accessor for RequestDispatcher(0));
  v13 = *(v7 + 48);
  v14 = *(v7 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRetain_n();
  v15 = sub_2237B570C();
  sub_2237A70AC(a1, a2, v15, 1, v16, v17, v18, v19, v28.receiver, v28.super_class, v29, v30, v31, v32, v33[0], v33[1], v33[2], v34, v35, v36);
  v21 = v20;
  swift_getObjectType();
  v22 = *((*MEMORY[0x277D85000] & *v12) + 0x30);
  v23 = *((*MEMORY[0x277D85000] & *v12) + 0x34);
  swift_deallocPartialClassInstance();
  v24 = &v3[OBJC_IVAR___SRDRequestDispatcher_requestDispatcher];
  *v24 = v21;
  *(v24 + 1) = &protocol witness table for RequestDispatcher;
  v25 = type metadata accessor for ReportingProvider();
  OUTLINED_FUNCTION_53_1();
  v26 = swift_allocObject();
  v34 = v25;
  v35 = &off_2836D22B0;
  v33[0] = sub_223786A3C();
  OUTLINED_FUNCTION_70();
  sub_2237ADE08(v33, v6);
  swift_endAccess();
  v28.receiver = v3;
  v28.super_class = SRDRequestDispatcher;
  objc_msgSendSuper2(&v28, sel_init);
  OUTLINED_FUNCTION_46_1();
  swift_unknownObjectRelease();
  return v26;
}

uint64_t SRDRequestDispatcher.cancelRequest(withAssistantId:requestId:reason:)()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_19_5();
  v1(v2);
  OUTLINED_FUNCTION_14_2();

  return swift_unknownObjectRelease();
}

void SRDRequestDispatcher.commands(forDomain:)()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_55_1();
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_21_4();
  v1(v2);
  OUTLINED_FUNCTION_249();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.domains()()
{
  v1 = OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  v2(v1, v0);
  OUTLINED_FUNCTION_249();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SRDRequestDispatcher.handle(_:executionContextInfo:reply:)()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_54_1();
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_5_6();
  v1(v2);
  OUTLINED_FUNCTION_14_2();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall SRDRequestDispatcher.implementsCommand(_:forDomain:)(Swift::String _, Swift::String forDomain)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 40);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_2();
  return result;
}

Swift::Void __swiftcall SRDRequestDispatcher.requestCompleted(withAssistantId:requestId:)(Swift::String withAssistantId, Swift::String requestId)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 48);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall SRDRequestDispatcher.sessionExists(forAssistantId:)(Swift::String forAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_55_1();
  v2 = *(v1 + 56);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_21_4();
  v2(v3);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_61_0();
  return result;
}

void SRDRequestDispatcher.startSession(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_62_0();
  a17 = v22;
  a18 = v23;
  v24 = v18;
  v26 = v25;
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_55_1();
  v27 = *(v21 + 64);
  swift_unknownObjectRetain();
  v27(v26, v20, v19);
  swift_unknownObjectRelease();
  v28 = *(v18 + OBJC_IVAR___SRDRequestDispatcher_featureChecker + 24);
  v29 = __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR___SRDRequestDispatcher_featureChecker), v28);
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &a9 - v32;
  (*(v30 + 16))(&a9 - v32);
  v34 = sub_2237B57DC();
  (*(v30 + 8))(v33, v28);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978F8, &unk_2237B8170);
    v35 = *(v24 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcherServiceHelper);
    swift_unknownObjectRetain();
    v36 = sub_223781240(v35, v26);
    v37 = *(v24 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy);
    *(v24 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy) = v36;
  }

  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 72);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.endSession(withAssistantId:)(Swift::String withAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v8 = *(v2 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 80);
  swift_unknownObjectRetain();
  v10(v6, v4, 1, ObjectType, v8);
  swift_unknownObjectRelease();
  v11 = *(v2 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy);
  *(v2 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy) = 0;
  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.startSpeechRequest(withAssistantId:requestId:inputOrigin:location:asrOnServer:requestContextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  if (*(v9 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy))
  {
    *&v27 = a1;
    *(&v27 + 1) = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a9;

    v16 = a9;
    sub_2237AD08C(&v27);
    OUTLINED_FUNCTION_52();
  }

  else
  {
    v19 = v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher;
    v20 = *(v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v25 = *(v21 + 88);
    swift_unknownObjectRetain();
    v25(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, ObjectType, v21);
    OUTLINED_FUNCTION_52();

    return swift_unknownObjectRelease();
  }
}

uint64_t SRDRequestDispatcher.startLocalRequest(withAssistantId:requestId:inputOrigin:requestContextData:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startTestSpeechRequest(withAssistantId:requestId:enableASR:inputOrigin:location:jitContext:overrideModelPath:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_51_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v1 = *(v0 + 104);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);
  OUTLINED_FUNCTION_52();

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.postTestResultCandidate(withAssistantId:requestId:rcId:recognitionSausage:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 112);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.postTestResultSelected(withAssistantId:requestId:rcId:)(Swift::String withAssistantId, Swift::String requestId, Swift::String rcId)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v4 = *(v3 + 120);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_23_3();
  v4(v5);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startUnderstandingOnServerRequest(withAssistantId:requestId:inputOrigin:)(Swift::String withAssistantId, Swift::String requestId, Swift::String inputOrigin)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v4 = *(v3 + 128);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_23_3();
  v4(v5);

  swift_unknownObjectRelease();
}

uint64_t sub_2237AF738()
{
  OUTLINED_FUNCTION_62_0();
  v1 = v0;
  v3 = v2;
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_42_1();
  v1(v5);

  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.startUnderstandingOnServerTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v1 = *(v0 + 136);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startTextRequest(withAssistantId:requestId:inputOrigin:utterance:requestContextData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*(v9 + OBJC_IVAR___SRDRequestDispatcher_intelligenceFlowProxy))
  {
    __src[0] = a1;
    __src[1] = a2;
    __src[2] = a3;
    __src[3] = a4;
    __src[4] = a5;
    __src[5] = a6;
    __src[6] = a7;
    __src[7] = a8;
    __src[8] = a9;

    v16 = a9;
    sub_2237AD254(__src);
    OUTLINED_FUNCTION_64_0();
  }

  else
  {
    v19 = v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher;
    v21 = *(v9 + OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v24 = *(v20 + 144);
    swift_unknownObjectRetain();
    v24(a1, a2, a3, a4, a5, a6, a7, a8, a9, ObjectType, v20);
    OUTLINED_FUNCTION_64_0();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2237AFA1C()
{
  OUTLINED_FUNCTION_26_1();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v20 = sub_2237B5E2C();
  v6 = v5;
  v7 = sub_2237B5E2C();
  v9 = v8;
  v10 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = v2;
  v17 = v4;
  v21(v20, v6, v7, v9, v10, v12, v13, v15);

  OUTLINED_FUNCTION_25_3();
}

uint64_t SRDRequestDispatcher.startDirectActionRequest(withAssistantId:requestId:inputOrigin:utterance:directAction:requestExecutionParameters:requestContextData:)()
{
  OUTLINED_FUNCTION_49_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v1 = *(v0 + 160);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_233();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startCorrectionSpeechRequest(withAssistantId:requestId:inputOrigin:utterance:previousUtterance:requestContextData:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v1 = *(v0 + 168);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_4();
  v1(v2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startSpeechDictationSession(withAssistantId:languageCode:recognitionOnDevice:)(Swift::String withAssistantId, Swift::String languageCode, Swift::Bool recognitionOnDevice)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v4 = *(v3 + 176);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_19_5();
  v4(v5);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.startSpeechDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 184);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.startUnderstandingDictationSession(withAssistantId:languageCode:understandingOnDevice:)(Swift::String withAssistantId, Swift::String languageCode, Swift::Bool understandingOnDevice)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_50_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v4 = *(v3 + 192);
  swift_unknownObjectRetain();
  v5 = OUTLINED_FUNCTION_19_5();
  v4(v5);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

uint64_t sub_2237B01A8()
{
  OUTLINED_FUNCTION_62_0();
  v1 = v0;
  v3 = v2;
  sub_2237B5E2C();
  sub_2237B5E2C();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_42_1();
  v1(v5);

  OUTLINED_FUNCTION_61_0();
}

uint64_t SRDRequestDispatcher.startUnderstandingDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_18_4(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 200);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_2_7();
  v1(v2);
  OUTLINED_FUNCTION_25_3();

  return swift_unknownObjectRelease();
}

uint64_t sub_2237B02C4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  v6 = v3;
  v7 = v5;
  v8 = OUTLINED_FUNCTION_45_1();
  v1(v8);

  OUTLINED_FUNCTION_14_2();
}

Swift::Void __swiftcall SRDRequestDispatcher.endDictationSession(withAssistantId:)(Swift::String withAssistantId)
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_55_1();
  v2 = *(v1 + 208);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_21_4();
  v2(v3);
  OUTLINED_FUNCTION_61_0();

  swift_unknownObjectRelease();
}

uint64_t sub_2237B041C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_2237B5E2C();
  v7 = v6;
  v8 = a1;
  v9 = OUTLINED_FUNCTION_58_0();
  a4(v9, v7);
}

Swift::Void __swiftcall SRDRequestDispatcher.pauseDictationRecognition(withAssistantId:requestId:)(Swift::String withAssistantId, Swift::String requestId)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_27_2(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  OUTLINED_FUNCTION_54_1();
  v3 = *(v2 + 216);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_5_6();
  v3(v4);
  OUTLINED_FUNCTION_14_2();

  swift_unknownObjectRelease();
}

uint64_t sub_2237B050C()
{
  OUTLINED_FUNCTION_72();
  sub_2237B5E2C();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_59_0();
  v0(v3);
}

Swift::Void __swiftcall SRDRequestDispatcher.resumeDictationRecognition(withAssistantId:requestId:prefixText:postfixText:selectedText:)(Swift::String withAssistantId, Swift::String requestId, Swift::String prefixText, Swift::String postfixText, Swift::String selectedText)
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_51_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v6 = *(v5 + 224);
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_10_4();
  v6(v7);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(Swift::String withAssistantId, Swift::String requestId, Swift::String_optional prefixText, Swift::String_optional postfixText, Swift::String_optional selectedText, NSNumber_optional disambiguationActive, NSNumber_optional cursorInVisibleText, NSNumber_optional favorCommandSuppression, NSNumber_optional abortCommandSuppression, NSNumber_optional undoEvent)
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_14_7(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v11 = *(v10 + 232);
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_10_4();
  v11(v12);

  swift_unknownObjectRelease();
}

uint64_t SRDRequestDispatcher.announceNotificationHandlingStateUpdated(withAssistantId:to:)()
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_51_1(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v8 = *(v0 + 240);
  swift_unknownObjectRetain();
  v8(v6, v4, v2, v7, v0);
  OUTLINED_FUNCTION_61_0();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SRDRequestDispatcher.updateConversationContextForRemoteResponse(withAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:)(Swift::String withAssistantId, Swift::String requestId, Swift::String_optional fullSpeak, Swift::String_optional redactedFullSpeak, Swift::String_optional fullPrint, Swift::String_optional redactedFullPrint, Swift::Bool listenAfterSpeaking)
{
  object = withAssistantId._object;
  countAndFlagsBits = withAssistantId._countAndFlagsBits;
  v10 = OUTLINED_FUNCTION_27_2(OBJC_IVAR___SRDRequestDispatcher_requestDispatcher);
  v11 = *(v7 + 248);
  swift_unknownObjectRetain();
  v11(countAndFlagsBits, object, requestId._countAndFlagsBits, requestId._object, fullSpeak.value._countAndFlagsBits, fullSpeak.value._object, redactedFullSpeak.value._countAndFlagsBits, redactedFullSpeak.value._object, fullPrint.value._countAndFlagsBits, fullPrint.value._object, redactedFullPrint.value._countAndFlagsBits, redactedFullPrint.value._object, listenAfterSpeaking, v10);

  swift_unknownObjectRelease();
}

void SRDRequestDispatcher.emitAIREventsForSiriRequest(withRequestId:missingAssets:)()
{
  OUTLINED_FUNCTION_62_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_2237B412C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B40EC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2237692F0(v8, &qword_27D097A50, &unk_2237B7800);
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v14 = sub_2237B5C9C();
    __swift_project_value_buffer(v14, qword_28131B550);

    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();

    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_20();
      v17 = OUTLINED_FUNCTION_32();
      v29[0] = v17;
      *v13 = 136315138;
      *(v13 + 4) = sub_223763694(v4, v2, v29);
      _os_log_impl(&dword_22375F000, v15, v16, "Invalid UUID string for requestId: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v18 = OBJC_IVAR___SRDRequestDispatcher_reportingProvider;
    swift_beginAccess();
    sub_2237B16AC(v0 + v18, &v27);
    if (v28)
    {
      sub_2237709BC(&v27, v29);
      v19 = *__swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v20 = OUTLINED_FUNCTION_57_1();
      sub_2237873F4(v20, v21);
      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    else
    {
      sub_2237692F0(&v27, &unk_27D097DD0, &qword_2237B9358);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v22 = sub_2237B5C9C();
      __swift_project_value_buffer(v22, qword_28131B550);
      v23 = sub_2237B5C8C();
      v24 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_261(v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22375F000, v23, v24, "Failed to emit request events as reportingProvider is nil", v25, 2u);
        OUTLINED_FUNCTION_8();
      }

      (*(v10 + 8))(v13, v9);
    }
  }

  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_2237B110C()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_59_0();
  v0(v3);
}

void SRDRequestDispatcher.emitAIREventForSiriAvailabilty(withLocale:countryCode:isAvailable:orchestrationMode:unavailabilityReasons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7)
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v14 = sub_2237B5C9C();
  __swift_project_value_buffer(v14, qword_28131B550);
  v15 = sub_2237B5C8C();
  v16 = sub_2237B5FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22375F000, v15, v16, "Operation not supported.", v17, 2u);
    OUTLINED_FUNCTION_8();
  }

  v18 = OBJC_IVAR___SRDRequestDispatcher_reportingProvider;
  swift_beginAccess();
  sub_2237B16AC(v7 + v18, &v24);
  if (v25)
  {
    sub_2237709BC(&v24, v26);
    v19 = *__swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_22378821C(a1, a2, a3, a4, a5 & 1, a6, a7);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_2237692F0(&v24, &unk_27D097DD0, &qword_2237B9358);
    v20 = sub_2237B5C8C();
    v21 = sub_2237B5FFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22375F000, v20, v21, "Failed to emit request events as reportingProvider is nil", v22, 2u);
      OUTLINED_FUNCTION_3_0();
    }
  }

  OUTLINED_FUNCTION_64_0();
}

void __swiftcall SRDRequestDispatcher.init()(SRDRequestDispatcher *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2237B1560(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  sub_223763694(v6, v7, a3);
  OUTLINED_FUNCTION_249();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

char *sub_2237B15B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097338, &qword_2237B77F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2237B16AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097DD0, &qword_2237B9358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B1730(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_2237B17E4;

  return sub_2237AD410(v2 + 16, a2);
}

uint64_t sub_2237B17E4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return v5();
}

uint64_t sub_2237B18C4(void *__src, uint64_t a2)
{
  memcpy((v2 + 16), __src, 0x48uLL);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_2237B1970;

  return sub_2237AD76C(v2 + 16, a2);
}

uint64_t sub_2237B1970()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return v5();
}

uint64_t sub_2237B1A50()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_37_0(v3);

  return v5(v4);
}

uint64_t sub_2237B1B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowProxyError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B1BFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2237B1C44()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_37_0(v3);

  return v5(v4);
}

uint64_t OUTLINED_FUNCTION_28_2(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_223763694(0x286D726F66726570, 0xEC000000293A6E69, va);
}

uint64_t OUTLINED_FUNCTION_51_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return sub_2237B5E2C();
}

void *OUTLINED_FUNCTION_75(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t sub_2237B1EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_2237B1F48(uint64_t a1)
{
  v2 = sub_2237B1FC0();
  v3 = sub_2237B212C();
  v4 = type metadata accessor for SessionsManager();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_2237B22AC(a1, v2, v3);
  return v7;
}

double sub_2237B1FC0()
{
  v0 = qword_28131B2B8;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2237B261C(0xD000000000000013, 0x80000002237BB520);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2237B5E1C();
    v5 = OUTLINED_FUNCTION_15_7();

    if (v5 >= 1)
    {
      v6 = sub_2237B5E1C();
      v7 = OUTLINED_FUNCTION_15_7();

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v8 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v8, qword_28131B550);
      v9 = sub_2237B5C8C();
      v10 = sub_2237B601C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_25_0();
        *v11 = 134218240;
        *(v11 + 4) = v0;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v7;
        OUTLINED_FUNCTION_36(&dword_22375F000, v12, v13, "session expiration changed from default: %ld to: %ld seconds");
        OUTLINED_FUNCTION_8();
      }

      v0 = v7;
    }
  }

  return v0;
}

double sub_2237B212C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2237B261C(0xD000000000000013, 0x80000002237BB520);
  if (!v1)
  {
    return 15.0;
  }

  v2 = v1;
  v3 = sub_2237B5E1C();
  v4 = OUTLINED_FUNCTION_15_7();

  if (v4 < 1)
  {
    v13 = 15.0;
  }

  else
  {
    v5 = sub_2237B5E1C();
    v6 = OUTLINED_FUNCTION_15_7();

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v7 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v7, qword_28131B550);
    v8 = sub_2237B5C8C();
    v9 = sub_2237B601C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_25_0();
      *v10 = 134218240;
      *(v10 + 4) = 15;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      OUTLINED_FUNCTION_36(&dword_22375F000, v11, v12, "session end expiration delay changed from default: %ld to: %ld seconds");
      OUTLINED_FUNCTION_8();
    }

    v13 = v6;
  }

  return v13;
}

uint64_t sub_2237B22AC(uint64_t a1, double a2, double a3)
{
  type metadata accessor for Session();
  *(v3 + 40) = sub_2237B5DBC();
  sub_2237B412C();
  OUTLINED_FUNCTION_1_8();
  sub_2237651DC(v7, v8);
  v9 = sub_2237B5DBC();
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = v9;
  v10 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  v11 = sub_2237B40DC();
  __swift_storeEnumTagSinglePayload(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = 0;
  swift_weakInit();
  *(v3 + 32) = a1;
  swift_weakAssign();

  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t sub_2237B23D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  sub_2237B27C4(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_2237B243C()
{
  sub_2237B23D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SessionsManager()
{
  result = qword_28131B2A0;
  if (!qword_28131B2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2237B24E8()
{
  sub_2237B25C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2237B25C4()
{
  if (!qword_28131B4E8)
  {
    sub_2237B40DC();
    v0 = sub_2237B60AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28131B4E8);
    }
  }
}

id sub_2237B261C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2237B5E1C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_2237B2680()
{
  v1 = *(v0 + 40);
  sub_2237B56DC();
  sub_2237651DC(&qword_27D097EA0, MEMORY[0x277D5D298]);
  sub_2237B5DDC();
  sub_22376AD50();
}

uint64_t sub_2237B2754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237B27C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2237B282C()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_31_2();
  v8 = *v0;
  v9 = sub_22376504C();
  OUTLINED_FUNCTION_5_7(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF0, &qword_2237B92A0);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_22376504C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = (v19[7] + 16 * v14);
    v21 = *v20;
    *v20 = v2;
    v20[1] = v1;
    OUTLINED_FUNCTION_14_2();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2237B2A8C(v14, v7, v5, v2, v1, v19);
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237B2958()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_23_4();
  v2 = sub_2237B56DC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_30_3();
  sub_2237B2680();
  OUTLINED_FUNCTION_5_7(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E98, &qword_2237B9498);
  if (OUTLINED_FUNCTION_13_6())
  {
    v13 = *v1;
    sub_2237B2680();
    if ((v12 & 1) == (v15 & 1))
    {
      v11 = v14;
      goto LABEL_5;
    }

LABEL_10:
    sub_2237B62CC();
    __break(1u);
    return;
  }

LABEL_5:
  if (v12)
  {
    sub_223763314(v0, *(*v1 + 56) + 32 * v11, &qword_27D097350, qword_2237B7EC0);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_32_1();
    v17(v16);
    v18 = OUTLINED_FUNCTION_34_1();
    sub_2237B2AB0(v18, v19, v20, v21);
  }

  OUTLINED_FUNCTION_14_2();
}

unint64_t sub_2237B2A8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = OUTLINED_FUNCTION_11_8(a1, a2, a3, a4, a5, a6);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v8;
  }

  return result;
}

uint64_t sub_2237B2AB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2237B56DC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 32 * a1);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v2 = *(v0 - 272);

  return sub_2237B5C8C();
}

uint64_t sub_2237B2B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2237B2BC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_2237B2C14()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B560C();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v55 = (v12 - v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = *(v5 + 16);
  if (!v17)
  {
LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v19 = *(v9 + 16);
  v18 = v9 + 16;
  v57 = v19;
  v20 = v5 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v21 = (v18 - 8);
  v22 = MEMORY[0x277D84F98];
  v23 = *(v18 + 56);
  v53 = v3;
  v54 = v23;
  v52 = v1;
  v56 = v18;
  while (1)
  {
    v57(v16, v20, v6);
    if (*(v3 + 16) && (sub_223774D10(), (v25 & 1) != 0))
    {
      sub_22376AEC8(*(v3 + 56) + 32 * v24, v60);
      v26 = OUTLINED_FUNCTION_15_8();
      sub_223774DE4(v26, v27);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v28 = sub_2237B5C9C();
      __swift_project_value_buffer(v28, qword_28131B550);
      v29 = sub_2237B5C8C();
      v30 = sub_2237B601C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22375F000, v29, v30, "Could not find key in user-specific session data. Falling back to shared space", v31, 2u);
        v3 = v53;
        OUTLINED_FUNCTION_8();
      }

      if (!*(v1 + 16) || (sub_223774D10(), (v33 & 1) == 0))
      {
        (*v21)(v16, v6);
        memset(v59, 0, sizeof(v59));
        sub_223774CA8(v59);
        goto LABEL_22;
      }

      sub_22376AEC8(*(v1 + 56) + 32 * v32, v59);
    }

    sub_223774DE4(v59, v60);
    v57(v55, v16, v6);
    v34 = OUTLINED_FUNCTION_15_8();
    sub_22376AEC8(v34, v35);
    swift_isUniquelyReferenced_nonNull_native();
    v58 = v22;
    sub_223774D10();
    OUTLINED_FUNCTION_21_6(v36, v37);
    if (v40)
    {
      break;
    }

    v41 = v38;
    v42 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    if (sub_2237B618C())
    {
      sub_223774D10();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_26;
      }

      v41 = v43;
    }

    v22 = v58;
    if (v42)
    {
      v45 = (v58[7] + 32 * v41);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      sub_223774DE4(v59, v45);
      v46 = *v21;
      (*v21)(v55, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v46(v16, v6);
      v1 = v52;
      v3 = v53;
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v58[v41 >> 6]);
      v47 = v55;
      v57((v22[6] + v41 * v54), v55, v6);
      sub_223774DE4(v59, (v22[7] + 32 * v41));
      v48 = *v21;
      (*v21)(v47, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v48(v16, v6);
      v49 = v22[2];
      v40 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v22[2] = v50;
      v1 = v52;
      v3 = v53;
    }

LABEL_22:
    v20 += v54;
    if (!--v17)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2237B62CC();
  __break(1u);
}

void sub_2237B303C()
{
  OUTLINED_FUNCTION_16_3();
  v88 = v0;
  v2 = v1;
  v4 = v3;
  v92 = sub_2237B560C();
  v5 = OUTLINED_FUNCTION_0_2(v92);
  v94 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v87 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_3();
  v96 = v16 - v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v91 = v19;
  v20 = sub_2237B56DC();
  v21 = OUTLINED_FUNCTION_0_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  if (qword_28131AA10 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v29 = sub_2237B5C9C();
  __swift_project_value_buffer(v29, qword_28131B550);
  (v23[2])(v28, v2, v20);

  v30 = sub_2237B5C8C();
  v31 = sub_2237B5FEC();

  v32 = os_log_type_enabled(v30, v31);
  v33 = MEMORY[0x277D84F70];
  v93 = v4;
  v95 = v11;
  if (v32)
  {
    v34 = swift_slowAlloc();
    *&v100 = swift_slowAlloc();
    *v34 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
    OUTLINED_FUNCTION_0_8();
    sub_223774B1C(v35, v36);
    v37 = sub_2237B5DCC();
    v39 = sub_223763694(v37, v38, &v100);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    OUTLINED_FUNCTION_5_8();
    sub_223774B1C(v40, v41);
    v42 = sub_2237B627C();
    v44 = v43;
    (v23[1])(v28, v20);
    v45 = sub_223763694(v42, v44, &v100);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_22375F000, v30, v31, "Updating values for keys: %s userId: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v11 = v95;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (v23[1])(v28, v20);
  }

  v2 = v96;
  v47 = v4 + 8;
  v46 = v4[8];
  v48 = 1 << *(v4 + 32);
  OUTLINED_FUNCTION_8_9();
  v20 = v49 >> 6;
  v90 = (v94 + 8);

  v50 = 0;
  v23 = v88;
  v28 = v92;
  v89 = v4 + 8;
  v86 = v20;
  while (1)
  {
    while (1)
    {
      if (!v33)
      {
        while (1)
        {
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v52 >= v20)
          {
            v4 = &qword_27D097EB8;
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
            __swift_storeEnumTagSinglePayload(v2, 1, 1, v85);
            v33 = 0;
            goto LABEL_13;
          }

          v33 = v47[v52];
          ++v50;
          if (v33)
          {
            v51 = v23;
            v50 = v52;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v51 = v23;
LABEL_12:
      OUTLINED_FUNCTION_19_7();
      v55 = v54 | (v53 << 6);
      (*(v94 + 16))(v87, v4[6] + *(v94 + 72) * v55, v28);
      sub_223773DA0(v4[7] + 32 * v55, &v100);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      v57 = (v96 + *(v56 + 48));
      v4 = &qword_27D097EB8;
      (*(v94 + 32))(v96, v87, v28);
      v58 = v101;
      *v57 = v100;
      v57[1] = v58;
      v2 = v96;
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v56);
      v11 = v95;
      v23 = v51;
      v20 = v86;
LABEL_13:
      sub_223774B68(v2, v91);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      if (__swift_getEnumTagSinglePayload(v91, 1, v59) == 1)
      {

        OUTLINED_FUNCTION_14_2();
        return;
      }

      v60 = (v91 + *(v59 + 48));
      (*(v94 + 32))(v11, v91, v28);
      v61 = v60[1];
      v100 = *v60;
      v101 = v61;
      if (*(&v61 + 1))
      {
        break;
      }

      sub_223774CA8(&v100);
      v71 = *v23;
      sub_223774D10();
      v73 = v11;
      if (v74)
      {
        v75 = v72;
        v76 = *v23;
        swift_isUniquelyReferenced_nonNull_native();
        v98 = *v23;
        v77 = *(*v23 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
        OUTLINED_FUNCTION_17_6();
        v23 = v88;
        sub_2237B618C();
        v78 = *(v94 + 8);
        v28 = v92;
        v78(*(v98 + 48) + *(v94 + 72) * v75, v92);
        sub_223774DE4((*(v98 + 56) + 32 * v75), v99);
        OUTLINED_FUNCTION_0_8();
        sub_223774B1C(qword_28131A8A8, v79);
        sub_2237B619C();
        v78(v73, v92);
        *v88 = v98;
      }

      else
      {
        v28 = v92;
        (*v90)(v11, v92);
        memset(v99, 0, sizeof(v99));
      }

      v11 = v73;
      v47 = v89;
      sub_223774CA8(v99);
      v2 = v96;
      v4 = v93;
    }

    sub_223774DE4(&v100, v99);
    v62 = *v23;
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *v23;
    v97 = *v23;
    sub_223774D10();
    OUTLINED_FUNCTION_11_9();
    v23 = (v65 + v66);
    if (__OFADD__(v65, v66))
    {
      goto LABEL_32;
    }

    v67 = v63;
    v68 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    OUTLINED_FUNCTION_17_6();
    if (sub_2237B618C())
    {
      break;
    }

    v23 = v88;
LABEL_22:
    v2 = v97;
    if (v68)
    {
      v80 = (v97[7] + 32 * v67);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      sub_223774DE4(v99, v80);
      v11 = v95;
      v28 = v92;
      (*v90)(v95, v92);
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v97[v67 >> 6]);
      v4 = v95;
      (*(v94 + 16))(v97[6] + *(v94 + 72) * v67, v95, v92);
      v81 = (v97[7] + 32 * v67);
      v28 = v92;
      sub_223774DE4(v99, v81);
      v11 = v95;
      (*(v94 + 8))(v95, v92);
      v82 = v97[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_33;
      }

      v97[2] = v84;
    }

    *v23 = v97;
    v4 = v93;
    v2 = v96;
    v47 = v89;
  }

  sub_223774D10();
  v23 = v88;
  if ((v68 & 1) == (v70 & 1))
  {
    v67 = v69;
    goto LABEL_22;
  }

  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_2237B38BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2237B56DC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  sub_2237B56AC();
  if (*(a2 + 16) && (sub_223774D10(), (v13 & 1) != 0))
  {
    sub_22376AEC8(*(a2 + 56) + 32 * v12, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_2237B2958();
  (*(v6 + 8))(v11, v3);
  return v14;
}

void sub_2237B39EC()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v4 = sub_2237B560C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v47 = (v10 - v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  OUTLINED_FUNCTION_0_8();
  sub_223774B1C(v15, v16);
  v17 = sub_2237B5DBC();
  v18 = *(v3 + 16);
  if (!v18)
  {
LABEL_16:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  v21 = *(v7 + 16);
  v19 = v7 + 16;
  v20 = v21;
  v22 = v3 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v23 = *(v19 + 56);
  v24 = (v19 - 8);
  v44[0] = v1;
  v44[1] = v19;
  v45 = v23;
  v46 = v21;
  while (1)
  {
    v20(v14, v22, v4);
    if (!*(v1 + 16) || (sub_223774D10(), (v26 & 1) == 0))
    {
      (*v24)(v14, v4);
      goto LABEL_15;
    }

    sub_22376AEC8(*(v1 + 56) + 32 * v25, v50);
    v20(v47, v14, v4);
    v27 = OUTLINED_FUNCTION_15_8();
    sub_22376AEC8(v27, v28);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v17;
    sub_223774D10();
    OUTLINED_FUNCTION_21_6(v29, v30);
    if (v33)
    {
      break;
    }

    v34 = v31;
    v35 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    if (sub_2237B618C())
    {
      sub_223774D10();
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_19;
      }

      v34 = v36;
    }

    v17 = v48;
    if (v35)
    {
      v38 = (v48[7] + 32 * v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      sub_223774DE4(v49, v38);
      v39 = *v24;
      (*v24)(v47, v4);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      v39(v14, v4);
      v1 = v44[0];
    }

    else
    {
      OUTLINED_FUNCTION_4_10(&v48[v34 >> 6]);
      v40 = v47;
      v46((v17[6] + v34 * v45), v47, v4);
      sub_223774DE4(v49, (v17[7] + 32 * v34));
      v41 = *v24;
      (*v24)(v40, v4);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      v41(v14, v4);
      v42 = v17[2];
      v33 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v17[2] = v43;
      v1 = v44[0];
    }

    v23 = v45;
    v20 = v46;
LABEL_15:
    v22 += v23;
    if (!--v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_2237B3DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[6] = a5;
  a7[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 3);
  v10 = *(*(a5 - 8) + 32);

  return v10(boxed_opaque_existential_1, a4, a5);
}

uint64_t sub_2237B3E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2237B3E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2237B3F48(unint64_t *a1, void (*a2)(uint64_t))
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