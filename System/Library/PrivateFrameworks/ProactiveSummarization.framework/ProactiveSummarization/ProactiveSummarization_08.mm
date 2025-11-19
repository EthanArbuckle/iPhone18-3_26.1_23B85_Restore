void sub_231D4FA60()
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v3 = sub_231E0F950();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_12();
  v7 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v7)
  {
    v8 = v7;
    sub_231E115F0();
    v9 = OUTLINED_FUNCTION_14_8();
    v10(v9);
    OUTLINED_FUNCTION_63_4();
    v11 = OUTLINED_FUNCTION_119_2();
    v12 = OUTLINED_FUNCTION_18_9(v11);
    v13(v12);
    OUTLINED_FUNCTION_19_8();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_231D54B78;
    *(v14 + 24) = v1;
    v23 = sub_231D54B84;
    v24 = v14;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v21 = v15;
    v22 = &block_descriptor_805;
    _Block_copy(v20);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v16);
    OUTLINED_FUNCTION_19_8();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_231D549F4;
    *(v17 + 24) = v2;
    v23 = sub_231D54B88;
    v24 = v17;
    v20[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v21 = v18;
    v22 = &block_descriptor_816;
    _Block_copy(v20);
    v19 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v19, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v3);
  }

  OUTLINED_FUNCTION_39_5();
}

void sub_231D4FC7C()
{
  OUTLINED_FUNCTION_40_6();
  v3 = v2;
  OUTLINED_FUNCTION_111_3();
  v4 = sub_231E10E30();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v12 = v11 - v10;
  v13 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v13)
  {
    v52 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v45 = v13;
    v14 = sub_231E115F0();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = v3 & 1;
    OUTLINED_FUNCTION_19_8();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_231D5339C;
    *(v16 + 24) = v15;
    v50 = sub_231D54B84;
    v51 = v16;
    v46 = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_231D4A118;
    v49 = &block_descriptor_826;
    v17 = _Block_copy(&v46);

    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = &v52;
    *(v18 + 24) = &v53;
    OUTLINED_FUNCTION_19_8();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_231D53400;
    *(v19 + 24) = v18;
    v50 = sub_231D54B8C;
    v51 = v19;
    v46 = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_231D4A164;
    v49 = &block_descriptor_836;
    v20 = _Block_copy(&v46);

    OUTLINED_FUNCTION_20_9();
    v21 = swift_allocObject();
    v21[2] = 0xD000000000000021;
    v21[3] = 0x8000000231E35050;
    v21[4] = 0xD000000000000017;
    v21[5] = 0x8000000231E35080;
    OUTLINED_FUNCTION_19_8();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_231D549F4;
    *(v22 + 24) = v21;
    v50 = sub_231D54B88;
    v51 = v22;
    OUTLINED_FUNCTION_11_13();
    v48 = sub_231D4994C;
    v49 = &block_descriptor_847;
    v23 = _Block_copy(&v46);

    [v45 prepAndRunQuery:v14 onPrep:v17 onRow:v20 onError:v23];
    _Block_release(v23);
    _Block_release(v20);
    _Block_release(v17);

    v24 = sub_231E115F0();
    OUTLINED_FUNCTION_27();
    v25 = swift_allocObject();
    *(v25 + 16) = &v52;
    OUTLINED_FUNCTION_19_8();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_231D53408;
    *(v26 + 24) = v25;
    v50 = sub_231D54B84;
    v51 = v26;
    OUTLINED_FUNCTION_11_13();
    v48 = sub_231D4A118;
    v49 = &block_descriptor_857;
    v27 = _Block_copy(&v46);

    OUTLINED_FUNCTION_20_9();
    v28 = swift_allocObject();
    v28[2] = 0xD000000000000021;
    v28[3] = 0x8000000231E35050;
    v28[4] = 0xD000000000000019;
    v28[5] = 0x8000000231E350E0;
    OUTLINED_FUNCTION_19_8();
    v29 = swift_allocObject();
    v30 = sub_231D549F4;
    *(v29 + 16) = sub_231D549F4;
    *(v29 + 24) = v28;
    v50 = sub_231D54B88;
    v51 = v29;
    OUTLINED_FUNCTION_11_13();
    v48 = sub_231D4994C;
    v49 = &block_descriptor_868;
    v31 = _Block_copy(&v46);

    OUTLINED_FUNCTION_114_1();
    [v32 v33];

    _Block_release(v31);
    _Block_release(v27);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v34 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v34, v35);
    swift_willThrow();
    v36 = v34;
    v37 = sub_231DC4C74();
    (*(v7 + 16))(v12, v37, v4);
    v38 = v34;
    v39 = sub_231E10E10();
    v40 = sub_231E11AD0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = OUTLINED_FUNCTION_53();
      *v41 = 138412290;
      v43 = v34;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_231CAE000, v39, v40, "Could not load requests from disk: %@", v41, 0xCu);
      sub_231CC154C(v42, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
    }

    (*(v7 + 8))(v12, v4);
    v30 = 0;
  }

  sub_231CB7448(v30);
  OUTLINED_FUNCTION_39_5();
}

void sub_231D502D0()
{
  OUTLINED_FUNCTION_118();
  v38 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_231E10E30();
  v6 = OUTLINED_FUNCTION_24(v5);
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_83_3();
  v10 = type metadata accessor for SummarizationPipeline.Request();
  v11 = OUTLINED_FUNCTION_24(v10);
  v37 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = [v4 getInt64ForColumnName:"pk" table:0];
  sub_231D51D90(sub_231D520AC);
  v21 = *(*v2 + 16);
  sub_231D51E3C(v21, sub_231D520AC);
  v22 = *v2;
  *(v22 + 16) = v21 + 1;
  *(v22 + 8 * v21 + 32) = v20;
  v23 = [v4 getNSDataForColumnName:"payload" table:0];
  if (v23)
  {
    v24 = v23;
    v25 = sub_231E0F840();
    v27 = v26;

    v28 = sub_231E0F440();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_231E0F430();
    OUTLINED_FUNCTION_51_4();
    sub_231D534E8(v31, v32);
    sub_231E0F420();

    sub_231D546C8(v19, v17, type metadata accessor for SummarizationPipeline.Request);
    v33 = v38;
    sub_231D51D14(&qword_27DD74DC0, &qword_231E1CA90, type metadata accessor for SummarizationPipeline.Request, type metadata accessor for SummarizationPipeline.Request);
    v34 = *(*v33 + 16);
    sub_231D51DEC(v34, &qword_27DD74DC0, &qword_231E1CA90, type metadata accessor for SummarizationPipeline.Request, type metadata accessor for SummarizationPipeline.Request);
    sub_231CF4354(v25, v27);
    sub_231D53530(v19);
    OUTLINED_FUNCTION_82_1();
    sub_231D547D8(v17, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34, type metadata accessor for SummarizationPipeline.Request);
  }

  v36 = *MEMORY[0x277D42690];
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D50730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_231D54470(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_231D54470((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_231CE1044(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_231D50D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_24_7();
  a27 = v31;
  a28 = v33;
  v34 = *(v28 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v34)
  {
    v35 = v32;
    v36 = v34;
    v37 = sub_231E115F0();
    OUTLINED_FUNCTION_27();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_68_5(v38);
    OUTLINED_FUNCTION_19_8();
    v39 = swift_allocObject();
    *(v39 + 16) = sub_231D53774;
    *(v39 + 24) = v29;
    a13 = sub_231D54B84;
    a14 = v39;
    OUTLINED_FUNCTION_1_19();
    a10 = 1107296256;
    OUTLINED_FUNCTION_0_24();
    a11 = v40;
    a12 = &block_descriptor_899;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_10_12(v41);
    OUTLINED_FUNCTION_19_8();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_231D549F4;
    *(v42 + 24) = v30;
    a13 = sub_231D54B88;
    a14 = v42;
    a9 = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_2_18();
    a11 = v43;
    a12 = &block_descriptor_910;
    _Block_copy(&a9);
    v44 = OUTLINED_FUNCTION_101_4();
    OUTLINED_FUNCTION_8_13(v44, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(0xD000000000000018);
    _Block_release(v35);
  }

  OUTLINED_FUNCTION_23_8();
}

void sub_231D50EC8()
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v3 = sub_231E0F950();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_12();
  v7 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v7)
  {
    v8 = v7;
    sub_231E115F0();
    v9 = OUTLINED_FUNCTION_14_8();
    v10(v9);
    OUTLINED_FUNCTION_63_4();
    v11 = OUTLINED_FUNCTION_119_2();
    v12 = OUTLINED_FUNCTION_18_9(v11);
    v13(v12);
    OUTLINED_FUNCTION_19_8();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_231D5380C;
    *(v14 + 24) = v1;
    v23 = sub_231D54B84;
    v24 = v14;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v21 = v15;
    v22 = &block_descriptor_920;
    _Block_copy(v20);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v16);
    OUTLINED_FUNCTION_19_8();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_231D549F4;
    *(v17 + 24) = v2;
    v23 = sub_231D54B88;
    v24 = v17;
    v20[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v21 = v18;
    v22 = &block_descriptor_931;
    _Block_copy(v20);
    v19 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v19, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v3);
  }

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231D510E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_231E11D70();

  aBlock = 0xD000000000000015;
  v21 = 0x8000000231E352C0;
  MEMORY[0x23837CC20](a1, a2);
  v6 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v6)
  {
    v26 = 0;
    v7 = v6;
    v19 = sub_231E115F0();

    OUTLINED_FUNCTION_27();
    v8 = swift_allocObject();
    *(v8 + 16) = &v26;
    OUTLINED_FUNCTION_19_8();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_231D53888;
    *(v9 + 24) = v8;
    v24 = sub_231D54B8C;
    v25 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_231D4A164;
    v23 = &block_descriptor_941;
    v10 = _Block_copy(&aBlock);

    aBlock = 0x6D614E656C626174;
    v21 = 0xEB00000000203A65;
    MEMORY[0x23837CC20](a1, a2);
    v11 = aBlock;
    v12 = v21;
    OUTLINED_FUNCTION_20_9();
    v13 = swift_allocObject();
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x8000000231E352E0;
    v13[4] = v11;
    v13[5] = v12;
    OUTLINED_FUNCTION_19_8();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_231D549F4;
    *(v14 + 24) = v13;
    v24 = sub_231D54B88;
    v25 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_231D4994C;
    v23 = &block_descriptor_952;
    v15 = _Block_copy(&aBlock);

    [v7 prepAndRunQuery:v19 onPrep:0 onRow:v10 onError:v15];

    _Block_release(v15);
    _Block_release(v10);

    v3 = v26;
  }

  else
  {

    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v16, v17);
    swift_willThrow();
  }

  return v3;
}

void sub_231D513E8()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_111_3();
  v9 = sub_231E10E30();
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v18 = sub_231DC4C74();
  (*(v12 + 16))(v17, v18, v9);

  v19 = v0;
  v20 = sub_231E10E10();
  v21 = sub_231E11AE0();

  if (os_log_type_enabled(v20, v21))
  {
    v27 = v8;
    v22 = swift_slowAlloc();
    v28 = v4;
    v23 = OUTLINED_FUNCTION_53();
    v29 = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_231CB5000(v27, v6, &v29);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_231CB5000(v28, v2, &v29);
    *(v22 + 22) = 2112;
    v24 = v0;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v25;
    *v23 = v25;
    _os_log_impl(&dword_231CAE000, v20, v21, "%s: %s failed: %@", v22, 0x20u);
    sub_231CC154C(v23, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();

    (*(v12 + 8))(v17, v9);
  }

  else
  {

    (*(v12 + 8))(v17, v9);
  }

  v26 = *MEMORY[0x277D42698];
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D51648(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DE8, &qword_231E1CAA8);
  if (swift_dynamicCast())
  {
    sub_231CB6D84(v35, &v38);
    __swift_project_boxed_opaque_existential_0(&v38, v39);
    sub_231E0F5B0();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_0(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_231CC154C(v35, &qword_27DD74DF0, &qword_231E1CAB0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_231E11DF0();
  }

  sub_231D53E30(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x23837AD00](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_231D53F4C(sub_231D5475C);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_231E0F7F0();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_231CC140C(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_231E11730();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_231E11760();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_231E11DF0();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_231CC140C(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_231E11740();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_231E0F810();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_231E0F810();
    sub_231CF4340(v34, v6);
    goto LABEL_58;
  }

  sub_231CF4340(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_231CF4400(*&v35[0], *(&v35[0] + 1));

  sub_231CF4354(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_231D51B50(uint64_t a1)
{
  v2 = sub_231E114D0();
  v8 = v2;
  v9 = sub_231D534E8(&qword_27DD74DE0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_0(v7, v8);
  sub_231E0F5B0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_231D51CD0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

size_t sub_231D51D14(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = sub_231D51F9C(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3, a4);
    *v4 = result;
  }

  return result;
}

uint64_t sub_231D51D90(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

size_t sub_231D51DEC(size_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v6 = *(*v5 + 24);
  if ((result + 1) > (v6 >> 1))
  {
    result = sub_231D51F9C(v6 > 1, result + 1, 1, *v5, a2, a3, a4, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_231D51E3C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_231D51E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DF8, &qword_231E1CAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231D51F9C(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231D521AC(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231D5229C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_231D520AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DC8, &unk_231E1CA98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

size_t sub_231D521AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_65_4();
  v9 = a5(v8);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D5229C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_231D5235C()
{
  result = qword_2814CBD60;
  if (!qword_2814CBD60)
  {
    sub_231CC1784(255, &qword_2814CBD70, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBD60);
  }

  return result;
}

id sub_231D523C4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = OUTLINED_FUNCTION_81_4();
  [a1 bindNamedParam:":kind" toInteger:{sub_231E0B5A4(v6, v7)}];
  v8 = OUTLINED_FUNCTION_81_4();
  v10 = sub_231E0B568(v8, v9);
  OUTLINED_FUNCTION_103_2(":bundleId", v11, v10, v11);
  v12 = sub_231CE6BB8(v5);

  return [a1 bindNamedParam:":computationType" toInteger:v12];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D52480(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  [a1 getDoubleForColumnName:"tokenCount" table:0];
  v8 = v7;
  [a1 getDoubleForColumnName:"timestampLastReplenished" table:0];
  v9 = OUTLINED_FUNCTION_81_4();
  sub_231E0B5EC(v9, v10, v6, v11, v8, v12);
  v13 = *v4;
  v14 = v4[1];
  v15 = v4[2];
  v16 = v4[3];
  v17 = v4[4];
  *v4 = v19;
  v4[2] = v20;
  *(v4 + 3) = v21;
  sub_231D54834(v13, v14);
  return *MEMORY[0x277D42698];
}

uint64_t sub_231D52558()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

void sub_231D52584()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_231D513E8();
}

uint64_t sub_231D52590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

id sub_231D525BC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = OUTLINED_FUNCTION_81_4();
  [a1 bindNamedParam:":kind" toInteger:{sub_231E0B5A4(v5, v6)}];
  v7 = OUTLINED_FUNCTION_81_4();
  v9 = sub_231E0B568(v7, v8);
  OUTLINED_FUNCTION_103_2(":bundleId", v10, v9, v10);
  [a1 bindNamedParam:":computationType" toInteger:sub_231CE6BB8(*(v1 + 32))];
  [a1 bindNamedParam:":tokenCount" toDouble:*(v1 + 40)];
  v11 = *(v1 + 48);

  return [a1 bindNamedParam:":timestampLastReplenished" toDouble:v11];
}

unint64_t sub_231D526EC()
{
  result = qword_2814CD038[0];
  if (!qword_2814CD038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CD038);
  }

  return result;
}

id sub_231D52740(void *a1)
{
  v3 = sub_231CE6BB8(*(v1 + 16));

  return [a1 bindNamedParam:":computationType" toInteger:v3];
}

void sub_231D52790()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v2);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = (v1 + ((*(v4 + 64) + ((*(v3 + 80) + 88) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = v11[1];
  v14 = *v11;
  v15 = v1[10];
  sub_231D54608(":bundleId", v1[2], v1[3], v0);
  if (v5)
  {
    v5 = sub_231E115F0();
  }

  [v0 bindNamedParam:":sender" toNSString:{v5, v14}];

  sub_231D54668(":title", v7, v8, v0);
  sub_231D54668(":body", v9, v10, v0);
  [v0 bindNamedParam:":label" toInteger:v15];
  sub_231E0F870();
  [v0 bindNamedParam:":timestamp" toDouble:?];
  if (v12)
  {
    v13 = sub_231E115F0();
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  [v0 bindNamedParam:":textContent" toNSString:?];
}

id sub_231D52978(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  sub_231D54608(":bundleId", v3, v4, a1);

  return sub_231D54608(":sender", v6, v5, a1);
}

uint64_t sub_231D529E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 getNSDataForColumnName:"title" table:0];
  if (v3)
  {
    v4 = v3;
    sub_231E0F840();

    v5 = OUTLINED_FUNCTION_86_4();
    v7 = [v5 v6];
    if (v7)
    {
      v8 = v7;
      sub_231E0F840();

      v9 = OUTLINED_FUNCTION_88_4();
      v11 = sub_231D4BF18(v9, v10);
      v12 = OUTLINED_FUNCTION_80();
      sub_231D4BF18(v12, v13);
      v14 = OUTLINED_FUNCTION_86_4();
      [v14 v15];
      v16 = nullsub_1(v11);
      v18 = v17;
      v20 = v19;
      sub_231D51D90(sub_231D51E84);
      v21 = *(*v2 + 16);
      sub_231D51E3C(v21, sub_231D51E84);
      v22 = OUTLINED_FUNCTION_88_4();
      sub_231CF4354(v22, v23);
      v24 = OUTLINED_FUNCTION_80();
      sub_231CF4354(v24, v25);
      v26 = *v2;
      *(v26 + 16) = v21 + 1;
      v27 = (v26 + 24 * v21);
      v27[4] = v16;
      v27[5] = v18;
      v27[6] = v20;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_88_4();
      sub_231CF4354(v28, v29);
    }
  }

  return *MEMORY[0x277D42690];
}

id sub_231D52B5C()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  sub_231D4C6B8();
  [v0 bindNamedParam:":bundleId" toInteger:v9];
  OUTLINED_FUNCTION_81_4();
  sub_231D4C6B8();
  [v0 bindNamedParam:":title" toInteger:v10];
  sub_231E0F870();

  return [v0 bindNamedParam:":timestamp" toDouble:?];
}

id sub_231D52C2C(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  sub_231D4C6B8();
  [a1 bindNamedParam:":bundleId" toInteger:v7];
  sub_231D4C6B8();

  return [a1 bindNamedParam:":title" toInteger:v8];
}

uint64_t sub_231D52CAC(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  *(v2 + 8) = 0;
  return *MEMORY[0x277D42698];
}

id sub_231D52CF0(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_231D4C6B8();

  return [a1 bindNamedParam:":bundleId" toInteger:v5];
}

id sub_231D52D40(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  sub_231D54608(":bundleId", v3, v4, a1);
  OUTLINED_FUNCTION_64_3();
  sub_231D54608(v12, v13, v14, a1);
  sub_231D54608(":domainId", v7, v8, a1);
  sub_231D54608(":sectionId", v9, v10, a1);
  v15 = OUTLINED_FUNCTION_99_3();

  return [v15 v16];
}

uint64_t sub_231D52E04(void *a1)
{
  v2 = *(v1 + 16);
  [a1 getDoubleForColumnName:"date" table:0];
  *v2 = v3;
  *(v2 + 8) = 0;
  return *MEMORY[0x277D42690];
}

id sub_231D52E50()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v3 = v0[2];
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v11 = *(v0 + 10);
  v12 = *(v0 + 11);
  [v1 bindNamedParam:":date" toDouble:v3];
  OUTLINED_FUNCTION_64_3();
  sub_231D54608(v13, v14, v15, v2);
  sub_231D54608(":threadId", v6, v7, v2);
  sub_231D54608(":domainId", v8, v9, v2);
  sub_231D54608(":sectionId", v10, v11, v2);
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_113();

  return [v16 v17];
}

id sub_231D52F34()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v2);
  v5 = *(v1 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_231D54608(":bundleId", *(v1 + 16), *(v1 + 24), v0);
  sub_231E0F870();
  result = [v0 bindNamedParam:":threshold" toDouble:?];
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {

    return [v0 bindNamedParam:":limit" toInteger:v5 - 1];
  }

  return result;
}

id sub_231D53020()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_231D54608(":bundleId", *(v1 + 16), *(v1 + 24), v0);
  sub_231E0F870();
  [v0 bindNamedParam:":threshold" toDouble:?];
  v5 = sub_231D128E4();

  return [v0 bindNamedParam:":limit" toInteger:v5];
}

uint64_t objectdestroy_557Tm()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = OUTLINED_FUNCTION_59_6();
  v8(v7);
  v9 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

id sub_231D53190(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_4();
  v5 = sub_231E0F950();
  OUTLINED_FUNCTION_47(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_231D54608(":bundleId", *(v2 + 16), *(v2 + 24), v3);
  sub_231E0F870();

  return [v3 bindNamedParam:a2 toDouble:?];
}

uint64_t objectdestroy_661Tm()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

id sub_231D532DC()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v2);
  v5 = (v1 + ((*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  sub_231E0F870();
  [v0 bindNamedParam:":date" toDouble:?];
  OUTLINED_FUNCTION_64_3();

  return sub_231D54608(v8, v9, v10, v0);
}

id sub_231D5339C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  [a1 bindNamedParam:":n" toInteger:v2];
  v4 = OUTLINED_FUNCTION_99_3();

  return [v4 v5];
}

void sub_231D53400()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_231D502D0();
}

void sub_231D53408(void *a1)
{
  v3 = **(v1 + 16);

  sub_231D50730(v4);

  v5 = sub_231E11850();

  [a1 bindNamedParam:":pks" toNSArray:v5];
}

uint64_t sub_231D534A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231D534E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231D53530(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationPipeline.Request();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_231D5358C()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_6(v8);
  v11 = v2 + ((*(v10 + 64) + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_231E0F870();
  [v0 bindNamedParam:":date" toDouble:?];
  sub_231DBDCD8();
  OUTLINED_FUNCTION_103_2(":spotlightUniqueId", v16, v15, v16);
  sub_231DBDFFC();
  if (v17)
  {
    v18 = sub_231E115F0();
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_99_3();
  [v19 v20];

  sub_231DBE320();
  if (v21)
  {
    v22 = sub_231E115F0();
  }

  else
  {
    v22 = 0;
  }

  v23 = OUTLINED_FUNCTION_99_3();
  [v23 v24];

  sub_231D54668(":payload", v12, v13, v0);

  return [v0 bindNamedParam:":isRetry" toInteger:v14];
}

uint64_t objectdestroy_78Tm()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_231D53810()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_231E0F870();

  return [v0 bindNamedParam:":threshold" toDouble:?];
}

uint64_t sub_231D53888(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  return *MEMORY[0x277D42698];
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unsigned __int16 *getEnumTagSinglePayload for SummarizationPipelineDatabaseError(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for SummarizationPipelineDatabaseError(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
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
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_231D53A64(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_231D53A84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

uint64_t sub_231D53AF0(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_231D53B88(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231D53C68(uint64_t a1, unint64_t *a2)
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

void *sub_231D53CB4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  result = sub_231D4BE70(&v4, (a2 >> 51) & 0x1F);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_231D53D2C(uint64_t a1, uint64_t a2)
{
  result = sub_231E0F530();
  v5 = result;
  if (result)
  {
    result = sub_231E0F550();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_231E0F540();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return sub_231D4BE70(v5, v9 / 8);
}

uint64_t sub_231D53DC4(uint64_t a1)
{
  v2 = sub_231E0F530();
  if (v2)
  {
    v3 = v2;
    result = sub_231E0F550();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_231E0F540();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_231D53E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_231E0F790();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_231E0F560();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_231E0F520();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_231E0F7E0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_231D53EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_231D54358(sub_231D547B8, v5, a1, a2);
}

uint64_t sub_231D53F4C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_231CF4354(v6, v5);
      *v4 = xmmword_231E1C970;
      sub_231CF4354(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_231E0F530() && __OFSUB__(v6, sub_231E0F550()))
      {
        goto LABEL_24;
      }

      v13 = sub_231E0F560();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_231E0F510();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_231D543BC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_231CF4354(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_231E1C970;
      sub_231CF4354(0, 0xC000000000000000);
      sub_231E0F7A0();
      v6 = v20;
      v9 = sub_231D543BC(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_231CF4354(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_231D54310(uint64_t result)
{
  if (result)
  {
    result = sub_231E11D80();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_231D54358(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_231D543BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_231E0F530();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_231E0F550();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_231E0F540();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_231D54470(char *a1, int64_t a2, char a3)
{
  result = sub_231D54490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231D54490(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD74DB0, &qword_231E1CA88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_231D5459C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E115F0();

  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_231D54608(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E115F0();
  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_231D54668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E0F820();
  v7 = [a4 bindNamedParam:a1 toNSData:v6];

  return v7;
}

uint64_t sub_231D546C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_59_0();
  v8(v7);
  return a2;
}

void *sub_231D54724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_231D53EF8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_231D54778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_231D54310(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_231D547D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_59_0();
  v8(v7);
  return a2;
}

uint64_t sub_231D54834(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_231D54848(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  v4 = a1;

  return *MEMORY[0x277D42698];
}

id OUTLINED_FUNCTION_8_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *OUTLINED_FUNCTION_10_12(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_7()
{
  v3 = *(v1 - 136);

  return sub_231D546C8(v3, v0, type metadata accessor for EntityKind);
}

uint64_t OUTLINED_FUNCTION_57_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v16 - 88);
  sub_231CB7448(a13);
  sub_231CB7448(a9);
  sub_231CB7448(v14);
  sub_231CB7448(a14);
  sub_231CB7448(a10);
  return sub_231CB7448(v15);
}

id OUTLINED_FUNCTION_69_4(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{

  return [a13 a2];
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(v3 - 152) = a1;
  v4 = *(v1 + 16);
  return v2;
}

id OUTLINED_FUNCTION_71_4(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  v5 = *(v2 + 32);
  return a1 + v1;
}

uint64_t OUTLINED_FUNCTION_73_3()
{
}

size_t OUTLINED_FUNCTION_74_1()
{
  v6 = *(*v0 + 16);

  return sub_231D51DEC(v6, v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_231E0F950();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  *(v3 - 144) = a1;
  v4 = *(v1 + 16);
  return v2;
}

id OUTLINED_FUNCTION_80_2(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{

  return [a15 a2];
}

id OUTLINED_FUNCTION_84_3(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 144);

  return [v6 a2];
}

uint64_t OUTLINED_FUNCTION_100_4()
{
}

uint64_t OUTLINED_FUNCTION_101_4()
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_231E0F950();
}

id OUTLINED_FUNCTION_103_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_231D5459C(a1, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_105_4()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_106_4()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_116_4()
{
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_118_4()
{
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return swift_allocObject();
}

uint64_t sub_231D553F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = sub_231E0F950();
  v5[8] = v6;
  OUTLINED_FUNCTION_6(v6);
  v5[9] = v7;
  v9 = *(v8 + 64);
  v5[10] = OUTLINED_FUNCTION_55();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  v5[11] = OUTLINED_FUNCTION_55();
  v13 = sub_231E10370();
  v5[12] = v13;
  OUTLINED_FUNCTION_6(v13);
  v5[13] = v14;
  v16 = *(v15 + 64);
  v5[14] = OUTLINED_FUNCTION_69();
  v5[15] = swift_task_alloc();
  v17 = sub_231E106A0();
  v5[16] = v17;
  OUTLINED_FUNCTION_6(v17);
  v5[17] = v18;
  v20 = *(v19 + 64);
  v5[18] = OUTLINED_FUNCTION_69();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v21 = sub_231E107F0();
  v5[22] = v21;
  OUTLINED_FUNCTION_6(v21);
  v5[23] = v22;
  v24 = *(v23 + 64);
  v5[24] = OUTLINED_FUNCTION_69();
  v5[25] = swift_task_alloc();
  v25 = sub_231E104A0();
  v5[26] = v25;
  OUTLINED_FUNCTION_6(v25);
  v5[27] = v26;
  v28 = *(v27 + 64);
  v5[28] = OUTLINED_FUNCTION_55();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E28, &unk_231E1CAF0);
  v5[29] = v29;
  OUTLINED_FUNCTION_47(v29);
  v31 = *(v30 + 64);
  v5[30] = OUTLINED_FUNCTION_55();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  v5[31] = OUTLINED_FUNCTION_69();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D556B0, 0, 0);
}

uint64_t sub_231D556B0()
{
  if (sub_231D56880(1, *(v0 + 48)))
  {
    OUTLINED_FUNCTION_8_14();
    v1 = 40;
    goto LABEL_3;
  }

  v2 = *(v0 + 56);
  if ((sub_231D6DA98() & 1) == 0)
  {
    v3 = *(v0 + 56);
    v4 = sub_231E10550();
    if (v4 != 2 && (v4 & 1) != 0)
    {
      OUTLINED_FUNCTION_8_14();
      v1 = 15;
LABEL_3:
      v214 = v1;
LABEL_99:
      v154 = *(v0 + 256);
      v153 = *(v0 + 264);
      v156 = *(v0 + 240);
      v155 = *(v0 + 248);
      v157 = *(v0 + 224);
      v159 = *(v0 + 192);
      v158 = *(v0 + 200);
      v160 = *(v0 + 160);
      v161 = *(v0 + 168);
      v162 = *(v0 + 152);
      v203 = *(v0 + 144);
      v205 = *(v0 + 120);
      v207 = *(v0 + 112);
      v209 = *(v0 + 88);
      v213 = *(v0 + 80);

      v163 = *(v0 + 8);

      return v163(v214, 0, v220);
    }

    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v11 = *(v0 + 56);
    sub_231E10510();
    (*(v10 + 104))(v6, *MEMORY[0x277D42330], v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    v12 = *(v8 + 48);
    v13 = OUTLINED_FUNCTION_57();
    sub_231D56C68(v13, v14);
    sub_231D56C68(v6, v7 + v12);
    if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
    {
      v15 = *(v0 + 264);
      v16 = *(v0 + 208);
      sub_231CE1118(*(v0 + 256), &qword_27DD74A80, &unk_231E230E0);
      sub_231CE1118(v15, &qword_27DD74A80, &unk_231E230E0);
      if (__swift_getEnumTagSinglePayload(v7 + v12, 1, v16) == 1)
      {
        sub_231CE1118(*(v0 + 240), &qword_27DD74A80, &unk_231E230E0);
LABEL_111:
        OUTLINED_FUNCTION_8_14();
        v1 = 16;
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    v17 = *(v0 + 208);
    sub_231D56C68(*(v0 + 240), *(v0 + 248));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7 + v12, 1, v17);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 248);
    if (EnumTagSinglePayload == 1)
    {
      v22 = *(v0 + 208);
      v23 = *(v0 + 216);
      sub_231CE1118(*(v0 + 256), &qword_27DD74A80, &unk_231E230E0);
      sub_231CE1118(v19, &qword_27DD74A80, &unk_231E230E0);
      v24 = *(v23 + 8);
      v25 = OUTLINED_FUNCTION_102_0();
      v26(v25);
LABEL_13:
      sub_231CE1118(*(v0 + 240), &qword_27DD74E28, &unk_231E1CAF0);
      goto LABEL_14;
    }

    v220 = *(v0 + 240);
    v189 = *(v0 + 216);
    v188 = *(v0 + 224);
    v190 = *(v0 + 208);
    (*(v189 + 32))(v188, v7 + v12, v190);
    sub_231D57154(&qword_2814CB018, MEMORY[0x277D42338]);
    v191 = sub_231E115D0();
    v192 = *(v189 + 8);
    v192(v188, v190);
    sub_231CE1118(v20, &qword_27DD74A80, &unk_231E230E0);
    sub_231CE1118(v19, &qword_27DD74A80, &unk_231E230E0);
    v193 = OUTLINED_FUNCTION_102_0();
    (v192)(v193);
    sub_231CE1118(v220, &qword_27DD74A80, &unk_231E230E0);
    if (v191)
    {
      goto LABEL_111;
    }
  }

LABEL_14:
  v27 = *(v0 + 56);
  v202 = **(v0 + 32);
  v28 = *(v202 + 16);
  v29 = *(sub_231E104C0() + 16);
  v204 = v28;
  if (v29)
  {
    v30 = *(v0 + 184);
    v32 = *(v30 + 16);
    v31 = v30 + 16;
    v221 = v32;
    v33 = *(v31 + 64);
    OUTLINED_FUNCTION_79();
    v36 = v34 + v35;
    v215 = *(v31 + 56);
    v37 = MEMORY[0x277D84F90];
    do
    {
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v221(v38, v36, v39);
      v40 = sub_231E107A0();
      v42 = v41;
      (*(v31 - 8))(v38, v39);
      if (v42)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_231CE0B9C(0, *(v37 + 2) + 1, 1, v37);
        }

        v44 = *(v37 + 2);
        v43 = *(v37 + 3);
        if (v44 >= v43 >> 1)
        {
          v37 = sub_231CE0B9C((v43 > 1), v44 + 1, 1, v37);
        }

        *(v37 + 2) = v44 + 1;
        v45 = &v37[16 * v44];
        *(v45 + 4) = v40;
        *(v45 + 5) = v42;
      }

      v36 += v215;
      --v29;
    }

    while (v29);

    v28 = v204;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v46 = *(v0 + 56);
  v197 = sub_231DC3C70(v37);

  if (sub_231D56968())
  {
    v47 = *(v0 + 56);
    sub_231E10640();
    v196 = sub_231E116F0();

    if (v28)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v196 = 0;
    if (v28)
    {
LABEL_27:
      v48 = *(v0 + 184);
      v49 = *(v0 + 136);
      v216 = *(v49 + 16);
      v50 = *(v49 + 80);
      OUTLINED_FUNCTION_79();
      v52 = v202 + v51;
      v210 = *(v53 + 56);
      v54 = (v53 - 8);
      v55 = MEMORY[0x277D84F90];
      do
      {
        v56 = *(v0 + 168);
        v57 = *(v0 + 128);
        v216(v56, v52, v57);
        v58 = sub_231E104C0();
        result = (*v54)(v56, v57);
        v60 = *(v58 + 16);
        v61 = *(v55 + 16);
        v62 = v61 + v60;
        if (__OFADD__(v61, v60))
        {
          goto LABEL_113;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v62 > *(v55 + 24) >> 1)
        {
          if (v61 <= v62)
          {
            v63 = v61 + v60;
          }

          else
          {
            v63 = v61;
          }

          result = sub_231D2E2AC(result, v63, 1, v55);
          v55 = result;
        }

        if (*(v58 + 16))
        {
          if ((*(v55 + 24) >> 1) - *(v55 + 16) < v60)
          {
            goto LABEL_115;
          }

          v64 = *(v0 + 176);
          v65 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v66 = *(v48 + 72);
          swift_arrayInitWithCopy();

          if (v60)
          {
            v67 = *(v55 + 16);
            v68 = __OFADD__(v67, v60);
            v69 = v67 + v60;
            if (v68)
            {
              goto LABEL_116;
            }

            *(v55 + 16) = v69;
          }
        }

        else
        {

          if (v60)
          {
            goto LABEL_114;
          }
        }

        v52 += v210;
        --v28;
      }

      while (v28);
      goto LABEL_45;
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_45:
  v70 = *(v55 + 16);
  if (v70)
  {
    v71 = *(v0 + 184);
    v217 = *(v71 + 16);
    v72 = *(v71 + 80);
    OUTLINED_FUNCTION_79();
    v74 = v55 + v73;
    v211 = *(v75 + 56);
    v76 = (v75 - 8);
    v77 = MEMORY[0x277D84F90];
    do
    {
      v78 = *(v0 + 192);
      v79 = *(v0 + 176);
      v217(v78, v74, v79);
      v80 = sub_231E107A0();
      v82 = v81;
      (*v76)(v78, v79);
      if (v82)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_231CE0B9C(0, *(v77 + 2) + 1, 1, v77);
        }

        v84 = *(v77 + 2);
        v83 = *(v77 + 3);
        if (v84 >= v83 >> 1)
        {
          v77 = sub_231CE0B9C((v83 > 1), v84 + 1, 1, v77);
        }

        *(v77 + 2) = v84 + 1;
        v85 = &v77[16 * v84];
        *(v85 + 4) = v80;
        *(v85 + 5) = v82;
      }

      v74 += v211;
      --v70;
    }

    while (v70);
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  v86 = *(v0 + 136);
  v87 = *(v0 + 104);
  v194 = sub_231DC3C70(v77);

  v88 = 0;
  v199 = (v87 + 32);
  v200 = (v87 + 8);
  v201 = (v87 + 104);
  v89 = (v86 + 8);
  v206 = *MEMORY[0x277D422D8];
  v218 = v86;
  v195 = (v86 + 32);
  v198 = MEMORY[0x277D84F90];
  v91 = v202;
  v90 = v204;
  while (v90 != v88)
  {
    if (v88 >= *(v91 + 16))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v92 = *(v0 + 160);
    v93 = *(v0 + 128);
    v94 = *(v218 + 80);
    OUTLINED_FUNCTION_79();
    v208 = v95;
    v97 = *(v96 + 72);
    (*(v96 + 16))(v92, v91 + v95 + v97 * v88);
    v98 = sub_231E104D0();
    v100 = v99;
    v101 = sub_231E11620();
    if (!v100)
    {

      goto LABEL_67;
    }

    if (v98 == v101 && v100 == v102)
    {

      goto LABEL_73;
    }

    v104 = sub_231E12100();

    if (v104)
    {
LABEL_73:
      result = (*v89)(*(v0 + 160), *(v0 + 128));
      ++v88;
    }

    else
    {
LABEL_67:
      v105 = *(v0 + 160);
      v107 = *(v0 + 88);
      v106 = *(v0 + 96);
      sub_231E104E0();
      v108 = __swift_getEnumTagSinglePayload(v107, 1, v106);
      v109 = *(v0 + 120);
      v111 = *(v0 + 88);
      v110 = *(v0 + 96);
      if (v108 == 1)
      {
        v112 = *v201;
        (*v201)(v109, v206, *(v0 + 96));
        if (__swift_getEnumTagSinglePayload(v111, 1, v110) != 1)
        {
          sub_231CE1118(*(v0 + 88), &qword_27DD74A88, &unk_231E231A0);
        }
      }

      else
      {
        (*v199)(v109, *(v0 + 88), *(v0 + 96));
        v112 = *v201;
      }

      v114 = *(v0 + 112);
      v113 = *(v0 + 120);
      v115 = *(v0 + 96);
      v112(v114, v206, v115);
      OUTLINED_FUNCTION_1_20();
      sub_231D57154(&qword_2814CB020, v116);
      sub_231E117E0();
      sub_231E117E0();
      v117 = *v200;
      (*v200)(v114, v115);
      v117(v113, v115);
      v91 = v202;
      v90 = v204;
      if (*(v0 + 16) != *(v0 + 24))
      {
        goto LABEL_73;
      }

      v118 = *v195;
      (*v195)(*(v0 + 152), *(v0 + 160), *(v0 + 128));
      v119 = v198;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231D56E94(0, *(v198 + 16) + 1, 1);
        v119 = v198;
      }

      v121 = *(v119 + 16);
      v120 = *(v119 + 24);
      if (v121 >= v120 >> 1)
      {
        v124 = OUTLINED_FUNCTION_4_15(v120);
        sub_231D56E94(v124, v125, v126);
        v119 = v198;
      }

      ++v88;
      v122 = *(v0 + 152);
      v123 = *(v0 + 128);
      *(v119 + 16) = v121 + 1;
      v198 = v119;
      result = v118(v119 + v208 + v121 * v97, v122, v123);
    }
  }

  v127 = *(v198 + 16);
  if (v127)
  {
    v223 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v127, 0);
    v128 = v223;
    v129 = *(v218 + 80);
    OUTLINED_FUNCTION_79();
    v131 = v198 + v130;
    v212 = *(v132 + 72);
    v219 = *(v132 + 16);
    do
    {
      v133 = *(v0 + 144);
      v134 = *(v0 + 128);
      v219(v133, v131, v134);
      v135 = sub_231E10640();
      v137 = v136;
      (*v89)(v133, v134);
      v139 = *(v223 + 16);
      v138 = *(v223 + 24);
      if (v139 >= v138 >> 1)
      {
        v141 = OUTLINED_FUNCTION_4_15(v138);
        sub_231CC686C(v141, v142, v143);
      }

      *(v223 + 16) = v139 + 1;
      v140 = v223 + 16 * v139;
      *(v140 + 32) = v135;
      *(v140 + 40) = v137;
      v131 += v212;
      --v127;
    }

    while (v127);

    v90 = v204;
  }

  else
  {

    v128 = MEMORY[0x277D84F90];
  }

  v144 = sub_231DC3C70(v128);

  v145 = v196 + v197;
  if (__OFADD__(v196, v197))
  {
    goto LABEL_117;
  }

  v68 = __OFADD__(v145, v144);
  v146 = v145 + v144;
  if (v68)
  {
    goto LABEL_118;
  }

  v147 = v146 + v194;
  if (__OFADD__(v146, v194))
  {
LABEL_119:
    __break(1u);
  }

  else
  {
    if (v90)
    {
      v148 = sub_231CC8B48();
      if (v149)
      {
        v148 = sub_231D117E8();
      }

      if (v147 < v148)
      {
        v150 = 2;
LABEL_98:
        LODWORD(v220) = v150;
        v214 = v147;
        goto LABEL_99;
      }
    }

    else
    {
      v151 = sub_231CC8B18();
      if (v152)
      {
        v151 = sub_231D11754();
      }

      if (v147 < v151)
      {
        v150 = 1;
        goto LABEL_98;
      }
    }

    v164 = *(v0 + 56);
    v165 = sub_231E10520();
    if (v166)
    {
      v167 = v165;
      v168 = v166;
      v170 = *(v0 + 72);
      v169 = *(v0 + 80);
      v220 = *(v0 + 64);
      v171 = *(v0 + 32);
      v172 = v171[4];
      v173 = v171[5];
      __swift_project_boxed_opaque_existential_0(v171 + 1, v172);
      v174 = sub_231DE8A04(0);
      v176 = v175;
      sub_231D11E04();
      sub_231E0F8F0();
      LOBYTE(v167) = (*(v173 + 16))(v167, v168, v174, v176, v169, v172, v173);

      (*(v170 + 8))(v169, v220);
      if (v167)
      {
        OUTLINED_FUNCTION_8_14();
        v1 = 17;
        goto LABEL_3;
      }
    }

    v177 = *(v0 + 56);
    v178 = sub_231E10580();
    if (!v179)
    {
      v178 = sub_231DE8A04(0);
    }

    *(v0 + 272) = v179;
    v180 = *(v0 + 80);
    v181 = *(v0 + 40);
    sub_231DB0818(v178);
    v182 = *(*v181 + 136);
    v222 = (v182 + *v182);
    v183 = v182[1];
    v184 = swift_task_alloc();
    *(v0 + 280) = v184;
    *v184 = v0;
    v184[1] = sub_231D5655C;
    v185 = *(v0 + 80);
    v186 = *(v0 + 40);
    v187 = OUTLINED_FUNCTION_57();

    return v222(v187);
  }

  return result;
}

uint64_t sub_231D5655C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *v3;
  v5 = *(*v3 + 280);
  v6 = *(*v3 + 272);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 64);
  v32 = *v3;

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_3_17();
  v11 = *(v10 + 264);
  v12 = v4[32];
  v13 = v4[31];
  v14 = v4[30];
  v15 = v4[28];
  v16 = v4[25];
  v17 = v4[24];
  v18 = v4[21];
  v19 = v4[20];
  v28 = v4[19];
  OUTLINED_FUNCTION_3_17();
  v29 = *(v20 + 144);
  OUTLINED_FUNCTION_3_17();
  v30 = *(v21 + 120);
  OUTLINED_FUNCTION_3_17();
  v31 = *(v22 + 112);
  OUTLINED_FUNCTION_3_17();
  v24 = *(v23 + 88);
  v25 = v4[10];

  v26 = *(v32 + 8);

  return v26(a1, a2, a3);
}

BOOL sub_231D56880(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_231D2D37C();
  v4 = sub_231E11550();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v11 = *(*(a2 + 48) + v6);
    sub_231D2D3D0();
    v9 = sub_231E115D0();
    v4 = v6 + 1;
  }

  while ((v9 & 1) == 0);
  return v8;
}

BOOL sub_231D56968()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v1 = OUTLINED_FUNCTION_47(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v28 - v4;
  v6 = sub_231E10370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_231E104D0();
  v16 = v15;
  v17 = sub_231E11620();
  if (!v16)
  {

LABEL_9:
    sub_231E104E0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      v22 = *MEMORY[0x277D422D8];
      v23 = *(v7 + 104);
      v23(v13, v22, v6);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        sub_231CE1118(v5, &qword_27DD74A88, &unk_231E231A0);
      }
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      v22 = *MEMORY[0x277D422D8];
      v23 = *(v7 + 104);
    }

    v23(v11, v22, v6);
    OUTLINED_FUNCTION_1_20();
    sub_231D57154(v24, v25);
    sub_231E117E0();
    sub_231E117E0();
    v26 = *(v7 + 8);
    v27 = OUTLINED_FUNCTION_57();
    v26(v27);
    (v26)(v13, v6);
    return v28[1] == v28[0];
  }

  if (v14 == v17 && v16 == v18)
  {

    return 0;
  }

  v20 = sub_231E12100();

  result = 0;
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_231D56C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D56CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_231D56D84;

  return sub_231D553F0(a1, v9, a3, a4);
}

uint64_t sub_231D56D84()
{
  v1 = *(*v0 + 16);
  v6 = *v0;

  v2 = *(v6 + 8);
  v3 = OUTLINED_FUNCTION_57();

  return v4(v3);
}

size_t sub_231D56E94(size_t a1, int64_t a2, char a3)
{
  result = sub_231D56EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231D56EB4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
  v10 = *(sub_231E106A0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231E106A0() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231D5707C(a4 + v16, v8, v13 + v16, MEMORY[0x277D42368]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_231D5707C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231D57154(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231D571BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_231D571FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_231D57288()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_231D572BC()
{
  v1 = OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter;
  *&v0[v1] = [objc_opt_self() currentNotificationSettingsCenter];
  v2 = &v0[OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state];
  *v2 = 0;
  *(v2 + 2) = 514;
  v2[6] = 2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UserNotificationSettings();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [*&v3[OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter] addObserver_];
  return v3;
}

uint64_t sub_231D573E4(uint64_t (*a1)(void))
{
  v2 = sub_231D5742C();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1();
  }

  return v3 & 1;
}

void sub_231D57444()
{
  OUTLINED_FUNCTION_118();
  v4 = OUTLINED_FUNCTION_4_16();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_25();
  v10 = *v1;
  if (v10 == 2)
  {
    v11 = [*(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter) notificationSystemSettings];
    v12 = [v11 prioritizationSetting];

    LOBYTE(v10) = v12 == 2;
    *v1 = v12 == 2;
    sub_231DC4B64();
    v13 = OUTLINED_FUNCTION_2_19(v7);
    v14(v13);
    v15 = sub_231E10E10();
    v16 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v16))
    {
      v17 = OUTLINED_FUNCTION_5_19();
      *v17 = 67109120;
      v17[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v18, v19, "NotificationSettings: updated globalPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v20 = *(v7 + 8);
    v21 = OUTLINED_FUNCTION_140_0();
    v22(v21);
  }

  *v0 = v10;
  OUTLINED_FUNCTION_113();
}

void sub_231D575B4()
{
  OUTLINED_FUNCTION_118();
  v4 = OUTLINED_FUNCTION_4_16();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_25();
  LODWORD(v10) = *(v1 + 1);
  if (v10 == 2)
  {
    v11 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter);
    sub_231DE8A04(0);
    v12 = sub_231E115F0();

    v13 = [v11 notificationSourceWithIdentifier_];

    v14 = [v13 sourceSettings];
    v10 = [v14 notificationSettings];

    v15 = [v10 prioritizationSetting];
    LOBYTE(v10) = v15 == 2;
    *(v1 + 1) = v15 == 2;
    sub_231DC4B64();
    v16 = OUTLINED_FUNCTION_2_19(v7);
    v17(v16);
    v18 = sub_231E10E10();
    v19 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v19))
    {
      v20 = OUTLINED_FUNCTION_5_19();
      *v20 = 67109120;
      v20[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v21, v22, "NotificationSettings: updated messagesPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_140_0();
    v25(v24);
  }

  *v0 = v10;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D57790(void (*a1)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t))
{
  v3 = (v1 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state));
  a1(&v5, v3 + 1, v1);
  os_unfair_lock_unlock(v3);
  return v5;
}

void sub_231D577F4()
{
  OUTLINED_FUNCTION_118();
  v4 = OUTLINED_FUNCTION_4_16();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_25();
  LODWORD(v10) = *(v1 + 2);
  if (v10 == 2)
  {
    v11 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter);
    sub_231DE8A04(1);
    v12 = sub_231E115F0();

    v13 = [v11 notificationSourceWithIdentifier_];

    v14 = [v13 sourceSettings];
    v10 = [v14 notificationSettings];

    v15 = [v10 prioritizationSetting];
    LOBYTE(v10) = v15 == 2;
    *(v1 + 2) = v15 == 2;
    sub_231DC4B64();
    v16 = OUTLINED_FUNCTION_2_19(v7);
    v17(v16);
    v18 = sub_231E10E10();
    v19 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v19))
    {
      v20 = OUTLINED_FUNCTION_5_19();
      *v20 = 67109120;
      v20[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v21, v22, "NotificationSettings: updated mailPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_140_0();
    v25(v24);
  }

  *v0 = v10;
  OUTLINED_FUNCTION_113();
}

void sub_231D579B8()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = sub_231E10E30();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = sub_231DE8A04(0);
  v15 = sub_231D24924(v13, v14, v3);

  v16 = &unk_2814CB000;
  if (v15)
  {
    v45 = v3;
    sub_231DC4B64();
    v17 = OUTLINED_FUNCTION_2_19(v7);
    v18(v17);
    v19 = sub_231E10E10();
    v20 = sub_231E11AF0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v0;
      v23 = v22;
      v46 = v22;
      *v21 = 136315138;
      v24 = sub_231DE8A04(0);
      v26 = sub_231CB5000(v24, v25, &v46);
      v16 = &unk_2814CB000;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_231CAE000, v19, v20, "NotificationSettings: didUpdateNotificationSourceIdentifiers for %s, invalidating cache", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v1 = v44;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    v27 = *(v7 + 8);
    v28 = OUTLINED_FUNCTION_140_0();
    v29(v28);
    v30 = v1 + v16[401];
    os_unfair_lock_lock(v30);
    *(v30 + 5) = 2;
    os_unfair_lock_unlock(v30);
    v3 = v45;
  }

  v31 = sub_231DE8A04(1);
  v33 = sub_231D24924(v31, v32, v3);

  if (v33)
  {
    v34 = sub_231DC4B64();
    (*(v7 + 16))(v12, v34, v4);
    v35 = sub_231E10E10();
    v36 = sub_231E11AF0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315138;
      v39 = sub_231DE8A04(1);
      v41 = sub_231CB5000(v39, v40, &v46);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_231CAE000, v35, v36, "NotificationSettings: didUpdateNotificationSourceIdentifiers for %s, invalidating cache", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_30();
      v16 = &unk_2814CB000;
      OUTLINED_FUNCTION_30();
    }

    (*(v7 + 8))(v12, v4);
    v42 = v1 + v16[401];
    os_unfair_lock_lock(v42);
    *(v42 + 6) = 2;
    os_unfair_lock_unlock(v42);
  }

  OUTLINED_FUNCTION_113();
}

void sub_231D57D94(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state;
  os_unfair_lock_lock(v4);
  sub_231D57DE8((v4 + 4), a2);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_231D57DE8(BOOL *a1, void *a2)
{
  v5 = sub_231E10E30();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_25();
  v11 = [a2 prioritizationSetting];
  *a1 = v11 == 2;
  v12 = sub_231DC4B64();
  (*(v8 + 16))(v2, v12, v5);
  v13 = sub_231E10E10();
  v14 = sub_231E11AF0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 == 2;
    _os_log_impl(&dword_231CAE000, v13, v14, "NotificationSettings: didUpdate systemSettings, globalPriorityEnabled: %{BOOL}d", v15, 8u);
    OUTLINED_FUNCTION_30();
  }

  return (*(v8 + 8))(v2, v5);
}

id sub_231D57FCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationSettings.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v3 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v3 = -2;
  }

  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotificationSettings.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 8u);
}

BOOL OUTLINED_FUNCTION_7_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_231D58230()
{
  v0 = sub_231E11F20();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_231D5827C(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6172546F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231D58334(unsigned __int8 a1, char a2)
{
  v2 = 1818845549;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1818845549;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v5 = 0x6163696669746F6ELL;
      v3 = 0xEC0000006E6F6974;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v3 = 0x8000000231E35630;
      break;
    case 4:
      v5 = 0x6172546F69647561;
      v3 = 0xEF7470697263736ELL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v2 = 0x6163696669746F6ELL;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v6 = 0x8000000231E35630;
      break;
    case 4:
      v2 = 0x6172546F69647561;
      v6 = 0xEF7470697263736ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231E12100();
  }

  return v8 & 1;
}

uint64_t sub_231D584DC(char a1)
{
  sub_231E12220();
  sub_231D5827C(a1);
  sub_231E116E0();

  return sub_231E12250();
}

uint64_t sub_231D58548()
{
  sub_231E116E0();
}

uint64_t sub_231D58630(uint64_t a1, char a2)
{
  sub_231E12220();
  sub_231D5827C(a2);
  sub_231E116E0();

  return sub_231E12250();
}

uint64_t sub_231D58690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231D58230();
  *a2 = result;
  return result;
}

unint64_t sub_231D586C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231D5827C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_231D586EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {

    v5 = a3;

    v6 = a4;
  }
}

uint64_t sub_231D58740()
{
  switch(*(v0 + 8))
  {
    case 2:
    case 3:
      v3 = [*v0 attributeSet];

      result = sub_231D59468(v3);
      break;
    default:
      v1 = *v0;

      result = sub_231D59404(v1);
      break;
  }

  return result;
}

uint64_t sub_231D587BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v88 = a1;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EA0, &unk_231E1CC10);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v87 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74478, &qword_231E15D98);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v86 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  v34 = OUTLINED_FUNCTION_47(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v86 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  v44 = OUTLINED_FUNCTION_47(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v86 - v51;
  v53 = *(v3 + 8);
  v54 = *v3;
  switch(v53)
  {
    case 1:
      sub_231D164A4(v88, 0, v42);
      sub_231D594D8(v42, v39, &qword_27DD74510, &qword_231E1E2D0);
      v58 = sub_231E106A0();
      OUTLINED_FUNCTION_7_18(v39);
      if (v59)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v82 = *(v81 + 32);
      v83 = OUTLINED_FUNCTION_9_11();
      v84(v83, v39, v58);
      type metadata accessor for EntityKind();
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 2:
      sub_231D1E298(v88, 0, v32);
      sub_231D594D8(v32, v29, &qword_27DD74BE0, &qword_231E1CC20);
      v58 = sub_231E10A30();
      OUTLINED_FUNCTION_7_18(v29);
      if (v59)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v71 = *(v70 + 32);
      v72 = OUTLINED_FUNCTION_9_11();
      v73(v72, v29, v58);
      type metadata accessor for EntityKind();
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 3:
      sub_231D179CC(v22);
      sub_231D594D8(v22, v19, &qword_27DD74478, &qword_231E15D98);
      v58 = sub_231E10BE0();
      OUTLINED_FUNCTION_7_18(v19);
      if (v59)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v75 = *(v74 + 32);
      v76 = OUTLINED_FUNCTION_9_11();
      v77(v76, v19, v58);
      type metadata accessor for EntityKind();
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 4:
      v64 = OUTLINED_FUNCTION_155();
      sub_231D6FAE4(v64 & 1, v12);
      v65 = v87;
      sub_231D594D8(v12, v87, &qword_27DD74EA0, &unk_231E1CC10);
      v58 = sub_231E10AE0();
      OUTLINED_FUNCTION_7_18(v65);
      if (v59)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v67 = *(v66 + 32);
      v68 = OUTLINED_FUNCTION_9_11();
      v69(v68, v65, v58);
      type metadata accessor for EntityKind();
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    default:
      v55 = OUTLINED_FUNCTION_155();
      v56 = v55;
      v57 = sub_231D27B60(v55);
      sub_231D27B64(v88, v56 & 1, v86, v57);
      sub_231D594D8(v52, v49, &qword_27DD74580, &qword_231E17110);
      v58 = sub_231E10340();
      OUTLINED_FUNCTION_7_18(v49);
      if (v59)
      {
LABEL_12:
        v78 = type metadata accessor for EntityKind();
        v79 = v89;
        v80 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_16();
        v61 = *(v60 + 32);
        v62 = OUTLINED_FUNCTION_9_11();
        v63(v62, v49, v58);
        type metadata accessor for EntityKind();
        OUTLINED_FUNCTION_5_20();
LABEL_13:
        swift_storeEnumTagMultiPayload();
        v79 = v54;
        v80 = 0;
        v78 = v58;
      }

      return __swift_storeEnumTagSinglePayload(v79, v80, 1, v78);
  }
}

uint64_t sub_231D58CFC()
{
  switch(*(v0 + 8))
  {
    case 1:
      v7 = swift_task_alloc();
      v1[3] = v7;
      *v7 = v1;
      OUTLINED_FUNCTION_0_26(v7);

      result = sub_231D20408();
      break;
    case 2:
      v5 = swift_task_alloc();
      v1[4] = v5;
      *v5 = v1;
      OUTLINED_FUNCTION_0_26(v5);

      result = sub_231D21DC8();
      break;
    case 3:
      v6 = swift_task_alloc();
      v1[5] = v6;
      *v6 = v1;
      OUTLINED_FUNCTION_0_26(v6);

      result = sub_231D24A10();
      break;
    case 4:
      v4 = swift_task_alloc();
      v1[6] = v4;
      *v4 = v1;
      OUTLINED_FUNCTION_0_26(v4);

      result = sub_231D25400();
      break;
    default:
      v2 = swift_task_alloc();
      v1[2] = v2;
      *v2 = v1;
      OUTLINED_FUNCTION_0_26(v2);

      result = sub_231D1EDF0();
      break;
  }

  return result;
}

uint64_t sub_231D58F8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_8_8();

  return v6(v5);
}

uint64_t sub_231D5906C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_8_8();

  return v6(v5);
}

uint64_t sub_231D5914C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_8_8();

  return v6(v5);
}

uint64_t sub_231D5922C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_8_8();

  return v6(v5);
}

uint64_t sub_231D5930C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_8_8();

  return v6(v5);
}

uint64_t sub_231D593EC@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_231D59404(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D59468(void *a1)
{
  v2 = [a1 creator];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D594D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_231D59544()
{
  result = qword_27DD74EA8;
  if (!qword_27DD74EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74EA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization14SpotlightIndexVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchableItem.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231D596CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_231E0F950();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D59790, 0, 0);
}

uint64_t sub_231D59790()
{
  v1 = v0[4];
  if ((sub_231CBA180() & 1) != 0 && sub_231D56880(1, v0[3]))
  {
    v2 = 13;
    v3 = 55;
LABEL_8:
    v9 = v0[7];

    v10 = v0[1];

    return v10(v3, 0, v2);
  }

  v4 = v0[4];
  sub_231E10AA0();
  v5 = sub_231E116F0();

  v6 = sub_231CC8B18();
  if (v7)
  {
    v6 = sub_231D11754();
  }

  v8 = v0[4];
  if (v5 < v6)
  {
    sub_231E10AA0();
    v3 = sub_231E116F0();

    v2 = 8;
    goto LABEL_8;
  }

  v12 = sub_231E10A70();
  if (!v13)
  {
    v12 = sub_231DE8A04(2);
  }

  v14 = v12;
  v15 = v13;
  v0[8] = v13;
  v16 = v0[7];
  v17 = v0[2];
  sub_231DB0818(v12);
  v18 = *(*v17 + 136);
  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_231D599A4;
  v21 = v0[7];
  v22 = v0[2];

  return (v23)(v14, v15, v21, 0);
}

uint64_t sub_231D599A4()
{
  OUTLINED_FUNCTION_1_15();
  v2 = v1;
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  v12 = *v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[7];

  v9 = OUTLINED_FUNCTION_0_20();

  return v10(v9);
}

uint64_t sub_231D59B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_231D2D128;

  return sub_231D596CC(v7, a3, a4);
}

uint64_t sub_231D59BE0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_231D59C14()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EB0, &unk_231E1CDB8);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  v0[7] = OUTLINED_FUNCTION_69();
  v0[8] = swift_task_alloc();
  v6 = sub_231E0FAD0();
  v0[9] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_55();
  v10 = sub_231E0FAB0();
  v0[12] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v14 = sub_231E10B00();
  v0[16] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[17] = v15;
  v17 = *(v16 + 64);
  v0[18] = OUTLINED_FUNCTION_55();
  v18 = sub_231E10C70();
  v0[19] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[20] = v19;
  v21 = *(v20 + 64);
  v0[21] = OUTLINED_FUNCTION_55();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD8, &unk_231E1C5E0);
  v0[22] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[23] = v23;
  v25 = *(v24 + 64);
  v0[24] = OUTLINED_FUNCTION_55();
  v26 = sub_231E10AF0();
  v0[25] = v26;
  OUTLINED_FUNCTION_6(v26);
  v0[26] = v27;
  v29 = *(v28 + 64);
  v0[27] = OUTLINED_FUNCTION_69();
  v0[28] = swift_task_alloc();
  v30 = sub_231E10B30();
  v0[29] = v30;
  OUTLINED_FUNCTION_6(v30);
  v0[30] = v31;
  v33 = *(v32 + 64);
  v0[31] = OUTLINED_FUNCTION_55();
  v34 = sub_231E0FAE0();
  v0[32] = v34;
  OUTLINED_FUNCTION_6(v34);
  v0[33] = v35;
  v37 = *(v36 + 64);
  v0[34] = OUTLINED_FUNCTION_69();
  v0[35] = swift_task_alloc();
  v38 = sub_231E0FEA0();
  v0[36] = v38;
  OUTLINED_FUNCTION_47(v38);
  v40 = *(v39 + 64);
  v0[37] = OUTLINED_FUNCTION_55();
  v41 = sub_231E0FEC0();
  v0[38] = v41;
  OUTLINED_FUNCTION_6(v41);
  v0[39] = v42;
  v44 = *(v43 + 64);
  v0[40] = OUTLINED_FUNCTION_69();
  v0[41] = swift_task_alloc();
  v45 = sub_231E0FEE0();
  v0[42] = v45;
  OUTLINED_FUNCTION_6(v45);
  v0[43] = v46;
  v48 = *(v47 + 64);
  v0[44] = OUTLINED_FUNCTION_69();
  v0[45] = swift_task_alloc();
  v49 = sub_231E0FF00();
  v0[46] = v49;
  OUTLINED_FUNCTION_6(v49);
  v0[47] = v50;
  v52 = *(v51 + 64);
  v0[48] = OUTLINED_FUNCTION_69();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v53 = sub_231E10720();
  v0[51] = v53;
  OUTLINED_FUNCTION_6(v53);
  v0[52] = v54;
  v56 = *(v55 + 64);
  v0[53] = OUTLINED_FUNCTION_69();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v57 = sub_231E10E30();
  v0[58] = v57;
  OUTLINED_FUNCTION_6(v57);
  v0[59] = v58;
  v60 = *(v59 + 64);
  v0[60] = OUTLINED_FUNCTION_69();
  v0[61] = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v61, v62, v63);
}

uint64_t sub_231D5A140()
{
  v222 = v0;
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[55];
  v7 = v0[51];
  v8 = v0[52];
  v9 = v0[6];
  v208 = sub_231CB4EEC();
  v202 = *(v3 + 16);
  v202(v1);
  v10 = *(v8 + 16);
  v10(v4, v9, v7);
  v10(v5, v9, v7);
  v217 = v10;
  v10(v6, v9, v7);
  v11 = sub_231E10E10();
  v12 = sub_231E11AF0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[59];
  v15 = v0[57];
  v191 = v0[56];
  v196 = v0[55];
  v17 = v0[51];
  v16 = v0[52];
  if (v13)
  {
    v169 = v0[61];
    v172 = v0[58];
    v18 = v0[50];
    v186 = v0[47];
    v178 = v0[46];
    v19 = v0[45];
    v158 = v0[41];
    v159 = v0[38];
    log = v0[42];
    v162 = v0[37];
    v163 = v0[36];
    v157 = OUTLINED_FUNCTION_67();
    v220 = swift_slowAlloc();
    *v157 = 136315650;
    sub_231E10700();
    sub_231E0FEF0();
    v182 = *(v186 + 8);
    v182(v18, v178);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    loga = v11;
    v20 = *(v16 + 8);
    v21 = OUTLINED_FUNCTION_20_10();
    v20(v21);
    v22 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v22, v23, v24);
    OUTLINED_FUNCTION_10_1();
    *(v157 + 4) = v18;
    *(v157 + 12) = 2080;
    sub_231E10700();
    sub_231E0FED0();
    v182(v18, v178);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    v25 = OUTLINED_FUNCTION_20_10();
    v20(v25);
    v26 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v26, v27, v28);
    OUTLINED_FUNCTION_10_1();
    *(v157 + 14) = v18;
    *(v157 + 22) = 2080;
    sub_231E10700();
    sub_231E0FEB0();
    v182(v18, v178);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    v29 = OUTLINED_FUNCTION_20_10();
    v20(v29);
    v30 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v30, v31, v32);
    OUTLINED_FUNCTION_10_1();
    *(v157 + 24) = v18;
    _os_log_impl(&dword_231CAE000, loga, v12, "SummarizationFeedbackManager: Handling feedback request; sentiment: %s feature: %s uiKind: %s", v157, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v33 = *(v14 + 8);
    v33(v169, v172);
  }

  else
  {

    v20 = *(v16 + 8);
    (v20)(v196, v17);
    (v20)(v191, v17);
    v34 = OUTLINED_FUNCTION_20_10();
    v20(v34);
    v33 = *(v14 + 8);
    v35 = OUTLINED_FUNCTION_90_0();
    (v33)(v35);
  }

  v36 = v0[54];
  v37 = v0[51];
  v38 = v0[6];
  (v202)(v0[60], v208, v0[58]);
  v39 = OUTLINED_FUNCTION_90_0();
  v217(v39);
  v40 = sub_231E10E10();
  v41 = sub_231E11AC0();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[60];
  v209 = v0[59];
  v213 = v0[58];
  v44 = v0[54];
  if (v42)
  {
    v203 = v0[60];
    v45 = v0[53];
    v192 = v0[52];
    v46 = v0[51];
    v187 = v20;
    v47 = OUTLINED_FUNCTION_9_1();
    v197 = v33;
    v48 = OUTLINED_FUNCTION_67();
    v220 = v48;
    *v47 = 136315138;
    (v217)(v45, v44, v46);
    v49 = sub_231E11680();
    v51 = v50;
    (v187)(v44, v46);
    v52 = sub_231CB5000(v49, v51, &v220);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_231CAE000, v40, v41, "SummarizationFeedbackManager: Handling feedback request: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v197(v203, v213);
  }

  else
  {
    v53 = v0[51];
    v54 = v0[52];

    (v20)(v44, v53);
    v33(v43, v213);
  }

  v55 = v0[28];
  v56 = v0[25];
  v57 = v0[26];
  v58 = v0[6];
  sub_231E10710();
  v59 = *(v57 + 88);
  v60 = OUTLINED_FUNCTION_25();
  v62 = v61(v60);
  if (v62 == *MEMORY[0x277D42468])
  {
    v63 = OUTLINED_FUNCTION_27_7();
    v64(v63);
    OUTLINED_FUNCTION_0();
    v65 = 0xD000000000000012;
LABEL_9:
    MEMORY[0x23837BD00](v65);
    goto LABEL_10;
  }

  if (v62 != *MEMORY[0x277D42470])
  {
    if (v62 == *MEMORY[0x277D42460])
    {
      v95 = OUTLINED_FUNCTION_27_7();
      v96(v95);
      v65 = 0xD00000000000001ALL;
    }

    else
    {
      if (v62 != *MEMORY[0x277D42458])
      {
        v135 = v0[27];
        v134 = v0[28];
        v136 = v0[25];
        v137 = v0[26];
        v139 = v0[5];
        v138 = v0[6];
        OUTLINED_FUNCTION_2_20();
        sub_231E10710();
        OUTLINED_FUNCTION_33();
        sub_231E11680();
        OUTLINED_FUNCTION_38_8();

        MEMORY[0x23837BD00](v220, v221);
        (*(v137 + 8))(v134, v136);
        goto LABEL_10;
      }

      v104 = v0[5];
      OUTLINED_FUNCTION_19_9();
      v65 = v105 + 6;
    }

    goto LABEL_9;
  }

  v68 = v0[49];
  v69 = v0[47];
  v71 = v0[39];
  v70 = v0[40];
  v215 = v0[38];
  v219 = v0[46];
  v72 = v0[23];
  v73 = v0[24];
  v74 = v0[22];
  v75 = v0[6];
  (*(v0[26] + 96))(v0[28], v0[25]);
  v76 = *(v72 + 32);
  v77 = OUTLINED_FUNCTION_20_10();
  v78(v77);
  sub_231E10700();
  sub_231E0FED0();
  v79 = *(v69 + 8);
  v79(v68, v219);
  v80 = (*(v71 + 88))(v70, v215);
  if (v80 != *MEMORY[0x277D42200])
  {
    if (v80 == *MEMORY[0x277D42208])
    {
      v98 = v0[23];
      v97 = v0[24];
      v99 = v0[22];
      v100 = v0[5];
      OUTLINED_FUNCTION_19_9();
      v103 = v102 | 0x20;
    }

    else
    {
      if (v80 != *MEMORY[0x277D421F8])
      {
        v140 = v0[50];
        v141 = v0[46];
        v142 = v0[41];
        v144 = v0[38];
        v143 = v0[39];
        v145 = v0[23];
        v212 = v0[24];
        v216 = v0[40];
        v146 = v79;
        v147 = v0[6];
        v200 = v0[5];
        v206 = v0[22];
        OUTLINED_FUNCTION_2_20();
        sub_231E10700();
        sub_231E0FED0();
        v148 = OUTLINED_FUNCTION_70();
        v146(v148);
        v149 = sub_231E11680();
        MEMORY[0x23837CC20](v149);

        MEMORY[0x23837BD00](v220, v221);
        (*(v145 + 8))(v212, v206);
        (*(v143 + 8))(v216, v144);
        goto LABEL_10;
      }

      v98 = v0[23];
      v127 = v0[24];
      v128 = v0[22];
      v129 = v0[5];
      OUTLINED_FUNCTION_19_9();
      v103 = v130 + 35;
    }

    MEMORY[0x23837BD00](v103, v101 | 0x8000000000000000);
    v131 = *(v98 + 8);
    v132 = OUTLINED_FUNCTION_48();
    v133(v132);
LABEL_10:
    OUTLINED_FUNCTION_3_20();
    v164 = v0[41];
    v165 = v0[40];
    v166 = v0[37];
    v167 = v0[35];
    v170 = v0[34];
    v173 = v0[31];
    v175 = v0[28];
    v179 = v0[27];
    v183 = v0[24];
    v188 = v0[21];
    v193 = v0[18];
    v198 = v0[15];
    v204 = v0[14];
    v210 = v0[11];
    v214 = v0[8];
    v218 = v0[7];

    OUTLINED_FUNCTION_19();

    return v66();
  }

  v184 = v0[48];
  v194 = v0[46];
  v189 = v0[44];
  v199 = v0[43];
  v205 = v0[42];
  v168 = v0[35];
  v211 = v79;
  v82 = v0[32];
  v81 = v0[33];
  v83 = v0[23];
  v171 = v0[31];
  v174 = v0[24];
  v84 = v0[21];
  v85 = v0[19];
  v86 = v0[20];
  v87 = v0[17];
  v88 = v0[18];
  v89 = v0[16];
  v176 = v0[6];
  v180 = v0[22];
  sub_231DE8A04(0);
  (*(v81 + 104))(v168, *MEMORY[0x277D085A8], v82);
  (*(v86 + 104))(v84, *MEMORY[0x277D424B0], v85);
  (*(v87 + 104))(v88, *MEMORY[0x277D42488], v89);
  sub_231E108C0();
  (*(v87 + 8))(v88, v89);
  (*(v86 + 8))(v84, v85);
  (*(v83 + 8))(v174, v180);
  sub_231E10700();
  sub_231E0FEF0();
  v211(v184, v194);
  v90 = (*(v199 + 88))(v189, v205);
  if (v90 == *MEMORY[0x277D42220])
  {
    v91 = v0[15];
    v92 = v0[12];
    v93 = v0[13];
    v94 = MEMORY[0x277D08510];
  }

  else
  {
    if (v90 == *MEMORY[0x277D42210])
    {
      v106 = v0[14];
      v107 = v0[15];
      v108 = v0[12];
      v109 = v0[13];
      v110 = [objc_opt_self() isInternalBuild];
      v111 = MEMORY[0x277D084E8];
      if (!v110)
      {
        v111 = MEMORY[0x277D084F8];
      }

      (*(v109 + 104))(v106, *v111, v108);
      v112 = *(v109 + 32);
      v113 = OUTLINED_FUNCTION_48();
      v114(v113);
      goto LABEL_28;
    }

    if (v90 != *MEMORY[0x277D42218])
    {
      v150 = v0[50];
      v151 = v0[45];
      v152 = v0[46];
      v153 = v0[43];
      v207 = v0[44];
      v177 = v0[42];
      v154 = v0[33];
      v195 = v0[32];
      v201 = v0[35];
      v155 = v0[30];
      v185 = v0[29];
      v190 = v0[31];
      v156 = v0[6];
      v181 = v0[5];

      OUTLINED_FUNCTION_2_20();
      sub_231E10700();
      sub_231E0FEF0();
      v211(v150, v152);
      sub_231E11680();
      OUTLINED_FUNCTION_38_8();

      MEMORY[0x23837BD00](v220, v221);
      (*(v155 + 8))(v190, v185);
      (*(v154 + 8))(v201, v195);
      (*(v153 + 8))(v207, v177);
      goto LABEL_10;
    }

    v91 = v0[15];
    v92 = v0[12];
    v93 = v0[13];
    v94 = MEMORY[0x277D084F8];
  }

  (*(v93 + 104))(v91, *v94, v92);
LABEL_28:
  v115 = v0[31];
  v116 = v0[10];
  v117 = v0[11];
  v119 = v0[8];
  v118 = v0[9];
  v120 = v0[7];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_231E10B10();
  v121 = sub_231E0FB20();
  __swift_storeEnumTagSinglePayload(v119, 0, 1, v121);
  sub_231E10B20();
  __swift_storeEnumTagSinglePayload(v120, 0, 1, v121);
  v122 = objc_allocWithZone(sub_231E0FB40());
  *v117 = sub_231E0FAF0();
  (*(v116 + 104))(v117, *MEMORY[0x277D08530], v118);
  v123 = *(MEMORY[0x277D08540] + 4);
  v124 = swift_task_alloc();
  v0[62] = v124;
  *v124 = v0;
  v124[1] = sub_231D5AFC0;
  v125 = v0[15];
  v126 = v0[11];

  return MEMORY[0x28215E828](v125, 1);
}

uint64_t sub_231D5AFC0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;
  *(v9 + 504) = v0;

  if (v0)
  {
    v10 = sub_231D5B2AC;
  }

  else
  {
    v10 = sub_231D5B0C8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_231D5B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  v31 = v30[33];
  v56 = v30[32];
  v58 = v30[35];
  v32 = v30[30];
  v54 = v30[31];
  v33 = v30[29];
  v34 = v30[15];
  v36 = v30[12];
  v35 = v30[13];
  v37 = v30[10];
  v38 = v30[11];
  v39 = v30[9];
  v40 = v30[5];
  sub_231E10810();
  (*(v37 + 8))(v38, v39);
  (*(v35 + 8))(v34, v36);
  (*(v32 + 8))(v54, v33);
  (*(v31 + 8))(v58, v56);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_17();
  v51 = v41;
  v52 = v30[15];
  v53 = v30[14];
  v55 = v30[11];
  v57 = v30[8];
  v59 = v30[7];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_12();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v51, v52, v53, v55, v57, v59, a28, a29, a30);
}

uint64_t sub_231D5B2AC()
{
  v1 = v0[63];
  v2 = v0[33];
  v15 = v0[32];
  v17 = v0[35];
  v3 = v0[30];
  v13 = v0[31];
  v11 = v0[29];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_231E11D70();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_0();
  MEMORY[0x23837CC20](0xD000000000000027);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  sub_231E11E90();
  MEMORY[0x23837BD00](v0[2], v0[3]);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v11);
  (*(v2 + 8))(v17, v15);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_17();
  v10 = v0[15];
  v12 = v0[14];
  v14 = v0[11];
  v16 = v0[8];
  v18 = v0[7];

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231D5B538()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_231E0F950();
  v1[15] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_69();
  v1[18] = swift_task_alloc();
  v8 = sub_231E0F4A0();
  v1[19] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10D30();
  v1[22] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[23] = v13;
  v15 = *(v14 + 64);
  v1[24] = OUTLINED_FUNCTION_69();
  v1[25] = swift_task_alloc();
  v16 = sub_231E10C60();
  v1[26] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[27] = v17;
  v19 = *(v18 + 64);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v20 = sub_231E10E30();
  v1[31] = v20;
  OUTLINED_FUNCTION_6(v20);
  v1[32] = v21;
  v23 = *(v22 + 64);
  v1[33] = OUTLINED_FUNCTION_69();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_231D5C358()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *v0;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D5C47C()
{
  v1 = *(v0 + 96);
  sub_231E10810();
  OUTLINED_FUNCTION_9_12();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231D5C55C()
{
  OUTLINED_FUNCTION_18();
  v1[111] = v0;
  v1[110] = v2;
  v1[109] = v3;
  v1[108] = v4;
  v1[107] = v5;
  v1[106] = v6;
  v7 = sub_231E10E30();
  v1[112] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[113] = v8;
  v10 = *(v9 + 64);
  v1[114] = OUTLINED_FUNCTION_69();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v11 = sub_231E0F4C0();
  v1[117] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[118] = v12;
  v14 = *(v13 + 64);
  v1[119] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EB8, &qword_231E1CE00);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v1[120] = OUTLINED_FUNCTION_55();
  v18 = sub_231E0F500();
  v1[121] = v18;
  OUTLINED_FUNCTION_6(v18);
  v1[122] = v19;
  v21 = *(v20 + 64);
  v1[123] = OUTLINED_FUNCTION_55();
  v22 = sub_231E11670();
  v1[124] = v22;
  OUTLINED_FUNCTION_6(v22);
  v1[125] = v23;
  v25 = *(v24 + 64);
  v1[126] = OUTLINED_FUNCTION_55();
  v26 = sub_231E0F710();
  v1[127] = v26;
  OUTLINED_FUNCTION_6(v26);
  v1[128] = v27;
  v29 = *(v28 + 64);
  v1[129] = OUTLINED_FUNCTION_55();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  OUTLINED_FUNCTION_47(v30);
  v32 = *(v31 + 64);
  v1[130] = OUTLINED_FUNCTION_69();
  v1[131] = swift_task_alloc();
  v33 = sub_231E0F780();
  v1[132] = v33;
  OUTLINED_FUNCTION_6(v33);
  v1[133] = v34;
  v36 = *(v35 + 64);
  v1[134] = OUTLINED_FUNCTION_55();
  v37 = sub_231E0F950();
  v1[135] = v37;
  OUTLINED_FUNCTION_6(v37);
  v1[136] = v38;
  v40 = *(v39 + 64);
  v1[137] = OUTLINED_FUNCTION_55();
  v41 = type metadata accessor for UrgencyFeedbackHistoryEntry();
  v1[138] = v41;
  OUTLINED_FUNCTION_6(v41);
  v1[139] = v42;
  v44 = *(v43 + 64);
  v1[140] = OUTLINED_FUNCTION_55();
  v45 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_231D5DEA0()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 1168) = v5;
  if (v5)
  {
    v6 = sub_231D5E0FC;
  }

  else
  {
    v6 = sub_231D5DFA8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231D5DFA8()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 968);
  sub_231CF4340(*(v0 + 1128), *(v0 + 1136));
  v10 = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_33();
  v12(v11);
  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_48();
  v15(v14);

  OUTLINED_FUNCTION_1_21();
  v18 = *(v0 + 912);

  OUTLINED_FUNCTION_19();

  return v16();
}

uint64_t sub_231D5E0FC()
{
  v1 = v0[146];
  v30 = v0[145];
  v31 = v0[144];
  v29 = v0[143];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[123];
  v8 = v0[122];
  v9 = v0[121];
  swift_willThrow();
  sub_231CF4340(v3, v2);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_70();
  v12(v11);

  v13 = v0[146];
  v14 = v0[114];
  v15 = v0[113];
  v16 = v0[112];
  v17 = sub_231DC4B64();
  (*(v15 + 16))(v14, v17, v16);
  v18 = v13;
  v19 = sub_231E10E10();
  v20 = sub_231E11AE0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_9_1();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v13;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_231CAE000, v19, v20, "Failed to launch Tap to Radar; error: %@", v21, 0xCu);
    sub_231CE1118(v22, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  v25 = OUTLINED_FUNCTION_31_8();
  v26(v25);
  OUTLINED_FUNCTION_1_21();
  v32 = v0[114];

  OUTLINED_FUNCTION_19();

  return v27();
}

id sub_231D5E384(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_231E11520();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t *sub_231D5E410(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_231CBF8D4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_231CBF940(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231D5E4A0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E0F4C0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E0F4C0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

_OWORD *sub_231D5E598(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_231CF44AC(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74ED0, &qword_231E1CE10);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_231CF44AC(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (v14[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v15);

    return sub_231CE1044(a1, v15);
  }

  else
  {
    sub_231CF45B4(a2, v17);
    return sub_231D5E6D8(v9, v17, a1, v14);
  }
}

_OWORD *sub_231D5E6D8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_231CE1044(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

size_t sub_231D5E754(size_t a1, int64_t a2, char a3)
{
  result = sub_231D5E774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231D5E774(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74ED8, &qword_231E1CE18);
  v10 = *(sub_231E0F4C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231E0F4C0() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231D5E4A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_231D5E928(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_231E11CE0();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_231D5E968()
{
  result = qword_27DD74EC0;
  if (!qword_27DD74EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD74EC0);
  }

  return result;
}

uint64_t sub_231D5E9D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_231D5E9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrgencyFeedbackHistoryEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D5EA48(uint64_t a1)
{
  v2 = type metadata accessor for UrgencyFeedbackHistoryEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  result = v0[140];
  v2 = v0[137];
  v3 = v0[134];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[126];
  v8 = v0[123];
  v9 = v0[120];
  v10 = v0[119];
  v11 = v0[116];
  v12 = v0[115];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_20()
{
  v2 = v0[60];
  result = v0[61];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[48];
  v11 = v0[44];
  v12 = v0[45];
  return result;
}

void OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v23 = a23[134];
  v24 = a23[133];
  v25 = a23[132];
}

uint64_t OUTLINED_FUNCTION_27_7()
{
  result = v0[28];
  v2 = v0[25];
  v3 = v0[5];
  v4 = *(v0[26] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  result = v0[114];
  v2 = v0[112];
  v3 = *(v0[113] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return sub_231E11D20();
}

void OUTLINED_FUNCTION_38_8()
{

  JUMPOUT(0x23837CC20);
}

void sub_231D5EBAC(void *a1@<X0>, void *a2@<X1>, id a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_231CC78CC();
  v10 = v9[1];
  v81 = *v9;

  v11 = sub_231CC78E4();
  v13 = *v11;
  v12 = v11[1];

  v14 = *sub_231CC79CC();
  v80 = a2;
  v84 = a3;
  v77 = v14;
  if (a1)
  {
    v76 = a1;
    v15 = v14;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = v14;

    a3 = v17;
    v18 = sub_231E115F0();

    sub_231E11620();

    v19 = OUTLINED_FUNCTION_3_21();
    v20 = v16;
    a2 = v80;
    v76 = sub_231D5F99C(v19, v21, v22, v81, v10, v20);
  }

  v23 = sub_231CC7B14();
  v25 = *v23;
  v24 = v23[1];

  v26 = sub_231CC7BA0();
  v28 = *v26;
  v27 = v26[1];

  v29 = *sub_231CC7964();
  v78 = a1;
  v79 = v24;
  v75 = v25;
  if (a2)
  {
    v73 = a2;
    v30 = v29;
  }

  else
  {
    v31 = objc_opt_self();
    v32 = v29;

    a3 = v32;
    v33 = sub_231E115F0();

    sub_231E11620();

    v34 = OUTLINED_FUNCTION_3_21();
    v73 = sub_231D5F99C(v34, v35, v36, v25, v24, v31);
  }

  v74 = v29;
  v37 = sub_231CC7C18();
  v39 = *v37;
  v38 = v37[1];

  v40 = sub_231CC7CA4();
  v41 = *v40;
  v42 = v40[1];

  v43 = *sub_231CC7A34();
  v71 = v43;
  if (a3)
  {
    v70 = a3;
    v44 = v43;

    v45 = 0x277CC3000;
  }

  else
  {
    v45 = 0x277CC3000uLL;
    v46 = objc_opt_self();
    v47 = v43;

    v48 = v47;
    v49 = sub_231E115F0();

    v50 = sub_231E11620();
    v52 = v51;

    v70 = sub_231D5F99C(v49, v50, v52, v39, v38, v46);
  }

  v72 = v39;
  v53 = sub_231CC7D1C();
  v54 = *v53;
  v55 = v53[1];

  v56 = sub_231CC7DA8();
  v57 = *v56;
  v58 = v56[1];

  v59 = *sub_231CC7A9C();
  if (a4)
  {
    v60 = v59;

    v61 = a4;
  }

  else
  {
    v62 = *(v45 + 1192);
    v83 = objc_opt_self();
    v63 = v10;
    v64 = v59;

    v65 = v64;
    v66 = sub_231E115F0();

    v67 = sub_231E11620();
    v69 = v68;

    v10 = v63;
    v61 = sub_231D5F99C(v66, v67, v69, v54, v55, v83);
  }

  *a5 = v81;
  a5[1] = v10;
  a5[2] = v77;
  a5[3] = v76;
  a5[4] = v75;
  a5[5] = v79;
  a5[6] = v74;
  a5[7] = v73;
  a5[8] = v72;
  a5[9] = v38;
  a5[10] = v71;
  a5[11] = v70;
  a5[12] = v54;
  a5[13] = v55;
  a5[14] = v59;
  a5[15] = v61;
}

uint64_t sub_231D5EF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a6)
  {
  }

  else
  {
    v9 = objc_opt_self();

    v10 = a5;
    v11 = sub_231E115F0();

    v12 = sub_231E11620();
    v14 = v13;

    sub_231D5F99C(v11, v12, v14, a1, a2, v9);
  }

  return a1;
}

uint64_t sub_231D5F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D5F078()
{
  v1 = v0[23];
  v12 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = sub_231E11850();
  v0[25] = v6;
  v7 = v1;
  v8 = sub_231E115F0();
  v0[26] = v8;
  v9 = sub_231E11850();
  v0[27] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231D5F210;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EE0, &qword_231E1CE28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231D5F374;
  v0[13] = &block_descriptor_6;
  v0[14] = v10;
  [v12 slowFetchAttributes:v6 protectionClass:v7 bundleID:v8 identifiers:v9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231D5F210()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_231D5F2F0, 0, 0);
}

uint64_t sub_231D5F2F0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_231D5F374(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
    v4 = sub_231E11870();
  }

  else
  {
    v4 = 0;
  }

  return sub_231D5F3EC(v3, v4);
}

uint64_t sub_231D5F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D5F428()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v6 = v1[20];
  v5 = v1[21];
  v7 = v1[18];
  v8 = v1[19];
  sub_231CC1784(0, &qword_2814CAF28, 0x277CC34B0);
  v9 = sub_231E11850();
  v1[23] = v9;
  v10 = v5;
  v11 = sub_231E115F0();
  v1[24] = v11;
  v1[2] = v1;
  v1[3] = sub_231D5F5B8;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EE8, &qword_231E1CE38);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_231D5F7C0;
  v1[13] = &block_descriptor_3;
  v1[14] = v12;
  [v4 indexSearchableItems:v9 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v10 forBundleID:v11 options:66125 completionHandler:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_231D5F5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_231D5F738;
  }

  else
  {
    v3 = sub_231D5F6C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_231D5F6C8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_231D5F738()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t sub_231D5F7C0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_231CBF8D4(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_231D5F844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231D5FE00();
  *a1 = result;
  return result;
}

uint64_t sub_231D5F86C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_231E115F0();

  *a2 = v5;
  return result;
}

uint64_t sub_231D5F8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231D5F058(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231D5F8E0(uint64_t a1)
{
  v2 = sub_231D5FF38(&qword_27DD74F10);
  v3 = sub_231D5FF38(&qword_27DD74F18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_231D5F990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_231D5FC80();
}

id sub_231D5F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_231E115F0();

  v9 = sub_231E115F0();

  v10 = [a6 psu:a1 criticalIndexWithName:v8 protectionClass:v9 bundleIdentifier:?];

  return v10;
}

uint64_t sub_231D5FA58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_231D5FA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 128) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_231D5FB0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_231D5FB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

void type metadata accessor for FileProtectionType()
{
  if (!qword_27DD74EF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD74EF0);
    }
  }
}

uint64_t sub_231D5FC80()
{
  v0 = sub_231E11620();
  v2 = v1;
  if (v0 == sub_231E11620() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_231E12100();
  }

  return v5 & 1;
}

uint64_t sub_231D5FD08(uint64_t a1, id *a2)
{
  result = sub_231E11600();
  *a2 = 0;
  return result;
}

uint64_t sub_231D5FD80(uint64_t a1, id *a2)
{
  v3 = sub_231E11610();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_231D5FE00()
{
  sub_231E11620();
  v0 = sub_231E115F0();

  return v0;
}

uint64_t sub_231D5FE38()
{
  v0 = sub_231E11620();
  v1 = MEMORY[0x23837CC90](v0);

  return v1;
}

uint64_t sub_231D5FE70()
{
  sub_231E11620();
  sub_231E116E0();
}

uint64_t sub_231D5FEC4()
{
  sub_231E11620();
  sub_231E12220();
  sub_231E116E0();
  v0 = sub_231E12250();

  return v0;
}

uint64_t sub_231D5FF38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileProtectionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231D5FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (sub_231E12100() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6 && (sub_231D61218(a3, a6) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_231D60014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    sub_231E12240();
    if (a4)
    {
      goto LABEL_3;
    }

    return sub_231E12240();
  }

  sub_231E12240();
  sub_231E116E0();
  if (!a4)
  {
    return sub_231E12240();
  }

LABEL_3:
  sub_231E12240();

  return sub_231D61744(a1, a4);
}

uint64_t sub_231D600AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231E12220();
  sub_231D60014(v7, a1, a2, a3);
  return sub_231E12250();
}

uint64_t sub_231D60124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_231E12220();
  sub_231D60014(v5, v1, v2, v3);
  return sub_231E12250();
}

uint64_t sub_231D60198()
{
  type metadata accessor for AvailabilityManager();
  v0 = swift_allocObject();
  result = sub_231D611A0();
  qword_2814CE7D8 = v0;
  return result;
}

uint64_t sub_231D601D4()
{
  v0 = swift_allocObject();
  sub_231D611A0();
  return v0;
}

uint64_t *sub_231D6020C()
{
  if (qword_2814CE0E0 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  return &qword_2814CE7D8;
}

uint64_t sub_231D6024C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  v53 = a3;
  v8 = sub_231E0F950();
  v9 = OUTLINED_FUNCTION_24(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F20, &qword_231E1D0D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_3();
  v50 = v21 - v22;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for AvailabilityManager.Result();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  os_unfair_lock_lock(v4 + 6);
  v34 = sub_231D605C0(a1, a2, v53);
  v53 = v4;
  v35 = *&v4[8]._os_unfair_lock_opaque;
  v48 = v4 + 8;
  sub_231D60814(v34, v35, v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v47 = a4;
  v49 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_231E0F920();
    v33[*(v26 + 20)] = sub_231D608C4(v34, a4) & 1;
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_231CE1118(v25, &qword_27DD74F20, &qword_231E1D0D8);
    }
  }

  else
  {
    sub_231D61944(v25, v33);
  }

  sub_231D61884(v33, v30);
  sub_231E0F920();
  sub_231E0F8B0();
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 8);
  v39(v15, v52);
  v40 = sub_231E0F8E0();
  v39(v18, v37);
  v39(v30, v37);
  v41 = v49;
  if (v40)
  {
    sub_231E0F920();
    v42 = sub_231D608C4(v41, v47);
    sub_231D618E8(v33);
    (*(v38 + 32))(v33, v18, v37);
    v33[*(v26 + 20)] = v42 & 1;
  }

  v43 = v50;
  sub_231D61884(v33, v50);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v26);
  sub_231D60FE0(v43, v41);
  v44 = v33[*(v26 + 20)];
  sub_231D618E8(v33);
  os_unfair_lock_unlock(v53 + 6);
  return v44;
}

void *sub_231D605C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231CC7C18();
  if (a2)
  {
    OUTLINED_FUNCTION_1_22(v5);
    v7 = v7 && v6 == a2;
    if (v7 || (OUTLINED_FUNCTION_5_8() & 1) != 0)
    {
      return &unk_2846F62C0;
    }
  }

  v9 = sub_231CC7B14();
  if (a2)
  {
    OUTLINED_FUNCTION_1_22(v9);
    v11 = v7 && v10 == a2;
    if (v11 || (OUTLINED_FUNCTION_5_8() & 1) != 0)
    {
      return &unk_2846F6310;
    }
  }

  v12 = sub_231CC78CC();
  if (a2)
  {
    OUTLINED_FUNCTION_1_22(v12);
    v14 = v7 && v13 == a2;
    if (v14 || (OUTLINED_FUNCTION_5_8() & 1) != 0)
    {
      return &unk_2846F6360;
    }
  }

  v15 = sub_231CC7D1C();
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_22(v15);
  v17 = v7 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_8() & 1) != 0)
  {
    return &unk_2846F63B0;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = sub_231CC7E14();
  v19 = OUTLINED_FUNCTION_8_15(v18);
  MEMORY[0x28223BE20](v19);
  v28 = v29;

  v20 = sub_231D162D0(sub_231D163AC, v27, a3);

  if (v20)
  {
    return &unk_2846F63E0;
  }

  v21 = sub_231CC7F78();
  v22 = OUTLINED_FUNCTION_8_15(v21);
  MEMORY[0x28223BE20](v22);
  v28 = v29;

  v23 = sub_231D162D0(sub_231D266B0, v27, a3);

  if (v23)
  {
    return &unk_2846F6430;
  }

  v24 = sub_231CC7FC8();
  v25 = OUTLINED_FUNCTION_8_15(v24);
  MEMORY[0x28223BE20](v25);
  v28 = v29;

  v26 = sub_231D162D0(sub_231D266B0, v27, a3);

  if (v26)
  {
    return &unk_2846F6480;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_231D60814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_231D612A4(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for AvailabilityManager.Result();
    sub_231D61884(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for AvailabilityManager.Result();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_231D608C4(uint64_t a1, uint64_t a2)
{
  v99 = sub_231E0FB50();
  v4 = OUTLINED_FUNCTION_24(v99);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v11 = (v10 - v9);
  v12 = sub_231E0FB70();
  v13 = OUTLINED_FUNCTION_24(v12);
  v94 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v93 = v18 - v17;
  v19 = sub_231E0FBA0();
  v96 = OUTLINED_FUNCTION_24(v19);
  v97 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_4_1();
  v98 = v24 - v23;
  v25 = sub_231E10E30();
  v26 = OUTLINED_FUNCTION_24(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v87 = (v31 - v32);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v33);
  v88 = &v83 - v34;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v35);
  v89 = &v83 - v36;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v37);
  v39 = &v83 - v38;
  v40 = sub_231CB4EEC();
  v41 = *(v28 + 16);
  v90 = v40;
  v91 = v41;
  v92 = v28 + 16;
  v41(v39);

  v42 = sub_231E10E10();
  v43 = sub_231E11AF0();

  v44 = os_log_type_enabled(v42, v43);
  v95 = a2;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v85 = v11;
    v46 = v45;
    v47 = swift_slowAlloc();
    v86 = v6;
    v100 = v47;
    *v46 = 136446466;
    v48 = sub_231DE2398(a2);
    v84 = v12;
    v50 = v28;
    v51 = v25;
    v52 = sub_231CB5000(v48, v49, &v100);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2082;
    v53 = MEMORY[0x23837CD80](a1, MEMORY[0x277D837D0]);
    v55 = sub_231CB5000(v53, v54, &v100);
    v25 = v51;
    v28 = v50;

    *(v46 + 14) = v55;
    v12 = v84;
    _os_log_impl(&dword_231CAE000, v42, v43, "%{public}s AvailabilityManager: Fetching model availability for: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    v6 = v86;
    OUTLINED_FUNCTION_30();
    v11 = v85;
    OUTLINED_FUNCTION_30();

    v56 = v50;
  }

  else
  {

    v56 = v28;
  }

  v57 = *(v56 + 8);
  v57(v39, v25);

  v58 = v93;
  sub_231E0FB60();
  v59 = v98;
  sub_231E0FB90();
  (*(v94 + 8))(v58, v12);
  sub_231E0FB80();
  v60 = (*(v6 + 88))(v11, v99);
  if (v60 != *MEMORY[0x277D0DFA8])
  {
    v62 = v95;
    if (v60 == *MEMORY[0x277D0DFB0])
    {
      v94 = v28;
      v61 = v88;
      v70 = OUTLINED_FUNCTION_12_13();
      v71(v70);

      v63 = sub_231E10E10();
      v64 = sub_231E11AF0();

      if (os_log_type_enabled(v63, v64))
      {
        swift_slowAlloc();
        v72 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_3_22(v72);
        *v12 = 136446210;
        v74 = sub_231DE2398(v73);
        OUTLINED_FUNCTION_10_13(v74, v75);
        OUTLINED_FUNCTION_5_21();
        *(v12 + 4) = v11;
        v11 = v57;
        v69 = "%{public}s AvailabilityManager: Generative models unavailable";
        goto LABEL_14;
      }
    }

    else
    {
      if (v60 == *MEMORY[0x277D0E278])
      {
        (*(v97 + 8))(v59, v96);
        return 1;
      }

      v94 = v28;
      v61 = v87;
      v77 = OUTLINED_FUNCTION_12_13();
      v78(v77);

      v63 = sub_231E10E10();
      v64 = sub_231E11AE0();

      if (os_log_type_enabled(v63, v64))
      {
        swift_slowAlloc();
        v79 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_3_22(v79);
        *v12 = 136446210;
        v81 = sub_231DE2398(v80);
        OUTLINED_FUNCTION_10_13(v81, v82);
        OUTLINED_FUNCTION_5_21();
        *(v12 + 4) = v11;
        v11 = v57;
        v69 = "%{public}s AvailabilityManager: Generative models unavailable: unhandled case";
        goto LABEL_14;
      }
    }

LABEL_15:

    v57(v61, v25);
    (*(v97 + 8))(v59, v96);
    goto LABEL_16;
  }

  v94 = v28;
  v61 = v89;
  v91(v89, v90, v25);
  v62 = v95;

  v63 = sub_231E10E10();
  v64 = sub_231E11AF0();

  if (!os_log_type_enabled(v63, v64))
  {
    goto LABEL_15;
  }

  swift_slowAlloc();
  v65 = OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_22(v65);
  *v12 = 136446210;
  v67 = sub_231DE2398(v66);
  OUTLINED_FUNCTION_10_13(v67, v68);
  OUTLINED_FUNCTION_5_21();
  *(v12 + 4) = v11;
  v11 = v57;
  v69 = "%{public}s AvailabilityManager: Generative models restricted";
LABEL_14:
  _os_log_impl(&dword_231CAE000, v63, v64, v69, v12, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v6 = v62;
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_30();

  v25(v61, v95);
  (*(v97 + 8))(v98, v96);
LABEL_16:
  (*(v6 + 8))(v11, v99);
  return 0;
}

uint64_t sub_231D60FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F20, &qword_231E1D0D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for AvailabilityManager.Result();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_231CE1118(a1, &qword_27DD74F20, &qword_231E1D0D8);
    sub_231D61418(a2, v9);

    return sub_231CE1118(v9, &qword_27DD74F20, &qword_231E1D0D8);
  }

  else
  {
    sub_231D61944(a1, v13);
    v16 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_231D6155C(v13, a2);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_231D61158()
{
  sub_231CE1118(v0 + 32, &qword_27DD74F28, qword_231E1D0E0);

  return swift_deallocClassInstance();
}

uint64_t sub_231D611A0()
{
  *(v0 + 16) = 0x404E000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  type metadata accessor for AvailabilityManager.Result();
  sub_231D61808();
  v1 = sub_231E11530();
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_231D61218(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_231E12100() & 1) == 0)
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

unint64_t sub_231D612A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_231E12220();
  sub_231D61744(v6, a1);
  v4 = sub_231E12250();

  return sub_231D61310(a1, v4);
}

unint64_t sub_231D61310(uint64_t a1, uint64_t a2)
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
          if (!v15 && (sub_231E12100() & 1) == 0)
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

uint64_t sub_231D61418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_231D612A4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F40, &qword_231E1D1B8);
    sub_231E11EA0();
    v11 = *(*(v18 + 48) + 8 * v8);

    v12 = *(v18 + 56);
    v13 = type metadata accessor for AvailabilityManager.Result();
    sub_231D61944(v12 + *(*(v13 - 8) + 72) * v8, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    sub_231D61808();
    sub_231E11EB0();
    *v3 = v18;
    v14 = a2;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = type metadata accessor for AvailabilityManager.Result();
    v14 = a2;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_231D6155C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_231D612A4(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F40, &qword_231E1D1B8);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_231D612A4(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = v15 + *(*(type metadata accessor for AvailabilityManager.Result() - 8) + 72) * v9;

    return sub_231D61B8C(a1, v16);
  }

  else
  {
    sub_231D616B0(v9, a2, a1, v14);
  }
}

uint64_t sub_231D616B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AvailabilityManager.Result();
  result = sub_231D61944(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_231D61744(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23837D730](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_231E116E0();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t type metadata accessor for AvailabilityManager.Result()
{
  result = qword_2814CE0F0;
  if (!qword_2814CE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_231D61808()
{
  result = qword_2814CBDD0;
  if (!qword_2814CBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74460, &qword_231E1C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBDD0);
  }

  return result;
}

uint64_t sub_231D61884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D618E8(uint64_t a1)
{
  v2 = type metadata accessor for AvailabilityManager.Result();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D61944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231D619AC()
{
  result = qword_27DD74F30;
  if (!qword_27DD74F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74F30);
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

uint64_t sub_231D61A38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_231D61A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231D61B18()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231D61B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailabilityManager.Result();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  return result;
}

void *OUTLINED_FUNCTION_8_15(void *result)
{
  v2 = result[1];
  *(v1 - 64) = *result;
  *(v1 - 56) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, unint64_t a2)
{
  *(v3 - 128) = v2;

  return sub_231CB5000(a1, a2, (v3 - 88));
}

uint64_t OUTLINED_FUNCTION_12_13()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 160);
  v5 = *(v1 - 152);
  return result;
}

uint64_t sub_231D61C58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_231E0F710();
  v3 = OUTLINED_FUNCTION_24(v2);
  v32 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_231E0F780();
  v16 = OUTLINED_FUNCTION_24(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v29 - v24;
  sub_231E0F760();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_231CFF408(v14);
  }

  else
  {
    v29 = v2;
    v30 = a1;
    v26 = *(v18 + 32);
    v26(v23, v14, v15);
    if (sub_231E0F700())
    {

      v26(v25, v23, v15);
      a1 = v30;
      goto LABEL_8;
    }

    (*(v18 + 8))(v23, v15);
    v2 = v29;
    a1 = v30;
  }

  if ((sub_231E11780() & 1) == 0)
  {

    v27 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v27, 1, v15);
  }

  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  (*(v32 + 104))(v31, *MEMORY[0x277CC91D8], v2);
  sub_231E0F770();
  v26 = *(v18 + 32);
LABEL_8:
  v26(a1, v25, v15);
  v27 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v27, 1, v15);
}

uint64_t type metadata accessor for UrgencyFeedbackHistoryEntry()
{
  result = qword_27DD830C0;
  if (!qword_27DD830C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231D61FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for UrgencyFeedbackHistoryEntry();
  v9 = *(v8 + 20);
  v10 = sub_231E0F950();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_231D6204C(uint64_t *a1, int a2)
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

uint64_t sub_231D6208C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UrgencyFeedbackDistanceLabelPairing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UrgencyFeedbackDistanceLabelPairing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_231D62168()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231D621EC()
{
  v1 = sub_231E10E30();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = *(*v0 + 16);
  v11 = sub_231DC4AB8();
  (*(v4 + 16))(v9, v11, v1);
  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_231CAE000, v12, v13, "Active Smart Replies requests changed: %ld", v14, 0xCu);
    OUTLINED_FUNCTION_30();
  }

  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_231D62340(uint64_t *a1, uint64_t a2, const void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_231D623A8(a1, a2, a3, a4);
  return v8;
}

void *sub_231D623A8(uint64_t *a1, uint64_t a2, const void *a3, void *a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F48, &qword_231E1D290);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x277D84F98];
  v4[2] = v10;
  type metadata accessor for SpotlightWriter();
  sub_231CE10BC(a3, v18);
  v4[3] = sub_231CD2CF8(a3);
  type metadata accessor for SpotlightReader();
  sub_231CE10BC(a3, v18);
  v4[4] = sub_231DF7564();
  v4[5] = [objc_allocWithZone(sub_231E11330()) init];
  sub_231CE8434(a1, (v4 + 6));
  v4[11] = a2;
  v4[13] = a4;
  type metadata accessor for PowerBudget();
  type metadata accessor for PowerTracker();
  swift_unknownObjectRetain();
  v11 = a4;
  sub_231CE6C64(1u, 1);
  v12 = sub_231D12D68();
  v13 = sub_231D12E00();
  v14 = sub_231D12EB0();
  *&v15 = sub_231D12F48();
  sub_231E0B5FC(v12, 0, v13, 0, v14, 0, v15, 0, v18, 2);
  sub_231E0B650(v18, v19);
  v16 = sub_231E0B688();
  swift_unknownObjectRelease();
  sub_231CE140C(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v5[12] = v16;
  return v5;
}

void sub_231D62578()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_95_5();
  v0 = sub_231E10340();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = OUTLINED_FUNCTION_76_3();
  v7 = OUTLINED_FUNCTION_24(v6);
  v27 = v8;
  v28 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 - v11;
  sub_231E10100();
  if (!v14)
  {
    sub_231E10000();
  }

  sub_231E10000();
  sub_231E11980();
  v15 = OUTLINED_FUNCTION_64_4();
  v16(v15);
  v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_56_8(v18);
  v20(v19);

  v21 = OUTLINED_FUNCTION_70_5();
  sub_231D64EBC(v21, v22, v23, v24, v25, 0xD00000000000001BLL, v26);

  (*(v27 + 8))(v13, v28);
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D62748()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10340();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D627F0()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  sub_231D120C0();
  v8 = OUTLINED_FUNCTION_68_6();
  v9(v8);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_58_7(v11);
  v13(v12);

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_231D62914;

  return sub_231D6DB48(&unk_231E1D4A0, v6, 0, 0, v1);
}

uint64_t sub_231D62914()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231D62A2C()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_44_8();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_8(v4);

  return sub_231D62748();
}

uint64_t sub_231D62AE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10DB0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D62B84()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  OUTLINED_FUNCTION_105_5();
  sub_231DC4F38();
  v4 = OUTLINED_FUNCTION_23_0();
  v5(v4);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_117_4(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_231D62C70;
  v16 = v0[6];
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v17, v18, v19, v20, v21, v22);
}

void sub_231D62C70()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[7];
    (*(v3[5] + 8))(v3[6], v3[4]);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D62DA0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231D62DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D62E0C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  v1 = [objc_allocWithZone(v0) init];
  [v1 nextToken];

  v2 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_77_3(v2, v3, v4, v5, v6, v7, v8, v9, v24);
  OUTLINED_FUNCTION_89_4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = *(MEMORY[0x277D85A10] + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_88_5(v20);
  *v21 = v22;
  v21[1] = sub_231D62F10;
  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x282200830]();
}

void sub_231D62F10()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = *(v3 + 32);
    v9 = *(v3 + 40);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D63034()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);

  return sub_231D631B4();
}

uint64_t sub_231D630D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_14_0();

  return v5();
}

uint64_t sub_231D631B4()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_231E10DB0();
  v1[36] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_69();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v8 = sub_231E10E30();
  v1[42] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[43] = v9;
  v11 = *(v10 + 64);
  v1[44] = OUTLINED_FUNCTION_69();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_231D63320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = v22[33];
  v27 = sub_231E10000();
  v29 = v28;
  v22[52] = v27;
  v22[53] = v28;
  v30 = sub_231E102F0();
  v22[54] = v31;
  if (v31)
  {
    v23 = v30;
    result = [objc_opt_self() sharedPreferencesController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = [result BOOLForKey_];

    v35 = v22[42];
    v36 = v22[43];
    if (v34)
    {
      v37 = v22[51];
      v38 = sub_231DC4AB8();
      v22[55] = v38;
      v39 = *(v36 + 16);
      v22[56] = v39;
      v22[57] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v37, v38, v35);

      v40 = sub_231E10E10();
      v41 = sub_231E11AF0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v22[51];
      v45 = v22[42];
      v44 = v22[43];
      if (v42)
      {
        v105 = v22[42];
        v46 = swift_slowAlloc();
        a11 = OUTLINED_FUNCTION_68();
        *v46 = 136446722;
        *(v46 + 4) = sub_231CB5000(v27, v29, &a11);
        *(v46 + 12) = 2082;
        v47 = OUTLINED_FUNCTION_83();
        *(v46 + 14) = sub_231CB5000(v47, v48, v49);
        *(v46 + 22) = 1024;
        *(v46 + 24) = qos_class_self();
        _os_log_impl(&dword_231CAE000, v40, v41, "Processing mail with unique id: %{public}s; domain id: %{public}s; QoS: %u", v46, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        v50 = *(v44 + 8);
        v50(v43, v105);
      }

      else
      {

        v50 = *(v44 + 8);
        v50(v43, v45);
      }

      v22[58] = v50;
      v86 = v22[41];
      v87 = v22[36];
      v88 = v22[37];
      v89 = v22[35];
      v90 = v22[33];
      v91 = sub_231DC4F38();
      v22[59] = v91;
      v92 = *(v88 + 16);
      v22[60] = v92;
      v22[61] = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v92(v86, v91, v87);
      v93 = swift_task_alloc();
      v22[62] = v93;
      v93[2] = v90;
      v93[3] = v89;
      v93[4] = v27;
      v93[5] = v29;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v22[63] = v94;
      *v94 = v95;
      v94[1] = sub_231D637AC;
      v96 = v22[41];
      OUTLINED_FUNCTION_35();

      return sub_231DC55B4(v97, v98, v99, v100, v101, v102);
    }

    v62 = v22[46];

    v63 = sub_231DC4AB8();
    (*(v36 + 16))(v62, v63, v35);
    v56 = sub_231E10E10();
    v64 = sub_231E11AF0();
    v65 = OUTLINED_FUNCTION_69_5(v64);
    v66 = v22[46];
    v67 = v22[42];
    v61 = v22[43];
    if (v65)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v51 = v22[45];
    v52 = v22[42];
    v53 = v22[43];

    sub_231DC4AB8();
    v54 = OUTLINED_FUNCTION_112_4();
    v55(v54);
    v56 = sub_231E10E10();
    v57 = sub_231E11AE0();
    v58 = OUTLINED_FUNCTION_69_5(v57);
    v59 = v22[45];
    v60 = v22[42];
    v61 = v22[43];
    if (v58)
    {
LABEL_9:
      v68 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_104_4(v68);
      OUTLINED_FUNCTION_43_10();
      _os_log_impl(v69, v70, v71, v72, v23, 2u);
      OUTLINED_FUNCTION_30();
    }
  }

  v73 = *(v61 + 8);
  v74 = OUTLINED_FUNCTION_25();
  v75(v74);
  OUTLINED_FUNCTION_13_13();
  v104 = v77;
  v106 = v76;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, v104, v106, a11, a12, a13, a14);
}

void sub_231D637AC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[62];
    v10 = v3[41];
    v11 = v3[36];
    v12 = v3[37];
    v13 = *(v12 + 8);
    v3[64] = v13;
    v3[65] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);

    v14 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_231D638F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v14 + 624))
  {
    v17 = *(v14 + 448);
    v16 = *(v14 + 456);
    v18 = *(v14 + 432);
    v19 = *(v14 + 440);
    v20 = *(v14 + 424);
    v21 = *(v14 + 376);
    v22 = *(v14 + 336);

    v23 = OUTLINED_FUNCTION_40();
    v17(v23);

    v24 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v25 = OUTLINED_FUNCTION_85();
    v26 = *(v14 + 464);
    v27 = *(v14 + 424);
    if (v25)
    {
      v28 = *(v14 + 416);
      v29 = *(v14 + 376);
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v30, v31);
      OUTLINED_FUNCTION_57_6();

      *(v15 + 4) = v28;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v32, v33, "Mail not eligible for Smart Replies (already processed); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    else
    {
      v50 = *(v14 + 376);
      v21 = *(v14 + 336);
      v51 = *(v14 + 344);
      v52 = *(v14 + 424);

      a10 = OUTLINED_FUNCTION_66_5();
    }

    v26(a10, v21);
    OUTLINED_FUNCTION_13_13();
    v63 = v54;
    v64 = v53;

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, a11, a12, a13, a14);
  }

  else
  {
    v35 = *(v14 + 488);
    v36 = *(v14 + 280);
    v37 = *(v14 + 264);
    (*(v14 + 480))(*(v14 + 320), *(v14 + 472), *(v14 + 288));
    v38 = swift_task_alloc();
    *(v14 + 528) = v38;
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v14 + 536) = v39;
    *v39 = v40;
    v39[1] = sub_231D63B50;
    v41 = *(v14 + 320);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_35();

    return sub_231DC55B4(v42, v43, v44, v45, v46, v47);
  }
}

void sub_231D63B50()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 528);
    v10 = *(v3 + 520);
    (*(v3 + 512))(*(v3 + 320), *(v3 + 288));

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D63C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v10 + 625) == 1)
  {
    v12 = *(v10 + 264);
    sub_231D68564();
    *(v10 + 544) = v13;
    if (v13)
    {
      v14 = v13;
      if (sub_231CC8398())
      {
        *(v10 + 256) = sub_231D689F4();
        v15 = OUTLINED_FUNCTION_85_3();
        v16(v15);
        v17 = swift_task_alloc();
        *(v10 + 584) = v17;
        OUTLINED_FUNCTION_107_5(v17);
        v18 = swift_task_alloc();
        *(v10 + 592) = v18;
        *v18 = v10;
        OUTLINED_FUNCTION_34_10(v18);
        OUTLINED_FUNCTION_16_10();
        OUTLINED_FUNCTION_46_6();
      }

      else
      {
        v66 = *(v10 + 480);
        v65 = *(v10 + 488);
        v67 = *(v10 + 472);
        v68 = *(v10 + 312);
        v69 = *(v10 + 288);
        v91 = *(v10 + 280);
        v70 = *(v10 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB8, &qword_231E1D3F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_231E1C2A0;
        sub_231E11330();
        *(inited + 32) = sub_231E112D0();
        *(inited + 40) = v72;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = 1;
        *(inited + 80) = sub_231E11300();
        *(inited + 88) = v73;
        *(inited + 120) = MEMORY[0x277D83B88];
        *(inited + 96) = v70;
        *(inited + 128) = sub_231E112F0();
        *(inited + 136) = v74;
        v75 = getpid();
        v76 = MEMORY[0x277D849A8];
        *(inited + 168) = MEMORY[0x277D849A8];
        *(inited + 144) = v75;
        *(inited + 176) = sub_231E112E0();
        *(inited + 184) = v77;
        v78 = getpid();
        *(inited + 216) = v76;
        *(inited + 192) = v78;
        v79 = sub_231E11530();
        *(v10 + 552) = v79;
        v66(v68, v67, v69);
        v80 = swift_task_alloc();
        *(v10 + 560) = v80;
        v80[2] = v91;
        v80[3] = v14;
        v80[4] = v79;
        v81 = swift_task_alloc();
        *(v10 + 568) = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF8, &qword_231E1D500);
        OUTLINED_FUNCTION_73_4();
        *v81 = v82;
        v81[1] = sub_231D64138;
        v83 = *(v10 + 312);
      }

      OUTLINED_FUNCTION_35();

      return sub_231DC55B4(v84, v85, v86, v87, v88, v89);
    }

    v44 = *(v10 + 448);
    v43 = *(v10 + 456);
    v45 = *(v10 + 432);
    v46 = *(v10 + 440);
    v47 = *(v10 + 424);
    v48 = *(v10 + 392);
    v49 = *(v10 + 336);

    v50 = OUTLINED_FUNCTION_40();
    v44(v50);
    v51 = sub_231E10E10();
    v52 = sub_231E11AE0();
    if (OUTLINED_FUNCTION_79_3(v52))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v53, v54, "Could not build input context history for mail content");
      OUTLINED_FUNCTION_30();
    }

    v55 = *(v10 + 464);
    v56 = *(v10 + 392);
    v57 = *(v10 + 336);
    v58 = *(v10 + 344);
    v59 = *(v10 + 280);

    v60 = OUTLINED_FUNCTION_25();
    v55(v60);
    v61 = *(v59 + 24);
    v62 = swift_task_alloc();
    *(v10 + 600) = v62;
    *v62 = v10;
    OUTLINED_FUNCTION_75_3(v62);
  }

  else
  {
    v20 = *(v10 + 448);
    v19 = *(v10 + 456);
    v21 = *(v10 + 432);
    v22 = *(v10 + 440);
    v23 = *(v10 + 424);
    v24 = *(v10 + 384);
    v25 = *(v10 + 336);

    v26 = OUTLINED_FUNCTION_40();
    v20(v26);

    v27 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v28 = OUTLINED_FUNCTION_85();
    v29 = *(v10 + 464);
    v30 = *(v10 + 424);
    if (v28)
    {
      v31 = *(v10 + 416);
      v32 = *(v10 + 384);
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v33, v34);
      OUTLINED_FUNCTION_57_6();

      *(v11 + 4) = v31;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v35, v36, "Mail not eligible for Smart Replies; id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    else
    {
      v38 = *(v10 + 384);
      v24 = *(v10 + 336);
      v39 = *(v10 + 344);
      v40 = *(v10 + 424);

      a10 = OUTLINED_FUNCTION_66_5();
    }

    v29(a10, v24);
    v41 = *(*(v10 + 280) + 24);
    v42 = swift_task_alloc();
    *(v10 + 608) = v42;
    *v42 = v10;
    OUTLINED_FUNCTION_75_3(v42);
  }

  OUTLINED_FUNCTION_35();

  return sub_231CD6674();
}

uint64_t sub_231D64138()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[71];
  *v4 = *v1;
  v3[72] = v0;

  v6 = v2[70];
  v7 = v2[69];
  v8 = v2[65];
  v9 = v2[64];
  if (v0)
  {
    v10 = v3[54];
    v9(v3[39], v3[36]);
  }

  else
  {
    v9(v3[39], v3[36]);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D642E0()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[30];
  v1 = v0[31];

  v0[32] = v2;
  v3 = OUTLINED_FUNCTION_85_3();
  v4(v3);
  v5 = swift_task_alloc();
  v0[73] = v5;
  OUTLINED_FUNCTION_107_5(v5);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_34_10(v6);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v7, v8, v9, v10, v11, v12);
}

void sub_231D643B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 584);
    v10 = *(v3 + 520);
    v11 = *(v3 + 432);
    (*(v3 + 512))(*(v3 + 304), *(v3 + 288));

    v12 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_231D644EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v15 + 456);
  v18 = *(v15 + 424);
  (*(v15 + 448))(*(v15 + 400), *(v15 + 440), *(v15 + 336));

  v19 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v20 = OUTLINED_FUNCTION_85();
  v21 = *(v15 + 544);
  v22 = *(v15 + 424);
  if (v20)
  {
    v23 = *(v15 + 416);
    v24 = *(v15 + 400);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_109_4();
    OUTLINED_FUNCTION_42_8(4.8751e-34, v25, v26);
    OUTLINED_FUNCTION_57_6();

    *(v16 + 4) = v23;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v27, v28, "Generated mail Smart Replies; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v18 + 8))(a10, v14);
  }

  else
  {
    v29 = *(v15 + 400);
    v30 = *(v15 + 336);
    v31 = *(v15 + 344);
    v32 = *(v15 + 424);

    v33 = *(v31 + 8);
    v34 = OUTLINED_FUNCTION_25();
    v35(v34);
  }

  OUTLINED_FUNCTION_13_13();
  v47 = v37;
  v48 = v36;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, a11, a12, a13, a14);
}

uint64_t sub_231D64690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_5();
  v16 = v14[75];
  v17 = *v15;
  OUTLINED_FUNCTION_4();
  *v18 = v17;

  OUTLINED_FUNCTION_223();
  v20 = *(v19 + 408);
  v21 = v14[50];
  v22 = v14[49];
  v23 = v14[48];
  v24 = v14[47];
  v25 = v14[46];
  v26 = v14[45];
  v27 = v14[44];
  v41 = v14[41];
  OUTLINED_FUNCTION_223();
  v42 = *(v28 + 320);
  OUTLINED_FUNCTION_223();
  v43 = *(v29 + 312);
  OUTLINED_FUNCTION_223();
  v31 = *(v30 + 304);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_35();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, a12, a13, a14);
}

uint64_t sub_231D648C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_87_5();
  v16 = v14[76];
  v17 = *v15;
  OUTLINED_FUNCTION_4();
  *v18 = v17;

  OUTLINED_FUNCTION_223();
  v20 = *(v19 + 408);
  v21 = v14[50];
  v22 = v14[49];
  v23 = v14[48];
  v24 = v14[47];
  v25 = v14[46];
  v26 = v14[45];
  v27 = v14[44];
  v41 = v14[41];
  OUTLINED_FUNCTION_223();
  v42 = *(v28 + 320);
  OUTLINED_FUNCTION_223();
  v43 = *(v29 + 312);
  OUTLINED_FUNCTION_223();
  v31 = *(v30 + 304);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_35();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, a12, a13, a14);
}

uint64_t sub_231D64AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = *(v22 + 576);
  v27 = *(v22 + 456);
  v28 = *(v22 + 424);
  (*(v22 + 448))(*(v22 + 352), *(v22 + 440), *(v22 + 336));

  v29 = v26;
  v30 = sub_231E10E10();
  v31 = sub_231E11AD0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v22 + 576);
    v33 = *(v22 + 416);
    v34 = *(v22 + 424);
    v35 = *(v22 + 344);
    v52 = *(v22 + 336);
    v53 = *(v22 + 352);
    v36 = OUTLINED_FUNCTION_98_0();
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_28();
    a11 = v37;
    *v36 = 138412546;
    v38 = v32;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v23 = v39;
    *(v36 + 12) = 2082;
    v40 = sub_231CB5000(v33, v34, &a11);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_231CAE000, v30, v31, "Failed to generate mail Smart Replies: %@; id: %{public}s", v36, 0x16u);
    sub_231CE1118(v23, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v35 + 8))(v53, v52);
  }

  else
  {
    v41 = *(v22 + 424);
    v43 = *(v22 + 344);
    v42 = *(v22 + 352);
    v44 = *(v22 + 336);

    v45 = *(v43 + 8);
    v46 = OUTLINED_FUNCTION_25();
    v47(v46);
  }

  v48 = *(*(v22 + 280) + 24);
  v49 = swift_task_alloc();
  *(v22 + 616) = v49;
  *v49 = v22;
  OUTLINED_FUNCTION_75_3(v49);
  OUTLINED_FUNCTION_35();

  return sub_231CD6674();
}

uint64_t sub_231D64D08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 616);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D64DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v15 = *(v14 + 576);

  OUTLINED_FUNCTION_13_13();
  v27 = v17;
  v28 = v16;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_231D64EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a6;
  v13[1] = a7;

  MEMORY[0x23837CC20](46, 0xE100000000000000);
  MEMORY[0x23837CC20](a1, a2);
  v10 = *(v7 + 16);
  os_unfair_lock_lock(v10 + 6);
  sub_231D6CCD8(v13, &v10[4]);
  os_unfair_lock_unlock(v10 + 6);
  v11 = v13[0];

  return v11;
}

void sub_231D64FA4()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_95_5();
  v0 = sub_231E106A0();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = OUTLINED_FUNCTION_76_3();
  v7 = OUTLINED_FUNCTION_24(v6);
  v27 = v8;
  v28 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 - v11;
  sub_231E10520();
  if (!v14)
  {
    sub_231E10690();
  }

  sub_231E10690();
  sub_231E11980();
  v15 = OUTLINED_FUNCTION_64_4();
  v16(v15);
  v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_56_8(v18);
  v20(v19);

  v21 = OUTLINED_FUNCTION_70_5();
  sub_231D64EBC(v21, v22, v23, v24, v25, 0xD00000000000001FLL, v26);

  (*(v27 + 8))(v13, v28);
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D65174()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E106A0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6521C()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  sub_231D120C0();
  v8 = OUTLINED_FUNCTION_68_6();
  v9(v8);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_58_7(v11);
  v13(v12);

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_231D6D4F0;

  return sub_231D6DB48(&unk_231E1D390, v6, 0, 0, v1);
}

uint64_t sub_231D65340()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_44_8();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_8(v4);

  return sub_231D65174();
}

uint64_t sub_231D653F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_4(v1, v2);
  v3 = sub_231E10DB0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D65498()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  OUTLINED_FUNCTION_105_5();
  sub_231DC4F38();
  v4 = OUTLINED_FUNCTION_23_0();
  v5(v4);
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_117_4(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_231D65584;
  v16 = v0[6];
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_46_6();

  return sub_231DC55B4(v17, v18, v19, v20, v21, v22);
}

void sub_231D65584()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[7];
    (*(v3[5] + 8))(v3[6], v3[4]);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D656B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D656C8()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_105_5();
  v1 = [objc_allocWithZone(v0) init];
  [v1 nextToken];

  v2 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_77_3(v2, v3, v4, v5, v6, v7, v8, v9, v24);
  OUTLINED_FUNCTION_89_4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = *(MEMORY[0x277D85A10] + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_88_5(v20);
  *v21 = v22;
  v21[1] = sub_231D657CC;
  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x282200830]();
}

void sub_231D657CC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = *(v3 + 32);
    v9 = *(v3 + 40);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D658EC()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);

  return sub_231D6598C();
}

uint64_t sub_231D6598C()
{
  OUTLINED_FUNCTION_18();
  v1[128] = v0;
  v1[127] = v2;
  v1[126] = v3;
  v4 = sub_231E10DB0();
  v1[129] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[130] = v5;
  v7 = *(v6 + 64);
  v1[131] = OUTLINED_FUNCTION_69();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v8 = sub_231E10E30();
  v1[136] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[137] = v9;
  v11 = *(v10 + 64);
  v1[138] = OUTLINED_FUNCTION_69();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

id sub_231D65B14()
{
  v85 = v0;
  v2 = v0[126];
  v3 = sub_231E10690();
  v5 = v4;
  v0[147] = v3;
  v0[148] = v4;
  v6 = sub_231E10660();
  v0[149] = v7;
  if (!v7)
  {
    v43 = v0[139];
    OUTLINED_FUNCTION_82_2();

    sub_231DC4AB8();
    v44 = OUTLINED_FUNCTION_112_4();
    v45(v44);
    v46 = sub_231E10E10();
    v47 = sub_231E11AE0();
    v48 = OUTLINED_FUNCTION_69_5(v47);
    v49 = v0[139];
    v50 = v0[137];
    v51 = v0[136];
    if (!v48)
    {
      goto LABEL_14;
    }

LABEL_13:
    v58 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_104_4(v58);
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v59, v60, v61, v62, v1, 2u);
    OUTLINED_FUNCTION_30();
LABEL_14:

    v63 = *(v50 + 8);
    v64 = OUTLINED_FUNCTION_25();
    v65(v64);
    OUTLINED_FUNCTION_3_23();
    OUTLINED_FUNCTION_100_5();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_107_1();

    __asm { BRAA            X1, X16 }
  }

  v8 = v6;
  v9 = v7;
  result = [objc_opt_self() sharedPreferencesController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v1 = [result BOOLForKey_];

  v12 = v0[137];
  v13 = v0[136];
  if (!v1)
  {
    v52 = v0[140];

    v53 = sub_231DC4AB8();
    (*(v12 + 16))(v52, v53, v13);
    v46 = sub_231E10E10();
    v54 = sub_231E11AF0();
    v55 = OUTLINED_FUNCTION_69_5(v54);
    v56 = v0[140];
    v50 = v0[137];
    v57 = v0[136];
    if (!v55)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v80 = v8;
  v14 = v0[146];
  v15 = sub_231DC4AB8();
  v0[150] = v15;
  v16 = *(v12 + 16);
  v0[151] = v16;
  v0[152] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v81 = v16;
  v16(v14, v15, v13);

  v17 = sub_231E10E10();
  v18 = sub_231E11AF0();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[137];
  v21 = v0[136];
  v82 = v21;
  v83 = v0[146];
  if (v19)
  {
    v22 = swift_slowAlloc();
    v84 = OUTLINED_FUNCTION_68();
    *v22 = 136446723;
    *(v22 + 4) = sub_231CB5000(v3, v5, &v84);
    *(v22 + 12) = 2085;
    *(v22 + 14) = sub_231CB5000(v80, v9, &v84);
    *(v22 + 22) = 1024;
    *(v22 + 24) = qos_class_self();
    _os_log_impl(&dword_231CAE000, v17, v18, "Processing message with unique id: %{public}s; domain id: %{sensitive}s; QoS: %u", v22, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v23 = *(v20 + 8);
  v23(v83, v82);
  v0[153] = v23;
  v0[118] = &unk_2846F07A0;
  v0[119] = sub_231CC7270();
  *(v0 + 920) = 1;
  v24 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v0 + 115);
  if (v24)
  {
    v25 = v0[135];
    v26 = v0[130];
    v27 = v0[129];
    v28 = v0[128];
    v29 = v0[126];
    v30 = sub_231DC4F38();
    v0[154] = v30;
    v31 = *(v26 + 16);
    v0[155] = v31;
    v0[156] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v25, v30, v27);
    v32 = swift_task_alloc();
    v0[157] = v32;
    v32[2] = v29;
    v32[3] = v28;
    v32[4] = v3;
    v32[5] = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v0[158] = v33;
    *v33 = v34;
    v33[1] = sub_231D66120;
    v35 = v0[135];
    OUTLINED_FUNCTION_107_1();

    return sub_231DC55B4(v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v68 = v0[141];
    v69 = v0[136];

    v81(v68, v15, v69);
    v70 = sub_231E10E10();
    v71 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_79_3(v71))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v72, v73, "Precomputation of Smart Replies is not enabled");
      OUTLINED_FUNCTION_30();
    }

    v74 = v0[141];
    OUTLINED_FUNCTION_82_2();
    v75 = v0[128];

    v76 = OUTLINED_FUNCTION_25();
    (v23)(v76);
    v77 = *(v75 + 24);
    v78 = swift_task_alloc();
    v0[184] = v78;
    *v78 = v0;
    OUTLINED_FUNCTION_48_7(v78);
    OUTLINED_FUNCTION_107_1();

    return sub_231CD6BE0();
  }
}

void sub_231D66120()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1264);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[157];
    v10 = v3[135];
    v11 = v3[130];
    v12 = v3[129];
    v13 = *(v11 + 8);
    v3[159] = v13;
    v3[160] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);

    v14 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_231D66268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  if (*(v16 + 1488))
  {
    OUTLINED_FUNCTION_93_5();
    v19 = *(v16 + 1136);
    v20 = *(v16 + 1088);

    v21 = OUTLINED_FUNCTION_40();
    v17(v21);

    v22 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v23 = OUTLINED_FUNCTION_85();
    v24 = *(v16 + 1224);
    v25 = *(v16 + 1184);
    if (v23)
    {
      v26 = *(v16 + 1176);
      v65 = *(v16 + 1136);
      OUTLINED_FUNCTION_63_5();
      a13 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_53_0(4.8751e-34, a13, v27, v28, v29);
      OUTLINED_FUNCTION_57_6();

      *(v18 + 4) = v26;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v30, v31, "Message not eligible for Smart Replies (already processed); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      v32 = v65;
    }

    else
    {
      v49 = *(v16 + 1136);
      OUTLINED_FUNCTION_82_2();

      v32 = OUTLINED_FUNCTION_66_5();
    }

    v24(v32, v19);
    OUTLINED_FUNCTION_3_23();
    v62 = v51;
    v63 = v50;
    OUTLINED_FUNCTION_100_5();
    v64 = v53;
    v66 = v52;

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_37();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v66, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_49_8();
    v33 = *(v16 + 1032);
    v34 = *(v16 + 1024);
    v35 = *(v16 + 1008);
    v36(*(v16 + 1072));
    v37 = swift_task_alloc();
    *(v16 + 1288) = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v16 + 1296) = v38;
    *v38 = v39;
    v38[1] = sub_231D664E0;
    v40 = *(v16 + 1072);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_37();

    return sub_231DC55B4(v41, v42, v43, v44, v45, v46);
  }
}

void sub_231D664E0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1296);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 1288);
    v10 = *(v3 + 1280);
    (*(v3 + 1272))(*(v3 + 1072), *(v3 + 1032));

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D66610()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  if (*(v0 + 1489) == 1)
  {
    OUTLINED_FUNCTION_49_8();
    v36 = *(v0 + 1176);
    v3 = *(v0 + 1032);
    v4 = *(v0 + 1024);
    v5 = *(v0 + 1008);
    v6(*(v0 + 1064));
    v7 = swift_task_alloc();
    *(v0 + 1304) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v36;
    *(v7 + 40) = v4;
    v8 = swift_task_alloc();
    *(v0 + 1312) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB0, &qword_231E1D3F0);
    OUTLINED_FUNCTION_73_4();
    *v8 = v9;
    v8[1] = sub_231D66878;
    v10 = *(v0 + 1064);
    OUTLINED_FUNCTION_35();

    return sub_231DC55B4(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_93_5();
    v19 = *(v0 + 1144);
    v20 = *(v0 + 1088);

    v21 = OUTLINED_FUNCTION_40();
    v1(v21);

    v22 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_53_7();

    v23 = OUTLINED_FUNCTION_85();
    v24 = *(v0 + 1224);
    v25 = *(v0 + 1184);
    if (v23)
    {
      v26 = *(v0 + 1176);
      v37[0] = *(v0 + 1144);
      OUTLINED_FUNCTION_63_5();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_42_8(4.8751e-34, v27, v28);
      OUTLINED_FUNCTION_57_6();

      *(v2 + 4) = v26;
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v29, v30, "Message not eligible for Smart Replies; id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      v31 = v37[0];
    }

    else
    {
      v32 = *(v0 + 1144);
      OUTLINED_FUNCTION_82_2();

      v31 = OUTLINED_FUNCTION_66_5();
    }

    v24(v31, v19);
    v33 = *(*(v0 + 1024) + 24);
    v34 = swift_task_alloc();
    *(v0 + 1464) = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_48_7(v34);
    OUTLINED_FUNCTION_35();

    return sub_231CD6BE0();
  }
}