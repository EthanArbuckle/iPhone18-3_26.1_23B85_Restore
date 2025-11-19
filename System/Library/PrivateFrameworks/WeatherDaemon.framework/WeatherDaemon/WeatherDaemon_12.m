uint64_t sub_1B6134520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = swift_task_alloc();
  *(v26 + 16) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  *v29 = v26;
  v29[1] = sub_1B60D7AB4;
  v35 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v30, v31, v35, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B6134608(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_598(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  v2 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x1EEE6DA18](v2);
}

uint64_t sub_1B6134660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F50);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613470C, 0, 0);
}

uint64_t sub_1B613470C()
{
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_170();
  v1 = OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_432(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_0(v3);
  OUTLINED_FUNCTION_682();

  return sub_1B613160C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B61347A8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61348BC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_666();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F48);
  OUTLINED_FUNCTION_468(&qword_1EB925F50, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6134950()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61349AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;
  *(v8 + 120) = v11;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6134A68, 0, 0);
}

uint64_t sub_1B6134A68()
{
  v1 = *(v0 + 64);
  v2 = sub_1B605C024(v1);
  v4 = v3;
  if (v1 || (v5 = *(v0 + 72), (*v5 & 1) == 0))
  {
    sub_1B6038910();
    OUTLINED_FUNCTION_565();
    *(v0 + 184) = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 192) = v28;
    *v28 = v29;
    v28[1] = sub_1B61350BC;
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_607();

    return sub_1B61319B4(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v58 = *(v0 + 120);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A40);
    v11 = OUTLINED_FUNCTION_581();
    *(v11 + 16) = xmmword_1B6225510;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = v8;
    v54 = v0;
    *(v12 + 40) = *(v0 + 104);
    *(v12 + 56) = v58;
    *(v12 + 64) = v6;
    *(v12 + 72) = v7;
    *(v12 + 80) = v2;
    *(v12 + 88) = v4 & 1;
    *(v12 + 96) = 0;
    *(v11 + 32) = &unk_1B622D2C0;
    *(v11 + 40) = v12;
    v13 = v11;
    v14 = *(v5 + 8);
    v53 = *(v14 + 16);
    if (v53)
    {
      v51 = v4;
      v52 = v2;
      sub_1B6220784();
      OUTLINED_FUNCTION_543();

      sub_1B6220784();
      v15 = 0;
      v16 = (v14 + 40);
      do
      {
        v17 = *(v54 + 120);
        v56 = *(v54 + 128);
        v57 = *(v54 + 136);
        v19 = *(v54 + 88);
        v18 = *(v54 + 96);
        v20 = *(v54 + 80);
        v21 = *(v16 - 1);
        v55 = *v16;
        v59 = *(v54 + 104);
        sub_1B602D048(*(v54 + 144), v54 + 16);
        v22 = swift_allocObject();
        sub_1B60273A4((v54 + 16), v22 + 16);
        *(v22 + 56) = v20;
        *(v22 + 64) = v19;
        *(v22 + 72) = v18;
        *(v22 + 80) = v59;
        *(v22 + 96) = v17;
        *(v22 + 104) = v56;
        *(v22 + 112) = v57;
        *(v22 + 120) = 0;
        *(v22 + 128) = v15;
        *(v22 + 136) = v21;
        *(v22 + 144) = v55;
        *(v22 + 152) = v52;
        *(v22 + 160) = v51 & 1;
        v23 = *(v13 + 16);
        v24 = *(v13 + 24);
        sub_1B6220784();
        sub_1B6220784();

        sub_1B6220784();
        if (v23 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_636();
          sub_1B609C384();
          v13 = v26;
        }

        ++v15;
        v16 += 2;
        *(v13 + 16) = v23 + 1;
        v25 = v13 + 16 * v23;
        *(v25 + 32) = &unk_1B622D2D0;
        *(v25 + 40) = v22;
      }

      while (v53 != v15);
      v0 = v54;
      v40 = *(v54 + 128);
      v7 = *(v54 + 136);
    }

    else
    {
      sub_1B6220784();
      OUTLINED_FUNCTION_543();

      sub_1B6220784();
      v40 = v6;
    }

    v41 = *(v0 + 144);
    v42 = v41[3];
    v43 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v42);
    OUTLINED_FUNCTION_90();
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    *(v44 + 24) = v7;
    sub_1B6220784();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0);
    v46 = OUTLINED_FUNCTION_253();
    *(v0 + 160) = sub_1B6061450(v46, v47, v44, v42, v45, v43);

    v48 = swift_task_alloc();
    *(v0 + 168) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    OUTLINED_FUNCTION_320();
    *v48 = v49;
    v48[1] = sub_1B6134F00;
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_607();

    return MEMORY[0x1EEE6DA10]();
  }
}

uint64_t sub_1B6134F00()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6134FF8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6135058()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61350BC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B61351D4()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0);
  OUTLINED_FUNCTION_468(&qword_1EB925FB8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613526C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61352C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[53] = v11;
  v8[50] = a6;
  v8[51] = a7;
  v8[48] = a4;
  v8[49] = a5;
  v8[46] = a2;
  v8[47] = a3;
  v8[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD8);
  v8[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613537C, 0, 0);
}

uint64_t sub_1B613537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_299();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_322();
  a28 = v30;
  v34 = *(v30 + 368);
  v33 = *(v30 + 376);
  v35 = v33[1];
  a15 = *v33;
  a16 = v35;
  v36 = v33[3];
  a17 = v33[2];
  a18 = v36;
  v128 = sub_1B605C024(v34);
  HIDWORD(a11) = v37;
  if (v34 || (v38 = *(v30 + 376), (*v38 & 1) == 0))
  {
    sub_1B6038910();
    OUTLINED_FUNCTION_519();
    *(v30 + 464) = v65;
    v66 = OUTLINED_FUNCTION_629();
    *(v30 + 16) = v68;
    *(v30 + 32) = v67;
    *(v30 + 48) = v66;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v69 = *(v30 + 384);
    v70 = sub_1B6220B34();
    OUTLINED_FUNCTION_601(v70, qword_1EDAC2AB0);
    sub_1B605B798(v69, v30 + 64);
    sub_1B6220784();
    v71 = sub_1B6220B14();
    sub_1B62217F4();
    OUTLINED_FUNCTION_697();
    v72 = OUTLINED_FUNCTION_552();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v30 + 384);
    if (v74)
    {
      OUTLINED_FUNCTION_110();
      v76 = swift_slowAlloc();
      OUTLINED_FUNCTION_233();
      *&a15 = swift_slowAlloc();
      *v76 = 136446467;
      v77 = OUTLINED_FUNCTION_232();
      v80 = sub_1B602EEB0(v77, v78, v79);
      OUTLINED_FUNCTION_405(v80);
      v82 = v75[1];
      v81 = v75[2];
      *(v30 + 112) = *v75;
      *(v30 + 128) = v82;
      *(v30 + 144) = v81;
      v83 = sub_1B6221234();
      v85 = sub_1B602EEB0(v83, v84, &a15);

      *(v76 + 14) = v85;
      OUTLINED_FUNCTION_254();
      _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
      OUTLINED_FUNCTION_454();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      v91 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v91);
    }

    else
    {
      sub_1B605C4AC(*(v30 + 384));
    }

    *(v30 + 344) = *(v30 + 368);
    *(v30 + 352) = 0;
    OUTLINED_FUNCTION_1_30();
    v129 = v92;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v30 + 472) = v93;
    *v93 = v94;
    v93[1] = sub_1B6135AD0;
    OUTLINED_FUNCTION_252();

    return v103(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, v128, a13, v129, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1), a19, a20, a21, a22);
  }

  else
  {
    v40 = *(v30 + 408);
    v39 = *(v30 + 416);
    v42 = *(v30 + 392);
    v41 = *(v30 + 400);
    v43 = *(v30 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A48);
    v44 = OUTLINED_FUNCTION_581();
    *(v44 + 16) = xmmword_1B6225510;
    OUTLINED_FUNCTION_633();
    v45 = swift_allocObject();
    v46 = OUTLINED_FUNCTION_632(v45, v43[2], v43[1], *v43);
    v46[4].n128_u64[0] = v42;
    v46[4].n128_u64[1] = v41;
    v46[5].n128_u64[0] = v40;
    v46[5].n128_u64[1] = v39;
    v46[6].n128_u64[0] = v128;
    OUTLINED_FUNCTION_553();
    *(v47 + 104) = v48;
    *(v47 + 112) = 0;
    *(v44 + 32) = &unk_1B622D3A8;
    *(v44 + 40) = v47;
    v49 = *(v38 + 8);
    v127 = v49[2];
    if (v127)
    {
      sub_1B605B798(v43, v30 + 160);

      sub_1B6220784();
      v50 = 0;
      v49 += 5;
      do
      {
        a14 = v44;
        v51 = *(v30 + 416);
        v53 = *(v30 + 400);
        v52 = *(v30 + 408);
        v54 = *(v30 + 384);
        v55 = *(v30 + 392);
        v56 = *(v49 - 1);
        a13 = *v49;
        sub_1B602D048(*(v30 + 424), v30 + 304);
        v57 = v54[1];
        a15 = *v54;
        a16 = v57;
        a17 = v54[2];
        OUTLINED_FUNCTION_631();
        v58 = swift_allocObject();
        sub_1B60273A4((v30 + 304), v58 + 16);
        v59 = a16;
        *(v58 + 56) = a15;
        *(v58 + 72) = v59;
        *(v58 + 88) = a17;
        *(v58 + 104) = v55;
        *(v58 + 112) = v53;
        *(v58 + 120) = v52;
        *(v58 + 128) = v51;
        *(v58 + 136) = 0;
        *(v58 + 144) = v50;
        *(v58 + 152) = v56;
        v44 = a14;
        *(v58 + 160) = a13;
        *(v58 + 168) = v128;
        OUTLINED_FUNCTION_553();
        *(v58 + 176) = v60;
        sub_1B605B798(v54, v30 + 208);
        v61 = *(a14 + 16);
        v62 = *(a14 + 24);

        sub_1B6220784();
        if (v61 >= v62 >> 1)
        {
          OUTLINED_FUNCTION_387();
          sub_1B609C8A4();
          v44 = v64;
        }

        ++v50;
        v49 += 2;
        *(v44 + 16) = v61 + 1;
        v63 = v44 + 16 * v61;
        *(v63 + 32) = &unk_1B622D3B8;
        *(v63 + 40) = v58;
      }

      while (v127 != v50);
    }

    else
    {
      sub_1B605B798(v43, v30 + 256);

      sub_1B6220784();
    }

    OUTLINED_FUNCTION_381(*(v30 + 424));
    OUTLINED_FUNCTION_90();
    v106 = swift_allocObject();
    OUTLINED_FUNCTION_604(v106);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0);
    v107 = OUTLINED_FUNCTION_253();
    *(v30 + 440) = OUTLINED_FUNCTION_179(v107, v108);

    if (v49)
    {

      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_252();

      return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, v127, a11, v128, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1), a19, a20, a21, a22);
    }

    else
    {
      v117 = swift_task_alloc();
      *(v30 + 448) = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
      OUTLINED_FUNCTION_320();
      *v117 = v118;
      v117[1] = sub_1B6135914;
      OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_252();

      return MEMORY[0x1EEE6DA10](v119, v120, v121, v122, v123, v124, v125, v126, a9, v127, a11, v128, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1), a19, a20, a21, a22);
    }
  }
}

uint64_t sub_1B6135914()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6135A0C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6135A6C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6135AD0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 480) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6135BC8()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0);
  OUTLINED_FUNCTION_468(&qword_1EB925FD8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6135C68()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6135CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a8;
  v8[39] = v11;
  v8[36] = a6;
  v8[37] = a7;
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98);
  v8[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6135D80, 0, 0);
}

uint64_t sub_1B6135D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(v26 + 256);
  v28 = sub_1B605C024(v27);
  v30 = v29;
  if (v27 || (v31 = *(v26 + 264), (*v31 & 1) == 0))
  {
    sub_1B6038910();
    OUTLINED_FUNCTION_565();
    *(v26 + 352) = v57;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v26 + 360) = v58;
    *v58 = v59;
    v58[1] = sub_1B61363B4;
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_606();

    return sub_1B6131D94(v60, v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    v32 = *(v26 + 296);
    v33 = *(v26 + 304);
    v35 = *(v26 + 280);
    v34 = *(v26 + 288);
    v36 = *(v26 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A30);
    v37 = OUTLINED_FUNCTION_581();
    *(v37 + 16) = xmmword_1B6225510;
    *(v26 + 56) = *v36;
    *(v26 + 72) = v36[1];
    *(v26 + 88) = v36[2];
    OUTLINED_FUNCTION_633();
    swift_allocObject();
    v38 = OUTLINED_FUNCTION_649();
    v42 = OUTLINED_FUNCTION_632(v39, v38, v40, v41);
    v42[4].n128_u64[0] = v35;
    v42[4].n128_u64[1] = v34;
    v42[5].n128_u64[0] = v32;
    v42[5].n128_u64[1] = v33;
    v42[6].n128_u64[0] = v28;
    v42[6].n128_u8[8] = v30 & 1;
    v42[7].n128_u64[0] = 0;
    *(v37 + 32) = &unk_1B622D1C8;
    *(v37 + 40) = v42;
    v43 = *(v31 + 8);
    v87 = *(v43 + 16);
    if (v87)
    {
      v85 = v30;
      v86 = v28;
      sub_1B6153380(v26 + 56, v26 + 104);
      sub_1B6153380(v26 + 72, v26 + 120);
      sub_1B6153380(v26 + 88, v26 + 136);

      sub_1B6220784();
      v33 = 0;
      v44 = (v43 + 40);
      do
      {
        v88 = v37;
        v45 = *(v26 + 304);
        v47 = *(v26 + 288);
        v46 = *(v26 + 296);
        v48 = *(v26 + 272);
        v49 = *(v26 + 280);
        v51 = *(v44 - 1);
        v50 = *v44;
        sub_1B602D048(*(v26 + 312), v26 + 16);
        v89 = *v48;
        v90 = v48[1];
        v91 = v48[2];
        OUTLINED_FUNCTION_631();
        v52 = swift_allocObject();
        OUTLINED_FUNCTION_455(v52);
        *(v48 + 56) = v89;
        *(v48 + 72) = v90;
        *(v48 + 88) = v91;
        *(v48 + 13) = v49;
        *(v48 + 14) = v47;
        *(v48 + 15) = v46;
        *(v48 + 16) = v45;
        *(v48 + 17) = 0;
        *(v48 + 18) = v33;
        *(v48 + 19) = v51;
        *(v48 + 20) = v50;
        v37 = v88;
        *(v48 + 21) = v86;
        *(v48 + 176) = v85 & 1;
        sub_1B6153380(v26 + 56, v26 + 152);
        sub_1B6153380(v26 + 72, v26 + 168);
        sub_1B6153380(v26 + 88, v26 + 184);
        v53 = *(v88 + 16);
        v54 = *(v88 + 24);

        sub_1B6220784();
        if (v53 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_387();
          sub_1B609C8B8();
          v37 = v56;
        }

        ++v33;
        v44 += 2;
        *(v37 + 16) = v53 + 1;
        v55 = v37 + 16 * v53;
        *(v55 + 32) = &unk_1B622D1D8;
        *(v55 + 40) = v48;
      }

      while (v87 != v33);
    }

    else
    {
      sub_1B6153380(v26 + 56, v26 + 200);
      sub_1B6153380(v26 + 72, v26 + 216);
      sub_1B6153380(v26 + 88, v26 + 232);

      sub_1B6220784();
    }

    OUTLINED_FUNCTION_381(*(v26 + 312));
    OUTLINED_FUNCTION_90();
    v70 = swift_allocObject();
    OUTLINED_FUNCTION_604(v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90);
    v71 = OUTLINED_FUNCTION_253();
    *(v26 + 328) = OUTLINED_FUNCTION_179(v71, v72);

    if (v33)
    {

      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_606();

      return v73();
    }

    else
    {
      v75 = swift_task_alloc();
      *(v26 + 336) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
      OUTLINED_FUNCTION_320();
      *v75 = v76;
      v75[1] = sub_1B61361F8;
      OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_606();

      return MEMORY[0x1EEE6DA10](v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }
  }
}

uint64_t sub_1B61361F8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61362F0()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6136350()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61363B4()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B61364CC()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90);
  OUTLINED_FUNCTION_468(&qword_1EB925F98, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6136564()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61365C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F78);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613666C, 0, 0);
}

uint64_t sub_1B613666C()
{
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_170();
  v1 = OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_432(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_0(v3);
  OUTLINED_FUNCTION_682();

  return sub_1B61321A8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B6136708()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613681C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_666();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F68);
  OUTLINED_FUNCTION_468(&qword_1EB925F78, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B61368B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F30);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613695C, 0, 0);
}

uint64_t sub_1B613695C()
{
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_170();
  v1 = OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_432(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_0(v3);
  OUTLINED_FUNCTION_682();

  return sub_1B6132524(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B61369F8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6136B0C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_666();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F28);
  OUTLINED_FUNCTION_468(&qword_1EB925F30, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6136BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F18);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6136C4C, 0, 0);
}

uint64_t sub_1B6136C4C()
{
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_170();
  v1 = OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_432(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_0(v3);
  OUTLINED_FUNCTION_682();

  return sub_1B61327A8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B6136CE8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6136DFC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_666();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F10);
  OUTLINED_FUNCTION_468(&qword_1EB925F18, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6136E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v11;
  v8[22] = v12;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00);
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6136F44, 0, 0);
}

uint64_t sub_1B6136F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v100 = v26;
  v27 = *(v26 + 112);
  OUTLINED_FUNCTION_556(*(v26 + 120));
  v96 = sub_1B605C024(v27);
  if (v27 || (v28 = *(v26 + 120), (*v28 & 1) == 0))
  {
    v51 = *(v26 + 136);
    v52 = *(v26 + 128);
    sub_1B6038910();
    OUTLINED_FUNCTION_565();
    *(v26 + 216) = v53;
    *(v26 + 56) = v52;
    *(v26 + 64) = v51;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v54 = sub_1B6220B34();
    OUTLINED_FUNCTION_601(v54, qword_1EDAC2AB0);
    sub_1B6220784();
    sub_1B6220784();
    v55 = sub_1B6220B14();
    sub_1B62217F4();
    OUTLINED_FUNCTION_697();
    v56 = OUTLINED_FUNCTION_552();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v26 + 136);
    if (v58)
    {
      v60 = *(v26 + 128);
      OUTLINED_FUNCTION_110();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_233();
      v99[0] = swift_slowAlloc();
      *v61 = 136446467;
      v62 = OUTLINED_FUNCTION_398();
      v65 = sub_1B602EEB0(v62, v63, v64);
      OUTLINED_FUNCTION_405(v65);
      *(v26 + 72) = v60;
      *(v26 + 80) = v59;
      v66 = sub_1B6221234();
      v68 = sub_1B602EEB0(v66, v67, v99);

      *(v61 + 14) = v68;
      OUTLINED_FUNCTION_254();
      _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
      OUTLINED_FUNCTION_454();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      v74 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v74);
    }

    else
    {
    }

    *(v26 + 88) = *(v26 + 112);
    *(v26 + 96) = 0;
    OUTLINED_FUNCTION_1_30();
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v26 + 224) = v75;
    *v75 = v76;
    v75[1] = sub_1B61376A0;
    OUTLINED_FUNCTION_542();

    __asm { BRAA            X8, X16 }
  }

  v29 = *(v26 + 160);
  v30 = *(v26 + 168);
  v31 = *(v26 + 152);
  v32 = *(v26 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924958);
  v33 = OUTLINED_FUNCTION_581();
  *(v33 + 16) = xmmword_1B6225510;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = *(v26 + 136);
  *(v34 + 40) = v31;
  *(v34 + 48) = v29;
  *(v34 + 56) = v30;
  *(v34 + 64) = v96;
  OUTLINED_FUNCTION_553();
  *(v35 + 72) = v36;
  *(v35 + 80) = 0;
  *(v33 + 32) = &unk_1B622CE98;
  *(v33 + 40) = v35;
  v37 = *(v28 + 8);
  v95 = v37[2];
  if (v95)
  {
    sub_1B6220784();

    sub_1B6220784();
    v38 = 0;
    v37 += 5;
    do
    {
      v98 = v33;
      v39 = *(v26 + 168);
      v41 = *(v26 + 152);
      v40 = *(v26 + 160);
      v42 = *(v26 + 128);
      v44 = *(v37 - 1);
      v43 = *v37;
      v97 = *(v26 + 136);
      sub_1B602D048(*(v26 + 176), v26 + 16);
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_455(v45);
      *(v31 + 56) = v42;
      *(v31 + 64) = v97;
      *(v31 + 80) = v41;
      *(v31 + 88) = v40;
      *(v31 + 96) = v39;
      *(v31 + 104) = 0;
      *(v31 + 112) = v38;
      *(v31 + 120) = v44;
      *(v31 + 128) = v43;
      v33 = v98;
      *(v31 + 136) = v96;
      OUTLINED_FUNCTION_553();
      *(v31 + 144) = v46;
      v47 = *(v98 + 16);
      v48 = *(v98 + 24);
      sub_1B6220784();

      sub_1B6220784();
      if (v47 >= v48 >> 1)
      {
        sub_1B609CA84();
        v33 = v50;
      }

      ++v38;
      v37 += 2;
      *(v33 + 16) = v47 + 1;
      v49 = v33 + 16 * v47;
      *(v49 + 32) = &unk_1B622CEA8;
      *(v49 + 40) = v31;
    }

    while (v95 != v38);
  }

  else
  {
    sub_1B6220784();

    sub_1B6220784();
  }

  OUTLINED_FUNCTION_381(*(v26 + 176));
  OUTLINED_FUNCTION_90();
  v79 = swift_allocObject();
  OUTLINED_FUNCTION_604(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EF8);
  v80 = OUTLINED_FUNCTION_253();
  *(v26 + 192) = OUTLINED_FUNCTION_179(v80, v81);

  if (v37)
  {

    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_542();

    __asm { BRAA            X1, X16 }
  }

  v84 = swift_task_alloc();
  *(v26 + 200) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  OUTLINED_FUNCTION_320();
  *v84 = v85;
  v84[1] = sub_1B61374E4;
  OUTLINED_FUNCTION_259();
  OUTLINED_FUNCTION_542();

  return MEMORY[0x1EEE6DA10](v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B61374E4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61375DC()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B613763C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61376A0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6137798()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EF8);
  OUTLINED_FUNCTION_468(&qword_1EB925F00, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6137838()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  v8[18] = swift_task_alloc();
  v9 = type metadata accessor for WeatherRequest();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61379CC, 0, 0);
}

uint64_t sub_1B6137F5C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6138054()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  v8[18] = swift_task_alloc();
  v9 = type metadata accessor for WeatherRequest();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613827C, 0, 0);
}

uint64_t sub_1B613880C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6138904()
{
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B613898C()
{
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6138A18()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6138B10()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E60);
  OUTLINED_FUNCTION_468(&qword_1EB925E68, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6138BD0()
{
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6138C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 120) = v11;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6138D18, 0, 0);
}

uint64_t sub_1B6138D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_556(*(v26 + 72));
  v28 = sub_1B605C024(v27);
  v30 = v29;
  if (v27 || (v31 = *(v26 + 72), (*v31 & 1) == 0))
  {
    sub_1B6038910();
    OUTLINED_FUNCTION_519();
    *(v26 + 176) = v55;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v26 + 184) = v56;
    *v56 = v57;
    v56[1] = sub_1B6139334;
    OUTLINED_FUNCTION_542();

    return sub_1B6132A2C(v58, v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    v33 = *(v26 + 120);
    v32 = *(v26 + 128);
    v34 = *(v26 + 112);
    v35 = *(v26 + 80);
    v36 = *(v26 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924938);
    v37 = v30;
    v38 = OUTLINED_FUNCTION_581();
    *(v38 + 16) = xmmword_1B6225510;
    OUTLINED_FUNCTION_268();
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    *(v39 + 24) = v36;
    v85 = v26;
    *(v39 + 32) = *(v26 + 96);
    *(v39 + 48) = v34;
    *(v39 + 56) = v33;
    *(v39 + 64) = v32;
    *(v39 + 72) = v28;
    *(v39 + 80) = v37 & 1;
    *(v39 + 88) = 0;
    *(v38 + 32) = &unk_1B622CDB0;
    *(v38 + 40) = v39;
    v40 = v38;
    v41 = *(v31 + 8);
    v84 = *(v41 + 16);
    if (v84)
    {
      v83 = v28;
      sub_1B6220784();
      OUTLINED_FUNCTION_543();

      sub_1B6220784();
      v42 = 0;
      v43 = (v41 + 40);
      do
      {
        v44 = *(v85 + 128);
        v45 = *(v85 + 112);
        v46 = *(v85 + 80);
        v47 = *(v85 + 88);
        v48 = *v43;
        v86 = *(v43 - 1);
        v87 = *(v85 + 120);
        v88 = *(v85 + 96);
        sub_1B602D048(*(v85 + 136), v85 + 16);
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_455(v49);
        *(v34 + 56) = v46;
        *(v34 + 64) = v47;
        *(v34 + 72) = v88;
        *(v34 + 88) = v45;
        *(v34 + 96) = v87;
        *(v34 + 104) = v44;
        *(v34 + 112) = 0;
        *(v34 + 120) = v42;
        *(v34 + 128) = v86;
        *(v34 + 136) = v48;
        *(v34 + 144) = v83;
        OUTLINED_FUNCTION_553();
        *(v34 + 152) = v50;
        v52 = *(v40 + 16);
        v51 = *(v40 + 24);
        sub_1B6220784();
        OUTLINED_FUNCTION_543();

        sub_1B6220784();
        if (v52 >= v51 >> 1)
        {
          OUTLINED_FUNCTION_636();
          sub_1B609CAAC();
          v40 = v54;
        }

        ++v42;
        v43 += 2;
        *(v40 + 16) = v52 + 1;
        v53 = v40 + 16 * v52;
        *(v53 + 32) = &unk_1B622CDC0;
        *(v53 + 40) = v34;
      }

      while (v84 != v42);
      v26 = v85;
      v33 = *(v85 + 120);
      v32 = *(v85 + 128);
    }

    else
    {
      sub_1B6220784();
      OUTLINED_FUNCTION_543();

      sub_1B6220784();
    }

    v68 = *(v26 + 136);
    v69 = v68[3];
    v70 = v68[4];
    v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
    OUTLINED_FUNCTION_90();
    v72 = swift_allocObject();
    *(v72 + 16) = v33;
    *(v72 + 24) = v32;
    sub_1B6220784();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED0);
    v74 = sub_1B6061450(v40, sub_1B6154538, v72, v69, v73, v70);
    OUTLINED_FUNCTION_671(v74);

    v75 = swift_task_alloc();
    *(v26 + 160) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    OUTLINED_FUNCTION_130();
    *v75 = v80;
    v75[1] = sub_1B6139178;
    v81 = *(v26 + 56);
    v82 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v81, v71, v73, v76, v82, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_1B6139178()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6139270()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B61392D0()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6139334()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B613944C()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED0);
  OUTLINED_FUNCTION_468(&qword_1EB925ED8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B61394E4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6139540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 136) = v12;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6139604, 0, 0);
}

uint64_t sub_1B6139604()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_585();
  *(v0 + 112) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 120) = v2;
  *v2 = v3;
  v2[1] = sub_1B61396D0;
  OUTLINED_FUNCTION_331();

  return sub_1B61319B4(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B61396D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61397E4()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0);
  OUTLINED_FUNCTION_468(&qword_1EB925FB8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613987C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61398D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 169) = a8;
  *(v8 + 224) = a7;
  *(v8 + 232) = v11;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD8);
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613998C, 0, 0);
}

uint64_t sub_1B613998C()
{
  OUTLINED_FUNCTION_226();
  v27 = v2;
  OUTLINED_FUNCTION_585();
  OUTLINED_FUNCTION_658();
  *(v2 + 248) = v4;
  v5 = OUTLINED_FUNCTION_629();
  *(v2 + 16) = v7;
  *(v2 + 32) = v6;
  *(v2 + 48) = v5;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v8 = *(v2 + 184);
  v9 = sub_1B6220B34();
  v10 = __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  sub_1B605B798(v8, v2 + 64);
  sub_1B6220784();
  v11 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_122_0();
    v26 = swift_slowAlloc();
    *v10 = 136446467;
    *(v10 + 4) = sub_1B602EEB0(v1, v0, &v26);
    *(v10 + 12) = 2081;
    v12 = OUTLINED_FUNCTION_649();
    *(v2 + 112) = v14;
    *(v2 + 128) = v13;
    *(v2 + 144) = v12;
    v15 = sub_1B6221234();
    sub_1B602EEB0(v15, v16, &v26);
    OUTLINED_FUNCTION_502();

    *(v10 + 14) = v3;
    OUTLINED_FUNCTION_182(&dword_1B6020000, v17, v18, "Starting request: %{public}s for resource: %{private}s");
    OUTLINED_FUNCTION_416();
    swift_arrayDestroy();
    v19 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v19);
    v20 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v20);
  }

  else
  {
    sub_1B605C4AC(*(v2 + 184));
  }

  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  OUTLINED_FUNCTION_1_30();
  v25 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v2 + 256) = v22;
  *v22 = v23;
  v22[1] = sub_1B6139BE0;
  OUTLINED_FUNCTION_330();

  return v25();
}

uint64_t sub_1B6139BE0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6139CD8()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0);
  OUTLINED_FUNCTION_468(&qword_1EB925FD8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6139D78()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6139DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 112) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v11;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6139E90, 0, 0);
}

uint64_t sub_1B6139E90()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_585();
  *(v0 + 88) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1B6139F54;
  OUTLINED_FUNCTION_331();

  return sub_1B6131D94(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B6139F54()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613A068()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90);
  OUTLINED_FUNCTION_468(&qword_1EB925F98, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613A100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a8;
  *(v8 + 128) = v12;
  *(v8 + 57) = v11;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613A1BC, 0, 0);
}

uint64_t sub_1B613A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_452();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_298();
  a20 = v22;
  v26 = *(v22 + 72);
  v25 = *(v22 + 80);
  OUTLINED_FUNCTION_585();
  OUTLINED_FUNCTION_658();
  *(v22 + 16) = v26;
  *(v22 + 144) = v27;
  *(v22 + 24) = v25;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v28 = sub_1B6220B34();
  __swift_project_value_buffer(v28, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v29 = sub_1B6220B14();
  v30 = sub_1B62217F4();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v22 + 80);
  if (v31)
  {
    v33 = *(v22 + 72);
    OUTLINED_FUNCTION_110();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    a11 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_474(4.8752e-34, a11, v35);
    OUTLINED_FUNCTION_530(v36);
    *(v22 + 32) = v33;
    *(v22 + 40) = v32;
    v37 = sub_1B6221234();
    sub_1B602EEB0(v37, v38, &a11);
    OUTLINED_FUNCTION_670();

    *(v34 + 14) = v33;
    OUTLINED_FUNCTION_251();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    v44 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v44);
  }

  else
  {
  }

  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  OUTLINED_FUNCTION_1_30();
  v59 = v45;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v22 + 152) = v46;
  *v46 = v47;
  v46[1] = sub_1B613A40C;
  OUTLINED_FUNCTION_22_5();

  return v56(v48, v49, v50, v51, v52, v53, v54, v55, a9, v59, a11, a12, a13, a14);
}

uint64_t sub_1B613A40C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613A504()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EF8);
  OUTLINED_FUNCTION_468(&qword_1EB925F00, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613A5A4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 25) = a8;
  *(v8 + 80) = a7;
  *(v8 + 88) = v11;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = type metadata accessor for WeatherRequest();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613A6F8, 0, 0);
}

uint64_t sub_1B613A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_452();
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_585();
  OUTLINED_FUNCTION_658();
  *(v14 + 128) = v15;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_3_25();
  v17 = OUTLINED_FUNCTION_323();
  sub_1B61531FC(v17, v18);
  sub_1B6220784();
  v19 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_525())
  {
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    a11 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_474(4.8752e-34, a11, v21);
    OUTLINED_FUNCTION_530(v22);
    OUTLINED_FUNCTION_3_25();
    v23 = OUTLINED_FUNCTION_337();
    sub_1B61531FC(v23, v24);
    OUTLINED_FUNCTION_510();
    sub_1B6221234();
    OUTLINED_FUNCTION_656();
    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
    v25 = OUTLINED_FUNCTION_510();
    v28 = sub_1B602EEB0(v25, v26, v27);

    *(v20 + 14) = v28;
    OUTLINED_FUNCTION_251();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_416();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v34);
    v35 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v35);
  }

  else
  {

    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
  }

  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v14 + 136) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_557(v37);
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_22_5();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_1B613A928()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 25) = a8;
  *(v8 + 80) = a7;
  *(v8 + 88) = v11;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = type metadata accessor for WeatherRequest();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613AB10, 0, 0);
}

uint64_t sub_1B613AB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_452();
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_585();
  OUTLINED_FUNCTION_658();
  *(v14 + 128) = v15;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_3_25();
  v17 = OUTLINED_FUNCTION_323();
  sub_1B61531FC(v17, v18);
  sub_1B6220784();
  v19 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_525())
  {
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    a11 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_474(4.8752e-34, a11, v21);
    OUTLINED_FUNCTION_530(v22);
    OUTLINED_FUNCTION_3_25();
    v23 = OUTLINED_FUNCTION_337();
    sub_1B61531FC(v23, v24);
    OUTLINED_FUNCTION_510();
    sub_1B6221234();
    OUTLINED_FUNCTION_656();
    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
    v25 = OUTLINED_FUNCTION_510();
    v28 = sub_1B602EEB0(v25, v26, v27);

    *(v20 + 14) = v28;
    OUTLINED_FUNCTION_251();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_416();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v34);
    v35 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v35);
  }

  else
  {

    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
  }

  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v14 + 136) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_557(v37);
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_22_5();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_1B613AD40()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613AE38()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[4];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E60);
  sub_1B603D428(v1, v3 + *(v4 + 40), &qword_1EB925E68);
  *v3 = v2;
  *(v3 + 8) = 0;

  OUTLINED_FUNCTION_97();

  return v5();
}

uint64_t sub_1B613AF04()
{
  OUTLINED_FUNCTION_13_7();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 80) = v11;
  *(v8 + 88) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613B044, 0, 0);
}

uint64_t sub_1B613B044()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_585();
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_175(v2);
  *v3 = v4;
  v3[1] = sub_1B613B10C;
  OUTLINED_FUNCTION_331();

  return sub_1B6132A2C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B613B10C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613B220()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED0);
  OUTLINED_FUNCTION_468(&qword_1EB925ED8, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613B2B8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 112) = v13;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613B3E4, 0, 0);
}

uint64_t sub_1B613B580()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613B678()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0);
  OUTLINED_FUNCTION_468(&qword_1EB925FB8, *(v0 + 40));
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613B710()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 144) = v12;
  *(v8 + 152) = v13;
  *(v8 + 128) = v11;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613B83C, 0, 0);
}

uint64_t sub_1B613B83C()
{
  if (__OFADD__(*(v0 + 128), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_349();
    v25 = *(v0 + 200);
    v4 = *(v0 + 152);
    v28 = *(v0 + 144);
    v29 = *(v0 + 160);
    v27 = *(v0 + 136);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    sub_1B6038910();
    OUTLINED_FUNCTION_449();
    v9 = *(v8 + 24);
    v26 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_568();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v12 = swift_allocObject();
    v13 = OUTLINED_FUNCTION_632(v12, v7[2], v7[1], *v7);
    v13[4].n128_u64[0] = v6;
    v13[4].n128_u64[1] = v5;
    v13[5].n128_u64[0] = v1;
    v13[5].n128_u64[1] = v2;
    v13[6].n128_u64[0] = v4;
    OUTLINED_FUNCTION_490(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
    sub_1B605B798(v7, v0 + 16);

    *(v0 + 176) = sub_1B605D748(v27, v28, &unk_1B622D3D0, v12, v9, v29, v26);

    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 184) = v21;
    *v21 = v22;
    v21[1] = sub_1B613B9F0;
    OUTLINED_FUNCTION_77_0();
  }

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1B613B9F0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613BAE8()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0);
  OUTLINED_FUNCTION_468(&qword_1EB925FD8, *(v0 + 40));
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613BB80()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v14;
  *(v8 + 192) = v12;
  *(v8 + 200) = v13;
  *(v8 + 176) = v11;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 128) = a3;
  *(v8 + 136) = a4;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613BCAC, 0, 0);
}

uint64_t sub_1B613BCAC()
{
  if (__OFADD__(*(v0 + 176), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_349();
    v29 = *(v0 + 248);
    v4 = *(v0 + 200);
    v32 = *(v0 + 192);
    v33 = *(v0 + 208);
    v31 = *(v0 + 184);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);
    sub_1B6038910();
    OUTLINED_FUNCTION_656();
    v9 = *(v8 + 24);
    v30 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_304();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    *(v0 + 16) = *v6;
    *(v0 + 32) = v6[1];
    *(v0 + 48) = v6[2];
    v12 = swift_allocObject();
    v13 = OUTLINED_FUNCTION_629();
    v17 = OUTLINED_FUNCTION_632(v14, v13, v15, v16);
    v17[4].n128_u64[0] = v7;
    v17[4].n128_u64[1] = v5;
    v17[5].n128_u64[0] = v1;
    v17[5].n128_u64[1] = v2;
    v17[6].n128_u64[0] = v4;
    OUTLINED_FUNCTION_490(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29);
    sub_1B6153380(v0 + 16, v0 + 64);
    sub_1B6153380(v0 + 32, v0 + 80);
    sub_1B6153380(v0 + 48, v0 + 96);

    *(v0 + 224) = sub_1B605D748(v31, v32, &unk_1B622D1F0, v12, v9, v33, v30);

    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 232) = v25;
    *v25 = v26;
    v25[1] = sub_1B613BE8C;
    OUTLINED_FUNCTION_77_0();
  }

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1B613BE8C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613BF84()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90);
  OUTLINED_FUNCTION_468(&qword_1EB925F98, *(v0 + 40));
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613C01C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v14;
  *(v8 + 112) = v13;
  *(v8 + 80) = v11;
  *(v8 + 96) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613C148, 0, 0);
}

uint64_t sub_1B613C148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(v17 + 88);
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_675();
    v20 = *(v17 + 160);
    v21 = *(v17 + 112);
    a13 = *(v17 + 104);
    a14 = *(v17 + 120);
    a12 = *(v17 + 96);
    v22 = *(v17 + 56);
    v23 = *(v17 + 24);
    v24 = *(v17 + 32);
    a9 = *(v17 + 40);
    v25 = sub_1B6038910();
    v27 = v26;
    v28 = *(v23 + 24);
    a11 = *(v23 + 32);
    v29 = OUTLINED_FUNCTION_665();
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_648();
    v31 = swift_allocObject();
    *(v31 + 16) = v24;
    *(v31 + 24) = a9;
    *(v31 + 40) = v22;
    *(v31 + 48) = v25;
    *(v31 + 56) = v27;
    *(v31 + 64) = v21;
    *(v31 + 72) = v20 & 1;
    *(v31 + 80) = 0;
    *(v31 + 88) = 1;
    sub_1B6220784();

    *(v17 + 136) = sub_1B605D748(a12, a13, &unk_1B622CEC0, v31, v28, a14, a11);

    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_176(v32);
    *v33 = v34;
    v33[1] = sub_1B613C2EC;
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_544();
  }

  return MEMORY[0x1EEE6DE18](a1, v19, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1B613C2EC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613C3E4()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EF8);
  OUTLINED_FUNCTION_468(&qword_1EB925F00, *(v0 + 40));
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613C47C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(type metadata accessor for WeatherRequest() - 8);
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613C608, 0, 0);
}

uint64_t sub_1B613C750()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v15;
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(type metadata accessor for WeatherRequest() - 8);
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613C970, 0, 0);
}

uint64_t sub_1B613CAB8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613CBB0()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[2];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E60);
  sub_1B603D428(v1, v3 + *(v4 + 40), &qword_1EB925E68);
  *v3 = v2;
  *(v3 + 8) = 1;

  OUTLINED_FUNCTION_97();

  return v5();
}

uint64_t sub_1B613CC6C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 112) = v13;
  *(v8 + 120) = v14;
  *(v8 + 80) = v11;
  *(v8 + 96) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613CDA4, 0, 0);
}

uint64_t sub_1B613CF3C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613D034()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED0);
  OUTLINED_FUNCTION_468(&qword_1EB925ED8, *(v0 + 40));
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613D0CC()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B613D130(const void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v22 = a7;
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - v14;
  memcpy(__dst, a1, 0x41uLL);
  sub_1B603AA48(a4, v15, &qword_1EB924B40);
  v16 = (*(v12 + 80) + 81) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  memcpy((v18 + 16), __dst, 0x41uLL);
  sub_1B603D428(v15, v18 + v16, &qword_1EB924B40);
  *(v18 + v17) = v7;
  v19 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a6;
  *(v19 + 8) = v22;
  sub_1B6152A68(a1, __dst);

  sub_1B60AC5D8(v23, v24, v25, sub_1B6152C50);
}

uint64_t sub_1B613D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, const void *a7, void *a8, uint64_t a9, char a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  memcpy((v17 + 48), a7, 0xB0uLL);
  *(v17 + 224) = v10;
  *(v17 + 232) = a9;
  *(v17 + 240) = a10;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B603AA48(a7, v21, &unk_1EB9275A0);

  sub_1B60AC5D8(a5, a6, a8, sub_1B6153E88);
}

uint64_t sub_1B613D3E4(_OWORD *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v15 = swift_allocObject();
  v16 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = a1[2];
  *(v15 + 64) = a4;
  *(v15 + 72) = v7;
  *(v15 + 80) = a6;
  *(v15 + 88) = a7;
  sub_1B605B798(a1, &v18);
  sub_1B6220784();

  sub_1B60AC5D8(a2, a3, a5, sub_1B61544C8);
}

uint64_t sub_1B613D4C4(__int128 *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v24 = a7;
  v26 = a3;
  v27 = a5;
  v25 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925058);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23[-v14];
  v16 = *a1;
  v30 = a1[1];
  v31 = v16;
  v29 = a1[2];
  sub_1B603AA48(a4, &v23[-v14], &qword_1EB925058);
  v17 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = a1[1];
  v19[1] = *a1;
  v19[2] = v20;
  v19[3] = a1[2];
  sub_1B603D428(v15, v19 + v17, &qword_1EB925058);
  *(v19 + v18) = v7;
  v21 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = a6;
  v21[8] = v24;
  sub_1B6153380(&v31, v28);
  sub_1B6153380(&v30, v28);
  sub_1B6153380(&v29, v28);

  sub_1B60AC5D8(v25, v26, v27, sub_1B6153850);
}

uint64_t sub_1B613D690(const void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v22 = a7;
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - v14;
  memcpy(__dst, a1, 0x41uLL);
  sub_1B603AA48(a4, v15, &qword_1EB925F70);
  v16 = (*(v12 + 80) + 81) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  memcpy((v18 + 16), __dst, 0x41uLL);
  sub_1B603D428(v15, v18 + v16, &qword_1EB925F70);
  *(v18 + v17) = v7;
  v19 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a6;
  *(v19 + 8) = v22;
  sub_1B6152D7C(a1, __dst);

  sub_1B60AC5D8(v23, v24, v25, sub_1B6153130);
}

uint64_t sub_1B613D844(const void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v22 = a7;
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - v14;
  memcpy(__dst, a1, 0x41uLL);
  sub_1B603AA48(a4, v15, &qword_1EB9252A0);
  v16 = (*(v12 + 80) + 81) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  memcpy((v18 + 16), __dst, 0x41uLL);
  sub_1B603D428(v15, v18 + v16, &qword_1EB9252A0);
  *(v18 + v17) = v7;
  v19 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a6;
  *(v19 + 8) = v22;
  sub_1B6152748(a1, __dst);

  sub_1B60AC5D8(v23, v24, v25, sub_1B61529A4);
}

uint64_t sub_1B613D9F8(const void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v22 = a7;
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925888);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - v14;
  memcpy(__dst, a1, 0x41uLL);
  sub_1B603AA48(a4, v15, &qword_1EB925888);
  v16 = (*(v12 + 80) + 81) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  memcpy((v18 + 16), __dst, 0x41uLL);
  sub_1B603D428(v15, v18 + v16, &qword_1EB925888);
  *(v18 + v17) = v7;
  v19 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a6;
  *(v19 + 8) = v22;
  sub_1B61524F0(a1, __dst);

  sub_1B60AC5D8(v23, v24, v25, sub_1B6152684);
}

uint64_t sub_1B613DBAC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a5;
  *(v17 + 40) = v8;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  sub_1B6220784();
  sub_1B615243C(a5);

  sub_1B60AC5D8(a3, a4, a6, sub_1B6152428);
}

void sub_1B613DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t *))
{
  OUTLINED_FUNCTION_44();
  v52[1] = v23;
  v53 = v22;
  v54 = v24;
  v57 = v25;
  v58 = v26;
  v28 = v27;
  v55 = v29;
  v56 = a21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0);
  v31 = OUTLINED_FUNCTION_28_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v37 = v52 - v36;
  v38 = type metadata accessor for WeatherRequest();
  v39 = OUTLINED_FUNCTION_28_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3_25();
  v44 = OUTLINED_FUNCTION_428();
  sub_1B61531FC(v44, v45);
  sub_1B603AA48(v28, v37, &qword_1EB9250C0);
  v46 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v47 = (v43 + *(v33 + 80) + v46) & ~*(v33 + 80);
  v48 = (v35 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_8_20();
  sub_1B614E95C(v52 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v50 + v46);
  sub_1B603D428(v37, v49 + v47, &qword_1EB9250C0);
  *(v49 + v48) = v21;
  v51 = v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v51 = v53;
  *(v51 + 8) = v54;

  sub_1B60AC5D8(v55, v57, v58, v56);

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B613DE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a6;
  *(v17 + 48) = v9;
  *(v17 + 56) = a8;
  *(v17 + 64) = a9;
  sub_1B6220784();

  sub_1B6220784();
  sub_1B6220784();
  sub_1B60AC5D8(a4, a5, a7, sub_1B6151E88);
}

void sub_1B613DF6C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = sub_1B6058720();
  sub_1B613D130(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E004(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11)
{
  v17 = sub_1B6058720();
  sub_1B613D2E4(a4, a5, a6, a7, a8, v17, a1, 0, a10, a11);
}

void sub_1B613E0B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = sub_1B6058720();
  sub_1B613D3E4(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E150(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = sub_1B6058720();
  sub_1B613D4C4(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E1E8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = sub_1B6058720();
  sub_1B613D690(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E280(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = sub_1B6058720();
  sub_1B613D844(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E318(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = sub_1B6058720();
  sub_1B613D9F8(a4, a5, v13, a1, 0, a7, a8);
}

void sub_1B613E3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = sub_1B6058720();
  sub_1B613DBAC(a4, a5, a6, v14, a1, 0, a8, a9);
}

void sub_1B613E5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = sub_1B6058720();
  sub_1B613DE80(a4, a5, a6, a7, v15, a1, 0, a9, a10);
}

uint64_t sub_1B613E660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v101 - v4;
  v111 = sub_1B621D8F4();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v119 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F50);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v101 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v101 - v15;
  v17 = sub_1B6220A84();
  v18 = *(v17 - 8);
  v124 = v17;
  v125 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101 - v21;
  v23 = *(a1 + v6[12]);
  sub_1B6220A64();
  LODWORD(v121) = sub_1B6221934();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  v24 = swift_allocObject();
  v115 = xmmword_1B6227640;
  *(v24 + 16) = xmmword_1B6227640;
  v25 = (a1 + v6[14]);
  v27 = *v25;
  v26 = v25[1];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1B6035A98();
  *(v24 + 64) = v28;
  v113 = v26;
  v114 = v27;
  *(v24 + 32) = v27;
  *(v24 + 40) = v26;
  v29 = v6[9];
  sub_1B6220784();
  v126 = a1;
  v112 = v29;
  sub_1B621D244();
  v30 = sub_1B621D634();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v30);
  v118 = v28;
  v116 = v30;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B61540AC(v16, &qword_1EB924690);
    v32 = (v24 + 72);
    v33 = MEMORY[0x1E69E6158];
    *(v24 + 96) = MEMORY[0x1E69E6158];
    *(v24 + 104) = v28;
    v34 = v123;
    v35 = v6;
    v36 = v23;
  }

  else
  {
    v120 = v23;
    v35 = v6;
    v37 = v123;
    v38 = sub_1B621D584();
    v40 = v39;
    (*(*(v30 - 8) + 8))(v16, v30);
    v32 = (v24 + 72);
    v33 = MEMORY[0x1E69E6158];
    *(v24 + 96) = MEMORY[0x1E69E6158];
    *(v24 + 104) = v28;
    if (v40)
    {
      *v32 = v38;
      v34 = v37;
      v36 = v120;
      goto LABEL_7;
    }

    v34 = v37;
    v36 = v120;
  }

  *v32 = 0;
  v40 = 0xE000000000000000;
LABEL_7:
  *(v24 + 80) = v40;
  sub_1B6220A54();

  v41 = v122;
  sub_1B610DBA0(*(v126 + v35[10]), *(v126 + v35[10] + 8), v34);
  if (v41)
  {
    return (*(v125 + 8))(v22, v124);
  }

  v121 = 0;
  LODWORD(v122) = sub_1B6221924();
  v43 = swift_allocObject();
  *(v43 + 16) = v115;
  v44 = v118;
  *(v43 + 56) = v33;
  *(v43 + 64) = v44;
  *(v43 + 32) = v114;
  *(v43 + 40) = v113;
  swift_bridgeObjectRetain_n();
  v45 = v104;
  sub_1B621D244();
  v46 = v45;
  v47 = v45;
  v48 = v116;
  v49 = __swift_getEnumTagSinglePayload(v47, 1, v116);
  v120 = v36;
  if (v49 == 1)
  {
    sub_1B61540AC(v46, &qword_1EB924690);
    v50 = (v43 + 72);
    *(v43 + 96) = v33;
    *(v43 + 104) = v44;
  }

  else
  {
    v51 = v46;
    v102 = sub_1B621D584();
    v53 = v52;
    (*(*(v48 - 8) + 8))(v51, v48);
    v50 = (v43 + 72);
    *(v43 + 96) = v33;
    *(v43 + 104) = v44;
    if (v53)
    {
      *v50 = v102;
      goto LABEL_14;
    }
  }

  *v50 = 0;
  v53 = 0xE000000000000000;
LABEL_14:
  *(v43 + 80) = v53;
  v122 = v22;
  sub_1B6220A54();

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v54 = sub_1B6220B34();
  __swift_project_value_buffer(v54, qword_1EDAC2AB0);
  v55 = v105;
  sub_1B603AA48(v126, v105, &qword_1EB925F50);
  v56 = sub_1B6220B14();
  v57 = sub_1B62217F4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v127[0] = v59;
    *v58 = 136446210;
    v60 = (v55 + v35[14]);
    v61 = v55;
    v63 = *v60;
    v62 = v60[1];
    sub_1B6220784();
    sub_1B61540AC(v61, &qword_1EB925F50);
    v64 = sub_1B602EEB0(v63, v62, v127);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_1B6020000, v56, v57, "Created response model for request: %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1B8C91C90](v59, -1, -1);
    MEMORY[0x1B8C91C90](v58, -1, -1);
  }

  else
  {

    sub_1B61540AC(v55, &qword_1EB925F50);
  }

  v65 = v107;
  v66 = v106;
  v67 = v118;
  v68 = sub_1B6221924();
  (*(v125 + 16))(v65, v126 + v35[13], v124);
  v69 = swift_allocObject();
  *(v69 + 16) = v115;
  v70 = MEMORY[0x1E69E6158];
  *(v69 + 56) = MEMORY[0x1E69E6158];
  *(v69 + 64) = v67;
  v71 = v113;
  *(v69 + 32) = v114;
  *(v69 + 40) = v71;
  sub_1B621D244();
  v72 = v116;
  v73 = __swift_getEnumTagSinglePayload(v66, 1, v116);
  v103 = v35;
  if (v73 == 1)
  {
    sub_1B61540AC(v66, &qword_1EB924690);
    v74 = (v69 + 72);
    *(v69 + 96) = v70;
    *(v69 + 104) = v67;
LABEL_23:
    *v74 = 0;
    v77 = 0xE000000000000000;
    goto LABEL_24;
  }

  LODWORD(v117) = v68;
  v75 = v72;
  *&v115 = sub_1B621D584();
  v77 = v76;
  (*(*(v75 - 8) + 8))(v66, v75);
  v74 = (v69 + 72);
  *(v69 + 96) = v70;
  *(v69 + 104) = v67;
  if (!v77)
  {
    goto LABEL_23;
  }

  *v74 = v115;
LABEL_24:
  *(v69 + 80) = v77;
  sub_1B6220A54();

  v78 = *(v125 + 8);
  v125 += 8;
  v78(v65, v124);
  sub_1B621D8D4();
  v79 = v126;
  sub_1B621D7D4();
  v81 = v80;
  v82 = v108;
  sub_1B603AA48(v79, v108, &qword_1EB925F50);
  v83 = sub_1B6220B14();
  v84 = sub_1B62217D4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = v78;
    v87 = swift_slowAlloc();
    v127[0] = v87;
    *v85 = 136446466;
    v88 = Double.humanReadableDescription.getter(v81);
    v90 = sub_1B602EEB0(v88, v89, v127);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2082;
    v91 = v103;
    v92 = (v82 + v103[14]);
    v93 = *v92;
    v94 = v92[1];
    sub_1B6220784();
    sub_1B61540AC(v82, &qword_1EB925F50);
    v95 = sub_1B602EEB0(v93, v94, v127);

    *(v85 + 14) = v95;
    _os_log_impl(&dword_1B6020000, v83, v84, "Fetch took: %{public}s for request: %{public}s", v85, 0x16u);
    swift_arrayDestroy();
    v96 = v87;
    v78 = v86;
    MEMORY[0x1B8C91C90](v96, -1, -1);
    MEMORY[0x1B8C91C90](v85, -1, -1);

    v97 = v123;
  }

  else
  {

    sub_1B61540AC(v82, &qword_1EB925F50);
    v97 = v123;
    v91 = v103;
  }

  v98 = *(v126 + v91[15]);
  v99 = v110;
  sub_1B61531FC(v97, v110);
  v100 = type metadata accessor for DailySummary();
  __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
  v98(v99);
  sub_1B61540AC(v99, &qword_1EB924B40);
  (*(v109 + 8))(v119, v111);
  return (v78)(v122, v124);
}

void *sub_1B613F270@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v109 = a2;
  v3 = sub_1B621D8F4();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  v120 = sub_1B6220A84();
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  v121 = *(a1 + v5[12]);
  sub_1B6220A64();
  LODWORD(v118) = sub_1B6221934();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  v20 = swift_allocObject();
  v113 = xmmword_1B6227640;
  *(v20 + 16) = xmmword_1B6227640;
  v21 = (a1 + v5[14]);
  v23 = *v21;
  v22 = v21[1];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1B6035A98();
  *(v20 + 64) = v24;
  v111 = v22;
  v112 = v23;
  *(v20 + 32) = v23;
  *(v20 + 40) = v22;
  v123 = v5;
  v25 = v5[9];
  sub_1B6220784();
  v124 = a1;
  v110 = v25;
  sub_1B621D244();
  v26 = sub_1B621D634();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v26);
  v114 = v26;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B61540AC(v15, &qword_1EB924690);
    v28 = (v20 + 72);
    v29 = MEMORY[0x1E69E6158];
    *(v20 + 96) = MEMORY[0x1E69E6158];
    *(v20 + 104) = v24;
  }

  else
  {
    v30 = sub_1B621D584();
    v29 = MEMORY[0x1E69E6158];
    v31 = v30;
    v33 = v32;
    (*(*(v26 - 8) + 8))(v15, v26);
    v28 = (v20 + 72);
    *(v20 + 96) = v29;
    *(v20 + 104) = v24;
    if (v33)
    {
      *v28 = v31;
      goto LABEL_6;
    }
  }

  *v28 = 0;
  v33 = 0xE000000000000000;
LABEL_6:
  *(v20 + 80) = v33;
  sub_1B6220A54();

  v34 = v119;
  sub_1B610DC9C(*(v124 + v123[10]), *(v124 + v123[10] + 8), v129);
  if (v34)
  {
    return (*(v122 + 8))(v19, v120);
  }

  v119 = 0;
  LODWORD(v118) = sub_1B6221924();
  v36 = swift_allocObject();
  *(v36 + 16) = v113;
  *(v36 + 56) = v29;
  *(v36 + 64) = v24;
  *(v36 + 32) = v112;
  *(v36 + 40) = v111;
  swift_bridgeObjectRetain_n();
  v37 = v103;
  sub_1B621D244();
  v38 = v114;
  v39 = __swift_getEnumTagSinglePayload(v37, 1, v114);
  v101 = v24;
  if (v39 == 1)
  {
    sub_1B61540AC(v37, &qword_1EB924690);
    v40 = (v36 + 72);
    *(v36 + 96) = v29;
    *(v36 + 104) = v24;
  }

  else
  {
    v41 = v29;
    v42 = v37;
    v43 = v41;
    v100 = sub_1B621D584();
    v45 = v44;
    (*(*(v38 - 8) + 8))(v42, v38);
    v40 = (v36 + 72);
    *(v36 + 96) = v43;
    *(v36 + 104) = v24;
    if (v45)
    {
      *v40 = v100;
      v46 = v104;
      goto LABEL_13;
    }
  }

  v46 = v104;
  *v40 = 0;
  v45 = 0xE000000000000000;
LABEL_13:
  *(v36 + 80) = v45;
  sub_1B6220A54();

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v47 = sub_1B6220B34();
  v48 = __swift_project_value_buffer(v47, qword_1EDAC2AB0);
  sub_1B603AA48(v124, v46, &qword_1EB925FB8);
  v49 = sub_1B6220B14();
  v50 = sub_1B62217F4();
  v51 = os_log_type_enabled(v49, v50);
  v102 = v19;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v128[0] = v53;
    *v52 = 136446210;
    v54 = (v46 + v123[14]);
    v55 = v46;
    v57 = *v54;
    v56 = v54[1];
    sub_1B6220784();
    sub_1B61540AC(v55, &qword_1EB925FB8);
    v58 = sub_1B602EEB0(v57, v56, v128);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_1B6020000, v49, v50, "Created response model for request: %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1B8C91C90](v53, -1, -1);
    MEMORY[0x1B8C91C90](v52, -1, -1);
  }

  else
  {

    sub_1B61540AC(v46, &qword_1EB925FB8);
  }

  v59 = v120;
  v60 = v122;
  LODWORD(v122) = sub_1B6221924();
  (*(v60 + 16))(v116, v124 + v123[13], v59);
  v61 = swift_allocObject();
  *(v61 + 16) = v113;
  v62 = MEMORY[0x1E69E6158];
  v63 = v101;
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = v63;
  v64 = v111;
  *(v61 + 32) = v112;
  *(v61 + 40) = v64;
  v65 = v105;
  sub_1B621D244();
  v66 = v114;
  if (__swift_getEnumTagSinglePayload(v65, 1, v114) == 1)
  {
    sub_1B61540AC(v65, &qword_1EB924690);
    v67 = (v61 + 72);
    *(v61 + 96) = v62;
    *(v61 + 104) = v63;
    v68 = v106;
LABEL_23:
    *v67 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_24;
  }

  v118 = v48;
  v69 = v59;
  v70 = v66;
  v71 = sub_1B621D584();
  v72 = v65;
  v73 = v71;
  v75 = v74;
  (*(*(v70 - 8) + 8))(v72, v70);
  v67 = (v61 + 72);
  *(v61 + 96) = v62;
  *(v61 + 104) = v63;
  if (!v75)
  {
    v68 = v106;
    v59 = v69;
    goto LABEL_23;
  }

  *v67 = v73;
  v68 = v106;
  v59 = v69;
LABEL_24:
  *(v61 + 80) = v75;
  v76 = v116;
  sub_1B6220A54();

  v79 = *(v60 + 8);
  v78 = v60 + 8;
  v77 = v79;
  v79(v76, v59);
  sub_1B621D8D4();
  v80 = v124;
  sub_1B621D7D4();
  v82 = v81;
  sub_1B603AA48(v80, v68, &qword_1EB925FB8);
  v83 = sub_1B6220B14();
  v84 = sub_1B62217D4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v77;
    v86 = v68;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v128[0] = v88;
    *v87 = 136446466;
    v89 = Double.humanReadableDescription.getter(v82);
    v91 = sub_1B602EEB0(v89, v90, v128);
    v122 = v78;
    v92 = v91;

    *(v87 + 4) = v92;
    *(v87 + 12) = 2082;
    v93 = (v86 + v123[14]);
    v94 = *v93;
    v95 = v93[1];
    sub_1B6220784();
    v96 = v86;
    v77 = v85;
    sub_1B61540AC(v96, &qword_1EB925FB8);
    v97 = sub_1B602EEB0(v94, v95, v128);

    *(v87 + 14) = v97;
    v59 = v120;
    _os_log_impl(&dword_1B6020000, v83, v84, "Fetch took: %{public}s for request: %{public}s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v88, -1, -1);
    MEMORY[0x1B8C91C90](v87, -1, -1);
  }

  else
  {

    sub_1B61540AC(v68, &qword_1EB925FB8);
  }

  v98 = *(v124 + v123[15]);
  memcpy(v126, v129, sizeof(v126));
  memcpy(v127, v129, sizeof(v127));
  nullsub_1(v127);
  memcpy(v125, v127, sizeof(v125));
  sub_1B60BFF80(v126, v128);
  v98(v125);
  memcpy(v128, v125, sizeof(v128));
  sub_1B61540AC(v128, &unk_1EB9275A0);
  (*(v107 + 8))(v117, v108);
  v77(v102, v59);
  return memcpy(v109, v129, 0xB0uLL);
}

uint64_t sub_1B613FE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = sub_1B621D8F4();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v107 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v91 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v16 = sub_1B6220A84();
  v111 = *(v16 - 8);
  v112 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  v21 = *(a1 + *(v5 + 48));
  sub_1B6220A64();
  v108 = sub_1B6221934();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  v22 = swift_allocObject();
  v103 = xmmword_1B6227640;
  *(v22 + 16) = xmmword_1B6227640;
  v23 = (a1 + *(v5 + 56));
  v24 = *v23;
  v25 = v23[1];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1B6035A98();
  *(v22 + 64) = v26;
  v101 = v25;
  v102 = v24;
  *(v22 + 32) = v24;
  *(v22 + 40) = v25;
  v113 = v5;
  sub_1B6220784();
  v114 = a1;
  sub_1B621D244();
  v27 = sub_1B621D634();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v27);
  v106 = v26;
  v104 = v27;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B61540AC(v15, &qword_1EB924690);
    v29 = (v22 + 72);
    v30 = MEMORY[0x1E69E6158];
    *(v22 + 96) = MEMORY[0x1E69E6158];
    *(v22 + 104) = v26;
    v31 = v20;
  }

  else
  {
    v110 = v21;
    v32 = sub_1B621D584();
    v34 = v33;
    (*(*(v27 - 8) + 8))(v15, v27);
    v29 = (v22 + 72);
    v30 = MEMORY[0x1E69E6158];
    *(v22 + 96) = MEMORY[0x1E69E6158];
    *(v22 + 104) = v26;
    if (v34)
    {
      *v29 = v32;
      v31 = v20;
      v21 = v110;
      goto LABEL_7;
    }

    v31 = v20;
    v21 = v110;
  }

  *v29 = 0;
  v34 = 0xE000000000000000;
LABEL_7:
  *(v22 + 80) = v34;
  sub_1B6220A54();

  v35 = v109;
  sub_1B610E23C(*(v114 + v113[10]), *(v114 + v113[10] + 8), &v116);
  if (v35)
  {
    return (*(v111 + 8))(v31, v112);
  }

  v109 = 0;
  v110 = v21;
  v37 = sub_1B6221924();
  v38 = swift_allocObject();
  *(v38 + 16) = v103;
  v39 = v106;
  *(v38 + 56) = v30;
  *(v38 + 64) = v39;
  *(v38 + 32) = v102;
  *(v38 + 40) = v101;
  swift_bridgeObjectRetain_n();
  v40 = v93;
  sub_1B621D244();
  v41 = v104;
  if (__swift_getEnumTagSinglePayload(v40, 1, v104) == 1)
  {
    sub_1B61540AC(v40, &qword_1EB924690);
    v42 = (v38 + 72);
    *(v38 + 96) = v30;
    *(v38 + 104) = v39;
    v43 = v94;
  }

  else
  {
    v108 = v37;
    v44 = sub_1B621D584();
    v46 = v45;
    (*(*(v41 - 8) + 8))(v40, v41);
    v42 = (v38 + 72);
    *(v38 + 96) = v30;
    *(v38 + 104) = v39;
    if (v46)
    {
      *v42 = v44;
      v43 = v94;
      goto LABEL_15;
    }

    v43 = v94;
  }

  *v42 = 0;
  v46 = 0xE000000000000000;
LABEL_15:
  *(v38 + 80) = v46;
  sub_1B6220A54();

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v47 = sub_1B6220B34();
  __swift_project_value_buffer(v47, qword_1EDAC2AB0);
  sub_1B603AA48(v114, v43, &qword_1EB925F00);
  v48 = sub_1B6220B14();
  v49 = sub_1B62217F4();
  v50 = os_log_type_enabled(v48, v49);
  v92 = v31;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v115 = v52;
    *v51 = 136446210;
    v53 = (v43 + v113[14]);
    v55 = *v53;
    v54 = v53[1];
    sub_1B6220784();
    sub_1B61540AC(v43, &qword_1EB925F00);
    v56 = sub_1B602EEB0(v55, v54, &v115);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_1B6020000, v48, v49, "Created response model for request: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1B8C91C90](v52, -1, -1);
    MEMORY[0x1B8C91C90](v51, -1, -1);
  }

  else
  {

    sub_1B61540AC(v43, &qword_1EB925F00);
  }

  v57 = v95;
  v58 = v106;
  v59 = sub_1B6221924();
  v60 = v96;
  (*(v111 + 16))(v96, v114 + v113[13], v112);
  v61 = swift_allocObject();
  *(v61 + 16) = v103;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = v58;
  v63 = v101;
  *(v61 + 32) = v102;
  *(v61 + 40) = v63;
  sub_1B621D244();
  v64 = v104;
  if (__swift_getEnumTagSinglePayload(v57, 1, v104) == 1)
  {
    sub_1B61540AC(v57, &qword_1EB924690);
    v65 = (v61 + 72);
    *(v61 + 96) = v62;
    *(v61 + 104) = v58;
LABEL_24:
    *v65 = 0;
    v70 = 0xE000000000000000;
    goto LABEL_25;
  }

  v108 = v59;
  v66 = v64;
  v67 = v58;
  v68 = sub_1B621D584();
  v70 = v69;
  (*(*(v66 - 8) + 8))(v57, v66);
  v65 = (v61 + 72);
  *(v61 + 96) = v62;
  *(v61 + 104) = v67;
  if (!v70)
  {
    goto LABEL_24;
  }

  *v65 = v68;
LABEL_25:
  *(v61 + 80) = v70;
  sub_1B6220A54();

  v71 = *(v111 + 8);
  v72 = v111 + 8;
  v71(v60, v112);
  sub_1B621D8D4();
  v73 = v114;
  sub_1B621D7D4();
  v75 = v74;
  v76 = v97;
  sub_1B603AA48(v73, v97, &qword_1EB925F00);
  v77 = sub_1B6220B14();
  v78 = sub_1B62217D4();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v111 = v72;
    v81 = v80;
    v115 = v80;
    *v79 = 136446466;
    v82 = Double.humanReadableDescription.getter(v75);
    v84 = sub_1B602EEB0(v82, v83, &v115);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2082;
    v85 = (v76 + v113[14]);
    v86 = *v85;
    v87 = v85[1];
    sub_1B6220784();
    sub_1B61540AC(v76, &qword_1EB925F00);
    v88 = sub_1B602EEB0(v86, v87, &v115);

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1B6020000, v77, v78, "Fetch took: %{public}s for request: %{public}s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v81, -1, -1);
    MEMORY[0x1B8C91C90](v79, -1, -1);
  }

  else
  {

    sub_1B61540AC(v76, &qword_1EB925F00);
  }

  v89 = v92;
  v90 = *(v114 + v113[15]);
  v115 = v116;

  v90(&v115);
  sub_1B615206C(v115);
  (*(v98 + 8))(v107, v99);
  result = (v71)(v89, v112);
  *v100 = v116;
  return result;
}

void sub_1B61409A8()
{
  OUTLINED_FUNCTION_676();
  v136 = v1;
  v135 = v2;
  v150 = v0;
  v151 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v152 = v10;
  v137 = v11;
  v138 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_0(v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v133 = &v126 - v15;
  v134 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v132 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v148 = v19 - v18;
  v153 = v7;
  v144 = v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_3();
  v146 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  v26 = OUTLINED_FUNCTION_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v126 - v29;
  v157 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v155 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v126 - v34;
  v154 = *(v9 + v20[12]);
  sub_1B6220A64();
  LODWORD(v149) = sub_1B6221934();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  OUTLINED_FUNCTION_245();
  v36 = swift_allocObject();
  v142 = xmmword_1B6227640;
  *(v36 + 16) = xmmword_1B6227640;
  v37 = (v9 + v20[14]);
  v39 = *v37;
  v38 = v37[1];
  v40 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1B6035A98();
  *(v36 + 64) = v41;
  v140 = v38;
  v141 = v39;
  *(v36 + 32) = v39;
  *(v36 + 40) = v38;
  v156 = v20;
  v42 = v20[9];
  sub_1B6220784();
  v158 = v9;
  v139 = v42;
  v43 = v9 + v42;
  sub_1B621D244();
  sub_1B621D634();
  v44 = OUTLINED_FUNCTION_518();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v39);
  v143 = v39;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B61540AC(v30, &qword_1EB924690);
    OUTLINED_FUNCTION_647();
    v47 = v40;
    v48 = v157;
    v49 = v41;
    v50 = v152;
  }

  else
  {
    v147 = v35;
    v51 = v152;
    v52 = sub_1B621D584();
    v43 = v53;
    OUTLINED_FUNCTION_10_6();
    (*(v54 + 8))(v30, v39);
    OUTLINED_FUNCTION_647();
    v47 = v40;
    v49 = v41;
    if (v43)
    {
      *v46 = v52;
      v50 = v51;
      v48 = v157;
      v35 = v147;
      goto LABEL_7;
    }

    v50 = v51;
    v48 = v157;
    v35 = v147;
  }

  OUTLINED_FUNCTION_250(v46);
LABEL_7:
  *(v36 + 80) = v43;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_646();
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  v55 = OUTLINED_FUNCTION_493();
  v56 = v150;
  v151(v55);
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_516();
    v58(v57);
    goto LABEL_30;
  }

  v151 = 0;
  LODWORD(v150) = sub_1B6221924();
  OUTLINED_FUNCTION_245();
  v59 = swift_allocObject();
  *(v59 + 16) = v142;
  *(v59 + 56) = v47;
  *(v59 + 64) = v49;
  *(v59 + 32) = v141;
  *(v59 + 40) = v140;
  swift_bridgeObjectRetain_n();
  v60 = v128;
  sub_1B621D244();
  v61 = v60;
  v62 = __swift_getEnumTagSinglePayload(v60, 1, v143);
  v127 = v49;
  if (v62 == 1)
  {
    sub_1B61540AC(v60, &qword_1EB924690);
    v63 = (v59 + 72);
    *(v59 + 96) = v47;
    *(v59 + 104) = v49;
    v64 = v48;
  }

  else
  {
    v50 = v60;
    v149 = sub_1B621D584();
    v61 = v65;
    OUTLINED_FUNCTION_10_6();
    v66 = OUTLINED_FUNCTION_568();
    v67(v66);
    v63 = (v59 + 72);
    *(v59 + 96) = v47;
    *(v59 + 104) = v49;
    if (v61)
    {
      *v63 = v149;
      v64 = v157;
      goto LABEL_15;
    }

    v64 = v157;
  }

  OUTLINED_FUNCTION_250(v63);
LABEL_15:
  *(v59 + 80) = v61;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_646();
  v147 = v35;
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v68 = sub_1B6220B34();
  __swift_project_value_buffer(v68, qword_1EDAC2AB0);
  v69 = v129;
  sub_1B603AA48(v158, v129, v153);
  v70 = sub_1B6220B14();
  v71 = sub_1B62217F4();
  v72 = OUTLINED_FUNCTION_569();
  if (os_log_type_enabled(v72, v73))
  {
    OUTLINED_FUNCTION_9_3();
    v74 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_283(v75);
    *v74 = 136446210;
    v76 = (v69 + v156[14]);
    v78 = *v76;
    v77 = v76[1];
    sub_1B6220784();
    sub_1B61540AC(v69, v153);
    v79 = sub_1B602EEB0(v78, v77, v159);
    v64 = v157;

    *(v74 + 4) = v79;
    _os_log_impl(&dword_1B6020000, v70, v71, "Created response model for request: %{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v80 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v80);
    v81 = OUTLINED_FUNCTION_106_0();
    MEMORY[0x1B8C91C90](v81);
  }

  else
  {

    sub_1B61540AC(v69, v153);
  }

  v82 = v131;
  LODWORD(v150) = sub_1B6221924();
  v83 = v155;
  (*(v155 + 16))(v82, v158 + v156[13], v64);
  OUTLINED_FUNCTION_245();
  v84 = swift_allocObject();
  *(v84 + 16) = v142;
  v85 = MEMORY[0x1E69E6158];
  v86 = v127;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 64) = v86;
  v87 = v140;
  *(v84 + 32) = v141;
  *(v84 + 40) = v87;
  v88 = v130;
  sub_1B621D244();
  v89 = v88;
  v90 = OUTLINED_FUNCTION_22();
  if (__swift_getEnumTagSinglePayload(v90, v91, v143) == 1)
  {
    sub_1B61540AC(v88, &qword_1EB924690);
    v92 = (v84 + 72);
    *(v84 + 96) = v85;
    *(v84 + 104) = v86;
LABEL_25:
    v97 = v157;
    OUTLINED_FUNCTION_250(v92);
    goto LABEL_26;
  }

  v93 = sub_1B621D584();
  v89 = v94;
  OUTLINED_FUNCTION_10_6();
  v95 = OUTLINED_FUNCTION_361();
  v96(v95);
  v92 = (v84 + 72);
  *(v84 + 96) = v85;
  *(v84 + 104) = v86;
  if (!v89)
  {
    v83 = v155;
    goto LABEL_25;
  }

  *v92 = v93;
  v83 = v155;
  v97 = v157;
LABEL_26:
  *(v84 + 80) = v89;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_347();
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  v100 = *(v83 + 8);
  v98 = v83 + 8;
  v99 = v100;
  v100(v82, v97);
  sub_1B621D8D4();
  v101 = v158;
  sub_1B621D7D4();
  v103 = v102;
  sub_1B603AA48(v101, v146, v153);
  v104 = sub_1B6220B14();
  v105 = sub_1B62217D4();
  v106 = OUTLINED_FUNCTION_569();
  if (os_log_type_enabled(v106, v107))
  {
    OUTLINED_FUNCTION_110();
    v108 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    v109 = swift_slowAlloc();
    v110 = v146;
    v159[0] = v109;
    *v108 = 136446466;
    v111 = Double.humanReadableDescription.getter(v103);
    v155 = v98;
    v113 = sub_1B602EEB0(v111, v112, v159);

    *(v108 + 4) = v113;
    *(v108 + 12) = 2082;
    sub_1B6220784();
    sub_1B61540AC(v110, v153);
    v114 = OUTLINED_FUNCTION_373();
    v117 = sub_1B602EEB0(v114, v115, v116);

    *(v108 + 14) = v117;
    _os_log_impl(&dword_1B6020000, v104, v105, "Fetch took: %{public}s for request: %{public}s", v108, 0x16u);
    OUTLINED_FUNCTION_121_0();
    swift_arrayDestroy();
    v118 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v118);
    v119 = OUTLINED_FUNCTION_106_0();
    MEMORY[0x1B8C91C90](v119);
  }

  else
  {

    sub_1B61540AC(v146, v153);
  }

  v120 = *(v158 + v156[15]);
  v121 = v133;
  sub_1B61531FC(v152, v133);
  v136(0);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
  v120(v121);
  sub_1B61540AC(v121, v137);
  (*(v132 + 8))(v148, v134);
  v99(v147, v157);
LABEL_30:
  OUTLINED_FUNCTION_677();
}

void sub_1B614146C()
{
  OUTLINED_FUNCTION_676();
  v143 = v2;
  v144 = v3;
  v5 = v4;
  v7 = v6;
  v142 = v0;
  OUTLINED_FUNCTION_576();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v132 = v9;
  v133 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v139 = v11 - v10;
  v140 = v5;
  v145 = v7;
  v12 = OUTLINED_FUNCTION_1_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v15);
  v128 = v125 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  v18 = OUTLINED_FUNCTION_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v125 - v21;
  v146 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v148 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v125 - v26;
  v28 = *(v1 + v13[12]);
  v149 = v27;
  sub_1B6220A64();
  v141 = sub_1B6221934();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678);
  OUTLINED_FUNCTION_245();
  v29 = swift_allocObject();
  v136 = xmmword_1B6227640;
  *(v29 + 16) = xmmword_1B6227640;
  v30 = (v1 + v13[14]);
  v32 = *v30;
  v31 = v30[1];
  v33 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1B6035A98();
  *(v29 + 64) = v34;
  *(v29 + 32) = v32;
  *(v29 + 40) = v31;
  v35 = v31;
  v147 = v13;
  v36 = v13[9];
  v134 = v35;
  v135 = v32;
  sub_1B6220784();
  v150 = v1;
  v37 = v1 + v36;
  sub_1B621D244();
  v38 = sub_1B621D634();
  v39 = OUTLINED_FUNCTION_392();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v38);
  v137 = v38;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B61540AC(v22, &qword_1EB924690);
    v42 = (v29 + 72);
    *(v29 + 96) = v33;
    *(v29 + 104) = v34;
    v43 = v34;
    v44 = v148;
  }

  else
  {
    v45 = v36;
    v46 = v28;
    v47 = v148;
    v126 = sub_1B621D584();
    v37 = v48;
    OUTLINED_FUNCTION_10_6();
    (*(v49 + 8))(v22, v38);
    v42 = (v29 + 72);
    *(v29 + 96) = v33;
    *(v29 + 104) = v34;
    v43 = v34;
    if (v37)
    {
      *v42 = v126;
      v44 = v47;
      v28 = v46;
      v36 = v45;
      goto LABEL_7;
    }

    v44 = v47;
    v28 = v46;
    v36 = v45;
  }

  OUTLINED_FUNCTION_250(v42);
LABEL_7:
  *(v29 + 80) = v37;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_646();
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  v50 = OUTLINED_FUNCTION_493();
  v51 = v142;
  v55 = sub_1B610E2F0(v50, v52, v53, v54, v143, v144);
  if (v51)
  {
    (*(v44 + 8))(v149, v146);
    goto LABEL_29;
  }

  v56 = v28;
  v143 = 0;
  v144 = v55;
  sub_1B6221924();
  OUTLINED_FUNCTION_245();
  v57 = swift_allocObject();
  *(v57 + 16) = v136;
  *(v57 + 56) = v33;
  *(v57 + 64) = v43;
  *(v57 + 32) = v135;
  *(v57 + 40) = v134;
  swift_bridgeObjectRetain_n();
  v58 = v150 + v36;
  v59 = v127;
  sub_1B621D244();
  v60 = OUTLINED_FUNCTION_22();
  v61 = v137;
  if (__swift_getEnumTagSinglePayload(v60, v62, v137) == 1)
  {
    sub_1B61540AC(v59, &qword_1EB924690);
    v63 = (v57 + 72);
    *(v57 + 96) = v33;
    *(v57 + 104) = v43;
    v64 = v43;
  }

  else
  {
    v65 = sub_1B621D584();
    v58 = v66;
    OUTLINED_FUNCTION_10_6();
    (*(v67 + 8))(v68, v61);
    v63 = (v57 + 72);
    *(v57 + 96) = v33;
    *(v57 + 104) = v43;
    v64 = v43;
    if (v58)
    {
      *v63 = v65;
      v69 = v145;
      v70 = v56;
      goto LABEL_14;
    }
  }

  v69 = v145;
  v70 = v56;
  OUTLINED_FUNCTION_250(v63);
LABEL_14:
  *(v57 + 80) = v58;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_646();
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v71 = sub_1B6220B34();
  v72 = __swift_project_value_buffer(v71, qword_1EDAC2AB0);
  v73 = v128;
  sub_1B603AA48(v150, v128, v69);
  v74 = sub_1B6220B14();
  v75 = sub_1B62217F4();
  v76 = os_log_type_enabled(v74, v75);
  v125[1] = v70;
  if (v76)
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_81_0();
    v77 = swift_slowAlloc();
    v151[0] = v77;
    *v36 = 136446210;
    v78 = (v73 + v147[14]);
    v79 = v73;
    v81 = *v78;
    v80 = v78[1];
    sub_1B6220784();
    sub_1B61540AC(v79, v145);
    v82 = sub_1B602EEB0(v81, v80, v151);

    *(v36 + 4) = v82;
    OUTLINED_FUNCTION_91_0();
    _os_log_impl(v83, v84, v85, v86, v87, v88);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v89 = OUTLINED_FUNCTION_118_0();
    MEMORY[0x1B8C91C90](v89);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    v90 = OUTLINED_FUNCTION_6_6();
    sub_1B61540AC(v90, v91);
  }

  v92 = v130;
  LODWORD(v142) = sub_1B6221924();
  v93 = v148;
  v94 = v150;
  (*(v148 + 16))(v92, v150 + v147[13], v146);
  OUTLINED_FUNCTION_245();
  v95 = swift_allocObject();
  *(v95 + 16) = v136;
  *(v95 + 56) = MEMORY[0x1E69E6158];
  *(v95 + 64) = v64;
  v96 = v134;
  *(v95 + 32) = v135;
  *(v95 + 40) = v96;
  v97 = v94 + v36;
  v98 = v129;
  sub_1B621D244();
  if (__swift_getEnumTagSinglePayload(v98, 1, v137) == 1)
  {
    sub_1B61540AC(v98, &qword_1EB924690);
    OUTLINED_FUNCTION_647();
LABEL_24:
    OUTLINED_FUNCTION_250(v99);
    goto LABEL_25;
  }

  v100 = sub_1B621D584();
  v97 = v101;
  OUTLINED_FUNCTION_10_6();
  v102 = OUTLINED_FUNCTION_321();
  v103(v102);
  OUTLINED_FUNCTION_647();
  if (!v97)
  {
    v93 = v148;
    goto LABEL_24;
  }

  *v99 = v100;
  v93 = v148;
LABEL_25:
  *(v95 + 80) = v97;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_347();
  sub_1B6220A54();
  OUTLINED_FUNCTION_605();
  v104 = *(v93 + 8);
  v148 = v93 + 8;
  v104(v92, v146);
  sub_1B621D8D4();
  v105 = v150;
  sub_1B621D7D4();
  v107 = v106;
  v108 = v131;
  sub_1B603AA48(v105, v131, v145);
  v109 = sub_1B6220B14();
  v110 = sub_1B62217D4();
  v111 = OUTLINED_FUNCTION_569();
  if (os_log_type_enabled(v111, v112))
  {
    OUTLINED_FUNCTION_110();
    v113 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    v151[0] = swift_slowAlloc();
    *v113 = 136446466;
    v114 = Double.humanReadableDescription.getter(v107);
    sub_1B602EEB0(v114, v115, v151);
    OUTLINED_FUNCTION_502();

    *(v113 + 4) = v72;
    *(v113 + 12) = 2082;
    sub_1B6220784();
    sub_1B61540AC(v108, v145);
    v116 = OUTLINED_FUNCTION_337();
    v119 = sub_1B602EEB0(v116, v117, v118);

    *(v113 + 14) = v119;
    _os_log_impl(&dword_1B6020000, v109, v110, "Fetch took: %{public}s for request: %{public}s", v113, 0x16u);
    OUTLINED_FUNCTION_121_0();
    swift_arrayDestroy();
    v120 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v120);
    v121 = OUTLINED_FUNCTION_106_0();
    MEMORY[0x1B8C91C90](v121);
  }

  else
  {

    v122 = OUTLINED_FUNCTION_304();
    sub_1B61540AC(v122, v123);
  }

  v124 = *(v150 + v147[15]);
  v151[0] = v144;
  sub_1B6220784();
  v124(v151);

  (*(v132 + 8))(v139, v133);
  v104(v149, v146);
LABEL_29:
  OUTLINED_FUNCTION_677();
}

uint64_t sub_1B6141E40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v47 = sub_1B621F484();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B621F4D4();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1B621D8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v49[3] = sub_1B621EEA4();
  v49[4] = v19;
  v49[5] = v20;
  sub_1B621F474();
  v21 = v46;
  sub_1B621F464();
  if (v21)
  {
    (*(v5 + 8))(v7, v47);

    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v47);
    v23 = v48;
    v24 = *(v48 + 16);
    v25 = v43;
    v47 = v12;
    v24(v43, v12, v8);
    type metadata accessor for DailySummaryModelFactory();
    swift_initStackObject();
    sub_1B610936C(v44);
    v26 = *(v23 + 8);
    v48 = v23 + 8;
    v46 = v26;
    v26(v25, v8);
    v27 = v45;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v29 = v28;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v31 = sub_1B6220B14();
    v32 = sub_1B62217D4();
    v33 = v13;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v43 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      v44 = v18;
      v37 = v36;
      v49[0] = v36;
      *v35 = 136446210;
      v38 = Double.humanReadableDescription.getter(v29);
      v40 = sub_1B602EEB0(v38, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B6020000, v31, v32, "Flatbuffer decoding took: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1B8C91C90](v37, -1, -1);
      MEMORY[0x1B8C91C90](v35, -1, -1);

      v41 = *(v14 + 8);
      v41(v45, v33);
      v46(v47, v43);

      return (v41)(v44, v33);
    }

    else
    {

      v42 = *(v14 + 8);
      v42(v27, v13);
      v46(v47, v8);

      return (v42)(v18, v13);
    }
  }
}

void *sub_1B6142358@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a3;
  v6 = sub_1B621F484();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_1B621D8F4();
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37[-v14];
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v44 = sub_1B621EEA4();
  v45 = v16;
  v46 = v17;
  sub_1B621F474();
  sub_1B60C2410();
  sub_1B60C2468();
  sub_1B621F464();
  if (v3)
  {
    (*(v7 + 8))(v9, v6);

    return (*(v10 + 8))(v15, v41);
  }

  else
  {
    v18 = v12;
    v19 = v40;
    (*(v7 + 8))(v9, v6);

    sub_1B6147908();
    sub_1B621D8D4();
    sub_1B621D7D4();
    v22 = v21;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v23 = sub_1B6220B34();
    __swift_project_value_buffer(v23, qword_1EDAC2AB0);
    v24 = sub_1B6220B14();
    v25 = sub_1B62217D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v25;
      v27 = v26;
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136446210;
      v29 = Double.humanReadableDescription.getter(v22);
      v39 = v18;
      v31 = v24;
      v32 = sub_1B602EEB0(v29, v30, &v42);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1B6020000, v31, v38, "Flatbuffer decoding took: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B8C91C90](v28, -1, -1);
      MEMORY[0x1B8C91C90](v27, -1, -1);

      v33 = v40;
      v34 = *(v10 + 8);
      v35 = v39;
    }

    else
    {
      v33 = v19;

      v34 = *(v10 + 8);
      v35 = v18;
    }

    v36 = v41;
    v34(v35, v41);

    v34(v15, v36);
    return memcpy(v33, __src, 0xB0uLL);
  }
}

_BYTE *sub_1B61427A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B621F484();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_1B621D8F4();
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34[-v13];
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v39[4] = sub_1B621EEA4();
  v39[5] = v15;
  v39[6] = v16;
  sub_1B621F474();
  sub_1B60C2410();
  sub_1B60C2468();
  sub_1B621F464();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);

    (*(v9 + 8))(v14, v38);
  }

  else
  {
    (*(v6 + 8))(v8, v5);

    v8 = sub_1B61479F8();
    v18 = v11;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v20 = v19;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v21 = sub_1B6220B34();
    __swift_project_value_buffer(v21, qword_1EDAC2AB0);
    v22 = sub_1B6220B14();
    v23 = sub_1B62217D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = v18;
      v25 = v24;
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v25 = 136446210;
      v26 = Double.humanReadableDescription.getter(v20);
      v35 = v23;
      v28 = sub_1B602EEB0(v26, v27, v39);

      v29 = v25;
      *(v25 + 4) = v28;
      _os_log_impl(&dword_1B6020000, v22, v35, "Flatbuffer decoding took: %{public}s", v25, 0xCu);
      v30 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1B8C91C90](v30, -1, -1);
      MEMORY[0x1B8C91C90](v29, -1, -1);

      v31 = *(v9 + 8);
      v32 = v37;
    }

    else
    {

      v31 = *(v9 + 8);
      v32 = v18;
    }

    v33 = v38;
    v31(v32, v38);

    v31(v14, v33);
  }

  return v8;
}

uint64_t sub_1B6142BB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a3;
  v6 = sub_1B621F484();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B621D8F4();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v37[4] = sub_1B621EEA4();
  v37[5] = v16;
  v37[6] = v17;
  sub_1B621F474();
  sub_1B60C2410();
  sub_1B60C2468();
  sub_1B621F464();
  if (v3)
  {
    (*(v7 + 8))(v9, v6);

    return (*(v10 + 8))(v15, v36);
  }

  else
  {
    (*(v7 + 8))(v9, v6);

    sub_1B6147890();
    v19 = v12;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v21 = v20;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v22 = sub_1B6220B34();
    __swift_project_value_buffer(v22, qword_1EDAC2AB0);
    v23 = sub_1B6220B14();
    v24 = sub_1B62217D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v19;
      v26 = v25;
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v26 = 136446210;
      v27 = Double.humanReadableDescription.getter(v21);
      v29 = sub_1B602EEB0(v27, v28, v37);

      *(v26 + 4) = v29;
      _os_log_impl(&dword_1B6020000, v23, v24, "Flatbuffer decoding took: %{public}s", v26, 0xCu);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1B8C91C90](v30, -1, -1);
      MEMORY[0x1B8C91C90](v26, -1, -1);

      v31 = *(v10 + 8);
      v32 = v35;
    }

    else
    {

      v31 = *(v10 + 8);
      v32 = v19;
    }

    v33 = v36;
    v31(v32, v36);

    return (v31)(v15, v33);
  }
}

uint64_t sub_1B6142FB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v47 = sub_1B621F484();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B621EE54();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1B621D8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v49[3] = sub_1B621EEA4();
  v49[4] = v19;
  v49[5] = v20;
  sub_1B621F474();
  v21 = v46;
  sub_1B621F464();
  if (v21)
  {
    (*(v5 + 8))(v7, v47);

    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v47);
    v23 = v48;
    v24 = *(v48 + 16);
    v25 = v43;
    v47 = v12;
    v24(v43, v12, v8);
    type metadata accessor for DailyStatisticsModelFactory();
    swift_initStackObject();
    sub_1B60C925C(v44);
    v26 = *(v23 + 8);
    v48 = v23 + 8;
    v46 = v26;
    v26(v25, v8);
    v27 = v45;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v29 = v28;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v31 = sub_1B6220B14();
    v32 = sub_1B62217D4();
    v33 = v13;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v43 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      v44 = v18;
      v37 = v36;
      v49[0] = v36;
      *v35 = 136446210;
      v38 = Double.humanReadableDescription.getter(v29);
      v40 = sub_1B602EEB0(v38, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B6020000, v31, v32, "Flatbuffer decoding took: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1B8C91C90](v37, -1, -1);
      MEMORY[0x1B8C91C90](v35, -1, -1);

      v41 = *(v14 + 8);
      v41(v45, v33);
      v46(v47, v43);

      return (v41)(v44, v33);
    }

    else
    {

      v42 = *(v14 + 8);
      v42(v27, v13);
      v46(v47, v8);

      return (v42)(v18, v13);
    }
  }
}

uint64_t sub_1B61434CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v47 = sub_1B621F484();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B621DCF4();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1B621D8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v49[3] = sub_1B621EEA4();
  v49[4] = v19;
  v49[5] = v20;
  sub_1B621F474();
  v21 = v46;
  sub_1B621F464();
  if (v21)
  {
    (*(v5 + 8))(v7, v47);

    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v47);
    v23 = v48;
    v24 = *(v48 + 16);
    v25 = v43;
    v47 = v12;
    v24(v43, v12, v8);
    type metadata accessor for HourlyStatisticsModelFactory();
    swift_initStackObject();
    sub_1B6090E24(v44);
    v26 = *(v23 + 8);
    v48 = v23 + 8;
    v46 = v26;
    v26(v25, v8);
    v27 = v45;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v29 = v28;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v31 = sub_1B6220B14();
    v32 = sub_1B62217D4();
    v33 = v13;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v43 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      v44 = v18;
      v37 = v36;
      v49[0] = v36;
      *v35 = 136446210;
      v38 = Double.humanReadableDescription.getter(v29);
      v40 = sub_1B602EEB0(v38, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B6020000, v31, v32, "Flatbuffer decoding took: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1B8C91C90](v37, -1, -1);
      MEMORY[0x1B8C91C90](v35, -1, -1);

      v41 = *(v14 + 8);
      v41(v45, v33);
      v46(v47, v43);

      return (v41)(v44, v33);
    }

    else
    {

      v42 = *(v14 + 8);
      v42(v27, v13);
      v46(v47, v8);

      return (v42)(v18, v13);
    }
  }
}

uint64_t sub_1B61439E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v47 = sub_1B621F484();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B621E194();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1B621D8F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v49[3] = sub_1B621EEA4();
  v49[4] = v19;
  v49[5] = v20;
  sub_1B621F474();
  v21 = v46;
  sub_1B621F464();
  if (v21)
  {
    (*(v5 + 8))(v7, v47);

    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v5 + 8))(v7, v47);
    v23 = v48;
    v24 = *(v48 + 16);
    v25 = v43;
    v47 = v12;
    v24(v43, v12, v8);
    type metadata accessor for MonthlyStatisticsModelFactory();
    swift_initStackObject();
    sub_1B6109E50(v44);
    v26 = *(v23 + 8);
    v48 = v23 + 8;
    v46 = v26;
    v26(v25, v8);
    v27 = v45;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v29 = v28;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v31 = sub_1B6220B14();
    v32 = sub_1B62217D4();
    v33 = v13;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v43 = v8;
      v35 = v34;
      v36 = swift_slowAlloc();
      v44 = v18;
      v37 = v36;
      v49[0] = v36;
      *v35 = 136446210;
      v38 = Double.humanReadableDescription.getter(v29);
      v40 = sub_1B602EEB0(v38, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B6020000, v31, v32, "Flatbuffer decoding took: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1B8C91C90](v37, -1, -1);
      MEMORY[0x1B8C91C90](v35, -1, -1);

      v41 = *(v14 + 8);
      v41(v45, v33);
      v46(v47, v43);

      return (v41)(v44, v33);
    }

    else
    {

      v42 = *(v14 + 8);
      v42(v27, v13);
      v46(v47, v8);

      return (v42)(v18, v13);
    }
  }
}

uint64_t sub_1B6143EFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for Weather();
  MEMORY[0x1EEE9AC00](v5);
  v73 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1B621F484();
  v7 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B621E3D4();
  v75 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v72 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v71 - v13;
  v15 = sub_1B621D8F4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = v71 - v19;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v80[1] = sub_1B621EEA4();
  v80[2] = v20;
  v80[3] = v21;
  sub_1B621F474();
  v22 = v78;
  sub_1B621F464();
  if (v22)
  {
    (*(v7 + 8))(v9, v77);

    return (*(v16 + 8))(v79, v15);
  }

  else
  {
    v71[1] = 0;
    (*(v7 + 8))(v9, v77);
    v24 = v75;
    v25 = *(v75 + 16);
    v26 = v72;
    v78 = v14;
    v25(v72, v14, v10);
    v27 = type metadata accessor for AirQuality();
    v28 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v27);
    v29 = v5[5];
    v30 = type metadata accessor for CurrentWeather();
    __swift_storeEnumTagSinglePayload(v28 + v29, 1, 1, v30);
    v31 = v5[6];
    v32 = type metadata accessor for DailyForecast();
    __swift_storeEnumTagSinglePayload(v28 + v31, 1, 1, v32);
    v33 = v5[7];
    v34 = type metadata accessor for HourlyForecast();
    __swift_storeEnumTagSinglePayload(v28 + v33, 1, 1, v34);
    v35 = v5[8];
    v36 = type metadata accessor for PeriodicForecasts();
    __swift_storeEnumTagSinglePayload(v28 + v35, 1, 1, v36);
    v37 = v5[9];
    HourForecast = type metadata accessor for NextHourForecast();
    __swift_storeEnumTagSinglePayload(v28 + v37, 1, 1, HourForecast);
    v39 = v5[10];
    v40 = type metadata accessor for LocationInfo();
    __swift_storeEnumTagSinglePayload(v28 + v39, 1, 1, v40);
    v41 = v5[11];
    v42 = type metadata accessor for MarineForecast();
    __swift_storeEnumTagSinglePayload(v28 + v41, 1, 1, v42);
    v43 = v5[12];
    v44 = type metadata accessor for News();
    __swift_storeEnumTagSinglePayload(v28 + v43, 1, 1, v44);
    v45 = v5[13];
    v46 = type metadata accessor for TideEvents();
    __swift_storeEnumTagSinglePayload(v28 + v45, 1, 1, v46);
    v47 = v5[14];
    v48 = type metadata accessor for WeatherAlerts();
    __swift_storeEnumTagSinglePayload(v28 + v47, 1, 1, v48);
    v49 = v5[15];
    v50 = type metadata accessor for WeatherChange();
    __swift_storeEnumTagSinglePayload(v28 + v49, 1, 1, v50);
    v51 = v5[16];
    v52 = type metadata accessor for WeatherComparisons();
    __swift_storeEnumTagSinglePayload(v28 + v51, 1, 1, v52);
    *(v28 + v5[17]) = 0;
    type metadata accessor for WeatherDaemonModelFactory();
    swift_allocObject();
    v53 = v73;
    sub_1B604A074();

    v56 = *(v24 + 8);
    v54 = v24 + 8;
    v55 = v56;
    v56(v26, v10);
    sub_1B6153250();
    sub_1B614E95C(v53, v28);
    sub_1B621D8D4();
    sub_1B621D7D4();
    v58 = v57;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v59 = sub_1B6220B34();
    __swift_project_value_buffer(v59, qword_1EDAC2AB0);
    v60 = sub_1B6220B14();
    v61 = sub_1B62217D4();
    v62 = v16;
    if (os_log_type_enabled(v60, v61))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77 = v10;
      v65 = v64;
      v80[0] = v64;
      *v63 = 136446210;
      v66 = Double.humanReadableDescription.getter(v58);
      v68 = sub_1B602EEB0(v66, v67, v80);
      v75 = v54;
      v69 = v68;

      *(v63 + 4) = v69;
      _os_log_impl(&dword_1B6020000, v60, v61, "Flatbuffer decoding took: %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1B8C91C90](v65, -1, -1);
      MEMORY[0x1B8C91C90](v63, -1, -1);

      v70 = *(v62 + 8);
      v70(v76, v15);
      v55(v78, v77);
    }

    else
    {

      v70 = *(v16 + 8);
      v70(v76, v15);
      v55(v78, v10);
    }

    return (v70)(v79, v15);
  }
}

uint64_t sub_1B614463C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a3;
  v5 = sub_1B621F484();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B621D8F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v44[5] = sub_1B621EEA4();
  v44[6] = v16;
  v44[7] = v17;
  sub_1B621F474();
  sub_1B60C2410();
  sub_1B60C2468();
  v18 = v43;
  sub_1B621F464();
  if (v18)
  {
    (*(v6 + 8))(v8, v5);

    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    v20 = v10;
    v43 = v9;
    v21 = v42;
    (*(v6 + 8))(v8, v5);

    sub_1B6147980();
    v22 = v12;
    sub_1B621D8D4();
    v23 = v15;
    sub_1B621D7D4();
    v25 = v24;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6220B34();
    __swift_project_value_buffer(v26, qword_1EDAC2AB0);
    v27 = sub_1B6220B14();
    v28 = sub_1B62217D4();
    v29 = v20;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      v40 = v23;
      v31 = v44[0];
      *v30 = 136446210;
      v32 = Double.humanReadableDescription.getter(v25);
      v41 = v22;
      v34 = v27;
      v35 = sub_1B602EEB0(v32, v33, v44);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1B6020000, v34, v28, "Flatbuffer decoding took: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8C91C90](v31, -1, -1);
      MEMORY[0x1B8C91C90](v30, -1, -1);

      v36 = *(v29 + 8);
      v21 = v42;
      v37 = v43;
      v36(v41, v43);

      v38 = v40;
    }

    else
    {

      v36 = *(v20 + 8);
      v39 = v22;
      v37 = v43;
      v36(v39, v43);

      v38 = v23;
    }

    result = (v36)(v38, v37);
    *v21 = v44[1];
  }

  return result;
}

char *sub_1B6144AA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B621F484();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B621E404();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = sub_1B621D8F4();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v40 - v18;
  sub_1B621D8D4();
  sub_1B604D8AC(a1, a2);
  v48[1] = sub_1B621EEA4();
  v48[2] = v19;
  v48[3] = v20;
  sub_1B621F474();
  v21 = v44;
  sub_1B621F464();
  if (v21)
  {
    (*(v5 + 8))(v7, v4);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v22 = v43;
    (*(v43 + 16))(v10, v13, v8);
    v7 = sub_1B60EEE78(v10);
    v24 = v16;
    sub_1B621D8D4();
    v25 = v47;
    sub_1B621D7D4();
    v27 = v26;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v44 = v13;
    v28 = sub_1B6220B34();
    __swift_project_value_buffer(v28, qword_1EDAC2AB0);
    v29 = sub_1B6220B14();
    v30 = sub_1B62217D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = v8;
      v32 = v31;
      v48[0] = swift_slowAlloc();
      v33 = v48[0];
      *v32 = 136446210;
      v34 = Double.humanReadableDescription.getter(v27);
      v41 = v24;
      v36 = sub_1B602EEB0(v34, v35, v48);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1B6020000, v29, v30, "Flatbuffer decoding took: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1B8C91C90](v33, -1, -1);
      MEMORY[0x1B8C91C90](v32, -1, -1);

      v37 = v46;
      v38 = *(v45 + 8);
      v38(v41, v46);
      (*(v22 + 8))(v44, v42);

      v39 = v47;
    }

    else
    {

      v37 = v46;
      v38 = *(v45 + 8);
      v38(v24, v46);
      (*(v22 + 8))(v44, v8);

      v39 = v25;
    }

    v38(v39, v37);
  }

  return v7;
}

void *sub_1B6144FA0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v31 = a1;
  v30 = a3;
  v3 = sub_1B621D294();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  sub_1B621D8D4();
  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  *v6 = sub_1B60AC300;
  v6[1] = 0;
  (*(v4 + 104))(v6, *MEMORY[0x1E6967F20], v3);
  sub_1B621D2A4();
  sub_1B6153948();
  v14 = v33;
  sub_1B621D2B4();
  if (v14)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v33 = v7;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v17 = v16;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v18 = sub_1B6220B34();
    __swift_project_value_buffer(v18, qword_1EDAC2AB0);
    v19 = sub_1B6220B14();
    v20 = sub_1B62217D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v10;
      v22 = v21;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v22 = 136446210;
      v23 = Double.humanReadableDescription.getter(v17);
      v25 = sub_1B602EEB0(v23, v24, &v34);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_1B6020000, v19, v20, "JSON decoding took: %{public}s", v22, 0xCu);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v22, -1, -1);

      v27 = *(v8 + 8);
      v28 = v32;
    }

    else
    {

      v27 = *(v8 + 8);
      v28 = v10;
    }

    v29 = v33;
    v27(v28, v33);
    v27(v13, v29);
    return memcpy(v30, __src, 0xB0uLL);
  }
}

uint64_t sub_1B614539C(uint64_t a1, char *a2)
{
  v31 = a2;
  v30 = a1;
  v2 = sub_1B621D294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B621D8F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1B621D8D4();
  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  *v5 = sub_1B60AC300;
  v5[1] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E6967F20], v2);
  sub_1B621D2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110);
  sub_1B6153EA8();
  v13 = v32;
  sub_1B621D2B4();
  if (v13)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v32 = v6;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v16 = v15;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v17 = sub_1B6220B34();
    __swift_project_value_buffer(v17, qword_1EDAC2AB0);
    v18 = sub_1B6220B14();
    v19 = sub_1B62217D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v9;
      v21 = v20;
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v21 = 136446210;
      v22 = Double.humanReadableDescription.getter(v16);
      v24 = sub_1B602EEB0(v22, v23, v33);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_1B6020000, v18, v19, "JSON decoding took: %{public}s", v21, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1B8C91C90](v25, -1, -1);
      MEMORY[0x1B8C91C90](v21, -1, -1);

      v26 = *(v7 + 8);
      v27 = v31;
    }

    else
    {

      v26 = *(v7 + 8);
      v27 = v9;
    }

    v28 = v32;
    v26(v27, v32);
    v26(v12, v28);
    return v33[1];
  }
}

void sub_1B6145758()
{
  OUTLINED_FUNCTION_676();
  v48 = v2;
  v49 = v1;
  v45 = v3;
  v46 = v4;
  v44 = v5;
  v50 = v6;
  v47 = v7;
  v8 = sub_1B621D294();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = (v13 - v12);
  v15 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  sub_1B621D8D4();
  sub_1B621D2D4();
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  sub_1B621D2C4();
  *v14 = sub_1B60AC300;
  v14[1] = 0;
  (*(v10 + 104))(v14, *MEMORY[0x1E6967F20], v8);
  sub_1B621D2A4();
  v44(0);
  sub_1B61532A0(v45, v46);
  sub_1B621D2B4();
  if (v0)
  {
    v25 = OUTLINED_FUNCTION_465();
    v26(v25);
  }

  else
  {
    v50 = v17;
    v51 = v15;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v28 = v27;
    v29 = v21;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v30 = sub_1B6220B34();
    __swift_project_value_buffer(v30, qword_1EDAC2AB0);
    v31 = sub_1B6220B14();
    v32 = sub_1B62217D4();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_9_3();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136446210;
      v35 = Double.humanReadableDescription.getter(v28);
      v49 = v29;
      v37 = sub_1B602EEB0(v35, v36, &v52);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1B6020000, v31, v32, "JSON decoding took: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v38 = OUTLINED_FUNCTION_118_0();
      MEMORY[0x1B8C91C90](v38);
      v39 = OUTLINED_FUNCTION_106_0();
      MEMORY[0x1B8C91C90](v39);

      v40 = v49;
      v41 = *(v50 + 8);
    }

    else
    {

      v41 = *(v50 + 8);
      v40 = v21;
    }

    v42 = v51;
    v41(v40, v51);
    v41(v24, v42);
  }

  OUTLINED_FUNCTION_677();
}

uint64_t sub_1B6145ABC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v30 = a3;
  v31 = a1;
  v3 = sub_1B621D294();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  sub_1B621D8D4();
  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  *v6 = sub_1B60AC300;
  v6[1] = 0;
  (*(v4 + 104))(v6, *MEMORY[0x1E6967F20], v3);
  sub_1B621D2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251B8);
  sub_1B6151EFC(&qword_1EB9251B0, &qword_1EB9251B8);
  v14 = v33;
  sub_1B621D2B4();
  if (v14)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v33 = v7;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v17 = v16;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v18 = sub_1B6220B34();
    __swift_project_value_buffer(v18, qword_1EDAC2AB0);
    v19 = sub_1B6220B14();
    v20 = sub_1B62217D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = v10;
      v22 = v21;
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v22 = 136446210;
      v23 = Double.humanReadableDescription.getter(v17);
      v25 = sub_1B602EEB0(v23, v24, v34);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_1B6020000, v19, v20, "JSON decoding took: %{public}s", v22, 0xCu);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v22, -1, -1);

      v27 = *(v8 + 8);
      v28 = v32;
    }

    else
    {

      v27 = *(v8 + 8);
      v28 = v10;
    }

    v29 = v33;
    v27(v28, v33);
    result = (v27)(v13, v29);
    *v30 = v34[1];
  }

  return result;
}

uint64_t sub_1B6145EB0(uint64_t a1, char *a2)
{
  v31 = a2;
  v30 = a1;
  v2 = sub_1B621D294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B621D8F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1B621D8D4();
  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  *v5 = sub_1B60AC300;
  v5[1] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E6967F20], v2);
  sub_1B621D2A4();
  sub_1B60EEC08();
  v13 = v32;
  sub_1B621D2B4();
  if (v13)
  {
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v32 = v6;
    sub_1B621D8D4();
    sub_1B621D7D4();
    v16 = v15;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v17 = sub_1B6220B34();
    __swift_project_value_buffer(v17, qword_1EDAC2AB0);
    v18 = sub_1B6220B14();
    v19 = sub_1B62217D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v9;
      v21 = v20;
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v21 = 136446210;
      v22 = Double.humanReadableDescription.getter(v16);
      v24 = sub_1B602EEB0(v22, v23, v33);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_1B6020000, v18, v19, "JSON decoding took: %{public}s", v21, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1B8C91C90](v25, -1, -1);
      MEMORY[0x1B8C91C90](v21, -1, -1);

      v26 = *(v7 + 8);
      v27 = v31;
    }

    else
    {

      v26 = *(v7 + 8);
      v27 = v9;
    }

    v28 = v32;
    v26(v27, v32);
    v26(v12, v28);
    return v33[1];
  }
}

uint64_t sub_1B6146258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v30 = a8;
  v11 = type metadata accessor for NetworkTelemetry();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v23 = sub_1B6220814();
  (*(*(v23 - 8) + 16))(v22, a1, v23);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
  sub_1B603AA48(v22, v19, &qword_1EB925E80);
  if (__swift_getEnumTagSinglePayload(v19, 1, v14) == 1)
  {
    sub_1B61540AC(v22, &qword_1EB925E80);
    v22 = v19;
  }

  else
  {
    sub_1B614E95C(v19, v16);
    v24 = (a7 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
    v25 = *(a7 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24);
    v26 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48)];
    sub_1B61531FC(v16, v13);
    *v27 = v30;
    v27[8] = a9 & 1;
    swift_storeEnumTagMultiPayload();
    (*(v26 + 16))(v13, v25, v26);
    sub_1B6153250();
    sub_1B6153250();
  }

  return sub_1B61540AC(v22, &qword_1EB925E80);
}

uint64_t sub_1B6146574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = a6;
  v29 = a5;
  v8 = type metadata accessor for NetworkTelemetry();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27[-v18];
  v20 = sub_1B6220814();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v11);
  sub_1B603AA48(v19, v16, &qword_1EB925E80);
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
  {
    sub_1B61540AC(v19, &qword_1EB925E80);
    v19 = v16;
  }

  else
  {
    sub_1B614E95C(v16, v13);
    v21 = (a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
    v22 = *(a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24);
    v23 = *(a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 32);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48)];
    sub_1B61531FC(v13, v10);
    v25 = v28 & 1;
    *v24 = v29;
    v24[8] = v25;
    swift_storeEnumTagMultiPayload();
    (*(v23 + 16))(v10, v22, v23);
    sub_1B6153250();
    sub_1B6153250();
  }

  return sub_1B61540AC(v19, &qword_1EB925E80);
}

uint64_t sub_1B6146894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = a6;
  v29 = a5;
  v8 = type metadata accessor for NetworkTelemetry();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27[-v18];
  v20 = sub_1B6220814();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v11);
  sub_1B603AA48(v19, v16, &qword_1EB925E80);
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
  {
    sub_1B61540AC(v19, &qword_1EB925E80);
    v19 = v16;
  }

  else
  {
    sub_1B614E95C(v16, v13);
    v21 = (a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
    v22 = *(a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24);
    v23 = *(a4 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 32);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48)];
    sub_1B61531FC(v13, v10);
    v25 = v28 & 1;
    *v24 = v29;
    v24[8] = v25;
    swift_storeEnumTagMultiPayload();
    (*(v23 + 16))(v10, v22, v23);
    sub_1B6153250();
    sub_1B6153250();
  }

  return sub_1B61540AC(v19, &qword_1EB925E80);
}

void sub_1B6146BB4()
{
  OUTLINED_FUNCTION_44();
  v29 = v3;
  v30 = v4;
  v28 = v5;
  OUTLINED_FUNCTION_576();
  type metadata accessor for NetworkTelemetry();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v7 = type metadata accessor for TelemetryActivity();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  v10 = OUTLINED_FUNCTION_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_536();
  sub_1B6220814();
  OUTLINED_FUNCTION_3_0();
  (*(v15 + 16))(v1, v2);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v7);
  sub_1B603AA48(v1, v13, &qword_1EB925E80);
  v19 = OUTLINED_FUNCTION_392();
  if (__swift_getEnumTagSinglePayload(v19, v20, v7) == 1)
  {
    sub_1B61540AC(v1, &qword_1EB925E80);
    v1 = v13;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_244();
    sub_1B614E95C(v21, v22);
    __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor), *(v28 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24));
    v23 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48);
    v24 = OUTLINED_FUNCTION_6_6();
    sub_1B61531FC(v24, v25);
    *v23 = v30;
    *(v23 + 8) = v29 & 1;
    OUTLINED_FUNCTION_374();
    swift_storeEnumTagMultiPayload();
    v26 = OUTLINED_FUNCTION_516();
    v27(v26);
    OUTLINED_FUNCTION_2_33();
    sub_1B6153250();
    OUTLINED_FUNCTION_253();
    sub_1B6153250();
  }

  sub_1B61540AC(v1, &qword_1EB925E80);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B6146E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v29 = a7;
  v30 = a6;
  v9 = type metadata accessor for NetworkTelemetry();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28[-v19];
  v21 = sub_1B6220814();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v12);
  sub_1B603AA48(v20, v17, &qword_1EB925E80);
  if (__swift_getEnumTagSinglePayload(v17, 1, v12) == 1)
  {
    sub_1B61540AC(v20, &qword_1EB925E80);
    v20 = v17;
  }

  else
  {
    sub_1B614E95C(v17, v14);
    v22 = (a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
    v23 = *(a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24);
    v24 = *(a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 32);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48)];
    sub_1B61531FC(v14, v11);
    v26 = v29 & 1;
    *v25 = v30;
    v25[8] = v26;
    swift_storeEnumTagMultiPayload();
    (*(v24 + 16))(v11, v23, v24);
    sub_1B6153250();
    sub_1B6153250();
  }

  return sub_1B61540AC(v20, &qword_1EB925E80);
}

uint64_t sub_1B61473D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v30 = a8;
  v31 = a7;
  v10 = type metadata accessor for NetworkTelemetry();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29[-v20];
  v22 = sub_1B6220814();
  (*(*(v22 - 8) + 16))(v21, a1, v22);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v13);
  sub_1B603AA48(v21, v18, &qword_1EB925E80);
  if (__swift_getEnumTagSinglePayload(v18, 1, v13) == 1)
  {
    sub_1B61540AC(v21, &qword_1EB925E80);
    v21 = v18;
  }

  else
  {
    sub_1B614E95C(v18, v15);
    v23 = (a6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
    v24 = *(a6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 24);
    v25 = *(a6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor + 32);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E88) + 48)];
    sub_1B61531FC(v15, v12);
    v27 = v30 & 1;
    *v26 = v31;
    v26[8] = v27;
    swift_storeEnumTagMultiPayload();
    (*(v25 + 16))(v12, v24, v25);
    sub_1B6153250();
    sub_1B6153250();
  }

  return sub_1B61540AC(v21, &qword_1EB925E80);
}

void sub_1B61476F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_44();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_264();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
  OUTLINED_FUNCTION_0(v29);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v25;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925CB0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 64);
  sub_1B6220814();
  OUTLINED_FUNCTION_3_0();
  v37 = OUTLINED_FUNCTION_232();
  v38(v37);
  *(v27 + v35) = v33;
  sub_1B603AA48(v23, v32, &qword_1EB9250C0);
  v39 = type metadata accessor for Weather();
  if (OUTLINED_FUNCTION_460(v32) == 1)
  {
    sub_1B6220784();
    sub_1B61540AC(v32, &qword_1EB9250C0);
    __swift_storeEnumTagSinglePayload(v27 + v36, 1, 1, v39);
  }

  else
  {
    sub_1B614E95C(v32, v27 + v36);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
    sub_1B6220784();
  }

  type metadata accessor for TelemetryActivity();
  OUTLINED_FUNCTION_222();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B6147890()
{
  sub_1B6151EA8();
  swift_allocError();
  *v0 = 0xD000000000000029;
  v0[1] = 0x80000001B623DC50;
  swift_willThrow();
}

uint64_t sub_1B6147908()
{
  sub_1B6151EA8();
  swift_allocError();
  *v0 = 0xD00000000000002CLL;
  v0[1] = 0x80000001B623DC80;
  swift_willThrow();
}

uint64_t sub_1B6147980()
{
  sub_1B6151EA8();
  swift_allocError();
  *v0 = 0xD00000000000003FLL;
  v0[1] = 0x80000001B623DC10;
  swift_willThrow();
}

uint64_t sub_1B61479F8()
{
  sub_1B6151EA8();
  swift_allocError();
  *v0 = 0xD00000000000002BLL;
  v0[1] = 0x80000001B623DCB0;
  swift_willThrow();
}

void sub_1B6147A70()
{
  OUTLINED_FUNCTION_681();
  v37 = v3;
  v38 = v4;
  v5 = v1;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v16 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_655();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v18 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v18, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_139();
  sub_1B61531FC(v7, v2);
  sub_1B6220784();
  v19 = sub_1B6220B14();
  v20 = sub_1B62217F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_715();
    *v21 = 136446979;
    v22 = MEMORY[0x1B8C906E0](v13, &type metadata for WeatherProduct);
    v35 = v14;
    sub_1B602EEB0(v22, v23, &v36);
    OUTLINED_FUNCTION_472();
    *(v21 + 4) = v16;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    v24 = CLLocationCoordinate2D.id.getter();
    sub_1B602EEB0(v24, v25, &v36);
    OUTLINED_FUNCTION_472();
    *(v21 + 24) = v16;
    *(v21 + 32) = 2082;
    sub_1B6220784();
    OUTLINED_FUNCTION_67_0();
    sub_1B6153250();
    v26 = OUTLINED_FUNCTION_264();
    v29 = sub_1B602EEB0(v26, v27, v28);

    *(v21 + 34) = v29;
    v14 = v35;
    _os_log_impl(&dword_1B6020000, v19, v20, "Fetching: %{public}s for location: %{private,mask.hash}s with language: %{public}s", v21, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    OUTLINED_FUNCTION_67_0();
    sub_1B6153250();
  }

  OUTLINED_FUNCTION_139();
  sub_1B61531FC(v7, v0 + v30);
  v32 = *(v5 + 24);
  v31 = *(v5 + 32);
  *v0 = v13;
  v0[1] = v11;
  v0[2] = v9;
  v33 = (v0 + *(v14 + 28));
  *v33 = v32;
  v33[1] = v31;
  sub_1B6220784();
  sub_1B6220784();
  OUTLINED_FUNCTION_374();
  sub_1B610D6F8();
  type metadata accessor for Weather();
  OUTLINED_FUNCTION_467();

  sub_1B62209F4();
  OUTLINED_FUNCTION_467();

  OUTLINED_FUNCTION_84();
  *(swift_allocObject() + 16) = v13;
  sub_1B6220784();
  v34 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D0);
  sub_1B6220934();

  OUTLINED_FUNCTION_4_23();
  sub_1B6153250();
  OUTLINED_FUNCTION_679();
}

void sub_1B6147E38()
{
  OUTLINED_FUNCTION_681();
  v89 = v2;
  v90 = v3;
  v4 = v0;
  v84 = v5;
  v7 = v6;
  v9 = v8;
  v83 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v82 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D8);
  OUTLINED_FUNCTION_0(v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v75 - v15;
  type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_536();
  v24 = *(v7 + 16);
  if (v24 == 1)
  {
    sub_1B6091FCC(v7, v16);
    if (OUTLINED_FUNCTION_442(v16) != 1)
    {
      v70 = sub_1B614E95C(v16, v1);
      MEMORY[0x1EEE9AC00](v70);
      OUTLINED_FUNCTION_335();
      *(v71 - 32) = v84;
      *(v71 - 24) = v1;
      *(v71 - 16) = v4;
      *(v71 - 8) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D0);
      OUTLINED_FUNCTION_662();
      sub_1B62209F4();
      OUTLINED_FUNCTION_138();
      sub_1B61531FC(v1, v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v72 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v73 = swift_allocObject();
      sub_1B614E95C(v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72);
      v74 = sub_1B62208D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8);
      OUTLINED_FUNCTION_511();
      sub_1B6220944();
      OUTLINED_FUNCTION_350();

      OUTLINED_FUNCTION_137();
      sub_1B6153250();
      goto LABEL_23;
    }

    sub_1B61540AC(v16, &qword_1EB9250D8);
  }

  else if (!v24)
  {
    v86 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50);
    OUTLINED_FUNCTION_249();
    swift_allocObject();
    sub_1B6220994();
    goto LABEL_23;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v25 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v25, qword_1EDAC2AB0);
  v26 = sub_1B6220B14();
  sub_1B62217F4();
  v27 = OUTLINED_FUNCTION_569();
  if (os_log_type_enabled(v27, v28))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_691(&dword_1B6020000, v29, v30, "Request weather for multiple locations, batching requests");
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  if (*(v84 + *(v83 + 80)) == 1)
  {
    v32 = sub_1B6220B14();
    sub_1B62217E4();
    v33 = OUTLINED_FUNCTION_569();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_691(&dword_1B6020000, v35, v36, "Batch Marine locations requested - unsupported");
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }
  }

  v75[1] = v16;
  v37 = v84[1];
  v77 = *v84;
  MEMORY[0x1EEE9AC00](v31);
  v81 = v9;
  v75[-4] = v9;
  v75[-3] = v38;
  v79 = v4;
  v75[-2] = v4;
  v76 = sub_1B610AF7C(sub_1B614A68C, &v75[-6], v7);
  v88 = MEMORY[0x1E69E7CC0];
  v78 = v37;
  sub_1B6220784();
  sub_1B603C6EC(0, v24, 0);
  v39 = v88;
  v40 = *(v18 + 80);
  v80 = v7;
  v41 = v7 + ((v40 + 32) & ~v40);
  v85 = *(v18 + 72);
  do
  {
    OUTLINED_FUNCTION_138();
    sub_1B61531FC(v41, v22);
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_1B6221B34();
    MEMORY[0x1B8C90530](0x6E6F697461636F4CLL, 0xEB000000003A4449);
    sub_1B6221704();
    MEMORY[0x1B8C90530](58, 0xE100000000000000);
    sub_1B6221704();
    v42 = v86;
    v43 = v87;
    OUTLINED_FUNCTION_137();
    sub_1B6153250();
    v88 = v39;
    v45 = *(v39 + 16);
    v44 = *(v39 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1B603C6EC(v44 > 1, v45 + 1, 1);
      v39 = v88;
    }

    *(v39 + 16) = v45 + 1;
    v46 = v39 + 16 * v45;
    *(v46 + 32) = v42;
    *(v46 + 40) = v43;
    v41 += v85;
    --v24;
  }

  while (v24);
  v86 = v39;
  v47 = OUTLINED_FUNCTION_5_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v47);
  OUTLINED_FUNCTION_368();
  sub_1B6151EFC(v48, &qword_1EB924F68);
  sub_1B6221174();
  OUTLINED_FUNCTION_519();

  OUTLINED_FUNCTION_139();
  sub_1B61531FC(v84, v82);
  v49 = v81;
  sub_1B6220784();
  sub_1B6220784();
  v50 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_295();

  if (OUTLINED_FUNCTION_451())
  {
    v51 = swift_slowAlloc();
    v86 = OUTLINED_FUNCTION_715();
    *v51 = 136446979;
    v52 = MEMORY[0x1B8C906E0](v49, &type metadata for WeatherProduct);
    v54 = sub_1B602EEB0(v52, v53, &v86);

    *(v51 + 4) = v54;
    v49 = v81;
    *(v51 + 12) = 2160;
    *(v51 + 14) = 1752392040;
    *(v51 + 22) = 2081;
    v55 = OUTLINED_FUNCTION_232();
    sub_1B602EEB0(v55, v56, v57);
    OUTLINED_FUNCTION_584();
    *(v51 + 24) = &qword_1EB924F68;
    *(v51 + 32) = 2082;
    sub_1B6220784();
    OUTLINED_FUNCTION_67_0();
    sub_1B6153250();
    v58 = OUTLINED_FUNCTION_374();
    v61 = sub_1B602EEB0(v58, v59, v60);

    *(v51 + 34) = v61;
    OUTLINED_FUNCTION_239();
    _os_log_impl(v62, v63, v64, v65, v51, 0x2Au);
    swift_arrayDestroy();
    v66 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v66);
    v67 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v67);
  }

  else
  {

    OUTLINED_FUNCTION_67_0();
    sub_1B6153250();
  }

  sub_1B611CE90(v77, v78, v76, *(v84 + *(v83 + 88)), *(v84 + *(v83 + 88) + 8));
  OUTLINED_FUNCTION_104();

  OUTLINED_FUNCTION_90();
  v68 = swift_allocObject();
  *(v68 + 16) = v80;
  *(v68 + 24) = v49;
  sub_1B6220784();
  sub_1B6220784();
  v69 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8);
  OUTLINED_FUNCTION_511();
  sub_1B6220934();
  OUTLINED_FUNCTION_350();

LABEL_23:
  OUTLINED_FUNCTION_679();
}

uint64_t type metadata accessor for WeatherServiceRequestLocation()
{
  result = qword_1EDAB0BF0;
  if (!qword_1EDAB0BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeatherServiceRequestLocation.init(coordinate:countryCode:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v8 = type metadata accessor for WeatherServiceRequestLocation();
  return sub_1B603D428(a3, a4 + *(v8 + 24), &qword_1EB924EF8);
}

void static WeatherServiceRequestLocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  if (*v4 != *v2 || *(v4 + 8) != *(v2 + 8))
  {
    goto LABEL_21;
  }

  v17 = *(v4 + 24);
  v18 = *(v2 + 24);
  if (!v17)
  {
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_12:
    v29 = v7;
    v20 = *(type metadata accessor for WeatherServiceRequestLocation() + 24);
    v21 = *(v13 + 48);
    sub_1B603AA48(v4 + v20, v16, &qword_1EB924EF8);
    sub_1B603AA48(v2 + v20, &v16[v21], &qword_1EB924EF8);
    OUTLINED_FUNCTION_6_1(v16);
    if (v19)
    {
      OUTLINED_FUNCTION_6_1(&v16[v21]);
      if (v19)
      {
        sub_1B61540AC(v16, &qword_1EB924EF8);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1B603AA48(v16, v12, &qword_1EB924EF8);
      OUTLINED_FUNCTION_6_1(&v16[v21]);
      if (!v22)
      {
        v23 = v29;
        (*(v29 + 32))(v0, &v16[v21], v5);
        OUTLINED_FUNCTION_136();
        sub_1B61532A0(v24, v25);
        sub_1B62211A4();
        v26 = *(v23 + 8);
        v27 = OUTLINED_FUNCTION_5_2();
        v26(v27);
        (v26)(v12, v5);
        sub_1B61540AC(v16, &qword_1EB924EF8);
        goto LABEL_21;
      }

      (*(v29 + 8))(v12, v5);
    }

    sub_1B61540AC(v16, &qword_1EB925E08);
    goto LABEL_21;
  }

  if (v18)
  {
    v19 = *(v4 + 16) == *(v2 + 16) && v17 == v18;
    if (v19 || (sub_1B6221F24() & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B6148A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

      if (v8)
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

uint64_t sub_1B6148BA8(char a1)
{
  if (!a1)
  {
    return 0x616E6964726F6F63;
  }

  if (a1 == 1)
  {
    return 0x437972746E756F63;
  }

  return 0x656E6F5A656D6974;
}

uint64_t sub_1B6148C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6148A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6148C3C(uint64_t a1)
{
  v2 = sub_1B6148E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6148C78(uint64_t a1)
{
  v2 = sub_1B6148E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherServiceRequestLocation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6148E98();
  sub_1B62220F4();
  type metadata accessor for CLLocationCoordinate2D(0);
  OUTLINED_FUNCTION_378();
  sub_1B61532A0(v4, v5);
  OUTLINED_FUNCTION_660();
  sub_1B6221EC4();
  if (!v1)
  {
    sub_1B6221E24();
    type metadata accessor for WeatherServiceRequestLocation();
    sub_1B621DB64();
    OUTLINED_FUNCTION_136();
    sub_1B61532A0(v6, v7);
    OUTLINED_FUNCTION_660();
    sub_1B6221E74();
  }

  v8 = OUTLINED_FUNCTION_6_6();
  return v9(v8);
}

unint64_t sub_1B6148E98()
{
  result = qword_1EB925E18;
  if (!qword_1EB925E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925E18);
  }

  return result;
}

uint64_t WeatherServiceRequestLocation.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_655();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E28);
  OUTLINED_FUNCTION_2();
  v31 = v8;
  v32 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_374();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_1B6148E98();
  sub_1B62220D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v12;
  v19 = v16;
  v20 = v31;
  type metadata accessor for CLLocationCoordinate2D(0);
  v34 = 0;
  OUTLINED_FUNCTION_378();
  sub_1B61532A0(v21, v22);
  v23 = v32;
  OUTLINED_FUNCTION_634();
  sub_1B6221DD4();
  *v19 = v33;
  LOBYTE(v33) = 1;
  *(v19 + 16) = sub_1B6221D44();
  *(v19 + 24) = v24;
  v28[1] = v24;
  sub_1B621DB64();
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_136();
  sub_1B61532A0(v25, v26);
  OUTLINED_FUNCTION_634();
  sub_1B6221D84();
  (*(v20 + 8))(v11, v23);
  sub_1B603D428(v3, v19 + *(v29 + 24), &qword_1EB924EF8);
  OUTLINED_FUNCTION_138();
  sub_1B61531FC(v19, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_137();
  return sub_1B6153250();
}

uint64_t Collection<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B610B178(sub_1B61492FC, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  v8 = OUTLINED_FUNCTION_302();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_368();
  sub_1B6151EFC(v9, &qword_1EB924F68);
  sub_1B6221174();
  OUTLINED_FUNCTION_672();

  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B61492FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = sub_1B621DB64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v33 = CLLocationCoordinate2D.id.getter();
  v17 = v16;
  v18 = *(type metadata accessor for WeatherServiceRequestLocation() + 24);
  sub_1B603AA48(a1 + v18, v8, &qword_1EB924EF8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B61540AC(v8, &qword_1EB924EF8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = *(a1 + 24);
    if (v19)
    {
      v20 = *(a1 + 16);
      v35 = 40;
      v36 = 0xE100000000000000;
      v21 = sub_1B621DB24();
      MEMORY[0x1B8C90530](v21);

      MEMORY[0x1B8C90530](8236, 0xE200000000000000);
      MEMORY[0x1B8C90530](v20, v19);
      MEMORY[0x1B8C90530](41, 0xE100000000000000);
      v23 = v35;
      v22 = v36;
      v35 = v33;
      v36 = v17;
      sub_1B6220784();
      MEMORY[0x1B8C90530](v23, v22);

      v24 = v35;
      v17 = v36;
      result = (*(v10 + 8))(v15, v9);
      goto LABEL_11;
    }

    (*(v10 + 8))(v15, v9);
  }

  sub_1B603AA48(a1 + v18, v5, &qword_1EB924EF8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    result = sub_1B61540AC(v5, &qword_1EB924EF8);
    if (*(a1 + 24))
    {
      v26 = *(a1 + 16);
      v35 = 40;
      v36 = 0xE100000000000000;
      MEMORY[0x1B8C90530](v26);
      MEMORY[0x1B8C90530](41, 0xE100000000000000);
      v28 = v35;
      v27 = v36;
      v35 = v33;
      v36 = v17;
      sub_1B6220784();
      MEMORY[0x1B8C90530](v28, v27);

      v24 = v35;
      v17 = v36;
    }

    else
    {
      v24 = v33;
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
    v35 = 40;
    v36 = 0xE100000000000000;
    v29 = sub_1B621DB24();
    MEMORY[0x1B8C90530](v29);

    MEMORY[0x1B8C90530](41, 0xE100000000000000);
    v31 = v35;
    v30 = v36;
    v35 = v33;
    v36 = v17;
    sub_1B6220784();
    MEMORY[0x1B8C90530](v31, v30);

    v24 = v35;
    v17 = v36;
    result = (*(v10 + 8))(v12, v9);
  }

LABEL_11:
  v32 = v34;
  *v34 = v24;
  v32[1] = v17;
  return result;
}

void sub_1B6149734()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_1B602B138();
    if (v1 <= 0x3F)
    {
      sub_1B61497D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B61497D0()
{
  if (!qword_1EDAB20D8)
  {
    sub_1B621DB64();
    v0 = sub_1B6221A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAB20D8);
    }
  }
}

void *sub_1B6149828(uint64_t a1)
{
  v1[2] = a1;
  sub_1B61544DC();
  v1[3] = sub_1B6149854();
  v1[4] = v2;
  return v1;
}

uint64_t sub_1B6149854()
{
  v0 = [objc_opt_self() sharedService];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 defaultTraits];
    v3 = [v1 serializedClientMetadataForTraits_];
    if (v3)
    {
      v4 = sub_1B621D714();
      v6 = v5;

      sub_1B621D704();
      v7 = sub_1B602C004();
      v8 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_532(v7, v9, v10, v11, v12, v13, v14, v15, MEMORY[0x1E69E6158], v7, v7, v7, 45, 0xE100000000000000, 43);
      OUTLINED_FUNCTION_339();
      OUTLINED_FUNCTION_475();

      OUTLINED_FUNCTION_532(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34, v7, v7, 95, 0xE100000000000000, 47);
      OUTLINED_FUNCTION_339();
      OUTLINED_FUNCTION_475();

      OUTLINED_FUNCTION_532(v24, v25, v26, v27, v28, v29, v30, v31, v8, v7, v7, v7, 0, 0xE000000000000000, 61);
      OUTLINED_FUNCTION_339();
      OUTLINED_FUNCTION_475();
      sub_1B60362A8(v4, v6);
    }
  }

  return OUTLINED_FUNCTION_466();
}

uint64_t sub_1B6149A10()
{

  return v0;
}

uint64_t sub_1B6149A38()
{
  sub_1B6149A10();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceRequestLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B6149B4C()
{
  result = qword_1EB925E38;
  if (!qword_1EB925E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925E38);
  }

  return result;
}

unint64_t sub_1B6149BA4()
{
  result = qword_1EB925E40;
  if (!qword_1EB925E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925E40);
  }

  return result;
}

unint64_t sub_1B6149BFC()
{
  result = qword_1EB925E48;
  if (!qword_1EB925E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925E48);
  }

  return result;
}

uint64_t sub_1B6149C50()
{
  v0 = type metadata accessor for WeatherRequestOptions();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for WeatherServiceRequestLocation();
  sub_1B60B19E8();
  sub_1B6147A70();
  v2 = v1;
  sub_1B6153250();
  return v2;
}

uint64_t sub_1B6149D30@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9249C0);
  v6 = swift_allocObject();
  v7 = *a2;
  *(v6 + 16) = xmmword_1B6225510;
  *(v6 + 32) = v7;
  *(v6 + 48) = v5;
  *a3 = v6;
  return sub_1B6220784();
}

uint64_t sub_1B6149DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for WeatherServiceRequestLocation();
  v9 = type metadata accessor for WeatherRequest();
  sub_1B6220784();
  sub_1B60B19E8();
  v11 = *(a3 + 24);
  v10 = *(a3 + 32);
  *a4 = a2;
  a4[1] = v7;
  a4[2] = v8;
  v12 = (a4 + *(v9 + 28));
  *v12 = v11;
  v12[1] = v10;
  return sub_1B6220784();
}

uint64_t sub_1B6149E5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v6 = type metadata accessor for Weather();
  v55 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EB8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - v11;
  v12 = *a1;
  if (!*a1)
  {
    if (qword_1EDAB3D80 == -1)
    {
LABEL_11:
      v36 = sub_1B6220B34();
      __swift_project_value_buffer(v36, qword_1EDAC2AB0);
      v37 = sub_1B6220B14();
      v38 = sub_1B62217E4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1B6020000, v37, v38, "Received empty response for batch request.", v39, 2u);
        MEMORY[0x1B8C91C90](v39, -1, -1);
      }

      v57 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  v13 = *(v12 + 16);
  v14 = *(a2 + 16);
  if (v13 == v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
LABEL_18:
      v57 = v15;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50);
      swift_allocObject();
      return sub_1B6220994();
    }

    v56 = v3;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1B60AA5D0(0, v13, 0);
    v16 = type metadata accessor for WeatherServiceRequestLocation();
    v17 = v12;
    v18 = 0;
    v19 = *(v16 - 8);
    v20 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v15 = v57;
    v21 = *(v55 + 80);
    v50 = v17;
    v48 = v17 + ((v21 + 32) & ~v21);
    v47 = *(v19 + 72);
    v49 = v13;
    while (1)
    {
      v23 = v53;
      v22 = v54;
      v24 = *(v54 + 48);
      sub_1B61531FC(v20, &v53[v24]);
      *v9 = v18;
      v25 = (v9 + *(v22 + 48));
      sub_1B614E95C(&v23[v24], v25);
      if (v18 >= *(v50 + 16))
      {
        break;
      }

      v26 = v9;
      v27 = v51;
      v28 = sub_1B61531FC(v48 + *(v55 + 72) * v18, v51);
      MEMORY[0x1EEE9AC00](v28);
      *(&v47 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
      sub_1B604D954();
      v29 = v56;
      v30 = sub_1B62214F4();
      v56 = v29;
      v9 = v26;
      sub_1B6153250();
      v31 = *v25;
      v32 = v25[1];
      sub_1B61540AC(v26, &qword_1EB925EB8);
      v57 = v15;
      v34 = *(v15 + 16);
      v33 = *(v15 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B60AA5D0((v33 > 1), v34 + 1, 1);
        v15 = v57;
      }

      *(v15 + 16) = v34 + 1;
      v35 = (v15 + 24 * v34);
      v35[4] = v31;
      v35[5] = v32;
      v35[6] = v30;
      ++v18;
      v20 += v47;
      if (v49 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v40 = sub_1B6220B34();
  __swift_project_value_buffer(v40, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v41 = sub_1B6220B14();
  v42 = sub_1B62217E4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134218240;
    *(v43 + 4) = *(v12 + 16);

    *(v43 + 12) = 2048;
    *(v43 + 14) = v14;

    _os_log_impl(&dword_1B6020000, v41, v42, "Received unexpected number of elements for batch request. Received=%ld, expected=%ld", v43, 0x16u);
    MEMORY[0x1B8C91C90](v43, -1, -1);
  }

  else
  {
  }

  v45 = *(v12 + 16);
  sub_1B6151268();
  swift_allocError();
  *v46 = v45;
  v46[1] = v14;
  return swift_willThrow();
}

uint64_t sub_1B614A468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  sub_1B604D954();
  sub_1B62214F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EA8);
  swift_allocObject();
  return sub_1B6220994();
}

uint64_t sub_1B614A528()
{
  OUTLINED_FUNCTION_8_18();
  v3 = type metadata accessor for Weather();
  v4 = OUTLINED_FUNCTION_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_42_4();
  sub_1B6220784();
  v5 = OUTLINED_FUNCTION_244();
  v7 = sub_1B61753E4(v5, v6);
  sub_1B610E140(v7, v8, v0);
  if (v2)
  {
    v10 = OUTLINED_FUNCTION_244();
    sub_1B60362A8(v10, v11);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    sub_1B604D954();
    v1 = sub_1B62214F4();
    v12 = OUTLINED_FUNCTION_244();
    sub_1B60362A8(v12, v13);
    OUTLINED_FUNCTION_34_3();
    sub_1B6153250();
  }

  return v1;
}

uint64_t sub_1B614A6EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_0(v5);
  return sub_1B6149D30(a1, (v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80))), a2);
}

uint64_t sub_1B614A7E0()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_496(v0);
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_280();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_204(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_641(v3);
  OUTLINED_FUNCTION_657();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_150();

  return sub_1B6113990(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B614A8D8(uint64_t a1, unint64_t a2)
{
  sub_1B604D8AC(a1, a2);
  v2 = OUTLINED_FUNCTION_1_3();
  sub_1B614B514(v2, v3);
  sub_1B62212B4();
  OUTLINED_FUNCTION_672();

  return OUTLINED_FUNCTION_302();
}

uint64_t sub_1B614A938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B62212B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B614AA30(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B614AB2C;

  return sub_1B610EC50(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614AB2C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  OUTLINED_FUNCTION_3_17();

  return v3();
}

uint64_t sub_1B614AC0C(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B6134660(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614AD08(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 88) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154550;

  return sub_1B61143A8(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

id sub_1B614AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  swift_allocObject();
  *&a5[v7] = sub_1B62208E4();
  v8 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  swift_allocObject();
  v9 = sub_1B62208E4();

  *&a5[v8] = v9;
  a5[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 0;
  v11.receiver = a5;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1B614AF14(__int128 *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  *&v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  swift_allocObject();
  *&a2[v5] = sub_1B62208E4();
  v6 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  swift_allocObject();
  v7 = sub_1B62208E4();
  v13 = *a1;
  sub_1B61537E4(&v13);
  v12 = a1[1];
  sub_1B61537E4(&v12);
  v11 = a1[2];
  sub_1B61537E4(&v11);
  *&a2[v6] = v7;
  a2[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 0;
  v9.receiver = a2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1B614B02C(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  *&a2[v6] = sub_1B62208E4();
  v7 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  OUTLINED_FUNCTION_249();
  v8 = swift_allocObject();
  sub_1B62208E4();
  v9 = OUTLINED_FUNCTION_248();
  a3(v9);
  *&a2[v7] = v8;
  a2[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 1;
  v11.receiver = a2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1B614B11C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  swift_allocObject();
  *&a3[v5] = sub_1B62208E4();
  v6 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  swift_allocObject();
  v7 = sub_1B62208E4();

  *&a3[v6] = v7;
  a3[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 0;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1B614B20C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  swift_allocObject();
  *&a2[v4] = sub_1B62208E4();
  v5 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  swift_allocObject();
  v6 = sub_1B62208E4();
  sub_1B6153250();
  *&a2[v5] = v6;
  a2[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 1;
  v8.receiver = a2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1B614B314(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__taskMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E90);
  swift_allocObject();
  *&a4[v6] = sub_1B62208E4();
  v7 = OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate__activity;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E98);
  swift_allocObject();
  v8 = sub_1B62208E4();

  *&a4[v7] = v8;
  a4[OBJC_IVAR____TtC13WeatherDaemon25WDSURLSessionTaskDelegate_taskContainsSensitiveData] = 1;
  v10.receiver = a4;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1B614B514(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B621D734();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_1B603659C(v8, 0);
      v11 = sub_1B621D694();
      sub_1B60362A8(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_1B60362A8(a1, a2);
      }

      return;
  }
}

uint64_t sub_1B614B6D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B60D7AB4;

  return sub_1B610F678(a1, a2, v8, v9, v10, v11, a4, a5);
}

uint64_t sub_1B614B7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = a4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B60D7AB4;

  return sub_1B61349AC(a1, a2, a3, v8, v9, v10, v11, a5);
}

uint64_t sub_1B614B8DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B60D7AB4;

  return sub_1B6139540(a1, v7, v8, v9, v10, a3, a4, a5);
}

uint64_t sub_1B614B9E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B60D7AB4;

  return sub_1B613B314(a1, a2, v6, v7, v8, v9, a4, a5);
}

uint64_t sub_1B614BAF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = swift_task_alloc();
  *(v13 + 16) = v19;
  *v19 = v13;
  v19[1] = sub_1B60D7AB4;
  LOBYTE(a9) = a10;

  return sub_1B6132DD4(a1, v15, v16, v17, v18, a3, a4, a5, a9, a10, a11, a12, a13);
}

uint64_t sub_1B614BC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = *a3;
  v9 = a3[1];
  v11 = a3[2];
  v10 = a3[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B60D7AB4;

  return sub_1B61144A4(a1, a2, v8, v9, v11, v10, a4, a5 & 1);
}

uint64_t sub_1B614BDA8(uint64_t a1, uint64_t *a2, void *__src, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  memcpy(__dst, __src, sizeof(__dst));
  return sub_1B6146258(a1, v10, v11, v12, v13, __dst, a4, a5, a6);
}

uint64_t sub_1B614BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6[1];
  v10[0] = *a6;
  v10[1] = v8;
  v10[2] = a6[2];
  return sub_1B610E510(a1, a2, a3, a4, a5, v10, a7, a8);
}

uint64_t sub_1B614BE70(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v16;
  *(v8 + 48) = a3[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B61101CC(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614BF6C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v16;
  *(v8 + 48) = a4[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B61352C8(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614C068(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v16;
  *(v8 + 48) = a2[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B61398D8(a1, v8 + 16, a3, a4, a5, a6, a7, a8 & 1);
}

uint64_t sub_1B614C164(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v13;
  *(v8 + 48) = a3[2];
  v14 = swift_task_alloc();
  *(v8 + 64) = v14;
  *v14 = v8;
  v14[1] = sub_1B6154554;

  return sub_1B613B774(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614C278(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v16;
  *(v8 + 48) = a2[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B6132EE4(a1, (v8 + 16), a3, a4, a5, a6, a7, a8 & 1);
}

uint64_t sub_1B614C384(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v15;
  *(v8 + 48) = a3[2];
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B61145A4(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

void sub_1B614C490(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *a1;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  v10[2] = a4[2];
  sub_1B613E0B8(v8, a2, a3, v10, a5, a6, a7, a8);
}

uint64_t sub_1B614C4C8(uint64_t a1, _OWORD *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = a2[2];
  return sub_1B6146574(a1, v8, *a3, a4, a5, a6);
}

uint64_t sub_1B614C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6[1];
  v10[0] = *a6;
  v10[1] = v8;
  v10[2] = a6[2];
  return sub_1B610E668(a1, a2, a3, a4, a5, v10, a7, a8);
}

uint64_t sub_1B614C534(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v16;
  *(v8 + 48) = a3[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B614C630;

  return sub_1B6110CBC(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614C630()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  OUTLINED_FUNCTION_3_17();

  return v3();
}

uint64_t sub_1B614C710(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v16;
  *(v8 + 48) = a4[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B6135CCC(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614C80C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v16;
  *(v8 + 48) = a2[2];
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B6139DDC(a1, v8 + 16, a3, a4, a5, a6, a7, a8 & 1);
}

uint64_t sub_1B614C908(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v13;
  *(v8 + 48) = a3[2];
  v14 = swift_task_alloc();
  *(v8 + 64) = v14;
  *v14 = v8;
  v14[1] = sub_1B6154554;

  return sub_1B613BBE4(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614CA1C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v18 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v18;
  *(v10 + 48) = a2[2];
  v19 = swift_task_alloc();
  *(v10 + 64) = v19;
  *v19 = v10;
  v19[1] = sub_1B6154554;

  return sub_1B613328C(a1, (v10 + 16), a3, a4, a5, a6, a7, a8 & 1, a9, a10);
}

uint64_t sub_1B614CB28(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v15;
  *(v8 + 48) = a3[2];
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 64) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154554;

  return sub_1B61146A0(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

void sub_1B614CC34(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a4[1];
  v9[0] = *a4;
  v9[1] = v8;
  v9[2] = a4[2];
  sub_1B613E150(a1, a2, a3, v9, a5, a6, a7, a8);
}

uint64_t sub_1B614CC68(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = a2[2];
  return sub_1B6146894(a1, v8, a3, a4, a5, a6);
}

uint64_t sub_1B614CD58(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B611145C(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614CE54(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B61365C0(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614CF50(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 88) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154550;

  return sub_1B611479C(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

uint64_t sub_1B614D21C(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B6111BFC(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614D318(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B61368B0(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614D414(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 88) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154550;

  return sub_1B6114898(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

uint64_t sub_1B614D6E0(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B611239C(a1, a2, v8 + 16, a4, a5, a6, a7, a8);
}

uint64_t sub_1B614D7DC(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = swift_task_alloc();
  *(v8 + 88) = v16;
  *v16 = v8;
  v16[1] = sub_1B6154550;

  return sub_1B6136BA0(a1, a2, a3, v8 + 16, a5, a6, a7, a8);
}

uint64_t sub_1B614D8D8(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  memcpy((v8 + 16), __src, 0x41uLL);
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 88) = v17;
  *v17 = v8;
  v17[1] = sub_1B6154550;

  return sub_1B6114994(a1, a2, v8 + 16, a4, a5 & 1, a6, a7, v16);
}

uint64_t sub_1B614DB1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B60D6D40;

  return sub_1B6112B3C(a1, a2, v13, v14, a4, a5, a6, a7);
}

uint64_t sub_1B614DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a4;
  v14 = a4[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B60D7AB4;

  return sub_1B6136E90(a1, a2, a3, v13, v14, a5, a6, a7);
}

uint64_t sub_1B614DD0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B60D7AB4;

  return sub_1B613A100(a1, v13, v14, a3, a4, a5, a6, a7);
}

uint64_t sub_1B614DE0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1B60D7AB4;

  return sub_1B613C080(a1, a2, v10, v11, a4, a5, a6, a7);
}

uint64_t sub_1B614DF10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B60D7AB4;

  return sub_1B6133388(a1, v12, v13, a3, a4, a5, a6, a7);
}

uint64_t sub_1B614E014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B60D7AB4;

  return sub_1B6114A90(a1, a2, v12, v13, a4, a5 & 1, a6, a7);
}

uint64_t sub_1B614E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *a8;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6114B90(a1, a2, a3, a4, a5 & 1, a6, a7, v15);
}

uint64_t sub_1B614E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *a8;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6114C8C(a1, a2, a3, a4, a5 & 1, a6, a7, v15);
}

uint64_t sub_1B614E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_11_17(v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_5_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_5_26(v21);
  OUTLINED_FUNCTION_150();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1B614E41C()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_689();
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_280();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B60D7AB4;
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_150();

  return sub_1B613814C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B614E518()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_496(v0);
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_198();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_204(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_641(v3);
  OUTLINED_FUNCTION_657();
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_150();

  return sub_1B613AA20(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B614E614()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_298();
  v0 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_303();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_204(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_355(v2);
  OUTLINED_FUNCTION_22_5();

  return sub_1B613C848(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B614E71C()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_298();
  v0 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_198();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_204(v1);
  *v2 = v3;
  v2[1] = sub_1B60D7AB4;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_22_5();

  return sub_1B6133B24(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B614E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11();
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_5_4(v26);
  *v27 = v28;
  v29 = OUTLINED_FUNCTION_115_0(v27);

  return sub_1B6134438(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

unint64_t sub_1B614E908()
{
  result = qword_1EDAAF038;
  if (!qword_1EDAAF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF038);
  }

  return result;
}

uint64_t sub_1B614E95C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_18();
  v4(v3);
  OUTLINED_FUNCTION_3_0();
  v5 = OUTLINED_FUNCTION_5_2();
  v6(v5);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v2 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v2))
  {
    OUTLINED_FUNCTION_83_0();
    v3 = OUTLINED_FUNCTION_309();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v5))
  {
    OUTLINED_FUNCTION_83_0();
    v6 = OUTLINED_FUNCTION_309();
    v7(v6);
  }

  v8 = *(v0 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v9 = OUTLINED_FUNCTION_309();
    v10(v9);
  }

  OUTLINED_FUNCTION_272();
  v11 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v11))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v12 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v13 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v13))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v14 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v15 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v15))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_278();
    v17(v18);
    v19 = OUTLINED_FUNCTION_157();
    v17(v19);
    OUTLINED_FUNCTION_332();
  }

  OUTLINED_FUNCTION_272();
  v20 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v20))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v21 = OUTLINED_FUNCTION_261();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v23))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v24 = OUTLINED_FUNCTION_495();
    v25(v24);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v26 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v26))
  {
    v27 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v27))
    {
      OUTLINED_FUNCTION_10_6();
      v28 = OUTLINED_FUNCTION_494();
      v29(v28);
    }
  }

  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_560();

  OUTLINED_FUNCTION_559();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1B614ED08()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_496(v0);
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_280();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_204(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_641(v3);
  OUTLINED_FUNCTION_657();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_150();

  return sub_1B61135F4(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B614EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_11_17(v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_5_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_5_26(v21);
  OUTLINED_FUNCTION_150();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t objectdestroy_32Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();

  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v3 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v3))
  {
    OUTLINED_FUNCTION_83_0();
    v4 = OUTLINED_FUNCTION_309();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v6))
  {
    OUTLINED_FUNCTION_83_0();
    v7 = OUTLINED_FUNCTION_309();
    v8(v7);
  }

  v9 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v10 = OUTLINED_FUNCTION_309();
    v11(v10);
  }

  OUTLINED_FUNCTION_272();
  v12 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v12))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v13 + 8))(v9 + v2);
  }

  OUTLINED_FUNCTION_272();
  v14 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v14))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v15 + 8))(v9 + v2);
  }

  OUTLINED_FUNCTION_272();
  v16 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v16))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_278();
    v18(v19);
    v20 = OUTLINED_FUNCTION_157();
    v18(v20);
  }

  OUTLINED_FUNCTION_272();
  v21 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v21))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v22 = OUTLINED_FUNCTION_261();
    v23(v22);
  }

  v24 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v24))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v25 = OUTLINED_FUNCTION_495();
    v26(v25);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v27 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v27))
  {
    v28 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v28))
    {
      OUTLINED_FUNCTION_10_6();
      v29 = OUTLINED_FUNCTION_494();
      v30(v29);
    }
  }

  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_560();

  OUTLINED_FUNCTION_559();

  __swift_destroy_boxed_opaque_existential_1(v0 + v9);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v31, v32, v33);
}

uint64_t sub_1B614F1C0()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_689();
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_280();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B60D7AB4;
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_150();

  return sub_1B613789C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_40Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v2 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v2))
  {
    OUTLINED_FUNCTION_83_0();
    v3 = OUTLINED_FUNCTION_309();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v5))
  {
    OUTLINED_FUNCTION_83_0();
    v6 = OUTLINED_FUNCTION_309();
    v7(v6);
  }

  v8 = *(v0 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v9 = OUTLINED_FUNCTION_309();
    v10(v9);
  }

  OUTLINED_FUNCTION_272();
  v11 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v11))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v12 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v13 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v13))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v14 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v15 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v15))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_278();
    v17(v18);
    v19 = OUTLINED_FUNCTION_157();
    v17(v19);
    OUTLINED_FUNCTION_332();
  }

  OUTLINED_FUNCTION_272();
  v20 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v20))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v21 = OUTLINED_FUNCTION_261();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v23))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v24 = OUTLINED_FUNCTION_495();
    v25(v24);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v26 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v26))
  {
    v27 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v27))
    {
      OUTLINED_FUNCTION_10_6();
      v28 = OUTLINED_FUNCTION_494();
      v29(v28);
    }
  }

  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_560();

  OUTLINED_FUNCTION_559();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1B614F5BC()
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_226();
  v1 = OUTLINED_FUNCTION_496(v0);
  OUTLINED_FUNCTION_28_1(v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_198();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_204(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_641(v3);
  OUTLINED_FUNCTION_657();
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_150();

  return sub_1B613A608(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_44Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v3 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v3))
  {
    OUTLINED_FUNCTION_83_0();
    v4 = OUTLINED_FUNCTION_309();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v6))
  {
    OUTLINED_FUNCTION_83_0();
    v7 = OUTLINED_FUNCTION_309();
    v8(v7);
  }

  v9 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v10 = OUTLINED_FUNCTION_309();
    v11(v10);
  }

  OUTLINED_FUNCTION_272();
  v12 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v12))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v13 + 8))(v9 + v2);
  }

  OUTLINED_FUNCTION_272();
  v14 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v14))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v15 + 8))(v9 + v2);
  }

  OUTLINED_FUNCTION_272();
  v16 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v16))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_278();
    v18(v19);
    v20 = OUTLINED_FUNCTION_157();
    v18(v20);
    OUTLINED_FUNCTION_332();
  }

  OUTLINED_FUNCTION_272();
  v21 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v21))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v22 = OUTLINED_FUNCTION_261();
    v23(v22);
  }

  v24 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v24))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v25 = OUTLINED_FUNCTION_495();
    v26(v25);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v27 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v27))
  {
    v28 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v28))
    {
      OUTLINED_FUNCTION_10_6();
      v29 = OUTLINED_FUNCTION_494();
      v30(v29);
    }
  }

  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_560();

  OUTLINED_FUNCTION_559();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v31, v32, v33);
}

uint64_t sub_1B614F9D8()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_298();
  v0 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_303();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_204(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_355(v2);
  OUTLINED_FUNCTION_22_5();

  return sub_1B613C4E0(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_52Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v2 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v2))
  {
    OUTLINED_FUNCTION_83_0();
    v3 = OUTLINED_FUNCTION_309();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v5))
  {
    OUTLINED_FUNCTION_83_0();
    v6 = OUTLINED_FUNCTION_309();
    v7(v6);
  }

  v8 = *(v0 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v9 = OUTLINED_FUNCTION_309();
    v10(v9);
  }

  OUTLINED_FUNCTION_272();
  v11 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v11))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v12 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v13 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v13))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v14 + 8))(v8 + v1);
  }

  OUTLINED_FUNCTION_272();
  v15 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v15))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_278();
    v17(v18);
    v19 = OUTLINED_FUNCTION_157();
    v17(v19);
    OUTLINED_FUNCTION_332();
  }

  OUTLINED_FUNCTION_272();
  v20 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v20))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v21 = OUTLINED_FUNCTION_261();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v23))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v24 = OUTLINED_FUNCTION_495();
    v25(v24);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v26 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v26))
  {
    v27 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v27))
    {
      OUTLINED_FUNCTION_10_6();
      v28 = OUTLINED_FUNCTION_494();
      v29(v28);
    }
  }

  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_560();

  OUTLINED_FUNCTION_559();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1B614FDC4()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_298();
  v0 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_198();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_204(v1);
  *v2 = v3;
  v2[1] = sub_1B60D7AB4;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_22_5();

  return sub_1B6133718(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B614FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11();
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_5_4(v26);
  *v27 = v28;
  v29 = OUTLINED_FUNCTION_115_0(v27);

  return sub_1B6134438(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t objectdestroy_73Tm()
{
  OUTLINED_FUNCTION_421();
  type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_101_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_289();
  type metadata accessor for WeatherRequestOptions();
  v7 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_177(v7))
  {
    OUTLINED_FUNCTION_83_0();
    v8 = OUTLINED_FUNCTION_309();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_177(v10))
  {
    OUTLINED_FUNCTION_83_0();
    v11 = OUTLINED_FUNCTION_309();
    v12(v11);
  }

  v13 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_262())
  {
    OUTLINED_FUNCTION_83_0();
    v14 = OUTLINED_FUNCTION_309();
    v15(v14);
  }

  OUTLINED_FUNCTION_272();
  v16 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v16))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v17 + 8))(v13 + v2);
  }

  OUTLINED_FUNCTION_272();
  v18 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v18))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v19 + 8))(v13 + v2);
  }

  OUTLINED_FUNCTION_272();
  v20 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v20))
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_110_0();
    v22 = *(v21 + 8);
    v4 = v21 + 8;
    v23 = OUTLINED_FUNCTION_278();
    v22(v23);
    v24 = OUTLINED_FUNCTION_157();
    v22(v24);
    OUTLINED_FUNCTION_332();
  }

  OUTLINED_FUNCTION_272();
  v25 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v25))
  {
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_31();
    v26 = OUTLINED_FUNCTION_261();
    v27(v26);
  }

  v28 = OUTLINED_FUNCTION_582();
  if (!OUTLINED_FUNCTION_292(v28))
  {
    if (OUTLINED_FUNCTION_591() != 1)
    {
      sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    v29 = OUTLINED_FUNCTION_495();
    v30(v29);
  }

  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_590();
  v31 = OUTLINED_FUNCTION_419();
  if (!OUTLINED_FUNCTION_52_0(v31))
  {
    v32 = OUTLINED_FUNCTION_588();
    if (!OUTLINED_FUNCTION_293(v32))
    {
      OUTLINED_FUNCTION_10_6();
      v33 = OUTLINED_FUNCTION_494();
      v34(v33);
    }
  }

  v35 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_418();
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_284();

  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v36, v37, v38);
}

uint64_t sub_1B6150298(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_3();
  v4 = type metadata accessor for WeatherRequest();
  OUTLINED_FUNCTION_28_1(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v10);
  v13 = *(v3 + v11);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = (v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = *(v16 + 8);

  return a2(v2, v14, v15, v3 + v9, v12, v13, v17, v18);
}

uint64_t objectdestroy_77Tm()
{
  OUTLINED_FUNCTION_421();
  v4 = type metadata accessor for WeatherRequest();
  v153 = *(*(v4 - 8) + 80);
  v5 = (v153 + 16) & ~v153;
  v152 = *(*(v4 - 8) + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0);
  OUTLINED_FUNCTION_28_1(v6);
  v8 = *(v7 + 80);
  v154 = v0;

  v9 = v0 + v5 + *(v4 + 24);

  type metadata accessor for WeatherRequestOptions();
  v10 = OUTLINED_FUNCTION_379();
  if (!OUTLINED_FUNCTION_460(v9 + v2))
  {
    OUTLINED_FUNCTION_83_0();
    (*(v11 + 8))(v9 + v2, v10);
  }

  v12 = OUTLINED_FUNCTION_583();
  if (!OUTLINED_FUNCTION_460(v9 + v2))
  {
    OUTLINED_FUNCTION_83_0();
    (*(v13 + 8))(v9 + v2, v12);
  }

  v14 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_460(v9 + v14))
  {
    OUTLINED_FUNCTION_83_0();
    (*(v15 + 8))(v9 + v14, v12);
  }

  OUTLINED_FUNCTION_645();
  v16 = type metadata accessor for WeatherRequestDailyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v16))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v17 + 8))(v14 + v3);
  }

  OUTLINED_FUNCTION_645();
  v18 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v18))
  {
    OUTLINED_FUNCTION_478();
    OUTLINED_FUNCTION_31();
    (*(v19 + 8))(v14 + v3);
  }

  OUTLINED_FUNCTION_645();
  v20 = type metadata accessor for WeatherRequestPeriodicRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v20))
  {
    v21 = sub_1B621D8F4();
    OUTLINED_FUNCTION_9();
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_278();
    v23(v24);
    v25 = v21;
    v5 = (v153 + 16) & ~v153;
    (v23)(v14 + *(v3 + 20), v25);
  }

  v26 = v5 + v152;
  OUTLINED_FUNCTION_645();
  v27 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  if (!OUTLINED_FUNCTION_120_0(v27))
  {
    v28 = v8;
    v29 = *(v3 + 28);
    sub_1B621D8F4();
    OUTLINED_FUNCTION_31();
    v31 = v14 + v29;
    v8 = v28;
    (*(v30 + 8))(v31);
  }

  v32 = v26 + v8;
  v33 = OUTLINED_FUNCTION_582();
  if (!__swift_getEnumTagSinglePayload(v9 + v3, 1, v33))
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v12 = sub_1B621D8F4();
    }

    OUTLINED_FUNCTION_83_0();
    (*(v34 + 8))(v9 + v3, v12);
  }

  v35 = v32 & ~v8;

  v36 = v9 + *(v1 + 76);
  v37 = type metadata accessor for WDSNetworkActivity();
  if (!OUTLINED_FUNCTION_52_0(v37))
  {
    v38 = *(v33 + 24);
    v33 = sub_1B621D944();
    if (!__swift_getEnumTagSinglePayload(v36 + v38, 1, v33))
    {
      OUTLINED_FUNCTION_10_6();
      (*(v39 + 8))(v36 + v38, v33);
    }
  }

  v40 = v154 + v35;
  v41 = type metadata accessor for Weather();
  v42 = OUTLINED_FUNCTION_22();
  if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
  {
    v44 = type metadata accessor for AirQuality();
    v45 = OUTLINED_FUNCTION_22();
    if (!__swift_getEnumTagSinglePayload(v45, v46, v44))
    {
      v47 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v49 = *(v48 + 8);
      v50 = OUTLINED_FUNCTION_516();
      v49(v50);
      v33 = type metadata accessor for Metadata();
      (v49)(v40 + *(v33 + 20), v47);
      v51 = *(v33 + 24);
      if (!OUTLINED_FUNCTION_442(v40 + v51))
      {
        (v49)(v40 + v51, v47);
      }

      OUTLINED_FUNCTION_461();
      OUTLINED_FUNCTION_461();
      OUTLINED_FUNCTION_461();
      OUTLINED_FUNCTION_461();

      OUTLINED_FUNCTION_461();
      OUTLINED_FUNCTION_461();
    }

    OUTLINED_FUNCTION_356();
    v52 = type metadata accessor for CurrentWeather();
    if (!OUTLINED_FUNCTION_52_0(v52))
    {
      v53 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_112();
      v55(v56);
      v57 = type metadata accessor for Metadata();
      v58 = OUTLINED_FUNCTION_257(v57);
      v55(v58);
      v59 = *(v57 + 24);
      if (!OUTLINED_FUNCTION_442(v44 + v59))
      {
        (v55)(v44 + v59, v53);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      if (!OUTLINED_FUNCTION_438())
      {
        v60 = OUTLINED_FUNCTION_522();
        v55(v60);
      }

      if (!OUTLINED_FUNCTION_438())
      {
        v61 = OUTLINED_FUNCTION_522();
        v55(v61);
      }

      v33 = *(v33 + 144);
      if (!OUTLINED_FUNCTION_442(v44 + v33))
      {
        (v55)(v44 + v33, v53);
      }
    }

    OUTLINED_FUNCTION_356();
    v62 = type metadata accessor for DailyForecast();
    if (!OUTLINED_FUNCTION_52_0(v62))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v64 = *(v63 + 8);
      v65 = OUTLINED_FUNCTION_465();
      v64(v65);
      v66 = type metadata accessor for Metadata();
      v67 = OUTLINED_FUNCTION_159(v66);
      v64(v67);
      if (!OUTLINED_FUNCTION_287())
      {
        v68 = OUTLINED_FUNCTION_492();
        v64(v68);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_611();
    }

    OUTLINED_FUNCTION_356();
    v69 = type metadata accessor for HourlyForecast();
    if (!OUTLINED_FUNCTION_52_0(v69))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v71 = *(v70 + 8);
      v72 = OUTLINED_FUNCTION_465();
      v71(v72);
      v73 = type metadata accessor for Metadata();
      v74 = OUTLINED_FUNCTION_159(v73);
      v71(v74);
      if (!OUTLINED_FUNCTION_287())
      {
        v75 = OUTLINED_FUNCTION_492();
        v71(v75);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_611();
    }

    OUTLINED_FUNCTION_356();
    v76 = type metadata accessor for PeriodicForecasts();
    if (!OUTLINED_FUNCTION_52_0(v76))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v78 = *(v77 + 8);
      v79 = OUTLINED_FUNCTION_465();
      v78(v79);
      v80 = type metadata accessor for Metadata();
      v81 = OUTLINED_FUNCTION_159(v80);
      v78(v81);
      if (!OUTLINED_FUNCTION_287())
      {
        v82 = OUTLINED_FUNCTION_492();
        v78(v82);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_611();
    }

    OUTLINED_FUNCTION_356();
    HourForecast = type metadata accessor for NextHourForecast();
    if (!OUTLINED_FUNCTION_52_0(HourForecast))
    {
      v84 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v86 = *(v85 + 8);
      v87 = OUTLINED_FUNCTION_112();
      v86(v87);
      v88 = type metadata accessor for Metadata();
      v89 = OUTLINED_FUNCTION_257(v88);
      v86(v89);
      v90 = *(v88 + 24);
      if (!OUTLINED_FUNCTION_442(v44 + v90))
      {
        (v86)(v44 + v90, v84);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_611();

      if (!OUTLINED_FUNCTION_438())
      {
        v91 = OUTLINED_FUNCTION_522();
        v86(v91);
      }

      if (!OUTLINED_FUNCTION_438())
      {
        v92 = OUTLINED_FUNCTION_522();
        v86(v92);
      }
    }

    OUTLINED_FUNCTION_356();
    v93 = type metadata accessor for LocationInfo();
    if (!OUTLINED_FUNCTION_52_0(v93))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v95 = *(v94 + 8);
      v96 = OUTLINED_FUNCTION_465();
      v95(v96);
      v97 = type metadata accessor for Metadata();
      v98 = OUTLINED_FUNCTION_159(v97);
      v95(v98);
      if (!OUTLINED_FUNCTION_287())
      {
        v99 = OUTLINED_FUNCTION_492();
        v95(v99);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
    }

    OUTLINED_FUNCTION_356();
    v100 = type metadata accessor for MarineForecast();
    if (!OUTLINED_FUNCTION_52_0(v100))
    {

      v44 += *(v33 + 20);
      v101 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v103 = *(v102 + 8);
      v104 = OUTLINED_FUNCTION_112();
      v103(v104);
      v33 = type metadata accessor for Metadata();
      v105 = OUTLINED_FUNCTION_257(v33);
      v103(v105);
      v106 = *(v33 + 24);
      if (!OUTLINED_FUNCTION_442(v44 + v106))
      {
        (v103)(v44 + v106, v101);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
    }

    OUTLINED_FUNCTION_356();
    v107 = type metadata accessor for News();
    if (!OUTLINED_FUNCTION_52_0(v107))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v109 = *(v108 + 8);
      v110 = OUTLINED_FUNCTION_465();
      v109(v110);
      v111 = type metadata accessor for Metadata();
      v112 = OUTLINED_FUNCTION_159(v111);
      v109(v112);
      if (!OUTLINED_FUNCTION_287())
      {
        v113 = OUTLINED_FUNCTION_492();
        v109(v113);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_611();
    }

    OUTLINED_FUNCTION_356();
    v114 = type metadata accessor for TideEvents();
    if (!OUTLINED_FUNCTION_52_0(v114))
    {

      v44 += *(v33 + 24);
      v115 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v117 = *(v116 + 8);
      v118 = OUTLINED_FUNCTION_112();
      v117(v118);
      v33 = type metadata accessor for Metadata();
      v119 = OUTLINED_FUNCTION_257(v33);
      v117(v119);
      v120 = *(v33 + 24);
      if (!OUTLINED_FUNCTION_442(v44 + v120))
      {
        (v117)(v44 + v120, v115);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
    }

    OUTLINED_FUNCTION_356();
    v121 = type metadata accessor for WeatherAlerts();
    if (!OUTLINED_FUNCTION_52_0(v121))
    {
      sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v123 = *(v122 + 8);
      v124 = OUTLINED_FUNCTION_465();
      v123(v124);
      v125 = type metadata accessor for Metadata();
      v126 = OUTLINED_FUNCTION_159(v125);
      v123(v126);
      if (!OUTLINED_FUNCTION_287())
      {
        v127 = OUTLINED_FUNCTION_492();
        v123(v127);
      }

      OUTLINED_FUNCTION_408();
      OUTLINED_FUNCTION_407();
      OUTLINED_FUNCTION_406();
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_443();
    }

    OUTLINED_FUNCTION_356();
    v128 = type metadata accessor for WeatherChange();
    if (!OUTLINED_FUNCTION_52_0(v128))
    {
      v129 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v131 = *(v130 + 8);
      v132 = OUTLINED_FUNCTION_112();
      v131(v132);
      v133 = type metadata accessor for Metadata();
      v134 = OUTLINED_FUNCTION_257(v133);
      v131(v134);
      v135 = *(v133 + 24);
      if (!OUTLINED_FUNCTION_442(v44 + v135))
      {
        (v131)(v44 + v135, v129);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      if (!OUTLINED_FUNCTION_438())
      {
        v136 = OUTLINED_FUNCTION_522();
        v131(v136);
      }

      if (!OUTLINED_FUNCTION_438())
      {
        v137 = OUTLINED_FUNCTION_522();
        v131(v137);
      }
    }

    OUTLINED_FUNCTION_356();
    v138 = type metadata accessor for WeatherComparisons();
    if (!OUTLINED_FUNCTION_52_0(v138))
    {

      v139 = v44 + *(v33 + 20);
      v140 = sub_1B621D8F4();
      OUTLINED_FUNCTION_9();
      v142 = *(v141 + 8);
      v143 = OUTLINED_FUNCTION_112();
      v142(v143);
      v144 = type metadata accessor for Metadata();
      v145 = OUTLINED_FUNCTION_257(v144);
      v142(v145);
      v146 = *(v144 + 24);
      if (!OUTLINED_FUNCTION_442(v139 + v146))
      {
        (v142)(v139 + v146, v140);
      }

      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_443();
    }
  }

  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_415();

  return MEMORY[0x1EEE6BDD0](v147, v148, v149);
}