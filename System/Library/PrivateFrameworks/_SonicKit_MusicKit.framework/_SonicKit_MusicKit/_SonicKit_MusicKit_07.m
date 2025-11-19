uint64_t sub_275369C44()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1928);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 1936) = v0;

  if (v0)
  {
    v9 = *(v3 + 1856);

    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536E2B0;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 1880), *(v3 + 1888), *(v3 + 1896), *(v3 + 1904), *(v3 + 1912), *(v3 + 1920), *(v3 + 68) | (*(v3 + 70) << 16));
    OUTLINED_FUNCTION_106_3();
    v12 = sub_275369D70;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275369D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = v8;
  v13 = *(v8 + 1872) + 1;
  *(v8 + 1872) = v13;
  v14 = *(v8 + 1856);
  v15 = *(v14 + 16);
  if (v13 == *(v8 + 1864))
  {
    v16 = v15 + 1;
    v17 = *(v8 + 1856);
    do
    {
      if (v16 == 1)
      {
        v55 = *(v8 + 1784);
        OUTLINED_FUNCTION_230_1();

        v56 = v9[1];
        v57 = OUTLINED_FUNCTION_129_0();
        v58(v57);

        v59 = OUTLINED_FUNCTION_39_4();
        v60(v59);
        OUTLINED_FUNCTION_32_3();
        v61 = *(v8 + 1744);
        OUTLINED_FUNCTION_2_9();
        v77 = *(v8 + 1536);
        v79 = *(v8 + 1528);
        v81 = *(v8 + 1504);
        v62 = *(*(v8 + 1400) + 40);
        v75 = *(v8 + 1496);
        v76 = *(v8 + 1488);
        v78 = *(v8 + 1480);
        v80 = *(v8 + 1472);
        v82 = *(v8 + 1464);
        v83 = *(v8 + 1456);
        v84 = *(v8 + 1448);
        v85 = *(v8 + 1440);
        v87 = *(v8 + 1416);
        v63 = *(v8 + 1376);
        sub_2753B6A88();
        v64 = OUTLINED_FUNCTION_38_3();
        v65(v64);
        OUTLINED_FUNCTION_54_3();
        OUTLINED_FUNCTION_145_2();
        v66 = OUTLINED_FUNCTION_6_3();
        sub_27538672C(v66, v67, v68);
        OUTLINED_FUNCTION_147_2();
        sub_2753B64B8();
        v69 = OUTLINED_FUNCTION_214_1();
        v62(v69);
        OUTLINED_FUNCTION_1_8();
        sub_275388564(v10, v70, v71, v72, sub_27538685C);

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_153_2();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_178_1(v17);
    }

    while (v18 >= 5);
    v89 = OUTLINED_FUNCTION_251(v17);
    v90 = v19;
    v91 = v20;
    v92 = v21;
    v93 = v22;
    v94 = v23;
    v96 = BYTE2(v24);
    v95 = v24;
    sub_275315CB8(v89, v19, v20, v21, v22, v23, v24);
    sub_275374B74(&v89, &v88);
    v14 = sub_2752FBB6C(v89, v90, v91, v92, v93, v94, v95 | (v96 << 16));
    v25 = v88;
    if (v88 != 6)
    {
      OUTLINED_FUNCTION_205_1();
      v26 = v9[3];
      v86 = v9[4];
      OUTLINED_FUNCTION_107_3(v9);
      sub_2753B65C8();
      sub_2753B65B8();
      *(v8 + 1224) = &type metadata for MusicContent.ContentType;
      *(v8 + 1232) = sub_275356020();
      *(v8 + 1200) = v25;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v8 + 1200));
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_325_0();
      *(v8 + 864) = MEMORY[0x277D83B88];
      *(v8 + 872) = MEMORY[0x277D65050];
      *(v8 + 840) = v12;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v8 + 840));
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      v27 = *(v11 + 32);
      v28 = OUTLINED_FUNCTION_78_2();
      v29(v28);
      OUTLINED_FUNCTION_199_1();
      sub_2753B65F8();
      v30 = *(MEMORY[0x277D64F88] + 4);
      v31 = swift_task_alloc();
      *(v8 + 1944) = v31;
      *v31 = v8;
      OUTLINED_FUNCTION_131_3(v31);
      OUTLINED_FUNCTION_86_1(v32);
      OUTLINED_FUNCTION_153_2();

      return MEMORY[0x2821CC218](v14, a2, a3, a4, a5, a6, a7, a8);
    }

LABEL_17:
    __break(1u);
    return MEMORY[0x2821CC218](v14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v13 >= v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v33 = (v14 + 56 * v13);
  *(v8 + 1880) = v33[4];
  *(v8 + 1888) = v33[5];
  *(v8 + 1896) = v33[6];
  *(v8 + 1904) = v33[7];
  *(v8 + 1912) = v33[8];
  *(v8 + 1920) = v33[9];
  OUTLINED_FUNCTION_283_0(v33);
  *(v8 + 68) = v34;
  *(v8 + 64) = v34;
  OUTLINED_FUNCTION_278_0();
  *(v8 + 70) = v35;
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_276_0(v42, v43, v36, v37, v38, v39, v40, v41);
  *(v8 + 66) = v44;
  sub_275315CB8(v45, v46, v47, v48, v49, v50, v51);
  v52 = swift_task_alloc();
  *(v8 + 1928) = v52;
  *v52 = v8;
  OUTLINED_FUNCTION_196_1(v52);
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_153_2();

  return MusicContentStorage.Operations._upsert(identifier:for:)();
}

uint64_t sub_27536A2C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[243];
  *v4 = *v2;
  *(v3 + 1952) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1504), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_27536E4C4;
  }

  else
  {
    v10 = sub_27536A434;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536A434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  OUTLINED_FUNCTION_258_0();
  v52 = OUTLINED_FUNCTION_36_3();
  v53(v52);
  v54 = OUTLINED_FUNCTION_39_4();
  v55(v54);
  OUTLINED_FUNCTION_32_3();
  v56 = v49[218];
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_8_6(v57);
  v58 = v49[167];
  v59 = v49[168];
  v60 = *(v56 + 16);
  v61 = OUTLINED_FUNCTION_78_2();
  v62(v61);
  OUTLINED_FUNCTION_95_1();
  v49[165] = v58;
  v49[166] = v59;
  OUTLINED_FUNCTION_301_0();
  sub_2753B6558();
  OUTLINED_FUNCTION_145_2();
  v63 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v63, v64, v65);
  OUTLINED_FUNCTION_147_2();
  sub_2753B64B8();
  v48(v50, 0);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v51, v66, v67, v68, sub_27538685C);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_102_2();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_27536A680()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[247];
  *v6 = *v1;
  v5[248] = v0;

  v8 = v4[245];

  if (!v0)
  {
    v5[249] = v3;
  }

  v9 = v5[225];
  v10 = v5[224];
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27536A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v11 = v9[249];
  v12 = v9[246];
  v13 = v9[230];
  v14 = v9[206];
  v15 = v9[205];
  OUTLINED_FUNCTION_232_1();
  v16 = v9[187];
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v17 = MEMORY[0x277D83B88];
  v9[118] = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D65050];
  v9[119] = MEMORY[0x277D65050];
  v9[115] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 115);
  sub_2753B65B8();
  v9[113] = v17;
  v9[114] = v18;
  v9[110] = v12;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 110);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_325_0();
  v9[78] = v17;
  v9[79] = v18;
  v9[75] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 75);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v19 = *(v10 + 32);
  v20 = OUTLINED_FUNCTION_78_2();
  v21(v20);
  OUTLINED_FUNCTION_333_0();
  v22 = *(MEMORY[0x277D64F88] + 4);
  v23 = swift_task_alloc();
  v9[250] = v23;
  *v23 = v9;
  v23[1] = sub_27536A954;
  OUTLINED_FUNCTION_86_1(v9[187]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_27536A954()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[250];
  *v4 = *v2;
  *(v3 + 2008) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1496), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_27536E86C;
  }

  else
  {
    v10 = sub_27536A434;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536AAC4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2024);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[254] = v0;

  if (v0)
  {
    v9 = v3[252];
    v10 = v3[186];
    OUTLINED_FUNCTION_85_3();
    v11();

    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536EA40;
  }

  else
  {
    v15 = v3[186];
    OUTLINED_FUNCTION_85_3();
    v16();
    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536ABF4;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

void sub_27536ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v51 = *(v49 + 2016);
  v52 = *(v51 + 16);
  *(v49 + 2040) = v52;
  *(v49 + 2048) = 0;
  if (v52)
  {
    if (*(v51 + 16))
    {
      *(v49 + 2056) = *(v51 + 32);
      *(v49 + 2064) = *(v51 + 40);
      *(v49 + 2072) = *(v51 + 48);
      *(v49 + 2080) = *(v51 + 56);
      *(v49 + 2088) = *(v51 + 64);
      *(v49 + 2096) = *(v51 + 72);
      v53 = *(v51 + 82);
      v54 = *(v51 + 80);
      *(v49 + 124) = v54;
      *(v49 + 120) = v54;
      *(v49 + 126) = v53;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_270_0(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v65 = swift_task_alloc();
      *(v49 + 2104) = v65;
      *v65 = v49;
      OUTLINED_FUNCTION_196_1(v65);
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v67 = OUTLINED_FUNCTION_250_0();
    v68(v67);

    v69 = OUTLINED_FUNCTION_39_4();
    v70(v69);
    OUTLINED_FUNCTION_32_3();
    v71 = *(v49 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v72);
    v73 = OUTLINED_FUNCTION_38_3();
    v74(v73);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v75 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v75, v76, v77);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v78 = OUTLINED_FUNCTION_214_1();
    v48(v78);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v50, v79, v80, v81, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }
}

uint64_t sub_27536AF0C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2104);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 2112) = v0;

  if (v0)
  {
    v9 = *(v3 + 2016);

    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536EC14;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2056), *(v3 + 2064), *(v3 + 2072), *(v3 + 2080), *(v3 + 2088), *(v3 + 2096), *(v3 + 124) | (*(v3 + 126) << 16));
    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536B038;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

void sub_27536B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v51 = *(v49 + 2048) + 1;
  *(v49 + 2048) = v51;
  if (v51 == *(v49 + 2040))
  {
    v52 = *(v49 + 2016);
    v53 = OUTLINED_FUNCTION_250_0();
    v54(v53);

    v55 = OUTLINED_FUNCTION_39_4();
    v56(v55);
    OUTLINED_FUNCTION_32_3();
    v57 = *(v49 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v58);
    v59 = OUTLINED_FUNCTION_38_3();
    v60(v59);
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_145_2();
    v61 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v61, v62, v63);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v64 = OUTLINED_FUNCTION_214_1();
    v48(v64);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v50, v65, v66, v67, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v51 >= *(*(v49 + 2016) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v49 + 2056) = OUTLINED_FUNCTION_231_1(v51);
    *(v49 + 2064) = v76[5];
    *(v49 + 2072) = v76[6];
    *(v49 + 2080) = v76[7];
    *(v49 + 2088) = v76[8];
    *(v49 + 2096) = v76[9];
    OUTLINED_FUNCTION_283_0(v76);
    *(v49 + 124) = v77;
    *(v49 + 120) = v77;
    OUTLINED_FUNCTION_278_0();
    *(v49 + 126) = v78;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_270_0(v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    v89 = swift_task_alloc();
    *(v49 + 2104) = v89;
    *v89 = v49;
    OUTLINED_FUNCTION_196_1(v89);
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536B358()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 2144);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[269] = v0;

  if (v0)
  {
    v11 = v5[267];
    v12 = v5[265];

    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536EE28;
  }

  else
  {
    v16 = v5[265];

    v5[270] = v3;
    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536B480;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_27536B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v11 = v9[270];
  v12 = v9[267];
  v13 = v9[266];
  v14 = v9[230];
  v15 = v9[202];
  v16 = v9[201];
  OUTLINED_FUNCTION_232_1();
  v17 = v9[185];
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v18 = MEMORY[0x277D83B88];
  v9[143] = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D65050];
  v9[144] = MEMORY[0x277D65050];
  v9[140] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 140);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v20 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v20, v21, v22, v23);
  v9[148] = v24;
  v9[149] = sub_27537D288();
  v9[145] = v13;
  v9[146] = v12;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 145);
  sub_2753B65B8();
  v9[38] = v18;
  v9[39] = v19;
  v9[35] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 35);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v25 = *(v10 + 32);
  v26 = OUTLINED_FUNCTION_78_2();
  v27(v26);
  OUTLINED_FUNCTION_333_0();
  v28 = *(MEMORY[0x277D64F88] + 4);
  v29 = swift_task_alloc();
  v9[271] = v29;
  *v29 = v9;
  v29[1] = sub_27536B64C;
  OUTLINED_FUNCTION_86_1(v9[185]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_27536B64C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[271];
  *v4 = *v2;
  *(v3 + 2176) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1480), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_27536EFFC;
  }

  else
  {
    v10 = sub_2753886A0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536B7BC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 2208);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[277] = v0;

  if (v0)
  {
    v11 = v5[275];
    v12 = v5[273];

    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536F1D0;
  }

  else
  {
    v16 = v5[273];

    v5[278] = v3;
    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536B8E4;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_27536B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v11 = v9[278];
  v12 = v9[275];
  v13 = v9[274];
  v14 = v9[230];
  v15 = v9[200];
  v16 = v9[199];
  OUTLINED_FUNCTION_232_1();
  v17 = v9[184];
  OUTLINED_FUNCTION_135_2();
  sub_2753B65C8();
  sub_2753B65B8();
  v9[128] = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D65050];
  v9[129] = MEMORY[0x277D65050];
  v9[125] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 125);
  sub_2753B65B8();
  v19 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v19, v20, v21, v22);
  v9[133] = v23;
  v9[134] = sub_27537D288();
  v9[130] = v13;
  v9[131] = v12;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 130);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_325_0();
  v9[138] = MEMORY[0x277D83B88];
  v9[139] = v18;
  v9[135] = a9;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v9 + 135);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v24 = *(v10 + 32);
  v25 = OUTLINED_FUNCTION_78_2();
  v26(v25);
  OUTLINED_FUNCTION_333_0();
  v27 = *(MEMORY[0x277D64F88] + 4);
  v28 = swift_task_alloc();
  v9[279] = v28;
  *v28 = v9;
  v28[1] = sub_27536BAB0;
  OUTLINED_FUNCTION_86_1(v9[184]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_27536BAB0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[279];
  *v4 = *v2;
  *(v3 + 2240) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1472), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_27536F3A4;
  }

  else
  {
    v10 = sub_2753886A0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536BC20()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_299_0();
  v3 = v0;
  OUTLINED_FUNCTION_2();
  *v4 = v0;
  v5 = v0[283];
  v6 = *v2;
  OUTLINED_FUNCTION_13_2();
  *v7 = v6;
  v0[284] = v8;
  v0[285] = v9;
  v0[286] = v1;

  OUTLINED_FUNCTION_303_0();
  v11 = *(v10 + 2256);
  if (v1)
  {
    v12 = v3[281];

    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536F578;
  }

  else
  {
    v16 = *(v10 + 2256);

    OUTLINED_FUNCTION_152_2();
    v15 = sub_27536BD5C;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_27536BD5C()
{
  v54 = v0;
  if (v0[285])
  {
    v1 = swift_task_alloc();
    v0[287] = v1;
    *v1 = v0;
    v1[1] = sub_27536C048;
    v2 = v0[175];
    OUTLINED_FUNCTION_86_1(v0[284]);
    OUTLINED_FUNCTION_309_0();

    return sub_27537633C();
  }

  else
  {
    v5 = *(v0[281] + 16) + 1;
    v6 = v0[281];
    do
    {
      if (v5 == 1)
      {
        v26 = 6;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_178_1(v6);
    }

    while (v9 > 4);
    v10 = *(v7 + 80) | (v8 << 16);
    v11 = *(v6 - 2);
    v12 = *(v6 - 1);
    v13 = *v6;
    v14 = v6[1];
    v15 = v6[2];
    v46 = *(v6 - 3);
    v47 = v11;
    v48 = v12;
    v49 = v13;
    v50 = v14;
    v51 = v15;
    v53 = BYTE2(v10);
    v52 = v10;

    v16 = OUTLINED_FUNCTION_129_0();
    sub_275315CB8(v16, v17, v12, v13, v14, v15, v10);
    sub_275374B74(&v46, &v45);
    v18 = sub_2752FBB6C(v46, v47, v48, v49, v50, v51, v52 | (v53 << 16));
    v26 = v45;
    if (v45 == 6)
    {
      __break(1u);
      return MEMORY[0x2821CC218](v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v27 = v0[281];

LABEL_11:
    v28 = v0[217];
    v29 = v0[196];
    v30 = v0[195];
    v31 = v0[190];
    v32 = v0[189];
    v44 = v0[182];
    v33 = v0[172];
    OUTLINED_FUNCTION_45_4(v0[175]);
    sub_2753B65C8();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v34 = MEMORY[0x277D64FB8];
    v0[63] = MEMORY[0x277D64FD0];
    v0[64] = v34;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    OUTLINED_FUNCTION_34_4(v0 + 60);
    v35 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v35, v36, v37, v38);
    v0[68] = v39;
    OUTLINED_FUNCTION_143_2();
    v0[69] = sub_275386964(v40, v41);
    *(v0 + 520) = v26;
    sub_2753B6588();
    OUTLINED_FUNCTION_60_1(v0 + 65);
    (*(v31 + 32))(v30, v29, v32);
    sub_2753B65F8();
    v42 = *(MEMORY[0x277D64F88] + 4);
    v43 = swift_task_alloc();
    v0[302] = v43;
    *v43 = v0;
    v43[1] = sub_27536CBE8;
    OUTLINED_FUNCTION_86_1(v0[182]);
    OUTLINED_FUNCTION_309_0();

    return MEMORY[0x2821CC218](v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_27536C048()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_299_0();
  v3 = v0;
  OUTLINED_FUNCTION_2();
  *v4 = v0;
  v5 = v0[287];
  v6 = *v2;
  OUTLINED_FUNCTION_13_2();
  *v7 = v6;
  v0[288] = v8;
  v0[289] = v1;

  OUTLINED_FUNCTION_303_0();
  v10 = *(v9 + 2280);
  if (v1)
  {
    v11 = v3[281];

    OUTLINED_FUNCTION_152_2();
    v14 = sub_27536F730;
  }

  else
  {
    v15 = *(v9 + 2280);

    OUTLINED_FUNCTION_152_2();
    v14 = sub_27536C180;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27536C180()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v1 = v0[288];
  v2 = v0[217];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[190];
  v26 = v0[189];
  v27 = v0[183];
  v6 = v0[175];
  v7 = v0[174];
  v25 = v0[173];
  v8 = v0[172];
  v28 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v0[88] = MEMORY[0x277D64FD0];
  v0[89] = MEMORY[0x277D64FB8];
  sub_2753B6A88();
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 85);
  v0[93] = MEMORY[0x277D83B88];
  v0[94] = MEMORY[0x277D65050];
  v0[90] = v1;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 90);
  v9 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v9, v10, v11, v12);
  v0[98] = v13;
  v0[99] = sub_27537D288();
  v0[95] = v25;
  v0[96] = v7;

  sub_2753B6588();
  OUTLINED_FUNCTION_60_1(v0 + 95);
  (*(v5 + 32))(v4, v3, v26);
  OUTLINED_FUNCTION_333_0();
  v14 = *(MEMORY[0x277D64F88] + 4);
  v15 = swift_task_alloc();
  v0[290] = v15;
  *v15 = v0;
  v15[1] = sub_27536C360;
  OUTLINED_FUNCTION_86_1(v0[183]);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_27536C360()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2320);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[291] = v0;

  if (v0)
  {
    v9 = v3[281];
    v10 = v3[183];
    OUTLINED_FUNCTION_85_3();
    v11();

    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536F8E8;
  }

  else
  {
    v15 = v3[183];
    OUTLINED_FUNCTION_85_3();
    v16();
    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536C490;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27536C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  result = *(v49 + 2248);
  v51 = *(result + 16);
  *(v49 + 2336) = v51;
  *(v49 + 2344) = 0;
  if (v51)
  {
    if (*(result + 16))
    {
      *(v49 + 2352) = *(result + 32);
      *(v49 + 2360) = *(result + 40);
      *(v49 + 2368) = *(result + 48);
      *(v49 + 2376) = *(result + 56);
      *(v49 + 2384) = *(result + 64);
      *(v49 + 2392) = *(result + 72);
      v52 = *(result + 82);
      v53 = *(result + 80);
      *(v49 + 180) = v53;
      *(v49 + 176) = v53;
      *(v49 + 182) = v52;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_292_0(v60, v61, v54, v55, v56, v57, v58, v59);
      *(v49 + 178) = v62;
      sub_275315CB8(v69, v63, v64, v65, v66, v67, v68);
      v70 = swift_task_alloc();
      *(v49 + 2400) = v70;
      *v70 = v49;
      v70[1] = sub_27536C7A4;
      v71 = *(v49 + 2304);
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      return MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v73 = *(v49 + 1784);

    v74 = *(v49 + 1776);
    v75 = *(v49 + 1768);
    v76 = *(v49 + 1760);
    OUTLINED_FUNCTION_151_2();
    v77 = *(v49 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v78);
    v79 = OUTLINED_FUNCTION_25_4();
    v80(v79);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v81 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v81, v82, v83);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v84 = OUTLINED_FUNCTION_244_0();
    v48(v84);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v74, v85, v86, v87, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  return result;
}

uint64_t sub_27536C7A4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2400);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 2408) = v0;

  if (v0)
  {
    v9 = *(v3 + 2248);

    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536FAA0;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2352), *(v3 + 2360), *(v3 + 2368), *(v3 + 2376), *(v3 + 2384), *(v3 + 2392), *(v3 + 180) | (*(v3 + 182) << 16));
    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536C8D0;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

void sub_27536C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v50 = *(v49 + 2344) + 1;
  *(v49 + 2344) = v50;
  if (v50 == *(v49 + 2336))
  {
    v51 = *(v49 + 2248);
    v52 = *(v49 + 1784);

    v53 = *(v49 + 1776);
    v54 = *(v49 + 1768);
    v55 = *(v49 + 1760);
    OUTLINED_FUNCTION_151_2();
    v56 = *(v49 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v57);
    v58 = OUTLINED_FUNCTION_25_4();
    v59(v58);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v60 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v60, v61, v62);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v63 = OUTLINED_FUNCTION_244_0();
    v48(v63);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v53, v64, v65, v66, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v50 >= *(*(v49 + 2248) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v49 + 2352) = OUTLINED_FUNCTION_231_1(v50);
    *(v49 + 2360) = v75[5];
    *(v49 + 2368) = v75[6];
    *(v49 + 2376) = v75[7];
    *(v49 + 2384) = v75[8];
    *(v49 + 2392) = v75[9];
    OUTLINED_FUNCTION_283_0(v75);
    *(v49 + 180) = v76;
    *(v49 + 176) = v76;
    OUTLINED_FUNCTION_278_0();
    *(v49 + 182) = v77;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_292_0(v84, v85, v78, v79, v80, v81, v82, v83);
    *(v49 + 178) = v86;
    sub_275315CB8(v87, v88, v89, v90, v91, v92, v93);
    v94 = swift_task_alloc();
    *(v49 + 2400) = v94;
    *v94 = v49;
    v94[1] = sub_27536C7A4;
    v95 = *(v49 + 2304);
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536CBE8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2416);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[303] = v0;

  if (v0)
  {
    v9 = v3[281];
    v10 = v3[182];
    OUTLINED_FUNCTION_85_3();
    v11();

    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536FC90;
  }

  else
  {
    v15 = v3[182];
    OUTLINED_FUNCTION_85_3();
    v16();
    OUTLINED_FUNCTION_106_3();
    v14 = sub_27536CD18;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27536CD18()
{
  OUTLINED_FUNCTION_14_0();
  sub_27537D100(v0[175], (v0 + 70));
  sub_2753149C4(0, &qword_2809C2CF8);
  sub_2753B6398();
  swift_dynamicCast();
  v0[304] = v0[171];
  v1 = *(MEMORY[0x277D64F30] + 4);
  v2 = swift_task_alloc();
  v0[305] = v2;
  *v2 = v0;
  v2[1] = sub_27536CDF4;

  return MEMORY[0x2821CC1A8]();
}

uint64_t sub_27536CDF4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2440);
  *v4 = *v1;
  v3[306] = v7;
  v3[307] = v0;

  if (v0)
  {
    v8 = v3[281];

    OUTLINED_FUNCTION_106_3();
    v11 = sub_27536FE48;
  }

  else
  {
    OUTLINED_FUNCTION_106_3();
    v11 = sub_27536CF04;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27536CF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  result = *(v48 + 2248);
  v50 = *(result + 16);
  *(v48 + 2464) = v50;
  *(v48 + 2472) = 0;
  if (v50)
  {
    if (*(result + 16))
    {
      *(v48 + 2480) = *(result + 32);
      *(v48 + 2488) = *(result + 40);
      *(v48 + 2496) = *(result + 48);
      *(v48 + 2504) = *(result + 56);
      *(v48 + 2512) = *(result + 64);
      *(v48 + 2520) = *(result + 72);
      v51 = *(result + 82);
      v52 = *(result + 80);
      *(v48 + 236) = v52;
      *(v48 + 232) = v52;
      *(v48 + 238) = v51;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_288_0(v59, v60, v53, v54, v55, v56, v57, v58);
      *(v48 + 234) = v61;
      sub_275315CB8(v68, v62, v63, v64, v65, v66, v67);
      v69 = swift_task_alloc();
      *(v48 + 2528) = v69;
      *v69 = v48;
      v69[1] = sub_27536D224;
      v70 = *(v48 + 2448);
      OUTLINED_FUNCTION_53_4();
      OUTLINED_FUNCTION_102_2();

      return MusicContentStorage.Operations._upsert(identifier:for:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v72 = *(v48 + 2432);
    v73 = *(v48 + 1784);

    v74 = *(v48 + 1776);
    v75 = *(v48 + 1768);
    v76 = *(v48 + 1760);
    OUTLINED_FUNCTION_151_2();
    v77 = *(v48 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v78);
    v79 = OUTLINED_FUNCTION_25_4();
    v80(v79);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v81 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v81, v82, v83);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v84 = OUTLINED_FUNCTION_244_0();
    v73(v84);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v74, v85, v86, v87, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  return result;
}

uint64_t sub_27536D224()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2528);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 2536) = v0;

  if (v0)
  {
    v9 = *(v3 + 2248);

    OUTLINED_FUNCTION_106_3();
    v12 = sub_275370010;
  }

  else
  {
    sub_2752FBB6C(*(v3 + 2480), *(v3 + 2488), *(v3 + 2496), *(v3 + 2504), *(v3 + 2512), *(v3 + 2520), *(v3 + 236) | (*(v3 + 238) << 16));
    OUTLINED_FUNCTION_106_3();
    v12 = sub_27536D350;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

void sub_27536D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v49 = *(v48 + 2472) + 1;
  *(v48 + 2472) = v49;
  if (v49 == *(v48 + 2464))
  {
    v50 = *(v48 + 2432);
    v51 = *(v48 + 2248);
    v52 = *(v48 + 1784);

    v53 = *(v48 + 1776);
    v54 = *(v48 + 1768);
    v55 = *(v48 + 1760);
    OUTLINED_FUNCTION_151_2();
    v56 = *(v48 + 1744);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_8_6(v57);
    v58 = OUTLINED_FUNCTION_25_4();
    v59(v58);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_145_2();
    v60 = OUTLINED_FUNCTION_6_3();
    sub_27538672C(v60, v61, v62);
    OUTLINED_FUNCTION_147_2();
    sub_2753B64B8();
    v63 = OUTLINED_FUNCTION_244_0();
    v52(v63);
    OUTLINED_FUNCTION_1_8();
    sub_275388564(v53, v64, v65, v66, sub_27538685C);

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_102_2();

    v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  else if (v49 >= *(*(v48 + 2248) + 16))
  {
    __break(1u);
  }

  else
  {
    *(v48 + 2480) = OUTLINED_FUNCTION_231_1(v49);
    *(v48 + 2488) = v75[5];
    *(v48 + 2496) = v75[6];
    *(v48 + 2504) = v75[7];
    *(v48 + 2512) = v75[8];
    *(v48 + 2520) = v75[9];
    OUTLINED_FUNCTION_283_0(v75);
    *(v48 + 236) = v76;
    *(v48 + 232) = v76;
    OUTLINED_FUNCTION_278_0();
    *(v48 + 238) = v77;
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_288_0(v84, v85, v78, v79, v80, v81, v82, v83);
    *(v48 + 234) = v86;
    sub_275315CB8(v87, v88, v89, v90, v91, v92, v93);
    v94 = swift_task_alloc();
    *(v48 + 2528) = v94;
    *v94 = v48;
    v94[1] = sub_27536D224;
    v95 = *(v48 + 2448);
    OUTLINED_FUNCTION_53_4();
    OUTLINED_FUNCTION_102_2();

    MusicContentStorage.Operations._upsert(identifier:for:)();
  }
}

uint64_t sub_27536D674()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[318];
  *v4 = *v2;
  *(v3 + 2552) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1448), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_27537020C;
  }

  else
  {
    v10 = sub_27536D7E4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_158_2();
  v50 = v49[223];

  v51 = v49[222];
  v52 = v49[221];
  v53 = v49[220];
  OUTLINED_FUNCTION_151_2();
  v54 = v49[218];
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_8_6(v55);
  v56 = OUTLINED_FUNCTION_25_4();
  v57(v56);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_145_2();
  v58 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v58, v59, v60);
  OUTLINED_FUNCTION_147_2();
  sub_2753B64B8();
  v61 = OUTLINED_FUNCTION_244_0();
  v48(v61);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v51, v62, v63, v64, sub_27538685C);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_102_2();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_27536DA00()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[320];
  *v4 = *v2;
  *(v3 + 2568) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[179] + 8))(*(v6 + 1440), v1[178]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 1800);
  v9 = v1[224];
  if (v0)
  {
    v10 = sub_2753703C4;
  }

  else
  {
    v10 = sub_2753886A8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_27536DB70()
{
  OUTLINED_FUNCTION_294_0();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2[217]);
  v4 = OUTLINED_FUNCTION_96_0();
  sub_27537D200(v4, v5);
  OUTLINED_FUNCTION_332_0(v0);
  if (!v6)
  {
    v34 = OUTLINED_FUNCTION_190_1();
    v35(v34);
    sub_2753B6A88();
    v36 = v2[159];
    v2[228] = v2[160];
    v37 = swift_task_alloc();
    v2[229] = v37;
    *v37 = v2;
    v37[1] = sub_275368BAC;
    v38 = v2[175];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_148_0();

    return sub_27537633C();
  }

  OUTLINED_FUNCTION_219_1();
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v7, v8, v9, v10, sub_27538685C);
  sub_2753B6A58();
  v11 = *(v3 + 88);
  v12 = OUTLINED_FUNCTION_129_0();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D65178])
  {
    OUTLINED_FUNCTION_81_1();
    v16 = OUTLINED_FUNCTION_126_0(v15);
    v17(v16);
    v18 = *v1;
    v2[281] = *v1;
    v19 = MEMORY[0x277D84F90];
    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_234_1();
      v19 = v126;
      v20 = v18 + 40;
      do
      {
        OUTLINED_FUNCTION_218_1();
        v20 += 56;
        switch(v22)
        {
          case 1:
          case 3:
          case 4:
          case 5:
            break;
          case 2:
            v23 = *(v21 + 24) | 0x40u;

            break;
          default:
            OUTLINED_FUNCTION_291();
            break;
        }

        v25 = *(v126 + 16);
        v24 = *(v126 + 24);

        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_262_0();
        }

        OUTLINED_FUNCTION_183(v26, v27, v28, v29, v30, v31, v32, v33, v111, v115, v120, v121, v122, v123, v124, v125);
      }

      while (!v6);
      v2 = v124;
    }

    v2[282] = v19;
    v65 = swift_task_alloc();
    v2[283] = v65;
    *v65 = v2;
    OUTLINED_FUNCTION_116_3(v65);
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.firstContentID(matching:in:)();
  }

  if (v14 == *MEMORY[0x277D65170])
  {
    v41 = v2[217];
    OUTLINED_FUNCTION_81_1();
    v42 = v2[194];
    v43 = v2[193];
    OUTLINED_FUNCTION_163_0();
    v44 = v2[181];
    v46 = OUTLINED_FUNCTION_46_3(v45);
    v47(v46);
    v49 = *v1;
    v48 = v1[1];
    v116 = v1[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0();
    v50 = MEMORY[0x277D64FD0];
    v51 = MEMORY[0x277D64FB8];
    v2[48] = MEMORY[0x277D64FD0];
    v2[49] = v51;
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 45);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    v2[53] = v50;
    v2[54] = v51;
    v2[50] = v49;
    v2[51] = v48;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 50);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_315_0(MEMORY[0x277D83B88], v111, v116);
    v52 = OUTLINED_FUNCTION_60_1(v2 + 55);
    v60 = OUTLINED_FUNCTION_93_3(v52, v53, v54, v55, v56, v57, v58, v59, v112, v117, v120);
    v61(v60);
    OUTLINED_FUNCTION_326_0();
    v62 = *(MEMORY[0x277D64F88] + 4);
    v63 = swift_task_alloc();
    v2[318] = v63;
    *v63 = v2;
    OUTLINED_FUNCTION_130_1(v63);
LABEL_24:
    OUTLINED_FUNCTION_86_1(v64);
    OUTLINED_FUNCTION_148_0();

    return MEMORY[0x2821CC218](v101, v102, v103, v104, v105, v106, v107, v108);
  }

  if (v14 == *MEMORY[0x277D65168])
  {
    v67 = v2[217];
    OUTLINED_FUNCTION_81_1();
    v68 = v2[192];
    v69 = v2[191];
    OUTLINED_FUNCTION_163_0();
    v70 = v2[180];
    v72 = OUTLINED_FUNCTION_46_3(v71);
    v73(v72);
    v74 = *v1;
    v75 = v1[1];
    v113 = v1[3];
    v118 = v1[2];
    OUTLINED_FUNCTION_108_3();
    sub_2753B65C8();
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_274_0();
    v2[123] = MEMORY[0x277D64FD0];
    v2[124] = MEMORY[0x277D64FB8];
    OUTLINED_FUNCTION_272_0();
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1(v2 + 120);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_260_0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 100);
    OUTLINED_FUNCTION_73_4();
    v76 = OUTLINED_FUNCTION_7_4();
    sub_275388174(v76, v77, v78, v79);
    v2[83] = v80;
    v81 = sub_27537D288();
    OUTLINED_FUNCTION_259_0(v81, v82, v83, v84, v85, v86, v87, v88, v113, v118);
    v89 = OUTLINED_FUNCTION_60_1(v2 + 80);
    v97 = OUTLINED_FUNCTION_93_3(v89, v90, v91, v92, v93, v94, v95, v96, v114, v119, v120);
    v98(v97);
    OUTLINED_FUNCTION_326_0();
    v99 = *(MEMORY[0x277D64F88] + 4);
    v100 = swift_task_alloc();
    v2[320] = v100;
    *v100 = v2;
    OUTLINED_FUNCTION_136_3(v100);
    v64 = v2[180];
    goto LABEL_24;
  }

  v109 = v2[211];
  OUTLINED_FUNCTION_148_0();

  return sub_2753B7708();
}

uint64_t sub_27536E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_230_1();

  v45 = *(v44 + 8);
  v46 = OUTLINED_FUNCTION_129_0();
  v47(v46);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v48, v49, v50, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 1848));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  LODWORD(a38) = *(v45 + 68) | (*(v45 + 70) << 16);
  v65 = *(v45 + 1912);
  v66 = *(v45 + 1920);
  v49 = *(v45 + 1904);
  v50 = *(v45 + 1896);
  v51 = *(v45 + 1888);
  v52 = *(v45 + 1880);
  OUTLINED_FUNCTION_189_1();
  (*(v42 + 8))(v48, v43);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v47, v53, v54, v55, sub_27538685C);
  OUTLINED_FUNCTION_235_1();
  (*(v46 + 8))(v44, a34);
  OUTLINED_FUNCTION_0_7(*(v45 + 1936));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v65, v66, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 1952));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 1984));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2008));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2032));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  LODWORD(a38) = *(v45 + 124) | (*(v45 + 126) << 16);
  v65 = *(v45 + 2088);
  v66 = *(v45 + 2096);
  v49 = *(v45 + 2080);
  v50 = *(v45 + 2072);
  v51 = *(v45 + 2064);
  v52 = *(v45 + 2056);
  OUTLINED_FUNCTION_189_1();
  (*(v42 + 8))(v48, v43);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v47, v53, v54, v55, sub_27538685C);
  OUTLINED_FUNCTION_235_1();
  (*(v46 + 8))(v44, a34);
  OUTLINED_FUNCTION_0_7(*(v45 + 2112));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v65, v66, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2152));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2176));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2216));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_17_5();
  v44 = OUTLINED_FUNCTION_56_3();
  v45(v44);
  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v46, v47, v48, sub_27538685C);
  v49 = OUTLINED_FUNCTION_44_4();
  v50(v49);
  OUTLINED_FUNCTION_0_7(*(v43 + 2240));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2288));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2312));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2328));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = *(v42 + 180) | (*(v42 + 182) << 16);
  v44 = *(v42 + 2392);
  v45 = *(v42 + 2384);
  v46 = *(v42 + 2376);
  v47 = *(v42 + 2368);
  v48 = *(v42 + 2360);
  v49 = *(v42 + 2352);
  v50 = *(v42 + 1784);
  v51 = *(v42 + 1776);

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v51, v52, v53, v54, sub_27538685C);
  OUTLINED_FUNCTION_119_3();
  sub_2752FBB6C(v55, v56, v57, v58, v59, v60, v43);
  OUTLINED_FUNCTION_0_7(*(v42 + 2408));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2424));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27536FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = v42[304];
  v44 = v42[223];
  v45 = v42[222];

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v45, v46, v47, v48, sub_27538685C);
  OUTLINED_FUNCTION_0_7(v42[307]);

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_275370010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  v43 = *(v42 + 236) | (*(v42 + 238) << 16);
  v44 = *(v42 + 2520);
  v45 = *(v42 + 2512);
  v46 = *(v42 + 2504);
  v47 = *(v42 + 2496);
  v48 = *(v42 + 2488);
  v49 = *(v42 + 2480);
  v50 = *(v42 + 2432);
  v51 = *(v42 + 1784);
  v52 = *(v42 + 1776);

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v52, v53, v54, v55, sub_27538685C);
  OUTLINED_FUNCTION_119_3();
  sub_2752FBB6C(v56, v57, v58, v59, v60, v61, v43);
  OUTLINED_FUNCTION_0_7(*(v42 + 2536));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_27537020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2552));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_2753703C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_125_3();

  OUTLINED_FUNCTION_1_8();
  sub_275388564(v42, v44, v45, v46, sub_27538685C);
  OUTLINED_FUNCTION_0_7(*(v43 + 2568));

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_87_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t MusicContentStorage.Operations.updateDebugDescription(_:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_2753B6608();
  v1[22] = v6;
  OUTLINED_FUNCTION_17_1(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_138_0();
  v10 = sub_2753B65D8();
  v1[25] = v10;
  OUTLINED_FUNCTION_17_1(v10);
  v1[26] = v11;
  v13 = *(v12 + 64);
  v1[27] = OUTLINED_FUNCTION_187_1();
  v1[28] = swift_task_alloc();
  v14 = sub_2753B6638();
  v1[29] = v14;
  OUTLINED_FUNCTION_17_1(v14);
  v1[30] = v15;
  v17 = *(v16 + 64);
  v1[31] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[32] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v18, 255, v19);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[33] = v20;
  v1[34] = v21;
  v22 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_275370718()
{
  OUTLINED_FUNCTION_3();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_2753B6628();
  v4 = sub_2753B6618();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_96_0();
  v7(v6);
  if (v4)
  {
    v8 = *(v0 + 224);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    sub_27537D100(*(v0 + 168), v0 + 16);
    *(v0 + 296) = OUTLINED_FUNCTION_150_2((v0 + 280));
    sub_2753B65C8();
    sub_2753B65B8();
    v11 = MEMORY[0x277D65000];
    *(v0 + 80) = MEMORY[0x277D837D0];
    *(v0 + 88) = v11;
    *(v0 + 56) = v10;
    *(v0 + 64) = v9;

    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_325_0();
    v12 = swift_task_alloc();
    *(v0 + 304) = v12;
    *v12 = v0;
    v12[1] = sub_2753708DC;
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    OUTLINED_FUNCTION_86_1(*(v0 + 152));

    return sub_27537633C();
  }

  else
  {
    v16 = *(v0 + 256);

    v17 = *(v0 + 248);
    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    v20 = *(v0 + 192);

    OUTLINED_FUNCTION_35_0();

    return v21();
  }
}

uint64_t sub_2753708DC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = *(v6 + 304);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[39] = v0;

  if (v0)
  {
    v10 = v4[33];
    v11 = v4[34];
    v12 = sub_275370CF8;
  }

  else
  {
    v4[40] = v1;
    v10 = v4[33];
    v11 = v4[34];
    v12 = sub_2753709E8;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2753709E8()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = MEMORY[0x277D65050];
  v7 = v0[24];
  v0[15] = MEMORY[0x277D83B88];
  v0[16] = v6;
  v0[12] = v1;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v8 = *(v5 + 32);
  v9 = OUTLINED_FUNCTION_27();
  v10(v9);
  sub_2753B65F8();
  v11 = *(MEMORY[0x277D64F88] + 4);
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_275370AF0;
  v13 = v0[36];
  v14 = v0[37];
  v15 = v0[35];
  OUTLINED_FUNCTION_86_1(v0[24]);
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC218](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_275370AF0()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[41];
  v6 = v1[24];
  v7 = v1[23];
  v8 = v1[22];
  *v4 = *v2;
  *(v3 + 336) = v0;

  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_97_0();
  v11(v10);
  OUTLINED_FUNCTION_145_0();
  v13 = *(v12 + 272);
  v14 = v1[33];
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_275370C68()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[32];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[24];

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_275370CF8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[39];
  v8 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_275370D9C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[32];

  v2 = v0[42];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t MusicContentStorage.Operations.storeMediaAPIAttributes(_:attributesMask:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v1[20] = v4;
  v1[21] = v0;
  v1[18] = v5;
  v1[19] = v6;
  v1[17] = v7;
  v8 = sub_2753B6608();
  v1[22] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = OUTLINED_FUNCTION_187_1();
  v1[25] = swift_task_alloc();
  v12 = sub_2753B65D8();
  v1[26] = v12;
  OUTLINED_FUNCTION_17_1(v12);
  v1[27] = v13;
  v15 = *(v14 + 64);
  v1[28] = OUTLINED_FUNCTION_187_1();
  v16 = swift_task_alloc();
  v17 = *v3;
  v1[29] = v16;
  v1[30] = v17;
  sub_2753B6288();
  v1[31] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v18, 255, v19);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[32] = v20;
  v1[33] = v21;
  v22 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_275370F8C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 232);
  sub_27537D100(*(v0 + 168), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 272) = v2;
  *(v0 + 288) = OUTLINED_FUNCTION_227_1(*&v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 296) = v3;
  *v3 = v4;
  v3[1] = sub_275371068;
  v5 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);

  return sub_27537542C(v5, v8, v6);
}

uint64_t sub_275371068()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 296);
  *v4 = *v2;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 264);
  v8 = *(v1 + 256);
  if (v0)
  {
    v9 = sub_275371520;
  }

  else
  {
    v9 = sub_275371190;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275371190()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[23];
  v31 = v0[26];
  v32 = v0[24];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  sub_2753B6598();
  v0[39] = *(v6 + 8);
  v0[40] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_107_0();
  v11(v10);
  OUTLINED_FUNCTION_40_3();
  v12 = MEMORY[0x277D65050];
  v0[10] = MEMORY[0x277D83B88];
  v0[11] = v12;
  v0[7] = v2;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 7);
  v13 = MEMORY[0x277D64EE0];
  v0[15] = MEMORY[0x277CC9318];
  v0[16] = v13;
  v0[12] = v9;
  v0[13] = v8;
  sub_2752F22F8(v9, v8);
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_27();
  v16(v15);
  sub_2753B65F8();
  v17 = *(MEMORY[0x277D64F88] + 4);
  v18 = swift_task_alloc();
  v0[41] = v18;
  *v18 = v0;
  v18[1] = sub_27537131C;
  v19 = v0[35];
  v20 = v0[36];
  v21 = v0[34];
  OUTLINED_FUNCTION_86_1(v0[24]);
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_27537131C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[41];
  v6 = v1[40];
  v7 = v1[39];
  v8 = v1[24];
  v9 = v1[22];
  *v4 = *v2;
  *(v3 + 336) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 264);
  v13 = v1[32];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_27537149C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[24];
  v4 = v0[25];

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_275371520()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[38];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[24];
  v10 = v0[25];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2753715C0()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[31];

  v2 = v0[42];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t MusicContentStorage.Operations.storeMediaAPITransitionInfo(_:for:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  *(v1 + 224) = v4;
  *(v1 + 232) = v0;
  *(v1 + 216) = v5;
  v6 = sub_2753B6608();
  *(v1 + 240) = v6;
  OUTLINED_FUNCTION_17_1(v6);
  *(v1 + 248) = v7;
  v9 = *(v8 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_187_1();
  *(v1 + 264) = swift_task_alloc();
  v10 = sub_2753B65D8();
  *(v1 + 272) = v10;
  OUTLINED_FUNCTION_17_1(v10);
  *(v1 + 280) = v11;
  v13 = *(v12 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_187_1();
  *(v1 + 296) = swift_task_alloc();
  v14 = v3[1];
  *(v1 + 304) = *v3;
  *(v1 + 320) = v14;
  v15 = v3[3];
  *(v1 + 336) = v3[2];
  *(v1 + 352) = v15;
  sub_2753B6288();
  *(v1 + 368) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v16, 255, v17);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 376) = v18;
  *(v1 + 384) = v19;
  v20 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2753717B4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 296);
  sub_27537D100(*(v0 + 232), v0 + 16);
  *(v0 + 408) = OUTLINED_FUNCTION_150_2((v0 + 392));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 416) = v2;
  *v2 = v3;
  v2[1] = sub_27537188C;
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);

  return sub_27537542C(v4, v7, v5);
}

uint64_t sub_27537188C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 416);
  *v4 = *v2;
  *(v3 + 424) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 384);
  v8 = *(v1 + 376);
  if (v0)
  {
    v9 = sub_275371DBC;
  }

  else
  {
    v9 = sub_2753719B4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2753719B4()
{
  v34 = v0[44];
  v35 = v0[45];
  v1 = v0[42];
  v33 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];
  v36 = v0[35];
  v37 = v0[36];
  v7 = v0[33];
  v38 = v0[34];
  v39 = v0[32];
  v8 = v0[30];
  v9 = v0[31];
  sub_2753B6598();
  v0[54] = *(v9 + 8);
  v0[55] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_107_0();
  v11(v10);
  OUTLINED_FUNCTION_40_3();
  v12 = MEMORY[0x277CC9318];
  v13 = MEMORY[0x277D64EE0];
  v0[10] = MEMORY[0x277CC9318];
  v0[11] = v13;
  v0[7] = v4;
  v0[8] = v5;
  v14 = OUTLINED_FUNCTION_53();
  sub_2752F22F8(v14, v15);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 7);
  v0[15] = v12;
  v0[16] = v13;
  v0[12] = v2;
  v0[13] = v3;
  sub_2752F22F8(v2, v3);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 12);
  v0[20] = v12;
  v0[21] = v13;
  v0[17] = v1;
  v0[18] = v33;
  sub_2752F22F8(v1, v33);
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 17);
  v0[25] = v12;
  v0[26] = v13;
  v0[22] = v34;
  v0[23] = v35;
  sub_2752F22F8(v34, v35);
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v16 = *(v36 + 32);
  v17 = OUTLINED_FUNCTION_27();
  v18(v17);
  sub_2753B65F8();
  v19 = *(MEMORY[0x277D64F88] + 4);
  v20 = swift_task_alloc();
  v0[56] = v20;
  *v20 = v0;
  v20[1] = sub_275371BB8;
  v21 = v0[50];
  v22 = v0[51];
  v23 = v0[49];
  OUTLINED_FUNCTION_86_1(v0[32]);
  OUTLINED_FUNCTION_131_0();

  return MEMORY[0x2821CC218](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_275371BB8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[56];
  v6 = v1[55];
  v7 = v1[54];
  v8 = v1[32];
  v9 = v1[30];
  *v4 = *v2;
  *(v3 + 456) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 384);
  v13 = v1[47];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_275371D38()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[46];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v4 = v0[33];

  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_275371DBC()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[46];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[53];
  v9 = v0[36];
  v8 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_275371E5C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[46];

  v2 = v0[57];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_195();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_275371EE4()
{
  sub_275387F04(0, &qword_2809C2ED8, sub_275387F64, MEMORY[0x277D85A78]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2753B7838();
  qword_2809C2CC0 = result;
  return result;
}

uint64_t sub_275371F64()
{
  OUTLINED_FUNCTION_14_0();
  v1[3] = v2;
  v1[4] = v0;
  v3 = OUTLINED_FUNCTION_6_3();
  sub_27538672C(v3, v4, v5);
  OUTLINED_FUNCTION_75(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_138_0();
  v9 = sub_2753B6348();
  v1[6] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[7] = v10;
  v12 = *(v11 + 64);
  v1[8] = OUTLINED_FUNCTION_138_0();
  sub_2753B6288();
  v1[9] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[10] = v15;
  v1[11] = v16;
  v17 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_27537207C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_2753B6358();
  (*(v2 + 104))(v1, *MEMORY[0x277D64F20], v4);
  v6[3] = sub_2753B6338();
  v0[2] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_21_4();
  sub_2753868E4(0, v7, v8, v9, MEMORY[0x277D65188]);
  sub_275387F04(0, &qword_2809C2F28, sub_27538827C, MEMORY[0x277D83940]);
  sub_275314624();
  sub_27538831C();
  sub_2753B6498();
  sub_2753883A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v6[4] = sub_2753B6548();
  v6[2] = v5;

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_275372240;
  v14 = v0[4];
  OUTLINED_FUNCTION_111_0();

  return sub_27537247C();
}

uint64_t sub_275372240()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 88);
  v8 = *(v1 + 80);
  if (v0)
  {
    v9 = sub_2753723F0;
  }

  else
  {
    v9 = sub_275372368;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275372368()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[3];

  OUTLINED_FUNCTION_105_3();
  v6 = v0[4];

  return v5(v6);
}

uint64_t sub_2753723F0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  OUTLINED_FUNCTION_19_0();
  v7 = v0[13];

  return v6();
}

uint64_t sub_27537247C()
{
  OUTLINED_FUNCTION_14_0();
  v1[2] = v0;
  sub_2753B6288();
  v1[3] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v2, 255, v3);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[4] = v4;
  v1[5] = v5;
  v6 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_275372520()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x277D64F18] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_2753725D8;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC178](v3, &unk_2753CBDF8, v4, v5);
}

uint64_t sub_2753725D8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 48);
  *v4 = *v2;
  *(v3 + 56) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 40);
  v8 = *(v1 + 32);
  if (v0)
  {
    v9 = sub_275372700;
  }

  else
  {
    v9 = sub_2753886D4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275372700()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_27537275C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2753B6288();
  v2[4] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_275372828, v4, v3);
}

uint64_t sub_275372828()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0[3] + 16);
  v2 = *(MEMORY[0x277D64F48] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_2753728F8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC1B8](v5, 0xD000000000000010, 0x80000002753BBEB0, &unk_2753CBE08, v6, v7);
}

uint64_t sub_2753728F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 56);
  *v4 = *v2;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 48);
  v8 = *(v1 + 40);
  if (v0)
  {
    v9 = sub_275372A78;
  }

  else
  {
    v9 = sub_275372A20;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275372A20()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275372A78()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_275372AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  sub_2753B6288();
  v3[10] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_275372BA0, v5, v4);
}

uint64_t sub_275372BA0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_2753B6398();
  v4 = MEMORY[0x277D64F38];
  v0[5] = v3;
  v0[6] = v4;
  v0[2] = v1;
  v0[7] = *(v2 + 32);

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_275372C6C;

  return sub_275372E58();
}

uint64_t sub_275372C6C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 96);
  v8 = *(v1 + 88);
  if (v0)
  {
    v9 = sub_275372DF4;
  }

  else
  {
    v9 = sub_275372D94;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275372D94()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);

  sub_275317184(v0 + 16);
  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275372DF4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);

  sub_275317184(v0 + 16);
  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_275372E58()
{
  v1[32] = v0;
  v2 = sub_2753B6608();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_2753B65D8();
  v1[37] = v5;
  v6 = *(v5 - 8);
  v1[38] = v6;
  v7 = *(v6 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  sub_2753B6288();
  v1[41] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v9 = sub_2753B70C8();
  v1[42] = v9;
  v1[43] = v8;

  return MEMORY[0x2822009F8](sub_275372FF4, v9, v8);
}

uint64_t sub_275372FF4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = OUTLINED_FUNCTION_9_5();
  sub_275388174(v1, v2, v3, v4);
  inited = swift_initStackObject();
  v0[44] = inited;
  *(inited + 16) = xmmword_2753CB7E0;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0x756F735F6970616DLL;
  *(inited + 56) = 0xEB00000000656372;
  strcpy((inited + 64), "library_source");
  *(inited + 79) = -18;
  OUTLINED_FUNCTION_241_0();
  *(v6 + 80) = 0xD000000000000014;
  *(v6 + 88) = v7;
  OUTLINED_FUNCTION_241_0();
  *(v8 + 96) = 0xD000000000000017;
  *(v8 + 104) = v9;
  *(v8 + 112) = 0xD000000000000015;
  *(v8 + 120) = 0x80000002753BBF10;
  strcpy((v8 + 128), "opaque_source");
  *(v8 + 142) = -4864;
  OUTLINED_FUNCTION_241_0();
  v10[18] = 0xD000000000000010;
  v10[19] = v11;
  v10[20] = 0x7474615F6970616DLL;
  v10[21] = 0xEF73657475626972;
  OUTLINED_FUNCTION_241_0();
  *(v12 + 176) = 0xD000000000000014;
  *(v12 + 184) = v13;
  strcpy((v12 + 192), "network_task");
  *(v12 + 205) = 0;
  *(v12 + 206) = -5120;
  OUTLINED_FUNCTION_241_0();
  *(v14 + 208) = 0xD000000000000018;
  *(v14 + 216) = v15;
  v0[45] = 12;
  v16 = v0[44];
  v18 = v0[39];
  v17 = v0[40];
  v20 = v0[37];
  v19 = v0[38];
  v35 = v0[36];
  v21 = v0[32];
  v22 = *(v16 + 208);
  v23 = *(v16 + 216);
  v36 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);

  sub_2753B65C8();
  sub_2753B65B8();
  v0[30] = v22;
  v0[31] = v23;
  sub_2753B6578();

  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  (*(v19 + 32))(v18, v17, v20);
  sub_2753B65F8();
  v24 = *(MEMORY[0x277D64F88] + 4);
  v25 = swift_task_alloc();
  v0[46] = v25;
  *v25 = v0;
  v25[1] = sub_2753732C4;
  OUTLINED_FUNCTION_86_1(v0[36]);
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_2753732C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[47] = v0;

  if (v0)
  {
    v9 = v3[44];
    (*(v3[34] + 8))(v3[36], v3[33]);
    swift_setDeallocating();
    sub_275384DC0();
    v10 = v3[42];
    v11 = v3[43];
    v12 = sub_27537380C;
  }

  else
  {
    (*(v3[34] + 8))(v3[36], v3[33]);
    v10 = v3[42];
    v11 = v3[43];
    v12 = sub_27537340C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27537340C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = v0[45];
  v0[45] = v1 - 1;
  if (v1 == 1)
  {
    v23 = v0[44];
    v24 = v0[35];
    v25 = v0[32];
    swift_setDeallocating();
    swift_arrayDestroy();
    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    v28 = OUTLINED_FUNCTION_90_0();
    __swift_project_boxed_opaque_existential_1(v28, v29);
    OUTLINED_FUNCTION_85_0();
    sub_2753B65E8();
    v30 = *(MEMORY[0x277D64F88] + 4);
    v31 = swift_task_alloc();
    v0[48] = v31;
    *v31 = v0;
    v31[1] = sub_27537360C;
    OUTLINED_FUNCTION_86_1(v0[35]);
  }

  else
  {
    v3 = v0[39];
    v2 = v0[40];
    v4 = v0[37];
    v5 = v0[38];
    v6 = v0[36];
    v7 = (v0[44] + 16 * v1);
    v8 = *v7;
    v9 = v7[1];
    OUTLINED_FUNCTION_45_4(v0[32]);

    sub_2753B65C8();
    sub_2753B65B8();
    v0[30] = v8;
    v0[31] = v9;
    sub_2753B6578();

    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    v10 = *(v5 + 32);
    v11 = OUTLINED_FUNCTION_78_2();
    v12(v11);
    OUTLINED_FUNCTION_199_1();
    sub_2753B65F8();
    v13 = *(MEMORY[0x277D64F88] + 4);
    v14 = swift_task_alloc();
    v0[46] = v14;
    *v14 = v0;
    v14[1] = sub_2753732C4;
    OUTLINED_FUNCTION_86_1(v0[36]);
  }

  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_27537360C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[48];
  v6 = v1[35];
  v7 = v1[34];
  v8 = v1[33];
  *v4 = *v2;
  *(v3 + 392) = v0;

  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_97_0();
  v11(v10);
  OUTLINED_FUNCTION_145_0();
  v13 = *(v12 + 344);
  v14 = v1[42];
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_275373784()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v5 = v0[35];
  v4 = v0[36];

  OUTLINED_FUNCTION_35_0();

  return v6();
}

uint64_t sub_27537380C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[41];

  v2 = v0[47];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_275373894()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[41];

  v2 = v0[49];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_27537391C()
{
  OUTLINED_FUNCTION_14_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_2753B6288();
  v1[7] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v6, 255, v7);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[8] = v8;
  v1[9] = v9;
  v10 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753739C8()
{
  OUTLINED_FUNCTION_3();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = *(MEMORY[0x277D64F18] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 88) = v7;
  *v7 = v8;
  v7[1] = sub_275373AA0;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x2821CC178](v10, &unk_2753CB890, v4, v9);
}

uint64_t sub_275373AA0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_275312990;
  }

  else
  {
    v12 = v3[10];

    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_275373BA4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275373BA4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275373BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_2753B6288();
  v4[19] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_275373CCC, v6, v5);
}

uint64_t sub_275373CCC()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  sub_2753B7848();
  v1 = v0[14];
  v3 = v0[16];
  v2 = v0[17];
  if (v1)
  {
    v4 = sub_2753B6398();
    v5 = MEMORY[0x277D64F38];
    v0[11] = v4;
    v0[12] = v5;
    v0[8] = v1;
    v0[13] = *(v3 + 32);

    OUTLINED_FUNCTION_1_3();
    v20 = v6;
    v7 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v0[22] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_77_0(v8);
    v11 = v0 + 8;
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = sub_2753B6438();
    v14 = MEMORY[0x277D64F68];
    v0[5] = v13;
    v0[6] = v14;
    v0[2] = v12;
    v0[7] = *(v3 + 32);

    OUTLINED_FUNCTION_1_3();
    v20 = v15;
    v16 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v0[24] = v17;
    *v17 = v18;
    v10 = OUTLINED_FUNCTION_77_0(v17);
    v11 = v0 + 2;
  }

  return v20(v10, v11);
}

uint64_t sub_275373E94()
{
  OUTLINED_FUNCTION_14_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  sub_2753B6288();
  v1[9] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v8, 255, v9);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[10] = v10;
  v1[11] = v11;
  v12 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275373F44()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v7;
  *(v6 + 56) = v3;
  v8 = *(MEMORY[0x277D64F18] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 104) = v9;
  *v9 = v10;
  v9[1] = sub_27537402C;
  v11 = *(v0 + 56);
  v12 = *(v0 + 16);
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC178](v13, v14, v15, v16);
}

uint64_t sub_27537402C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_275374130;
  }

  else
  {
    v12 = v3[12];

    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_275326DB0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275374130()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[12];
  v2 = v0[9];

  OUTLINED_FUNCTION_19_0();
  v4 = v0[14];

  return v3();
}

uint64_t sub_275374198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_2753B6288();
  v7[9] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v9 = sub_2753B70C8();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_275374270, v9, v8);
}

uint64_t sub_275374270()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  v6 = *(MEMORY[0x277D64F48] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 104) = v7;
  *v7 = v8;
  v7[1] = sub_275374354;
  v9 = *(v0 + 64);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  return MEMORY[0x2821CC1B8](v12, v10, v11, &unk_2753CBE28, v4, v9);
}

uint64_t sub_275374354()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_2753886C4;
  }

  else
  {
    v12 = v3[12];

    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_2753886D0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275374458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = sub_2753B6288();
  v6[10] = sub_2753B6278();
  v6[11] = sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();
  v6[12] = v8;
  v6[13] = v7;

  return MEMORY[0x2822009F8](sub_275374534, v8, v7);
}

uint64_t sub_275374534()
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  *(v0 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 40);
  *(v6 + 16) = v3;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;

  *(v0 + 120) = sub_2753B6278();
  v8 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 128) = v9;
  *v9 = v10;
  v9[1] = sub_27537468C;
  v11 = *(v0 + 24);
  v22 = *(v0 + 64);
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x282200908](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_27537468C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  v3[17] = v0;

  v12 = v3[12];
  v13 = v3[13];
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2753747E8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275374840()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_27537489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_2753B6288();
  v5[13] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](sub_275326F34, v7, v6);
}

void *MusicContentStorage.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t MusicContentStorage.__deallocating_deinit()
{
  MusicContentStorage.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2753749D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FD514;

  return sub_27537391C();
}

uint64_t sub_275374A98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FE5C0;

  return sub_275373E94();
}

uint64_t sub_275374B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = -96;
  v8 = 0;
  v9 = 0;
  switch(*(a1 + 50) >> 5)
  {
    case 1:
      v9 = a1[3];
      v7 = 32;
      goto LABEL_7;
    case 2:
      v7 = *(a1 + 32) | 0x40;

      v8 = v5;
      v9 = v6;
      break;
    case 3:
      v9 = a1[3];
      v7 = 96;
      goto LABEL_7;
    case 4:
      v9 = a1[3];
      v7 = 0x80;
LABEL_7:
      v8 = a1[2];
      break;
    case 5:
      break;
    default:
      v9 = 0;
      v7 = 0;
      v8 = a1[2];
      break;
  }

  sub_27535DCC4(a2);
  v10 = OUTLINED_FUNCTION_129_0();

  return sub_2753147B0(v10, v11, v8, v9, v7);
}

uint64_t MusicContentStorage.Operations.hasMediaAPIAttributes(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_2753B6608();
  v1[12] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_187_1();
  v1[15] = swift_task_alloc();
  v8 = sub_2753B65D8();
  v1[16] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_187_1();
  v1[19] = swift_task_alloc();
  sub_2753B6288();
  v1[20] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[21] = v14;
  v1[22] = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275374E00()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);
  sub_27537D100(*(v0 + 88), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 184) = v2;
  *(v0 + 200) = OUTLINED_FUNCTION_227_1(*&v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 208) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_242_0(v3);

  return sub_27537542C(v5, v6, v7);
}

uint64_t sub_275374ECC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 208);
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 176);
  v8 = *(v1 + 168);
  if (v0)
  {
    v9 = sub_275375308;
  }

  else
  {
    v9 = sub_275374FF4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275374FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_165_1();
  v12[28] = v13;
  v12[29] = v14;
  v15 = OUTLINED_FUNCTION_302_0();
  v16(v15);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v17 = OUTLINED_FUNCTION_47_3();
  v18(v17);
  OUTLINED_FUNCTION_273_0();
  v19 = *(MEMORY[0x277D64F98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v12[7] = MEMORY[0x277D839B0];
  v20 = MEMORY[0x277D65048];
  v12[30] = v21;
  v12[8] = v20;
  *v21 = v22;
  OUTLINED_FUNCTION_243_0(v21);
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2753750F8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[30];
  v6 = v1[29];
  v7 = v1[28];
  v8 = v1[14];
  v9 = v1[12];
  *v4 = *v2;
  *(v3 + 248) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 176);
  v13 = v1[21];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_275375278()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);

  v6 = *(v0 + 256);
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_195();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_275375308()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  v7 = v0[27];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[14];
  v10 = v0[15];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_195();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2753753A4()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[20];

  v2 = v0[31];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_195();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_27537542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2753B65D8();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_2753B6288();
  v4[15] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v9 = sub_2753B70C8();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x2822009F8](sub_275375564, v9, v8);
}

uint64_t sub_275375564()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[14];
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_275375624;
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_86_1(v0[8]);

  return sub_27537633C();
}

uint64_t sub_275375624()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[19] = v0;

  if (v0)
  {
    v10 = v4[16];
    v11 = v4[17];
    v12 = sub_275375804;
  }

  else
  {
    v4[20] = v1;
    v10 = v4[16];
    v11 = v4[17];
    v12 = sub_275375730;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275375730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = v10[20];
  v13 = v10[14];
  v12 = v10[15];
  v15 = v10[12];
  v14 = v10[13];
  v16 = v10[11];
  v17 = v10[7];

  v18 = MEMORY[0x277D65050];
  v10[5] = MEMORY[0x277D83B88];
  v10[6] = v18;
  v10[2] = v11;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  sub_2753B65B8();
  v19 = OUTLINED_FUNCTION_47_3();
  v20(v19);
  sub_2753B65F8();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_111_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_275375804()
{
  OUTLINED_FUNCTION_3();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  (*(v4 + 8))(v2, v5);

  OUTLINED_FUNCTION_19_0();
  v7 = v0[19];

  return v6();
}

uint64_t sub_275375898(uint64_t a1, _BYTE **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = **a2;
  sub_2753B6288();
  *(v2 + 24) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275388694, v4, v3);
}

uint64_t sub_275375970(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 40) = **a2;
  *(v2 + 48) = v3[1];
  *(v2 + 81) = *v4;
  v5 = *(a2 + 16);
  *(v2 + 56) = *v5;
  *(v2 + 64) = v5[1];
  sub_2753B6288();
  *(v2 + 72) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275375A6C, v7, v6);
}

uint64_t sub_275375A6C()
{
  OUTLINED_FUNCTION_144_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 81);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  sub_2753B7398();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x277C76100](0x22203A226469227BLL, 0xE800000000000000);
  v8 = OUTLINED_FUNCTION_112();
  MEMORY[0x277C76100](v8);
  MEMORY[0x277C76100](0x6570797422202C22, 0xEC00000022203A22);
  *(v0 + 80) = v3;
  sub_2753B7468();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x277C76100](0xD000000000000010);
  MEMORY[0x277C76100](v4, v2);
  MEMORY[0x277C76100](125, 0xE100000000000000);
  v9 = *(v0 + 24);
  *v7 = *(v0 + 16);
  v7[1] = v9;
  OUTLINED_FUNCTION_35_0();

  return v10();
}

uint64_t MusicContentStorage.Operations.hasMediaAPITransitionInfo(for:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_2753B6608();
  v1[12] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_187_1();
  v1[15] = swift_task_alloc();
  v8 = sub_2753B65D8();
  v1[16] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_187_1();
  v1[19] = swift_task_alloc();
  sub_2753B6288();
  v1[20] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v12, 255, v13);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[21] = v14;
  v1[22] = v15;
  v16 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_275375D08()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);
  sub_27537D100(*(v0 + 88), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 184) = v2;
  *(v0 + 200) = OUTLINED_FUNCTION_227_1(*&v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 208) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_242_0(v3);

  return sub_27537542C(v5, v6, v7);
}

uint64_t sub_275375DD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 208);
  *v4 = *v2;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 176);
  v8 = *(v1 + 168);
  if (v0)
  {
    v9 = sub_27538868C;
  }

  else
  {
    v9 = sub_275375EFC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275375EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_165_1();
  v12[28] = v13;
  v12[29] = v14;
  v15 = OUTLINED_FUNCTION_302_0();
  v16(v15);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v17 = OUTLINED_FUNCTION_47_3();
  v18(v17);
  OUTLINED_FUNCTION_273_0();
  v19 = *(MEMORY[0x277D64F98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v12[7] = MEMORY[0x277D839B0];
  v20 = MEMORY[0x277D65048];
  v12[30] = v21;
  v12[8] = v20;
  *v21 = v22;
  OUTLINED_FUNCTION_243_0(v21);
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_275376000()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[30];
  v6 = v1[29];
  v7 = v1[28];
  v8 = v1[14];
  v9 = v1[12];
  *v4 = *v2;
  *(v3 + 248) = v0;

  v10 = OUTLINED_FUNCTION_97_0();
  v7(v10);
  OUTLINED_FUNCTION_145_0();
  v12 = *(v11 + 176);
  v13 = v1[21];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_275376180(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v2[3] = **a2;
  v2[4] = v3[1];
  v2[5] = *v4;
  v2[6] = v4[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v2[7] = *v5;
  v2[8] = v5[1];
  v2[9] = *v6;
  v2[10] = v6[1];
  sub_2753B6288();
  v2[11] = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275376294, v8, v7);
}

uint64_t sub_275376294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v14 = v12[10];
  v13 = v12[11];
  v16 = v12[8];
  v15 = v12[9];
  v18 = v12[6];
  v17 = v12[7];
  v20 = v12[4];
  v19 = v12[5];
  v22 = v12[2];
  v21 = v12[3];

  *v22 = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v14;
  sub_2752F22F8(v21, v20);
  v23 = OUTLINED_FUNCTION_71();
  sub_2752F22F8(v23, v24);
  sub_2752F22F8(v17, v16);
  v25 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v25, v26);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_100_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_27537633C()
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 75) = v3;
  *(v1 + 128) = v4;
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v5, v6, v7, MEMORY[0x277D64F00]);
  *(v1 + 152) = v8;
  OUTLINED_FUNCTION_75(v8);
  v10 = *(v9 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_138_0();
  v11 = sub_2753B6608();
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_17_1(v11);
  *(v1 + 176) = v12;
  v14 = *(v13 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_138_0();
  v15 = sub_2753B65D8();
  *(v1 + 192) = v15;
  OUTLINED_FUNCTION_17_1(v15);
  *(v1 + 200) = v16;
  v18 = *(v17 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_187_1();
  *(v1 + 216) = swift_task_alloc();
  sub_2753B6288();
  *(v1 + 224) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v19, 255, v20);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 232) = v21;
  *(v1 + 240) = v22;
  v23 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2753764D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v16 = *(v14 + 208);
  v15 = *(v14 + 216);
  v18 = *(v14 + 192);
  v17 = *(v14 + 200);
  v19 = *(v14 + 184);
  v20 = *(v14 + 136);
  v21 = *(v14 + 128);
  OUTLINED_FUNCTION_45_4(*(v14 + 144));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v22 = MEMORY[0x277D64FB8];
  *(v14 + 40) = MEMORY[0x277D64FD0];
  *(v14 + 48) = v22;
  *(v14 + 16) = v21;
  *(v14 + 24) = v20;

  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 16));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v23 = *(v17 + 32);
  v24 = OUTLINED_FUNCTION_78_2();
  v25(v24);
  OUTLINED_FUNCTION_199_1();
  sub_2753B65F8();
  v26 = *(MEMORY[0x277D64F80] + 4);
  v27 = swift_task_alloc();
  *(v14 + 248) = v27;
  *(v14 + 80) = MEMORY[0x277D83B88];
  v28 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v28, v29, v30, v31);
  *(v14 + 88) = v32;
  *(v14 + 96) = MEMORY[0x277D65058];
  *(v14 + 104) = sub_2753869F4();
  *v27 = v14;
  v27[1] = sub_275376668;
  v33 = *(v14 + 184);
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_275376668()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[31];
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_145_0();
  (*(v1[22] + 8))(*(v6 + 184), v1[21]);
  OUTLINED_FUNCTION_145_0();
  v8 = *(v7 + 240);
  v9 = v1[29];
  if (v0)
  {
    v10 = sub_2753769C8;
  }

  else
  {
    v10 = sub_2753767D8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2753767D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v11 = *(v10 + 224);

  if (*(v10 + 73))
  {
    v13 = *(v10 + 152);
    v12 = *(v10 + 160);
    v15 = *(v10 + 128);
    v14 = *(v10 + 136);
    sub_275314678();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v10 + 74) = 2;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0();
    *(v10 + 112) = v15;
    *(v10 + 120) = v14;
    sub_2753146CC();
    OUTLINED_FUNCTION_112();
    sub_2753B62B8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    v16 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v16, v17, v18, v19, v20);
    sub_275314720();
    OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    v22 = *(v10 + 208);
    v21 = *(v10 + 216);
    v23 = *(v10 + 184);
    v24 = *(v10 + 160);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_111_0();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v35 = *(v10 + 208);
    v34 = *(v10 + 216);
    v36 = *(v10 + 184);
    v37 = *(v10 + 160);
    v38 = 64;
    if (*(v10 + 72) & 1 | ((*(v10 + 75) & 1) == 0))
    {
      v38 = 56;
    }

    v39 = *(v10 + v38);

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_111_0();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_2753769C8()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[28];

  v2 = v0[32];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];
  v6 = v0[20];

  OUTLINED_FUNCTION_19_0();

  return v7();
}

uint64_t sub_275376A54(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPIAttributes(for:)();
}

uint64_t sub_275376AF4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_275376B9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275376C3C;

  return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
}

uint64_t sub_275376C3C()
{
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_65_3();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  OUTLINED_FUNCTION_285_0();
  if (!v0)
  {
    v9 = v1;
    v10 = v4;
  }

  return v11(v9, v10);
}

uint64_t sub_275376D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.storeMediaAPIAttributes(_:attributesMask:for:)();
}

uint64_t sub_275376DF4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2753886C8;

  return MusicContentStorage.Operations.hasMediaAPITransitionInfo(for:)();
}

uint64_t sub_275376E94(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.mediaAPITransitionInfo(for:)();
}

uint64_t sub_275376F40(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.storeMediaAPITransitionInfo(_:for:)();
}

uint64_t MusicContentStorage.Operations.validateContent(id:)()
{
  OUTLINED_FUNCTION_3();
  v0[2] = sub_2753B6288();
  v0[3] = sub_2753B6278();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2753770A0;
  OUTLINED_FUNCTION_155_2();

  return sub_27537633C();
}

uint64_t sub_2753770A0()
{
  OUTLINED_FUNCTION_3();
  v2 = v0;
  OUTLINED_FUNCTION_18_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 40) = v2;

  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v10, 255, v11);
  OUTLINED_FUNCTION_304_0();
  v13 = sub_2753B70C8();
  if (v2)
  {
    v14 = sub_275377264;
  }

  else
  {
    v14 = sub_27537720C;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t sub_27537720C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275377264()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t MusicContentStorage.Operations._upsert(identifier:for:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  *(v1 + 1232) = v0;
  *(v1 + 1224) = v4;
  v5 = sub_2753B65D8();
  *(v1 + 1240) = v5;
  OUTLINED_FUNCTION_17_1(v5);
  *(v1 + 1248) = v6;
  v8 = *(v7 + 64);
  *(v1 + 1256) = OUTLINED_FUNCTION_187_1();
  *(v1 + 1264) = swift_task_alloc();
  *(v1 + 1272) = swift_task_alloc();
  *(v1 + 1280) = swift_task_alloc();
  *(v1 + 1288) = swift_task_alloc();
  v9 = sub_2753B6608();
  *(v1 + 1296) = v9;
  OUTLINED_FUNCTION_17_1(v9);
  *(v1 + 1304) = v10;
  v12 = *(v11 + 64);
  *(v1 + 1312) = OUTLINED_FUNCTION_187_1();
  *(v1 + 1320) = swift_task_alloc();
  *(v1 + 1328) = swift_task_alloc();
  v13 = *(v3 + 16);
  *(v1 + 1336) = *v3;
  *(v1 + 1352) = v13;
  *(v1 + 1368) = *(v3 + 32);
  v14 = *(v3 + 48);
  *(v1 + 1458) = *(v3 + 50);
  *(v1 + 1456) = v14;
  sub_2753B6288();
  *(v1 + 1384) = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v15, 255, v16);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  *(v1 + 1392) = v17;
  *(v1 + 1400) = v18;
  v19 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_27537747C()
{
  v100 = v0;
  v1 = (v0 + 1184);
  v2 = (v0 + 1208);
  v3 = *(v0 + 1456) | (*(v0 + 1458) << 16);
  v4 = *(v0 + 1344);
  switch(*(v0 + 1458) >> 5)
  {
    case 1:
      v46 = *(v0 + 1376);
      v47 = *(v0 + 1368);
      v48 = *(v0 + 1360);
      v49 = *(v0 + 1352);
      v50 = *(v0 + 1336);
      OUTLINED_FUNCTION_287_0();
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      *(v0 + 760) = MEMORY[0x277D83B88];
      *(v0 + 768) = MEMORY[0x277D65050];
      *(v0 + 736) = v3;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 736));
      OUTLINED_FUNCTION_160_2();
      *(v0 + 800) = MEMORY[0x277D837D0];
      *(v0 + 808) = MEMORY[0x277D65000];
      *(v0 + 776) = v50;
      *(v0 + 784) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 776));
      *(v0 + 840) = MEMORY[0x277D84A28];
      *(v0 + 848) = MEMORY[0x277D65080];
      *(v0 + 816) = v49;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 816));
      *(v0 + 880) = &type metadata for MusicContent.LibraryContentType;
      *(v0 + 888) = sub_2753629A0();
      *(v0 + 856) = v48;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 856));
      *(v0 + 920) = MEMORY[0x277D83B88];
      *(v0 + 928) = MEMORY[0x277D65050];
      *(v0 + 896) = v47;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 896));
      *(v0 + 960) = &type metadata for MusicContent.CloudStatus;
      *(v0 + 968) = sub_27536172C();
      *(v0 + 936) = v46;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 936));
      *(v0 + 1000) = MEMORY[0x277D839B0];
      *(v0 + 1008) = MEMORY[0x277D65040];
      *(v0 + 976) = BYTE1(v46) & 1;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 976));
      OUTLINED_FUNCTION_63_3();
      goto LABEL_13;
    case 2:
      v95 = *(v0 + 1368);
      v96 = *(v0 + 1376);
      v29 = *(v0 + 1360);
      v94 = *(v0 + 1352);
      v30 = *(v0 + 1336);
      v1 = (v0 + 1280);
      v31 = *(v0 + 1280);
      v32 = *(v0 + 1224);
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v33 = MEMORY[0x277D65050];
      *(v0 + 480) = MEMORY[0x277D83B88];
      *(v0 + 488) = v33;
      *(v0 + 456) = v32;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 456));
      sub_2753B65B8();
      v34 = MEMORY[0x277D837D0];
      *(v0 + 520) = MEMORY[0x277D837D0];
      v35 = MEMORY[0x277D65000];
      *(v0 + 528) = MEMORY[0x277D65000];
      *(v0 + 496) = v30;
      *(v0 + 504) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 496));
      *(v0 + 560) = v34;
      *(v0 + 568) = v35;
      *(v0 + 536) = v94;
      *(v0 + 544) = v29;

      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 536));
      *(v0 + 600) = &type metadata for MusicContent.CloudLibraryContentType;
      *(v0 + 608) = sub_275362BB0();
      *(v0 + 576) = v95;
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 576));
      OUTLINED_FUNCTION_142_1();
      sub_275388174(0, v36, MEMORY[0x277D83B88], v37);
      *(v0 + 640) = v38;
      *(v0 + 648) = sub_2753865FC();
      *(v0 + 616) = v96;
      *(v0 + 624) = v3 & 1;
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 616));
      sub_275388174(0, &qword_2809C2D18, &type metadata for MusicContent.CloudStatus, v4);
      *(v0 + 680) = v39;
      *(v0 + 688) = sub_275386690();
      *(v0 + 656) = BYTE1(v3);
      sub_2753B6588();
      OUTLINED_FUNCTION_240_1((v0 + 656));
      *(v0 + 720) = MEMORY[0x277D839B0];
      *(v0 + 728) = MEMORY[0x277D65040];
      *(v0 + 696) = BYTE2(v3) & 1;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 696));
      OUTLINED_FUNCTION_63_3();
      goto LABEL_13;
    case 3:
      v40 = *(v0 + 1360);
      v41 = *(v0 + 1352);
      v42 = *(v0 + 1336);
      OUTLINED_FUNCTION_287_0();
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v43 = MEMORY[0x277D65050];
      *(v0 + 320) = MEMORY[0x277D83B88];
      *(v0 + 328) = v43;
      *(v0 + 296) = v3;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 296));
      OUTLINED_FUNCTION_160_2();
      v44 = MEMORY[0x277D65000];
      *(v0 + 360) = MEMORY[0x277D837D0];
      *(v0 + 368) = v44;
      *(v0 + 336) = v42;
      *(v0 + 344) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 336));
      v45 = MEMORY[0x277D65080];
      *(v0 + 400) = MEMORY[0x277D84A28];
      *(v0 + 408) = v45;
      *(v0 + 376) = v41;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 376));
      *(v0 + 440) = &type metadata for MusicContent.PurchasableContentType;
      *(v0 + 448) = sub_275362DC0();
      *(v0 + 416) = v40;
      sub_2753B6588();
      v28 = (v0 + 416);
      goto LABEL_7;
    case 4:
      v20 = *(v0 + 1360);
      v21 = *(v0 + 1352);
      v22 = *(v0 + 1336);
      v23 = *(v0 + 1280);
      v24 = *(v0 + 1224);
      sub_2753B65C8();
      OUTLINED_FUNCTION_63_3();
      sub_2753B65B8();
      v25 = MEMORY[0x277D65050];
      *(v0 + 160) = MEMORY[0x277D83B88];
      *(v0 + 168) = v25;
      *(v0 + 136) = v24;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_160_2();
      v26 = MEMORY[0x277D65000];
      *(v0 + 200) = MEMORY[0x277D837D0];
      *(v0 + 208) = v26;
      *(v0 + 176) = v22;
      *(v0 + 184) = v4;

      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 176));
      *(v0 + 216) = v21;
      v1 = (v0 + 1280);
      v27 = MEMORY[0x277D65080];
      *(v0 + 240) = MEMORY[0x277D84A28];
      *(v0 + 248) = v27;
      sub_2753B6588();
      OUTLINED_FUNCTION_159_2((v0 + 216));
      *(v0 + 280) = &type metadata for MusicContent.PurchasableContentType;
      *(v0 + 288) = sub_275362DC0();
      *(v0 + 256) = v20;
      sub_2753B6588();
      v28 = (v0 + 256);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_85_0();
      goto LABEL_13;
    case 5:
      v51 = *(v0 + 1352);
      v52 = *(v0 + 1336);
      v53 = *(v0 + 1272);
      v54 = *(v0 + 1224);
      sub_2753B65C8();
      sub_2753B65B8();
      v55 = MEMORY[0x277D65050];
      *(v0 + 40) = MEMORY[0x277D83B88];
      *(v0 + 48) = v55;
      *(v0 + 16) = v54;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_2753B65B8();
      v56 = MEMORY[0x277D837D0];
      *(v0 + 56) = v52;
      v57 = MEMORY[0x277D65000];
      *(v0 + 80) = v56;
      *(v0 + 88) = v57;
      v58 = v56;
      *(v0 + 64) = v4;

      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      sub_2753B65B8();
      v59 = OUTLINED_FUNCTION_7_4();
      sub_275388174(v59, v60, v58, v61);
      *(v0 + 120) = v62;
      *(v0 + 128) = sub_27537D288();
      v99[0] = v51;

      sub_27538424C(v99);
      *(v0 + 1176) = v99[0];
      v63 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_5();
      sub_275388174(0, &qword_2809C1BB0, v63, v64);
      OUTLINED_FUNCTION_137_3();
      sub_2753865B8(v65);
      sub_2753B71F8();

      if (*v1)
      {
        *(v0 + 1192) = *v1;
        OUTLINED_FUNCTION_164_1(&qword_2809C1BB8);
        OUTLINED_FUNCTION_305_0();
        v66 = sub_2753B6D48();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      v92 = *(v0 + 1272);
      *(v0 + 96) = v66;
      *(v0 + 104) = v68;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      sub_2753B65B8();
      v1 = (v0 + 1272);
      goto LABEL_14;
    default:
      v5 = *(v0 + 1360);
      v97 = *(v0 + 1352);
      v6 = *(v0 + 1336);
      v7 = *(v0 + 1288);
      v8 = *(v0 + 1224);
      sub_2753B65C8();
      sub_2753B65B8();
      *(v0 + 1040) = MEMORY[0x277D83B88];
      *(v0 + 1048) = MEMORY[0x277D65050];
      *(v0 + 1016) = v8;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1016));
      sub_2753B65B8();
      v9 = MEMORY[0x277D837D0];
      *(v0 + 1080) = MEMORY[0x277D837D0];
      *(v0 + 1088) = MEMORY[0x277D65000];
      *(v0 + 1056) = v6;
      *(v0 + 1064) = v4;

      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
      sub_2753B65B8();
      *(v0 + 1120) = &type metadata for MusicContent.MediaAPIContentType;
      *(v0 + 1128) = sub_275362790();
      *(v0 + 1096) = v97;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
      sub_2753B65B8();
      v10 = OUTLINED_FUNCTION_7_4();
      sub_275388174(v10, v11, v9, v12);
      *(v0 + 1160) = v13;
      *(v0 + 1168) = sub_27537D288();
      v99[0] = v5;

      sub_27538424C(v99);
      v1 = (v0 + 1288);
      *(v0 + 1200) = v99[0];
      v14 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_5();
      sub_275388174(0, &qword_2809C1BB0, v14, v15);
      OUTLINED_FUNCTION_137_3();
      sub_2753865B8(v16);
      sub_2753B71F8();

      if (*v2)
      {
        *(v0 + 1216) = *v2;
        OUTLINED_FUNCTION_164_1(&qword_2809C1BB8);
        OUTLINED_FUNCTION_305_0();
        v17 = sub_2753B6D48();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v69 = *(v0 + 1288);
      *(v0 + 1136) = v17;
      *(v0 + 1144) = v19;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v0 + 1136));
LABEL_13:
      sub_2753B65B8();
LABEL_14:
      v70 = *v1;
      v71 = *(v0 + 1328);
      v72 = *(v0 + 1320);
      v98 = *(v0 + 1312);
      v73 = *(v0 + 1304);
      v74 = *(v0 + 1296);
      v75 = *(v0 + 1264);
      v76 = *(v0 + 1256);
      v77 = *(v0 + 1248);
      v78 = *(v0 + 1240);
      v79 = *(v0 + 1232);
      sub_2753B65F8();
      (*(v73 + 32))(v71, v72, v74);
      v80 = v79[3];
      v81 = v79[4];
      OUTLINED_FUNCTION_107_3(v79);
      sub_2753B65C8();
      sub_2753B65B8();
      sub_2753B6598();
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      (*(v77 + 32))(v76, v75, v78);
      sub_2753B65F8();
      v82 = *(MEMORY[0x277D64F88] + 4);
      v83 = swift_task_alloc();
      *(v0 + 1408) = v83;
      *v83 = v0;
      v83[1] = sub_275378024;
      OUTLINED_FUNCTION_86_1(*(v0 + 1312));
      OUTLINED_FUNCTION_131_0();

      return MEMORY[0x2821CC218](v84, v85, v86, v87, v88, v89, v90, v91);
  }
}

uint64_t sub_275378024()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[176];
  *v4 = *v1;
  v3[177] = v0;

  v6 = v2[164];
  v7 = v2[162];
  OUTLINED_FUNCTION_157_2(v2[163]);
  if (v0)
  {
    v3[180] = v8;
    v3[181] = v9;
    v8();
    v10 = v3[175];
    v11 = v3[174];
    v12 = sub_275378250;
  }

  else
  {
    v3[178] = v8;
    v3[179] = v9;
    v8();
    v10 = v3[175];
    v11 = v3[174];
    v12 = sub_2753781A4;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_2753781A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 1432);
  v16 = *(v14 + 1424);
  OUTLINED_FUNCTION_177_1();
  v17 = OUTLINED_FUNCTION_306();
  v16(v17);

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_275378250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14[181];
  v16 = v14[180];
  OUTLINED_FUNCTION_177_1();
  v17 = OUTLINED_FUNCTION_306();
  v16(v17);

  OUTLINED_FUNCTION_19_0();
  v18 = v14[177];
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicContentStorage.Operations.firstContentID(matching:in:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[67] = v0;
  v1[66] = v2;
  v3 = sub_2753B65D8();
  v1[68] = v3;
  OUTLINED_FUNCTION_17_1(v3);
  v1[69] = v4;
  v6 = *(v5 + 64);
  v1[70] = OUTLINED_FUNCTION_187_1();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v7 = sub_2753B6608();
  v1[73] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[74] = v8;
  v10 = *(v9 + 64);
  v1[75] = OUTLINED_FUNCTION_187_1();
  v1[76] = swift_task_alloc();
  sub_2753B6288();
  v1[77] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v11, 255, v12);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[78] = v13;
  v1[79] = v14;
  v15 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_275378468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v17 = v16[66];
  v18 = *(v17 + 16);
  v16[80] = v18;
  if (v18)
  {
    v19 = 0;
    v20 = v16 + 57;
    v21 = v17 + 32;
    while (2)
    {
      v16[81] = v19;
      v22 = *(v21 + 32);
      switch(v22 >> 5)
      {
        case 1u:
          v55 = *v21;
          v56 = *(v21 + 8);
          v57 = *(v21 + 16);
          v58 = *(v21 + 24);
          v59 = v16[72];

          sub_2753B65C8();
          sub_2753B65B8();
          v60 = MEMORY[0x277D65000];
          v16[40] = MEMORY[0x277D837D0];
          v16[41] = v60;
          v93 = v55;
          v16[37] = v55;
          v16[38] = v56;
          v91 = v56;

          sub_2753B6588();
          OUTLINED_FUNCTION_68_3(v16 + 37);
          OUTLINED_FUNCTION_266_0();
          v61 = MEMORY[0x277D65080];
          v16[45] = MEMORY[0x277D84A28];
          v16[46] = v61;
          v90 = v57;
          v16[42] = v57;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 42);
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1();
          v16[50] = &type metadata for MusicContent.LibraryContentType;
          v16[51] = sub_2753629A0();
          v89 = v58;
          *(v16 + 376) = v58;
          sub_2753B6588();
          v20 = v16 + 47;
          break;
        case 2u:
          v38 = *v21;
          v39 = *(v21 + 8);
          v40 = *(v21 + 16);
          v41 = *(v21 + 24);
          v42 = v16[72];

          sub_2753B65C8();
          sub_2753B65B8();
          v43 = MEMORY[0x277D837D0];
          v44 = MEMORY[0x277D65000];
          v16[25] = MEMORY[0x277D837D0];
          v16[26] = v44;
          v93 = v38;
          v16[22] = v38;
          v16[23] = v39;
          v91 = v39;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 22);
          OUTLINED_FUNCTION_204_1();
          v16[30] = v43;
          v16[31] = v44;
          v89 = v41;
          v90 = v40;
          v16[27] = v40;
          v16[28] = v41;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 27);
          OUTLINED_FUNCTION_27_3();
          sub_2753B65B8();
          v16[35] = &type metadata for MusicContent.CloudLibraryContentType;
          v16[36] = sub_275362BB0();
          *(v16 + 256) = v22 & 0x1F;
          sub_2753B6588();
          v20 = v16 + 32;
          break;
        case 3u:
          v67 = *v21;
          v68 = *(v21 + 8);
          v69 = *(v21 + 16);
          v70 = *(v21 + 24);
          v71 = v16[72];

          sub_2753B65C8();
          sub_2753B65B8();
          v72 = MEMORY[0x277D65000];
          v16[10] = MEMORY[0x277D837D0];
          v16[11] = v72;
          v93 = v67;
          v16[7] = v67;
          v16[8] = v68;
          v91 = v68;

          sub_2753B6588();
          OUTLINED_FUNCTION_68_3(v16 + 7);
          OUTLINED_FUNCTION_320_0();
          v73 = MEMORY[0x277D65080];
          v16[15] = MEMORY[0x277D84A28];
          v16[16] = v73;
          v90 = v69;
          v16[12] = v69;
          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 12);
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1();
          v16[20] = &type metadata for MusicContent.PurchasableContentType;
          v16[21] = sub_275362DC0();
          v89 = v70;
          *(v16 + 136) = v70;
          sub_2753B6588();
          v20 = v16 + 17;
          break;
        case 4u:
          ++v19;
          v21 += 40;
          if (v18 == v19)
          {
            goto LABEL_5;
          }

          continue;
        case 5u:
          v45 = *v21;
          v46 = *(v21 + 8);
          v47 = *(v21 + 16);
          v48 = *(v21 + 24);
          v49 = v16[72];
          v50 = OUTLINED_FUNCTION_97_0();
          v89 = v52;
          v90 = v51;
          sub_275329198(v50, v53, v51, v52, v22);

          sub_2753B65C8();
          sub_2753B65B8();
          v54 = MEMORY[0x277D65000];
          v16[5] = MEMORY[0x277D837D0];
          v16[6] = v54;
          v93 = v45;
          v16[2] = v45;
          v16[3] = v46;
          v91 = v46;
          sub_2753B6588();
          v20 = v16 + 2;
          break;
        default:
          v62 = *v21;
          v63 = *(v21 + 8);
          v64 = *(v21 + 16);
          v89 = *(v21 + 24);
          v65 = v16[72];

          sub_2753B65C8();
          sub_2753B65B8();
          v66 = MEMORY[0x277D65000];
          v16[55] = MEMORY[0x277D837D0];
          v16[56] = v66;
          v93 = v62;
          v16[52] = v62;
          v16[53] = v63;
          v91 = v63;

          sub_2753B6588();
          __swift_destroy_boxed_opaque_existential_1(v16 + 52);
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_172_1();
          v16[60] = &type metadata for MusicContent.MediaAPIContentType;
          v16[61] = sub_275362790();
          v90 = v64;
          *(v16 + 456) = v64;
          sub_2753B6588();
          break;
      }

      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    v74 = v16[76];
    v92 = v16[75];
    OUTLINED_FUNCTION_247_0();
    v75 = v16[67];
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    sub_2753147B0(v93, v91, v90, v89, v22);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_316_0();
    sub_2753B6598();
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    v76 = OUTLINED_FUNCTION_300();
    v77(v76);
    sub_2753B65F8();
    v78 = *(MEMORY[0x277D64F80] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v16[82] = v79;
    v16[64] = MEMORY[0x277D64FD0];
    v16[65] = MEMORY[0x277D64FC0];
    *v79 = v80;
    OUTLINED_FUNCTION_97_2(v79);
    OUTLINED_FUNCTION_175();

    return MEMORY[0x2821CC210](v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, a14);
  }

  else
  {
LABEL_5:
    v23 = v16[77];

    v24 = v16[76];
    v25 = v16[75];
    v26 = v16[72];
    v27 = v16[71];
    v28 = v16[70];

    OUTLINED_FUNCTION_285_0();
    OUTLINED_FUNCTION_175();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_275378A60()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[82];
  *v4 = *v1;
  v3[83] = v0;

  v6 = v2[75];
  v7 = v2[73];
  OUTLINED_FUNCTION_157_2(v2[74]);
  if (v0)
  {
    v3[86] = v8;
    v3[87] = v9;
    v8();
    v10 = v3[79];
    v11 = v3[78];
    v12 = sub_275379204;
  }

  else
  {
    v3[84] = v8;
    v3[85] = v9;
    v8();
    v10 = v3[79];
    v11 = v3[78];
    v12 = sub_275378BE0;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_275378BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v17 = *(v16 + 680);
  (*(v16 + 672))(*(v16 + 608), *(v16 + 584));
  if (*(v16 + 504))
  {
    v18 = *(v16 + 616);
    v19 = *(v16 + 496);

LABEL_3:
    v20 = *(v16 + 608);
    v21 = *(v16 + 600);
    v22 = *(v16 + 576);
    v23 = *(v16 + 568);
    v24 = *(v16 + 560);

    OUTLINED_FUNCTION_285_0();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_175();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v34 = (v16 + 456);
  v35 = *(v16 + 640);
  v36 = *(v16 + 648);
  v37 = v36 + 1;
  v38 = 40 * v36 + 56;
  while (2)
  {
    if (v35 == v37)
    {
      v46 = *(v16 + 616);

      goto LABEL_3;
    }

    *(v16 + 648) = v37;
    v39 = *(v16 + 528);
    v40 = *(v39 + v38 + 48);
    ++v37;
    v38 += 40;
    switch(v40 >> 5)
    {
      case 1u:
        v64 = *(v39 + v38 - 24);
        v65 = *(v39 + v38 - 16);
        v67 = *(v39 + v38 - 8);
        v66 = *(v39 + v38);
        v68 = *(v16 + 576);

        sub_2753B65C8();
        sub_2753B65B8();
        v69 = MEMORY[0x277D65000];
        *(v16 + 320) = MEMORY[0x277D837D0];
        *(v16 + 328) = v69;
        v89 = v65;
        v90 = v64;
        *(v16 + 296) = v64;
        *(v16 + 304) = v65;

        sub_2753B6588();
        OUTLINED_FUNCTION_68_3((v16 + 296));
        OUTLINED_FUNCTION_266_0();
        v70 = MEMORY[0x277D65080];
        *(v16 + 360) = MEMORY[0x277D84A28];
        *(v16 + 368) = v70;
        v88 = v67;
        *(v16 + 336) = v67;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v16 + 336));
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_172_1();
        *(v16 + 400) = &type metadata for MusicContent.LibraryContentType;
        *(v16 + 408) = sub_2753629A0();
        v87 = v66;
        *(v16 + 376) = v66;
        sub_2753B6588();
        v34 = (v16 + 376);
        break;
      case 2u:
        v51 = *(v39 + v38 - 24);
        v52 = *(v39 + v38 - 16);
        v54 = *(v39 + v38 - 8);
        v53 = *(v39 + v38);
        v55 = *(v16 + 576);

        sub_2753B65C8();
        sub_2753B65B8();
        v56 = MEMORY[0x277D65000];
        *(v16 + 200) = MEMORY[0x277D837D0];
        *(v16 + 208) = v56;
        v89 = v52;
        v90 = v51;
        *(v16 + 176) = v51;
        *(v16 + 184) = v52;

        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v16 + 176));
        OUTLINED_FUNCTION_204_1();
        *(v16 + 240) = MEMORY[0x277D837D0];
        *(v16 + 248) = v56;
        v87 = v53;
        v88 = v54;
        *(v16 + 216) = v54;
        *(v16 + 224) = v53;

        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v16 + 216));
        OUTLINED_FUNCTION_27_3();
        sub_2753B65B8();
        *(v16 + 280) = &type metadata for MusicContent.CloudLibraryContentType;
        *(v16 + 288) = sub_275362BB0();
        *(v16 + 256) = v40 & 0x1F;
        sub_2753B6588();
        v34 = (v16 + 256);
        break;
      case 3u:
        v57 = *(v39 + v38 - 24);
        v58 = *(v39 + v38 - 16);
        v60 = *(v39 + v38 - 8);
        v59 = *(v39 + v38);
        v61 = *(v16 + 576);

        sub_2753B65C8();
        sub_2753B65B8();
        v62 = MEMORY[0x277D65000];
        *(v16 + 80) = MEMORY[0x277D837D0];
        *(v16 + 88) = v62;
        v89 = v58;
        v90 = v57;
        *(v16 + 56) = v57;
        *(v16 + 64) = v58;

        sub_2753B6588();
        OUTLINED_FUNCTION_68_3((v16 + 56));
        OUTLINED_FUNCTION_320_0();
        v63 = MEMORY[0x277D65080];
        *(v16 + 120) = MEMORY[0x277D84A28];
        *(v16 + 128) = v63;
        v88 = v60;
        *(v16 + 96) = v60;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v16 + 96));
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_172_1();
        *(v16 + 160) = &type metadata for MusicContent.PurchasableContentType;
        *(v16 + 168) = sub_275362DC0();
        v87 = v59;
        *(v16 + 136) = v59;
        sub_2753B6588();
        v34 = (v16 + 136);
        break;
      case 4u:
        continue;
      case 5u:
        v47 = *(v39 + v38 - 24);
        v48 = *(v39 + v38 - 16);
        v49 = *(v16 + 576);
        v87 = *(v39 + v38);
        v88 = *(v39 + v38 - 8);
        sub_275329198(v47, v48, v88, v87, v40);

        sub_2753B65C8();
        sub_2753B65B8();
        v50 = MEMORY[0x277D65000];
        *(v16 + 40) = MEMORY[0x277D837D0];
        *(v16 + 48) = v50;
        v89 = v48;
        v90 = v47;
        *(v16 + 16) = v47;
        *(v16 + 24) = v48;
        sub_2753B6588();
        v34 = (v16 + 16);
        break;
      default:
        v41 = *(v39 + v38 - 24);
        v42 = *(v39 + v38 - 16);
        v43 = *(v39 + v38 - 8);
        v87 = *(v39 + v38);
        v44 = *(v16 + 576);

        sub_2753B65C8();
        sub_2753B65B8();
        v45 = MEMORY[0x277D65000];
        *(v16 + 440) = MEMORY[0x277D837D0];
        *(v16 + 448) = v45;
        v89 = v42;
        v90 = v41;
        *(v16 + 416) = v41;
        *(v16 + 424) = v42;

        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v16 + 416));
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_172_1();
        *(v16 + 480) = &type metadata for MusicContent.MediaAPIContentType;
        *(v16 + 488) = sub_275362790();
        v88 = v43;
        *(v16 + 456) = v43;
        sub_2753B6588();
        break;
    }

    break;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  v71 = *(v16 + 608);
  v86 = *(v16 + 600);
  OUTLINED_FUNCTION_247_0();
  v72 = *(v16 + 536);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  sub_2753B65F8();
  sub_2753147B0(v90, v89, v88, v87, v40);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_316_0();
  sub_2753B6598();
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v73 = OUTLINED_FUNCTION_300();
  v74(v73);
  sub_2753B65F8();
  v75 = *(MEMORY[0x277D64F80] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v16 + 656) = v76;
  *(v16 + 512) = MEMORY[0x277D64FD0];
  *(v16 + 520) = MEMORY[0x277D64FC0];
  *v76 = v77;
  OUTLINED_FUNCTION_97_2();
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC210](v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, a14);
}

void sub_275379204()
{
  OUTLINED_FUNCTION_66_0();
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];

  v2(v4, v6);

  OUTLINED_FUNCTION_19_0();
  v10 = v0[83];
  OUTLINED_FUNCTION_179();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2753792C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 85) = a5;
  *(v5 + 1384) = a4;
  *(v5 + 1376) = a3;
  *(v5 + 1368) = a2;
  *(v5 + 1360) = a1;
  sub_2753868E4(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  *(v5 + 1392) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 1400) = swift_task_alloc();
  sub_2753868E4(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  *(v5 + 1408) = v8;
  v9 = *(v8 - 8);
  *(v5 + 1416) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 1424) = swift_task_alloc();
  v11 = sub_2753B6608();
  *(v5 + 1432) = v11;
  v12 = *(v11 - 8);
  *(v5 + 1440) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 1448) = swift_task_alloc();
  *(v5 + 1456) = swift_task_alloc();
  *(v5 + 1464) = swift_task_alloc();
  *(v5 + 1472) = swift_task_alloc();
  *(v5 + 1480) = swift_task_alloc();
  *(v5 + 1488) = swift_task_alloc();
  *(v5 + 1496) = swift_task_alloc();
  *(v5 + 1504) = swift_task_alloc();
  *(v5 + 1512) = swift_task_alloc();
  v14 = sub_2753B65D8();
  *(v5 + 1520) = v14;
  v15 = *(v14 - 8);
  *(v5 + 1528) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 1536) = swift_task_alloc();
  *(v5 + 1544) = swift_task_alloc();
  *(v5 + 1552) = swift_task_alloc();
  *(v5 + 1560) = swift_task_alloc();
  *(v5 + 1568) = swift_task_alloc();
  *(v5 + 1576) = swift_task_alloc();
  *(v5 + 1584) = swift_task_alloc();
  *(v5 + 1592) = swift_task_alloc();
  *(v5 + 1600) = swift_task_alloc();
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  *(v5 + 1624) = swift_task_alloc();
  *(v5 + 1632) = swift_task_alloc();
  *(v5 + 1640) = swift_task_alloc();
  *(v5 + 1648) = swift_task_alloc();
  *(v5 + 1656) = swift_task_alloc();
  *(v5 + 1664) = swift_task_alloc();
  *(v5 + 1672) = swift_task_alloc();
  sub_2753B6288();
  *(v5 + 1680) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v18 = sub_2753B70C8();
  *(v5 + 1688) = v18;
  *(v5 + 1696) = v17;

  return MEMORY[0x2822009F8](sub_275379684, v18, v17);
}

uint64_t sub_275379684()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 1672);
  sub_27537D100(*(v0 + 1368), v0 + 408);
  v2 = *(v0 + 432);
  *(v0 + 1704) = v2;
  *(v0 + 1720) = __swift_project_boxed_opaque_existential_1((v0 + 408), v2);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v3 = swift_task_alloc();
  *(v0 + 1728) = v3;
  *v3 = v0;
  v3[1] = sub_275379770;
  v4 = *(v0 + 85);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1368);
  OUTLINED_FUNCTION_86_1(*(v0 + 1376));

  return sub_27537633C();
}

uint64_t sub_275379770()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = *(v6 + 1728);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[217] = v0;

  if (v0)
  {
    v10 = v4[212];
    v11 = v4[211];
    v12 = sub_27537C2EC;
  }

  else
  {
    v4[218] = v1;
    v10 = v4[212];
    v11 = v4[211];
    v12 = sub_275379884;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_275379884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v14 = v13[218];
  v15 = v13[209];
  v16 = v13[208];
  v17 = v13[191];
  v18 = v13[190];
  v19 = MEMORY[0x277D83B88];
  v20 = v13[189];
  v13[99] = MEMORY[0x277D83B88];
  v13[100] = MEMORY[0x277D65050];
  v13[96] = v14;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v13 + 96);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v13[219] = *(v17 + 32);
  v13[220] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v21 = OUTLINED_FUNCTION_27();
  v22(v21);
  OUTLINED_FUNCTION_273_0();
  v23 = *(MEMORY[0x277D64F80] + 4);
  v24 = swift_task_alloc();
  v13[221] = v24;
  v13[91] = v19;
  OUTLINED_FUNCTION_142_1();
  sub_275388174(0, v25, v19, v26);
  v28 = v27;
  v13[92] = v27;
  sub_275388174(0, &qword_2809C0E08, MEMORY[0x277D837D0], v16);
  v13[222] = v29;
  v13[93] = v29;
  v13[94] = v28;
  v13[95] = v28;
  v13[81] = MEMORY[0x277D65058];
  v30 = sub_2753869F4();
  v13[82] = v30;
  v31 = sub_275386A88();
  v13[223] = v31;
  v13[83] = v31;
  v13[84] = v30;
  v13[85] = v30;
  *v24 = v13;
  v24[1] = sub_275379A34;
  v32 = v13[215];
  v33 = v13[214];
  v34 = v13[213];
  v35 = v13[189];
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2821CC210](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_275379A34()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1768);
  v7 = *(v5 + 1440);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v3[224] = v0;

  v10 = (v7 + 8);
  v3[225] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    (*v10)(v3[189], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537C474;
  }

  else
  {
    v14 = v3[189];
    v15 = v3[179];
    v16 = *v10;
    v3[226] = *v10;
    v16(v14, v15);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_275379B90;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_275379B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  memcpy((v32 + 88), (v32 + 16), 0x41uLL);
  __swift_destroy_boxed_opaque_existential_1((v32 + 408));
  v34 = *(v32 + 88);
  v33 = *(v32 + 96);
  *(v32 + 1816) = v34;
  v35 = *(v32 + 120);
  *(v32 + 1824) = *(v32 + 112);
  *(v32 + 1832) = v35;
  v36 = *(v32 + 128);
  v37 = *(v32 + 136);
  *(v32 + 1840) = *(v32 + 144);
  *(v32 + 86) = *(v32 + 152);
  if (v35 == 1)
  {
    v38 = *(v32 + 1680);
    OUTLINED_FUNCTION_296_0();
    v39 = *(v32 + 1384);
    v40 = *(v32 + 1376);

    sub_275314678();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 82) = 2;
    sub_2753B6298();
    sub_2753B62C8();
    *(v32 + 1296) = v40;
    *(v32 + 1304) = v39;
    sub_2753146CC();
    sub_2753B62B8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_10_6();
    v41 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v41, v42, v43, v44, v45);
    sub_275314720();
    v109 = OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    v46 = *(v32 + 1656);
    v47 = *(v32 + 1648);
    v48 = *(v32 + 1640);
    v49 = *(v32 + 1632);
    v50 = *(v32 + 1624);
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_103_3();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v109, a29, a30, a31, a32);
  }

  else
  {
    if (*(v32 + 104))
    {
      v60 = *(v32 + 1368);
      OUTLINED_FUNCTION_35_3();
      sub_275388564(v32 + 88, v61, v62, MEMORY[0x277D83D88], sub_275387F04);
      v63 = *(v60 + 24);
      v110 = *(v60 + 32);
      v64 = OUTLINED_FUNCTION_96_0();
      __swift_project_boxed_opaque_existential_1(v64, v65);
      if (v37)
      {
        v107 = *(v32 + 1776);
        v108 = *(v32 + 1784);
        v66 = *(v32 + 1760);
        v67 = *(v32 + 1752);
        v68 = *(v32 + 1624);
        v69 = *(v32 + 1616);
        v70 = *(v32 + 1520);
        v71 = *(v32 + 1488);
        sub_2753B65C8();
        sub_2753B65B8();
        *(v32 + 512) = MEMORY[0x277D83B88];
        *(v32 + 520) = MEMORY[0x277D65050];
        *(v32 + 488) = v34;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v32 + 488));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v72 = OUTLINED_FUNCTION_31_4();
        v67(v72);
        OUTLINED_FUNCTION_212_1();
        v73 = *(MEMORY[0x277D64F80] + 4);
        v74 = swift_task_alloc();
        *(v32 + 1880) = v74;
        *(v32 + 1024) = MEMORY[0x277D837D0];
        *(v32 + 1032) = &type metadata for MusicContent.MediaAPIContentType;
        *(v32 + 1040) = v107;
        *(v32 + 1048) = MEMORY[0x277D65008];
        *(v32 + 1056) = sub_2753627E8();
        *(v32 + 1064) = v108;
        *v74 = v32;
        v74[1] = sub_27537ABF8;
        v75 = *(v32 + 1488);
      }

      else
      {
        v88 = *(v32 + 1760);
        v89 = *(v32 + 1752);
        v90 = *(v32 + 1640);
        v91 = *(v32 + 1632);
        v92 = *(v32 + 1520);
        v93 = *(v32 + 1496);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_236_1();
        *(v32 + 632) = MEMORY[0x277D83B88];
        *(v32 + 640) = MEMORY[0x277D65050];
        *(v32 + 608) = v36;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v32 + 608));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v94 = OUTLINED_FUNCTION_31_4();
        v89(v94);
        OUTLINED_FUNCTION_212_1();
        v95 = *(MEMORY[0x277D64F80] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v32 + 1864) = v96;
        *(v32 + 1328) = MEMORY[0x277D64FD0];
        *(v32 + 1336) = MEMORY[0x277D64FC0];
        *v96 = v97;
        v96[1] = sub_27537A6E8;
        v98 = *(v32 + 1496);
        OUTLINED_FUNCTION_195_0();
      }
    }

    else
    {
      v76 = *(v32 + 1760);
      v77 = *(v32 + 1752);
      v78 = *(v32 + 1656);
      v79 = *(v32 + 1648);
      v80 = *(v32 + 1520);
      v81 = *(v32 + 1504);
      v82 = *(v32 + 1368);
      v111 = v82[4];
      __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      OUTLINED_FUNCTION_237_1();
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_236_1();
      *(v32 + 592) = MEMORY[0x277D83B88];
      *(v32 + 600) = MEMORY[0x277D65050];
      *(v32 + 568) = v33;
      sub_2753B6588();
      __swift_destroy_boxed_opaque_existential_1((v32 + 568));
      OUTLINED_FUNCTION_67();
      sub_2753B65B8();
      v83 = OUTLINED_FUNCTION_31_4();
      v77(v83);
      OUTLINED_FUNCTION_212_1();
      v84 = *(MEMORY[0x277D64F80] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_64_0();
      *(v32 + 1848) = v85;
      *(v32 + 1344) = MEMORY[0x277D64FD0];
      *(v32 + 1352) = MEMORY[0x277D64FC0];
      *v85 = v86;
      v85[1] = sub_27537A1C8;
      v87 = *(v32 + 1504);
      OUTLINED_FUNCTION_195_0();
    }

    OUTLINED_FUNCTION_103_3();

    return MEMORY[0x2821CC210](v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_27537A1C8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1848);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[232] = v0;

  OUTLINED_FUNCTION_134_3();
  v9(v3[188], v3[179]);
  if (v0)
  {
    OUTLINED_FUNCTION_35_3();
    sub_275388564((v3 + 11), v10, v11, MEMORY[0x277D83D88], sub_275387F04);
    OUTLINED_FUNCTION_128_2();
    v14 = sub_27537C5E0;
  }

  else
  {
    OUTLINED_FUNCTION_128_2();
    v14 = sub_27537A320;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_27537A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v34 = *(v32 + 1680);

  v35 = *(v32 + 1288);
  if (v35)
  {
    v36 = *(v32 + 1424);
    v37 = *(v32 + 1416);
    v38 = *(v32 + 1408);
    v39 = *(v32 + 1384);
    v40 = *(v32 + 1360);
    v41 = *(v32 + 1280);
    *(v32 + 1312) = *(v32 + 1376);
    *(v32 + 1320) = v39;
    v42 = *(v32 + 1824);
    *v36 = v41;
    *(v36 + 8) = v35;
    *(v36 + 16) = v42;
    (*(v37 + 104))(v36, *MEMORY[0x277D65168], v38);
    sub_2752FBA9C();

    OUTLINED_FUNCTION_257();
    v43 = *(v32 + 1672);
    v44 = *(v32 + 1664);
    v45 = *(v32 + 1656);
    v46 = *(v32 + 1648);
    v47 = *(v32 + 1640);
    v48 = *(v32 + 1632);
    v49 = *(v32 + 1624);
    v50 = *(v32 + 1616);
    v51 = *(v32 + 1608);
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_35_0();
  }

  else
  {
    OUTLINED_FUNCTION_296_0();
    OUTLINED_FUNCTION_35_3();
    sub_275388564(v32 + 88, v52, v53, MEMORY[0x277D83D88], sub_275387F04);
    sub_275314678();
    OUTLINED_FUNCTION_307_0();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 84) = v33;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0();
    OUTLINED_FUNCTION_10_6();
    v54 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v54, v55, v56, v57, v58);
    sub_275314720();
    a28 = OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    v59 = *(v32 + 1656);
    v60 = *(v32 + 1648);
    v61 = *(v32 + 1640);
    v62 = *(v32 + 1632);
    v63 = *(v32 + 1624);
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
  }

  OUTLINED_FUNCTION_103_3();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537A6E8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[233];
  *v4 = *v2;
  *(v3 + 1872) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = v1[225];
  (*(v6 + 1808))(v1[187], v1[179]);
  OUTLINED_FUNCTION_145_0();
  v9 = *(v8 + 1696);
  v10 = v1[211];
  if (v0)
  {
    v11 = sub_27537C744;
  }

  else
  {
    v11 = sub_27537A860;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_27537A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v34 = *(v32 + 1680);

  v35 = *(v32 + 1256);
  if (!v35)
  {
    goto LABEL_4;
  }

  if (*(v32 + 86))
  {

LABEL_4:
    OUTLINED_FUNCTION_296_0();
    sub_275314678();
    OUTLINED_FUNCTION_307_0();
    OUTLINED_FUNCTION_216_1();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v32 + 83) = v33;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_328_0();
    OUTLINED_FUNCTION_10_6();
    v36 = OUTLINED_FUNCTION_200_0();
    sub_2753868E4(v36, v37, v38, v39, v40);
    sub_275314720();
    a28 = OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_64_4();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_284_0();
    v41 = *(v32 + 1656);
    v42 = *(v32 + 1648);
    v43 = *(v32 + 1640);
    v44 = *(v32 + 1632);
    v45 = *(v32 + 1624);
    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_24_3();
    goto LABEL_6;
  }

  v46 = *(v32 + 1248);
  v47 = *(v32 + 1840);
  v48 = *(v32 + 1424);
  v49 = *(v32 + 1416);
  v50 = *(v32 + 1408);
  v51 = *(v32 + 1384);
  v52 = *(v32 + 1360);
  *(v32 + 1264) = *(v32 + 1376);
  *(v32 + 1272) = v51;
  *v48 = v46;
  v48[1] = v35;
  v48[2] = v47;
  (*(v49 + 104))(v48, *MEMORY[0x277D65170], v50);
  sub_2752FBA9C();

  OUTLINED_FUNCTION_257();
  v53 = *(v32 + 1672);
  v54 = *(v32 + 1664);
  v55 = *(v32 + 1656);
  v56 = *(v32 + 1648);
  v57 = *(v32 + 1640);
  v58 = *(v32 + 1632);
  v59 = *(v32 + 1624);
  v60 = *(v32 + 1616);
  v61 = *(v32 + 1608);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_35_0();
LABEL_6:
  OUTLINED_FUNCTION_103_3();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537ABF8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = v1[235];
  *v4 = *v2;
  *(v3 + 1888) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = v1[225];
  (*(v6 + 1808))(v1[186], v1[179]);
  OUTLINED_FUNCTION_145_0();
  v9 = *(v8 + 1696);
  v10 = v1[211];
  if (v0)
  {
    v11 = sub_27537C8A8;
  }

  else
  {
    v11 = sub_27537AD70;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_27537AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 456);
  if (v15)
  {
    v16 = *(v14 + 448);
    v17 = *(v14 + 480);
    v18 = *(v14 + 464);
    if (v17)
    {
      *(v14 + 1216) = *(v14 + 472);
      *(v14 + 1224) = v17;
      *(v14 + 1232) = 44;
      *(v14 + 1240) = 0xE100000000000000;
      sub_275329E48();
      v19 = sub_2753B72C8();
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_275384F68();
    v20 = v21;
    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24) >> 1)
    {
      OUTLINED_FUNCTION_321_0();
      v20 = v49;
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 56 * v22;
    *(v23 + 32) = v16;
    *(v23 + 40) = v15;
    *(v23 + 48) = v18;
    *(v23 + 56) = v19;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    *(v23 + 79) = 0;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  *(v14 + 1896) = v20;
  v24 = *(v14 + 1816);
  v25 = *(v14 + 1760);
  v26 = *(v14 + 1752);
  v27 = *(v14 + 1608);
  v28 = *(v14 + 1600);
  v29 = *(v14 + 1520);
  v30 = *(v14 + 1480);
  OUTLINED_FUNCTION_45_4(*(v14 + 1368));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v31 = MEMORY[0x277D83B88];
  *(v14 + 552) = MEMORY[0x277D83B88];
  *(v14 + 560) = MEMORY[0x277D65050];
  *(v14 + 528) = v24;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v14 + 528));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v32 = OUTLINED_FUNCTION_31_4();
  v26(v32);
  OUTLINED_FUNCTION_212_1();
  v33 = *(MEMORY[0x277D64F78] + 4);
  v34 = swift_task_alloc();
  *(v14 + 216) = MEMORY[0x277D837D0];
  *(v14 + 224) = MEMORY[0x277D84A28];
  *(v14 + 232) = &type metadata for MusicContent.LibraryContentType;
  *(v14 + 1904) = v34;
  *(v14 + 240) = v31;
  *(v14 + 248) = &type metadata for MusicContent.CloudStatus;
  *(v14 + 256) = MEMORY[0x277D839B0];
  v35 = MEMORY[0x277D65088];
  *(v14 + 360) = MEMORY[0x277D65008];
  *(v14 + 368) = v35;
  v36 = sub_2753629F8();
  v37 = MEMORY[0x277D65058];
  *(v14 + 376) = v36;
  *(v14 + 384) = v37;
  v38 = sub_275361784();
  *(v14 + 1912) = v38;
  v39 = MEMORY[0x277D65048];
  *(v14 + 392) = v38;
  *(v14 + 400) = v39;
  *v34 = v14;
  v34[1] = sub_27537AFF4;
  v40 = *(v14 + 1480);
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC208](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_27537AFF4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1904);
  *v4 = *v1;
  v3[240] = v7;
  v3[241] = v0;

  if (v0)
  {
    v8 = v3[237];
    OUTLINED_FUNCTION_134_3();
    v9(v3[185], v3[179]);

    OUTLINED_FUNCTION_128_2();
    v12 = sub_27537CA0C;
  }

  else
  {
    OUTLINED_FUNCTION_134_3();
    v13(v3[185], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v12 = sub_27537B128;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27537B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14;
  v16 = v14[240];
  v17 = *(v16 + 16);
  if (v17)
  {
    v59 = v14;
    v18 = v14[237];
    v19 = (v16 + 73);
    do
    {
      v20 = *(v19 - 33);
      v61 = *(v19 - 25);
      v63 = *(v19 - 41);
      v21 = *(v19 - 17);
      v22 = *(v19 - 9);
      v23 = *(v19 - 1);
      if (*v19)
      {
        v24 = 256;
      }

      else
      {
        v24 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v18 + 16);
        OUTLINED_FUNCTION_50_1();
        sub_275384F68();
        v18 = v28;
      }

      v25 = *(v18 + 16);
      if (v25 >= *(v18 + 24) >> 1)
      {
        sub_275384F68();
        v18 = v29;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 56 * v25;
      *(v26 + 32) = v63;
      *(v26 + 40) = v20;
      *(v26 + 48) = v61;
      *(v26 + 56) = v21;
      *(v26 + 64) = v22;
      *(v26 + 72) = v24 | v23;
      *(v26 + 82) = 32;
      *(v26 + 80) = 0;
      v19 += 48;
      --v17;
    }

    while (v17);
    v15 = v59;
    v30 = v59[240];
  }

  else
  {
    v18 = v14[237];
  }

  v15[242] = v18;
  v60 = v15[239];
  v31 = v15[227];
  v32 = v15[220];
  v33 = v15[219];
  v34 = v15[199];
  v35 = v15[198];
  v36 = v15[190];
  v37 = v15[184];
  v38 = v15[171];

  v64 = v38[4];
  v62 = __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v39 = MEMORY[0x277D83B88];
  v15[89] = MEMORY[0x277D83B88];
  v15[90] = MEMORY[0x277D65050];
  v15[86] = v31;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v15 + 86);
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v40 = OUTLINED_FUNCTION_78_2();
  v33(v40);
  OUTLINED_FUNCTION_199_1();
  sub_2753B65F8();
  v41 = *(MEMORY[0x277D64F80] + 4);
  v42 = swift_task_alloc();
  v15[243] = v42;
  v43 = MEMORY[0x277D837D0];
  v15[39] = MEMORY[0x277D837D0];
  v15[40] = v43;
  v15[41] = &type metadata for MusicContent.CloudLibraryContentType;
  v15[42] = v39;
  v44 = MEMORY[0x277D839B0];
  v15[43] = &type metadata for MusicContent.CloudStatus;
  v15[44] = v44;
  v45 = MEMORY[0x277D65008];
  v15[33] = MEMORY[0x277D65008];
  v15[34] = v45;
  v46 = sub_275362C08();
  v47 = MEMORY[0x277D65058];
  v15[35] = v46;
  v15[36] = v47;
  v48 = MEMORY[0x277D65048];
  v15[37] = v60;
  v15[38] = v48;
  *v42 = v15;
  v42[1] = sub_27537B3DC;
  v49 = v15[184];
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v50, v51, v52, v53, v54, v55, v56, v57, v60, v62, v64, a12, a13, a14);
}

uint64_t sub_27537B3DC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1944);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[244] = v0;

  if (v0)
  {
    v9 = v3[242];
    OUTLINED_FUNCTION_134_3();
    v10(v3[184], v3[179]);

    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537CB70;
  }

  else
  {
    OUTLINED_FUNCTION_134_3();
    v14(v3[184], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537B504;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_27537B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v14 = *(v13 + 168);
  v15 = *(v13 + 1936);
  if (*(v13 + 168))
  {
    a9 = *(v13 + 168);
    v16 = *(v13 + 160);
    v17 = *(v13 + 184);
    v18 = *(v13 + 200);
    v19 = *(v13 + 192);
    v20 = (*(v13 + 208) << 8) | ((HIBYTE(*(v13 + 208)) & 1) << 16) | 0x400000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v13 + 1936);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = *(v15 + 16);
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v15 = v48;
    }

    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    v24 = a9;
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v22);
      sub_275384F68();
      v24 = a9;
      v15 = v49;
    }

    *(v15 + 16) = v23 + 1;
    v25 = v15 + 56 * v23;
    *(v25 + 32) = v16;
    *(v25 + 40) = v24;
    *(v25 + 56) = v17;
    *(v25 + 64) = v19;
    *(v25 + 72) = v18;
    *(v25 + 82) = BYTE2(v20);
    *(v25 + 80) = v20;
  }

  *(v13 + 1960) = v15;
  v26 = *(v13 + 1816);
  v27 = *(v13 + 1760);
  v28 = *(v13 + 1752);
  v29 = *(v13 + 1576);
  v30 = *(v13 + 1568);
  v31 = *(v13 + 1520);
  v32 = *(v13 + 1464);
  v33 = *(v13 + 1368);
  v34 = v33[3];
  *&a9 = v33[4];
  OUTLINED_FUNCTION_107_3(v33);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v13 + 832) = MEMORY[0x277D83B88];
  *(v13 + 840) = MEMORY[0x277D65050];
  *(v13 + 808) = v26;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v13 + 808));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v35 = OUTLINED_FUNCTION_31_4();
  v28(v35);
  OUTLINED_FUNCTION_212_1();
  v36 = *(MEMORY[0x277D64F80] + 4);
  v37 = swift_task_alloc();
  *(v13 + 1968) = v37;
  *(v13 + 1072) = MEMORY[0x277D837D0];
  *(v13 + 1080) = MEMORY[0x277D84A28];
  *(v13 + 1088) = &type metadata for MusicContent.PurchasableContentType;
  *(v13 + 1096) = MEMORY[0x277D65008];
  *(v13 + 1104) = MEMORY[0x277D65088];
  *(v13 + 1112) = sub_275362E18();
  *v37 = v13;
  v37[1] = sub_27537B738;
  v38 = *(v13 + 1464);
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v39, v40, v41, v42, v43, v44, v45, v46, a9, *(&a9 + 1), a10, a11, a12, a13);
}

uint64_t sub_27537B738()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1968);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[247] = v0;

  if (v0)
  {
    v9 = v3[245];
    OUTLINED_FUNCTION_134_3();
    v10(v3[183], v3[179]);

    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537CCD4;
  }

  else
  {
    OUTLINED_FUNCTION_134_3();
    v14(v3[183], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537B860;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_27537B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v14 = *(v13 + 968);
  v15 = *(v13 + 1960);
  if (*(v13 + 968))
  {
    a9 = *(v13 + 968);
    v16 = *(v13 + 960);
    v17 = *(v13 + 984);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v13 + 1960);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = *(v21 + 16);
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v21 = isUniquelyReferenced_nonNull_native;
    }

    v22 = *(v21 + 24);
    v23 = a9;
    if (*(v21 + 16) >= v22 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v22);
      sub_275384F68();
      v23 = a9;
      v21 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_194_0(v23, isUniquelyReferenced_nonNull_native, v19, v20, v21);
    *(v24 + 82) = 96;
    *(v24 + 80) = 0;
  }

  *(v13 + 1984) = v15;
  v25 = *(v13 + 1816);
  v26 = *(v13 + 1760);
  v27 = *(v13 + 1752);
  v28 = *(v13 + 1560);
  v29 = *(v13 + 1552);
  v30 = *(v13 + 1520);
  v31 = *(v13 + 1456);
  v32 = *(v13 + 1368);
  v33 = v32[3];
  a9.n128_u64[0] = v32[4];
  OUTLINED_FUNCTION_107_3(v32);
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v13 + 872) = MEMORY[0x277D83B88];
  *(v13 + 880) = MEMORY[0x277D65050];
  *(v13 + 848) = v25;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v13 + 848));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v34 = OUTLINED_FUNCTION_31_4();
  v27(v34);
  OUTLINED_FUNCTION_212_1();
  v35 = *(MEMORY[0x277D64F80] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v13 + 1992) = v36;
  *v36 = v37;
  v36[1] = sub_27537BA18;
  v38 = *(v13 + 1456);
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC210](v39, v40, v41, v42, v43, v44, v45, v46, a9.n128_u64[0], a9.n128_u64[1], a10, a11, a12, a13);
}

uint64_t sub_27537BA18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1992);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[250] = v0;

  if (v0)
  {
    v9 = v3[248];
    OUTLINED_FUNCTION_134_3();
    v10(v3[182], v3[179]);

    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537CE38;
  }

  else
  {
    OUTLINED_FUNCTION_134_3();
    v14(v3[182], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537BB40;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_27537BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v14 = *(v13 + 1000);
  v15 = *(v13 + 1984);
  if (*(v13 + 1000))
  {
    a11 = *(v13 + 1000);
    v16 = *(v13 + 992);
    v17 = *(v13 + 1016);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v13 + 1984);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = *(v21 + 16);
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v21 = isUniquelyReferenced_nonNull_native;
    }

    v22 = *(v21 + 24);
    v23 = a11;
    if (*(v21 + 16) >= v22 >> 1)
    {
      OUTLINED_FUNCTION_94_1(v22);
      sub_275384F68();
      v23 = a11;
      v21 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_194_0(v23, isUniquelyReferenced_nonNull_native, v19, v20, v21);
    *(v24 + 82) = 0x80;
    *(v24 + 80) = 0;
  }

  *(v13 + 2008) = v15;
  v25 = *(v13 + 1816);
  v48 = *(v13 + 1784);
  v26 = *(v13 + 1776);
  v27 = *(v13 + 1760);
  v28 = *(v13 + 1752);
  v29 = *(v13 + 1544);
  v30 = *(v13 + 1536);
  v31 = *(v13 + 1520);
  v32 = *(v13 + 1448);
  OUTLINED_FUNCTION_45_4(*(v13 + 1368));
  sub_2753B65C8();
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  *(v13 + 912) = MEMORY[0x277D83B88];
  *(v13 + 920) = MEMORY[0x277D65050];
  *(v13 + 888) = v25;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v13 + 888));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v33 = OUTLINED_FUNCTION_31_4();
  v28(v33);
  OUTLINED_FUNCTION_212_1();
  v34 = *(MEMORY[0x277D64F80] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v13 + 1136) = MEMORY[0x277D837D0];
  *(v13 + 2016) = v35;
  *(v13 + 1144) = v26;
  *(v13 + 1120) = MEMORY[0x277D65008];
  *(v13 + 1128) = v48;
  *v35 = v36;
  v35[1] = sub_27537BD2C;
  v37 = *(v13 + 1448);
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC210](v38, v39, v40, v41, v42, v43, v44, v45, v48, a10, a11.n128_u64[0], a11.n128_u64[1], a12, a13);
}

uint64_t sub_27537BD2C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2016);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[253] = v0;

  if (v0)
  {
    v9 = v3[251];
    OUTLINED_FUNCTION_134_3();
    v10(v3[181], v3[179]);

    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537CF9C;
  }

  else
  {
    OUTLINED_FUNCTION_134_3();
    v14(v3[181], v3[179]);
    OUTLINED_FUNCTION_128_2();
    v13 = sub_27537BE54;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_27537BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = *(v32 + 1680);

  v34 = *(v32 + 936);
  if (v34)
  {
    v35 = *(v32 + 928);
    v36 = *(v32 + 952);
    if (v36)
    {
      *(v32 + 1184) = *(v32 + 944);
      *(v32 + 1192) = v36;
      *(v32 + 1200) = 44;
      *(v32 + 1208) = 0xE100000000000000;
      sub_275329E48();
      v37 = sub_2753B72C8();
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v51 = *(v32 + 2008);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v32 + 2008);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = *(v38 + 16);
      OUTLINED_FUNCTION_50_1();
      sub_275384F68();
      v38 = v79;
    }

    v53 = *(v38 + 16);
    if (v53 >= *(v38 + 24) >> 1)
    {
      OUTLINED_FUNCTION_321_0();
      v38 = v80;
    }

    *(v38 + 16) = v53 + 1;
    v54 = v38 + 56 * v53;
    *(v54 + 32) = v35;
    *(v54 + 40) = v34;
    *(v54 + 48) = v37;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    *(v54 + 72) = 0;
    *(v54 + 82) = -96;
    *(v54 + 80) = 0;
  }

  else
  {
    v38 = *(v32 + 2008);
    if (!*(v38 + 16))
    {
      OUTLINED_FUNCTION_296_0();
      v39 = *(v32 + 1384);
      v40 = *(v32 + 1376);

      sub_275314678();
      OUTLINED_FUNCTION_216_1();
      sub_2753B62D8();
      OUTLINED_FUNCTION_67();
      sub_2753B62C8();
      *(v32 + 81) = 1;
      sub_2753B6298();
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_328_0();
      *(v32 + 1152) = v40;
      *(v32 + 1160) = v39;
      sub_2753146CC();
      sub_2753B62B8();
      OUTLINED_FUNCTION_67();
      sub_2753B62C8();
      OUTLINED_FUNCTION_10_6();
      v41 = OUTLINED_FUNCTION_200_0();
      sub_2753868E4(v41, v42, v43, v44, v45);
      sub_275314720();
      a28 = OUTLINED_FUNCTION_124_3();
      OUTLINED_FUNCTION_64_4();
      sub_2753B62E8();
      swift_willThrow();
      OUTLINED_FUNCTION_284_0();
      v46 = *(v32 + 1656);
      v47 = *(v32 + 1648);
      v48 = *(v32 + 1640);
      v49 = *(v32 + 1632);
      v50 = *(v32 + 1624);
      OUTLINED_FUNCTION_15_5();

      OUTLINED_FUNCTION_24_3();
      goto LABEL_13;
    }
  }

  v55 = *(v32 + 1424);
  v56 = *(v32 + 1416);
  v57 = *(v32 + 1408);
  v58 = *(v32 + 1384);
  v59 = *(v32 + 1360);
  *(v32 + 1168) = *(v32 + 1376);
  *(v32 + 1176) = v58;
  *v55 = v38;
  (*(v56 + 104))(v55, *MEMORY[0x277D65178], v57);
  sub_2752FBA9C();

  OUTLINED_FUNCTION_257();
  v60 = *(v32 + 1672);
  v61 = *(v32 + 1664);
  v62 = *(v32 + 1656);
  v63 = *(v32 + 1648);
  v64 = *(v32 + 1640);
  v65 = *(v32 + 1632);
  v66 = *(v32 + 1624);
  v67 = *(v32 + 1616);
  v68 = *(v32 + 1608);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_35_0();
LABEL_13:
  OUTLINED_FUNCTION_103_3();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_27537C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];
  v34 = v32[209];
  v35 = v32[191];
  v36 = v32[190];

  v37 = OUTLINED_FUNCTION_36_3();
  v38(v37);
  __swift_destroy_boxed_opaque_existential_1(v32 + 51);
  v53 = v32[217];
  v39 = v32[209];
  v40 = v32[208];
  v41 = v32[207];
  v42 = v32[206];
  v43 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v53, a30, a31, a32);
}

uint64_t sub_27537C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  __swift_destroy_boxed_opaque_existential_1(v32 + 51);
  v48 = v32[224];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[232];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[234];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[236];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[241];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[244];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[247];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[250];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_127_3();
  v33 = v32[210];

  v48 = v32[253];
  v34 = v32[209];
  v35 = v32[208];
  v36 = v32[207];
  v37 = v32[206];
  v38 = v32[205];
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_103_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v48, a30, a31, a32);
}

uint64_t sub_27537D100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_27537D164()
{
  if (!qword_2809C2CD8)
  {
    sub_2753868E4(255, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C2CD8);
    }
  }
}

uint64_t sub_27537D200(uint64_t a1, uint64_t a2)
{
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, MEMORY[0x277D65188]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27537D288()
{
  result = qword_2809C2CE0;
  if (!qword_2809C2CE0)
  {
    sub_275388174(255, &qword_2809C0E08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2CE0);
  }

  return result;
}

uint64_t sub_27537D31C(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_27537D350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_27537D430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_27537D510@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27537D31C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_27537D53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27537D344(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27537D568(uint64_t *a1)
{
  v2 = *a1;
  swift_getWitnessTable();
  return sub_2753B6F28();
}

uint64_t sub_27537D658()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6EF8();
}

uint64_t sub_27537D6E0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6EE8();
}

uint64_t sub_27537D784()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6ED8();
}

uint64_t sub_27537D820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821CC280](a1, WitnessTable);
}

uint64_t sub_27537D884()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2753B6F08();
}

uint64_t MusicContentStorage.Operations.registrations(for:followRedirect:)()
{
  OUTLINED_FUNCTION_3();
  v2[215] = v1;
  v2[214] = v4;
  v5 = sub_2753B6AD8();
  v2[216] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v2[217] = v6;
  v8 = *(v7 + 64);
  v2[218] = OUTLINED_FUNCTION_138_0();
  sub_275386EA0(0, &qword_2809C2D28, MEMORY[0x277D64F00]);
  v2[219] = v9;
  OUTLINED_FUNCTION_75(v9);
  v11 = *(v10 + 64);
  v2[220] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_10_6();
  sub_2753868E4(0, v12, v13, v14, MEMORY[0x277D64F00]);
  v2[221] = v15;
  OUTLINED_FUNCTION_75(v15);
  v17 = *(v16 + 64);
  v2[222] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_146_2();
  sub_2753868E4(0, v18, v0, &type metadata for MusicContent, MEMORY[0x277D65180]);
  v2[223] = v19;
  OUTLINED_FUNCTION_17_1(v19);
  v2[224] = v20;
  v22 = *(v21 + 64);
  v2[225] = OUTLINED_FUNCTION_330_0();
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v23 = sub_2753B6608();
  v2[228] = v23;
  OUTLINED_FUNCTION_17_1(v23);
  v2[229] = v24;
  v26 = *(v25 + 64);
  v2[230] = OUTLINED_FUNCTION_330_0();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v27 = sub_2753B65D8();
  v2[233] = v27;
  OUTLINED_FUNCTION_17_1(v27);
  v2[234] = v28;
  v30 = *(v29 + 64);
  v2[235] = OUTLINED_FUNCTION_330_0();
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  OUTLINED_FUNCTION_144_2();
  sub_27538685C(0, v31, &qword_2809C1310, v32);
  OUTLINED_FUNCTION_75(v33);
  v35 = *(v34 + 64);
  v2[241] = OUTLINED_FUNCTION_138_0();
  sub_2753868E4(0, &qword_2809C1310, v0, &type metadata for MusicContent, v3);
  v2[242] = v36;
  OUTLINED_FUNCTION_17_1(v36);
  v2[243] = v37;
  v39 = *(v38 + 64);
  v2[244] = OUTLINED_FUNCTION_187_1();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  sub_2753B6288();
  v2[249] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v40, 255, v41);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v2[250] = v42;
  v2[251] = v43;
  v44 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v44, v45, v46);
}

uint64_t sub_27537DCF0()
{
  v1 = v0[242];
  v2 = v0[214];
  sub_275314624();
  v0[213] = sub_2753B6C98();
  v3 = *(v2 + 16);
  sub_27538672C(0, &qword_2809C2D38, MEMORY[0x277D834F8]);
  OUTLINED_FUNCTION_304_0();
  sub_2753B6C88();
  sub_275385044();
  v5 = v4;
  if (v3)
  {
    v6 = v0[243];
    v114 = (v6 + 32);
    v111 = v6;
    v112 = (v6 + 16);
    v109 = (v0 + 188);
    v110 = v6 + 8;
    v108 = v6 + 40;
    v7 = (v0[214] + 40);
    v116 = *(v0[215] + 40);
    do
    {
      v117 = v3;
      v8 = v0[242];
      v9 = v0[241];
      v11 = *(v7 - 1);
      v10 = *v7;
      swift_bridgeObjectRetain_n();
      v12 = sub_2753B6558();
      v0[192] = v11;
      v0[193] = v10;
      v13 = OUTLINED_FUNCTION_6_3();
      sub_27538672C(v13, &qword_2809C2CD0, v14);
      sub_2753B64A8();

      OUTLINED_FUNCTION_332_0(v9);
      if (v15)
      {
        v16 = v0[241];
        OUTLINED_FUNCTION_1_8();
        sub_275388564(v17, &qword_2809C2CC8, &qword_2809C1310, v18, sub_27538685C);
        v19 = OUTLINED_FUNCTION_214_1();
        v12(v19);
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_94_1(v20);
          sub_275385044();
          v5 = v69;
        }

        *(v5 + 16) = v21 + 1;
        v22 = v5 + 16 * v21;
        *(v22 + 32) = v11;
        *(v22 + 40) = v10;
      }

      else
      {
        v115 = v5;
        v23 = v0[248];
        v24 = v0[247];
        v113 = *v114;
        (*v114)(v23, v0[241], v0[242]);
        v25 = OUTLINED_FUNCTION_214_1();
        v12(v25);
        v26 = *v112;
        v27 = OUTLINED_FUNCTION_76();
        v28(v27);
        OUTLINED_FUNCTION_329_0();
        v120 = v23;
        OUTLINED_FUNCTION_5_6();
        sub_27538436C(v11, v10, v29, sub_275384B18);
        OUTLINED_FUNCTION_161_1();
        if (__OFADD__(v32, v33))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return MEMORY[0x2821CC220]();
        }

        v34 = v30;
        v35 = v31;
        v36 = OUTLINED_FUNCTION_12_5();
        sub_27538672C(v36, &qword_2809C2DA0, v37);
        v38 = sub_2753B7478();
        if (v38)
        {
          OUTLINED_FUNCTION_5_6();
          v38 = sub_27538436C(v11, v10, v46, sub_275384B18);
          if ((v35 & 1) != (v39 & 1))
          {

            return sub_2753B7768();
          }

          v34 = v38;
        }

        v47 = v0[248];
        v48 = v0[247];
        v49 = v0[242];
        if (v35)
        {

          v51 = v120;
          v59 = OUTLINED_FUNCTION_279_0(v50, v52, v53, v54, v55, v56, v57, v58, v108, v109, v110, v111);
          (*(v10 + 40))(v59, v48, v49);
          v60 = OUTLINED_FUNCTION_277_0();
          v61(v60);
        }

        else
        {
          v51 = v120;
          *(v120 + 8 * (v34 >> 6) + 64) |= 1 << v34;
          v62 = (*(v120 + 48) + 16 * v34);
          *v62 = v11;
          v62[1] = v10;
          v63 = OUTLINED_FUNCTION_279_0(v38, v39, v40, v41, v42, v43, v44, v45, v108, v109, v110, v111);
          v113(v63, v48, v49);
          v64 = OUTLINED_FUNCTION_277_0();
          v65(v64);
          v66 = *(v120 + 16);
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_25;
          }

          *(v120 + 16) = v68;
        }

        v0[213] = v51;
        v5 = v115;
      }

      v7 += 2;
      v3 = v117 - 1;
    }

    while (v117 != 1);
  }

  v0[252] = v5;
  v70 = v0[240];
  v71 = v0[239];
  v72 = v0[234];
  v73 = v0[233];
  v74 = v0[232];
  v75 = v0[215];
  v118 = v75[4];
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  sub_2753B65C8();
  sub_2753B65B8();
  v0[211] = v5;
  OUTLINED_FUNCTION_11_5();
  sub_275388174(0, v76, v77, v78);
  sub_2753867C8();

  OUTLINED_FUNCTION_256((v0 + 211));
  sub_2753B65B8();
  v0[210] = v5;
  OUTLINED_FUNCTION_256((v0 + 210));
  sub_2753B65B8();
  v0[207] = v5;
  OUTLINED_FUNCTION_256((v0 + 207));
  sub_2753B65B8();
  v0[206] = v5;
  OUTLINED_FUNCTION_256((v0 + 206));
  sub_2753B65B8();
  v0[203] = v5;
  OUTLINED_FUNCTION_256((v0 + 203));
  sub_2753B65B8();
  v0[202] = v5;
  OUTLINED_FUNCTION_256((v0 + 202));

  sub_2753B65B8();
  v79 = *(v72 + 32);
  v0[253] = v79;
  v0[254] = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v79(v71, v70, v73);
  sub_2753B65F8();
  v80 = *(MEMORY[0x277D64F90] + 4);
  v81 = swift_task_alloc();
  v0[255] = v81;
  v82 = MEMORY[0x277D83B88];
  v0[132] = MEMORY[0x277D83B88];
  v0[133] = MEMORY[0x277D64FD0];
  v83 = MEMORY[0x277D83D88];
  sub_275388174(0, &qword_2809C2CE8, &type metadata for MusicContent.ContentType, MEMORY[0x277D83D88]);
  v0[134] = v84;
  sub_275388174(0, &qword_2809C2D08, v82, v83);
  v86 = v85;
  v0[135] = v85;
  sub_275388174(0, &qword_2809C0E08, MEMORY[0x277D837D0], v83);
  v88 = v87;
  v0[136] = v87;
  v0[137] = v86;
  v0[138] = v86;
  sub_27538685C(0, &qword_2809C2D48, &qword_2809C2D50, type metadata accessor for MusicContentStorage.Operations.ContentRow.Source);
  v0[139] = v89;
  v0[140] = v88;
  v0[141] = v88;
  v90 = OUTLINED_FUNCTION_200_0();
  sub_275388174(v90, v91, v92, v93);
  v0[142] = v94;
  v0[143] = v88;
  v0[144] = v88;
  v0[145] = v86;
  v0[146] = v86;
  v95 = OUTLINED_FUNCTION_200_0();
  sub_275388174(v95, v96, v97, v98);
  v0[147] = v99;
  OUTLINED_FUNCTION_21_4();
  sub_2753868E4(0, v100, v101, v102, type metadata accessor for MusicContentStorage.Operations.ContentRow);
  v0[148] = MEMORY[0x277D65058];
  v0[149] = MEMORY[0x277D64FC0];
  v0[150] = sub_275386964(&qword_2809C2D68, sub_275356078);
  v103 = sub_2753869F4();
  v0[151] = v103;
  v104 = sub_275386A88();
  v0[152] = v104;
  v0[153] = v103;
  v0[154] = v103;
  v0[155] = sub_275386B1C();
  v0[156] = v104;
  v0[157] = v104;
  v0[158] = sub_275386C48();
  v0[159] = v104;
  v0[160] = v104;
  v0[161] = v103;
  v0[162] = v103;
  v0[163] = sub_275386CDC();
  *v81 = v0;
  v81[1] = sub_27537E530;
  v105 = v0[232];
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2821CC220]();
}

uint64_t sub_27537E530()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2040);
  *v4 = *v1;
  v3[256] = v7;
  v3[257] = v0;

  if (v0)
  {
    v8 = v3[252];
    v9 = OUTLINED_FUNCTION_286_0();
    v10(v9);

    OUTLINED_FUNCTION_225_1();
    v13 = sub_275380C08;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_286_0();
    v3[258] = v15;
    v3[259] = v16 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v14);
    OUTLINED_FUNCTION_225_1();
    v13 = sub_27537E674;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

void sub_27537E674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const char *a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_311_0();
  v43 = *(v33 + 2048);
  v44 = *(v43 + 16);
  *(v33 + 2080) = v44;
  if (v44)
  {
    v45 = 0;
    v46 = v33 + 1368;
    v201 = (v33 + 1696);
    *(v33 + 220) = *MEMORY[0x277D65178];
    a11 = " during regstration lookup";
    *(v33 + 428) = *MEMORY[0x277D65168];
    *(v33 + 636) = *MEMORY[0x277D65170];
    v47 = *(v33 + 2056);
    a24 = 2;
    while (1)
    {
      *(v33 + 2088) = v45;
      if (v45 >= v44)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_174_1(v43, v45);
      v49 = *(v33 + 440);
      v48 = *(v33 + 448);
      *(v33 + 2096) = v49;
      *(v33 + 2104) = v48;
      v50 = *(v33 + 1704);
      if (*(v50 + 16))
      {
        sub_275386D70(v33 + 432, v33 + 640);

        OUTLINED_FUNCTION_5_6();
        v52 = sub_27538436C(v49, v48, v51, sub_275384B18);
        if (v53)
        {
          a25.n128_u64[0] = v48;
          LODWORD(a26) = *(v33 + 220);
          v54 = *(v33 + 1944);
          v55 = *(v33 + 1816);
          v56 = *(v33 + 1792);
          v57 = *(v33 + 1784);
          v216 = *(v54 + 72);
          v219 = *(v54 + 16);
          v219(*(v33 + 1968), *(v50 + 56) + v216 * v52, *(v33 + 1936));
          OUTLINED_FUNCTION_199_1();
          sub_2753B6A58();
          (*(v56 + 88))(v55, v57);
          v58 = *(v33 + 1816);
          OUTLINED_FUNCTION_215_1();
          if (v60 != a26)
          {
            (*(v59 + 8))(v58);
            OUTLINED_FUNCTION_48_3();
            OUTLINED_FUNCTION_229_1();
            OUTLINED_FUNCTION_133_3();
            OUTLINED_FUNCTION_224();
            return;
          }

          v61 = OUTLINED_FUNCTION_126_0(v59);
          v62(v61);
          OUTLINED_FUNCTION_208_1();
          sub_2753811B8(v33 + 224, v33 + 1312);
          if (v47)
          {
            v184 = *(v33 + 2048);
            v185 = *(v33 + 2016);
            v186 = *(v33 + 1992);
            v187 = OUTLINED_FUNCTION_49_3();
            v188(v187);

            goto LABEL_52;
          }

          v210 = *(v33 + 220);
          v63 = *(v33 + 1968);
          a26 = *(v33 + 1960);
          v213 = *(v33 + 1936);
          v64 = *(v33 + 1808);
          v65 = *(v33 + 1792);
          v207 = *(v33 + 1784);
          sub_275386E0C(v33 + 432);
          v66 = *(v33 + 1344);
          v67 = *(v33 + 1352);
          v204 = *(v33 + 1360);
          v34 = v49;
          v68 = *(v33 + 1362);
          v69 = OUTLINED_FUNCTION_9_5();
          sub_275388174(v69, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, v70);
          a13 = *(v33 + 1328);
          a14 = *(v33 + 1312);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_2753BE420;
          *(v71 + 32) = a14;
          *(v71 + 48) = a13;
          *(v71 + 64) = v66;
          *(v71 + 72) = v67;
          *(v71 + 82) = v68;
          *(v71 + 80) = v204;
          a28 = v58;
          sub_275365400(v71);
          *v64 = v58;
          (*(v65 + 104))(v64, v210, v207);
          sub_2753B6A68();
          v219(a26, v63, v213);
          OUTLINED_FUNCTION_329_0();
          *(v33 + 1696) = v63;
          OUTLINED_FUNCTION_5_6();
          v35 = a25.n128_u64[0];
          sub_27538436C(v34, a25.n128_i64[0], v72, sub_275384B18);
          OUTLINED_FUNCTION_161_1();
          if (__OFADD__(v73, v74))
          {
            goto LABEL_59;
          }

          v75 = v43;
          v76 = v36;
          v77 = OUTLINED_FUNCTION_12_5();
          sub_27538672C(v77, &qword_2809C2DA0, v78);
          if (sub_2753B7478())
          {
            v79 = *v201;
            OUTLINED_FUNCTION_5_6();
            sub_27538436C(v34, a25.n128_i64[0], v80, sub_275384B18);
            OUTLINED_FUNCTION_154_2();
            if (!v82)
            {
              goto LABEL_47;
            }

            v75 = v81;
          }

          v83 = *(v33 + 1696);
          v84 = *(v33 + 1960);
          OUTLINED_FUNCTION_220_1();
          if (v76)
          {
            (*(v85 + 40))(v83[7] + v75 * v216);
          }

          else
          {
            v83[(v75 >> 6) + 8] |= 1 << v75;
            v133 = (v83[6] + 16 * v75);
            *v133 = v34;
            v133[1] = a25.n128_u64[0];
            v43 = (*(v85 + 32))(v83[7] + v75 * v216);
            v134 = v83[2];
            v107 = __OFADD__(v134, 1);
            v135 = v134 + 1;
            if (v107)
            {
              goto LABEL_60;
            }

            v83[2] = v135;
          }

          v130 = *(v33 + 1968);
          v132 = *(v33 + 1944);
          v131 = *(v33 + 1936);
          goto LABEL_32;
        }
      }

      else
      {
        sub_275386D70(v33 + 432, v33 + 16);
      }

      if ((*(v33 + 472) & 1) == 0)
      {
        v166 = OUTLINED_FUNCTION_62_3();
        v167 = *(v33 + 464);
        v168 = v166[3];
        v226 = v166[4];
        OUTLINED_FUNCTION_107_3(v166);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_236_1();
        *(v33 + 1448) = MEMORY[0x277D83B88];
        *(v33 + 1456) = MEMORY[0x277D65050];
        *(v33 + 1424) = v167;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v33 + 1424));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v169 = OUTLINED_FUNCTION_31_4();
        v47(v169);
        OUTLINED_FUNCTION_212_1();
        v170 = *(MEMORY[0x277D64F80] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v33 + 2112) = v171;
        *(v33 + 1664) = MEMORY[0x277D64FD0];
        *(v33 + 1672) = MEMORY[0x277D64FC0];
        *v171 = v172;
        OUTLINED_FUNCTION_29_4(v171);
LABEL_43:
        OUTLINED_FUNCTION_195_0();
        OUTLINED_FUNCTION_224();

LABEL_61:
        MEMORY[0x2821CC210](v43, v36, v37, v38, v39, v40, v41, v42, a9, a10, " during regstration lookup", v201, a13, *(&a13 + 1));
        return;
      }

      if ((*(v33 + 504) & 1) == 0)
      {
        v173 = OUTLINED_FUNCTION_61_2();
        v174 = *(v33 + 496);
        v175 = v173[3];
        v227 = v173[4];
        OUTLINED_FUNCTION_107_3(v173);
        OUTLINED_FUNCTION_237_1();
        OUTLINED_FUNCTION_236_1();
        *(v33 + 1488) = MEMORY[0x277D83B88];
        *(v33 + 1496) = MEMORY[0x277D65050];
        *(v33 + 1464) = v174;
        sub_2753B6588();
        __swift_destroy_boxed_opaque_existential_1((v33 + 1464));
        OUTLINED_FUNCTION_67();
        sub_2753B65B8();
        v176 = OUTLINED_FUNCTION_31_4();
        v47(v176);
        OUTLINED_FUNCTION_212_1();
        v177 = *(MEMORY[0x277D64F80] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_64_0();
        *(v33 + 2128) = v178;
        *(v33 + 1632) = MEMORY[0x277D64FD0];
        *(v33 + 1640) = MEMORY[0x277D64FC0];
        *v178 = v179;
        OUTLINED_FUNCTION_28_4(v178);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_263_0();
      sub_2753811B8(v33 + 848, v46);
      if (v47)
      {
        v180 = *(v33 + 2048);
        v181 = *(v33 + 2016);
        v182 = *(v33 + 1992);

LABEL_52:

        sub_275386E0C(v33 + 432);
        goto LABEL_53;
      }

      v86 = *(v33 + 220);
      OUTLINED_FUNCTION_207_1();
      v87 = *(v33 + 1400);
      v88 = *(v33 + 1408);
      v35 = *(v33 + 1416);
      v89 = *(v33 + 1418);
      v90 = OUTLINED_FUNCTION_9_5();
      sub_275388174(v90, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, v91);
      v92 = OUTLINED_FUNCTION_206_1();
      OUTLINED_FUNCTION_82_3(v92, xmmword_2753BE420, a25);
      v94 = OUTLINED_FUNCTION_120_2(v93);
      v95(v94);
      v96 = *(v33 + 2104);
      v97 = *(v33 + 2096);
      v98 = *(v33 + 1952);
      v99 = *(v33 + 1808);
      OUTLINED_FUNCTION_83_3();
      v100(v99);
      sub_2752FBA9C();

      sub_2753B6A78();
      v34 = *(v33 + 1704);
      swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 1600) = v34;
      OUTLINED_FUNCTION_5_6();
      v101 = OUTLINED_FUNCTION_27();
      v105 = sub_27538436C(v101, v102, v103, v104);
      OUTLINED_FUNCTION_169_1(v105, v106);
      if (v107)
      {
        goto LABEL_57;
      }

      v108 = v43;
      v109 = v36;
      v110 = OUTLINED_FUNCTION_12_5();
      sub_27538672C(v110, &qword_2809C2DA0, v111);
      OUTLINED_FUNCTION_176_1();
      if (sub_2753B7478())
      {
        v112 = *(v33 + 2104);
        v113 = *(v33 + 2096);
        v114 = *(v33 + 1600);
        OUTLINED_FUNCTION_5_6();
        sub_27538436C(v115, v116, v117, sub_275384B18);
        OUTLINED_FUNCTION_154_2();
        if (!v82)
        {
LABEL_47:
          OUTLINED_FUNCTION_224();

          sub_2753B7768();
          return;
        }

        v108 = v118;
      }

      v83 = *(v33 + 1600);
      v119 = *(v33 + 2104);
      if (v109)
      {
        v120 = *(v33 + 1952);
        OUTLINED_FUNCTION_220_1();
        (*(v121 + 40))(v83[7] + *(v121 + 72) * v108);
      }

      else
      {
        v122 = *(v33 + 2096);
        v123 = *(v33 + 1952);
        v124 = *(v33 + 1944);
        v125 = *(v33 + 1936);
        v83[(v108 >> 6) + 8] |= 1 << v108;
        v126 = (v83[6] + 16 * v108);
        *v126 = v122;
        v126[1] = v119;
        v43 = (*(v124 + 32))(v83[7] + *(v124 + 72) * v108, v123, v125);
        v127 = v83[2];
        v107 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v107)
        {
          goto LABEL_58;
        }

        v83[2] = v128;
      }

      v129 = *(v33 + 1800);
      OUTLINED_FUNCTION_215_1();
LABEL_32:
      (*(v132 + 8))(v130, v131);
      *(v33 + 1704) = v83;
      v43 = OUTLINED_FUNCTION_117_3();
      if (v82)
      {
        v138 = *(v33 + 1992);

        goto LABEL_36;
      }

      v47 = 0;
      v44 = *(v43 + 16);
      v46 = v33 + 1368;
    }
  }

  v136 = *(v33 + 1992);

  v137 = *(v33 + 2056);
LABEL_36:
  v139 = *(v33 + 2016);
  v140 = *(v33 + 1712);

  sub_275381A04(v141, (v33 + 1704));
  v143 = v142;

  if (*(v143 + 16))
  {
    OUTLINED_FUNCTION_166_1();
    v144 = *(v33 + 1728);
    OUTLINED_FUNCTION_20_3();
    sub_2753870A8(v145, 255, v146);
    OUTLINED_FUNCTION_162_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    v147 = *MEMORY[0x277D651B0];
    v148 = OUTLINED_FUNCTION_228_1();
    v149(v148);
    OUTLINED_FUNCTION_71();
    sub_2753B6298();
    (*(v35 + 8))(v34, v144);
    OUTLINED_FUNCTION_70_4();
    *(v33 + 1608) = v143;
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_182_0();
    sub_275388174(v150, v151, v152, v153);
    OUTLINED_FUNCTION_41_4(&qword_2809C2DA8);
    OUTLINED_FUNCTION_209_1();

    OUTLINED_FUNCTION_48_3();
    v154 = OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_42_3(v154, &qword_2809C2DB0);
    sub_275386F30();
    OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_96_0();
    sub_2753B62E8();
    swift_willThrow();
LABEL_53:
    v189 = *(v33 + 1984);
    v190 = *(v33 + 1976);
    OUTLINED_FUNCTION_118_3();
    v191 = *(v33 + 1912);
    v203 = *(v33 + 1904);
    *&a13 = *(v33 + 1896);
    *&a14 = *(v33 + 1888);
    v206 = *(v33 + 1880);
    v209 = *(v33 + 1856);
    v212 = *(v33 + 1848);
    v215 = *(v33 + 1840);
    v218 = *(v33 + 1816);
    v221 = *(v33 + 1808);
    v223 = *(v33 + 1800);
    v225 = *(v33 + 1776);
    OUTLINED_FUNCTION_37_4();
    v192 = *(v33 + 1704);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_224();

    v194(v193, v194, v195, v196, v197, v198, v199, v200, a9, a10, a11, v203, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, v206, v209, v212, v215, v218, v221, v223, v225, a24, a25.n128_u64[0], a25.n128_u64[1], a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v155 = *(v33 + 1920);
    v156 = *(v33 + 1912);
    v202 = *(v33 + 1904);
    *&a13 = *(v33 + 1896);
    *&a14 = *(v33 + 1888);
    v205 = *(v33 + 1880);
    v208 = *(v33 + 1856);
    v211 = *(v33 + 1848);
    v214 = *(v33 + 1840);
    v217 = *(v33 + 1816);
    v220 = *(v33 + 1808);
    v222 = *(v33 + 1800);
    v224 = *(v33 + 1776);
    OUTLINED_FUNCTION_37_4();

    v157 = *(v33 + 1704);

    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_224();

    v160(v158, v159, v160, v161, v162, v163, v164, v165, a9, a10, a11, v202, a13, *(&a13 + 1), a14, *(&a14 + 1), a15, v205, v208, v211, v214, v217, v220, v222, v224, a24, a25.n128_u64[0], a25.n128_u64[1], a26, a27, a28, a29, a30, a31, a32, a33);
  }
}

uint64_t sub_27537F32C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2112);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 2120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_239_1();
    v9(*(v3 + 1848), *(v3 + 1824));
    sub_275386E0C(v3 + 432);

    OUTLINED_FUNCTION_225_1();
    v12 = sub_275380D1C;
  }

  else
  {
    v13 = *(v3 + 2072);
    (*(v3 + 2064))(*(v3 + 1848), *(v3 + 1824));
    OUTLINED_FUNCTION_225_1();
    v12 = sub_27537F474;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_27537FF94()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 2128);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 2136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_239_1();
    v9(*(v3 + 1840), *(v3 + 1824));
    sub_275386E0C(v3 + 432);

    OUTLINED_FUNCTION_225_1();
    v12 = sub_275380E30;
  }

  else
  {
    v13 = *(v3 + 2072);
    (*(v3 + 2064))(*(v3 + 1840), *(v3 + 1824));
    OUTLINED_FUNCTION_225_1();
    v12 = sub_2753800DC;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275380C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();
  v25 = *(v24 + 1992);

  OUTLINED_FUNCTION_26_4(*(v24 + 2056));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();
  v25 = *(v24 + 1992);

  OUTLINED_FUNCTION_26_4(*(v24 + 2120));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_312_0();
  v25 = *(v24 + 1992);

  OUTLINED_FUNCTION_26_4(*(v24 + 2136));

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_313_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_275380F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, char a29)
{
  v29 = *a4;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v29;
  *a9 = a1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = a14;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 201) = a29;
}

uint64_t sub_275381078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **a2;
  v6 = *v4;
  v7 = v4[1];
  v8 = *(a2 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  sub_275380F44(v5, v6, v7, *(a2 + 16), v9, v10, *v11, v11[1], a1, *v12, *(v12 + 8), *v13, *(v13 + 8), **(a2 + 56), **(a2 + 64), *(*(a2 + 64) + 8), **(a2 + 72), *(*(a2 + 72) + 8), **(a2 + 80), *(*(a2 + 80) + 8), **(a2 + 88), *(*(a2 + 88) + 8), **(a2 + 96), *(*(a2 + 96) + 8), **(a2 + 104), *(*(a2 + 104) + 8), **(a2 + 112), *(*(a2 + 112) + 8), **(a2 + 120));
  v14 = *(v2 + 8);

  return v14();
}

void sub_2753811B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2753868E4(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *(a1 + 89);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v9 = *(a1 + 112);
  v8 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  v15 = *(a1 + 160);
  v14 = *(a1 + 168);
  v16 = *(a1 + 176);
  v17 = *(a1 + 184);
  v18 = *(a1 + 192);
  v19 = *(a1 + 200);
  v20 = *(a1 + 201);
  switch(v5)
  {
    case 1:
      if (!v7)
      {
        goto LABEL_52;
      }

      if (!v13)
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_52;
      }

      v44 = v10;
      v45 = v6;

      v37 = sub_2753B74E8();

      if (v37 >= 4 || v17 || v19 || (MusicContent.CloudStatus.init(rawValue:)(&v47), v38 = v47, v47 == 10) || v20 == 2)
      {

        goto LABEL_52;
      }

      v43 = 256;
      if ((v20 & 1) == 0)
      {
        v43 = 0;
      }

      *a2 = v45;
      *(a2 + 8) = v7;
      *(a2 + 16) = v44;
      *(a2 + 24) = v37;
      *(a2 + 32) = v16;
      *(a2 + 40) = v43 | v38;
      *(a2 + 50) = 32;
      *(a2 + 48) = 0;
      return;
    case 2:
      if (!v7 || !v8 || !v13)
      {
        goto LABEL_22;
      }

      v29 = v9;
      v30 = v6;
      v31 = v8;

      v32 = sub_2753B74E8();

      if (v32 <= 3 && v20 != 2)
      {
        LOBYTE(v47) = 1;
        *a2 = v30;
        *(a2 + 8) = v7;
        *(a2 + 16) = v29;
        *(a2 + 24) = v31;
        *(a2 + 32) = v32;
        *(a2 + 40) = 0;
        *(a2 + 48) = 2561;
        *(a2 + 50) = (((v20 & 1) << 16) | 0x400A01u) >> 16;
        return;
      }

LABEL_22:
      sub_275314678();
      sub_2753B62D8();
      sub_2753B62C8();
      LOBYTE(v47) = 1;
      sub_2753B6298();
      goto LABEL_53;
    case 3:
      if (!v7)
      {
        goto LABEL_52;
      }

      if (!v13)
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_52;
      }

      v34 = v10;
      v35 = v6;

      v36 = sub_2753B74E8();

      if (v36 < 3)
      {
        v27 = a2;
        *a2 = v35;
        *(a2 + 8) = v7;
        *(a2 + 16) = v34;
        *(a2 + 24) = v36;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v28 = 96;
        goto LABEL_29;
      }

      goto LABEL_52;
    case 4:
      if (!v7)
      {
        goto LABEL_52;
      }

      if (!v13)
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_52;
      }

      v24 = v10;
      v25 = v6;

      v26 = sub_2753B74E8();

      if (v26 >= 3)
      {

        goto LABEL_52;
      }

      v27 = a2;
      *a2 = v25;
      *(a2 + 8) = v7;
      *(a2 + 16) = v24;
      *(a2 + 24) = v26;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v28 = 0x80;
LABEL_29:
      *(v27 + 50) = v28;
      *(v27 + 48) = 0;
      break;
    case 5:
      if (!v8)
      {
        goto LABEL_22;
      }

      v39 = v9;
      if (v14)
      {
        v47 = v15;
        v48 = v14;
        v40 = v8;
        sub_275329E48();

        v41 = sub_2753B72C8();
      }

      else
      {
        v40 = v8;

        v41 = MEMORY[0x277D84F90];
      }

      *a2 = v39;
      *(a2 + 8) = v40;
      *(a2 + 16) = v41;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 50) = -96;
      *(a2 + 48) = 0;
      return;
    case 6:
      sub_2753B74A8();
      __break(1u);
      JUMPOUT(0x2753819E8);
    default:
      if (!v8 || !v13)
      {
        goto LABEL_52;
      }

      v21 = v9;
      v22 = v8;

      MusicContent.MediaAPIContentType.init(rawValue:)();
      v23 = v47;
      if (v47 == 5)
      {

LABEL_52:
        sub_275314678();
        sub_2753B62D8();
        sub_2753B62C8();
        LOBYTE(v47) = 1;
        sub_2753B6298();
LABEL_53:
        sub_2753B62C8();
        sub_2753868E4(0, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
        sub_275314720();
        swift_allocError();
        sub_2753B62E8();
        swift_willThrow();
      }

      else
      {
        if (v14)
        {
          v47 = v15;
          v48 = v14;
          sub_275329E48();
          v42 = sub_2753B72C8();
        }

        else
        {
          v42 = MEMORY[0x277D84F90];
        }

        *a2 = v21;
        *(a2 + 8) = v22;
        *(a2 + 16) = v23;
        *(a2 + 24) = v42;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 47) = 0;
      }

      break;
  }
}

void sub_275381A04(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  sub_27538685C(0, &qword_2809C2CC8, &qword_2809C1310, MEMORY[0x277D65188]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = 0;
  v32 = *(a1 + 16);
  v33 = a1;
  v8 = a1 + 40;
  v29 = a1 + 40;
  v30 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v8 + 16 * v7); ; i += 2)
  {
    if (v32 == v7)
    {

      return;
    }

    if (v7 >= *(v33 + 16))
    {
      break;
    }

    v11 = *(i - 1);
    v10 = *i;
    v12 = *v31;
    v13 = *(*v31 + 16);

    if (!v13 || (v14 = sub_27538436C(v11, v10, MEMORY[0x277D64FB0], sub_275384B18), (v15 & 1) == 0))
    {
      v21 = MEMORY[0x277D65188];
      sub_2753868E4(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
      sub_275388564(v6, &qword_2809C2CC8, &qword_2809C1310, v21, sub_27538685C);
      v23 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27538821C(0, *(v23 + 16) + 1, 1);
        v23 = v34;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_27538821C(v25 > 1, v26 + 1, 1);
        v23 = v34;
      }

      ++v7;
      *(v23 + 16) = v26 + 1;
      v30 = v23;
      v27 = v23 + 16 * v26;
      *(v27 + 32) = v11;
      *(v27 + 40) = v10;
      v8 = v29;
      goto LABEL_2;
    }

    v16 = v14;
    v17 = *(v12 + 56);
    v18 = MEMORY[0x277D65188];
    sub_2753868E4(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
    v20 = v19;
    (*(*(v19 - 8) + 16))(v6, v17 + *(*(v19 - 8) + 72) * v16, v19);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
    sub_275388564(v6, &qword_2809C2CC8, &qword_2809C1310, v18, sub_27538685C);

    ++v7;
  }

  __break(1u);
}

uint64_t MusicContentStorage.Operations.relateContent(ids:to:as:)()
{
  OUTLINED_FUNCTION_3();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = sub_2753B6608();
  v1[45] = v4;
  OUTLINED_FUNCTION_17_1(v4);
  v1[46] = v5;
  v7 = *(v6 + 64);
  v1[47] = OUTLINED_FUNCTION_187_1();
  v1[48] = swift_task_alloc();
  v8 = sub_2753B65D8();
  v1[49] = v8;
  OUTLINED_FUNCTION_17_1(v8);
  v1[50] = v9;
  v11 = *(v10 + 64);
  v1[51] = OUTLINED_FUNCTION_187_1();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = sub_2753B6288();
  v1[56] = sub_2753B6278();
  v12 = swift_task_alloc();
  v1[57] = v12;
  *v12 = v1;
  v12[1] = sub_275381EC8;
  OUTLINED_FUNCTION_155_2();

  return sub_27537633C();
}

uint64_t sub_275381EC8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v2 = v0;
  OUTLINED_FUNCTION_18_0();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = v6[57];
  v8 = v6[56];
  v9 = v6[55];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  v4[58] = v12;
  v4[59] = v2;

  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v4[60] = v15;
  v4[61] = v16;
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_275382038()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v23 = *(v0 + 384);
  v6 = *(v0 + 344);
  OUTLINED_FUNCTION_45_4(*(v0 + 352));
  sub_2753B65C8();
  OUTLINED_FUNCTION_274_0();
  v7 = MEMORY[0x277D65050];
  *(v0 + 40) = MEMORY[0x277D83B88];
  *(v0 + 48) = v7;
  *(v0 + 16) = v1;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  v8 = sub_2753B6A08();
  v9 = MEMORY[0x277D65000];
  *(v0 + 80) = MEMORY[0x277D837D0];
  *(v0 + 88) = v9;
  *(v0 + 56) = v8;
  *(v0 + 64) = v10;
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v11 = *(v4 + 32);
  *(v0 + 496) = v11;
  *(v0 + 504) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v2, v3, v5);
  sub_2753B65F8();
  v12 = *(MEMORY[0x277D64F88] + 4);
  v13 = swift_task_alloc();
  *(v0 + 512) = v13;
  *v13 = v0;
  v13[1] = sub_2753821E0;
  OUTLINED_FUNCTION_86_1(*(v0 + 384));
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC218](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_2753821E0()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = v0[64];
  v5 = v0[48];
  v6 = v0[46];
  v7 = v0[45];
  *v3 = *v2;
  v0[65] = v1;

  v0[66] = *(v6 + 8);
  v0[67] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_107_0();
  v9(v8);
  OUTLINED_FUNCTION_303_0();
  v11 = *(v10 + 488);
  v12 = v0[60];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_275382368()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[42];
  v2 = *(v1 + 16);
  v0[68] = v2;
  v0[69] = 0;
  v3 = v0[52];
  if (v2)
  {
    v4 = v0[58];
    OUTLINED_FUNCTION_318_0(v0[44], v1);
    OUTLINED_FUNCTION_267_0();
    sub_2753B65C8();
    sub_2753B65B8();
    OUTLINED_FUNCTION_317_0(MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_34_4("\n    WHERE parent_pk = ");
    v5 = swift_task_alloc();
    v0[74] = v5;
    *v5 = v0;
    v5[1] = sub_2753824E0;
    v6 = v0[44];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_217();

    return sub_27537633C();
  }

  else
  {
    v9 = v0[56];
    v11 = v0[53];
    v10 = v0[54];
    v12 = v0[51];
    v14 = v0[47];
    v13 = v0[48];

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_217();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_2753824E0()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[74];
  *v6 = *v1;
  v5[75] = v0;

  v8 = v4[70];

  if (!v0)
  {
    v5[76] = v3;
  }

  v9 = v5[60];
  v10 = v5[61];
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275382610()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_180_1();
  v1 = v0[76];
  v2 = v0[69];
  v35 = v0[62];
  v36 = v0[63];
  v3 = v0[51];
  v4 = v0[52];
  v33 = v0[49];
  v34 = v0[47];
  v5 = MEMORY[0x277D65050];
  v6 = v0[43];
  v0[25] = MEMORY[0x277D83B88];
  v0[26] = v5;
  v0[22] = v1;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 22);
  v7 = sub_2753B69E8();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  v11 = OUTLINED_FUNCTION_7_4();
  sub_275388174(v11, v12, v10, v13);
  v0[30] = v14;
  v0[31] = sub_27537D288();
  v0[27] = v7;
  v0[28] = v9;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 27);
  v0[35] = MEMORY[0x277D83B88];
  v0[36] = v5;
  v0[32] = v2;
  sub_2753B6588();
  OUTLINED_FUNCTION_34_4(v0 + 32);
  v15 = sub_2753B6A08();
  v16 = MEMORY[0x277D65000];
  v0[40] = v10;
  v0[41] = v16;
  v0[37] = v15;
  v0[38] = v17;
  sub_2753B6588();
  OUTLINED_FUNCTION_60_1(v0 + 37);
  v18 = OUTLINED_FUNCTION_53();
  v35(v18);
  sub_2753B65F8();
  v19 = *(MEMORY[0x277D64F88] + 4);
  v20 = swift_task_alloc();
  v0[77] = v20;
  *v20 = v0;
  v20[1] = sub_2753827C8;
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  OUTLINED_FUNCTION_86_1(v0[47]);
  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821CC218](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_2753827C8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 616);
  *v4 = *v2;
  *(v3 + 624) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 536);
  (*(v1 + 528))(*(v1 + 376), *(v1 + 360));
  OUTLINED_FUNCTION_145_0();
  v9 = *(v8 + 488);
  v10 = *(v1 + 480);
  if (v0)
  {
    v11 = sub_275382C9C;
  }

  else
  {
    v11 = sub_275382940;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_275382940()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[69] + 1;
  v0[69] = v1;
  if (v1 == v0[68])
  {
    v2 = v0[56];
    v3 = v0[53];
    v4 = v0[54];
    v6 = v0[51];
    v5 = v0[52];
    v8 = v0[47];
    v7 = v0[48];

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_217();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v18 = v0[58];
    v19 = v0[52];
    OUTLINED_FUNCTION_318_0(v0[44], v0[42] + 16 * v1);
    OUTLINED_FUNCTION_267_0();
    sub_2753B65C8();
    sub_2753B65B8();
    OUTLINED_FUNCTION_317_0(MEMORY[0x277D83B88]);
    OUTLINED_FUNCTION_34_4("\n    WHERE parent_pk = ");
    v20 = swift_task_alloc();
    v0[74] = v20;
    *v20 = v0;
    v20[1] = sub_2753824E0;
    v21 = v0[44];
    OUTLINED_FUNCTION_90_3();
    OUTLINED_FUNCTION_217();

    return sub_27537633C();
  }
}

uint64_t sub_275382ACC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 448);

  v2 = *(v0 + 472);
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_275382B5C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 448);

  v2 = *(v0 + 520);
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_275382BEC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];

  v5 = OUTLINED_FUNCTION_36_3();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v7 = v0[75];
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_275382C9C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[56];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[78];
  OUTLINED_FUNCTION_224_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t MusicContentStorage.Operations.hasRelatedContent(for:as:)()
{
  OUTLINED_FUNCTION_14_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_2753B65D8();
  v1[28] = v5;
  OUTLINED_FUNCTION_17_1(v5);
  v1[29] = v6;
  v8 = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_187_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_2753B6608();
  v1[33] = v9;
  OUTLINED_FUNCTION_17_1(v9);
  v1[34] = v10;
  v12 = *(v11 + 64);
  v1[35] = OUTLINED_FUNCTION_187_1();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_2753B6288();
  v1[38] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v13, 255, v14);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_98_2();
  v1[39] = v15;
  v1[40] = v16;
  v17 = OUTLINED_FUNCTION_101_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_275382EA4()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v4 = *(v0 + 296);
  v5 = *(v0 + 208);
  OUTLINED_FUNCTION_67();
  sub_2753B65E8();
  sub_2753B69E8();
  if (v6)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_85_0();
    sub_2753B65B8();
    v7 = MEMORY[0x277D837D0];
    *(v0 + 136) = v2;
    v8 = MEMORY[0x277D65000];
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    *(v0 + 144) = v1;
    sub_2753B6588();
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    OUTLINED_FUNCTION_67();
    sub_2753B65B8();
    sub_2753B65F8();
    v9 = *(v3 + 8);
    v10 = OUTLINED_FUNCTION_53();
    v11(v10);
    v12 = *(v3 + 32);
    v13 = OUTLINED_FUNCTION_129_0();
    v14(v13);
  }

  v15 = *(v0 + 248);
  sub_27537D100(*(v0 + 216), v0 + 16);
  *(v0 + 344) = OUTLINED_FUNCTION_150_2((v0 + 328));
  sub_2753B65C8();
  sub_2753B65B8();
  v16 = swift_task_alloc();
  *(v0 + 352) = v16;
  *v16 = v0;
  v16[1] = sub_275383034;
  v17 = *(v0 + 216);
  v18 = *(v0 + 200);
  OUTLINED_FUNCTION_86_1(*(v0 + 192));
  OUTLINED_FUNCTION_100_0();

  return sub_27537633C();
}

uint64_t sub_275383034()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_3();
  v4 = v3;
  OUTLINED_FUNCTION_13_2();
  *v5 = v4;
  v7 = *(v6 + 352);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  v4[45] = v0;

  if (v0)
  {
    v10 = v4[39];
    v11 = v4[40];
    v12 = sub_275383540;
  }

  else
  {
    v4[46] = v1;
    v10 = v4[39];
    v11 = v4[40];
    v12 = sub_275383140;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_275383140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_255(v15);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_63_3();
  sub_2753B65B8();
  v16 = sub_2753B6A18();
  v12[15] = v16;
  OUTLINED_FUNCTION_141_1();
  v12[16] = sub_2753870A8(v17, 255, v18);
  __swift_allocate_boxed_opaque_existential_1(v12 + 12);
  OUTLINED_FUNCTION_18(v16);
  v20 = *(v19 + 16);
  OUTLINED_FUNCTION_182_0();
  v21();
  sub_2753B6588();
  __swift_destroy_boxed_opaque_existential_1(v12 + 12);
  OUTLINED_FUNCTION_85_0();
  sub_2753B65B8();
  sub_2753B6598();
  OUTLINED_FUNCTION_67();
  sub_2753B65B8();
  v22 = *(v14 + 32);
  v23 = OUTLINED_FUNCTION_76();
  v24(v23);
  sub_2753B65F8();
  v25 = *(MEMORY[0x277D64F98] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v12[22] = MEMORY[0x277D839B0];
  v26 = MEMORY[0x277D65048];
  v12[47] = v27;
  v12[23] = v26;
  *v27 = v28;
  v27[1] = sub_27538331C;
  v29 = v12[43];
  v30 = v12[41];
  v31 = v12[35];
  v42 = v12[42];
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_186_1();

  return MEMORY[0x2821CC228](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_27538331C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_299_0();
  OUTLINED_FUNCTION_2();
  *v3 = v0;
  v4 = v0[47];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  *v3 = *v2;
  v0[48] = v1;

  v0[49] = *(v6 + 8);
  v0[50] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_107_0();
  v9(v8);
  OUTLINED_FUNCTION_303_0();
  v11 = *(v10 + 320);
  v12 = v0[39];
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2753834A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v14 = *(v12 + 392);
  v13 = *(v12 + 400);
  OUTLINED_FUNCTION_323_0();
  v15 = OUTLINED_FUNCTION_306();
  v14(v15);
  v16 = *(v12 + 408);
  OUTLINED_FUNCTION_191_0();

  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_100_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_275383540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_322_0();
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_90_0();
  v15(v14);
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_96_0();
  v18(v17);
  v19 = *(v10 + 360);
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_111_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_2753835F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v12 = v10[49];
  v11 = v10[50];
  v14 = v10[37];
  v13 = v10[38];
  v15 = v10[33];

  v16 = OUTLINED_FUNCTION_96_0();
  v12(v16);
  v17 = v10[48];
  OUTLINED_FUNCTION_91_3();

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_111_0();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_275383694(uint64_t a1, _BYTE **a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = **a2;
  sub_2753B6288();
  *(v2 + 24) = sub_2753B6278();
  sub_2753870A8(&qword_2809C0748, 255, MEMORY[0x277D64EF0]);
  v4 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27538376C, v4, v3);
}

uint64_t sub_27538376C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *v3 = v1;
  OUTLINED_FUNCTION_35_0();

  return v4();
}

uint64_t MusicContentStorage.Operations.removeContent(id:removeRelationships:)()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_3_6();
  sub_2753870A8(v0, 255, v1);
  OUTLINED_FUNCTION_102_0();
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275383870, v3, v2);
}

uint64_t sub_2753838EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275383984;

  return MusicContentStorage.Operations.firstContentID(matching:in:)();
}

uint64_t sub_275383984()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v4 = v3;
  OUTLINED_FUNCTION_65_3();
  v6 = v5;
  OUTLINED_FUNCTION_13_2();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *v2;
  OUTLINED_FUNCTION_2();
  *v11 = v10;

  if (!v0)
  {
    v12 = *(v6 + 16);
    *v12 = v1;
    v12[1] = v4;
  }

  v13 = *(v10 + 8);
  OUTLINED_FUNCTION_195();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_275383A7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.validateContent(id:)();
}

uint64_t sub_275383B1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.registerContent(_:in:)();
}

uint64_t sub_275383BC8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.registration(for:followRedirect:)();
}

uint64_t sub_275383C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2753886CC;

  return MusicContentStorage.Operations.registrations(for:followRedirect:)();
}

uint64_t sub_275383D1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return MusicContentStorage.Operations.relateContent(ids:to:as:)();
}

uint64_t sub_275383DD4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275383E7C;

  return MusicContentStorage.Operations.hasRelatedContent(for:as:)();
}

uint64_t sub_275383E7C()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_105_3();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}