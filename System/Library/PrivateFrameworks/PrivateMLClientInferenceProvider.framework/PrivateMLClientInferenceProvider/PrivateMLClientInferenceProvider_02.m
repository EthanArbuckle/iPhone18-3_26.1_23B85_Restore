uint64_t sub_21D074AE4()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *v1;
  *(*v1 + 944) = v0;

  v5 = *(v2 + 928);
  v6 = *(v2 + 896);

  if (v0)
  {
    v7 = sub_21D074EB4;
  }

  else
  {
    v7 = sub_21D074C34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D074C34()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[111];
  v40 = v0[109];
  v42 = v0[110];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[105];
  v9 = v0[104];
  v38 = v0[88];
  v10 = v0[84];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  sub_21D058258(v6, v5);

  v40(v38, v10);
  v11 = v0[103];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[96];
  v15 = v0[93];
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[86];
  v23 = v0[83];
  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[76];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[71];
  v32 = v0[68];
  v33 = v0[67];
  v34 = v0[64];
  v35 = v0[63];
  v36 = v0[60];
  v37 = v0[57];
  v39 = v0[54];
  v41 = v0[51];
  v43 = v0[50];

  v21 = v0[1];

  return v21();
}

uint64_t sub_21D074EB4()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[104];

  (*(v2 + 8))(v1, v3);

  v44 = v0[118];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[105];
  v12 = v0[88];
  v13 = v0[84];

  sub_21D058258(v9, v8);

  v7(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v14 = v0[103];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[96];
  v18 = v0[93];
  v19 = v0[92];
  v20 = v0[91];
  v21 = v0[88];
  v22 = v0[87];
  v23 = v0[86];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[79];
  v29 = v0[76];
  v30 = v0[75];
  v31 = v0[74];
  v32 = v0[73];
  v33 = v0[72];
  v34 = v0[71];
  v35 = v0[68];
  v36 = v0[67];
  v37 = v0[64];
  v38 = v0[63];
  v39 = v0[60];
  v40 = v0[57];
  v41 = v0[54];
  v42 = v0[51];
  v43 = v0[50];

  v24 = v0[1];

  return v24();
}

uint64_t sub_21D075130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[78] = a7;
  v7[77] = a6;
  v7[76] = a5;
  v7[75] = a4;
  v7[74] = a3;
  v7[73] = a2;
  v7[72] = a1;
  v8 = sub_21D0930F0();
  v7[79] = v8;
  v9 = *(v8 - 8);
  v7[80] = v9;
  v10 = *(v9 + 64) + 15;
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v11 = sub_21D093EF0();
  v7[84] = v11;
  v12 = *(v11 - 8);
  v7[85] = v12;
  v13 = *(v12 + 64) + 15;
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v14 = *(*(sub_21D093B60() - 8) + 64) + 15;
  v7[89] = swift_task_alloc();
  v15 = *(*(sub_21D093900() - 8) + 64) + 15;
  v7[90] = swift_task_alloc();
  v16 = sub_21D093A30();
  v7[91] = v16;
  v17 = *(v16 - 8);
  v7[92] = v17;
  v18 = *(v17 + 64) + 15;
  v7[93] = swift_task_alloc();
  v19 = sub_21D0938F0();
  v7[94] = v19;
  v20 = *(v19 - 8);
  v7[95] = v20;
  v21 = *(v20 + 64) + 15;
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();
  v22 = sub_21D0938B0();
  v7[98] = v22;
  v23 = *(v22 - 8);
  v7[99] = v23;
  v24 = *(v23 + 64) + 15;
  v7[100] = swift_task_alloc();
  v25 = sub_21D0937B0();
  v7[101] = v25;
  v26 = *(v25 - 8);
  v7[102] = v26;
  v27 = *(v26 + 64) + 15;
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490) - 8) + 64) + 15;
  v7[106] = swift_task_alloc();
  v7[107] = swift_task_alloc();
  v29 = sub_21D093570();
  v7[108] = v29;
  v30 = *(v29 - 8);
  v7[109] = v30;
  v31 = *(v30 + 64) + 15;
  v7[110] = swift_task_alloc();
  v7[111] = swift_task_alloc();
  v32 = sub_21D093630();
  v7[112] = v32;
  v33 = *(v32 - 8);
  v7[113] = v33;
  v34 = *(v33 + 64) + 15;
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v35 = sub_21D093840();
  v7[117] = v35;
  v36 = *(v35 - 8);
  v7[118] = v36;
  v37 = *(v36 + 64) + 15;
  v7[119] = swift_task_alloc();
  v7[120] = swift_task_alloc();
  v38 = sub_21D093820();
  v7[121] = v38;
  v39 = *(v38 - 8);
  v7[122] = v39;
  v40 = *(v39 + 64) + 15;
  v7[123] = swift_task_alloc();
  v7[124] = swift_task_alloc();
  v7[125] = swift_task_alloc();
  v41 = sub_21D092FC0();
  v7[126] = v41;
  v42 = *(v41 - 8);
  v7[127] = v42;
  v43 = *(v42 + 64) + 15;
  v7[128] = swift_task_alloc();
  v44 = sub_21D0933E0();
  v7[129] = v44;
  v45 = *(v44 - 8);
  v7[130] = v45;
  v46 = *(v45 + 64) + 15;
  v7[131] = swift_task_alloc();
  v47 = sub_21D093420();
  v7[132] = v47;
  v48 = *(v47 - 8);
  v7[133] = v48;
  v49 = *(v48 + 64) + 15;
  v7[134] = swift_task_alloc();
  v7[135] = swift_task_alloc();
  v7[136] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430) - 8) + 64) + 15;
  v7[137] = swift_task_alloc();
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498) - 8) + 64) + 15;
  v7[138] = swift_task_alloc();
  v52 = sub_21D093C30();
  v7[139] = v52;
  v53 = *(v52 - 8);
  v7[140] = v53;
  v54 = *(v53 + 64) + 15;
  v7[141] = swift_task_alloc();
  v55 = sub_21D0935E0();
  v7[142] = v55;
  v56 = *(v55 - 8);
  v7[143] = v56;
  v57 = *(v56 + 64) + 15;
  v7[144] = swift_task_alloc();
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0) - 8) + 64) + 15;
  v7[145] = swift_task_alloc();
  v7[146] = swift_task_alloc();
  v59 = sub_21D0934B0();
  v7[147] = v59;
  v60 = *(v59 - 8);
  v7[148] = v60;
  v61 = *(v60 + 64) + 15;
  v7[149] = swift_task_alloc();
  v62 = sub_21D0941C0();
  v7[150] = v62;
  v63 = *(v62 - 8);
  v7[151] = v63;
  v64 = *(v63 + 64) + 15;
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0) - 8) + 64) + 15;
  v7[156] = swift_task_alloc();
  v66 = sub_21D093460();
  v7[157] = v66;
  v67 = *(v66 - 8);
  v7[158] = v67;
  v68 = *(v67 + 64) + 15;
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v69 = sub_21D094180();
  v7[161] = v69;
  v70 = *(v69 - 8);
  v7[162] = v70;
  v71 = *(v70 + 64) + 15;
  v7[163] = swift_task_alloc();
  v7[164] = swift_task_alloc();
  v7[165] = swift_task_alloc();
  v7[166] = swift_task_alloc();
  v7[167] = swift_task_alloc();
  v7[168] = swift_task_alloc();
  v7[169] = swift_task_alloc();
  v7[170] = swift_task_alloc();
  v7[171] = swift_task_alloc();
  v72 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54488, &unk_21D0964A0) - 8) + 64) + 15;
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  v7[174] = swift_task_alloc();
  v73 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0) - 8) + 64) + 15;
  v7[175] = swift_task_alloc();
  v7[176] = swift_task_alloc();
  v7[177] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D075BEC, 0, 0);
}

uint64_t sub_21D075BEC()
{
  v36 = v0;
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  v6 = *(v0 + 624);
  v7 = *(v0 + 592);
  *(v0 + 488) = 0;
  *(v0 + 496) = 0xE000000000000000;
  (*(v4 + 56))(v1, 1, 1, v5);
  v8 = sub_21D093C50();
  *(v0 + 1424) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  *(v0 + 1432) = v10;
  *(v0 + 1440) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v2, 1, 1, v8);
  *(v0 + 1448) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v11 = sub_21D0941A0();
  v12 = sub_21D094660();

  if (sub_21D094680())
  {
    v13 = *(v0 + 1368);
    v14 = *(v0 + 624);
    v15 = *(v0 + 616);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_21D05550C(v15, v14, &v35);
    v18 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v11, v12, v18, "requestOneShot", "first token requestIdentifier=%{public, signpost.description=attribute,public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223D3CDF0](v17, -1, -1);
    MEMORY[0x223D3CDF0](v16, -1, -1);
  }

  v19 = *(v0 + 1368);
  v20 = *(v0 + 1360);
  v21 = *(v0 + 1296);
  v22 = *(v0 + 1288);
  v23 = *(v21 + 16);
  *(v0 + 1456) = v23;
  *(v0 + 1464) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v20, v19, v22);
  v24 = sub_21D0941F0();
  *(v0 + 1472) = v24;
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_21D0941E0();
  v28 = *(v21 + 8);
  *(v0 + 1480) = v28;
  *(v0 + 1488) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v19, v22);
  *(v0 + 1496) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v29 = MEMORY[0x277D41510];
  *(v0 + 1536) = *MEMORY[0x277D41518];
  *(v0 + 1540) = *v29;
  *(v0 + 1544) = *MEMORY[0x277D41500];
  v30 = MEMORY[0x277D414E0];
  *(v0 + 1548) = *MEMORY[0x277D41508];
  *(v0 + 1552) = *v30;
  *(v0 + 1556) = *MEMORY[0x277D85B00];
  *(v0 + 1512) = 0;
  *(v0 + 1504) = v27;
  *(v0 + 1560) = 0;
  v31 = swift_task_alloc();
  *(v0 + 1520) = v31;
  *v31 = v0;
  v31[1] = sub_21D075F38;
  v32 = *(v0 + 1248);
  v33 = *(v0 + 584);

  return sub_21D059134(v32);
}

uint64_t sub_21D075F38()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v7 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v4 = *(v2 + 496);

    v5 = sub_21D07A424;
  }

  else
  {
    v5 = sub_21D076054;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_21D076054()
{
  v861 = v0;
  v1 = v0;
  v2 = v0[158];
  v3 = v1[157];
  v4 = v1[156];
  v856 = v1;
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v1[188];
    v6 = v1[181];
    v7 = v1[163];
    v8 = v1[78];
    v9 = v1[74];
    sub_21D04D27C(v4, &qword_27CE54250, &unk_21D095CB0);

    v10 = sub_21D0941A0();
    sub_21D0941D0();
    v11 = sub_21D094650();

    if (sub_21D094680())
    {
      v12 = v1[188];
      v13 = *(v1 + 389);
      v14 = v1[152];
      v15 = v1[151];
      v16 = v1[150];

      sub_21D094200();

      if ((*(v15 + 88))(v14, v16) == v13)
      {
        v17 = 0;
        v18 = 0;
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[151] + 8))(v1[152], v1[150]);
        v19 = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v18 = 2;
        v17 = 1;
      }

      v830 = v1[185];
      v847 = v1[186];
      v69 = v1[163];
      v813 = v1[161];
      v70 = v1[78];
      v71 = v1[77];
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v860[0] = v73;
      *v72 = v18;
      *(v72 + 1) = v17;
      *(v72 + 2) = 2082;
      *(v72 + 4) = sub_21D05550C(v71, v70, v860);
      v74 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v74, "requestOneShot", v19, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x223D3CDF0](v73, -1, -1);
      v75 = v72;
      v1 = v856;
      MEMORY[0x223D3CDF0](v75, -1, -1);

      v830(v69, v813);
    }

    else
    {
      v43 = v1[186];
      v44 = v1[185];
      v45 = v1[163];
      v46 = v1[161];

      v44(v45, v46);
    }

    v76 = v1[177];
    v77 = v1[175];
    v78 = v1[125];
    v79 = v1[122];
    v80 = v1[121];
    v81 = v1[120];
    v82 = v1[113];
    v831 = v1[112];
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
    v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v771 = *(v79 + 72);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_21D0959B0;
    v814 = v83;
    v788 = *(v79 + 16);
    v788(v84 + v83, v78, v80);
    sub_21D093830();
    sub_21D05B270(v76, v77, &qword_27CE54248, &unk_21D095CA0);
    if ((*(v82 + 48))(v77, 1, v831) == 1)
    {
      sub_21D04D27C(v1[175], &qword_27CE54248, &unk_21D095CA0);
      goto LABEL_44;
    }

    v85 = v1[187];
    v86 = v1[116];
    v87 = v1[115];
    v88 = v1[113];
    v89 = v1[112];
    v90 = v1[78];
    v91 = v1[74];
    (*(v88 + 32))(v86, v1[175], v89);
    v92 = *(v88 + 16);
    v92(v87, v86, v89);

    v93 = sub_21D094210();
    v94 = sub_21D094550();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v1[115];
    if (v95)
    {
      v97 = v1[114];
      v98 = v1[113];
      v99 = v1[112];
      v832 = v1[78];
      v749 = v1[77];
      v100 = swift_slowAlloc();
      v756 = swift_slowAlloc();
      v860[0] = v756;
      *v100 = 136315394;
      *(v100 + 4) = sub_21D05550C(v749, v832, v860);
      *(v100 + 12) = 2082;
      v92(v97, v96, v99);
      v101 = sub_21D094430();
      v103 = v102;
      v833 = *(v98 + 8);
      v833(v96, v99);
      v104 = sub_21D05550C(v101, v103, v860);

      *(v100 + 14) = v104;
      _os_log_impl(&dword_21D044000, v93, v94, "%s %{public}s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v756, -1, -1);
      MEMORY[0x223D3CDF0](v100, -1, -1);
    }

    else
    {
      v127 = v1[113];
      v128 = v1[112];

      v833 = *(v127 + 8);
      v833(v96, v128);
    }

    v129 = v1[116];
    v130 = v1[109];
    v131 = v1[108];
    v132 = v1[107];
    sub_21D093610();
    v133 = *(v130 + 48);
    if (v133(v132, 1, v131) == 1)
    {
      v134 = v1[116];
      v135 = v1[108];
      v136 = v1[106];
      sub_21D04D27C(v1[107], &qword_27CE54478, &qword_21D096490);
      sub_21D093620();
      if (v133(v136, 1, v135) == 1)
      {
        v137 = v1[106];
        v138 = v1[113] + 8;
        v833(v1[116], v1[112]);
        sub_21D04D27C(v137, &qword_27CE54478, &qword_21D096490);
        goto LABEL_44;
      }

      v139 = v1[125];
      v140 = v1[123];
      v141 = v1[122];
      v142 = v1[121];
      v750 = v1[117];
      v757 = v1[120];
      v204 = v1[116];
      v732 = v1[119];
      v736 = v1[113];
      v740 = v1[112];
      v744 = v1[118];
      v144 = v856[110];
      v145 = v856[109];
      v726 = v204;
      v729 = v856[108];
      v146 = v856[106];
    }

    else
    {
      v139 = v1[125];
      v140 = v1[124];
      v141 = v1[122];
      v142 = v1[121];
      v750 = v1[117];
      v757 = v1[120];
      v143 = v1[116];
      v732 = v1[119];
      v735 = v1[113];
      v740 = v1[112];
      v744 = v1[118];
      v144 = v856[111];
      v145 = v856[109];
      v726 = v143;
      v729 = v856[108];
      v146 = v856[107];
    }

    (*(v145 + 32))(v144, v146);
    sub_21D093550();
    sub_21D093560();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    (*(v141 + 8))(v139, v142);
    (*(v141 + 32))(v139, v140, v142);
    v205 = swift_allocObject();
    *(v205 + 16) = xmmword_21D0959B0;
    v788(v205 + v814, v139, v142);
    sub_21D093600();
    sub_21D093830();
    v206 = v144;
    v1 = v856;
    (*(v145 + 8))(v206, v729);
    v833(v726, v740);
    (*(v744 + 8))(v757, v750);
    (*(v744 + 32))(v757, v732, v750);
LABEL_44:
    v207 = v1[187];
    v208 = v1[105];
    v209 = v1[104];
    v210 = v1[102];
    v211 = v1[101];
    v212 = v1[74];
    if (*(v1 + 1560))
    {
      v213 = MEMORY[0x277D71B68];
    }

    else
    {
      v213 = MEMORY[0x277D71B50];
    }

    (*(v1[102] + 104))(v1[105], *v213, v1[101]);
    v835 = *(v210 + 16);
    v835(v209, v208, v211);
    v214 = sub_21D094210();
    v215 = sub_21D094550();
    v216 = os_log_type_enabled(v214, v215);
    v217 = v1[104];
    if (v216)
    {
      v218 = v1[103];
      v219 = v1[102];
      v220 = v1[101];
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v860[0] = v222;
      *v221 = 136315138;
      v835(v218, v217, v220);
      v223 = sub_21D094430();
      v225 = v224;
      v781 = *(v219 + 8);
      v781(v217, v220);
      v226 = sub_21D05550C(v223, v225, v860);
      v1 = v856;

      *(v221 + 4) = v226;
      _os_log_impl(&dword_21D044000, v214, v215, "Request finished with reason: %s", v221, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v222);
      MEMORY[0x223D3CDF0](v222, -1, -1);
      MEMORY[0x223D3CDF0](v221, -1, -1);
    }

    else
    {
      v227 = v1[102];
      v228 = v1[101];

      v781 = *(v227 + 8);
      v781(v217, v228);
    }

    v806 = v1[189];
    v772 = v1[105];
    v229 = v1[103];
    v230 = v1[101];
    v231 = v1[100];
    v232 = v1[99];
    v233 = v1[98];
    v234 = v1[95];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54200, &qword_21D095B50);
    v235 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v817 = *(v234 + 72);
    v236 = swift_allocObject();
    *(v236 + 16) = xmmword_21D0959B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
    v237 = *(sub_21D0938D0() - 8);
    v238 = *(v237 + 72);
    v239 = (*(v237 + 80) + 32) & ~*(v237 + 80);
    *(swift_allocObject() + 16) = xmmword_21D0959B0;
    v240 = v1[61];
    v241 = v1[62];
    sub_21D093850();
    (*(v232 + 104))(v231, *MEMORY[0x277D71C10], v233);
    sub_21D0938C0();
    v835(v229, v772, v230);
    v836 = v235;
    sub_21D0938E0();
    v242 = v1[191];
    if (v806)
    {
      v243 = v1[189];
      v244 = sub_21D054080();
      if (v242)
      {
        v245 = v1[188];
        v246 = v1[125];
        v247 = v1[122];
        v773 = v1[121];
        v248 = v1[120];
        v249 = v1[118];
        v250 = v1[117];
        v251 = v856[105];
        v252 = v856[102];
        v253 = v856[101];
        v818 = v246;
        v837 = v856[76];
        v792 = v856[75];
        v254 = v856[74];

        v255 = v251;
        v1 = v856;
        v781(v255, v253);
        (*(v249 + 8))(v248, v250);
        (*(v247 + 8))(v818, v773);

        v256 = v254;
        v257 = v792;
        v258 = v837;
LABEL_63:
        sub_21D07BA24(v256, v257, v258);
LABEL_64:
        v296 = v1;
        v297 = v1[177];
        v298 = v296[176];
        v299 = v296[175];
        v300 = v296[173];
        v301 = v296[172];
        v302 = v296[171];
        v303 = v296[170];
        v304 = v296[169];
        v654 = v296[168];
        v656 = v296[167];
        v658 = v296[166];
        v660 = v296[165];
        v662 = v296[164];
        v664 = v296[163];
        v666 = v296[160];
        v668 = v296[159];
        v670 = v296[156];
        v672 = v296[155];
        v674 = v296[154];
        v676 = v296[153];
        v678 = v296[152];
        v680 = v296[149];
        v682 = v296[146];
        v684 = v296[145];
        v686 = v296[144];
        v688 = v296[141];
        v690 = v296[138];
        v692 = v296[137];
        v694 = v296[136];
        v696 = v296[135];
        v698 = v296[134];
        v700 = v296[131];
        v702 = v296[128];
        v704 = v296[125];
        v706 = v296[124];
        v708 = v296[123];
        v710 = v296[120];
        v712 = v296[119];
        v714 = v296[116];
        v716 = v296[115];
        v718 = v296[114];
        v720 = v296[111];
        v722 = v296[110];
        v724 = v296[107];
        v727 = v296[106];
        v730 = v296[105];
        v733 = v296[104];
        v737 = v296[103];
        v741 = v296[100];
        v745 = v296[97];
        v751 = v296[96];
        v759 = v296[93];
        v765 = v296[90];
        v775 = v296[89];
        v782 = v296[88];
        v795 = v296[87];
        v820 = v296[86];
        v839 = v296[83];
        v851 = v296[82];
        v858 = v296[81];
        sub_21D04D27C(v296[174], &qword_27CE54488, &unk_21D0964A0);
        sub_21D04D27C(v297, &qword_27CE54248, &unk_21D095CA0);

        v305 = v296[1];
LABEL_65:

        return v305();
      }

      v259 = *(v244 + 16);
      if (v259)
      {
        v260 = v1[95];
        v261 = v236;
        v262 = v244 + v836;
        v793 = *(v260 + 16);
        v263 = (v260 + 8);
        v264 = (v260 + 32);
        do
        {
          v265 = v1[97];
          v266 = v1[96];
          v267 = v1[94];
          v793(v265, v262, v267);
          v793(v266, v265, v267);
          v269 = v261[2];
          v268 = v261[3];
          if (v269 >= v268 >> 1)
          {
            v850 = sub_21D05524C(v268 > 1, v269 + 1, 1, v261);
          }

          else
          {
            v850 = v261;
          }

          v1 = v856;
          v270 = v856[96];
          v271 = v856[94];
          (*v263)(v856[97], v271);
          v261 = v850;
          *(v850 + 16) = v269 + 1;
          (*v264)(v850 + v836 + v269 * v817, v270, v271);
          v262 += v817;
          --v259;
        }

        while (v259);
      }

      v242 = 0;
    }

    v272 = v1[174];
    v273 = v1[172];
    v274 = v1[120];
    v275 = v1[119];
    v276 = v1[118];
    v277 = v1[117];
    v278 = v1[93];
    v279 = v1[91];
    v280 = v856[90];
    v281 = v856[89];
    (*(v276 + 16))(v275, v274, v277);

    sub_21D093B50();
    sub_21D05B270(v272, v273, &qword_27CE54488, &unk_21D0964A0);
    sub_21D0938A0();
    sub_21D093A20();
    sub_21D091B40(&qword_281221790, MEMORY[0x277D71CC8]);
    v283 = sub_21D0937D0();
    v838 = v856[189];
    v284 = v856[188];
    if (!v242)
    {
      v306 = v282;
      v647 = v856[177];
      v648 = v856[176];
      v646 = v856[174];
      v649 = v856[175];
      v650 = v856[173];
      v651 = v856[172];
      v652 = v856[171];
      v653 = v856[170];
      v655 = v856[169];
      v657 = v856[168];
      v659 = v856[167];
      v661 = v856[166];
      v663 = v856[165];
      v665 = v856[164];
      v667 = v856[163];
      v669 = v856[160];
      v671 = v856[159];
      v673 = v856[156];
      v675 = v856[155];
      v677 = v856[154];
      v679 = v856[153];
      v681 = v856[152];
      v683 = v856[149];
      v685 = v856[146];
      v687 = v856[145];
      v689 = v856[144];
      v691 = v856[141];
      v693 = v856[138];
      v695 = v856[137];
      v697 = v856[136];
      v699 = v856[135];
      v701 = v856[134];
      v703 = v856[131];
      v705 = v856[128];
      v707 = v856[124];
      v307 = v856[122];
      v644 = v856[121];
      v645 = v856[125];
      v709 = v856[123];
      v711 = v856[119];
      v308 = v856[118];
      v642 = v856[117];
      v643 = v856[120];
      v713 = v856[116];
      v715 = v856[115];
      v717 = v856[114];
      v719 = v856[111];
      v721 = v856[110];
      v723 = v856[107];
      v725 = v856[106];
      v638 = v856[105];
      v728 = v856[104];
      v731 = v856[103];
      v636 = v856[102];
      v637 = v856[101];
      v734 = v856[100];
      v738 = v856[97];
      v309 = v856[93];
      v310 = v856[92];
      v311 = v856[91];
      v742 = v856[96];
      v746 = v856[90];
      v752 = v856[89];
      v760 = v856[88];
      v766 = v856[87];
      v776 = v856[86];
      v796 = v856[83];
      v807 = v856[82];
      v821 = v856[81];
      v640 = v856[75];
      v641 = v856[76];
      v639 = v856[74];
      v312 = v856[72];
      sub_21D055C20(v283, v282);
      MEMORY[0x223D3BF70](v283, v306);

      sub_21D04FE3C(v283, v306);
      (*(v310 + 8))(v309, v311);
      v781(v638, v637);
      (*(v308 + 8))(v643, v642);
      (*(v307 + 8))(v645, v644);

      sub_21D07BA24(v639, v640, v641);
      sub_21D04D27C(v646, &qword_27CE54488, &unk_21D0964A0);
      sub_21D04D27C(v647, &qword_27CE54248, &unk_21D095CA0);

      v305 = v856[1];
      goto LABEL_65;
    }

    v819 = v856[125];
    v285 = v856[122];
    v794 = v856[121];
    v286 = v856[120];
    v287 = v856[118];
    v288 = v856[117];
    v289 = v856[105];
    v290 = v856[102];
    v291 = v856[101];
    v292 = v856[93];
    v293 = v856[92];
    v294 = v856[91];
    v764 = v856[75];
    v774 = v856[76];
    v758 = v856[74];

    v295 = v292;
    v1 = v856;
    (*(v293 + 8))(v295, v294);
    v781(v289, v291);
    (*(v287 + 8))(v286, v288);
    (*(v285 + 8))(v819, v794);

    v256 = v758;
    v257 = v764;
    v258 = v774;
    goto LABEL_63;
  }

  v20 = *(v1 + 384);
  v21 = v1[160];
  v22 = v1[159];
  (*(v2 + 32))(v21, v4, v3);
  (*(v2 + 16))(v22, v21, v3);
  v23 = (*(v2 + 88))(v22, v3);
  if (v23 == v20)
  {
    v24 = v1[188];
    v25 = v1[181];
    v26 = v1[169];
    v27 = v1[159];
    v28 = v1[78];
    v29 = v1[76];
    v30 = v1[74];
    (*(v1[158] + 96))(v27, v1[157]);
    v32 = *v27;
    v31 = v27[1];
    sub_21D093660();

    v33 = sub_21D0941A0();
    sub_21D0941D0();
    v34 = sub_21D094650();

    v829 = v32;
    v846 = v31;
    if (sub_21D094680())
    {
      v812 = v34;
      v35 = v1[188];
      v36 = *(v1 + 389);
      v37 = v1[155];
      v38 = v1[151];
      v39 = v1[150];

      sub_21D094200();

      if ((*(v38 + 88))(v37, v39) == v36)
      {
        v40 = 0;
        v41 = 0;
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[151] + 8))(v1[155], v1[150]);
        v42 = "token received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v41 = 2;
        v40 = 1;
      }

      v147 = v1[186];
      v148 = v1[169];
      v790 = v1[161];
      v804 = v1[185];
      v149 = v1[78];
      v150 = v856[77];
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v860[0] = v152;
      *v151 = v41;
      *(v151 + 1) = v40;
      *(v151 + 2) = 2082;
      v153 = v149;
      v1 = v856;
      *(v151 + 4) = sub_21D05550C(v150, v153, v860);
      v154 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v33, v812, v154, "requestOneShot", v42, v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x223D3CDF0](v152, -1, -1);
      MEMORY[0x223D3CDF0](v151, -1, -1);

      v804(v148, v790);
    }

    else
    {
      v105 = v1[186];
      v106 = v1[185];
      v107 = v1[169];
      v108 = v1[161];

      v106(v107, v108);
    }

    v155 = v1[181];
    v156 = v1[168];
    v157 = v1[74];
    sub_21D0941A0();
    sub_21D094150();
    v158 = sub_21D0941A0();
    v159 = sub_21D094660();
    if (sub_21D094680())
    {
      v160 = v1[168];
      v161 = swift_slowAlloc();
      *v161 = 0;
      v162 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v158, v159, v162, "requestOneShot", "extend token", v161, 2u);
      MEMORY[0x223D3CDF0](v161, -1, -1);
    }

    v163 = v1[188];
    v791 = v1[185];
    v805 = v1[186];
    v164 = v1[184];
    v165 = v1[183];
    v166 = v1[182];
    v167 = v1[170];
    v168 = v1[168];
    v169 = v1[161];
    v857 = v1[160];
    v170 = v1[158];
    v816 = v1[157];

    v166(v167, v168, v169);
    v171 = *(v164 + 48);
    v172 = *(v164 + 52);
    swift_allocObject();
    v173 = sub_21D0941E0();

    v791(v168, v169);
    MEMORY[0x223D3C530](v829, v846);

    (*(v170 + 8))(v857, v816);
    v174 = v1[189];
    goto LABEL_34;
  }

  if (v23 == *(v1 + 385))
  {
    v47 = v1[188];
    v48 = v1[181];
    v49 = v1[165];
    v50 = v1[159];
    v51 = v1[158];
    v52 = v1[157];
    v53 = v1[131];
    v54 = v1[130];
    v55 = v1[129];
    v56 = v1[78];
    v57 = v1;
    v58 = v1[74];
    (*(v51 + 96))(v50, v52);
    (*(v54 + 32))(v53, v50, v55);

    v59 = sub_21D0941A0();
    sub_21D0941D0();
    v60 = sub_21D094650();

    if (sub_21D094680())
    {
      v61 = v57[188];
      v62 = *(v57 + 389);
      v63 = v57[153];
      v64 = v57[151];
      v65 = v57[150];

      sub_21D094200();

      if ((*(v64 + 88))(v63, v65) == v62)
      {
        v66 = 0;
        v67 = 0;
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v57[151] + 8))(v57[153], v57[150]);
        v68 = "media chunk received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v67 = 2;
        v66 = 1;
      }

      v840 = v57[185];
      v852 = v57[186];
      v313 = v57[165];
      v822 = v57[161];
      v314 = v57[78];
      v315 = v57[77];
      v316 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v860[0] = v317;
      *v316 = v67;
      *(v316 + 1) = v66;
      *(v316 + 2) = 2082;
      *(v316 + 4) = sub_21D05550C(v315, v314, v860);
      v318 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v59, v60, v318, "requestOneShot", v68, v316, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v317);
      MEMORY[0x223D3CDF0](v317, -1, -1);
      v184 = v856;
      MEMORY[0x223D3CDF0](v316, -1, -1);

      v840(v313, v822);
    }

    else
    {
      v180 = v57[186];
      v181 = v57[185];
      v182 = v57[165];
      v183 = v57[161];

      v181(v182, v183);
      v184 = v57;
    }

    v319 = v184[181];
    v320 = v184[164];
    v321 = v184[74];
    sub_21D0941A0();
    sub_21D094150();
    v322 = sub_21D0941A0();
    v323 = sub_21D094660();
    if (sub_21D094680())
    {
      v324 = v184[164];
      v325 = swift_slowAlloc();
      *v325 = 0;
      v326 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v322, v323, v326, "requestOneShot", "extend token", v325, 2u);
      MEMORY[0x223D3CDF0](v325, -1, -1);
    }

    v327 = v184[188];
    v823 = v184[186];
    v841 = v184[189];
    v328 = v184[185];
    v329 = v184[184];
    v330 = v184[183];
    v331 = v184[182];
    v332 = v184[170];
    v333 = v184[164];
    v334 = v184[161];

    v331(v332, v333, v334);
    v335 = *(v329 + 48);
    v336 = *(v329 + 52);
    swift_allocObject();
    v853 = sub_21D0941E0();

    v328(v333, v334);
    if (v841)
    {
      v174 = v184[189];
      v1 = v184;
      if (*(v174 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) == 1)
      {
        v337 = v184[160];
        v338 = v184[158];
        v339 = v184[157];
        v340 = v184[131];
        v341 = v184[130];
        v342 = v184[129];
        v343 = v184[62];

        type metadata accessor for MediaProcessor.InternalError(0);
        sub_21D091B40(&qword_27CE54100, type metadata accessor for MediaProcessor.InternalError);
        v344 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v341 + 8))(v340, v342);
        (*(v338 + 8))(v337, v339);
        v345 = v1[189];
        goto LABEL_100;
      }
    }

    else
    {
      v346 = v184[128];
      v347 = v184[127];
      v348 = v184[126];
      sub_21D092FB0();
      v349 = sub_21D092FA0();
      v351 = v350;
      (*(v347 + 8))(v346, v348);
      v1 = v184;
      if (qword_27CE53E98 != -1)
      {
        swift_once();
      }

      v352 = qword_27CE540E8;
      v353 = qword_27CE53EA0;

      if (v353 != -1)
      {
        swift_once();
      }

      v354 = qword_27CE540F0;
      v355 = type metadata accessor for MediaProcessor(0);
      v356 = *(v355 + 48);
      v357 = *(v355 + 52);
      v358 = swift_allocObject();
      v359 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v360 = qword_281221778;

      if (v360 != -1)
      {
        swift_once();
      }

      v361 = sub_21D094230();
      v362 = __swift_project_value_buffer(v361, qword_2812217C8);
      (*(*(v361 - 8) + 16))(v358 + v359, v362, v361);
      v363 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v364 = MEMORY[0x277D84F90];
      *(v358 + v363) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v365 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v358 + v365) = sub_21D08FF98(v364);
      v366 = (v358 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v366 = v349;
      v366[1] = v351;
      *(v358 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v352;
      *(v358 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v354;
      *(v358 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 0;
      v174 = v358;
    }

    v367 = v1[191];
    sub_21D0525F4(v1[131]);
    v344 = v367;
    v368 = v1[160];
    v369 = v1[158];
    v370 = v1[157];
    v371 = v1[131];
    v372 = v1[130];
    v373 = v1[129];
    if (!v344)
    {

      (*(v372 + 8))(v371, v373);
      (*(v369 + 8))(v368, v370);
      v175 = *(v1 + 1560);
      v173 = v853;
      goto LABEL_35;
    }

    (*(v372 + 8))(v1[131], v1[129]);
    (*(v369 + 8))(v368, v370);
    v374 = v1[62];

LABEL_100:
    v433 = v1[88];
    v434 = v1[84];
    v1[65] = v344;
    v435 = v344;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v436 = v1[187];
      v437 = v1[88];
      v438 = v1[87];
      v439 = v1[86];
      v440 = v1[85];
      v441 = v1[84];
      v442 = v856[78];
      v443 = v856[74];

      (*(v440 + 32))(v438, v437, v441);
      v826 = *(v440 + 16);
      v826(v439, v438, v441);

      v444 = sub_21D094210();
      v445 = sub_21D094570();
      v446 = v856;

      v447 = os_log_type_enabled(v444, v445);
      v448 = v856[86];
      v449 = v856[85];
      v450 = v856[84];
      if (v447)
      {
        v451 = v856[78];
        v798 = v445;
        v452 = v856[77];
        v453 = swift_slowAlloc();
        v784 = swift_slowAlloc();
        v860[0] = v784;
        *v453 = 136315394;
        *(v453 + 4) = sub_21D05550C(v452, v451, v860);
        *(v453 + 12) = 2080;
        sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
        v454 = sub_21D094790();
        v456 = v455;
        v457 = *(v449 + 8);
        v457(v448, v450);
        v458 = sub_21D05550C(v454, v456, v860);

        *(v453 + 14) = v458;
        _os_log_impl(&dword_21D044000, v444, v798, "Oneshot request %s failed: %s", v453, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v784, -1, -1);
        MEMORY[0x223D3CDF0](v453, -1, -1);
      }

      else
      {

        v457 = *(v449 + 8);
        v457(v448, v450);
      }

      v484 = v856[87];
      v485 = v856[84];
      v486 = v856[76];
      v487 = v856[75];
      v488 = v856[74];
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      swift_allocError();
      v826(v489, v484, v485);
      swift_willThrow();

      v457(v484, v485);

      v490 = v488;
    }

    else
    {
      v459 = v1[83];
      v460 = v1[79];

      v1[66] = v344;
      v461 = v344;
      if (!swift_dynamicCast())
      {

        v1[67] = v344;
        v491 = v344;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
        if (swift_dynamicCast())
        {
          v492 = v1[187];
          v493 = v1[74];

          sub_21D046D78(v1 + 9, (v1 + 38));
          sub_21D0590D0((v1 + 38), (v1 + 43));
          sub_21D0590D0((v1 + 38), (v1 + 48));
          sub_21D0590D0((v1 + 38), (v1 + 53));
          v494 = sub_21D094210();
          v495 = sub_21D094550();
          if (os_log_type_enabled(v494, v495))
          {
            v496 = swift_slowAlloc();
            v497 = swift_slowAlloc();
            v860[0] = v497;
            *v496 = 136315650;
            v498 = v1[47];
            __swift_project_boxed_opaque_existential_1(v1 + 43, v1[46]);
            v499 = *(v498 + 8);
            v500 = sub_21D094090();
            v502 = v501;
            __swift_destroy_boxed_opaque_existential_0(v1 + 43);
            v503 = sub_21D05550C(v500, v502, v860);

            *(v496 + 4) = v503;
            *(v496 + 12) = 2048;
            v504 = v1[51];
            v505 = v856[52];
            __swift_project_boxed_opaque_existential_1(v856 + 48, v504);
            v506 = sub_21D093520();
            __swift_destroy_boxed_opaque_existential_0(v856 + 48);
            *(v496 + 14) = v506;
            *(v496 + 22) = 2080;
            v507 = v856[57];
            __swift_project_boxed_opaque_existential_1(v856 + 53, v856[56]);
            v1 = v856;
            v508 = sub_21D093530();
            v510 = v509;
            __swift_destroy_boxed_opaque_existential_0(v856 + 53);
            v511 = sub_21D05550C(v508, v510, v860);

            *(v496 + 24) = v511;
            _os_log_impl(&dword_21D044000, v494, v495, "Request failed with PrivateMLClientError: %s %ld %s", v496, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v497, -1, -1);
            MEMORY[0x223D3CDF0](v496, -1, -1);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v1 + 48);

            __swift_destroy_boxed_opaque_existential_0(v1 + 43);
            __swift_destroy_boxed_opaque_existential_0(v1 + 53);
          }

          v530 = v1[84];
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
          swift_allocError();
          v844 = v531;
          v532 = v1[42];
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          sub_21D093530();
          v533 = v1[42];
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          v534 = *(v533 + 8);
          sub_21D094090();
          v535 = v1[42];
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          result = sub_21D093520();
          if (!__OFADD__(result, 30000))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21D0959B0;
            v537 = *MEMORY[0x277CCA7E8];
            *(inited + 32) = sub_21D0943F0();
            *(inited + 40) = v538;
            v539 = v1[41];
            v540 = v1[42];
            __swift_project_boxed_opaque_existential_1(v1 + 38, v539);
            *(inited + 48) = MEMORY[0x223D3C1D0](v539, *(v540 + 8));
            *(inited + 56) = v541;
            sub_21D0900B0(inited);
            swift_setDeallocating();
            sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
            v543 = v1[41];
            v542 = v1[42];
            v544 = __swift_project_boxed_opaque_existential_1(v1 + 38, v543);
            v545 = *(v543 - 8);
            v546 = *(v545 + 64) + 15;
            v547 = swift_task_alloc();
            (*(v545 + 16))(v547, v544, v543);
            v548 = *(*(*(v542 + 8) + 8) + 8);
            if (sub_21D0947A0())
            {
              (*(v545 + 8))(v547, v543);
            }

            else
            {
              swift_allocError();
              (*(v545 + 32))(v598, v547, v543);
            }

            v599 = v856[85];
            v600 = v856[84];
            v601 = v856[76];
            v602 = v856[75];
            v603 = v856[74];
            v1 = v856;
            sub_21D093EC0();

            (*(v599 + 104))(v844, *MEMORY[0x277D29DA8], v600);
            swift_willThrow();

            __swift_destroy_boxed_opaque_existential_0(v856 + 38);

            v256 = v603;
            v257 = v602;
            v258 = v601;
            goto LABEL_63;
          }

          __break(1u);
        }

        else
        {

          v1[68] = v344;
          v516 = v344;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
          v517 = swift_dynamicCast();
          v518 = v1[187];
          v519 = v1[74];
          if (v517)
          {

            sub_21D046D78((v1 + 23), (v1 + 28));
            sub_21D0590D0((v1 + 28), (v1 + 33));
            v520 = sub_21D094210();
            v521 = sub_21D094550();
            if (os_log_type_enabled(v520, v521))
            {
              v522 = swift_slowAlloc();
              v827 = swift_slowAlloc();
              *v522 = 138412290;
              v524 = v1[36];
              v523 = v1[37];
              v525 = __swift_project_boxed_opaque_existential_1(v1 + 33, v524);
              v526 = *(v524 - 8);
              v527 = *(v526 + 64) + 15;
              v528 = swift_task_alloc();
              (*(v526 + 16))(v528, v525, v524);
              v529 = *(*(v523 + 8) + 8);
              if (sub_21D0947A0())
              {
                (*(v526 + 8))(v528, v524);
              }

              else
              {
                swift_allocError();
                (*(v526 + 32))(v623, v528, v524);
              }

              v624 = _swift_stdlib_bridgeErrorToNSError();
              v1 = v856;
              __swift_destroy_boxed_opaque_existential_0(v856 + 33);
              *(v522 + 4) = v624;
              *v827 = v624;
              _os_log_impl(&dword_21D044000, v520, v521, "Request failed with AppleIntelligenceError: %@", v522, 0xCu);
              sub_21D04D27C(v827, &qword_27CE54320, &qword_21D095EA0);
              MEMORY[0x223D3CDF0](v827, -1, -1);
              MEMORY[0x223D3CDF0](v522, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v1 + 33);
            }

            v625 = v1[31];
            v626 = v1[32];
            v627 = __swift_project_boxed_opaque_existential_1(v1 + 28, v625);
            v628 = *(v625 - 8);
            v629 = *(v628 + 64) + 15;
            v630 = swift_task_alloc();
            (*(v628 + 16))(v630, v627, v625);
            v631 = *(*(v626 + 8) + 8);
            if (sub_21D0947A0())
            {
              (*(v628 + 8))(v630, v625);
            }

            else
            {
              swift_allocError();
              (*(v628 + 32))(v632, v630, v625);
            }

            v633 = v1[76];
            v634 = v1[75];
            v635 = v1[74];
            swift_willThrow();

            __swift_destroy_boxed_opaque_existential_0(v1 + 28);

            v256 = v635;
            v257 = v634;
            v258 = v633;
            goto LABEL_63;
          }

          v549 = v344;
          v550 = sub_21D094210();
          v551 = sub_21D094550();

          if (os_log_type_enabled(v550, v551))
          {
            v552 = v1 + 70;
            v553 = swift_slowAlloc();
            v554 = swift_slowAlloc();
            v860[0] = v554;
            *v553 = 136315138;
            *v552 = v344;
            v555 = v344;
            v556 = sub_21D094430();
            v558 = sub_21D05550C(v556, v557, v860);

            *(v553 + 4) = v558;
            _os_log_impl(&dword_21D044000, v550, v551, "Request failed: %s", v553, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v554);
            v559 = v554;
            v1 = v856;
            MEMORY[0x223D3CDF0](v559, -1, -1);
            MEMORY[0x223D3CDF0](v553, -1, -1);
          }

          v560 = v1[84];
          v561 = sub_21D092F10();
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
          swift_allocError();
          v563 = v562;
          v1[69] = v344;
          v564 = v344;
          sub_21D094430();
          v565 = [v561 domain];
          sub_21D0943F0();

          result = [v561 code];
          if (!__OFADD__(result, 40000))
          {
            v566 = v1[85];
            v762 = v1[75];
            v768 = v1[76];
            v747 = v1[84];
            v754 = v1[74];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            v567 = swift_initStackObject();
            *(v567 + 16) = xmmword_21D0959B0;
            v568 = *MEMORY[0x277CCA7E8];
            *(v567 + 32) = sub_21D0943F0();
            *(v567 + 40) = v569;
            v570 = [v561 description];
            v571 = sub_21D0943F0();
            v573 = v572;

            *(v567 + 48) = v571;
            *(v567 + 56) = v573;
            v1 = v856;
            sub_21D0900B0(v567);
            swift_setDeallocating();
            sub_21D04D27C(v567 + 32, &qword_27CE542C0, &qword_21D095E28);
            v574 = v561;
            sub_21D093EC0();
            (*(v566 + 104))(v563, *MEMORY[0x277D29DA8], v747);
            swift_willThrow();

            v256 = v754;
            v257 = v762;
            v258 = v768;
            goto LABEL_63;
          }
        }

        __break(1u);
        return result;
      }

      v462 = v1[187];
      v463 = v1[83];
      v464 = v1[82];
      v465 = v1[81];
      v466 = v1[80];
      v467 = v1[79];
      v468 = v1[78];
      v469 = v1[74];

      (*(v466 + 32))(v464, v463, v467);
      v859 = *(v466 + 16);
      v859(v465, v464, v467);

      v470 = sub_21D094210();
      v471 = sub_21D094570();

      v472 = os_log_type_enabled(v470, v471);
      v473 = v1[81];
      v474 = v1[80];
      v475 = v1[79];
      if (v472)
      {
        v476 = v1[78];
        v477 = v1[77];
        v478 = swift_slowAlloc();
        v810 = swift_slowAlloc();
        v860[0] = v810;
        *v478 = 136315394;
        *(v478 + 4) = sub_21D05550C(v477, v476, v860);
        *(v478 + 12) = 2080;
        sub_21D091B40(&qword_27CE54498, MEMORY[0x277D41440]);
        v479 = sub_21D094790();
        v481 = v480;
        v482 = *(v474 + 8);
        v799 = v471;
        v446 = v1;
        v482(v473, v475);
        v483 = sub_21D05550C(v479, v481, v860);

        *(v478 + 14) = v483;
        _os_log_impl(&dword_21D044000, v470, v799, "%s One shot request failed with : %s", v478, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v810, -1, -1);
        MEMORY[0x223D3CDF0](v478, -1, -1);
      }

      else
      {

        v482 = *(v474 + 8);
        v446 = v1;
        v482(v473, v475);
      }

      v512 = v446[82];
      v513 = v446[79];
      v486 = v446[76];
      v487 = v446[75];
      v514 = v446[74];
      sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440]);
      swift_allocError();
      v859(v515, v512, v513);
      swift_willThrow();

      v482(v512, v513);

      v490 = v514;
    }

    sub_21D07BA24(v490, v487, v486);
    v1 = v446;
    goto LABEL_64;
  }

  if (v23 != *(v1 + 386))
  {
    if (v23 == *(v1 + 387))
    {
      v185 = v1[187];
      v186 = v1[159];
      v187 = v1[136];
      v188 = v1[135];
      v189 = v1[133];
      v190 = v1[132];
      v191 = v1[74];
      (*(v1[158] + 96))(v186, v1[157]);
      (*(v189 + 32))(v187, v186, v190);
      (*(v189 + 16))(v188, v187, v190);
      v192 = sub_21D094210();
      v193 = sub_21D094560();
      v194 = os_log_type_enabled(v192, v193);
      v195 = v1[135];
      v196 = v1[133];
      v197 = v1[132];
      if (v194)
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v860[0] = v199;
        *v198 = 136315138;
        sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8]);
        v200 = sub_21D094790();
        v202 = v201;
        v849 = *(v196 + 8);
        v849(v195, v197);
        v203 = sub_21D05550C(v200, v202, v860);
        v1 = v856;

        *(v198 + 4) = v203;
        _os_log_impl(&dword_21D044000, v192, v193, "requestOneShot completionReason: %s", v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x223D3CDF0](v199, -1, -1);
        MEMORY[0x223D3CDF0](v198, -1, -1);
      }

      else
      {

        v849 = *(v196 + 8);
        v849(v195, v197);
      }

      v393 = v1[188];
      v843 = *(v1 + 1560);
      v394 = v1[181];
      v395 = v1[167];
      v396 = v1[136];
      v397 = v1[134];
      v398 = v1[132];
      v399 = v1[78];
      v400 = v1[74];
      (*(v1[133] + 104))(v397, *(v1 + 388), v398);
      v824 = sub_21D093140();
      v849(v397, v398);

      v401 = sub_21D0941A0();
      sub_21D0941D0();
      v402 = sub_21D094650();

      if (sub_21D094680())
      {
        v403 = v1[188];
        v404 = *(v1 + 389);
        v405 = v1[154];
        v406 = v1[151];
        v407 = v1[150];

        sub_21D094200();

        v808 = v402;
        if ((*(v406 + 88))(v405, v407) == v404)
        {
          v408 = 0;
          v409 = 0;
          v410 = "[Error] Interval already ended";
        }

        else
        {
          (*(v1[151] + 8))(v1[154], v1[150]);
          v410 = "token received requestIdentifier=%{public, signpost.description=attribute,public}s";
          v409 = 2;
          v408 = 1;
        }

        v785 = v1[185];
        v800 = v1[186];
        v575 = v1[167];
        v778 = v1[161];
        v576 = v1[78];
        v577 = v1[77];
        v578 = swift_slowAlloc();
        v579 = swift_slowAlloc();
        v860[0] = v579;
        *v578 = v409;
        *(v578 + 1) = v408;
        *(v578 + 2) = 2082;
        *(v578 + 4) = sub_21D05550C(v577, v576, v860);
        v580 = sub_21D094160();
        _os_signpost_emit_with_name_impl(&dword_21D044000, v401, v808, v580, "requestOneShot", v410, v578, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v579);
        MEMORY[0x223D3CDF0](v579, -1, -1);
        MEMORY[0x223D3CDF0](v578, -1, -1);

        v785(v575, v778);
      }

      else
      {
        v417 = v1[186];
        v418 = v1[185];
        v419 = v1[167];
        v420 = v1[161];

        v418(v419, v420);
      }

      v175 = v824 | v843;
      v581 = v1[181];
      v582 = v1[166];
      v583 = v1[74];
      sub_21D0941A0();
      sub_21D094150();
      v584 = sub_21D0941A0();
      v585 = sub_21D094660();
      if (sub_21D094680())
      {
        v586 = v1[166];
        v587 = swift_slowAlloc();
        *v587 = 0;
        v588 = sub_21D094160();
        _os_signpost_emit_with_name_impl(&dword_21D044000, v584, v585, v588, "requestOneShot", "extend token", v587, 2u);
        MEMORY[0x223D3CDF0](v587, -1, -1);
      }

      v786 = v1[188];
      v801 = v1[185];
      v589 = v1[184];
      v590 = v1[183];
      v591 = v1[182];
      v592 = v1[170];
      v593 = v1[166];
      v594 = v1[161];
      v845 = v1[160];
      v595 = v1[158];
      v811 = v1[186];
      v828 = v1[157];
      v769 = v1[132];
      v779 = v1[136];

      v591(v592, v593, v594);
      v596 = *(v589 + 48);
      v597 = *(v589 + 52);
      swift_allocObject();
      v173 = sub_21D0941E0();

      v801(v593, v594);
      v849(v779, v769);
      (*(v595 + 8))(v845, v828);
      v174 = v1[189];
      goto LABEL_35;
    }

    v380 = v1[160];
    v381 = v1[158];
    v382 = v1[157];
    v383 = v1[85];
    v384 = v1[84];
    v842 = v384;
    v854 = v1[159];
    v385 = v1[78];
    v386 = v856[77];
    v387 = v856[62];

    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v344 = swift_allocError();
    v389 = v388;
    v860[0] = 0;
    v860[1] = 0xE000000000000000;
    sub_21D0946E0();
    v856[63] = 0;
    v856[64] = 0xE000000000000000;
    MEMORY[0x223D3C530](0xD000000000000025, 0x800000021D0973F0);
    MEMORY[0x223D3C530](v386, v385);
    MEMORY[0x223D3C530](8250, 0xE200000000000000);
    sub_21D094740();
    v390 = v856[63];
    v391 = v856[64];
    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    v1 = v856;
    sub_21D093ED0();
    (*(v383 + 104))(v389, *MEMORY[0x277D29DA8], v842);
    swift_willThrow();
    v392 = *(v381 + 8);
    v392(v380, v382);
    v392(v854, v382);
    goto LABEL_99;
  }

  v109 = v1[176];
  v110 = v1[159];
  v111 = v1[158];
  v112 = v1[157];
  v803 = v1[149];
  v815 = v1[177];
  v113 = v1[148];
  v789 = v1[147];
  v114 = v1[146];
  v115 = v1[143];
  v834 = v1[145];
  v848 = v1[142];
  sub_21D04D27C(v815, &qword_27CE54248, &unk_21D095CA0);
  (*(v111 + 96))(v110, v112);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
  v117 = *(v116 + 48);
  v118 = *(v116 + 64);
  (*(v113 + 32))(v803, v110, v789);
  sub_21D05B208(v110 + v117, v109, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B208(v110 + v118, v114, &qword_27CE54260, &unk_21D095CC0);
  sub_21D05B270(v109, v815, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B270(v114, v834, &qword_27CE54260, &unk_21D095CC0);
  if ((*(v115 + 48))(v834, 1, v848) != 1)
  {
    v375 = v1[138];
    (*(v1[143] + 32))(v1[144], v1[145], v1[142]);
    sub_21D0935B0();
    v376 = sub_21D0935A0();
    v377 = *(v376 - 8);
    v378 = (*(v377 + 48))(v375, 1, v376);
    v379 = v1[138];
    if (v378 == 1)
    {
      sub_21D04D27C(v1[138], &qword_27CE54480, &qword_21D096498);
    }

    else
    {
      sub_21D093590();
      (*(v377 + 8))(v379, v376);
    }

    v411 = v1[149];
    v412 = v1[144];
    v413 = v1[141];
    v414 = v1[137];
    sub_21D093C20();
    sub_21D0935C0();
    sub_21D093580();
    sub_21D0932D0();
    v415 = sub_21D0932C0();
    v416 = *(v415 - 8);
    if ((*(v416 + 48))(v414, 1, v415) == 1)
    {
      sub_21D04D27C(v1[137], &qword_27CE54420, &qword_21D096430);
LABEL_134:
      v604 = v1[144];
      v605 = sub_21D0935D0();
      v606 = *(v605 + 16);
      if (v606)
      {
        v607 = v1 + 71;
        v1[71] = MEMORY[0x277D84F90];
        v608 = v605;
        sub_21D08FAFC(0, v606, 0);
        v609 = v608;
        v610 = v1[71];
        v611 = *(v610 + 16);
        v612 = 32;
        do
        {
          v613 = *(v609 + v612);
          *v607 = v610;
          v614 = *(v610 + 24);
          if (v611 >= v614 >> 1)
          {
            sub_21D08FAFC((v614 > 1), v611 + 1, 1);
            v609 = v608;
            v610 = *v607;
          }

          *(v610 + 16) = v611 + 1;
          *(v610 + 8 * v611 + 32) = v613;
          v612 += 4;
          ++v611;
          --v606;
        }

        while (v606);
      }

      v787 = v1[179];
      v802 = v1[180];
      v770 = v1[174];
      v780 = v1[178];
      v615 = v1[173];
      v616 = v1[158];
      v755 = v1[157];
      v763 = v1[160];
      v748 = v1[149];
      v617 = v1[148];
      v739 = v1[176];
      v743 = v1[147];
      v618 = v1[146];
      v619 = v1[144];
      v620 = v1[143];
      v621 = v1[142];
      v622 = v1[141];
      sub_21D0900B0(MEMORY[0x277D84F90]);
      sub_21D093C40();
      (*(v620 + 8))(v619, v621);
      sub_21D04D27C(v618, &qword_27CE54260, &unk_21D095CC0);
      sub_21D04D27C(v739, &qword_27CE54248, &unk_21D095CA0);
      (*(v617 + 8))(v748, v743);
      (*(v616 + 8))(v763, v755);
      sub_21D04D27C(v770, &qword_27CE54488, &unk_21D0964A0);
      v787(v615, 0, 1, v780);
      sub_21D05B208(v615, v770, &qword_27CE54488, &unk_21D0964A0);
      goto LABEL_140;
    }

    v421 = v1[191];
    v422 = v1[137];
    sub_21D0932B0();
    if (!v421)
    {
      (*(v416 + 8))(v1[137], v415);
      goto LABEL_134;
    }

    v344 = v421;
    v423 = v1[158];
    v809 = v1[157];
    v825 = v1[160];
    v424 = v1[149];
    v425 = v1[148];
    v767 = v1[176];
    v777 = v1[147];
    v753 = v1[144];
    v761 = v1[146];
    v426 = v1[143];
    v427 = v856[142];
    v428 = v856[141];
    v429 = v856[140];
    v430 = v856[139];
    v783 = v424;
    v797 = v856[137];

    (*(v429 + 8))(v428, v430);
    (*(v426 + 8))(v753, v427);
    v1 = v856;
    sub_21D04D27C(v761, &qword_27CE54260, &unk_21D095CC0);
    sub_21D04D27C(v767, &qword_27CE54248, &unk_21D095CA0);
    (*(v425 + 8))(v783, v777);
    (*(v423 + 8))(v825, v809);
    v431 = v856[62];

    (*(v416 + 8))(v797, v415);
LABEL_99:
    v432 = v1[189];
    v855 = v1[188];
    goto LABEL_100;
  }

  v119 = v1[176];
  v120 = v1[160];
  v121 = v1[158];
  v122 = v1[157];
  v123 = v1[149];
  v124 = v1[148];
  v125 = v1[147];
  v126 = v1[145];
  sub_21D04D27C(v1[146], &qword_27CE54260, &unk_21D095CC0);
  sub_21D04D27C(v119, &qword_27CE54248, &unk_21D095CA0);
  (*(v124 + 8))(v123, v125);
  (*(v121 + 8))(v120, v122);
  sub_21D04D27C(v126, &qword_27CE54260, &unk_21D095CC0);
LABEL_140:
  v174 = v1[189];
  v173 = v1[188];
LABEL_34:
  v175 = *(v1 + 1560);
LABEL_35:
  v1[189] = v174;
  v1[188] = v173;
  *(v1 + 1560) = v175 & 1;
  v176 = swift_task_alloc();
  v1[190] = v176;
  *v176 = v1;
  v176[1] = sub_21D075F38;
  v177 = v1[156];
  v178 = v1[73];

  return sub_21D059134(v177);
}

id sub_21D07A424()
{
  v238 = v0;
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 704);
  v5 = *(v0 + 672);
  *(v0 + 520) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 1496);
    v8 = *(v0 + 704);
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v11 = *(v0 + 680);
    v12 = *(v0 + 672);
    v13 = *(v0 + 624);
    v14 = *(v0 + 592);

    (*(v11 + 32))(v9, v8, v12);
    v231 = *(v11 + 16);
    v231(v10, v9, v12);

    v15 = sub_21D094210();
    v16 = sub_21D094570();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    v20 = *(v0 + 672);
    if (v17)
    {
      v228 = v16;
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);
      v23 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v237[0] = v225;
      *v23 = 136315394;
      *(v23 + 4) = sub_21D05550C(v22, v21, v237);
      *(v23 + 12) = 2080;
      sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
      v24 = sub_21D094790();
      v26 = v25;
      v27 = *(v19 + 8);
      v27(v18, v20);
      v28 = sub_21D05550C(v24, v26, v237);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_21D044000, v15, v228, "Oneshot request %s failed: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v225, -1, -1);
      MEMORY[0x223D3CDF0](v23, -1, -1);
    }

    else
    {

      v27 = *(v19 + 8);
      v27(v18, v20);
    }

    v54 = *(v0 + 696);
    v55 = *(v0 + 672);
    v56 = *(v0 + 608);
    v57 = *(v0 + 600);
    v58 = *(v0 + 592);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    swift_allocError();
    v231(v59, v54, v55);
    swift_willThrow();

    v27(v54, v55);
    v60 = *(v0 + 520);
  }

  else
  {
    v29 = *(v0 + 664);
    v30 = *(v0 + 632);

    *(v0 + 528) = v1;
    v31 = v1;
    if (!swift_dynamicCast())
    {

      *(v0 + 536) = v1;
      v61 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
      if (swift_dynamicCast())
      {
        v62 = *(v0 + 1496);
        v63 = *(v0 + 592);

        sub_21D046D78((v0 + 144), v0 + 304);
        sub_21D0590D0(v0 + 304, v0 + 344);
        sub_21D0590D0(v0 + 304, v0 + 384);
        sub_21D0590D0(v0 + 304, v0 + 424);
        v64 = sub_21D094210();
        v65 = sub_21D094550();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v237[0] = v67;
          *v66 = 136315650;
          v68 = *(v0 + 376);
          __swift_project_boxed_opaque_existential_1((v0 + 344), *(v0 + 368));
          v69 = *(v68 + 8);
          v70 = sub_21D094090();
          v72 = v71;
          __swift_destroy_boxed_opaque_existential_0((v0 + 344));
          v73 = sub_21D05550C(v70, v72, v237);

          *(v66 + 4) = v73;
          *(v66 + 12) = 2048;
          v74 = *(v0 + 416);
          __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
          v75 = sub_21D093520();
          __swift_destroy_boxed_opaque_existential_0((v0 + 384));
          *(v66 + 14) = v75;
          *(v66 + 22) = 2080;
          v76 = *(v0 + 456);
          __swift_project_boxed_opaque_existential_1((v0 + 424), *(v0 + 448));
          v77 = sub_21D093530();
          v79 = v78;
          __swift_destroy_boxed_opaque_existential_0((v0 + 424));
          v80 = sub_21D05550C(v77, v79, v237);

          *(v66 + 24) = v80;
          _os_log_impl(&dword_21D044000, v64, v65, "Request failed with PrivateMLClientError: %s %ld %s", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v67, -1, -1);
          MEMORY[0x223D3CDF0](v66, -1, -1);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0((v0 + 384));

          __swift_destroy_boxed_opaque_existential_0((v0 + 344));
          __swift_destroy_boxed_opaque_existential_0((v0 + 424));
        }

        v112 = *(v0 + 672);
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
        swift_allocError();
        v234 = v113;
        v114 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        sub_21D093530();
        v115 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        v116 = *(v115 + 8);
        sub_21D094090();
        v117 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
        result = sub_21D093520();
        if (!__OFADD__(result, 30000))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21D0959B0;
          v119 = *MEMORY[0x277CCA7E8];
          *(inited + 32) = sub_21D0943F0();
          *(inited + 40) = v120;
          v121 = *(v0 + 328);
          v122 = *(v0 + 336);
          __swift_project_boxed_opaque_existential_1((v0 + 304), v121);
          *(inited + 48) = MEMORY[0x223D3C1D0](v121, *(v122 + 8));
          *(inited + 56) = v123;
          sub_21D0900B0(inited);
          swift_setDeallocating();
          sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
          v125 = *(v0 + 328);
          v124 = *(v0 + 336);
          v126 = __swift_project_boxed_opaque_existential_1((v0 + 304), v125);
          v127 = *(v125 - 8);
          v128 = *(v127 + 64) + 15;
          v129 = swift_task_alloc();
          (*(v127 + 16))(v129, v126, v125);
          v130 = *(*(*(v124 + 8) + 8) + 8);
          if (sub_21D0947A0())
          {
            (*(v127 + 8))(v129, v125);
          }

          else
          {
            swift_allocError();
            (*(v127 + 32))(v155, v129, v125);
          }

          v156 = *(v0 + 680);
          v157 = *(v0 + 672);
          v158 = *(v0 + 608);
          v159 = *(v0 + 600);
          v160 = *(v0 + 592);
          sub_21D093EC0();

          (*(v156 + 104))(v234, *MEMORY[0x277D29DA8], v157);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_0((v0 + 304));

          v84 = v160;
          v85 = v159;
          v86 = v158;
          goto LABEL_15;
        }

        __break(1u);
      }

      else
      {

        *(v0 + 544) = v1;
        v97 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
        v98 = swift_dynamicCast();
        v99 = *(v0 + 1496);
        v100 = *(v0 + 592);
        if (v98)
        {

          sub_21D046D78((v0 + 184), v0 + 224);
          sub_21D0590D0(v0 + 224, v0 + 264);
          v101 = sub_21D094210();
          v102 = sub_21D094550();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *v103 = 138412290;
            v105 = *(v0 + 288);
            v106 = *(v0 + 296);
            v107 = __swift_project_boxed_opaque_existential_1((v0 + 264), v105);
            v108 = *(v105 - 8);
            v109 = *(v108 + 64) + 15;
            v110 = swift_task_alloc();
            (*(v108 + 16))(v110, v107, v105);
            v111 = *(*(v106 + 8) + 8);
            if (sub_21D0947A0())
            {
              (*(v108 + 8))(v110, v105);
            }

            else
            {
              swift_allocError();
              (*(v108 + 32))(v161, v110, v105);
            }

            v162 = _swift_stdlib_bridgeErrorToNSError();
            __swift_destroy_boxed_opaque_existential_0((v0 + 264));
            *(v103 + 4) = v162;
            *v104 = v162;
            _os_log_impl(&dword_21D044000, v101, v102, "Request failed with AppleIntelligenceError: %@", v103, 0xCu);
            sub_21D04D27C(v104, &qword_27CE54320, &qword_21D095EA0);
            MEMORY[0x223D3CDF0](v104, -1, -1);
            MEMORY[0x223D3CDF0](v103, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0((v0 + 264));
          }

          v163 = *(v0 + 248);
          v164 = *(v0 + 256);
          v165 = __swift_project_boxed_opaque_existential_1((v0 + 224), v163);
          v166 = *(v163 - 8);
          v167 = *(v166 + 64) + 15;
          v168 = swift_task_alloc();
          (*(v166 + 16))(v168, v165, v163);
          v169 = *(*(v164 + 8) + 8);
          if (sub_21D0947A0())
          {
            (*(v166 + 8))(v168, v163);
          }

          else
          {
            swift_allocError();
            (*(v166 + 32))(v170, v168, v163);
          }

          v171 = *(v0 + 608);
          v172 = *(v0 + 600);
          v173 = *(v0 + 592);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_0((v0 + 224));

          v84 = v173;
          v85 = v172;
          v86 = v171;
          goto LABEL_15;
        }

        v131 = v1;
        v132 = sub_21D094210();
        v133 = sub_21D094550();

        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v237[0] = v135;
          *v134 = 136315138;
          *(v0 + 560) = v1;
          v136 = v1;
          v137 = sub_21D094430();
          v139 = sub_21D05550C(v137, v138, v237);

          *(v134 + 4) = v139;
          _os_log_impl(&dword_21D044000, v132, v133, "Request failed: %s", v134, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v135);
          MEMORY[0x223D3CDF0](v135, -1, -1);
          MEMORY[0x223D3CDF0](v134, -1, -1);
        }

        v140 = *(v0 + 672);
        v141 = sub_21D092F10();
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
        swift_allocError();
        v143 = v142;
        *(v0 + 552) = v1;
        v144 = v1;
        sub_21D094430();
        v145 = [v141 domain];
        sub_21D0943F0();

        result = [v141 code];
        if (!__OFADD__(result, 40000))
        {
          v146 = *(v0 + 680);
          v220 = *(v0 + 600);
          v222 = *(v0 + 608);
          v216 = *(v0 + 672);
          v218 = *(v0 + 592);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          v147 = swift_initStackObject();
          *(v147 + 16) = xmmword_21D0959B0;
          v148 = *MEMORY[0x277CCA7E8];
          *(v147 + 32) = sub_21D0943F0();
          *(v147 + 40) = v149;
          v150 = [v141 description];
          v151 = sub_21D0943F0();
          v153 = v152;

          *(v147 + 48) = v151;
          *(v147 + 56) = v153;
          sub_21D0900B0(v147);
          swift_setDeallocating();
          sub_21D04D27C(v147 + 32, &qword_27CE542C0, &qword_21D095E28);
          v154 = v141;
          sub_21D093EC0();
          (*(v146 + 104))(v143, *MEMORY[0x277D29DA8], v216);
          swift_willThrow();

          v84 = v218;
          v85 = v220;
          v86 = v222;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }

    v32 = *(v0 + 1496);
    v33 = *(v0 + 664);
    v34 = *(v0 + 656);
    v35 = *(v0 + 648);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v38 = *(v0 + 624);
    v39 = *(v0 + 592);

    (*(v36 + 32))(v34, v33, v37);
    v232 = *(v36 + 16);
    v232(v35, v34, v37);

    v40 = sub_21D094210();
    v41 = sub_21D094570();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 648);
    v44 = *(v0 + 640);
    v45 = *(v0 + 632);
    if (v42)
    {
      v229 = v41;
      v46 = *(v0 + 624);
      v47 = *(v0 + 616);
      v48 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v237[0] = v226;
      *v48 = 136315394;
      *(v48 + 4) = sub_21D05550C(v47, v46, v237);
      *(v48 + 12) = 2080;
      sub_21D091B40(&qword_27CE54498, MEMORY[0x277D41440]);
      v49 = sub_21D094790();
      v51 = v50;
      v52 = *(v44 + 8);
      v52(v43, v45);
      v53 = sub_21D05550C(v49, v51, v237);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_21D044000, v40, v229, "%s One shot request failed with : %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v226, -1, -1);
      MEMORY[0x223D3CDF0](v48, -1, -1);
    }

    else
    {

      v52 = *(v44 + 8);
      v52(v43, v45);
    }

    v81 = *(v0 + 656);
    v82 = *(v0 + 632);
    v56 = *(v0 + 608);
    v57 = *(v0 + 600);
    v58 = *(v0 + 592);
    sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440]);
    swift_allocError();
    v232(v83, v81, v82);
    swift_willThrow();

    v52(v81, v82);
    v60 = *(v0 + 528);
  }

  v84 = v58;
  v85 = v57;
  v86 = v56;
LABEL_15:
  sub_21D07BA24(v84, v85, v86);
  v87 = *(v0 + 1416);
  v88 = *(v0 + 1408);
  v89 = *(v0 + 1400);
  v90 = *(v0 + 1384);
  v91 = *(v0 + 1376);
  v92 = *(v0 + 1368);
  v93 = *(v0 + 1360);
  v94 = *(v0 + 1352);
  v174 = *(v0 + 1344);
  v175 = *(v0 + 1336);
  v176 = *(v0 + 1328);
  v177 = *(v0 + 1320);
  v178 = *(v0 + 1312);
  v179 = *(v0 + 1304);
  v180 = *(v0 + 1280);
  v181 = *(v0 + 1272);
  v182 = *(v0 + 1248);
  v183 = *(v0 + 1240);
  v184 = *(v0 + 1232);
  v185 = *(v0 + 1224);
  v186 = *(v0 + 1216);
  v187 = *(v0 + 1192);
  v188 = *(v0 + 1168);
  v189 = *(v0 + 1160);
  v190 = *(v0 + 1152);
  v191 = *(v0 + 1128);
  v192 = *(v0 + 1104);
  v193 = *(v0 + 1096);
  v194 = *(v0 + 1088);
  v195 = *(v0 + 1080);
  v196 = *(v0 + 1072);
  v197 = *(v0 + 1048);
  v198 = *(v0 + 1024);
  v199 = *(v0 + 1000);
  v200 = *(v0 + 992);
  v201 = *(v0 + 984);
  v202 = *(v0 + 960);
  v203 = *(v0 + 952);
  v204 = *(v0 + 928);
  v205 = *(v0 + 920);
  v206 = *(v0 + 912);
  v207 = *(v0 + 888);
  v208 = *(v0 + 880);
  v209 = *(v0 + 856);
  v210 = *(v0 + 848);
  v211 = *(v0 + 840);
  v212 = *(v0 + 832);
  v213 = *(v0 + 824);
  v214 = *(v0 + 800);
  v215 = *(v0 + 776);
  v217 = *(v0 + 768);
  v219 = *(v0 + 744);
  v221 = *(v0 + 720);
  v223 = *(v0 + 712);
  v224 = *(v0 + 704);
  v227 = *(v0 + 696);
  v230 = *(v0 + 688);
  v233 = *(v0 + 664);
  v235 = *(v0 + 656);
  v236 = *(v0 + 648);
  sub_21D04D27C(*(v0 + 1392), &qword_27CE54488, &unk_21D0964A0);
  sub_21D04D27C(v87, &qword_27CE54248, &unk_21D095CA0);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_21D07BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v3 = sub_21D0941C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21D094180();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21D0941A0();
  sub_21D0941D0();
  v14 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v13, v14, v17, "requestOneShot", v15, v16, 2u);
    MEMORY[0x223D3CDF0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  return sub_21D093640();
}

uint64_t sub_21D07BC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 720) = v7;
  *(v8 + 712) = a7;
  *(v8 + 704) = a6;
  *(v8 + 696) = a5;
  *(v8 + 1072) = a4;
  *(v8 + 688) = a3;
  *(v8 + 680) = a2;
  *(v8 + 672) = a1;
  v9 = sub_21D093780();
  *(v8 + 728) = v9;
  v10 = *(v9 - 8);
  *(v8 + 736) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  v12 = sub_21D0930F0();
  *(v8 + 752) = v12;
  v13 = *(v12 - 8);
  *(v8 + 760) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v15 = type metadata accessor for PrivateMLClientAlertService();
  *(v8 + 776) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  v17 = sub_21D093EF0();
  *(v8 + 800) = v17;
  v18 = *(v17 - 8);
  *(v8 + 808) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  v20 = sub_21D093790();
  *(v8 + 832) = v20;
  v21 = *(v20 - 8);
  *(v8 + 840) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  v23 = sub_21D094080();
  *(v8 + 872) = v23;
  v24 = *(v23 - 8);
  *(v8 + 880) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v26 = sub_21D094230();
  *(v8 + 936) = v26;
  v27 = *(v26 - 8);
  *(v8 + 944) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  v29 = sub_21D094310();
  *(v8 + 960) = v29;
  v30 = *(v29 - 8);
  *(v8 + 968) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 976) = swift_task_alloc();
  v32 = sub_21D094180();
  *(v8 + 984) = v32;
  v33 = *(v32 - 8);
  *(v8 + 992) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 1000) = swift_task_alloc();
  v35 = sub_21D0936A0();
  *(v8 + 1008) = v35;
  v36 = *(v35 - 8);
  *(v8 + 1016) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 1024) = swift_task_alloc();
  v38 = *(*(sub_21D0936C0() - 8) + 64) + 15;
  *(v8 + 1032) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D07C10C, 0, 0);
}

uint64_t sub_21D07C10C()
{
  v46 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 696);
  sub_21D0936F0();
  v6 = *(sub_21D093D00() - 8);
  v7 = *(v6 + 64) + 15;
  swift_task_alloc();
  (*(v6 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v3 + 104))(v2, *MEMORY[0x277D41588], v4);
  sub_21D0936B0();
  v8 = sub_21D0936D0();
  *(v0 + 1040) = v8;
  v9 = v8;
  v10 = *(v0 + 1000);
  v11 = *(v0 + 720);
  v12 = *(v0 + 688);
  sub_21D0941A0();
  sub_21D094150();

  v13 = sub_21D0941A0();
  v14 = sub_21D094670();

  v15 = sub_21D094680();
  v16 = *(v0 + 1000);
  v17 = *(v0 + 992);
  v18 = *(v0 + 984);
  if (v15)
  {
    v43 = v14;
    v19 = *(v0 + 688);
    v20 = *(v0 + 680);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_21D05550C(v20, v19, &v45);
    v23 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v13, v43, v23, "executeWithPrivateMLClient", "PrivateMLClient created requestIdentifier=%{public, signpost.description=attribute,public}s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D3CDF0](v22, -1, -1);
    MEMORY[0x223D3CDF0](v21, -1, -1);
  }

  (*(v17 + 8))(v16, v18);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = *(v0 + 936);
  v27 = *(v0 + 720);
  v28 = *(v0 + 696);
  v29 = *(v0 + 688);
  v30 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v0 + 1048) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v25 + 16))(v24, v27 + v30, v26);

  sub_21D093CD0();
  if (qword_281221758 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 976);
  v32 = *(v0 + 952);
  v33 = *(v0 + 704);
  v34 = *(v0 + 1072);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);

  sub_21D0942E0();
  v44 = (v33 + *v33);
  v37 = v33[1];
  v38 = swift_task_alloc();
  *(v0 + 1056) = v38;
  *v38 = v0;
  v38[1] = sub_21D07C680;
  v39 = *(v0 + 976);
  v40 = *(v0 + 712);
  v41 = *(v0 + 672);

  return v44(v41, v9, v39);
}

uint64_t sub_21D07C680()
{
  v2 = *(*v1 + 1056);
  v5 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_21D091FAC;
  }

  else
  {
    v3 = sub_21D091FC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D07C794(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 720) = v7;
  *(v8 + 712) = a7;
  *(v8 + 704) = a6;
  *(v8 + 696) = a5;
  *(v8 + 1072) = a4;
  *(v8 + 688) = a3;
  *(v8 + 680) = a2;
  *(v8 + 672) = a1;
  v9 = sub_21D093780();
  *(v8 + 728) = v9;
  v10 = *(v9 - 8);
  *(v8 + 736) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 744) = swift_task_alloc();
  v12 = sub_21D0930F0();
  *(v8 + 752) = v12;
  v13 = *(v12 - 8);
  *(v8 + 760) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v15 = type metadata accessor for PrivateMLClientAlertService();
  *(v8 + 776) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  v17 = sub_21D093EF0();
  *(v8 + 800) = v17;
  v18 = *(v17 - 8);
  *(v8 + 808) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  v20 = sub_21D093790();
  *(v8 + 832) = v20;
  v21 = *(v20 - 8);
  *(v8 + 840) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  v23 = sub_21D094080();
  *(v8 + 872) = v23;
  v24 = *(v23 - 8);
  *(v8 + 880) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v26 = sub_21D094230();
  *(v8 + 936) = v26;
  v27 = *(v26 - 8);
  *(v8 + 944) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  v29 = sub_21D094310();
  *(v8 + 960) = v29;
  v30 = *(v29 - 8);
  *(v8 + 968) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 976) = swift_task_alloc();
  v32 = sub_21D094180();
  *(v8 + 984) = v32;
  v33 = *(v32 - 8);
  *(v8 + 992) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 1000) = swift_task_alloc();
  v35 = sub_21D0936A0();
  *(v8 + 1008) = v35;
  v36 = *(v35 - 8);
  *(v8 + 1016) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 1024) = swift_task_alloc();
  v38 = *(*(sub_21D0936C0() - 8) + 64) + 15;
  *(v8 + 1032) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D07CC18, 0, 0);
}

uint64_t sub_21D07CC18()
{
  v46 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 696);
  sub_21D0936F0();
  v6 = *(sub_21D093D00() - 8);
  v7 = *(v6 + 64) + 15;
  swift_task_alloc();
  (*(v6 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v3 + 104))(v2, *MEMORY[0x277D41588], v4);
  sub_21D0936B0();
  v8 = sub_21D0936D0();
  *(v0 + 1040) = v8;
  v9 = v8;
  v10 = *(v0 + 1000);
  v11 = *(v0 + 720);
  v12 = *(v0 + 688);
  sub_21D0941A0();
  sub_21D094150();

  v13 = sub_21D0941A0();
  v14 = sub_21D094670();

  v15 = sub_21D094680();
  v16 = *(v0 + 1000);
  v17 = *(v0 + 992);
  v18 = *(v0 + 984);
  if (v15)
  {
    v43 = v14;
    v19 = *(v0 + 688);
    v20 = *(v0 + 680);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_21D05550C(v20, v19, &v45);
    v23 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v13, v43, v23, "executeWithPrivateMLClient", "PrivateMLClient created requestIdentifier=%{public, signpost.description=attribute,public}s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D3CDF0](v22, -1, -1);
    MEMORY[0x223D3CDF0](v21, -1, -1);
  }

  (*(v17 + 8))(v16, v18);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = *(v0 + 936);
  v27 = *(v0 + 720);
  v28 = *(v0 + 696);
  v29 = *(v0 + 688);
  v30 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v0 + 1048) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v25 + 16))(v24, v27 + v30, v26);

  sub_21D093CD0();
  if (qword_281221758 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 976);
  v32 = *(v0 + 952);
  v33 = *(v0 + 704);
  v34 = *(v0 + 1072);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);

  sub_21D0942E0();
  v44 = (v33 + *v33);
  v37 = v33[1];
  v38 = swift_task_alloc();
  *(v0 + 1056) = v38;
  *v38 = v0;
  v38[1] = sub_21D07D18C;
  v39 = *(v0 + 976);
  v40 = *(v0 + 712);
  v41 = *(v0 + 672);

  return v44(v41, v9, v39);
}

uint64_t sub_21D07D18C()
{
  v2 = *(*v1 + 1056);
  v5 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_21D07D458;
  }

  else
  {
    v3 = sub_21D07D2A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D07D2A0()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[125];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[116];
  v12 = v0[115];
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[112];
  v16 = v0[111];
  v17 = v0[108];
  v18 = v0[107];
  v19 = v0[106];
  v20 = v0[103];
  v21 = v0[102];
  v22 = v0[99];
  v23 = v0[98];
  v24 = v0[96];
  v25 = v0[93];
  sub_21D094300();

  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D07D458()
{
  v390 = v0;
  v1 = v0;
  v2 = v0[133];
  v0[76] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
  v386 = v0;
  if (swift_dynamicCast())
  {
    v4 = v0[116];
    v5 = v0[115];
    v6 = v0[110];
    v7 = v1[109];
    sub_21D0590D0((v1 + 23), (v1 + 33));
    v8 = v1[37];
    __swift_project_boxed_opaque_existential_1(v1 + 33, v1[36]);
    sub_21D0940A0();
    v374 = *(v6 + 104);
    v374(v5, *MEMORY[0x277CEDEC8], v7);
    sub_21D091B40(&qword_27CE543A0, MEMORY[0x277CEDF00]);
    sub_21D094490();
    sub_21D094490();
    if (v1[64] == v1[66] && v1[65] == v1[67])
    {
      v9 = 1;
    }

    else
    {
      v10 = v1[65];
      v11 = v1[67];
      v9 = sub_21D0947D0();
    }

    v12 = v1[116];
    v13 = v1[109];
    v14 = *(v1[110] + 8);
    v14(v1[115], v13);
    v14(v12, v13);

    if (v9)
    {
      v15 = v1[131];
      v16 = v1[90];
      v17 = v1[86];

      v18 = sub_21D094210();
      v19 = sub_21D094570();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = v1[86];
        v21 = v1[85];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v388 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_21D05550C(v21, v20, &v388);
        _os_log_impl(&dword_21D044000, v18, v19, "%s denied request due to rate limit.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x223D3CDF0](v23, -1, -1);
        MEMORY[0x223D3CDF0](v22, -1, -1);
      }

      logMetric(logger:name:startInstant:)(v1[90] + v1[131], 0xD000000000000015, 0x800000021D097260);
      v24 = v1[36];
      v25 = v1[37];
      v26 = __swift_project_boxed_opaque_existential_1(v1 + 33, v24);
      v27 = *(v24 - 8);
      v28 = *(v27 + 64) + 15;
      v29 = swift_task_alloc();
      (*(v27 + 16))(v29, v26, v24);
      v30 = *(*(v25 + 8) + 8);
      if (sub_21D0947A0())
      {
        (*(v27 + 8))(v29, v24);
      }

      else
      {
        swift_allocError();
        (*(v27 + 32))(v68, v29, v24);
      }

      v69 = v1[130];
      v70 = v1[122];
      v71 = v1[121];
      v72 = v1[120];
      v73 = v1[108];
      v74 = v386[105];
      v75 = v386[104];
      v76 = v386[100];
      sub_21D093770();

      (*(v74 + 104))(v73, *MEMORY[0x277D71AC0], v75);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      swift_allocError();
      sub_21D093760();
      swift_willThrow();
      (*(v74 + 8))(v73, v75);
      v1 = v386;
      __swift_destroy_boxed_opaque_existential_0(v386 + 33);
      __swift_destroy_boxed_opaque_existential_0(v386 + 23);

      sub_21D094300();

      (*(v71 + 8))(v70, v72);
      goto LABEL_81;
    }

    v31 = v1[114];
    v32 = v1[113];
    v33 = v1[109];
    __swift_destroy_boxed_opaque_existential_0(v1 + 33);
    sub_21D0590D0((v1 + 23), (v1 + 38));
    v34 = v1[42];
    __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
    sub_21D0940A0();
    v374(v32, *MEMORY[0x277CEDED8], v33);
    sub_21D094490();
    sub_21D094490();
    v35 = v1[114];
    v36 = v1[113];
    v37 = v1[109];
    if (v1[68] == v1[70] && v1[69] == v1[71])
    {
      v14(v1[113], v1[109]);
      v14(v35, v37);

      goto LABEL_15;
    }

    v38 = v1[69];
    v39 = v1[71];
    v40 = sub_21D0947D0();
    v14(v36, v37);
    v14(v35, v37);

    if (v40)
    {
LABEL_15:

      v41 = sub_21D093CB0();
      v42 = *(v41 - 8);
      v43 = *(v42 + 64) + 15;
      v44 = swift_task_alloc();
      sub_21D0590D0((v386 + 38), (v386 + 18));
      v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543A8, &qword_21D0963C0) - 8) + 64) + 15;
      v46 = swift_task_alloc();
      v47 = sub_21D093CC0();
      v48 = swift_dynamicCast();
      v49 = *(*(v47 - 8) + 56);
      if (v48)
      {
        v50 = *(v47 - 8);
        v49(v46, 0, 1, v47);
        v51 = (*(v50 + 88))(v46, v47);
        if (MEMORY[0x277D412E8] && v51 == *MEMORY[0x277D412E8])
        {
          (*(v50 + 96))(v46, v47);
          (*(v42 + 32))(v44, v46, v41);

          v52 = v44;
          v53 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543D0, &qword_21D0963D8) - 8) + 64) + 15;
          v54 = swift_task_alloc();
          buf = v52;
          sub_21D093CA0();
          v55 = swift_task_alloc();
          v56 = *MEMORY[0x277D412E0];
          v57 = sub_21D093C90();
          v58 = *(v57 - 8);
          (*(v58 + 104))(v55, v56, v57);
          (*(v58 + 56))(v55, 0, 1, v57);
          v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543D8, &qword_21D0963E0) - 8);
          v60 = *(*v59 + 64) + 15;
          v61 = swift_task_alloc();
          v62 = v59[14];
          sub_21D05B270(v54, v61, &qword_27CE543D0, &qword_21D0963D8);
          sub_21D05B270(v55, v61 + v62, &qword_27CE543D0, &qword_21D0963D8);
          v63 = *(v58 + 48);
          if (v63(v61, 1, v57) == 1)
          {
            sub_21D04D27C(v55, &qword_27CE543D0, &qword_21D0963D8);
            sub_21D04D27C(v54, &qword_27CE543D0, &qword_21D0963D8);
            v64 = v63(v61 + v62, 1, v57);
            v65 = v386;
            v66 = v42;
            if (v64 == 1)
            {
              sub_21D04D27C(v61, &qword_27CE543D0, &qword_21D0963D8);

              v67 = buf;
LABEL_102:
              v93 = sub_21D093C80();
              v95 = v308;
              (*(v66 + 8))(v67, v41);
              goto LABEL_35;
            }
          }

          else
          {
            v362 = v54;
            v298 = swift_task_alloc();
            sub_21D05B270(v61, v298, &qword_27CE543D0, &qword_21D0963D8);
            if (v63(v61 + v62, 1, v57) != 1)
            {
              v305 = *(v58 + 64) + 15;
              v306 = swift_task_alloc();
              (*(v58 + 32))(v306, v61 + v62, v57);
              sub_21D090FE0(&qword_27CE543E0, MEMORY[0x282228170]);
              v368 = sub_21D0943D0();
              v307 = *(v58 + 8);
              v307(v306, v57);
              sub_21D04D27C(v55, &qword_27CE543D0, &qword_21D0963D8);
              sub_21D04D27C(v362, &qword_27CE543D0, &qword_21D0963D8);
              v307(v298, v57);

              sub_21D04D27C(v61, &qword_27CE543D0, &qword_21D0963D8);

              v65 = v386;
              v67 = buf;
              v66 = v42;
              if (v368)
              {
                goto LABEL_102;
              }

              goto LABEL_96;
            }

            sub_21D04D27C(v55, &qword_27CE543D0, &qword_21D0963D8);
            sub_21D04D27C(v362, &qword_27CE543D0, &qword_21D0963D8);
            (*(v58 + 8))(v298, v57);

            v66 = v42;
          }

          sub_21D04D27C(v61, &qword_27CE543D8, &qword_21D0963E0);

          v67 = buf;
LABEL_96:
          (*(v66 + 8))(v67, v41);
LABEL_26:

          v77 = sub_21D093D30();
          v78 = *(v77 - 8);
          v79 = *(v78 + 64) + 15;
          v80 = swift_task_alloc();
          sub_21D0590D0((v386 + 38), (v386 + 28));
          v81 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543B0, &qword_21D0963C8) - 8) + 64) + 15;
          v82 = swift_task_alloc();
          v83 = swift_dynamicCast();
          v84 = *(v78 + 56);
          if (v83)
          {
            v84(v82, 0, 1, v77);
            (*(v78 + 32))(v80, v82, v77);

            v85 = sub_21D093D10();
            v86 = *(v85 - 8);
            v87 = *(v86 + 64) + 15;
            v88 = swift_task_alloc();
            sub_21D093D20();
            v89 = swift_task_alloc();
            (*(v86 + 104))(v89, *MEMORY[0x277D41308], v85);
            sub_21D090FE0(&qword_27CE543C8, MEMORY[0x2822281B0]);
            sub_21D094490();
            sub_21D094490();
            v90 = *(v86 + 8);
            v90(v89, v85);
            v90(v88, v85);
            v91 = v386[82];
            v92 = v386[83];

            if (v91 == v92)
            {
              sub_21D090FE0(&qword_27CE543B8, MEMORY[0x2822281C0]);
              v93 = sub_21D094790();
              v95 = v94;
              (*(v78 + 8))(v80, v77);
            }

            else
            {
              (*(v78 + 8))(v80, v77);
              v93 = 0;
              v95 = 0;
            }

            v65 = v386;
          }

          else
          {
            v84(v82, 1, 1, v77);
            sub_21D04D27C(v82, &qword_27CE543B0, &qword_21D0963C8);

            v93 = 0;
            v95 = 0;
            v65 = v386;
          }

LABEL_35:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543C0, &qword_21D0963D0);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_21D0959B0;
          bufa = v104;
          sub_21D0590D0((v65 + 38), v104 + 32);
          v105 = v65[131];
          v106 = v65[90];
          v107 = v65[86];
          if (v95)
          {
            v108 = v95;
            v109 = v65[86];

            v110 = sub_21D094210();
            v111 = sub_21D094570();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = v65[86];
              v113 = v65[85];
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v388 = v115;
              *v114 = 136380675;
              *(v114 + 4) = sub_21D05550C(v113, v112, &v388);
              _os_log_impl(&dword_21D044000, v110, v111, "%{private}s failed because nodes are busy.", v114, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v115);
              MEMORY[0x223D3CDF0](v115, -1, -1);
              MEMORY[0x223D3CDF0](v114, -1, -1);
            }

            v358 = v65[122];
            v363 = v65[130];
            v116 = v65[121];
            v369 = v65[120];
            v117 = v65[101];
            v355 = v65[100];
            sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
            swift_allocError();
            v119 = v118;
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21D0959B0;
            v121 = *MEMORY[0x277CCA7E8];
            *(inited + 32) = sub_21D0943F0();
            *(inited + 40) = v122;
            *(inited + 48) = v93;
            *(inited + 56) = v108;

            sub_21D0900B0(inited);
            swift_setDeallocating();
            sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
            sub_21D090BF4();
            swift_allocError();
            *v123 = bufa;
            *(v123 + 8) = 3;
            sub_21D093EC0();
            v124 = v119;
            v1 = v386;
            (*(v117 + 104))(v124, *MEMORY[0x277D29D90], v355);
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_0(v386 + 38);
            __swift_destroy_boxed_opaque_existential_0(v386 + 23);

            sub_21D094300();

            (*(v116 + 8))(v358, v369);
          }

          else
          {
            v388 = 0;
            v389 = 0xE000000000000000;
            v125 = v65[42];
            __swift_project_boxed_opaque_existential_1(v65 + 38, v65[41]);
            v126 = *(v125 + 24);
            sub_21D0947B0();

            v127 = sub_21D094210();
            v128 = sub_21D094570();

            if (os_log_type_enabled(v127, v128))
            {
              v129 = v65[86];
              v130 = v65[85];
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v388 = v132;
              *v131 = 136380931;
              *(v131 + 4) = sub_21D05550C(v130, v129, &v388);
              *(v131 + 12) = 2080;
              *(v131 + 14) = sub_21D05550C(0, 0xE000000000000000, &v388);
              _os_log_impl(&dword_21D044000, v127, v128, "%{private}s denied due to availability. availabilityInfo: %s", v131, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D3CDF0](v132, -1, -1);
              MEMORY[0x223D3CDF0](v131, -1, -1);
            }

            else
            {
            }

            v133 = v65[103];
            v359 = v65[102];
            v134 = v65[101];
            v135 = v65[100];
            v364 = v65[90];
            v370 = v65[131];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            v136 = swift_initStackObject();
            *(v136 + 16) = xmmword_21D0959B0;
            v137 = *MEMORY[0x277CCA7E8];
            *(v136 + 32) = sub_21D0943F0();
            *(v136 + 40) = v138;
            *(v136 + 48) = 0;
            *(v136 + 56) = 0xE000000000000000;

            sub_21D0900B0(v136);
            swift_setDeallocating();
            sub_21D04D27C(v136 + 32, &qword_27CE542C0, &qword_21D095E28);
            sub_21D090BF4();
            swift_allocError();
            *v139 = bufa;
            *(v139 + 8) = 3;
            sub_21D093EC0();
            (*(v134 + 104))(v133, *MEMORY[0x277D29DA8], v135);
            bufb = *(v134 + 16);
            (bufb)(v359, v133, v135);
            v140 = sub_21D094210();
            v141 = sub_21D094570();
            v142 = os_log_type_enabled(v140, v141);
            v143 = v65[102];
            v144 = v65[101];
            v145 = v65[100];
            if (v142)
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              *v146 = 138412290;
              sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
              swift_allocError();
              (bufb)(v148, v143, v145);
              v149 = _swift_stdlib_bridgeErrorToNSError();
              v150 = *(v144 + 8);
              v150(v143, v145);
              *(v146 + 4) = v149;
              *v147 = v149;
              _os_log_impl(&dword_21D044000, v140, v141, "inferenceError: %@", v146, 0xCu);
              sub_21D04D27C(v147, &qword_27CE54320, &qword_21D095EA0);
              MEMORY[0x223D3CDF0](v147, -1, -1);
              MEMORY[0x223D3CDF0](v146, -1, -1);
            }

            else
            {

              v150 = *(v144 + 8);
              v150(v143, v145);
            }

            v151 = v386[130];
            v152 = v386[122];
            v153 = v386[121];
            v154 = v386[120];
            v155 = v386[103];
            v156 = v386[100];
            sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
            swift_allocError();
            (bufb)(v157, v155, v156);
            swift_willThrow();
            v150(v155, v156);
            v1 = v386;
            __swift_destroy_boxed_opaque_existential_0(v386 + 38);
            __swift_destroy_boxed_opaque_existential_0(v386 + 23);

            sub_21D094300();

            (*(v153 + 8))(v152, v154);
          }

          goto LABEL_81;
        }

        (*(v50 + 8))(v46, v47);
      }

      else
      {
        v49(v46, 1, 1, v47);
        sub_21D04D27C(v46, &qword_27CE543A8, &qword_21D0963C0);
      }

      goto LABEL_26;
    }

    v96 = v386;
    v97 = v386[112];
    v98 = v386[111];
    v99 = v386[109];
    __swift_destroy_boxed_opaque_existential_0(v386 + 38);
    sub_21D046D78((v96 + 23), (v96 + 43));
    v100 = v386[47];
    __swift_project_boxed_opaque_existential_1(v96 + 43, v96[46]);
    sub_21D0940A0();
    v374(v98, *MEMORY[0x277CEDEE8], v99);
    v1 = v386;
    sub_21D094490();
    sub_21D094490();
    v101 = v386[112];
    v102 = v386[111];
    v103 = v386[109];
    if (v96[72] == v96[74] && v386[73] == v386[75])
    {
      v14(v386[111], v386[109]);
      v14(v101, v103);

      goto LABEL_47;
    }

    v158 = v386[73];
    v159 = v386[75];
    v160 = sub_21D0947D0();
    v14(v102, v103);
    v14(v101, v103);

    if (v160)
    {
LABEL_47:

      v161 = sub_21D093C70();
      v162 = *(v161 - 8);
      v163 = *(v162 + 64) + 15;
      v164 = swift_task_alloc();
      sub_21D0590D0((v386 + 43), (v386 + 48));
      v165 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543A8, &qword_21D0963C0) - 8) + 64) + 15;
      v166 = swift_task_alloc();
      v167 = sub_21D093CC0();
      v168 = swift_dynamicCast();
      v169 = *(*(v167 - 8) + 56);
      if (v168)
      {
        v170 = *(v167 - 8);
        v169(v166, 0, 1, v167);
        v171 = (*(v170 + 88))(v166, v167);
        if (MEMORY[0x277D412D8] && v171 == *MEMORY[0x277D412D8])
        {
          (*(v170 + 96))(v166, v167);
          (*(v162 + 32))(v164, v166, v161);

          v172 = &qword_27CE54390;
          v173 = MEMORY[0x282228160];
          goto LABEL_55;
        }

        (*(v170 + 8))(v166, v167);
      }

      else
      {
        v169(v166, 1, 1, v167);
        sub_21D04D27C(v166, &qword_27CE543A8, &qword_21D0963C0);
      }

      v161 = sub_21D093D30();
      v162 = *(v161 - 8);
      v174 = *(v162 + 64) + 15;
      v164 = swift_task_alloc();
      sub_21D0590D0((v386 + 43), (v386 + 53));
      v175 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543B0, &qword_21D0963C8) - 8) + 64) + 15;
      v176 = swift_task_alloc();
      v177 = swift_dynamicCast();
      v178 = *(v162 + 56);
      if (!v177)
      {
        v178(v176, 1, 1, v161);
        sub_21D04D27C(v176, &qword_27CE543B0, &qword_21D0963C8);

        v181 = 0xEE006E6F69747069;
        v179 = 0x7263736564206F6ELL;
LABEL_57:

        sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
        if ((sub_21D094630() & 1) == 0)
        {
LABEL_106:
          v310 = v386[131];
          v311 = v386[90];
          v312 = v386[86];

          v313 = sub_21D094210();
          v314 = sub_21D094570();

          if (os_log_type_enabled(v313, v314))
          {
            v315 = v386[86];
            v316 = v386[85];
            v317 = swift_slowAlloc();
            v318 = swift_slowAlloc();
            v388 = v318;
            *v317 = 136315394;
            *(v317 + 4) = sub_21D05550C(v316, v315, &v388);
            *(v317 + 12) = 2080;
            *(v317 + 14) = sub_21D05550C(v179, v181, &v388);
            _os_log_impl(&dword_21D044000, v313, v314, "%s failed due to network error. networkErrorInfo: %s", v317, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v318, -1, -1);
            MEMORY[0x223D3CDF0](v317, -1, -1);
          }

          v319 = v386[122];
          logMetric(logger:name:startInstant:)(v386[90] + v386[131], 0xD000000000000015, 0x800000021D097260);
          sub_21D0942D0();
          v320 = v386[47];
          __swift_project_boxed_opaque_existential_1(v386 + 43, v386[46]);
          v321 = *(v320 + 24);
          sub_21D094790();
          v323 = v386[46];
          v322 = v386[47];
          v324 = __swift_project_boxed_opaque_existential_1(v386 + 43, v323);
          v325 = *(v323 - 8);
          v326 = *(v325 + 64) + 15;
          v327 = swift_task_alloc();
          (*(v325 + 16))(v327, v324, v323);
          v328 = *(*(v322 + 8) + 8);
          if (sub_21D0947A0())
          {
            (*(v325 + 8))(v327, v323);
          }

          else
          {
            swift_allocError();
            (*(v325 + 32))(v329, v327, v323);
          }

          v330 = v386[130];
          v331 = v386[122];
          v332 = v386[121];
          v333 = v386[120];
          v334 = v386[107];
          v335 = v386[105];
          v336 = v386[104];
          v337 = v386[100];
          sub_21D093770();

          (*(v335 + 104))(v334, *MEMORY[0x277D71AB0], v336);
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
          swift_allocError();
          sub_21D093760();
          swift_willThrow();
          v338 = v336;
          v1 = v386;
          (*(v335 + 8))(v334, v338);
          __swift_destroy_boxed_opaque_existential_0(v386 + 43);

          sub_21D094300();

          (*(v332 + 8))(v331, v333);
          goto LABEL_81;
        }

        v182 = v386[90] + v386[131];
        v183 = sub_21D094210();
        v184 = sub_21D094560();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          *v185 = 0;
          _os_log_impl(&dword_21D044000, v183, v184, "Test No Network ttr.", v185, 2u);
          MEMORY[0x223D3CDF0](v185, -1, -1);
        }

        v186 = v386[99];
        v187 = v386[97];

        *(v186 + *(v187 + 20)) = 1547038;
        sub_21D094220();
        sub_21D0946E0();

        v388 = 0xD000000000000030;
        v389 = 0x800000021D097310;
        MEMORY[0x223D3C530](v179, v181);
        v188 = sub_21D094620();
        if (v189)
        {
          v190 = v188;
          v191 = v189;
          v192 = HIBYTE(v189) & 0xF;
          if ((v189 & 0x2000000000000000) == 0)
          {
            v192 = v188 & 0xFFFFFFFFFFFFLL;
          }

          if (v192)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
            v193 = swift_allocObject();
            *(v193 + 16) = xmmword_21D0959B0;
            *(v193 + 32) = v190;
            *(v193 + 40) = v191;
LABEL_105:
            v309 = v386[99];
            sub_21D050168(0xD000000000000030, 0x800000021D097310, v386[85], v386[86], v193);

            sub_21D091138(v309, type metadata accessor for PrivateMLClientAlertService);
            goto LABEL_106;
          }
        }

        v193 = MEMORY[0x277D84F90];
        goto LABEL_105;
      }

      v178(v176, 0, 1, v161);
      (*(v162 + 32))(v164, v176, v161);

      v172 = &qword_27CE543B8;
      v173 = MEMORY[0x2822281C0];
LABEL_55:
      sub_21D090FE0(v172, v173);
      v179 = sub_21D094790();
      v181 = v180;
      (*(v162 + 8))(v164, v161);
      goto LABEL_57;
    }

    __swift_destroy_boxed_opaque_existential_0(v386 + 43);
  }

  v194 = v1[133];

  v1[81] = v194;
  v195 = sub_21D093CC0();
  v196 = *(v195 - 8);
  v197 = *(v196 + 64) + 15;
  v198 = swift_task_alloc();
  v199 = v194;
  if (swift_dynamicCast())
  {
    v200 = (*(v196 + 88))(v198, v195);
    if (MEMORY[0x277D412D8] && v200 == *MEMORY[0x277D412D8])
    {
      v365 = v200;
      v201 = v1[131];
      v202 = v1[90];

      (*(v196 + 96))(v198, v195);
      v203 = sub_21D093C70();
      v204 = *(v203 - 8);
      v205 = *(v204 + 64) + 15;
      v206 = swift_task_alloc();
      (*(v204 + 32))(v206, v198, v203);
      v207 = swift_task_alloc();
      v371 = v206;
      v352 = *(v204 + 16);
      v352(v207, v206, v203);
      v208 = sub_21D094210();
      v209 = sub_21D094570();
      if (os_log_type_enabled(v208, v209))
      {
        bufe = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v388 = v210;
        *bufe = 136315138;
        sub_21D090FE0(&qword_27CE54390, MEMORY[0x282228160]);
        v375 = v209;
        v211 = sub_21D094790();
        v213 = v212;
        v349 = *(v204 + 8);
        v349(v207, v203);
        v214 = sub_21D05550C(v211, v213, &v388);

        *(bufe + 4) = v214;
        _os_log_impl(&dword_21D044000, v208, v375, "Request failed due to network error with info: %s", bufe, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v210);
        v215 = v210;
        v1 = v386;
        MEMORY[0x223D3CDF0](v215, -1, -1);
        MEMORY[0x223D3CDF0](bufe, -1, -1);
      }

      else
      {

        v349 = *(v204 + 8);
        v349(v207, v203);
      }

      sub_21D090FE0(&qword_27CE54390, MEMORY[0x282228160]);
      v378 = v203;
      v281 = sub_21D094790();
      bufd = v282;
      sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
      if ((sub_21D094630() & 1) == 0)
      {
        goto LABEL_100;
      }

      v283 = v281;
      v284 = v1[90] + v1[131];
      v285 = sub_21D094210();
      v286 = sub_21D094560();
      if (os_log_type_enabled(v285, v286))
      {
        v287 = swift_slowAlloc();
        *v287 = 0;
        _os_log_impl(&dword_21D044000, v285, v286, "Test No Network ttr.", v287, 2u);
        MEMORY[0x223D3CDF0](v287, -1, -1);
      }

      v288 = v1[98];
      v289 = v1[97];

      *(v288 + *(v289 + 20)) = 1547038;
      sub_21D094220();
      v388 = 0;
      v389 = 0xE000000000000000;
      sub_21D0946E0();
      MEMORY[0x223D3C530](0xD000000000000038, 0x800000021D0972D0);
      MEMORY[0x223D3C530](v283, bufd);
      v291 = v388;
      v290 = v389;
      v292 = sub_21D094620();
      if (v293)
      {
        v294 = v292;
        v295 = v293;
        v296 = HIBYTE(v293) & 0xF;
        if ((v293 & 0x2000000000000000) == 0)
        {
          v296 = v292 & 0xFFFFFFFFFFFFLL;
        }

        if (v296)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
          v297 = swift_allocObject();
          *(v297 + 16) = xmmword_21D0959B0;
          *(v297 + 32) = v294;
          *(v297 + 40) = v295;
LABEL_99:
          v299 = v1[98];
          sub_21D050168(v291, v290, v1[85], v1[86], v297);

          sub_21D091138(v299, type metadata accessor for PrivateMLClientAlertService);
LABEL_100:
          v300 = v1[122];
          v342 = v1[130];
          v345 = v386[121];
          v348 = v386[120];
          v301 = v386[106];
          v302 = v386[105];
          v339 = v386[104];
          v340 = v386[100];
          logMetric(logger:name:startInstant:)(v386[90] + v1[131], 0xD000000000000015, 0x800000021D097260);

          sub_21D0942D0();
          sub_21D090FE0(&qword_27CE54398, MEMORY[0x282228188]);
          swift_allocError();
          v304 = v303;
          v352(v303, v371, v378);
          (*(v196 + 104))(v304, v365, v195);
          sub_21D093770();
          (*(v302 + 104))(v301, *MEMORY[0x277D71AB0], v339);
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
          swift_allocError();
          sub_21D093760();
          swift_willThrow();
          (*(v302 + 8))(v301, v339);
          v349(v371, v378);

          sub_21D094300();

          (*(v345 + 8))(v300, v348);
          v1 = v386;
          goto LABEL_81;
        }
      }

      v297 = MEMORY[0x277D84F90];
      goto LABEL_99;
    }

    (*(v196 + 8))(v198, v195);
  }

  v216 = v1[133];
  v217 = v1[96];
  v218 = v1[94];

  v1[80] = v216;
  v219 = v216;
  if (swift_dynamicCast())
  {
    v220 = (*(v1[95] + 88))(v1[96], v1[94]);
    if (v220 == *MEMORY[0x277D41438])
    {
      bufc = v220;
      v221 = v1[131];
      v222 = v1[96];
      v223 = v1[95];
      v224 = v1[94];
      v225 = v1[90];
      v226 = v1[86];

      (*(v223 + 96))(v222, v224);
      v227 = *v222;
      v228 = v222[1];

      v229 = sub_21D094210();
      v230 = sub_21D094570();

      if (os_log_type_enabled(v229, v230))
      {
        v231 = v227;
        v232 = v1[86];
        v233 = v1[85];
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v388 = v235;
        *v234 = 136315650;
        v236 = v232;
        v227 = v231;
        *(v234 + 4) = sub_21D05550C(v233, v236, &v388);
        *(v234 + 12) = 2048;
        *(v234 + 14) = v231;
        *(v234 + 22) = 2048;
        *(v234 + 24) = v228;
        _os_log_impl(&dword_21D044000, v229, v230, "%s failed with maxContextLengthReached. input token count:%ld and maximum allowed:%ld", v234, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v235);
        MEMORY[0x223D3CDF0](v235, -1, -1);
        MEMORY[0x223D3CDF0](v234, -1, -1);
      }

      v237 = v228;
      v238 = v1[131];
      v360 = v1[122];
      v366 = v1[130];
      v372 = v1[121];
      v376 = v1[120];
      v239 = v386[106];
      v240 = v386[105];
      v353 = v386[104];
      v356 = v386[100];
      v241 = v386[95];
      v341 = v386[94];
      v343 = v386[93];
      v346 = v386[92];
      v350 = v386[91];
      logMetric(logger:name:startInstant:)(v386[90] + v238, 0xD000000000000015, 0x800000021D097260);
      v388 = 0;
      v389 = 0xE000000000000000;
      sub_21D0946E0();
      MEMORY[0x223D3C530](0xD00000000000002FLL, 0x800000021D097280);
      v386[78] = v227;
      v242 = sub_21D094790();
      MEMORY[0x223D3C530](v242);

      MEMORY[0x223D3C530](0xD000000000000013, 0x800000021D0972B0);
      v386[77] = v237;
      v243 = sub_21D094790();
      MEMORY[0x223D3C530](v243);

      sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440]);
      swift_allocError();
      *v244 = v227;
      v244[1] = v237;
      (*(v241 + 104))(v244, bufc, v341);
      sub_21D093770();
      v245 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54388, &unk_21D0963B0) + 64);
      *v239 = v227;
      *(v239 + 1) = v237;
      (*(v346 + 16))(&v239[v245], v343, v350);
      (*(v240 + 104))(v239, *MEMORY[0x277D71AC8], v353);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      swift_allocError();
      sub_21D093760();
      swift_willThrow();
      v246 = v239;
      v1 = v386;
      (*(v240 + 8))(v246, v353);
      (*(v346 + 8))(v343, v350);

      sub_21D094300();

      (*(v372 + 8))(v360, v376);
      goto LABEL_81;
    }

    (*(v1[95] + 8))(v1[96], v1[94]);
  }

  v247 = v1[133];
  v248 = v1[131];
  v249 = v1[90];
  v250 = v1[86];

  v251 = v247;
  v252 = sub_21D094210();
  v253 = sub_21D094570();

  if (os_log_type_enabled(v252, v253))
  {
    v254 = v1[133];
    v255 = v1[86];
    v256 = v1[85];
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v388 = v259;
    *v257 = 136315394;
    *(v257 + 4) = sub_21D05550C(v256, v255, &v388);
    *(v257 + 12) = 2112;
    v260 = v254;
    v261 = _swift_stdlib_bridgeErrorToNSError();
    *(v257 + 14) = v261;
    *v258 = v261;
    _os_log_impl(&dword_21D044000, v252, v253, "%s failed to execute private ML request error: %@", v257, 0x16u);
    sub_21D04D27C(v258, &qword_27CE54320, &qword_21D095EA0);
    MEMORY[0x223D3CDF0](v258, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v259);
    MEMORY[0x223D3CDF0](v259, -1, -1);
    MEMORY[0x223D3CDF0](v257, -1, -1);
  }

  v262 = v1[133];
  v263 = v1[130];
  v264 = v1[122];
  v265 = v1[121];
  v266 = v1[120];
  logMetric(logger:name:startInstant:)(v1[90] + v1[131], 0xD000000000000015, 0x800000021D097260);
  v1[79] = v262;
  v267 = v262;
  sub_21D094430();
  sub_21D0942D0();
  swift_willThrow();
  sub_21D094300();

  (*(v265 + 8))(v264, v266);
  buff = v1[133];
LABEL_81:
  v268 = v1[129];
  v269 = v1;
  v270 = v1[128];
  v271 = v269[125];
  v272 = v269[122];
  v273 = v269[119];
  v274 = v269[116];
  v275 = v269[115];
  v276 = v269[114];
  v277 = v269[113];
  v278 = v269[112];
  v344 = v269[111];
  v347 = v269[108];
  v351 = v269[107];
  v354 = v269[106];
  v357 = v269[103];
  v361 = v269[102];
  v367 = v269[99];
  v373 = v269[98];
  v377 = v269[96];
  v387 = v269[93];

  v279 = v269[1];

  return v279();
}

uint64_t sub_21D0806D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v55;
  *(v8 + 80) = v53;
  *(v8 + 96) = v54;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = sub_21D093BA0();
  *(v8 + 160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v16 = sub_21D093C10();
  *(v8 + 184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v19 = sub_21D094180();
  *(v8 + 208) = v19;
  v20 = *(v19 - 8);
  *(v8 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v22 = sub_21D092FC0();
  *(v8 + 232) = v22;
  v23 = *(v22 - 8);
  *(v8 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v25 = sub_21D094230();
  *(v8 + 256) = v25;
  v26 = *(v25 - 8);
  *(v8 + 264) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v28 = sub_21D094070();
  *(v8 + 280) = v28;
  v29 = *(v28 - 8);
  *(v8 + 288) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v31 = sub_21D0934B0();
  *(v8 + 312) = v31;
  v32 = *(v31 - 8);
  *(v8 + 320) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v34 = sub_21D093AE0();
  *(v8 + 336) = v34;
  v35 = *(v34 - 8);
  *(v8 + 344) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v37 = sub_21D093A10();
  *(v8 + 360) = v37;
  v38 = *(v37 - 8);
  *(v8 + 368) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v40 = sub_21D093800();
  *(v8 + 384) = v40;
  v41 = *(v40 - 8);
  *(v8 + 392) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408) - 8) + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v45 = sub_21D093C60();
  *(v8 + 456) = v45;
  v46 = *(v45 - 8);
  *(v8 + 464) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v48 = sub_21D0939D0();
  *(v8 + 496) = v48;
  v49 = *(v48 - 8);
  *(v8 + 504) = v49;
  v50 = *(v49 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D080D18, 0, 0);
}

uint64_t sub_21D080D18()
{
  v242 = v0;
  v1 = v0;
  v2 = *(v0 + 432);
  v5 = v0 + 392;
  v4 = *(v0 + 392);
  v3 = *(v5 + 8);
  v6 = *(v1 + 384);
  v7 = *(v1 + 40);
  v8 = *(*(v1 + 128) + 56);
  v8(v2, 1, 1, *(v1 + 120));
  (*(v4 + 16))(v3, v7, v6);
  v9 = (*(v4 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277D71B98])
  {
    v10 = *(v1 + 64);
    v11 = *(v1 + 48);

    v12 = sub_21D094210();
    v13 = sub_21D094570();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v1 + 56);
      v15 = *(v1 + 64);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v241[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D05550C(v14, v15, v241);
      _os_log_impl(&dword_21D044000, v12, v13, "%s fetchModelMetadata must be handled before this", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D3CDF0](v17, -1, -1);
      MEMORY[0x223D3CDF0](v16, -1, -1);
    }

    v18 = *(v1 + 432);
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);
    v21 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v23 = 9;
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x277D71B78])
  {
    v24 = *(v1 + 64);
    v25 = *(v1 + 48);

    v26 = sub_21D094210();
    v27 = sub_21D094570();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v1 + 56);
      v29 = *(v1 + 64);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v241[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21D05550C(v28, v29, v241);
      v32 = "%s No support for countTokens";
LABEL_11:
      _os_log_impl(&dword_21D044000, v26, v27, v32, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223D3CDF0](v31, -1, -1);
      MEMORY[0x223D3CDF0](v30, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D71BB8])
  {
    v33 = *(v1 + 64);
    v34 = *(v1 + 48);

    v26 = sub_21D094210();
    v27 = sub_21D094570();

    if (os_log_type_enabled(v26, v27))
    {
      v35 = *(v1 + 56);
      v36 = *(v1 + 64);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v241[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21D05550C(v35, v36, v241);
      v32 = "%s No Support for countTokensPromptTemplate";
      goto LABEL_11;
    }

LABEL_12:

    v18 = *(v1 + 432);
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);
    v21 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v23 = 5;
LABEL_13:
    *v22 = v23;
    *(v22 + 8) = 4;
    swift_willThrow();
    sub_21D04D27C(v18, &qword_27CE54400, &qword_21D096400);
    (*(v20 + 8))(v19, v21);
    v37 = *(v1 + 520);
    v38 = *(v1 + 512);
    v39 = v1;
    v42 = v1 + 480;
    v41 = *(v1 + 480);
    v40 = *(v42 + 8);
    v43 = v39[59];
    v45 = v39[55];
    v44 = v39[56];
    v47 = v39[53];
    v46 = v39[54];
    v48 = v39[52];
    v203 = v39[51];
    v204 = v39[50];
    v205 = v39[47];
    v206 = v39[44];
    v207 = v39[41];
    v209 = v39[38];
    v211 = v39[37];
    v213 = v39[34];
    v215 = v39[31];
    v218 = v39[28];
    v221 = v39[25];
    v224 = v39[22];
    v227 = v39[19];
    v229 = v39[18];
    v233 = v39[17];

    v49 = v39[1];

    return v49();
  }

  if (v9 == *MEMORY[0x277D71B90])
  {
    v51 = *(v1 + 400);
    v52 = *(v1 + 376);
    v53 = *(v1 + 360);
    v54 = *(v1 + 368);
    v55 = *(v1 + 64);
    v56 = *(v1 + 48);
    (*(*(v1 + 392) + 96))(v51, *(v1 + 384));
    (*(v54 + 32))(v52, v51, v53);

    v57 = sub_21D094210();
    v58 = sub_21D094580();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v1 + 56);
      v59 = *(v1 + 64);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v241[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_21D05550C(v60, v59, v241);
      _os_log_impl(&dword_21D044000, v57, v58, "%s received complete prompt request", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223D3CDF0](v62, -1, -1);
      MEMORY[0x223D3CDF0](v61, -1, -1);
    }

    v63 = *(v1 + 520);
    v64 = *(v1 + 488);
    v65 = *(v1 + 448);
    v66 = *(v1 + 368);
    v67 = *(v1 + 376);
    v68 = *(v1 + 360);
    v69 = *(v1 + 72);
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    v70 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    sub_21D093BC0();
    sub_21D0935F0();

    (*(v66 + 8))(v67, v68);
  }

  else
  {
    if (v9 != *MEMORY[0x277D71BA8])
    {
      v123 = *(v1 + 64);
      v124 = *(v1 + 48);

      v125 = sub_21D094210();
      v126 = sub_21D094570();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = *(v1 + 56);
        v128 = *(v1 + 64);
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v241[0] = v130;
        *v129 = 136315138;
        *(v129 + 4) = sub_21D05550C(v127, v128, v241);
        _os_log_impl(&dword_21D044000, v125, v126, "%s received unkown request payload", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x223D3CDF0](v130, -1, -1);
        MEMORY[0x223D3CDF0](v129, -1, -1);
      }

      v18 = *(v1 + 432);
      v20 = *(v1 + 392);
      v19 = *(v1 + 400);
      v21 = *(v1 + 384);
      sub_21D090BF4();
      swift_allocError();
      v23 = 1;
      goto LABEL_13;
    }

    v85 = *(v1 + 400);
    v87 = *(v1 + 344);
    v86 = *(v1 + 352);
    v88 = *(v1 + 336);
    v89 = *(v1 + 64);
    v90 = *(v1 + 48);
    (*(*(v1 + 392) + 96))(v85, *(v1 + 384));
    (*(v87 + 32))(v86, v85, v88);

    v91 = sub_21D094210();
    v92 = sub_21D094580();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = *(v1 + 56);
      v94 = *(v1 + 64);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v241[0] = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_21D05550C(v93, v94, v241);
      _os_log_impl(&dword_21D044000, v91, v92, "%s received completePromptTemplate request", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x223D3CDF0](v96, -1, -1);
      MEMORY[0x223D3CDF0](v95, -1, -1);
    }

    v98 = *(v1 + 456);
    v97 = *(v1 + 464);
    v99 = *(v1 + 352);
    v100 = *(v1 + 152);
    sub_21D093AD0();
    v101 = *(v97 + 48);
    if (v101(v100, 1, v98) == 1)
    {
      v102 = *(v1 + 456);
      v103 = *(v1 + 152);
      v104 = *(v1 + 472);
      sub_21D093BD0();
      if (v101(v103, 1, v102) != 1)
      {
        sub_21D04D27C(*(v1 + 152), &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 152), *(v1 + 456));
    }

    v175 = *(v1 + 520);
    v176 = *(v1 + 448);
    v177 = *(v1 + 432);
    v178 = *(v1 + 416);
    v239 = *(v1 + 408);
    v179 = *(v1 + 352);
    v181 = *(v1 + 120);
    v180 = *(v1 + 128);
    (*(*(v1 + 464) + 32))(*(v1 + 488), *(v1 + 472), *(v1 + 456));
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v177, &qword_27CE54400, &qword_21D096400);
    v8(v178, 0, 1, v181);
    sub_21D05B208(v178, v177, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v177, v239, &qword_27CE54400, &qword_21D096400);
    v182 = (*(v180 + 48))(v239, 1, v181);
    v183 = *(v1 + 408);
    v184 = *(v1 + 344);
    v185 = *(v1 + 336);
    if (v182 == 1)
    {
      (*(v184 + 8))(*(v1 + 352), *(v1 + 336));
      sub_21D04D27C(v183, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v187 = *(v1 + 136);
      v186 = *(v1 + 144);
      v188 = *(v1 + 120);
      v189 = *(v1 + 128);
      v190 = *(v1 + 72);
      v240 = *(v1 + 352);
      (*(v189 + 32))(v186, v183, v188);
      v236 = v190[4];
      __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      (*(v189 + 16))(v187, v186, v188);
      sub_21D094430();
      sub_21D0935F0();

      (*(v189 + 8))(v186, v188);
      (*(v184 + 8))(v240, v185);
    }
  }

  v72 = *(v1 + 504);
  v71 = *(v1 + 512);
  v73 = *(v1 + 488);
  v74 = *(v1 + 480);
  v75 = *(v1 + 456);
  v76 = *(v1 + 464);
  v77 = *(v1 + 448);
  v214 = v77;
  v216 = *(v1 + 520);
  v210 = *(v1 + 496);
  v212 = *(v1 + 440);
  v219 = *(v1 + 424);
  v222 = *(v1 + 432);
  v78 = *(v1 + 304);
  v234 = v78;
  v237 = *(v1 + 328);
  v79 = *(v1 + 280);
  v80 = *(v1 + 264);
  v225 = *(v1 + 256);
  v228 = *(v1 + 272);
  v81 = *(v1 + 96);
  v230 = *(v1 + 88);
  v82 = *(v1 + 80);
  v83 = *(v1 + 48);
  v208 = *(*(v1 + 288) + 16);
  v208();
  (*(v76 + 16))(v74, v73, v75);
  (*(v72 + 16))(v71, v216, v210);
  sub_21D05B270(v214, v212, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v222, v219, &qword_27CE54400, &qword_21D096400);
  v84 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v80 + 16))(v228, v83 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v225);
  sub_21D055C20(v82, v230);
  sub_21D083B2C(v82, v230, v234, v74, v71, v212, v219, v228, v237);
  v105 = *(v1 + 296);
  v106 = *(v1 + 280);
  v107 = *(v1 + 96);
  v108 = *(v1 + 48);
  logMetric(logger:name:startInstant:)(v83 + v84, 0xD000000000000012, 0x800000021D097370);
  (v208)(v105, v107, v106);
  v109 = sub_21D094210();
  v110 = sub_21D094580();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v1 + 288);
  v113 = *(v1 + 296);
  v114 = *(v1 + 280);
  v238 = v1;
  if (v111)
  {
    v115 = *(v1 + 248);
    v116 = *(v1 + 240);
    v117 = *(v238 + 232);
    v118 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v241[0] = v235;
    *v118 = 136315138;
    v231 = v110;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v119 = sub_21D094790();
    v121 = v120;
    (*(v116 + 8))(v115, v117);
    v1 = v238;
    (*(v112 + 8))(v113, v114);
    v122 = sub_21D05550C(v119, v121, v241);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_21D044000, v109, v231, "%s sending private ML request", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v235);
    MEMORY[0x223D3CDF0](v235, -1, -1);
    MEMORY[0x223D3CDF0](v118, -1, -1);
  }

  else
  {

    (*(v112 + 8))(v113, v114);
  }

  v131 = *(v1 + 224);
  v132 = *(v1 + 64);
  v133 = *(v1 + 48);
  sub_21D0941A0();
  sub_21D094150();

  v134 = sub_21D0941A0();
  v135 = sub_21D094670();

  v136 = sub_21D094680();
  v138 = *(v1 + 216);
  v137 = *(v1 + 224);
  v139 = *(v1 + 208);
  if (v136)
  {
    v141 = *(v1 + 56);
    v140 = *(v1 + 64);
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v241[0] = v143;
    *v142 = 136446210;
    *(v142 + 4) = sub_21D05550C(v141, v140, v241);
    v144 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v134, v135, v144, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x223D3CDF0](v143, -1, -1);
    MEMORY[0x223D3CDF0](v142, -1, -1);
  }

  (*(v138 + 8))(v137, v139);
  v145 = *(v1 + 488);
  v146 = sub_21D093BE0();
  v148 = v147;
  *(v1 + 528) = v147;
  v149 = sub_21D093BB0();
  v150 = *(v149 + 16);
  if (v150)
  {
    v217 = v148;
    v220 = v146;
    v151 = *(v1 + 192);
    v152 = *(v1 + 168);
    v241[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v150, 0);
    v153 = v241[0];
    v154 = *(v151 + 16);
    v151 += 16;
    v155 = v149 + ((*(v151 + 64) + 32) & ~*(v151 + 64));
    v223 = *(v151 + 56);
    v232 = v154;
    v226 = (v151 - 8);
    while (1)
    {
      v156 = *(v1 + 200);
      v157 = *(v1 + 176);
      v158 = *(v1 + 184);
      v159 = *(v1 + 160);
      v232(v156, v155, v158);
      sub_21D093BF0();
      v160 = sub_21D093B80();
      v162 = v161;
      (*(v152 + 8))(v157, v159);
      v163 = sub_21D093C00();
      v164 = (*v226)(v156, v158);
      if ((v163 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v163))
      {
        goto LABEL_52;
      }

      v241[0] = v153;
      v173 = *(v153 + 16);
      v172 = *(v153 + 24);
      if (v173 >= v172 >> 1)
      {
        sub_21D08FADC((v172 > 1), v173 + 1, 1);
        v153 = v241[0];
      }

      *(v153 + 16) = v173 + 1;
      v174 = v153 + 24 * v173;
      *(v174 + 32) = v160;
      *(v174 + 40) = v162;
      *(v174 + 48) = v163;
      v155 += v223;
      --v150;
      v1 = v238;
      if (!v150)
      {

        v148 = v217;
        v146 = v220;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v153 = MEMORY[0x277D84F90];
LABEL_48:
    *(v1 + 536) = v153;
    v191 = v153;
    v192 = *(v1 + 328);
    v193 = *(v1 + 96);
    v195 = *(v1 + 48);
    v194 = *(v1 + 56);
    v196 = *(v1 + 32);
    v197 = swift_task_alloc();
    *(v1 + 544) = v197;
    v198 = *(v1 + 64);
    v199 = *(v1 + 104);
    *(v197 + 16) = v195;
    *(v197 + 24) = v193;
    *(v197 + 32) = v192;
    *(v197 + 40) = v194;
    *(v197 + 48) = v198;
    *(v197 + 64) = v196;
    *(v197 + 72) = v199;
    v200 = *(MEMORY[0x277D41580] + 4);
    v201 = swift_task_alloc();
    *(v1 + 552) = v201;
    *v201 = v1;
    v201[1] = sub_21D082048;
    v165 = *(v1 + 328);
    v164 = *(v1 + 16);
    v202 = *(v1 + 24);
    v169 = &unk_21D096528;
    v171 = MEMORY[0x277D84F78] + 8;
    v166 = v146;
    v167 = v148;
    v168 = v191;
    v170 = v197;
  }

  return MEMORY[0x2821A23A0](v164, v165, v166, v167, v168, v169, v170, v171);
}

uint64_t sub_21D082048()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v5 = *(*v1 + 528);
  v8 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v6 = sub_21D091FA8;
  }

  else
  {
    v6 = sub_21D091FB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21D0821B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v55;
  *(v8 + 80) = v53;
  *(v8 + 96) = v54;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = sub_21D093BA0();
  *(v8 + 160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v16 = sub_21D093C10();
  *(v8 + 184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v19 = sub_21D094180();
  *(v8 + 208) = v19;
  v20 = *(v19 - 8);
  *(v8 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v22 = sub_21D092FC0();
  *(v8 + 232) = v22;
  v23 = *(v22 - 8);
  *(v8 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v25 = sub_21D094230();
  *(v8 + 256) = v25;
  v26 = *(v25 - 8);
  *(v8 + 264) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v28 = sub_21D094070();
  *(v8 + 280) = v28;
  v29 = *(v28 - 8);
  *(v8 + 288) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v31 = sub_21D0934B0();
  *(v8 + 312) = v31;
  v32 = *(v31 - 8);
  *(v8 + 320) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v34 = sub_21D093AE0();
  *(v8 + 336) = v34;
  v35 = *(v34 - 8);
  *(v8 + 344) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v37 = sub_21D093A10();
  *(v8 + 360) = v37;
  v38 = *(v37 - 8);
  *(v8 + 368) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v40 = sub_21D093800();
  *(v8 + 384) = v40;
  v41 = *(v40 - 8);
  *(v8 + 392) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408) - 8) + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v45 = sub_21D093C60();
  *(v8 + 456) = v45;
  v46 = *(v45 - 8);
  *(v8 + 464) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v48 = sub_21D0939D0();
  *(v8 + 496) = v48;
  v49 = *(v48 - 8);
  *(v8 + 504) = v49;
  v50 = *(v49 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D0827FC, 0, 0);
}

uint64_t sub_21D0827FC()
{
  v242 = v0;
  v1 = v0;
  v2 = *(v0 + 432);
  v5 = v0 + 392;
  v4 = *(v0 + 392);
  v3 = *(v5 + 8);
  v6 = *(v1 + 384);
  v7 = *(v1 + 40);
  v8 = *(*(v1 + 128) + 56);
  v8(v2, 1, 1, *(v1 + 120));
  (*(v4 + 16))(v3, v7, v6);
  v9 = (*(v4 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277D71B98])
  {
    v10 = *(v1 + 64);
    v11 = *(v1 + 48);

    v12 = sub_21D094210();
    v13 = sub_21D094570();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v1 + 56);
      v15 = *(v1 + 64);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v241[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D05550C(v14, v15, v241);
      _os_log_impl(&dword_21D044000, v12, v13, "%s fetchModelMetadata must be handled before this", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D3CDF0](v17, -1, -1);
      MEMORY[0x223D3CDF0](v16, -1, -1);
    }

    v18 = *(v1 + 432);
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);
    v21 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v23 = 9;
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x277D71B78])
  {
    v24 = *(v1 + 64);
    v25 = *(v1 + 48);

    v26 = sub_21D094210();
    v27 = sub_21D094570();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v1 + 56);
      v29 = *(v1 + 64);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v241[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21D05550C(v28, v29, v241);
      v32 = "%s No support for countTokens";
LABEL_11:
      _os_log_impl(&dword_21D044000, v26, v27, v32, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223D3CDF0](v31, -1, -1);
      MEMORY[0x223D3CDF0](v30, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D71BB8])
  {
    v33 = *(v1 + 64);
    v34 = *(v1 + 48);

    v26 = sub_21D094210();
    v27 = sub_21D094570();

    if (os_log_type_enabled(v26, v27))
    {
      v35 = *(v1 + 56);
      v36 = *(v1 + 64);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v241[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21D05550C(v35, v36, v241);
      v32 = "%s No Support for countTokensPromptTemplate";
      goto LABEL_11;
    }

LABEL_12:

    v18 = *(v1 + 432);
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);
    v21 = *(v1 + 384);
    sub_21D090BF4();
    swift_allocError();
    v23 = 5;
LABEL_13:
    *v22 = v23;
    *(v22 + 8) = 4;
    swift_willThrow();
    sub_21D04D27C(v18, &qword_27CE54400, &qword_21D096400);
    (*(v20 + 8))(v19, v21);
    v37 = *(v1 + 520);
    v38 = *(v1 + 512);
    v39 = v1;
    v42 = v1 + 480;
    v41 = *(v1 + 480);
    v40 = *(v42 + 8);
    v43 = v39[59];
    v45 = v39[55];
    v44 = v39[56];
    v47 = v39[53];
    v46 = v39[54];
    v48 = v39[52];
    v203 = v39[51];
    v204 = v39[50];
    v205 = v39[47];
    v206 = v39[44];
    v207 = v39[41];
    v209 = v39[38];
    v211 = v39[37];
    v213 = v39[34];
    v215 = v39[31];
    v218 = v39[28];
    v221 = v39[25];
    v224 = v39[22];
    v227 = v39[19];
    v229 = v39[18];
    v233 = v39[17];

    v49 = v39[1];

    return v49();
  }

  if (v9 == *MEMORY[0x277D71B90])
  {
    v51 = *(v1 + 400);
    v52 = *(v1 + 376);
    v53 = *(v1 + 360);
    v54 = *(v1 + 368);
    v55 = *(v1 + 64);
    v56 = *(v1 + 48);
    (*(*(v1 + 392) + 96))(v51, *(v1 + 384));
    (*(v54 + 32))(v52, v51, v53);

    v57 = sub_21D094210();
    v58 = sub_21D094580();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v1 + 56);
      v59 = *(v1 + 64);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v241[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_21D05550C(v60, v59, v241);
      _os_log_impl(&dword_21D044000, v57, v58, "%s received complete prompt request", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223D3CDF0](v62, -1, -1);
      MEMORY[0x223D3CDF0](v61, -1, -1);
    }

    v63 = *(v1 + 520);
    v64 = *(v1 + 488);
    v65 = *(v1 + 448);
    v66 = *(v1 + 368);
    v67 = *(v1 + 376);
    v68 = *(v1 + 360);
    v69 = *(v1 + 72);
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    v70 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    sub_21D093BC0();
    sub_21D0935F0();

    (*(v66 + 8))(v67, v68);
  }

  else
  {
    if (v9 != *MEMORY[0x277D71BA8])
    {
      v123 = *(v1 + 64);
      v124 = *(v1 + 48);

      v125 = sub_21D094210();
      v126 = sub_21D094570();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = *(v1 + 56);
        v128 = *(v1 + 64);
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v241[0] = v130;
        *v129 = 136315138;
        *(v129 + 4) = sub_21D05550C(v127, v128, v241);
        _os_log_impl(&dword_21D044000, v125, v126, "%s received unkown request payload", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x223D3CDF0](v130, -1, -1);
        MEMORY[0x223D3CDF0](v129, -1, -1);
      }

      v18 = *(v1 + 432);
      v20 = *(v1 + 392);
      v19 = *(v1 + 400);
      v21 = *(v1 + 384);
      sub_21D090BF4();
      swift_allocError();
      v23 = 1;
      goto LABEL_13;
    }

    v85 = *(v1 + 400);
    v87 = *(v1 + 344);
    v86 = *(v1 + 352);
    v88 = *(v1 + 336);
    v89 = *(v1 + 64);
    v90 = *(v1 + 48);
    (*(*(v1 + 392) + 96))(v85, *(v1 + 384));
    (*(v87 + 32))(v86, v85, v88);

    v91 = sub_21D094210();
    v92 = sub_21D094580();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = *(v1 + 56);
      v94 = *(v1 + 64);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v241[0] = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_21D05550C(v93, v94, v241);
      _os_log_impl(&dword_21D044000, v91, v92, "%s received completePromptTemplate request", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x223D3CDF0](v96, -1, -1);
      MEMORY[0x223D3CDF0](v95, -1, -1);
    }

    v98 = *(v1 + 456);
    v97 = *(v1 + 464);
    v99 = *(v1 + 352);
    v100 = *(v1 + 152);
    sub_21D093AD0();
    v101 = *(v97 + 48);
    if (v101(v100, 1, v98) == 1)
    {
      v102 = *(v1 + 456);
      v103 = *(v1 + 152);
      v104 = *(v1 + 472);
      sub_21D093BD0();
      if (v101(v103, 1, v102) != 1)
      {
        sub_21D04D27C(*(v1 + 152), &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 152), *(v1 + 456));
    }

    v175 = *(v1 + 520);
    v176 = *(v1 + 448);
    v177 = *(v1 + 432);
    v178 = *(v1 + 416);
    v239 = *(v1 + 408);
    v179 = *(v1 + 352);
    v181 = *(v1 + 120);
    v180 = *(v1 + 128);
    (*(*(v1 + 464) + 32))(*(v1 + 488), *(v1 + 472), *(v1 + 456));
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v177, &qword_27CE54400, &qword_21D096400);
    v8(v178, 0, 1, v181);
    sub_21D05B208(v178, v177, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v177, v239, &qword_27CE54400, &qword_21D096400);
    v182 = (*(v180 + 48))(v239, 1, v181);
    v183 = *(v1 + 408);
    v184 = *(v1 + 344);
    v185 = *(v1 + 336);
    if (v182 == 1)
    {
      (*(v184 + 8))(*(v1 + 352), *(v1 + 336));
      sub_21D04D27C(v183, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v187 = *(v1 + 136);
      v186 = *(v1 + 144);
      v188 = *(v1 + 120);
      v189 = *(v1 + 128);
      v190 = *(v1 + 72);
      v240 = *(v1 + 352);
      (*(v189 + 32))(v186, v183, v188);
      v236 = v190[4];
      __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      (*(v189 + 16))(v187, v186, v188);
      sub_21D094430();
      sub_21D0935F0();

      (*(v189 + 8))(v186, v188);
      (*(v184 + 8))(v240, v185);
    }
  }

  v72 = *(v1 + 504);
  v71 = *(v1 + 512);
  v73 = *(v1 + 488);
  v74 = *(v1 + 480);
  v75 = *(v1 + 456);
  v76 = *(v1 + 464);
  v77 = *(v1 + 448);
  v214 = v77;
  v216 = *(v1 + 520);
  v210 = *(v1 + 496);
  v212 = *(v1 + 440);
  v219 = *(v1 + 424);
  v222 = *(v1 + 432);
  v78 = *(v1 + 304);
  v234 = v78;
  v237 = *(v1 + 328);
  v79 = *(v1 + 280);
  v80 = *(v1 + 264);
  v225 = *(v1 + 256);
  v228 = *(v1 + 272);
  v81 = *(v1 + 96);
  v230 = *(v1 + 88);
  v82 = *(v1 + 80);
  v83 = *(v1 + 48);
  v208 = *(*(v1 + 288) + 16);
  v208();
  (*(v76 + 16))(v74, v73, v75);
  (*(v72 + 16))(v71, v216, v210);
  sub_21D05B270(v214, v212, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v222, v219, &qword_27CE54400, &qword_21D096400);
  v84 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v80 + 16))(v228, v83 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v225);
  sub_21D055C20(v82, v230);
  sub_21D083B2C(v82, v230, v234, v74, v71, v212, v219, v228, v237);
  v105 = *(v1 + 296);
  v106 = *(v1 + 280);
  v107 = *(v1 + 96);
  v108 = *(v1 + 48);
  logMetric(logger:name:startInstant:)(v83 + v84, 0xD000000000000012, 0x800000021D097370);
  (v208)(v105, v107, v106);
  v109 = sub_21D094210();
  v110 = sub_21D094580();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v1 + 288);
  v113 = *(v1 + 296);
  v114 = *(v1 + 280);
  v238 = v1;
  if (v111)
  {
    v115 = *(v1 + 248);
    v116 = *(v1 + 240);
    v117 = *(v238 + 232);
    v118 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v241[0] = v235;
    *v118 = 136315138;
    v231 = v110;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v119 = sub_21D094790();
    v121 = v120;
    (*(v116 + 8))(v115, v117);
    v1 = v238;
    (*(v112 + 8))(v113, v114);
    v122 = sub_21D05550C(v119, v121, v241);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_21D044000, v109, v231, "%s sending private ML request", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v235);
    MEMORY[0x223D3CDF0](v235, -1, -1);
    MEMORY[0x223D3CDF0](v118, -1, -1);
  }

  else
  {

    (*(v112 + 8))(v113, v114);
  }

  v131 = *(v1 + 224);
  v132 = *(v1 + 64);
  v133 = *(v1 + 48);
  sub_21D0941A0();
  sub_21D094150();

  v134 = sub_21D0941A0();
  v135 = sub_21D094670();

  v136 = sub_21D094680();
  v138 = *(v1 + 216);
  v137 = *(v1 + 224);
  v139 = *(v1 + 208);
  if (v136)
  {
    v141 = *(v1 + 56);
    v140 = *(v1 + 64);
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v241[0] = v143;
    *v142 = 136446210;
    *(v142 + 4) = sub_21D05550C(v141, v140, v241);
    v144 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v134, v135, v144, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x223D3CDF0](v143, -1, -1);
    MEMORY[0x223D3CDF0](v142, -1, -1);
  }

  (*(v138 + 8))(v137, v139);
  v145 = *(v1 + 488);
  v146 = sub_21D093BE0();
  v148 = v147;
  *(v1 + 528) = v147;
  v149 = sub_21D093BB0();
  v150 = *(v149 + 16);
  if (v150)
  {
    v217 = v148;
    v220 = v146;
    v151 = *(v1 + 192);
    v152 = *(v1 + 168);
    v241[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v150, 0);
    v153 = v241[0];
    v154 = *(v151 + 16);
    v151 += 16;
    v155 = v149 + ((*(v151 + 64) + 32) & ~*(v151 + 64));
    v223 = *(v151 + 56);
    v232 = v154;
    v226 = (v151 - 8);
    while (1)
    {
      v156 = *(v1 + 200);
      v157 = *(v1 + 176);
      v158 = *(v1 + 184);
      v159 = *(v1 + 160);
      v232(v156, v155, v158);
      sub_21D093BF0();
      v160 = sub_21D093B80();
      v162 = v161;
      (*(v152 + 8))(v157, v159);
      v163 = sub_21D093C00();
      v164 = (*v226)(v156, v158);
      if ((v163 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v163))
      {
        goto LABEL_52;
      }

      v241[0] = v153;
      v173 = *(v153 + 16);
      v172 = *(v153 + 24);
      if (v173 >= v172 >> 1)
      {
        sub_21D08FADC((v172 > 1), v173 + 1, 1);
        v153 = v241[0];
      }

      *(v153 + 16) = v173 + 1;
      v174 = v153 + 24 * v173;
      *(v174 + 32) = v160;
      *(v174 + 40) = v162;
      *(v174 + 48) = v163;
      v155 += v223;
      --v150;
      v1 = v238;
      if (!v150)
      {

        v148 = v217;
        v146 = v220;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v153 = MEMORY[0x277D84F90];
LABEL_48:
    *(v1 + 536) = v153;
    v191 = v153;
    v192 = *(v1 + 328);
    v193 = *(v1 + 96);
    v195 = *(v1 + 48);
    v194 = *(v1 + 56);
    v196 = *(v1 + 32);
    v197 = swift_task_alloc();
    *(v1 + 544) = v197;
    v198 = *(v1 + 64);
    v199 = *(v1 + 104);
    *(v197 + 16) = v195;
    *(v197 + 24) = v193;
    *(v197 + 32) = v192;
    *(v197 + 40) = v194;
    *(v197 + 48) = v198;
    *(v197 + 64) = v196;
    *(v197 + 72) = v199;
    v200 = *(MEMORY[0x277D41580] + 4);
    v201 = swift_task_alloc();
    *(v1 + 552) = v201;
    v171 = sub_21D093EB0();
    *v201 = v1;
    v201[1] = sub_21D082048;
    v165 = *(v1 + 328);
    v164 = *(v1 + 16);
    v202 = *(v1 + 24);
    v169 = &unk_21D096418;
    v166 = v146;
    v167 = v148;
    v168 = v191;
    v170 = v197;
  }

  return MEMORY[0x2821A23A0](v164, v165, v166, v167, v168, v169, v170, v171);
}

uint64_t sub_21D083B2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, unint64_t a9@<X8>)
{
  v892 = a8;
  v804 = a7;
  v809 = a6;
  v810 = a4;
  v792 = a2;
  v791 = a1;
  v843 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v781 = &v770 - v13;
  v855 = sub_21D093BA0();
  v784 = *(v855 - 8);
  v14 = *(v784 + 64);
  v15 = MEMORY[0x28223BE20](v855);
  v835 = &v770 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v880 = (&v770 - v17);
  v846 = sub_21D093D80();
  v802 = *(v846 - 8);
  v18 = *(v802 + 64);
  MEMORY[0x28223BE20](v846);
  v857 = &v770 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v832 = sub_21D094370();
  v783 = *(v832 - 8);
  v20 = *(v783 + 64);
  MEMORY[0x28223BE20](v832);
  v831 = &v770 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v859 = sub_21D093150();
  v801 = *(v859 - 8);
  v22 = *(v801 + 64);
  MEMORY[0x28223BE20](v859);
  v858 = &v770 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v851 = sub_21D0943A0();
  v797 = *(v851 - 8);
  v24 = *(v797 + 64);
  MEMORY[0x28223BE20](v851);
  v875 = &v770 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v895 = sub_21D0931B0();
  v881 = *(v895 - 1);
  isa = v881[8].isa;
  v27 = MEMORY[0x28223BE20](v895);
  v845 = &v770 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v844 = (&v770 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v848 = &v770 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v847 = (&v770 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v879 = &v770 - v36;
  MEMORY[0x28223BE20](v35);
  v878 = (&v770 - v37);
  v887 = sub_21D093DB0();
  v787 = *(v887 - 8);
  v38 = *(v787 + 64);
  v39 = MEMORY[0x28223BE20](v887);
  v850 = &v770 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v861 = &v770 - v42;
  MEMORY[0x28223BE20](v41);
  v890 = &v770 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54428, &qword_21D096438);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v793 = &v770 - v46;
  v863 = sub_21D093DC0();
  v785 = *(v863 - 8);
  v47 = *(v785 + 64);
  MEMORY[0x28223BE20](v863);
  v891 = (&v770 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v877 = sub_21D093DE0();
  v882 = *(v877 - 8);
  v49 = *(v882 + 64);
  MEMORY[0x28223BE20](v877);
  v876 = &v770 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v796 = sub_21D0931D0();
  v786 = *(v796 - 8);
  v51 = *(v786 + 64);
  MEMORY[0x28223BE20](v796);
  v884 = &v770 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v805 = sub_21D093DF0();
  v800 = *(v805 - 8);
  v53 = *(v800 + 64);
  v54 = MEMORY[0x28223BE20](v805);
  v811 = &v770 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v794 = &v770 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54430, &qword_21D096440);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v799 = (&v770 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v798 = (&v770 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54438, &qword_21D096448);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v868 = &v770 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v788 = &v770 - v66;
  v854 = sub_21D093C10();
  v836 = *(v854 - 8);
  v67 = *(v836 + 64);
  v68 = MEMORY[0x28223BE20](v854);
  v834 = &v770 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v874 = &v770 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v814 = (&v770 - v73);
  v790 = sub_21D093E20();
  v789 = *(v790 - 8);
  v74 = *(v789 + 64);
  MEMORY[0x28223BE20](v790);
  v795 = &v770 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v813 = &v770 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54440, &qword_21D096450);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v818 = (&v770 - v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  *&v826 = &v770 - v84;
  v820 = sub_21D0937A0();
  v822 = *(v820 - 1);
  v85 = *(v822 + 64);
  MEMORY[0x28223BE20](v820);
  v819 = &v770 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v807 = sub_21D0932F0();
  v806 = *(v807 - 8);
  v87 = *(v806 + 64);
  MEMORY[0x28223BE20](v807);
  v803 = (&v770 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54448, &qword_21D096458);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v824 = &v770 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54450, &qword_21D096460);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x28223BE20](v92 - 8);
  v815 = (&v770 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v94);
  v821 = &v770 - v96;
  v97 = sub_21D0944D0();
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97 - 8);
  v823 = (&v770 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  v860 = sub_21D092FC0();
  v100 = *(v860 - 8);
  v101 = *(v100 + 64);
  v102 = MEMORY[0x28223BE20](v860);
  v825 = (&v770 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v102);
  v862 = (&v770 - v104);
  v105 = sub_21D094070();
  v106 = *(v105 - 8);
  v107 = *(v106 + 64);
  v108 = MEMORY[0x28223BE20](v105);
  v780 = &v770 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x28223BE20](v108);
  v817 = (&v770 - v111);
  v112 = MEMORY[0x28223BE20](v110);
  v775 = &v770 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v774 = &v770 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v829 = &v770 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v773 = &v770 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v828 = &v770 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v849 = &v770 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v782 = &v770 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v776 = &v770 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v839 = &v770 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v779 = &v770 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v777 = &v770 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v778 = (&v770 - v135);
  v136 = MEMORY[0x28223BE20](v134);
  v808 = (&v770 - v137);
  v138 = MEMORY[0x28223BE20](v136);
  v837 = &v770 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v885 = (&v770 - v141);
  v142 = MEMORY[0x28223BE20](v140);
  v873 = (&v770 - v143);
  v144 = MEMORY[0x28223BE20](v142);
  v886 = &v770 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v148 = (&v770 - v147);
  v149 = MEMORY[0x28223BE20](v146);
  v151 = &v770 - v150;
  MEMORY[0x28223BE20](v149);
  v153 = &v770 - v152;
  v812 = a5;
  sub_21D093970();
  v883 = a3;
  v893 = v105;
  v872 = v100;
  v871 = v148;
  if (v154)
  {
    (*(v106 + 16))(v153, a3, v105);
    v155 = sub_21D094210();
    v156 = v106;
    v157 = sub_21D094580();
    if (os_log_type_enabled(v155, v157))
    {
      v158 = swift_slowAlloc();
      v888 = v158;
      v889 = swift_slowAlloc();
      v903 = v889;
      *v158 = 136315138;
      v159 = v862;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v160 = v860;
      v161 = sub_21D094790();
      v163 = v162;
      (*(v872 + 8))(v159, v160);
      (*(v156 + 8))(v153, v893);
      v164 = sub_21D05550C(v161, v163, &v903);
      v105 = v893;

      v165 = v888;
      *(v888 + 1) = v164;
      v166 = v165;
      _os_log_impl(&dword_21D044000, v155, v157, "%s max tokens not set will be overriden.", v165, 0xCu);
      v167 = v889;
      __swift_destroy_boxed_opaque_existential_0(v889);
      MEMORY[0x223D3CDF0](v167, -1, -1);
      MEMORY[0x223D3CDF0](v166, -1, -1);
    }

    else
    {

      (*(v156 + 8))(v153, v105);
    }

    a3 = v883;
    v106 = v156;
    v148 = v871;
  }

  v168 = sub_21D093970();
  v888 = *(v106 + 16);
  v889 = (v106 + 16);
  if ((v169 & 1) == 0 && !v168)
  {
    (v888)(v151, a3, v105);
    v170 = sub_21D094210();
    v171 = sub_21D094580();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v869 = v172;
      v870 = swift_slowAlloc();
      v903 = v870;
      LODWORD(v172->isa) = 136315138;
      v173 = v862;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v174 = v860;
      v175 = sub_21D094790();
      v176 = v106;
      v178 = v177;
      (*(v872 + 8))(v173, v174);
      (*(v176 + 8))(v151, v893);
      v179 = sub_21D05550C(v175, v178, &v903);
      v106 = v176;
      a3 = v883;

      v180 = v869;
      *(v869 + 4) = v179;
      v181 = v180;
      _os_log_impl(&dword_21D044000, v170, v171, "%s max tokens is set to zero.", v180, 0xCu);
      v182 = v870;
      __swift_destroy_boxed_opaque_existential_0(v870);
      v105 = v893;
      MEMORY[0x223D3CDF0](v182, -1, -1);
      MEMORY[0x223D3CDF0](v181, -1, -1);
    }

    else
    {

      (*(v106 + 8))(v151, v105);
    }

    v148 = v871;
  }

  v183 = v888;
  (v888)(v148, a3, v105);
  v184 = v886;
  v183(v886, a3, v105);
  v185 = sub_21D094210();
  v186 = sub_21D094580();
  v187 = os_log_type_enabled(v185, v186);
  v894 = v106;
  if (v187)
  {
    v188 = swift_slowAlloc();
    LODWORD(v869) = v186;
    v189 = v188;
    v870 = swift_slowAlloc();
    v903 = v870;
    *v189 = 136315394;
    v190 = v862;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v191 = v860;
    v192 = sub_21D094790();
    v194 = v193;
    (*(v872 + 8))(v190, v191);
    v195 = *(v106 + 8);
    v195(v148, v893);
    v196 = sub_21D05550C(v192, v194, &v903);

    *(v189 + 4) = v196;
    *(v189 + 12) = 2080;
    sub_21D094040();
    v197 = sub_21D094540();
    v199 = v198;

    v886 = v195;
    v195(v184, v893);
    v200 = v197;
    v105 = v893;
    v201 = sub_21D05550C(v200, v199, &v903);
    a3 = v883;

    *(v189 + 14) = v201;
    _os_log_impl(&dword_21D044000, v185, v869, "%s initializing private ML request asset identifiers: %s", v189, 0x16u);
    v202 = v870;
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v202, -1, -1);
    MEMORY[0x223D3CDF0](v189, -1, -1);
  }

  else
  {

    v203 = *(v106 + 8);
    v203(v184, v105);
    v886 = v203;
    v203(v148, v105);
  }

  v204 = v885;
  v205 = v873;
  v206 = v888;
  (v888)(v873, a3, v105);
  v206(v204, a3, v105);
  v207 = sub_21D094210();
  v208 = sub_21D094580();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v871 = swift_slowAlloc();
    v903 = v871;
    *v209 = 136315394;
    v210 = v862;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v211 = v204;
    v212 = v860;
    v213 = sub_21D094790();
    v215 = v214;
    (*(v872 + 8))(v210, v212);
    v216 = v894 + 1;
    v217 = v886;
    (v886)(v205, v893);
    v218 = sub_21D05550C(v213, v215, &v903);

    *(v209 + 4) = v218;
    *(v209 + 12) = 2080;
    v219 = sub_21D094060();
    v221 = v220;
    v885 = v216;
    v217(v211, v893);
    v222 = sub_21D05550C(v219, v221, &v903);
    v105 = v893;

    *(v209 + 14) = v222;
    v223 = v208;
    v224 = v872;
    _os_log_impl(&dword_21D044000, v207, v223, "%s request assetBundleIdentifier: %s", v209, 0x16u);
    v225 = v871;
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v225, -1, -1);
    v226 = v209;
    v227 = &qword_21D095000;
    MEMORY[0x223D3CDF0](v226, -1, -1);
  }

  else
  {

    v228 = v894 + 1;
    v229 = v886;
    (v886)(v204, v105);
    v885 = v228;
    v229(v205, v105);
    v224 = v872;
    v227 = &qword_21D095000;
  }

  v833 = sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
  v894 = sub_21D094590();
  v873 = v230;
  v231 = sub_21D093040();
  v232 = *(v231 + 48);
  v233 = *(v231 + 52);
  swift_allocObject();
  v827 = sub_21D093030();
  v234 = sub_21D094040();
  v841 = 0;
  v865 = 0;
  v842 = 0;
  v236 = 0;
  v238 = v234 + 56;
  v237 = *(v234 + 56);
  v871 = v234;
  v239 = 1 << *(v234 + 32);
  v240 = -1;
  if (v239 < 64)
  {
    v240 = ~(-1 << v239);
  }

  v241 = v240 & v237;
  v242 = ((v239 + 63) >> 6);
  v856 = (v224 + 8);
  v816 = "executePrivateMLRequest";
  v870 = 0xE300000000000000;
  v867 = 0xE000000000000000;
  *&v235 = v227[285];
  v840 = v235;
  *&v235 = 136315650;
  v830 = v235;
  v243 = 0xE000000000000000;
  v869 = 0xE000000000000000;
  v864 = 5065804;
  v244 = v892;
  v852 = (v234 + 56);
  v866 = v242;
  while (1)
  {
    while (1)
    {
      if (!v241)
      {
        while (1)
        {
          v245 = v236 + 1;
          if (__OFADD__(v236, 1))
          {
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
            goto LABEL_240;
          }

          if (v245 >= v242)
          {
            break;
          }

          v241 = *(v238 + 8 * v245);
          ++v236;
          if (v241)
          {
            v236 = v245;
            goto LABEL_26;
          }
        }

        v105 = v243;

        v370 = v862;
        sub_21D094010();
        sub_21D094050();
        sub_21D0933B0();
        sub_21D094010();
        v371 = sub_21D094030();
        sub_21D0605B4(v370, v371, 0);
        v372 = *v856;
        v373 = v370;
        v374 = v860;
        (*v856)(v373, v860);
        sub_21D093300();
        v375 = v825;
        sub_21D094010();
        v376 = sub_21D093FF0();
        v243 = sub_21D0605B4(v375, v376, 1);
        v903 = v243;
        v904 = v377;
        strcpy(&v901, "com.unknown.");
        BYTE13(v901) = 0;
        HIWORD(v901) = -5120;
        sub_21D091198();
        v378 = sub_21D0946A0();
        v852 = v372;
        v372(v375, v374);
        if (v378)
        {

          v243 = 0;
        }

        v379 = v812;
        v380 = v868;
        v224 = v826;
        v238 = v843;
        sub_21D093390();
        sub_21D093320();
        sub_21D093260();
        sub_21D093270();
        v381 = v883;
        sub_21D094060();
        sub_21D093170();
        sub_21D093B70();
        sub_21D093280();
        v242 = v379;
        v382 = sub_21D0939A0();
        if (v383)
        {
          v382 = 0;
        }

        if ((v382 & 0x8000000000000000) != 0)
        {
          goto LABEL_242;
        }

        v245 = HIDWORD(v382);
        if (HIDWORD(v382))
        {
          goto LABEL_243;
        }

        v238 = v843;
        sub_21D093100();
        sub_21D093370();
        sub_21D093950();
        sub_21D093180();
        v242 = v379;
        v384 = sub_21D093970();
        if ((v385 & 1) == 0)
        {
          if ((v384 & 0x8000000000000000) != 0)
          {
            goto LABEL_245;
          }

          v245 = HIDWORD(v384);
          if (HIDWORD(v384))
          {
            goto LABEL_246;
          }

          LOBYTE(v903) = 0;
          v238 = v843;
          sub_21D093490();
        }

        sub_21D093960();
        sub_21D093240();
        sub_21D093990();
        sub_21D093310();
        v242 = v379;
        v386 = sub_21D093940();
        if (v387)
        {
          v386 = 0;
        }

        if (v386 < 0)
        {
          goto LABEL_244;
        }

        sub_21D093110();
        v388 = v381;
        sub_21D094020();
        sub_21D0934A0();
        sub_21D0939B0();
        sub_21D093190();
        sub_21D093980();
        sub_21D093250();
        sub_21D093480();
        sub_21D0944F0();
        sub_21D0931E0();
        v389 = v824;
        sub_21D0939C0();
        v390 = v389;
        v391 = sub_21D093930();
        v392 = *(v391 - 8);
        if ((*(v392 + 48))(v390, 1, v391) == 1)
        {
          sub_21D04D27C(v390, &qword_27CE54448, &qword_21D096458);
          v393 = sub_21D093910();
          v394 = v821;
          (*(*(v393 - 8) + 56))(v821, 1, 1, v393);
          sub_21D04D27C(v394, &qword_27CE54450, &qword_21D096460);
LABEL_99:
          v401 = v820;
          v402 = v822;
          goto LABEL_100;
        }

        v395 = v821;
        sub_21D093920();
        (*(v392 + 8))(v390, v391);
        v396 = sub_21D093910();
        v397 = *(v396 - 8);
        (*(v397 + 56))(v395, 0, 1, v396);
        v398 = v815;
        sub_21D05B208(v395, v815, &qword_27CE54450, &qword_21D096460);
        v399 = (*(v397 + 88))(v398, v396);
        if (v399 == *MEMORY[0x277D71C40])
        {
          (*(v397 + 96))(v398, v396);
          v400 = v803;
          *v803 = *v398;
          (*(v806 + 104))(v400, *MEMORY[0x277D414B8], v807);
          sub_21D093350();
          goto LABEL_99;
        }

        v402 = v822;
        if (v399 == *MEMORY[0x277D71C48])
        {
          v412 = v815;
          (*(v397 + 96))(v815, v396);
          v413 = *v412;
          if ((*v412 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v401 = v820;
            if (!HIDWORD(v413))
            {
              v414 = v803;
              *v803 = v413;
              (*(v806 + 104))(v414, *MEMORY[0x277D414C0], v807);
              sub_21D093350();
              goto LABEL_100;
            }
          }

          __break(1u);
          goto LABEL_250;
        }

        if (v399 == *MEMORY[0x277D71C50])
        {
          (*(v806 + 104))(v803, *MEMORY[0x277D414C8], v807);
          sub_21D093350();
        }

        else
        {
          (*(v397 + 8))(v815, v396);
        }

        v401 = v820;
LABEL_100:
        sub_21D05B270(v809, v224, &qword_27CE54408, &qword_21D096408);
        v403 = (*(v402 + 48))(v224, 1, v401);
        v404 = v819;
        v405 = v818;
        if (v403 == 1)
        {
          sub_21D04D27C(v224, &qword_27CE54408, &qword_21D096408);
        }

        else
        {
          (*(v402 + 32))(v819, v224, v401);
          v406 = v853;
          Constraints.toTMLConstraints(logger:)(v892, v405);
          v853 = v406;
          if (v406)
          {

            sub_21D04FE3C(v791, v792);
            v407 = sub_21D094230();
            (*(*(v407 - 8) + 8))(v892, v407);
            sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
            v408 = sub_21D0939D0();
            (*(*(v408 - 8) + 8))(v379, v408);
            v409 = sub_21D093C60();
            (*(*(v409 - 8) + 8))(v810, v409);
            (v886)(v388, v893);
            (*(v402 + 8))(v404, v401);
            v410 = sub_21D0934B0();
            return (*(*(v410 - 8) + 8))(v843, v410);
          }

          sub_21D093290();
          (*(v402 + 8))(v404, v401);
        }

        v415 = v813;
        sub_21D094000();
        v416 = sub_21D093E70();
        v417 = *(v416 - 8);
        v418 = (*(v417 + 48))(v415, 1, v416);
        v419 = v380;
        if (v418 == 1)
        {
          sub_21D04D27C(v415, &qword_27CE542F8, &qword_21D095E78);
        }

        else
        {
          sub_21D093E50();
          (*(v417 + 8))(v415, v416);
        }

        v420 = v817;
        v421 = v814;
        LOBYTE(v903) = v418 == 1;
        sub_21D093360();
        sub_21D05B270(v804, v421, &qword_27CE54400, &qword_21D096400);
        v422 = v789;
        v423 = v790;
        if ((*(v789 + 48))(v421, 1, v790) != 1)
        {
          (*(v422 + 32))(v795, v421, v423);
          v445 = v788;
          sub_21D093E10();
          v446 = sub_21D092FE0();
          v447 = *(v446 - 8);
          if ((*(v447 + 48))(v445, 1, v446) == 1)
          {
            sub_21D04D27C(v445, &qword_27CE54438, &qword_21D096448);
            v448 = v893;
            goto LABEL_131;
          }

          v238 = sub_21D092FD0();
          v243 = v449;
          (*(v447 + 8))(v445, v446);
          v242 = sub_21D0933F0();
          v105 = v450;
          v224 = *v450;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v105 = v224;
          v245 = &v885;
          if (isUniquelyReferenced_nonNull_native)
          {
            v452 = v853;
            goto LABEL_128;
          }

          goto LABEL_247;
        }

        sub_21D04D27C(v421, &qword_27CE54400, &qword_21D096400);
        v424 = sub_21D093BB0();
        v425 = *(v424 + 16);
        if (v425)
        {
          v894 = *(v836 + 16);
          v426 = (*(v836 + 80) + 32) & ~*(v836 + 80);
          v884 = v424;
          v427 = v424 + v426;
          v891 = *(v836 + 72);
          v895 = (v836 + 16);
          v428 = (v836 + 8);
          v429 = (v784 + 8);
          do
          {
            v430 = v874;
            v431 = v854;
            (v894)(v874, v427, v854);
            v432 = v880;
            sub_21D093BF0();
            (*v428)(v430, v431);
            sub_21D093B90();
            (*v429)(v432, v855);
            v433 = sub_21D092FE0();
            v434 = *(v433 - 8);
            if ((*(v434 + 48))(v419, 1, v433) == 1)
            {
              sub_21D04D27C(v419, &qword_27CE54438, &qword_21D096448);
            }

            else
            {
              v890 = sub_21D092FD0();
              v887 = v435;
              (*(v434 + 8))(v419, v433);
              v436 = sub_21D0933F0();
              v438 = v437;
              v439 = *v437;
              v440 = swift_isUniquelyReferenced_nonNull_native();
              *v438 = v439;
              if ((v440 & 1) == 0)
              {
                v439 = sub_21D054FD0(0, *(v439 + 2) + 1, 1, v439);
                *v438 = v439;
              }

              v442 = *(v439 + 2);
              v441 = *(v439 + 3);
              if (v442 >= v441 >> 1)
              {
                v439 = sub_21D054FD0((v441 > 1), v442 + 1, 1, v439);
                *v438 = v439;
              }

              v419 = v868;
              *(v439 + 2) = v442 + 1;
              v443 = &v439[16 * v442];
              v444 = v887;
              *(v443 + 4) = v890;
              *(v443 + 5) = v444;
              v436(&v903, 0);
            }

            v427 += v891;
            --v425;
          }

          while (v425);

          v379 = v812;
          v420 = v817;
        }

        else
        {
        }

        v636 = v883;
        v637 = v893;
        (v888)(v420, v883, v893);
        v638 = sub_21D094210();
        v639 = sub_21D094580();
        if (os_log_type_enabled(v638, v639))
        {
          v640 = swift_slowAlloc();
          v895 = swift_slowAlloc();
          v903 = v895;
          *v640 = 136315138;
          v641 = v420;
          v642 = v862;
          LODWORD(v894) = v639;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v643 = v860;
          v644 = sub_21D094790();
          v646 = v645;
          v647 = v643;
          v636 = v883;
          v852(v642, v647);
          (v886)(v641, v637);
          v648 = sub_21D05550C(v644, v646, &v903);

          *(v640 + 4) = v648;
          _os_log_impl(&dword_21D044000, v638, v894, "%s Setup CompletePrompt.", v640, 0xCu);
          v649 = v895;
          __swift_destroy_boxed_opaque_existential_0(v895);
          MEMORY[0x223D3CDF0](v649, -1, -1);
          MEMORY[0x223D3CDF0](v640, -1, -1);
        }

        else
        {

          (v886)(v420, v637);
        }

        while (1)
        {
          v887 = sub_21D093BE0();
          v884 = v682;
          v683 = sub_21D093BB0();
          v684 = *(v683 + 16);
          if (!v684)
          {
            break;
          }

          v903 = MEMORY[0x277D84F90];
          sub_21D08FADC(0, v684, 0);
          v105 = v903;
          v895 = *(v836 + 16);
          v685 = (*(v836 + 80) + 32) & ~*(v836 + 80);
          v882 = v683;
          v686 = v683 + v685;
          v890 = *(v836 + 72);
          v894 = (v784 + 8);
          v836 += 16;
          v891 = (v836 - 8);
          while (1)
          {
            v224 = v834;
            v243 = v854;
            (v895)(v834, v686, v854);
            v687 = v835;
            sub_21D093BF0();
            v688 = sub_21D093B80();
            v690 = v689;
            (*v894)(v687, v855);
            v242 = v224;
            v238 = sub_21D093C00();
            (*v891)(v224, v243);
            if ((v238 & 0x8000000000000000) != 0)
            {
              break;
            }

            v245 = HIDWORD(v238);
            if (HIDWORD(v238))
            {
              goto LABEL_241;
            }

            v903 = v105;
            v692 = *(v105 + 16);
            v691 = *(v105 + 24);
            if (v692 >= v691 >> 1)
            {
              sub_21D08FADC((v691 > 1), v692 + 1, 1);
              v105 = v903;
            }

            *(v105 + 16) = v692 + 1;
            v693 = v105 + 24 * v692;
            *(v693 + 32) = v688;
            *(v693 + 40) = v690;
            *(v693 + 48) = v238;
            v686 += v890;
            if (!--v684)
            {

              v636 = v883;
              v379 = v812;
              goto LABEL_216;
            }
          }

LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          v452 = *(v245 - 256);
          v224 = sub_21D054FD0(0, *(v224 + 2) + 1, 1, v224);
          *v105 = v224;
LABEL_128:
          v454 = *(v224 + 2);
          v453 = *(v224 + 3);
          if (v454 >= v453 >> 1)
          {
            v224 = sub_21D054FD0((v453 > 1), v454 + 1, 1, v224);
            *v105 = v224;
          }

          v448 = v893;
          *(v224 + 2) = v454 + 1;
          v455 = &v224[16 * v454];
          *(v455 + 4) = v238;
          *(v455 + 5) = v243;
          (v242)(&v903, 0);
          v853 = v452;
LABEL_131:
          v456 = v886;
          sub_21D093D40();
          sub_21D093340();
          sub_21D093D50();
          sub_21D0933D0();
          v457 = v782;
          (v888)(v782, v883, v448);
          v458 = sub_21D094210();
          v459 = sub_21D094580();
          if (os_log_type_enabled(v458, v459))
          {
            v460 = v457;
            v461 = swift_slowAlloc();
            v894 = swift_slowAlloc();
            v903 = v894;
            *v461 = 136315138;
            v462 = v862;
            sub_21D094010();
            sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
            v463 = v860;
            v464 = sub_21D094790();
            v466 = v465;
            v852(v462, v463);
            v456(v460, v893);
            v467 = sub_21D05550C(v464, v466, &v903);

            *(v461 + 4) = v467;
            _os_log_impl(&dword_21D044000, v458, v459, "%s Setup PromptTemplate.", v461, 0xCu);
            v468 = v894;
            __swift_destroy_boxed_opaque_existential_0(v894);
            v469 = v893;
            MEMORY[0x223D3CDF0](v468, -1, -1);
            MEMORY[0x223D3CDF0](v461, -1, -1);
          }

          else
          {

            v469 = v448;
            v456(v457, v448);
          }

          v470 = v805;
          v471 = v863;
          v472 = v802;
          v473 = v801;
          v242 = v795;
          v474 = sub_21D093E00();
          v476 = 0;
          v478 = (v474 + 64);
          v477 = *(v474 + 64);
          v788 = v474;
          v479 = 1 << *(v474 + 32);
          v480 = -1;
          if (v479 < 64)
          {
            v480 = ~(-1 << v479);
          }

          v481 = v480 & v477;
          v776 = ((v479 + 63) >> 6);
          v782 = (v800 + 16);
          v808 = (v800 + 32);
          v873 = (v882 + 16);
          LODWORD(v872) = *MEMORY[0x277D71EA8];
          LODWORD(v842) = *MEMORY[0x277D71EB0];
          LODWORD(v824) = *MEMORY[0x277D71E98];
          v815 = (v472 + 32);
          v814 = (v472 + 8);
          v823 = (v797 + 32);
          v819 = v473 + 104;
          v818 = (v473 + 16);
          LODWORD(v813) = *MEMORY[0x277D41488];
          v817 = (v473 + 8);
          v825 = (v797 + 8);
          LODWORD(v822) = *MEMORY[0x277D42DA0];
          v841 = (v787 + 32);
          *&v840 = v787 + 16;
          v871 = (v787 + 8);
          LODWORD(v807) = *MEMORY[0x277D42D98];
          v778 = (v786 + 16);
          *&v475 = 136315138;
          v826 = v475;
          v777 = (v786 + 56);
          v786 += 8;
          LODWORD(v806) = *MEMORY[0x277D41478];
          LODWORD(v821) = *MEMORY[0x277D41468];
          LODWORD(v816) = *MEMORY[0x277D41498];
          LODWORD(v839) = *MEMORY[0x277D41490];
          v870 = (v882 + 8);
          v869 = (v785 + 88);
          v868 = (v785 + 96);
          v867 = v881 + 13;
          v866 = &v881[2];
          v865 = v881 + 4;
          v864 = &v881[1];
          v820 = (v783 + 88);
          v105 = &qword_27CE54468;
          v224 = &qword_21D096480;
          v787 = v800 + 8;
          v779 = v478;
          while (1)
          {
            if (!v481)
            {
              if (v776 <= (v476 + 1))
              {
                v488 = (v476 + 1);
              }

              else
              {
                v488 = v776;
              }

              v238 = (v488 - 1);
              v243 = v887;
              while (1)
              {
                v245 = v476 + 1;
                if (__OFADD__(v476, 1))
                {
                  goto LABEL_239;
                }

                if (v245 >= v776)
                {
                  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
                  v498 = v799;
                  (*(*(v611 - 8) + 56))(v799, 1, 1, v611);
                  v801 = 0;
                  v802 = v238;
                  goto LABEL_149;
                }

                v481 = *&v478[8 * v245];
                ++v476;
                if (v481)
                {
                  v487 = v470;
                  v802 = v245;
                  goto LABEL_148;
                }
              }
            }

            v487 = v470;
            v802 = v476;
            v245 = v476;
LABEL_148:
            v801 = (v481 - 1) & v481;
            v489 = __clz(__rbit64(v481)) | (v245 << 6);
            v490 = (*(v788 + 6) + 16 * v489);
            v492 = *v490;
            v491 = v490[1];
            v493 = v800;
            v494 = v794;
            v495 = v487;
            (*(v800 + 16))(v794, *(v788 + 7) + *(v800 + 72) * v489, v487);
            v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
            v497 = *(v496 + 48);
            v498 = v799;
            *v799 = v492;
            *(v498 + 8) = v491;
            v499 = *(v493 + 32);
            v470 = v495;
            v499(v498 + v497, v494, v495);
            (*(*(v496 - 8) + 56))(v498, 0, 1, v496);

            v243 = v887;
            v471 = v863;
LABEL_149:
            v500 = v798;
            sub_21D05B208(v498, v798, &qword_27CE54430, &qword_21D096440);
            v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54468, &qword_21D096480);
            if ((*(*(v238 - 8) + 48))(v500, 1, v238) == 1)
            {
              break;
            }

            v501 = v500[1];
            v797 = *v500;
            v803 = v501;
            v502 = v500 + *(v238 + 48);
            v242 = v811;
            (*v808)(v811, v502, v470);
            sub_21D0931C0();
            v503 = sub_21D093D60();
            v224 = v883;
            v880 = *(v503 + 16);
            if (v880)
            {
              v105 = 0;
              v874 = v503;
              do
              {
                v245 = *(v503 + 16);
                if (v105 >= v245)
                {
                  goto LABEL_238;
                }

                v506 = v882;
                v507 = v876;
                v508 = v877;
                (*(v882 + 16))(v876, v503 + ((*(v506 + 80) + 32) & ~*(v506 + 80)) + *(v506 + 72) * v105, v877);
                v509 = v891;
                sub_21D093DD0();
                (*(v506 + 8))(v507, v508);
                v510 = (*v869)(v509, v471);
                v894 = v105;
                if (v510 == v872)
                {
                  (*v868)(v509, v471);
                  v511 = v890;
                  (*v841)(v890, v509, v243);
                  v512 = v849;
                  v513 = v224;
                  v514 = v469;
                  (v888)(v849, v224, v469);
                  v515 = *v840;
                  v516 = v861;
                  (*v840)(v861, v511, v243);
                  v517 = v850;
                  v515(v850, v511, v243);
                  v518 = sub_21D094210();
                  v519 = sub_21D094560();
                  if (os_log_type_enabled(v518, v519))
                  {
                    v520 = swift_slowAlloc();
                    v838 = swift_slowAlloc();
                    v903 = v838;
                    *v520 = v830;
                    v521 = v862;
                    LODWORD(v837) = v519;
                    sub_21D094010();
                    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                    v522 = v860;
                    v523 = sub_21D094790();
                    v524 = v514;
                    v526 = v525;
                    v527 = v522;
                    v471 = v863;
                    v852(v521, v527);
                    (v886)(v512, v524);
                    v528 = sub_21D05550C(v523, v526, &v903);

                    *(v520 + 4) = v528;
                    *(v520 + 12) = 2080;
                    v529 = v861;
                    v530 = sub_21D093DA0();
                    v532 = v531;
                    v533 = *v871;
                    v534 = v529;
                    v535 = v887;
                    (*v871)(v534, v887);
                    v536 = sub_21D05550C(v530, v532, &v903);

                    *(v520 + 14) = v536;
                    *(v520 + 22) = 1024;
                    LODWORD(v536) = sub_21D093D90() & 1;
                    v533(v517, v535);
                    *(v520 + 24) = v536;
                    _os_log_impl(&dword_21D044000, v518, v837, "%s VB Text %s isSelfAttention:%{BOOL}d", v520, 0x1Cu);
                    v537 = v838;
                    swift_arrayDestroy();
                    v224 = v883;
                    MEMORY[0x223D3CDF0](v537, -1, -1);
                    MEMORY[0x223D3CDF0](v520, -1, -1);
                  }

                  else
                  {
                    v533 = *v871;
                    (*v871)(v517, v243);

                    v533(v516, v243);
                    (v886)(v512, v514);
                    v224 = v513;
                    v471 = v863;
                  }

                  v554 = sub_21D093DA0();
                  v556 = v555;
                  v557 = sub_21D093D90();
                  v558 = v878;
                  *v878 = v554;
                  v558[1] = v556;
                  *(v558 + 16) = v557 & 1;
                  v559 = v895;
                  (v867->isa)(v558, v839, v895);
                  (*v866)(v879, v558, v559);
                  v238 = sub_21D0931A0();
                  v561 = v560;
                  v562 = *v560;
                  v563 = swift_isUniquelyReferenced_nonNull_native();
                  *v561 = v562;
                  if ((v563 & 1) == 0)
                  {
                    v562 = sub_21D055274(0, v562[2] + 1, 1, v562);
                    *v561 = v562;
                  }

                  v565 = v562[2];
                  v564 = v562[3];
                  if (v565 >= v564 >> 1)
                  {
                    v562 = sub_21D055274(v564 > 1, v565 + 1, 1, v562);
                    *v561 = v562;
                  }

                  v562[2] = v565 + 1;
                  v566 = v881;
                  v567 = v562 + ((LOBYTE(v566[10].isa) + 32) & ~LOBYTE(v566[10].isa)) + v566[9].isa * v565;
                  v242 = v895;
                  (v881[4].isa)(v567, v879, v895);
                  (v238)(&v903, 0);
                  (v566[1].isa)(v878, v242);
                  v243 = v887;
                  v533(v890, v887);
                }

                else
                {
                  if (v510 == v842)
                  {
                    v538 = v891;
                    (*v868)(v891, v471);
                    (*v823)(v875, v538, v851);
                    v539 = v828;
                    (v888)(v828, v224, v469);
                    v540 = sub_21D094210();
                    v541 = sub_21D094560();
                    if (os_log_type_enabled(v540, v541))
                    {
                      v542 = v539;
                      v543 = swift_slowAlloc();
                      v544 = swift_slowAlloc();
                      v903 = v544;
                      *v543 = v826;
                      v545 = v862;
                      sub_21D094010();
                      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                      v546 = v860;
                      v547 = sub_21D094790();
                      v549 = v548;
                      v550 = v546;
                      v471 = v863;
                      v852(v545, v550);
                      v551 = v542;
                      v224 = v883;
                      v469 = v893;
                      (v886)(v551, v893);
                      v552 = sub_21D05550C(v547, v549, &v903);

                      *(v543 + 4) = v552;
                      _os_log_impl(&dword_21D044000, v540, v541, "%s received rich variable binding imageData", v543, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v544);
                      MEMORY[0x223D3CDF0](v544, -1, -1);
                      MEMORY[0x223D3CDF0](v543, -1, -1);
                    }

                    else
                    {

                      v553 = (v886)(v539, v469);
                    }

                    v583 = v831;
                    MEMORY[0x223D3C460](v553);
                    v584 = (*v820)(v583, v832);
                    v585 = v821;
                    if (v584 != v822)
                    {
                      v585 = v806;
                      if (v584 != v807)
                      {

                        v650 = v224;
                        v651 = v773;
                        (v888)(v773, v650, v469);
                        v652 = sub_21D094210();
                        v653 = v469;
                        v654 = sub_21D094570();
                        if (os_log_type_enabled(v652, v654))
                        {
                          v655 = swift_slowAlloc();
                          v656 = swift_slowAlloc();
                          v903 = v656;
                          *v655 = v826;
                          v657 = v862;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                          v658 = v860;
                          v659 = sub_21D094790();
                          v661 = v660;
                          v852(v657, v658);
                          v662 = v651;
                          v663 = v893;
                          v664 = v886;
                          (v886)(v662, v893);
                          v665 = sub_21D05550C(v659, v661, &v903);

                          *(v655 + 4) = v665;
                          _os_log_impl(&dword_21D044000, v652, v654, "%s Unknown default image format for variable binding", v655, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v656);
                          MEMORY[0x223D3CDF0](v656, -1, -1);
                          MEMORY[0x223D3CDF0](v655, -1, -1);

                          v666 = v812;
                          v667 = v843;
                        }

                        else
                        {

                          v731 = v469;
                          v664 = v886;
                          (v886)(v651, v731);
                          v666 = v812;
                          v667 = v843;
                          v663 = v653;
                        }

                        v732 = v805;
                        sub_21D090BF4();
                        v733 = swift_allocError();
                        *v734 = 7;
                        *(v734 + 8) = 4;
                        v853 = v733;
                        swift_willThrow();

                        sub_21D04FE3C(v791, v792);
                        v735 = sub_21D094230();
                        (*(*(v735 - 8) + 8))(v892, v735);
                        sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
                        sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
                        v736 = sub_21D0939D0();
                        (*(*(v736 - 8) + 8))(v666, v736);
                        v737 = sub_21D093C60();
                        (*(*(v737 - 8) + 8))(v810, v737);
                        v664(v883, v663);
                        (*v825)(v875, v851);
                        (*v786)(v884, v796);
                        (*v787)(v811, v732);
                        (*(v789 + 8))(v795, v790);
                        v738 = sub_21D0934B0();
                        (*(*(v738 - 8) + 8))(v667, v738);
                        return (*(v783 + 8))(v831, v832);
                      }
                    }

                    (*v819)(v858, v585, v859);
                    if (sub_21D0945D0())
                    {
                      v586 = sub_21D094210();
                      v587 = sub_21D094580();
                      if (os_log_type_enabled(v586, v587))
                      {
                        v588 = swift_slowAlloc();
                        *v588 = 0;
                        _os_log_impl(&dword_21D044000, v586, v587, "UserDefaults.convertJpgToBitmap is true. Converting jpg to bitmap", v588, 2u);
                        MEMORY[0x223D3CDF0](v588, -1, -1);
                      }
                    }

                    v589 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54470, &qword_21D096488) + 48);
                    v590 = sub_21D094380();
                    v591 = v847;
                    *v847 = v590;
                    v591[1] = v592;
                    (*v818)(v591 + v589, v858, v859);
                    v593 = v895;
                    (v867->isa)(v591, v816, v895);
                    (*v866)(v848, v591, v593);
                    v238 = sub_21D0931A0();
                    v595 = v594;
                    v596 = *v594;
                    v597 = swift_isUniquelyReferenced_nonNull_native();
                    *v595 = v596;
                    if ((v597 & 1) == 0)
                    {
                      v596 = sub_21D055274(0, v596[2] + 1, 1, v596);
                      *v595 = v596;
                    }

                    v599 = v596[2];
                    v598 = v596[3];
                    if (v599 >= v598 >> 1)
                    {
                      v596 = sub_21D055274(v598 > 1, v599 + 1, 1, v596);
                      *v595 = v596;
                    }

                    v596[2] = v599 + 1;
                    v504 = v881;
                    v505 = v596 + ((LOBYTE(v504[10].isa) + 32) & ~LOBYTE(v504[10].isa)) + v504[9].isa * v599;
                    v242 = v895;
                    (v881[4].isa)(v505, v848, v895);
                    (v238)(&v903, 0);
                    (v504[1].isa)(v847, v242);
                    (*v817)(v858, v859);
                    (*v825)(v875, v851);
                  }

                  else
                  {
                    v568 = v829;
                    if (v510 != v824)
                    {
                      v612 = *MEMORY[0x277D71EA0];
                      v613 = v510;

                      if (v613 == v612)
                      {
                        v614 = v774;
                        (v888)(v774, v883, v469);
                        v615 = sub_21D094210();
                        v616 = v469;
                        v617 = sub_21D094570();
                        v618 = os_log_type_enabled(v615, v617);
                        v619 = v812;
                        if (v618)
                        {
                          v620 = swift_slowAlloc();
                          v621 = swift_slowAlloc();
                          v903 = v621;
                          *v620 = v826;
                          v622 = v862;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                          v623 = v860;
                          v624 = sub_21D094790();
                          v626 = v625;
                          v852(v622, v623);
                          v627 = v614;
                          v628 = v893;
                          v629 = v886;
                          (v886)(v627, v893);
                          v630 = sub_21D05550C(v624, v626, &v903);

                          *(v620 + 4) = v630;
                          v619 = v812;
                          _os_log_impl(&dword_21D044000, v615, v617, "%s received rich variable binding imageEmbeddingData. Not supported.", v620, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v621);
                          MEMORY[0x223D3CDF0](v621, -1, -1);
                          MEMORY[0x223D3CDF0](v620, -1, -1);
                        }

                        else
                        {

                          v739 = v469;
                          v629 = v886;
                          (v886)(v614, v739);
                          v628 = v616;
                        }

                        v740 = v805;
                        sub_21D090BF4();
                        v741 = swift_allocError();
                        v743 = 8;
                      }

                      else
                      {
                        v668 = v775;
                        (v888)(v775, v883, v469);
                        v669 = sub_21D094210();
                        v670 = v469;
                        v671 = sub_21D094570();
                        v672 = os_log_type_enabled(v669, v671);
                        v619 = v812;
                        if (v672)
                        {
                          v673 = swift_slowAlloc();
                          v674 = swift_slowAlloc();
                          v903 = v674;
                          *v673 = v826;
                          v675 = v862;
                          sub_21D094010();
                          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                          v676 = v860;
                          v677 = sub_21D094790();
                          v679 = v678;
                          v852(v675, v676);
                          v680 = v668;
                          v628 = v893;
                          v629 = v886;
                          (v886)(v680, v893);
                          v681 = sub_21D05550C(v677, v679, &v903);

                          *(v673 + 4) = v681;
                          v619 = v812;
                          _os_log_impl(&dword_21D044000, v669, v671, "%s Unknown default variable binding", v673, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v674);
                          MEMORY[0x223D3CDF0](v674, -1, -1);
                          MEMORY[0x223D3CDF0](v673, -1, -1);
                        }

                        else
                        {

                          v744 = v469;
                          v629 = v886;
                          (v886)(v668, v744);
                          v628 = v670;
                        }

                        v740 = v805;
                        sub_21D090BF4();
                        v741 = swift_allocError();
                        v743 = 6;
                      }

                      *v742 = v743;
                      *(v742 + 8) = 4;
                      v853 = v741;
                      swift_willThrow();

                      sub_21D04FE3C(v791, v792);
                      v745 = sub_21D094230();
                      (*(*(v745 - 8) + 8))(v892, v745);
                      sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
                      sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
                      v746 = sub_21D0939D0();
                      (*(*(v746 - 8) + 8))(v619, v746);
                      v747 = sub_21D093C60();
                      (*(*(v747 - 8) + 8))(v810, v747);
                      v629(v883, v628);
                      (*v786)(v884, v796);
                      (*v787)(v811, v740);
                      (*(v789 + 8))(v795, v790);
                      v748 = sub_21D0934B0();
                      (*(*(v748 - 8) + 8))(v843, v748);
                      return (*(v785 + 8))(v891, v863);
                    }

                    v569 = v891;
                    (*v868)(v891, v471);
                    (*v815)(v857, v569, v846);
                    (v888)(v568, v224, v469);
                    v570 = sub_21D094210();
                    v571 = sub_21D094560();
                    if (os_log_type_enabled(v570, v571))
                    {
                      v572 = v568;
                      v573 = swift_slowAlloc();
                      v838 = swift_slowAlloc();
                      v903 = v838;
                      *v573 = v826;
                      v574 = v862;
                      sub_21D094010();
                      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
                      v575 = v860;
                      v576 = sub_21D094790();
                      v578 = v577;
                      v579 = v575;
                      v471 = v863;
                      v852(v574, v579);
                      v580 = v572;
                      v224 = v883;
                      (v886)(v580, v469);
                      v581 = sub_21D05550C(v576, v578, &v903);

                      *(v573 + 4) = v581;
                      _os_log_impl(&dword_21D044000, v570, v571, "%s received rich variable binding imageSurface", v573, 0xCu);
                      v582 = v838;
                      __swift_destroy_boxed_opaque_existential_0(v838);
                      MEMORY[0x223D3CDF0](v582, -1, -1);
                      MEMORY[0x223D3CDF0](v573, -1, -1);
                    }

                    else
                    {

                      (v886)(v568, v469);
                    }

                    v600 = sub_21D093D70();
                    v601 = v844;
                    *v844 = v600;
                    v602 = v895;
                    (v867->isa)(v601, v813, v895);
                    (*v866)(v845, v601, v602);
                    v238 = sub_21D0931A0();
                    v604 = v603;
                    v605 = *v603;
                    v606 = swift_isUniquelyReferenced_nonNull_native();
                    *v604 = v605;
                    if ((v606 & 1) == 0)
                    {
                      v605 = sub_21D055274(0, v605[2] + 1, 1, v605);
                      *v604 = v605;
                    }

                    v608 = v605[2];
                    v607 = v605[3];
                    if (v608 >= v607 >> 1)
                    {
                      v605 = sub_21D055274(v607 > 1, v608 + 1, 1, v605);
                      *v604 = v605;
                    }

                    v605[2] = v608 + 1;
                    v609 = v881;
                    v610 = v605 + ((LOBYTE(v609[10].isa) + 32) & ~LOBYTE(v609[10].isa)) + v609[9].isa * v608;
                    v242 = v895;
                    (v881[4].isa)(v610, v845, v895);
                    (v238)(&v903, 0);
                    (v609[1].isa)(v844, v242);
                    (*v814)(v857, v846);
                  }

                  v243 = v887;
                }

                v105 = v894 + 1;
                v469 = v893;
                v503 = v874;
              }

              while (v880 != (v894 + 1));
            }

            v482 = v793;
            v483 = v884;
            v484 = v796;
            (*v778)(v793, v884, v796);
            (*v777)(v482, 0, 1, v484);
            v485 = sub_21D093380();
            v242 = v486;
            sub_21D05B73C(v482, v797, v803);
            v485(&v903, 0);
            (*v786)(v483, v484);
            v470 = v805;
            (*v787)(v811, v805);
            v478 = v779;
            v476 = v802;
            v481 = v801;
            v105 = &qword_27CE54468;
            v224 = &qword_21D096480;
          }

          (*(v789 + 8))(v795, v790);

          v379 = v812;
          v636 = v883;
        }

        v105 = MEMORY[0x277D84F90];
LABEL_216:
        v694 = v853;
        v695 = v892;
        if (*(v105 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
          v696 = sub_21D094770();
        }

        else
        {
          v696 = MEMORY[0x277D84F98];
        }

        v697 = v636;
        v903 = v696;
        sub_21D0911EC(v105, 1, &v903);
        v853 = v694;
        if (!v694)
        {

          sub_21D093330();
          sub_21D0933C0();
          sub_21D093400();
          v698 = v781;
          sub_21D0932A0();
          v699 = sub_21D0932C0();
          (*(*(v699 - 8) + 56))(v698, 0, 1, v699);
          sub_21D0932E0();
          v895 = sub_21D093160();
          v701 = v700;
          v702 = v780;
          v703 = v893;
          (v888)(v780, v697, v893);
          v704 = sub_21D094210();
          v705 = sub_21D094560();
          if (os_log_type_enabled(v704, v705))
          {
            v706 = swift_slowAlloc();
            v894 = swift_slowAlloc();
            v903 = v894;
            *v706 = 136315395;
            v707 = v702;
            v708 = v862;
            sub_21D094010();
            sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
            v709 = v860;
            v710 = sub_21D094790();
            v712 = v711;
            v852(v708, v709);
            v713 = v707;
            v714 = v893;
            v715 = v886;
            (v886)(v713, v893);
            v716 = sub_21D05550C(v710, v712, &v903);

            *(v706 + 4) = v716;
            *(v706 + 12) = 2081;
            v717 = sub_21D05550C(v895, v701, &v903);

            *(v706 + 14) = v717;
            _os_log_impl(&dword_21D044000, v704, v705, "%s initialized request %{private}s", v706, 0x16u);
            v718 = v894;
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v718, -1, -1);
            MEMORY[0x223D3CDF0](v706, -1, -1);

            sub_21D04FE3C(v791, v792);

            v719 = sub_21D094230();
            (*(*(v719 - 8) + 8))(v892, v719);
            sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
            v720 = sub_21D0939D0();
            (*(*(v720 - 8) + 8))(v812, v720);
            v721 = sub_21D093C60();
            (*(*(v721 - 8) + 8))(v810, v721);
            return v715(v883, v714);
          }

          else
          {

            sub_21D04FE3C(v791, v792);

            v722 = sub_21D094230();
            (*(*(v722 - 8) + 8))(v695, v722);
            sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
            sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
            v723 = sub_21D0939D0();
            (*(*(v723 - 8) + 8))(v379, v723);
            v724 = sub_21D093C60();
            (*(*(v724 - 8) + 8))(v810, v724);
            v725 = v886;
            (v886)(v697, v703);
            return v725(v702, v703);
          }
        }

LABEL_250:

        __break(1u);
        return result;
      }

LABEL_26:
      v246 = (v871[6] + ((v236 << 10) | (16 * __clz(__rbit64(v241)))));
      v247 = *v246;
      v224 = v246[1];

      v872 = v247;
      v248 = v853;
      sub_21D093020();
      v853 = v248;
      if (v248)
      {

        sub_21D04FE3C(v791, v792);

        v631 = sub_21D094230();
        (*(*(v631 - 8) + 8))(v244, v631);
        sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
        sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
        v632 = sub_21D0939D0();
        (*(*(v632 - 8) + 8))(v812, v632);
        v633 = sub_21D093C60();
        (*(*(v633 - 8) + 8))(v810, v633);
        v634 = v883;
        v635 = v105;
        return (v886)(v634, v635);
      }

      v241 &= v241 - 1;
      if (!v902)
      {
        break;
      }

      sub_21D046D78(&v901, &v903);
      sub_21D0590D0(&v903, &v901);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54298, &qword_21D095E00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B0, &qword_21D095E18);
      if (swift_dynamicCast())
      {

        v249 = v837;
        (v888)(v837, v883, v105);

        v250 = sub_21D094210();
        v251 = sub_21D094580();

        v865 = v250;
        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          LODWORD(v772) = v251;
          v253 = v252;
          v838 = swift_slowAlloc();
          v896 = v838;
          *v253 = v840;
          v254 = v862;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v255 = v860;
          v256 = sub_21D094790();
          v258 = v257;
          v259 = v254;
          v238 = v852;
          (*v856)(v259, v255);
          (v886)(v249, v893);
          v260 = sub_21D05550C(v256, v258, &v896);

          *(v253 + 4) = v260;
          *(v253 + 12) = 2080;
          v261 = v872;
          *(v253 + 14) = sub_21D05550C(v872, v224, &v896);
          v262 = v865;
          _os_log_impl(&dword_21D044000, v865, v772, "%s resource is tokenizer %s", v253, 0x16u);
          v263 = v838;
          swift_arrayDestroy();
          v105 = v893;
          MEMORY[0x223D3CDF0](v263, -1, -1);
          MEMORY[0x223D3CDF0](v253, -1, -1);
        }

        else
        {

          (v886)(v249, v105);
          v261 = v872;
        }

        v896 = v894;
        v897 = v873;

        MEMORY[0x223D3C530](v261, v224);

        v243 = v897;
        v865 = v896;
        __swift_destroy_boxed_opaque_existential_0(&v903);
        __swift_destroy_boxed_opaque_existential_0(&v898);
        v242 = v866;
LABEL_54:
        v244 = v892;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A0, &qword_21D095E08);
      v280 = swift_dynamicCast();
      v838 = v243;
      if (v280)
      {

        v281 = v224;
        v282 = v808;
        (v888)(v808, v883, v105);

        v283 = sub_21D094210();
        v284 = v105;
        v285 = sub_21D094580();

        v870 = v283;
        if (os_log_type_enabled(v283, v285))
        {
          v286 = swift_slowAlloc();
          v864 = swift_slowAlloc();
          v896 = v864;
          *v286 = v840;
          LODWORD(v772) = v285;
          v287 = v862;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v288 = v860;
          v289 = sub_21D094790();
          v291 = v290;
          v292 = v288;
          v238 = v852;
          (*v856)(v287, v292);
          (v886)(v282, v893);
          v293 = sub_21D05550C(v289, v291, &v896);
          v244 = v892;

          *(v286 + 4) = v293;
          *(v286 + 12) = 2080;
          v224 = v872;
          *(v286 + 14) = sub_21D05550C(v872, v281, &v896);
          v294 = v870;
          _os_log_impl(&dword_21D044000, v870, v772, "%s resource is model %s", v286, 0x16u);
          v295 = v864;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v295, -1, -1);
          MEMORY[0x223D3CDF0](v286, -1, -1);

          v105 = v893;
        }

        else
        {

          (v886)(v282, v284);
          v105 = v284;
          v224 = v872;
        }

        v896 = v894;
        v897 = v873;

        MEMORY[0x223D3C530](v224, v281);

        v337 = v897;
        v864 = v896;
        v338 = &v900;
LABEL_73:
        *(v338 - 32) = v337;
        __swift_destroy_boxed_opaque_existential_0(&v903);
        v356 = &v898;
        goto LABEL_74;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A8, &qword_21D095E10);
      if (swift_dynamicCast())
      {

        v314 = v778;
        (v888)(v778, v883, v105);

        v315 = sub_21D094210();
        v316 = v105;
        v317 = sub_21D094580();
        v772 = v224;

        v869 = v315;
        if (os_log_type_enabled(v315, v317))
        {
          v318 = v314;
          v319 = swift_slowAlloc();
          v842 = swift_slowAlloc();
          v896 = v842;
          *v319 = v840;
          LODWORD(v771) = v317;
          v320 = v862;
          v321 = v316;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v322 = v860;
          v323 = sub_21D094790();
          v325 = v324;
          v326 = v322;
          v238 = v852;
          (*v856)(v320, v326);
          v105 = v321;
          (v886)(v318, v321);
          v327 = sub_21D05550C(v323, v325, &v896);
          v244 = v892;

          *(v319 + 4) = v327;
          *(v319 + 12) = 2080;
          v224 = v872;
          *(v319 + 14) = sub_21D05550C(v872, v772, &v896);
          v328 = v869;
          _os_log_impl(&dword_21D044000, v869, v771, "%s resource is adaptor %s", v319, 0x16u);
          v329 = v842;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v329, -1, -1);
          MEMORY[0x223D3CDF0](v319, -1, -1);

          v330 = v772;
        }

        else
        {

          (v886)(v314, v316);
          v105 = v316;
          v330 = v772;
          v224 = v872;
        }

        v896 = v894;
        v897 = v873;

        MEMORY[0x223D3C530](v224, v330);

        v337 = v897;
        v842 = v896;
        v338 = &v899;
        goto LABEL_73;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54460, &unk_21D096470);
      if (swift_dynamicCast())
      {

        v339 = v777;
        (v888)(v777, v883, v105);

        v340 = sub_21D094210();
        v341 = v105;
        v342 = sub_21D094580();
        v772 = v224;

        v867 = v340;
        if (os_log_type_enabled(v340, v342))
        {
          v343 = v339;
          v344 = swift_slowAlloc();
          v841 = swift_slowAlloc();
          v896 = v841;
          *v344 = v840;
          LODWORD(v771) = v342;
          v345 = v862;
          v346 = v341;
          sub_21D094010();
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v347 = v860;
          v348 = sub_21D094790();
          v350 = v349;
          v351 = v347;
          v238 = v852;
          (*v856)(v345, v351);
          v105 = v346;
          (v886)(v343, v346);
          v352 = sub_21D05550C(v348, v350, &v896);

          *(v344 + 4) = v352;
          *(v344 + 12) = 2080;
          v353 = v872;
          v354 = v772;
          *(v344 + 14) = sub_21D05550C(v872, v772, &v896);
          v355 = v867;
          _os_log_impl(&dword_21D044000, v867, v771, "%s resource is draft %s", v344, 0x16u);
          v224 = v841;
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v224, -1, -1);
          MEMORY[0x223D3CDF0](v344, -1, -1);
        }

        else
        {

          (v886)(v339, v341);
          v105 = v341;
          v354 = v772;
          v353 = v872;
        }

        v896 = v894;
        v897 = v873;

        MEMORY[0x223D3C530](v353, v354);

        v841 = v896;
        v867 = v897;
        __swift_destroy_boxed_opaque_existential_0(&v903);
        __swift_destroy_boxed_opaque_existential_0(&v898);
        v242 = v866;
        v243 = v838;
        goto LABEL_54;
      }

      (v888)(v779, v883, v105);

      v357 = sub_21D094210();
      v358 = sub_21D094580();

      LODWORD(v772) = v358;
      if (os_log_type_enabled(v357, v358))
      {
        v359 = swift_slowAlloc();
        v771 = swift_slowAlloc();
        v898 = v771;
        *v359 = v830;
        v360 = v862;
        v770 = v357;
        v361 = v779;
        sub_21D094010();
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
        v362 = v860;
        v363 = sub_21D094790();
        v365 = v364;
        (*v856)(v360, v362);
        (v886)(v361, v893);
        v366 = sub_21D05550C(v363, v365, &v898);
        v105 = v893;

        *(v359 + 4) = v366;
        *(v359 + 12) = 2080;
        v367 = sub_21D05550C(v872, v224, &v898);

        *(v359 + 14) = v367;
        v238 = v852;
        *(v359 + 22) = 2080;
        *(v359 + 24) = sub_21D05550C(v894, v873, &v898);
        v368 = v770;
        _os_log_impl(&dword_21D044000, v770, v772, "%s resource is default %s server scope: %s", v359, 0x20u);
        v369 = v771;
        swift_arrayDestroy();
        v244 = v892;
        MEMORY[0x223D3CDF0](v369, -1, -1);
        MEMORY[0x223D3CDF0](v359, -1, -1);
      }

      else
      {

        (v886)(v779, v105);
      }

      v356 = &v903;
LABEL_74:
      __swift_destroy_boxed_opaque_existential_0(v356);
      v242 = v866;
      v243 = v838;
LABEL_75:
      __swift_destroy_boxed_opaque_existential_0(&v901);
    }

    sub_21D04D27C(&v901, &qword_27CE54458, &qword_21D096468);
    v264 = v839;
    (v888)(v839, v883, v105);

    v265 = sub_21D094210();
    v266 = v105;
    v267 = sub_21D094580();

    if (os_log_type_enabled(v265, v267))
    {
      v268 = swift_slowAlloc();
      v870 = swift_slowAlloc();
      v903 = v870;
      *v268 = v840;
      LODWORD(v867) = v267;
      v269 = v862;
      v869 = v265;
      sub_21D094010();
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v270 = v860;
      v271 = sub_21D094790();
      v273 = v272;
      (*v856)(v269, v270);
      v274 = v264;
      v275 = v893;
      (v886)(v274, v893);
      v276 = sub_21D05550C(v271, v273, &v903);
      v244 = v892;

      *(v268 + 4) = v276;
      *(v268 + 12) = 2080;
      v277 = sub_21D05550C(v872, v224, &v903);

      *(v268 + 14) = v277;
      v278 = v869;
      _os_log_impl(&dword_21D044000, v869, v867, "%s found no resource for identifier %s", v268, 0x16u);
      v279 = v870;
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v279, -1, -1);
      MEMORY[0x223D3CDF0](v268, -1, -1);
    }

    else
    {

      (v886)(v264, v266);
      v275 = v266;
    }

    v296 = v873;
    if (qword_27CE53E90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27CE53EA8 == 1)
    {

      sub_21D090BF4();
      v726 = swift_allocError();
      *v727 = 0;
      *(v727 + 8) = 4;
      v853 = v726;
      swift_willThrow();

      sub_21D04FE3C(v791, v792);
      v728 = sub_21D094230();
      (*(*(v728 - 8) + 8))(v244, v728);
      sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
      sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
      v729 = sub_21D0939D0();
      (*(*(v729 - 8) + 8))(v812, v729);
      v730 = sub_21D093C60();
      (*(*(v730 - 8) + 8))(v810, v730);
      v634 = v883;
      v635 = v275;
      return (v886)(v634, v635);
    }

    v297 = sub_21D0945F0();
    if (!v297)
    {
      goto LABEL_233;
    }

    v298 = v297;
    if (!*(v297 + 16))
    {
      break;
    }

    v299 = sub_21D055BA8(0x6D614E6C65646F6DLL, 0xE900000000000065);
    if (v300)
    {
      v301 = (*(v298 + 56) + 16 * v299);
      v302 = *v301;
      v303 = v301[1];
    }

    else
    {
      v303 = 0xE300000000000000;
      v302 = 5065804;
    }

    v903 = v894;
    v904 = v296;

    MEMORY[0x223D3C530](v302, v303);

    v864 = v903;
    v870 = v904;
    if (*(v298 + 16) && (v304 = sub_21D055BA8(0xD000000000000010, v816 | 0x8000000000000000), (v305 & 1) != 0))
    {
      v306 = (*(v298 + 56) + 16 * v304);
      v307 = *v306;
      v308 = v306[1];
    }

    else
    {
      v308 = 0xE700000000000000;
      v307 = 0x726F7470616441;
    }

    v903 = v894;
    v904 = v296;

    MEMORY[0x223D3C530](v307, v308);

    v842 = v903;
    v869 = v904;
    if (!*(v298 + 16))
    {
      v224 = v244;
      v312 = 0x657A696E656B6F54;
LABEL_60:
      v313 = 0xE900000000000072;
      goto LABEL_61;
    }

    v309 = sub_21D055BA8(0x657A696E656B6F54, 0xED0000656D614E72);
    v224 = v244;
    if ((v310 & 1) == 0)
    {
      v312 = 0x657A696E656B6F54;
      goto LABEL_60;
    }

    v311 = (*(v298 + 56) + 16 * v309);
    v312 = *v311;
    v313 = v311[1];

LABEL_61:
    v903 = v894;
    v904 = v296;

    MEMORY[0x223D3C530](v312, v313);

    v331 = v904;
    v865 = v903;
    if (*(v298 + 16) && (v332 = sub_21D055BA8(0x646F4D7466617264, 0xEE00656D614E6C65), (v333 & 1) != 0))
    {
      v334 = (*(v298 + 56) + 16 * v332);
      v336 = *v334;
      v335 = v334[1];
    }

    else
    {
      v335 = 0xE500000000000000;
      v336 = 0x7466617244;
    }

    v903 = v894;
    v904 = v873;

    MEMORY[0x223D3C530](v336, v335);

    v841 = v903;
    v867 = v904;
    v105 = v893;
    v238 = v852;
    v242 = v866;
    v243 = v331;
    v244 = v224;
  }

LABEL_233:

  v749 = v776;
  v750 = v883;
  (v888)(v776, v883, v275);
  v751 = sub_21D094210();
  v752 = sub_21D094580();
  if (os_log_type_enabled(v751, v752))
  {
    v753 = swift_slowAlloc();
    v754 = swift_slowAlloc();
    v903 = v754;
    *v753 = 136315138;
    v755 = v862;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v756 = v860;
    v757 = sub_21D094790();
    v759 = v758;
    (*v856)(v755, v756);
    v760 = v749;
    v761 = v893;
    v762 = v886;
    (v886)(v760, v893);
    v763 = sub_21D05550C(v757, v759, &v903);

    *(v753 + 4) = v763;
    _os_log_impl(&dword_21D044000, v751, v752, "%s no or empty override catalog", v753, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v754);
    v764 = v754;
    v750 = v883;
    MEMORY[0x223D3CDF0](v764, -1, -1);
    MEMORY[0x223D3CDF0](v753, -1, -1);

    v275 = v761;
  }

  else
  {

    v762 = v886;
    (v886)(v749, v275);
  }

  sub_21D090BF4();
  v765 = swift_allocError();
  *v766 = 0;
  *(v766 + 8) = 4;
  v853 = v765;
  swift_willThrow();

  sub_21D04FE3C(v791, v792);
  v767 = sub_21D094230();
  (*(*(v767 - 8) + 8))(v892, v767);
  sub_21D04D27C(v804, &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v809, &qword_27CE54408, &qword_21D096408);
  v768 = sub_21D0939D0();
  (*(*(v768 - 8) + 8))(v812, v768);
  v769 = sub_21D093C60();
  (*(*(v769 - 8) + 8))(v810, v769);
  return v762(v750, v275);
}

uint64_t sub_21D08B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v34;
  *(v8 + 120) = v33;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_21D094180();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v12 = *(*(_s18InstrumentedTokensV13AsyncIteratorVMa(0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = sub_21D093470();
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v17 = sub_21D094730();
  *(v8 + 208) = v17;
  v18 = *(v17 - 8);
  *(v8 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v20 = sub_21D094230();
  *(v8 + 232) = v20;
  v21 = *(v20 - 8);
  *(v8 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v23 = _s18InstrumentedTokensVMa(0);
  *(v8 + 256) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v25 = sub_21D092FC0();
  *(v8 + 272) = v25;
  v26 = *(v25 - 8);
  *(v8 + 280) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v28 = sub_21D094070();
  *(v8 + 304) = v28;
  v29 = *(v28 - 8);
  *(v8 + 312) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08B478, 0, 0);
}

uint64_t sub_21D08B478()
{
  v80 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(*(v0 + 312) + 16))(*(v0 + 320), *(v0 + 80), *(v0 + 304));
  v74 = v2;
  v76 = v1;
  v3 = sub_21D094210();
  v4 = sub_21D094580();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 304);
  if (v5)
  {
    v9 = *(v0 + 296);
    v65 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79 = v71;
    *v12 = 136315138;
    v68 = v4;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v13 = sub_21D094790();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v65);
    v16 = sub_21D05550C(v13, v15, &v79);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21D044000, v3, v68, "%s waiting for private ML response tokens", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x223D3CDF0](v71, -1, -1);
    MEMORY[0x223D3CDF0](v12, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = *(v0 + 288);
  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v63 = *(v0 + 184);
  v66 = *(v0 + 200);
  v23 = *(v0 + 88);
  v69 = *(v0 + 112);
  v72 = *(v0 + 80);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  (*(*(v0 + 240) + 16))(*(v0 + 248), v76 + v74, *(v0 + 232));
  sub_21D0933A0();
  (*(v20 + 16))(v18, v24 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant, v19);
  (*(v21 + 16))(v66, v25, v63);
  sub_21D0590D0(v69, v0 + 16);
  sub_21D094000();
  v26 = sub_21D093E70();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v22, 1, v26);
  v29 = *(v0 + 176);
  if (v28 == 1)
  {
    sub_21D04D27C(*(v0 + 176), &qword_27CE542F8, &qword_21D095E78);
    v77 = 0;
  }

  else
  {
    v30 = *(v0 + 176);
    v77 = sub_21D093E50();
    (*(v27 + 8))(v29, v26);
  }

  v73 = v28 == 1;
  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  v35 = *(v0 + 256);
  v36 = *(v0 + 216);
  v37 = *(v0 + 208);
  v60 = v37;
  v61 = *(v0 + 224);
  v64 = *(v0 + 200);
  v38 = *(v0 + 192);
  v62 = *(v0 + 184);
  v75 = *(v0 + 160);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v67 = *(v0 + 168);
  v70 = *(v0 + 72);
  (*(*(v0 + 240) + 32))(v33, *(v0 + 248), *(v0 + 232));
  (*(v31 + 32))(v33 + v35[5], v32, v34);
  v41 = (v33 + v35[6]);
  *v41 = v40;
  v41[1] = v39;
  (*(v36 + 32))(v33 + v35[8], v61, v60);
  (*(v38 + 32))(v33 + v35[7], v64, v62);
  sub_21D046D78((v0 + 16), v33 + v35[9]);
  v42 = v33 + v35[10];
  *v42 = v77;
  *(v42 + 4) = v73;

  sub_21D058B08(v67);
  sub_21D0941A0();
  sub_21D094150();

  v43 = sub_21D0941A0();
  v44 = sub_21D094670();

  v45 = sub_21D094680();
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  v48 = *(v0 + 144);
  if (v45)
  {
    v50 = *(v0 + 96);
    v49 = *(v0 + 104);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v79 = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_21D05550C(v50, v49, &v79);
    v53 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v43, v44, v53, "executePrivateMLRequest", "waiting for tokens requestIdentifier=%{public, signpost.description=attribute,public}s)", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223D3CDF0](v52, -1, -1);
    MEMORY[0x223D3CDF0](v51, -1, -1);
  }

  (*(v47 + 8))(v46, v48);
  v78 = (*(v0 + 128) + **(v0 + 128));
  v54 = *(*(v0 + 128) + 4);
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_21D08BA9C;
  v56 = *(v0 + 168);
  v57 = *(v0 + 136);
  v58 = *(v0 + 56);

  return v78(v58, v56);
}

uint64_t sub_21D08BA9C()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_21D091FB8;
  }

  else
  {
    v3 = sub_21D091FB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D08BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v55;
  *(v8 + 80) = v53;
  *(v8 + 96) = v54;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21D093E20();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543F8, &qword_21D0963F8) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = sub_21D093BA0();
  *(v8 + 160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v16 = sub_21D093C10();
  *(v8 + 184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v19 = sub_21D094180();
  *(v8 + 208) = v19;
  v20 = *(v19 - 8);
  *(v8 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v22 = sub_21D092FC0();
  *(v8 + 232) = v22;
  v23 = *(v22 - 8);
  *(v8 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v25 = sub_21D094230();
  *(v8 + 256) = v25;
  v26 = *(v25 - 8);
  *(v8 + 264) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v28 = sub_21D094070();
  *(v8 + 280) = v28;
  v29 = *(v28 - 8);
  *(v8 + 288) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v31 = sub_21D0934B0();
  *(v8 + 312) = v31;
  v32 = *(v31 - 8);
  *(v8 + 320) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v34 = sub_21D093AE0();
  *(v8 + 336) = v34;
  v35 = *(v34 - 8);
  *(v8 + 344) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v37 = sub_21D093A10();
  *(v8 + 360) = v37;
  v38 = *(v37 - 8);
  *(v8 + 368) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v40 = sub_21D093A50();
  *(v8 + 384) = v40;
  v41 = *(v40 - 8);
  *(v8 + 392) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54400, &qword_21D096400) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54408, &qword_21D096408) - 8) + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v45 = sub_21D093C60();
  *(v8 + 456) = v45;
  v46 = *(v45 - 8);
  *(v8 + 464) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v48 = sub_21D0939D0();
  *(v8 + 496) = v48;
  v49 = *(v48 - 8);
  *(v8 + 504) = v49;
  v50 = *(v49 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08C1F4, 0, 0);
}

uint64_t sub_21D08C1F4()
{
  v222 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[5];
  v5 = *(v0[16] + 56);
  v5(v0[54], 1, 1, v0[15]);
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v220 = v0;
  if (v6 == *MEMORY[0x277D71CF0])
  {
    v7 = v0[50];
    v8 = v0[47];
    v9 = v0[45];
    v10 = v0[46];
    v11 = v0[8];
    v12 = v0[6];
    (*(v0[49] + 96))(v7, v0[48]);
    (*(v10 + 32))(v8, v7, v9);

    v13 = sub_21D094210();
    v14 = sub_21D094580();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[7];
      v15 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v221[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D05550C(v16, v15, v221);
      _os_log_impl(&dword_21D044000, v13, v14, "%s received complete prompt request", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223D3CDF0](v18, -1, -1);
      MEMORY[0x223D3CDF0](v17, -1, -1);
    }

    v19 = v0[65];
    v20 = v0[61];
    v21 = v0[56];
    v23 = v0[46];
    v22 = v0[47];
    v24 = v0[45];
    v25 = v0[9];
    sub_21D093A00();
    sub_21D0939E0();
    sub_21D0939F0();
    v26 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_21D093BC0();
    v27 = v0;
    sub_21D0935F0();

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    if (v6 != *MEMORY[0x277D71CF8])
    {
      v81 = v0[8];
      v82 = v0[6];

      v83 = sub_21D094210();
      v84 = sub_21D094570();

      if (os_log_type_enabled(v83, v84))
      {
        v86 = v0[7];
        v85 = v0[8];
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v221[0] = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_21D05550C(v86, v85, v221);
        _os_log_impl(&dword_21D044000, v83, v84, "%s received unknown streaming request payload", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x223D3CDF0](v88, -1, -1);
        MEMORY[0x223D3CDF0](v87, -1, -1);
      }

      v89 = v0[54];
      v91 = v0[49];
      v90 = v0[50];
      v92 = v0[48];
      sub_21D090BF4();
      swift_allocError();
      *v93 = 1;
      *(v93 + 8) = 4;
      swift_willThrow();
      sub_21D04D27C(v89, &qword_27CE54400, &qword_21D096400);
      (*(v91 + 8))(v90, v92);
      v94 = v0[65];
      v95 = v0[64];
      v97 = v0[60];
      v96 = v0[61];
      v98 = v0[59];
      v100 = v0[55];
      v99 = v0[56];
      v102 = v0[53];
      v101 = v0[54];
      v103 = v0[52];
      v184 = v0[51];
      v185 = v0[50];
      v186 = v0[47];
      v188 = v0[44];
      v190 = v0[41];
      v192 = v0[38];
      v194 = v0[37];
      v196 = v0[34];
      v198 = v0[31];
      v201 = v0[28];
      v204 = v0[25];
      v207 = v0[22];
      v211 = v0[19];
      v214 = v0[18];
      v218 = v0[17];

      v104 = v0[1];

      return v104();
    }

    v43 = v0[50];
    v45 = v0[43];
    v44 = v0[44];
    v46 = v0[42];
    v47 = v0[8];
    v48 = v0[6];
    (*(v0[49] + 96))(v43, v0[48]);
    (*(v45 + 32))(v44, v43, v46);

    v49 = sub_21D094210();
    v50 = sub_21D094580();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = v0[7];
      v51 = v0[8];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v221[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_21D05550C(v52, v51, v221);
      _os_log_impl(&dword_21D044000, v49, v50, "%s received completePromptTemplate request", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223D3CDF0](v54, -1, -1);
      MEMORY[0x223D3CDF0](v53, -1, -1);
    }

    v55 = v0[57];
    v56 = v0[58];
    v57 = v0[44];
    v58 = v0[19];
    sub_21D093AD0();
    v59 = *(v56 + 48);
    if (v59(v58, 1, v55) == 1)
    {
      v60 = v0[57];
      v61 = v0[19];
      v62 = v0[59];
      sub_21D093BD0();
      if (v59(v61, 1, v60) != 1)
      {
        sub_21D04D27C(v0[19], &qword_27CE543F8, &qword_21D0963F8);
      }
    }

    else
    {
      (*(v0[58] + 32))(v0[59], v0[19], v0[57]);
    }

    v152 = v0[65];
    v153 = v0[56];
    v154 = v0[54];
    v155 = v0[52];
    v156 = v0[51];
    v157 = v0[44];
    v158 = v0[16];
    v159 = v220[15];
    (*(v220[58] + 32))(v220[61], v220[59], v220[57]);
    v27 = v220;
    sub_21D093AB0();
    sub_21D093AC0();
    sub_21D093AA0();
    sub_21D04D27C(v154, &qword_27CE54400, &qword_21D096400);
    v5(v155, 0, 1, v159);
    sub_21D05B208(v155, v154, &qword_27CE54400, &qword_21D096400);
    sub_21D05B270(v154, v156, &qword_27CE54400, &qword_21D096400);
    v160 = (*(v158 + 48))(v156, 1, v159);
    v161 = v220[51];
    v163 = v220[43];
    v162 = v220[44];
    v164 = v220[42];
    if (v160 == 1)
    {
      (*(v163 + 8))(v220[44], v220[42]);
      sub_21D04D27C(v161, &qword_27CE54400, &qword_21D096400);
    }

    else
    {
      v166 = v220[17];
      v165 = v220[18];
      v167 = v220[15];
      v168 = v220[16];
      v169 = v220[9];
      (*(v168 + 32))(v165, v161, v167);
      v170 = v169[3];
      v219 = v169[4];
      v171 = v169;
      v27 = v220;
      __swift_project_boxed_opaque_existential_1(v171, v170);
      (*(v168 + 16))(v166, v165, v167);
      sub_21D094430();
      sub_21D0935F0();

      (*(v168 + 8))(v165, v167);
      (*(v163 + 8))(v162, v164);
    }
  }

  v28 = v27[63];
  v29 = v27[64];
  v30 = v27[61];
  v31 = v27[60];
  v32 = v27[57];
  v33 = v27[58];
  v34 = v27[56];
  v193 = v34;
  v195 = v27[65];
  v189 = v27[62];
  v191 = v27[55];
  v197 = v27[53];
  v200 = v27[54];
  v216 = v27[41];
  v35 = v27;
  v36 = v27[35];
  v37 = v27[36];
  v38 = v27[33];
  v203 = v27[32];
  v206 = v27[34];
  v39 = v27[12];
  v209 = v27[11];
  v212 = v27[38];
  v40 = v27[10];
  v41 = v35[6];
  v187 = *(v37 + 16);
  v187();
  (*(v33 + 16))(v31, v30, v32);
  (*(v28 + 16))(v29, v195, v189);
  sub_21D05B270(v193, v191, &qword_27CE54408, &qword_21D096408);
  sub_21D05B270(v200, v197, &qword_27CE54400, &qword_21D096400);
  v42 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v38 + 16))(v206, v41 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v203);
  sub_21D055C20(v40, v209);
  sub_21D083B2C(v40, v209, v212, v31, v29, v191, v197, v206, v216);
  v63 = v35[37];
  v64 = v35[35];
  v65 = v35[12];
  v66 = v35[6];
  logMetric(logger:name:startInstant:)(v41 + v42, 0xD000000000000012, 0x800000021D097370);
  (v187)(v63, v65, v64);
  v67 = sub_21D094210();
  v68 = sub_21D094580();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v35[36];
  v71 = v35[37];
  v72 = v35[35];
  if (v69)
  {
    v74 = v35[30];
    v73 = v35[31];
    v75 = v35[29];
    v210 = v35[35];
    v76 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v221[0] = v217;
    *v76 = 136315138;
    v213 = v68;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v77 = sub_21D094790();
    v79 = v78;
    (*(v74 + 8))(v73, v75);
    (*(v70 + 8))(v71, v210);
    v80 = sub_21D05550C(v77, v79, v221);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_21D044000, v67, v213, "%s sending private ML request", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v217);
    MEMORY[0x223D3CDF0](v217, -1, -1);
    MEMORY[0x223D3CDF0](v76, -1, -1);
  }

  else
  {

    (*(v70 + 8))(v71, v72);
  }

  v106 = v35[28];
  v107 = v35[8];
  v108 = v35[6];
  sub_21D0941A0();
  sub_21D094150();

  v109 = sub_21D0941A0();
  v110 = sub_21D094670();

  v111 = sub_21D094680();
  v113 = v35[27];
  v112 = v35[28];
  v114 = v35[26];
  v115 = v35;
  if (v111)
  {
    v117 = v35[7];
    v116 = v35[8];
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v221[0] = v119;
    *v118 = 136446210;
    *(v118 + 4) = sub_21D05550C(v117, v116, v221);
    v120 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v109, v110, v120, "executePrivateMLRequest", "request parsed requestIdentifier=%{public, signpost.description=attribute,public}s)", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x223D3CDF0](v119, -1, -1);
    v121 = v118;
    v115 = v220;
    MEMORY[0x223D3CDF0](v121, -1, -1);
  }

  (*(v113 + 8))(v112, v114);
  v122 = v115[61];
  v123 = sub_21D093BE0();
  v125 = v124;
  v115[66] = v124;
  v126 = sub_21D093BB0();
  v127 = *(v126 + 16);
  if (v127)
  {
    v199 = v125;
    v202 = v123;
    v128 = v115[24];
    v129 = v115[21];
    v221[0] = MEMORY[0x277D84F90];
    sub_21D08FADC(0, v127, 0);
    v130 = v221[0];
    v131 = *(v128 + 16);
    v128 += 16;
    v132 = v126 + ((*(v128 + 64) + 32) & ~*(v128 + 64));
    v205 = *(v128 + 56);
    v215 = v131;
    v208 = (v128 - 8);
    while (1)
    {
      v133 = v220[25];
      v134 = v220[22];
      v135 = v220[23];
      v136 = v220[20];
      v215(v133, v132, v135);
      sub_21D093BF0();
      v137 = sub_21D093B80();
      v139 = v138;
      (*(v129 + 8))(v134, v136);
      v140 = sub_21D093C00();
      v141 = (*v208)(v133, v135);
      if ((v140 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v140))
      {
        goto LABEL_39;
      }

      v221[0] = v130;
      v150 = *(v130 + 16);
      v149 = *(v130 + 24);
      if (v150 >= v149 >> 1)
      {
        sub_21D08FADC((v149 > 1), v150 + 1, 1);
        v130 = v221[0];
      }

      *(v130 + 16) = v150 + 1;
      v151 = v130 + 24 * v150;
      *(v151 + 32) = v137;
      *(v151 + 40) = v139;
      *(v151 + 48) = v140;
      v132 += v205;
      if (!--v127)
      {

        v115 = v220;
        v125 = v199;
        v123 = v202;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
LABEL_35:
    v115[67] = v130;
    v172 = v130;
    v173 = v115[41];
    v174 = v115[12];
    v176 = v115[6];
    v175 = v115[7];
    v177 = v115[4];
    v178 = swift_task_alloc();
    v115[68] = v178;
    v179 = *(v115 + 4);
    v180 = *(v115 + 13);
    *(v178 + 16) = v176;
    *(v178 + 24) = v174;
    *(v178 + 32) = v173;
    *(v178 + 40) = v175;
    *(v178 + 48) = v179;
    *(v178 + 64) = v177;
    *(v178 + 72) = v180;
    v181 = *(MEMORY[0x277D41580] + 4);
    v182 = swift_task_alloc();
    v115[69] = v182;
    *v182 = v115;
    v182[1] = sub_21D08D274;
    v142 = v115[41];
    v141 = v115[2];
    v183 = v115[3];
    v146 = &unk_21D096580;
    v148 = MEMORY[0x277D84F78] + 8;
    v143 = v123;
    v144 = v125;
    v145 = v172;
    v147 = v178;
  }

  return MEMORY[0x2821A23A0](v141, v142, v143, v144, v145, v146, v147, v148);
}

uint64_t sub_21D08D274()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v5 = *(*v1 + 528);
  v8 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v6 = sub_21D08D620;
  }

  else
  {
    v6 = sub_21D08D3E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21D08D3E4()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v13 = v0[64];
  v14 = v0[60];
  v15 = v0[59];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v12 = v0[62];
  v16 = v0[55];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[47];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  v22 = v0[44];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[28];
  v28 = v0[25];
  v29 = v0[22];
  v30 = v0[19];
  v31 = v0[18];
  v32 = v0[17];
  sub_21D04D27C(v0[54], &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v6, &qword_27CE54408, &qword_21D096408);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D08D620()
{
  v37 = v0[65];
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[56];
  v7 = v0[40];
  v8 = v0[41];
  v9 = v0[39];
  sub_21D04D27C(v0[54], &qword_27CE54400, &qword_21D096400);
  sub_21D04D27C(v6, &qword_27CE54408, &qword_21D096408);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v37, v1);
  (*(v7 + 8))(v8, v9);
  v38 = v0[70];
  v10 = v0[65];
  v11 = v0[64];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[59];
  v16 = v0[55];
  v15 = v0[56];
  v18 = v0[53];
  v17 = v0[54];
  v19 = v0[52];
  v22 = v0[51];
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[38];
  v28 = v0[37];
  v29 = v0[34];
  v30 = v0[31];
  v31 = v0[28];
  v32 = v0[25];
  v33 = v0[22];
  v34 = v0[19];
  v35 = v0[18];
  v36 = v0[17];

  v20 = v0[1];

  return v20();
}

uint64_t sub_21D08D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v34;
  *(v8 + 120) = v33;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_21D094180();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v12 = *(*(_s18InstrumentedTokensV13AsyncIteratorVMa(0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = sub_21D093470();
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v17 = sub_21D094730();
  *(v8 + 208) = v17;
  v18 = *(v17 - 8);
  *(v8 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v20 = sub_21D094230();
  *(v8 + 232) = v20;
  v21 = *(v20 - 8);
  *(v8 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v23 = _s18InstrumentedTokensVMa(0);
  *(v8 + 256) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v25 = sub_21D092FC0();
  *(v8 + 272) = v25;
  v26 = *(v25 - 8);
  *(v8 + 280) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v28 = sub_21D094070();
  *(v8 + 304) = v28;
  v29 = *(v28 - 8);
  *(v8 + 312) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D08DBB8, 0, 0);
}

uint64_t sub_21D08DBB8()
{
  v80 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(*(v0 + 312) + 16))(*(v0 + 320), *(v0 + 80), *(v0 + 304));
  v74 = v2;
  v76 = v1;
  v3 = sub_21D094210();
  v4 = sub_21D094580();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 304);
  if (v5)
  {
    v9 = *(v0 + 296);
    v65 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79 = v71;
    *v12 = 136315138;
    v68 = v4;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v13 = sub_21D094790();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v65);
    v16 = sub_21D05550C(v13, v15, &v79);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21D044000, v3, v68, "%s waiting for private ML response tokens", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x223D3CDF0](v71, -1, -1);
    MEMORY[0x223D3CDF0](v12, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = *(v0 + 288);
  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v63 = *(v0 + 184);
  v66 = *(v0 + 200);
  v23 = *(v0 + 88);
  v69 = *(v0 + 112);
  v72 = *(v0 + 80);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  (*(*(v0 + 240) + 16))(*(v0 + 248), v76 + v74, *(v0 + 232));
  sub_21D0933A0();
  (*(v20 + 16))(v18, v24 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant, v19);
  (*(v21 + 16))(v66, v25, v63);
  sub_21D0590D0(v69, v0 + 16);
  sub_21D094000();
  v26 = sub_21D093E70();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v22, 1, v26);
  v29 = *(v0 + 176);
  if (v28 == 1)
  {
    sub_21D04D27C(*(v0 + 176), &qword_27CE542F8, &qword_21D095E78);
    v77 = 0;
  }

  else
  {
    v30 = *(v0 + 176);
    v77 = sub_21D093E50();
    (*(v27 + 8))(v29, v26);
  }

  v73 = v28 == 1;
  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  v35 = *(v0 + 256);
  v36 = *(v0 + 216);
  v37 = *(v0 + 208);
  v60 = v37;
  v61 = *(v0 + 224);
  v64 = *(v0 + 200);
  v38 = *(v0 + 192);
  v62 = *(v0 + 184);
  v75 = *(v0 + 160);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v67 = *(v0 + 168);
  v70 = *(v0 + 72);
  (*(*(v0 + 240) + 32))(v33, *(v0 + 248), *(v0 + 232));
  (*(v31 + 32))(v33 + v35[5], v32, v34);
  v41 = (v33 + v35[6]);
  *v41 = v40;
  v41[1] = v39;
  (*(v36 + 32))(v33 + v35[8], v61, v60);
  (*(v38 + 32))(v33 + v35[7], v64, v62);
  sub_21D046D78((v0 + 16), v33 + v35[9]);
  v42 = v33 + v35[10];
  *v42 = v77;
  *(v42 + 4) = v73;

  sub_21D058B08(v67);
  sub_21D0941A0();
  sub_21D094150();

  v43 = sub_21D0941A0();
  v44 = sub_21D094670();

  v45 = sub_21D094680();
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  v48 = *(v0 + 144);
  if (v45)
  {
    v50 = *(v0 + 96);
    v49 = *(v0 + 104);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v79 = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_21D05550C(v50, v49, &v79);
    v53 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v43, v44, v53, "executePrivateMLRequest", "waiting for tokens requestIdentifier=%{public, signpost.description=attribute,public}s)", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223D3CDF0](v52, -1, -1);
    MEMORY[0x223D3CDF0](v51, -1, -1);
  }

  (*(v47 + 8))(v46, v48);
  v78 = (*(v0 + 128) + **(v0 + 128));
  v54 = *(*(v0 + 128) + 4);
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_21D08E1DC;
  v56 = *(v0 + 168);
  v57 = *(v0 + 136);
  v58 = *(v0 + 56);

  return v78(v58, v56);
}

uint64_t sub_21D08E1DC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_21D08E42C;
  }

  else
  {
    v3 = sub_21D08E2F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D08E2F0()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[21];
  v11 = v0[20];
  sub_21D08E568(v0[15], v8, v0[9], v0[12], v0[13]);
  sub_21D091138(v8, _s18InstrumentedTokensV13AsyncIteratorVMa);
  sub_21D091138(v4, _s18InstrumentedTokensVMa);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21D08E42C()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[21];
  v12 = v0[20];
  sub_21D08E568(v0[15], v8, v0[9], v0[12], v0[13]);
  sub_21D091138(v8, _s18InstrumentedTokensV13AsyncIteratorVMa);
  sub_21D091138(v4, _s18InstrumentedTokensVMa);

  v9 = v0[1];
  v10 = v0[42];

  return v9();
}

uint64_t sub_21D08E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_21D094180();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + *(_s18InstrumentedTokensV13AsyncIteratorVMa(0) + 52));
  sub_21D0942F0();
  sub_21D0941A0();
  sub_21D094150();

  v14 = sub_21D0941A0();
  v15 = sub_21D094670();

  if (sub_21D094680())
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_21D05550C(a4, a5, &v21);
    v18 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v14, v15, v18, "executePrivateMLRequest", "request complete requestIdentifier=%{public, signpost.description=attribute,public}s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223D3CDF0](v17, -1, -1);
    MEMORY[0x223D3CDF0](v16, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t NewInferenceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant;
  v4 = sub_21D094730();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v6 = sub_21D0941B0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NewInferenceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_initializationInstant;
  v4 = sub_21D094730();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v6 = sub_21D0941B0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21D08E954@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21D094230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D0941B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_2812217C8);
  v19 = *(v5 + 16);
  v19(v16 + v17, v18, v4);
  sub_21D094700();
  v19(v8, v16 + v17, v4);
  sub_21D094190();
  result = (*(v10 + 32))(v16 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v13, v9);
  *a1 = v16;
  return result;
}

uint64_t sub_21D08EB60(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0522A0;

  return NewInferenceProvider.loadIn(inferenceAssetIdentifier:)(a1, a2);
}

uint64_t sub_21D08EC08(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0522A0;

  return NewInferenceProvider.loadOut(inferenceAssetIdentifier:)(a1, a2);
}

void sub_21D08ECB0()
{
  v1 = *(MEMORY[0x277D29E80] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_21D0522A0;

  JUMPOUT(0x223D3C040);
}

uint64_t sub_21D08EDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D08EE70;

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(a1, a2, a3);
}

uint64_t sub_21D08EE70(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_21D08EF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0522A0;

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(a1, a2, a3);
}

void sub_21D08F034()
{
  v1 = *(MEMORY[0x277D29E70] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_21D051DB8;

  JUMPOUT(0x223D3C010);
}

uint64_t sub_21D08F0E4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D051DB8;

  return NewInferenceProvider.prewarmHint(_:)(a1);
}

uint64_t sub_21D08F17C()
{

  v0 = sub_21D094470();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_21D094470();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_21D0947D0();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_21D094470();
      v3 = v5;
    }

    while (v5);
  }

  sub_21D094470();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

double sub_21D08F2D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21D055BA8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D0573E8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    *a3 = *(*(v12 + 56) + 16 * v9);
    sub_21D08F590(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_21D095DD0;
  }

  return result;
}

uint64_t sub_21D08F388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_21D055BA8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D05756C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_21D08F740(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_21D08F420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21D055BA8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D057844();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_21D0931D0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_21D08F8F0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_21D0931D0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_21D08F590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21D094850();

      sub_21D094450();
      v13 = sub_21D094870();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21D08F740(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21D094850();

      sub_21D094450();
      v13 = sub_21D094870();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21D08F8F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D0946C0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21D094850();

      sub_21D094450();
      v13 = sub_21D094870();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_21D0931D0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_21D08FADC(void *a1, int64_t a2, char a3)
{
  result = sub_21D08FB1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21D08FAFC(char *a1, int64_t a2, char a3)
{
  result = sub_21D08FC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D08FB1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54410, &qword_21D096420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54418, &qword_21D096428);
    swift_arrayInitWithCopy();
  }

  return v10;
}