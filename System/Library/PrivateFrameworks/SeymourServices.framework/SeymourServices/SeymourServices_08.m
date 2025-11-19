uint64_t sub_226F6CAAC()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_226E93170(v1, v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_226E97D1C(*(v0 + 592), &unk_27D7BB920, &unk_227672480);
    v5 = *(v0 + 904);
    if (v5 && *(v5 + 16))
    {
      v6 = *(v0 + 944);
      v7 = *(v0 + 936);
      v8 = *(v0 + 904);

      v9 = sub_226E92000(v7, v6);
      v10 = *(v0 + 488);
      if (v11)
      {
        v12 = v9;
        v13 = *(*(v0 + 904) + 56);
        v14 = sub_22766A4C0();
        v15 = *(v14 - 8);
        (*(v15 + 16))(v10, v13 + *(v15 + 72) * v12, v14);

        (*(v15 + 56))(v10, 0, 1, v14);
LABEL_10:
        v39 = *(v0 + 480);
        v38 = *(v0 + 488);
        v40 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
        sub_226E93170(v38, v39, &qword_27D7B8E38, &qword_22767C730);
        sub_22766A4C0();
        v41 = *(v14 - 8);
        v42 = (*(v41 + 48))(v39, 1, v14);
        v43 = *(v0 + 480);
        if (v42 == 1)
        {
          sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
          v44 = 0;
        }

        else
        {
          sub_22766A4A0();
          v44 = v45;
          (*(v41 + 8))(v43, v14);
        }

        v76 = *(v0 + 728);
        v46 = *(v0 + 720);
        v87 = v46;
        v82 = *(v0 + 688);
        v47 = *(v0 + 680);
        v48 = *(v0 + 672);
        v85 = v48;
        v73 = *(v0 + 656);
        v49 = *(v0 + 648);
        v50 = *(v0 + 616);
        v51 = *(v0 + 608);
        v86 = v51;
        v52 = *(v0 + 584);
        v79 = *(v0 + 576);
        v80 = *(v0 + 624);
        v74 = *(v0 + 600);
        v75 = *(v0 + 488);
        v53 = *(v0 + 472);
        v83 = v53;
        v84 = v52;
        v81 = *(v0 + 464);
        v77 = *(v0 + 568);
        v78 = *(v0 + 456);
        v92 = v40[16];
        v90 = v40[17];
        __swift_project_boxed_opaque_existential_0(v40 + 13, v92);
        sub_226F739B8(v40, v0 + 16);
        v54 = *(v50 + 16);
        *(v0 + 1024) = v54;
        *(v0 + 1032) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v54(v49, v73, v51);
        sub_226E93170(v74, v52, &unk_27D7BB920, &unk_227672480);
        v55 = *(v47 + 16);
        *(v0 + 1040) = v55;
        *(v0 + 1048) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v55(v46, v76, v48);
        sub_226E93170(v75, v53, &qword_27D7B8E38, &qword_22767C730);
        v56 = (*(v50 + 80) + 240) & ~*(v50 + 80);
        v57 = (v80 + *(v77 + 80) + v56) & ~*(v77 + 80);
        v58 = (v79 + *(v47 + 80) + v57) & ~*(v47 + 80);
        v59 = (v82 + *(v78 + 80) + v58) & ~*(v78 + 80);
        v60 = (v81 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        *(v0 + 1056) = v61;
        v62 = *(v0 + 192);
        *(v61 + 11) = *(v0 + 176);
        *(v61 + 12) = v62;
        v63 = *(v0 + 224);
        *(v61 + 13) = *(v0 + 208);
        *(v61 + 14) = v63;
        v64 = *(v0 + 128);
        *(v61 + 7) = *(v0 + 112);
        *(v61 + 8) = v64;
        v65 = *(v0 + 160);
        *(v61 + 9) = *(v0 + 144);
        *(v61 + 10) = v65;
        v66 = *(v0 + 64);
        *(v61 + 3) = *(v0 + 48);
        *(v61 + 4) = v66;
        v67 = *(v0 + 96);
        *(v61 + 5) = *(v0 + 80);
        *(v61 + 6) = v67;
        v68 = *(v0 + 32);
        *(v61 + 1) = *(v0 + 16);
        *(v61 + 2) = v68;
        (*(v50 + 32))(&v61[v56], v49, v86);
        sub_226E95D18(v84, &v61[v57], &unk_27D7BB920, &unk_227672480);
        v69 = *(v47 + 32);
        *(v0 + 1064) = v69;
        *(v0 + 1072) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v69(&v61[v58], v87, v85);
        sub_226E95D18(v83, &v61[v59], &qword_27D7B8E38, &qword_22767C730);
        *&v61[v60] = 0;
        *&v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;
        v89 = (*(v90 + 24) + **(v90 + 24));
        v70 = *(*(v90 + 24) + 4);
        v71 = swift_task_alloc();
        *(v0 + 1080) = v71;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
        *v71 = v0;
        v71[1] = sub_226F6E734;
        v31 = sub_226F73A14;
        v32 = v0 + 240;
        v33 = v61;
        v34 = v92;
        v35 = v90;
        v36 = v89;
        goto LABEL_14;
      }

      v37 = *(v0 + 904);
    }

    else
    {
      v10 = *(v0 + 488);
    }

    v14 = sub_22766A4C0();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    goto LABEL_10;
  }

  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  v21 = *(v0 + 400);
  v22 = *(v19 + 32);
  v22(v16, *(v0 + 592), v20);
  v23 = v21[31];
  v91 = v21[30];
  __swift_project_boxed_opaque_existential_0(v21 + 27, v91);
  v24 = *(v19 + 16);
  v19 += 16;
  *(v0 + 992) = v24;
  *(v0 + 1000) = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v17, v16, v20);
  v25 = (*(v19 + 64) + 24) & ~*(v19 + 64);
  v26 = swift_allocObject();
  *(v0 + 1008) = v26;
  *(v26 + 16) = v21;
  v22(v26 + v25, v17, v20);
  v27 = *(v23 + 24);

  v88 = v27 + *v27;
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 1016) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA10, &qword_2276724A0);
  *v29 = v0;
  v29[1] = sub_226F6D2F8;
  v31 = sub_226F73C08;
  v32 = v0 + 376;
  v33 = v26;
  v34 = v91;
  v35 = v23;
  v36 = v88;
LABEL_14:

  return v36(v32, v31, v33, v30, v34, v35);
}

uint64_t sub_226F6D2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v4 = *v1;

  v5 = *(v2 + 1008);
  if (v0)
  {

    v6 = sub_226F6DEB8;
  }

  else
  {

    v6 = sub_226F6D440;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226F6D440()
{
  v128 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 784);
  v5 = *(v0 + 560);
  v6 = *(v0 + 544);
  v7 = *(v0 + 520);
  sub_22766A610();
  v3(v6, v5, v7);

  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  if (os_log_type_enabled(v8, v9))
  {
    v121 = *(v0 + 816);
    v124 = *(v0 + 824);
    v119 = *(v0 + 784);
    log = v8;
    v116 = *(v0 + 736);
    v10 = *(v0 + 544);
    v11 = *(v0 + 528);
    v105 = *(v0 + 520);
    v12 = *(v0 + 504);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v15 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v127[0] = v111;
    *v15 = 136315394;
    v108 = v9;
    sub_2276637C0();
    sub_226F73C88(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v16 = sub_22766D140();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    v19 = *(v11 + 8);
    (v19)(v10, v105);
    v20 = sub_226E97AE8(v16, v18, v127);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v0 + 384) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E50, &qword_2276724A8);
    v21 = sub_22766CB80();
    v23 = sub_226E97AE8(v21, v22, v127);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_226E8E000, log, v108, "[Historical Evaluation] Completed sessions for workout plan %s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v111, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v121(v119, v116);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = *(v0 + 824);
    v35 = *(v0 + 816);
    v36 = *(v0 + 784);
    v37 = *(v0 + 736);
    v38 = *(v0 + 544);
    v39 = *(v0 + 528);
    v40 = *(v0 + 520);

    v41 = v38;
    v19 = *(v39 + 8);
    (v19)(v41, v40);
    v35(v36, v37);
    if (v1)
    {
LABEL_3:
      v24 = *(v1 + 16);
      if (v24)
      {
        v25 = *(v0 + 648);
        v26 = *(v0 + 616);
        v27 = *(v0 + 608);
        v28 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v122 = *(v26 + 16);
        v122(v25, v28, v27);

        sub_2276644D0();
        v120 = *(v26 + 8);
        result = v120(v25, v27);
        if (v24 > *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v101 = *(v0 + 720);
        v103 = *(v0 + 728);
        loga = v19;
        v30 = *(v0 + 680);
        v117 = *(v0 + 672);
        v31 = *(v0 + 648);
        v32 = *(v0 + 608);
        v33 = *(v0 + 520);
        v109 = v33;
        v112 = *(v0 + 560);
        v106 = *(v0 + 528) + 8;
        v122(v31, v28 + *(*(v0 + 616) + 72) * (v24 - 1), v32);

        sub_2276644D0();
        v120(v31, v32);
        sub_2276679A0();

        (loga)(v112, v109);
        (*(v30 + 8))(v103, v117);
        (*(v30 + 32))(v103, v101, v117);
      }

      else
      {
        v44 = *(v0 + 528) + 8;
        (v19)(*(v0 + 560), *(v0 + 520));
      }

      v125 = *(v1 + 16);

      v43 = *(v0 + 904);
      if (!v43)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v42 = *(v0 + 528) + 8;
  (v19)(*(v0 + 560), *(v0 + 520));
  v125 = 0;
  v43 = *(v0 + 904);
  if (!v43)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (!*(v43 + 16))
  {
LABEL_14:
    v48 = *(v0 + 488);
LABEL_16:
    v52 = sub_22766A4C0();
    (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
    goto LABEL_17;
  }

  v45 = *(v0 + 944);
  v46 = *(v0 + 936);

  v47 = sub_226E92000(v46, v45);
  v48 = *(v0 + 488);
  if ((v49 & 1) == 0)
  {
    v54 = *(v0 + 904);

    goto LABEL_16;
  }

  v50 = v47;
  v51 = *(*(v0 + 904) + 56);
  v52 = sub_22766A4C0();
  v53 = *(v52 - 8);
  (*(v53 + 16))(v48, v51 + *(v53 + 72) * v50, v52);

  (*(v53 + 56))(v48, 0, 1, v52);
LABEL_17:
  v56 = *(v0 + 480);
  v55 = *(v0 + 488);
  v57 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
  sub_226E93170(v55, v56, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v58 = *(v52 - 8);
  v59 = (*(v58 + 48))(v56, 1, v52);
  v60 = *(v0 + 480);
  if (v59 == 1)
  {
    sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
    v61 = 0;
  }

  else
  {
    sub_22766A4A0();
    v61 = v62;
    (*(v58 + 8))(v60, v52);
  }

  v94 = *(v0 + 728);
  v63 = *(v0 + 720);
  v100 = *(v0 + 688);
  v64 = *(v0 + 680);
  v65 = *(v0 + 672);
  v66 = *(v0 + 648);
  v113 = v63;
  v67 = *(v0 + 616);
  v68 = *(v0 + 608);
  v107 = v65;
  v110 = v68;
  v91 = *(v0 + 656);
  v92 = *(v0 + 600);
  v69 = *(v0 + 584);
  v97 = *(v0 + 576);
  v98 = *(v0 + 624);
  v93 = *(v0 + 488);
  v70 = *(v0 + 472);
  v102 = v70;
  v104 = v69;
  v99 = *(v0 + 464);
  v95 = *(v0 + 568);
  v96 = *(v0 + 456);
  v123 = v57[16];
  v118 = v57[17];
  __swift_project_boxed_opaque_existential_0(v57 + 13, v123);
  sub_226F739B8(v57, v0 + 16);
  v71 = *(v67 + 16);
  *(v0 + 1024) = v71;
  *(v0 + 1032) = (v67 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v66, v91, v68);
  sub_226E93170(v92, v69, &unk_27D7BB920, &unk_227672480);
  v72 = *(v64 + 16);
  *(v0 + 1040) = v72;
  *(v0 + 1048) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72(v63, v94, v65);
  sub_226E93170(v93, v70, &qword_27D7B8E38, &qword_22767C730);
  v73 = (*(v67 + 80) + 240) & ~*(v67 + 80);
  v74 = (v98 + *(v95 + 80) + v73) & ~*(v95 + 80);
  v75 = (v97 + *(v64 + 80) + v74) & ~*(v64 + 80);
  v76 = (v100 + *(v96 + 80) + v75) & ~*(v96 + 80);
  v77 = (v99 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v0 + 1056) = v78;
  v79 = *(v0 + 192);
  *(v78 + 11) = *(v0 + 176);
  *(v78 + 12) = v79;
  v80 = *(v0 + 224);
  *(v78 + 13) = *(v0 + 208);
  *(v78 + 14) = v80;
  v81 = *(v0 + 128);
  *(v78 + 7) = *(v0 + 112);
  *(v78 + 8) = v81;
  v82 = *(v0 + 160);
  *(v78 + 9) = *(v0 + 144);
  *(v78 + 10) = v82;
  v83 = *(v0 + 64);
  *(v78 + 3) = *(v0 + 48);
  *(v78 + 4) = v83;
  v84 = *(v0 + 96);
  *(v78 + 5) = *(v0 + 80);
  *(v78 + 6) = v84;
  v85 = *(v0 + 32);
  *(v78 + 1) = *(v0 + 16);
  *(v78 + 2) = v85;
  (*(v67 + 32))(&v78[v73], v66, v110);
  sub_226E95D18(v104, &v78[v74], &unk_27D7BB920, &unk_227672480);
  v86 = *(v64 + 32);
  *(v0 + 1064) = v86;
  *(v0 + 1072) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v86(&v78[v75], v113, v107);
  sub_226E95D18(v102, &v78[v76], &qword_27D7B8E38, &qword_22767C730);
  *&v78[v77] = v125;
  *&v78[(v77 + 15) & 0xFFFFFFFFFFFFFFF8] = v61;
  v87 = *(v118 + 24);
  v126 = (v87 + *v87);
  v88 = v87[1];
  v89 = swift_task_alloc();
  *(v0 + 1080) = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v89 = v0;
  v89[1] = sub_226F6E734;

  return (v126)(v0 + 240, sub_226F73A14, v78, v90, v123, v118);
}

uint64_t sub_226F6DEB8()
{
  v105 = v0;
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 784);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  v6 = *(v0 + 520);
  sub_22766A610();
  v2(v5, v4, v6);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v101 = *(v0 + 816);
    v102 = *(v0 + 824);
    v99 = *(v0 + 784);
    v97 = *(v0 + 736);
    v9 = *(v0 + 544);
    v10 = *(v0 + 528);
    v91 = *(v0 + 520);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v104 = v95;
    *v14 = 136315394;
    v93 = v8;
    sub_2276637C0();
    sub_226F73C88(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v15 = sub_22766D140();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = *(v10 + 8);
    v18(v9, v91);
    v19 = sub_226E97AE8(v15, v17, &v104);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v0 + 384) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E50, &qword_2276724A8);
    v20 = sub_22766CB80();
    v22 = sub_226E97AE8(v20, v21, &v104);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v7, v93, "[Historical Evaluation] Completed sessions for workout plan %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v95, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v101(v99, v97);
  }

  else
  {
    v23 = *(v0 + 824);
    v24 = *(v0 + 816);
    v25 = *(v0 + 784);
    v26 = *(v0 + 736);
    v27 = *(v0 + 544);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);

    v18 = *(v28 + 8);
    v18(v27, v29);
    v24(v25, v26);
  }

  v30 = *(v0 + 528) + 8;
  v18(*(v0 + 560), *(v0 + 520));
  v31 = *(v0 + 904);
  if (v31 && *(v31 + 16))
  {
    v32 = *(v0 + 944);
    v33 = *(v0 + 936);
    v34 = *(v0 + 904);

    v35 = sub_226E92000(v33, v32);
    v36 = *(v0 + 488);
    if (v37)
    {
      v38 = v35;
      v39 = *(*(v0 + 904) + 56);
      v40 = sub_22766A4C0();
      v41 = *(v40 - 8);
      (*(v41 + 16))(v36, v39 + *(v41 + 72) * v38, v40);

      (*(v41 + 56))(v36, 0, 1, v40);
      goto LABEL_11;
    }

    v42 = *(v0 + 904);
  }

  else
  {
    v36 = *(v0 + 488);
  }

  v40 = sub_22766A4C0();
  (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
LABEL_11:
  v44 = *(v0 + 480);
  v43 = *(v0 + 488);
  v45 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
  sub_226E93170(v43, v44, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v46 = *(v40 - 8);
  v47 = (*(v46 + 48))(v44, 1, v40);
  v48 = *(v0 + 480);
  if (v47 == 1)
  {
    sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
    v49 = 0;
  }

  else
  {
    sub_22766A4A0();
    v49 = v50;
    (*(v46 + 8))(v48, v40);
  }

  v82 = *(v0 + 728);
  v51 = *(v0 + 720);
  v88 = *(v0 + 688);
  v52 = *(v0 + 680);
  v53 = *(v0 + 672);
  v54 = *(v0 + 648);
  v96 = v51;
  v55 = *(v0 + 616);
  v56 = *(v0 + 608);
  v92 = v53;
  v94 = v56;
  v79 = *(v0 + 656);
  v80 = *(v0 + 600);
  v57 = *(v0 + 584);
  v85 = *(v0 + 576);
  v86 = *(v0 + 624);
  v81 = *(v0 + 488);
  v58 = *(v0 + 472);
  v89 = v58;
  v90 = v57;
  v87 = *(v0 + 464);
  v83 = *(v0 + 568);
  v84 = *(v0 + 456);
  v103 = v45[16];
  v100 = v45[17];
  __swift_project_boxed_opaque_existential_0(v45 + 13, v103);
  sub_226F739B8(v45, v0 + 16);
  v59 = *(v55 + 16);
  *(v0 + 1024) = v59;
  *(v0 + 1032) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v54, v79, v56);
  sub_226E93170(v80, v57, &unk_27D7BB920, &unk_227672480);
  v60 = *(v52 + 16);
  *(v0 + 1040) = v60;
  *(v0 + 1048) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(v51, v82, v53);
  sub_226E93170(v81, v58, &qword_27D7B8E38, &qword_22767C730);
  v61 = (*(v55 + 80) + 240) & ~*(v55 + 80);
  v62 = (v86 + *(v83 + 80) + v61) & ~*(v83 + 80);
  v63 = (v85 + *(v52 + 80) + v62) & ~*(v52 + 80);
  v64 = (v88 + *(v84 + 80) + v63) & ~*(v84 + 80);
  v65 = (v87 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v0 + 1056) = v66;
  v67 = *(v0 + 192);
  *(v66 + 11) = *(v0 + 176);
  *(v66 + 12) = v67;
  v68 = *(v0 + 224);
  *(v66 + 13) = *(v0 + 208);
  *(v66 + 14) = v68;
  v69 = *(v0 + 128);
  *(v66 + 7) = *(v0 + 112);
  *(v66 + 8) = v69;
  v70 = *(v0 + 160);
  *(v66 + 9) = *(v0 + 144);
  *(v66 + 10) = v70;
  v71 = *(v0 + 64);
  *(v66 + 3) = *(v0 + 48);
  *(v66 + 4) = v71;
  v72 = *(v0 + 96);
  *(v66 + 5) = *(v0 + 80);
  *(v66 + 6) = v72;
  v73 = *(v0 + 32);
  *(v66 + 1) = *(v0 + 16);
  *(v66 + 2) = v73;
  (*(v55 + 32))(&v66[v61], v54, v94);
  sub_226E95D18(v90, &v66[v62], &unk_27D7BB920, &unk_227672480);
  v74 = *(v52 + 32);
  *(v0 + 1064) = v74;
  *(v0 + 1072) = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v74(&v66[v63], v96, v92);
  sub_226E95D18(v89, &v66[v64], &qword_27D7B8E38, &qword_22767C730);
  *&v66[v65] = 0;
  *&v66[(v65 + 15) & 0xFFFFFFFFFFFFFFF8] = v49;
  v98 = (*(v100 + 24) + **(v100 + 24));
  v75 = *(*(v100 + 24) + 4);
  v76 = swift_task_alloc();
  *(v0 + 1080) = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v76 = v0;
  v76[1] = sub_226F6E734;

  return v98(v0 + 240, sub_226F73A14, v66, v77, v103, v100);
}

uint64_t sub_226F6E734()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v7 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v4 = sub_226F6EA54;
  }

  else
  {
    v5 = *(v2 + 1056);

    v4 = sub_226F6E850;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F6E850()
{
  v1 = v0[115];
  v2 = v0[49];
  v3 = v0[50];
  __swift_project_boxed_opaque_existential_0(v0 + 30, v0[33]);
  v4 = sub_22735E6FC(v2);
  sub_2273FB564(v4, v1);
  v0[137] = v5;
  v6 = *__swift_project_boxed_opaque_existential_0((v3 + 96), *(v3 + 120));
  v7 = swift_task_alloc();
  v0[138] = v7;
  *v7 = v0;
  v7[1] = sub_226F6E938;
  v8 = v0[91];
  v9 = v0[89];
  v10 = v0[82];
  v11 = v0[61];

  return sub_226FB4D90(v9, v10, v8, v11);
}

uint64_t sub_226F6E938()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v7 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v4 = sub_226F6F984;
  }

  else
  {
    v5 = *(v2 + 944);

    v4 = sub_226F6F220;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F6EA54()
{
  v111 = v0;
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[97];
  v6 = v0[82];
  v7 = v0[80];
  v8 = v0[76];

  sub_22766A610();
  v4(v7, v6, v8);
  v9 = v1;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v99 = v0[136];
    v105 = v0[102];
    v108 = v0[103];
    v101 = v0[92];
    v103 = v0[97];
    v12 = v0[80];
    v13 = v0[77];
    v14 = v0[76];
    v15 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v110[0] = v100;
    *v15 = 136315394;
    v16 = sub_2276644D0();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_226E97AE8(v16, v18, v110);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[41];
    v22 = MEMORY[0x22AA995D0](v0[42], v0[43]);
    v24 = sub_226E97AE8(v22, v23, v110);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_226E8E000, v10, v11, "Failed to create evaluator for session identifier %s with error %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v100, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v105(v103, v101);
  }

  else
  {
    v25 = v0[103];
    v26 = v0[102];
    v27 = v0[97];
    v28 = v0[92];
    v29 = v0[80];
    v30 = v0[77];
    v31 = v0[76];

    v19 = *(v30 + 8);
    v19(v29, v31);
    v26(v27, v28);
  }

  v32 = v0[136];
  v33 = v0[82];
  v34 = v0[76];
  v35 = v0[75];
  v36 = v0[61];
  v37 = v0[77] + 8;
  swift_willThrow();
  sub_226E97D1C(v36, &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v35, &unk_27D7BB920, &unk_227672480);
  v19(v33, v34);
  v38 = v0[136];
  v39 = v0[115];
  v40 = v0[118];
  v41 = v0[94];
  sub_22766A610();

  v42 = v38;
  v43 = sub_22766B380();
  v44 = sub_22766C890();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[118];
  if (v45)
  {
    v47 = v0[117];
    v106 = v0[102];
    v109 = v0[103];
    v102 = v0[92];
    v104 = v0[94];
    v48 = swift_slowAlloc();
    v49 = v39;
    v50 = swift_slowAlloc();
    v110[0] = v50;
    *v48 = 136315394;
    v51 = sub_226E97AE8(v47, v46, v110);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    swift_getErrorValue();
    v52 = v0[38];
    v53 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v55 = sub_226E97AE8(v53, v54, v110);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_226E8E000, v43, v44, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v48, 0x16u);
    swift_arrayDestroy();
    v56 = v50;
    v39 = v49;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    v106(v104, v102);
  }

  else
  {
    v57 = v0[103];
    v58 = v0[102];
    v59 = v0[94];
    v60 = v0[92];
    v61 = v0[118];

    v58(v59, v60);
  }

  v62 = v0[116] + 1;
  if (v62 == v0[114])
  {
    v63 = v0[113];
    v64 = v0[110];

    v68 = v0[109] + 1;
    if (v68 == v0[107])
    {
      v69 = v0[105];

      v0[140] = v39;
      v70 = v0[91];
      v71 = v0[87];
      v73 = v0[55];
      v72 = v0[56];
      v74 = v0[54];
      v75 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v73 + 8))(v72, v74);
      v76 = *__swift_project_boxed_opaque_existential_0((v75 + 96), *(v75 + 120));
      v77 = swift_task_alloc();
      v0[141] = v77;
      *v77 = v0;
      v77[1] = sub_226F6FF40;
      v78 = v0[87];

      return sub_226FB5BA4(v78);
    }

    else
    {
      v0[109] = v68;
      v0[108] = v39;
      v92 = v0[105];
      if (v68 >= *(v92 + 16))
      {
        __break(1u);
      }

      else
      {
        v93 = v0[50];
        v94 = *(v92 + 8 * v68 + 32);
        v0[110] = v94;
        v95 = v93[22];
        v96 = v93[23];
        __swift_project_boxed_opaque_existential_0(v93 + 19, v95);
        v97 = *(MEMORY[0x277D4F208] + 4);

        v98 = swift_task_alloc();
        v0[111] = v98;
        v67 = *(v96 + 8);
        *v98 = v0;
        v98[1] = sub_226F6B9A4;
        v65 = v94;
        v66 = v95;
      }

      return MEMORY[0x2821AED70](v65, v66, v67);
    }
  }

  else
  {
    v0[116] = v62;
    v0[115] = v39;
    v80 = v0[50];
    v81 = v0[110] + 16 * v62;
    v82 = *(v81 + 32);
    v0[117] = v82;
    v83 = *(v81 + 40);
    v0[118] = v83;
    v84 = v80[30];
    v85 = v80[31];
    __swift_project_boxed_opaque_existential_0(v80 + 27, v84);
    v86 = swift_allocObject();
    v0[119] = v86;
    v86[2] = v80;
    v86[3] = v82;
    v86[4] = v83;
    v87 = *(v85 + 24);
    swift_bridgeObjectRetain_n();

    v107 = (v87 + *v87);
    v88 = v87[1];
    v89 = swift_task_alloc();
    v0[120] = v89;
    *v89 = v0;
    v89[1] = sub_226F6BE60;
    v90 = v0[82];
    v91 = v0[76];

    return (v107)(v90, sub_226F73938, v86, v91, v84, v85);
  }
}

uint64_t sub_226F6F220()
{
  v102 = v0;
  v94 = *(v0 + 1040);
  v98 = *(v0 + 1048);
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 768);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 672);
  v7 = *(v0 + 656);
  v8 = *(v0 + 632);
  v9 = *(v0 + 608);
  sub_22766A610();
  v2(v8, v7, v9);
  v94(v5, v4, v6);
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v78 = *(v0 + 1048);
    v79 = *(v0 + 1040);
    v92 = *(v0 + 824);
    v86 = *(v0 + 768);
    v88 = *(v0 + 816);
    v85 = *(v0 + 736);
    v99 = *(v0 + 728);
    v12 = *(v0 + 720);
    v80 = *(v0 + 680);
    v76 = *(v0 + 672);
    v77 = *(v0 + 704);
    v95 = *(v0 + 656);
    log = v10;
    v13 = *(v0 + 632);
    v14 = *(v0 + 616);
    v15 = *(v0 + 608);
    v83 = v15;
    v90 = *(v0 + 600);
    v84 = *(v0 + 488);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v101 = v17;
    *v16 = 136315394;
    v18 = sub_2276644D0();
    v20 = v19;
    v81 = *(v14 + 8);
    v81(v13, v15);
    v21 = sub_226E97AE8(v18, v20, &v101);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v79(v12, v77, v76);
    v22 = sub_22766C060();
    v24 = v23;
    v25 = *(v80 + 8);
    v25(v77, v76);
    v26 = sub_226E97AE8(v22, v24, &v101);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_226E8E000, log, v11, "[HistoricalAwardingSource] Updated cache to evaluate against adding data from session %s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v88(v86, v85);
    sub_226E97D1C(v84, &qword_27D7B8E38, &qword_22767C730);
    sub_226E97D1C(v90, &unk_27D7BB920, &unk_227672480);
    v81(v95, v83);
    v25(v99, v76);
  }

  else
  {
    v89 = *(v0 + 816);
    v91 = *(v0 + 824);
    v87 = *(v0 + 768);
    v27 = *(v0 + 736);
    v28 = *(v0 + 704);
    v29 = *(v0 + 680);
    v30 = *(v0 + 672);
    v96 = *(v0 + 656);
    v100 = *(v0 + 728);
    v31 = *(v0 + 632);
    v32 = *(v0 + 616);
    v33 = *(v0 + 608);
    v93 = *(v0 + 600);
    v34 = *(v0 + 488);

    v35 = *(v29 + 8);
    v35(v28, v30);
    v36 = *(v32 + 8);
    v36(v31, v33);
    v89(v87, v27);
    sub_226E97D1C(v34, &qword_27D7B8E38, &qword_22767C730);
    sub_226E97D1C(v93, &unk_27D7BB920, &unk_227672480);
    v36(v96, v33);
    v35(v100, v30);
  }

  v37 = *(v0 + 1072);
  (*(v0 + 1064))(*(v0 + 728), *(v0 + 712), *(v0 + 672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  v38 = *(v0 + 1096);
  v39 = *(v0 + 928) + 1;
  if (v39 == *(v0 + 912))
  {
    v40 = *(v0 + 904);
    v41 = *(v0 + 880);

    v45 = *(v0 + 872) + 1;
    if (v45 == *(v0 + 856))
    {
      v46 = *(v0 + 840);

      *(v0 + 1120) = v38;
      v47 = *(v0 + 728);
      v48 = *(v0 + 696);
      v50 = *(v0 + 440);
      v49 = *(v0 + 448);
      v51 = *(v0 + 432);
      v52 = *(v0 + 400);
      sub_227662720();
      sub_2276679C0();
      (*(v50 + 8))(v49, v51);
      v53 = *__swift_project_boxed_opaque_existential_0((v52 + 96), *(v52 + 120));
      v54 = swift_task_alloc();
      *(v0 + 1128) = v54;
      *v54 = v0;
      v54[1] = sub_226F6FF40;
      v55 = *(v0 + 696);

      return sub_226FB5BA4(v55);
    }

    else
    {
      *(v0 + 872) = v45;
      *(v0 + 864) = v38;
      v69 = *(v0 + 840);
      if (v45 >= *(v69 + 16))
      {
        __break(1u);
      }

      else
      {
        v70 = *(v0 + 400);
        v71 = *(v69 + 8 * v45 + 32);
        *(v0 + 880) = v71;
        v72 = v70[22];
        v73 = v70[23];
        __swift_project_boxed_opaque_existential_0(v70 + 19, v72);
        v74 = *(MEMORY[0x277D4F208] + 4);

        v75 = swift_task_alloc();
        *(v0 + 888) = v75;
        v44 = *(v73 + 8);
        *v75 = v0;
        v75[1] = sub_226F6B9A4;
        v42 = v71;
        v43 = v72;
      }

      return MEMORY[0x2821AED70](v42, v43, v44);
    }
  }

  else
  {
    *(v0 + 928) = v39;
    *(v0 + 920) = v38;
    v57 = *(v0 + 400);
    v58 = *(v0 + 880) + 16 * v39;
    v59 = *(v58 + 32);
    *(v0 + 936) = v59;
    v60 = *(v58 + 40);
    *(v0 + 944) = v60;
    v61 = v57[30];
    v62 = v57[31];
    __swift_project_boxed_opaque_existential_0(v57 + 27, v61);
    v63 = swift_allocObject();
    *(v0 + 952) = v63;
    v63[2] = v57;
    v63[3] = v59;
    v63[4] = v60;
    v64 = *(v62 + 24);
    swift_bridgeObjectRetain_n();

    v97 = (v64 + *v64);
    v65 = v64[1];
    v66 = swift_task_alloc();
    *(v0 + 960) = v66;
    *v66 = v0;
    v66[1] = sub_226F6BE60;
    v67 = *(v0 + 656);
    v68 = *(v0 + 608);

    return (v97)(v67, sub_226F73938, v63, v68, v61, v62);
  }
}

uint64_t sub_226F6F984()
{
  v69 = v0;
  v1 = v0[82];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  sub_226E97D1C(v0[61], &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v4, &unk_27D7BB920, &unk_227672480);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v5 = v0[139];
  v6 = v0[137];
  v7 = v0[118];
  v8 = v0[94];
  sub_22766A610();

  v9 = v5;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[118];
    v13 = v0[117];
    v65 = v0[102];
    v67 = v0[103];
    v14 = v0[94];
    v64 = v0[92];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v68 = v16;
    *v15 = 136315394;
    v17 = sub_226E97AE8(v13, v12, &v68);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v18 = v0[38];
    v19 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v21 = sub_226E97AE8(v19, v20, &v68);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v10, v11, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v65(v14, v64);
  }

  else
  {
    v22 = v0[118];
    v23 = v0[103];
    v24 = v0[102];
    v25 = v0[94];
    v26 = v0[92];

    v24(v25, v26);
  }

  v27 = v0[116] + 1;
  if (v27 == v0[114])
  {
    v28 = v0[113];
    v29 = v0[110];

    v33 = v0[109] + 1;
    if (v33 == v0[107])
    {
      v34 = v0[105];

      v0[140] = v6;
      v35 = v0[91];
      v36 = v0[87];
      v38 = v0[55];
      v37 = v0[56];
      v39 = v0[54];
      v40 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v38 + 8))(v37, v39);
      v41 = *__swift_project_boxed_opaque_existential_0((v40 + 96), *(v40 + 120));
      v42 = swift_task_alloc();
      v0[141] = v42;
      *v42 = v0;
      v42[1] = sub_226F6FF40;
      v43 = v0[87];

      return sub_226FB5BA4(v43);
    }

    else
    {
      v0[109] = v33;
      v0[108] = v6;
      v57 = v0[105];
      if (v33 >= *(v57 + 16))
      {
        __break(1u);
      }

      else
      {
        v58 = v0[50];
        v59 = *(v57 + 8 * v33 + 32);
        v0[110] = v59;
        v60 = v58[22];
        v61 = v58[23];
        __swift_project_boxed_opaque_existential_0(v58 + 19, v60);
        v62 = *(MEMORY[0x277D4F208] + 4);

        v63 = swift_task_alloc();
        v0[111] = v63;
        v32 = *(v61 + 8);
        *v63 = v0;
        v63[1] = sub_226F6B9A4;
        v30 = v59;
        v31 = v60;
      }

      return MEMORY[0x2821AED70](v30, v31, v32);
    }
  }

  else
  {
    v0[116] = v27;
    v0[115] = v6;
    v45 = v0[50];
    v46 = v0[110] + 16 * v27;
    v47 = *(v46 + 32);
    v0[117] = v47;
    v48 = *(v46 + 40);
    v0[118] = v48;
    v49 = v45[30];
    v50 = v45[31];
    __swift_project_boxed_opaque_existential_0(v45 + 27, v49);
    v51 = swift_allocObject();
    v0[119] = v51;
    v51[2] = v45;
    v51[3] = v47;
    v51[4] = v48;
    v52 = *(v50 + 24);
    swift_bridgeObjectRetain_n();

    v66 = (v52 + *v52);
    v53 = v52[1];
    v54 = swift_task_alloc();
    v0[120] = v54;
    *v54 = v0;
    v54[1] = sub_226F6BE60;
    v55 = v0[82];
    v56 = v0[76];

    return (v66)(v55, sub_226F73938, v51, v56, v49, v50);
  }
}

uint64_t sub_226F6FF40()
{
  v2 = *(*v1 + 1128);
  v5 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = sub_226F70388;
  }

  else
  {
    v3 = sub_226F70054;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F70054()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v7 + 136);
  v44 = *(v7 + 144);
  v46 = *(v0 + 728);
  swift_getObjectType();
  (*(v3 + 16))(v1, v2, v4);
  sub_22766A480();
  sub_2276699D0();
  (*(v6 + 8))(v5, v8);
  v10 = *(v3 + 8);
  v10(v2, v4);
  v10(v46, v4);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  v13 = *(v0 + 400);
  v14 = v13[36];
  __swift_project_boxed_opaque_existential_0(v13 + 32, v13[35]);
  *(v0 + 1146) = 22;
  sub_22766A120();
  v47 = *(v0 + 1120);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 728);
  v22 = *(v0 + 720);
  v23 = *(v0 + 712);
  v24 = *(v0 + 704);
  v27 = *(v0 + 696);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 640);
  v32 = *(v0 + 632);
  v33 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 584);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  v38 = *(v0 + 544);
  v39 = *(v0 + 512);
  v40 = *(v0 + 488);
  v41 = *(v0 + 480);
  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v45 = *(v0 + 424);

  v25 = *(v0 + 8);

  return v25(v47);
}

uint64_t sub_226F70388()
{
  v65 = v0;
  v1 = *(v0 + 1136);
  v2 = *(v0 + 760);
  v62 = *(*(v0 + 680) + 8);
  v62(*(v0 + 696), *(v0 + 672));
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1136);
    v58 = *(v0 + 816);
    v60 = *(v0 + 824);
    v52 = *(v0 + 760);
    v7 = *(v0 + 736);
    v54 = *(v0 + 672);
    v56 = *(v0 + 728);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 280);
    v11 = MEMORY[0x22AA995D0](*(v0 + 288), *(v0 + 296));
    v13 = sub_226E97AE8(v11, v12, &v64);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to insert AchievementEnvironmentCache after historical run with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v58(v52, v7);
    v15 = v54;
    v14 = v56;
  }

  else
  {
    v16 = *(v0 + 1136);
    v17 = *(v0 + 824);
    v18 = *(v0 + 816);
    v19 = *(v0 + 760);
    v20 = *(v0 + 736);
    v21 = *(v0 + 728);
    v22 = *(v0 + 672);

    v18(v19, v20);
    v14 = v21;
    v15 = v22;
  }

  v62(v14, v15);
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 400);
  v26 = v25[36];
  __swift_project_boxed_opaque_existential_0(v25 + 32, v25[35]);
  *(v0 + 1146) = 22;
  sub_22766A120();
  v63 = *(v0 + 1120);
  v27 = *(v0 + 792);
  v28 = *(v0 + 784);
  v29 = *(v0 + 776);
  v30 = *(v0 + 768);
  v31 = *(v0 + 760);
  v32 = *(v0 + 752);
  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 712);
  v36 = *(v0 + 704);
  v39 = *(v0 + 696);
  v40 = *(v0 + 664);
  v41 = *(v0 + 656);
  v42 = *(v0 + 648);
  v43 = *(v0 + 640);
  v44 = *(v0 + 632);
  v45 = *(v0 + 600);
  v46 = *(v0 + 592);
  v47 = *(v0 + 584);
  v48 = *(v0 + 560);
  v49 = *(v0 + 552);
  v50 = *(v0 + 544);
  v51 = *(v0 + 512);
  v53 = *(v0 + 488);
  v55 = *(v0 + 480);
  v57 = *(v0 + 472);
  v59 = *(v0 + 448);
  v61 = *(v0 + 424);

  v37 = *(v0 + 8);

  return v37(v63);
}

uint64_t sub_226F707A4()
{
  v0[113] = 0;
  v1 = v0[110];
  v2 = v1[2];
  v0[114] = v2;
  if (v2)
  {
    v3 = v0[108];
    v0[116] = 0;
    v0[115] = v3;
    v4 = v0[50];
    v5 = v1[4];
    v0[117] = v5;
    v6 = v1[5];
    v0[118] = v6;
    v7 = v4[30];
    v8 = v4[31];
    __swift_project_boxed_opaque_existential_0(v4 + 27, v7);
    v9 = swift_allocObject();
    v0[119] = v9;
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v10 = *(v8 + 24);
    swift_bridgeObjectRetain_n();

    v38 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[120] = v12;
    *v12 = v0;
    v12[1] = sub_226F6BE60;
    v13 = v0[82];
    v14 = v0[76];

    return (v38)(v13, sub_226F73938, v9, v14, v7, v8);
  }

  else
  {

    v19 = v0[109] + 1;
    if (v19 == v0[107])
    {
      v20 = v0[108];
      v21 = v0[105];

      v0[140] = v20;
      v22 = v0[91];
      v23 = v0[87];
      v25 = v0[55];
      v24 = v0[56];
      v26 = v0[54];
      v27 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v25 + 8))(v24, v26);
      v28 = *__swift_project_boxed_opaque_existential_0((v27 + 96), *(v27 + 120));
      v29 = swift_task_alloc();
      v0[141] = v29;
      *v29 = v0;
      v29[1] = sub_226F6FF40;
      v30 = v0[87];

      return sub_226FB5BA4(v30);
    }

    else
    {
      v0[109] = v19;
      v31 = v0[105];
      if (v19 >= *(v31 + 16))
      {
        __break(1u);
      }

      else
      {
        v32 = v0[50];
        v33 = *(v31 + 8 * v19 + 32);
        v0[110] = v33;
        v34 = v32[22];
        v35 = v32[23];
        __swift_project_boxed_opaque_existential_0(v32 + 19, v34);
        v36 = *(MEMORY[0x277D4F208] + 4);

        v37 = swift_task_alloc();
        v0[111] = v37;
        v18 = *(v35 + 8);
        *v37 = v0;
        v37[1] = sub_226F6B9A4;
        v16 = v33;
        v17 = v34;
      }

      return MEMORY[0x2821AED70](v16, v17, v18);
    }
  }
}

uint64_t sub_226F70B34()
{
  v66 = v0;
  v1 = v0[119];

  v2 = v0[121];
  v3 = v0[115];
  v4 = v0[118];
  v5 = v0[94];
  sub_22766A610();

  v6 = v2;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[118];
    v10 = v0[117];
    v62 = v0[102];
    v64 = v0[103];
    v11 = v0[94];
    v61 = v0[92];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v65 = v13;
    *v12 = 136315394;
    v14 = sub_226E97AE8(v10, v9, &v65);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[38];
    v16 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v18 = sub_226E97AE8(v16, v17, &v65);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Historical Evaluation] Session evaluation for %s failed with error %s, continuing evaluation", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v62(v11, v61);
  }

  else
  {
    v19 = v0[118];
    v20 = v0[103];
    v21 = v0[102];
    v22 = v0[94];
    v23 = v0[92];

    v21(v22, v23);
  }

  v24 = v0[116] + 1;
  if (v24 == v0[114])
  {
    v25 = v0[113];
    v26 = v0[110];

    v30 = v0[109] + 1;
    if (v30 == v0[107])
    {
      v31 = v0[105];

      v0[140] = v3;
      v32 = v0[91];
      v33 = v0[87];
      v35 = v0[55];
      v34 = v0[56];
      v36 = v0[54];
      v37 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v35 + 8))(v34, v36);
      v38 = *__swift_project_boxed_opaque_existential_0((v37 + 96), *(v37 + 120));
      v39 = swift_task_alloc();
      v0[141] = v39;
      *v39 = v0;
      v39[1] = sub_226F6FF40;
      v40 = v0[87];

      return sub_226FB5BA4(v40);
    }

    else
    {
      v0[109] = v30;
      v0[108] = v3;
      v54 = v0[105];
      if (v30 >= *(v54 + 16))
      {
        __break(1u);
      }

      else
      {
        v55 = v0[50];
        v56 = *(v54 + 8 * v30 + 32);
        v0[110] = v56;
        v57 = v55[22];
        v58 = v55[23];
        __swift_project_boxed_opaque_existential_0(v55 + 19, v57);
        v59 = *(MEMORY[0x277D4F208] + 4);

        v60 = swift_task_alloc();
        v0[111] = v60;
        v29 = *(v58 + 8);
        *v60 = v0;
        v60[1] = sub_226F6B9A4;
        v27 = v56;
        v28 = v57;
      }

      return MEMORY[0x2821AED70](v27, v28, v29);
    }
  }

  else
  {
    v0[116] = v24;
    v0[115] = v3;
    v42 = v0[50];
    v43 = v0[110] + 16 * v24;
    v44 = *(v43 + 32);
    v0[117] = v44;
    v45 = *(v43 + 40);
    v0[118] = v45;
    v46 = v42[30];
    v47 = v42[31];
    __swift_project_boxed_opaque_existential_0(v42 + 27, v46);
    v48 = swift_allocObject();
    v0[119] = v48;
    v48[2] = v42;
    v48[3] = v44;
    v48[4] = v45;
    v49 = *(v47 + 24);
    swift_bridgeObjectRetain_n();

    v63 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    v0[120] = v51;
    *v51 = v0;
    v51[1] = sub_226F6BE60;
    v52 = v0[82];
    v53 = v0[76];

    return (v63)(v52, sub_226F73938, v48, v53, v46, v47);
  }
}

uint64_t sub_226F71098@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
  result = sub_2274B4E8C(a3, a4, a1, v14);
  if (!v5)
  {
    v16 = sub_227664530();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      sub_226E97D1C(v14, &qword_27D7B8E60, &unk_2276724B0);
      sub_226F73CD0();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    else
    {
      return (*(v17 + 32))(a5, v14, v16);
    }
  }

  return result;
}

unint64_t sub_226F71240(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22766D370();
  sub_22766C100();
  v6 = sub_22766D3F0();

  return sub_226E92278(a1, a2, v6);
}

uint64_t sub_226F712B8(void **a1)
{
  v2 = *(sub_227664530() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117694(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_226F71360(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_226F71360(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664530();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664530() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_226F7182C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_226F7148C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_226F7148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_227664530();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227664520();
      v34 = v61;
      sub_227664520();
      v64 = sub_2276626C0();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226F7182C(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_227662750();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_227664530();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_2271171D0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_226F7242C(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2271171D0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_227117144(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_227664520();
      v36 = v160;
      sub_227664520();
      LODWORD(v150) = sub_2276626C0();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_227664520();
        v48 = v160;
        sub_227664520();
        LOBYTE(v163) = sub_2276626C0() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_226F7242C(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2271171D0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_227117144(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_227664520();
    v122 = v160;
    sub_227664520();
    LODWORD(v163) = sub_2276626C0();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_226F7242C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_227662750();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_227664530();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_227664520();
            v51 = v69;
            sub_227664520();
            v71 = sub_2276626C0();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_227664520();
        v31 = v69;
        sub_227664520();
        v71 = sub_2276626C0();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_2271171FC(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_226F72B08(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_227662010();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v45 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v18;
  v19 = type metadata accessor for DateIntervalSessionThreshold();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for PersistenceHandle;
  v50[4] = &off_283A9AF78;
  v24 = swift_allocObject();
  v50[0] = v24;
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  v25 = v11;
  v26 = *(v11 + 2);
  v43 = a1;
  v26(v23, a1, v10);
  *&v23[v20[7]] = 0x4072C00000000000;
  v27 = &v23[v20[8]];
  *v27 = 0;
  v27[8] = 1;
  *&v23[v20[9]] = 0x3FE0000000000000;
  v28 = a2;
  v29 = a3;

  v30 = sub_2274B8C4C(v23, v50);
  v45 = v25;
  sub_226F733F0(v23);
  sub_22766A610();
  v31 = v44;
  v26(v44, v43, v10);

  v32 = sub_22766B380();
  v33 = sub_22766C8B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 134218242;
    *(v34 + 4) = *(v30 + 16);

    *(v34 + 12) = 2080;
    sub_226F73C88(&qword_28139BDF8, MEMORY[0x277CC88A8]);
    v36 = sub_22766D140();
    v37 = v31;
    v39 = v38;
    v45[1](v37, v10);
    v40 = sub_226E97AE8(v36, v39, &v49);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_226E8E000, v32, v33, "Found [%ld] completed archived sessions for date interval: %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {

    v45[1](v31, v10);
  }

  (*(v47 + 8))(v46, v48);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v30;
}

uint64_t sub_226F73070(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x277D84F90];
  result = sub_226F1F7A8(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_226F1F7A8((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v28 < v27)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_226F1F7A8((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_226F733F0(uint64_t a1)
{
  v2 = type metadata accessor for DateIntervalSessionThreshold();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F7344C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F7350C, 0, 0);
}

void sub_226F7350C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_19:
    v15 = *(v4 + 2);

    if (!v15)
    {
      v16 = v0[5];
      sub_22766A610();
      v17 = sub_22766B380();
      v18 = sub_22766C890();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_226E8E000, v17, v18, "No archived sessions were found, skipping historical evaluation", v19, 2u);
        MEMORY[0x22AA9A450](v19, -1, -1);
      }

      v21 = v0[4];
      v20 = v0[5];
      v22 = v0[3];

      (*(v21 + 8))(v20, v22);
    }

    v23 = v0[5];

    v24 = v0[1];

    v24(v15 != 0);
    return;
  }

  v3 = (v1 + 32);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v9 = *v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      v4 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = *(v4 + 2);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_29;
          }

          *(v4 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_27;
    }

LABEL_4:
    ++v3;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t sub_226F73738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F71240(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226F7383C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F71240(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226F73A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227664530() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_227667A70() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2274AFEA0(a1, (v2 + 16), v2 + v6, (v2 + v9), (v2 + v12), v2 + v15, *(v2 + v16), a2, *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_226F73C08@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *(*(sub_2276638D0() - 8) + 80);
  v6 = *(v2 + 16);
  return sub_226F6A860(a1, a2);
}

uint64_t sub_226F73C88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226F73CD0()
{
  result = qword_27D7B8E68;
  if (!qword_27D7B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E68);
  }

  return result;
}

uint64_t sub_226F73D44()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_226F73E2C;

    return sub_226F73FCC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_226F73E2C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F73F68, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226F73F68()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_226F73FCC()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F7408C, 0, 0);
}

uint64_t sub_226F7408C()
{
  v1 = v0[6];
  sub_22766A6E0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Starting score submissions.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
  v11 = *(v10 + 24);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[7] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E90, &unk_22768CBE0);
  *v13 = v0;
  v13[1] = sub_226F74294;
  v15 = v0[3];

  return (v17)(v0 + 2, sub_226F75370, v15, v14, v9, v10);
}

uint64_t sub_226F74294()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226F748A8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_226F743B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F743B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[9] = v2;
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v3);
  v5 = *(v4 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_226F744EC;

  return v9(v2, v3, v4);
}

uint64_t sub_226F744EC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_226F74914;
  }

  else
  {
    v3 = sub_226F74600;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F74600()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_226F7478C;

  return v9();
}

uint64_t sub_226F7478C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226F74980;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226F16658;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F748A8()
{
  v1 = v0[3];

  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F74914()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F74980()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F749EC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[19];

  return swift_deallocClassInstance();
}

uint64_t sub_226F74A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E98, &qword_227672550);
  v5 = sub_2276640A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_227670CD0;
  (*(v6 + 16))(v9 + v8, a3, v5);
  sub_227559274(v9, v4[1], *(v4 + 16), v4[3]);
}

void sub_226F74B88(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v13 = qword_2813B2078;
  swift_beginAccess();
  v14 = sub_227542738(v10 + v13, v6, v5);
  if (v14)
  {
    if (v14 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v15 = sub_22723EF70(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v16 = v15;
  [v15 setResultType_];
  sub_226ED9864();
  v17 = sub_22766C9E0();
  v18 = sub_226EDAB24(v17);

  sub_226EDAB78(v18, v12);
}

uint64_t sub_226F74D40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_227665510();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_22766B390();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F74E6C, 0, 0);
}

uint64_t sub_226F74E6C()
{
  v44 = v0;
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  sub_22766A6E0();
  v7 = *(v5 + 16);
  v7(v2, v6, v4);
  v7(v3, v6, v4);
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[5];
  if (v10)
  {
    v39 = v9;
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v18 = 136446466;
    log = v8;
    v19 = sub_2276654F0();
    v41 = v11;
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v13, v17);
    v23 = sub_226E97AE8(v19, v21, &v43);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_226F75318();
    v24 = sub_22766D140();
    v26 = v25;
    v22(v16, v17);
    v27 = sub_226E97AE8(v24, v26, &v43);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_226E8E000, log, v39, "Requesting scores for workout: %{public}s. %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v40, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    (*(v12 + 8))(v41, v14);
  }

  else
  {

    v28 = *(v15 + 8);
    v28(v16, v17);
    v28(v13, v17);
    (*(v12 + 8))(v11, v14);
  }

  v29 = v0[4];
  v30 = v29[15];
  v31 = v29[16];
  __swift_project_boxed_opaque_existential_0(v29 + 12, v30);
  v32 = *(v31 + 16);
  v42 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[12] = v34;
  *v34 = v0;
  v34[1] = sub_226F751C8;
  v35 = v0[2];
  v36 = v0[3];

  return v42(v35, v36, v30, v31);
}

uint64_t sub_226F751C8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_226F75318()
{
  result = qword_27D7B8E80;
  if (!qword_27D7B8E80)
  {
    sub_227665510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E80);
  }

  return result;
}

char *sub_226F75370@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22709A590(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_226F7540C()
{
  sub_226F75534(319, &qword_28139D290, sub_226F754E8);
  if (v0 <= 0x3F)
  {
    sub_226F75534(319, &unk_28139D320, MEMORY[0x277D219A0]);
    if (v1 <= 0x3F)
    {
      sub_226F75534(319, &qword_28139D318, MEMORY[0x277D224A0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_226F754E8()
{
  result = qword_28139D288;
  if (!qword_28139D288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D288);
  }

  return result;
}

void sub_226F75534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ServerEndpointError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerEndpointError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226F756D4()
{
  result = qword_27D7B8EA0;
  if (!qword_27D7B8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8EA0);
  }

  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.copyWith(modalityKind:duration:filterProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *v7;
  v14 = v7[1];
  if (a3 != -1)
  {
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a6;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = *(v7 + 32);
  v16 = v7[2];
  v17 = v7[3];
  v24 = v7[1];
  v26 = *v7;
  v23 = a4;
  sub_226EB396C(v16, v17, v18);
  v15 = v26;
  a4 = v23;
  v19 = a6;
  if (!a6)
  {
LABEL_3:
    v20 = a4;
    v25 = v15;

    v15 = v25;
    a4 = v20;
    v19 = v21;
  }

LABEL_4:
  if ((a5 & 1) == 0)
  {
    v15 = a4;
  }

  *(a7 + 16) = v16;
  *(a7 + 24) = v17;
  *(a7 + 32) = v18 & 1;
  *a7 = v15;
  *(a7 + 8) = v19;
  sub_226F75830(a1, a2, a3);
}

uint64_t sub_226F75830(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_226EB396C(result, a2, a3 & 1);
  }

  return result;
}

void sub_226F7587C(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v41 = v12;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227664A30();
  v15 = v14;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = v13;
  v46[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v46, v44);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v43 = &v40;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v18);
    v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B8EB0 &unk_2276833A0))];

  sub_226EBC888(v46);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v46, 0);
  swift_endAccess();

  v34 = sub_227542780(v10 + v29, v5, v6);
  v35 = v46[5];
  if (v34)
  {
    if (v34 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v36 = sub_22723F488(0);
  if (v35)
  {
LABEL_10:

    return;
  }

  v37 = v36;
  [v36 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v38 = sub_22766C9E0();
  v39 = sub_226EDAB24(v38);

  sub_226EDAB78(v39, v41);
}

id sub_226F75D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyCompletionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226F75D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_227662750();
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v48 - v8;
  v9 = sub_227666650();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  if (v20)
  {
    v48 = a2;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = *(a1 + 48);
    v49 = v14;
    v29 = v14 + 2;
    v28 = v14[2];
    v59 = v14[9];
    v60 = v28;
    v28(v16, v27 + v59 * v22, v9);
    v50 = (v4 + 8);
    v58 = (v29 - 1);
    v56 = (v29 + 2);

    v61 = a1;
    v51 = v29;
    v52 = v16;
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_13:
    while (1)
    {
      v32 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v32 >= v24)
      {

        v46 = v48;
        (v49[4])(v48, v16, v9);
        return (v49[7])(v46, 0, 1, v9);
      }

      v23 = *(v17 + 8 * v32);
      ++v21;
      if (v23)
      {
        v21 = v32;
        while (1)
        {
LABEL_17:
          v33 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v60(v13, *(a1 + 48) + (v33 | (v21 << 6)) * v59, v9);
          v34 = *(sub_227666640() + 16);

          v35 = v34 == 0;
          v36 = *(sub_227666640() + 16);

          if ((v35 ^ (v36 != 0)))
          {
            v37 = v13;
            v38 = v53;
            sub_227666630();
            v39 = v54;
            sub_227666630();
            v57 = sub_2276626C0();
            v40 = *v50;
            v41 = v39;
            v42 = v9;
            v43 = v55;
            (*v50)(v41, v55);
            v44 = v38;
            v13 = v37;
            v45 = v43;
            v9 = v42;
            v16 = v52;
            v40(v44, v45);
            if (v57)
            {
              goto LABEL_19;
            }

LABEL_12:
            result = (*v58)(v13, v9);
            a1 = v61;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v31 = *(sub_227666640() + 16);

            if (v31)
            {
              goto LABEL_12;
            }

LABEL_19:
            (*v58)(v16, v9);
            result = (*v56)(v16, v13, v9);
            a1 = v61;
            if (!v23)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v24 = (v18 + 63) >> 6;
    while (v24 - 1 != v20)
    {
      v21 = v20 + 1;
      v26 = *(a1 + 64 + 8 * v20);
      v25 -= 64;
      ++v20;
      if (v26)
      {
        v48 = a2;
        v23 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) - v25;
        goto LABEL_9;
      }
    }

    v47 = v14[7];

    return v47(a2, 1, 1, v9);
  }

  return result;
}

uint64_t sub_226F76214()
{
  v0 = sub_227668220();
  v2 = v1;
  v3 = sub_227668230();
  v4 = sub_227668200();
  v5 = *(v4 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_226F1F808(0, v5, 0);
    v7 = v6;
    v8 = v16;
    v9 = *(v16 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v12 = *(v16 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_226F1F808((v12 > 1), v9 + 1, 1);
        v7 = v6;
      }

      *(v16 + 16) = v9 + 1;
      *(v16 + v9 + 32) = v11;
      ++v10;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];

  return MEMORY[0x2821AAA90](v0, v2, v3, v13, v14, v8);
}

void sub_226F76358()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  if (*MEMORY[0x277D86358])
  {
    v3 = *MEMORY[0x277D86298];
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], v3);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = 0xD000000000000045;
    v4[4] = 0x8000000227694A20;
    v8[0] = sub_226F78CE8;
    v8[1] = v4;
    v8[2] = 0xD000000000000045;
    v8[3] = 0x8000000227694A20;
    v8[4] = v2;
    swift_beginAccess();

    swift_unknownObjectRetain();
    v5 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_227369A70(v8, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v7;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226F76544()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  if (*MEMORY[0x277D86358])
  {
    v3 = *MEMORY[0x277D862D0];
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], *MEMORY[0x277D862D0]);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], v3);
    xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = 0xD00000000000003CLL;
    v4[4] = 0x80000002276949E0;
    v8[0] = sub_226F78CC4;
    v8[1] = v4;
    v8[2] = 0xD00000000000003CLL;
    v8[3] = 0x80000002276949E0;
    v8[4] = v2;
    swift_beginAccess();

    swift_unknownObjectRetain();
    v5 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_227369A70(v8, 1u, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v7;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226F76730()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86378])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86378], 1);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000030;
    v2[4] = 0x80000002276949A0;
    v6[0] = sub_226F78CA0;
    v6[1] = v2;
    v6[2] = 0xD000000000000030;
    v6[3] = 0x80000002276949A0;
    v6[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    v3 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v6, 2u, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v5;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_226F768D8()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86378])
    {
      xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86378], 1);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v2 = swift_allocObject();
      v2[2] = v0;
      v2[3] = 0xD000000000000037;
      v2[4] = 0x8000000227694960;
      v6[0] = sub_226F78C7C;
      v6[1] = v2;
      v6[2] = 0xD000000000000037;
      v6[3] = 0x8000000227694960;
      v6[4] = v1;
      swift_beginAccess();

      swift_unknownObjectRetain();
      v3 = *(v0 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v0 + 16);
      *(v0 + 16) = 0x8000000000000000;
      sub_227369A70(v6, 3u, isUniquelyReferenced_nonNull_native);
      *(v0 + 16) = v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76AA0()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86380])
    {
      xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B0]);
      xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v2 = swift_allocObject();
      v2[2] = v0;
      v2[3] = 0xD000000000000036;
      v2[4] = 0x8000000227694920;
      v6[0] = sub_226F78C58;
      v6[1] = v2;
      v6[2] = 0xD000000000000036;
      v6[3] = 0x8000000227694920;
      v6[4] = v1;
      swift_beginAccess();

      swift_unknownObjectRetain();
      v3 = *(v0 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v0 + 16);
      *(v0 + 16) = 0x8000000000000000;
      sub_227369A70(v6, 4u, isUniquelyReferenced_nonNull_native);
      *(v0 + 16) = v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76C68()
{
  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  if (*MEMORY[0x277D86398])
  {
    xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
    if (*MEMORY[0x277D86380])
    {
      xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
      v3 = *MEMORY[0x277D862B8];
      xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D862B8]);
      xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3);
      xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v4 = swift_allocObject();
      v4[2] = v1;
      v4[3] = 0xD00000000000003BLL;
      v4[4] = 0x80000002276948E0;
      v8[0] = sub_226F78C34;
      v8[1] = v4;
      v8[2] = 0xD00000000000003BLL;
      v8[3] = 0x80000002276948E0;
      v8[4] = v2;
      swift_beginAccess();

      swift_unknownObjectRetain();
      v5 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v1 + 16);
      *(v1 + 16) = 0x8000000000000000;
      sub_227369A70(v8, 5u, isUniquelyReferenced_nonNull_native);
      *(v1 + 16) = v7;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_226F76E2C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 0);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v1, *MEMORY[0x277D86270], *MEMORY[0x277D862B8]);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000034;
    v2[4] = 0x80000002276948A0;
    v6[0] = sub_226F78C10;
    v6[1] = v2;
    v6[2] = 0xD000000000000034;
    v6[3] = 0x80000002276948A0;
    v6[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    v3 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v6, 6u, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v5;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_226F76FD4()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86230], 1);
  if (!*MEMORY[0x277D86398])
  {
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86380], 1);
  if (!*MEMORY[0x277D86328])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86328], 1);
  if (*MEMORY[0x277D86368])
  {
    xpc_dictionary_set_BOOL(v1, *MEMORY[0x277D86368], 1);
    xpc_dictionary_set_string(v1, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    v2 = swift_allocObject();
    v2[2] = v0;
    v2[3] = 0xD000000000000030;
    v2[4] = 0x8000000227694860;
    v6[0] = sub_226F78BEC;
    v6[1] = v2;
    v6[2] = 0xD000000000000030;
    v6[3] = 0x8000000227694860;
    v6[4] = v1;
    swift_beginAccess();

    swift_unknownObjectRetain();
    v3 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    sub_227369A70(v6, 7u, isUniquelyReferenced_nonNull_native);
    *(v0 + 16) = v5;
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_226F7719C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  v16 = *(a1 + 24);
  if (*(v16 + 16) && (v17 = sub_226F3A978(a4), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 16 * v17;
    v21 = *v19;
    v20 = *(v19 + 8);

    sub_22766A730();

    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = v21;
      v25 = v24;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_226E97AE8(a2, a3, &v36);
      _os_log_impl(&dword_226E8E000, v22, v23, "calling handler for [%{public}s]", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      v27 = v25;
      v21 = v35;
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    v28 = (*(v9 + 8))(v15, v8);
    v21(v28);
  }

  else
  {
    sub_22766A730();

    v30 = sub_22766B380();
    v31 = sub_22766C890();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_226E97AE8(a2, a3, &v36);
      _os_log_impl(&dword_226E8E000, v30, v31, "No handler registered for [%{public}s]", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_226F774B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226F77540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226F77588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DuetObserver.RegistrationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuetObserver.RegistrationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226F77734()
{
  result = qword_2813A4CC8;
  if (!qword_2813A4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A4CC8);
  }

  return result;
}

unint64_t sub_226F7778C()
{
  result = qword_27D7B8EC0;
  if (!qword_27D7B8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8EC0);
  }

  return result;
}

uint64_t sub_226F77900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();

  v17 = *(v8 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  sub_227369BF4(a4, v16, a5, isUniquelyReferenced_nonNull_native);
  *(v8 + 24) = v39;
  swift_endAccess();
  sub_22766A730();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136446210;
    swift_beginAccess();
    v23 = *(v8 + 16);
    if (*(v23 + 16) && (v24 = sub_226F3A978(a5), (v25 & 1) != 0))
    {
      v26 = (*(v23 + 56) + 40 * v24);
      v27 = v26[1];
      v37 = *v26;
      v38 = v11;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];

      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v31 = v37;
      v11 = v38;
    }

    else
    {
      v29 = 0;
      v28 = 0;
      v31 = 0;
    }

    sub_226F78B9C(v31);
    v39 = v28;
    v40 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v32 = sub_22766CB80();
    v34 = v33;

    v35 = sub_226E97AE8(v32, v34, &v41);

    *(v21 + 4) = v35;
    _os_log_impl(&dword_226E8E000, v19, v20, "Storing handler for [%{public}s]", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_226F77C00()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  sub_22766A730();
  sub_22766B370();
  v13 = *(v3 + 8);
  v54 = v3 + 8;
  v55 = v2;
  v53 = v13;
  v13(v12, v2);
  if (*(v1 + 32) == 1)
  {
    swift_beginAccess();
    v45 = v1;
    v14 = *(v1 + 16);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = *MEMORY[0x277D86238];
    v49 = v59;
    v50 = v20;
    v51 = v14;

    v22 = 0;
    *&v23 = 136446210;
    v46 = v23;
    v48 = v10;
    while (v18)
    {
LABEL_11:
      v28 = (*(v51 + 56) + 40 * (__clz(__rbit64(v18)) | (v22 << 6)));
      v29 = v28[1];
      v56 = *v28;
      v30 = v28[2];
      v31 = v28[3];
      v32 = v28[4];

      v57 = v32;
      swift_unknownObjectRetain();
      sub_22766A730();

      v33 = sub_22766B380();
      v34 = sub_22766C8B0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v52 = v30;
        v36 = v35;
        v37 = swift_slowAlloc();
        v47 = v29;
        v38 = v37;
        aBlock[0] = v37;
        *v36 = v46;
        *(v36 + 4) = sub_226E97AE8(v52, v31, aBlock);
        _os_log_impl(&dword_226E8E000, v33, v34, "calling xpc_activity_register for [%{public}s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v39 = v38;
        v29 = v47;
        MEMORY[0x22AA9A450](v39, -1, -1);
        v40 = v36;
        v30 = v52;
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      v53(v10, v55);
      v18 &= v18 - 1;
      v24 = swift_allocObject();
      v24[2] = v30;
      v24[3] = v31;
      v24[4] = v56;
      v24[5] = v29;
      v24[6] = v57;
      v59[2] = sub_226F78B04;
      v59[3] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v59[0] = sub_226F78B14;
      v59[1] = &block_descriptor;
      v25 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      v26 = sub_22766C0B0();
      xpc_activity_register((v26 + 32), v50, v25);

      _Block_release(v25);
      swift_unknownObjectRelease();

      v10 = v48;
    }

    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v19)
      {

        *(v45 + 32) = 0;
        return result;
      }

      v18 = *(v15 + 8 * v27);
      ++v22;
      if (v18)
      {
        v22 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22766A730();
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "Already active", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    return (v53)(v7, v55);
  }

  return result;
}

uint64_t sub_226F78128()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  sub_22766A730();
  sub_22766B370();
  v42 = *(v3 + 8);
  v43 = v3 + 8;
  v42(v12, v2);
  if (*(v1 + 32))
  {
    v13 = v2;
    sub_22766A730();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Already inactive", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    return (v42)(v7, v13);
  }

  else
  {
    swift_beginAccess();
    v38 = v1;
    v18 = *(v1 + 16);
    v19 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v41 = v18;

    v24 = 0;
    *&v25 = 136446210;
    v39 = v25;
    v40 = v2;
    while (v22)
    {
LABEL_14:
      v28 = (*(v41 + 56) + 40 * (__clz(__rbit64(v22)) | (v24 << 6)));
      v29 = v28[2];
      v45 = v28[1];
      v46 = v29;
      v31 = v28[3];
      v30 = v28[4];

      v44 = v30;
      swift_unknownObjectRetain();
      sub_22766A730();

      v32 = sub_22766B380();
      v33 = sub_22766C8B0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47 = v35;
        *v34 = v39;
        *(v34 + 4) = sub_226E97AE8(v46, v31, &v47);
        _os_log_impl(&dword_226E8E000, v32, v33, "calling xpc_activity_unregister for [%{public}s]", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AA9A450](v35, -1, -1);
        v36 = v34;
        v2 = v40;
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      v42(v10, v2);
      v22 &= v22 - 1;
      v26 = sub_22766C0B0();
      xpc_activity_unregister((v26 + 32));
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v23)
      {

        *(v38 + 32) = 1;
        return result;
      }

      v22 = *(v19 + 8 * v27);
      ++v24;
      if (v22)
      {
        v24 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_226F78534(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v54 = a6;
  v55 = a5;
  v57 = a2;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  state = xpc_activity_get_state(a1);
  sub_22766A730();

  v22 = sub_22766B380();
  v23 = sub_22766C8B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = v18;
    v25 = v24;
    v26 = swift_slowAlloc();
    v52 = a1;
    v27 = v10;
    v28 = v26;
    v58 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_226E97AE8(v57, a3, &v58);
    *(v25 + 12) = 2050;
    *(v25 + 14) = state;
    _os_log_impl(&dword_226E8E000, v22, v23, "Scheduling [%s] xpc activity fired for state=%{public}ld", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v10 = v27;
    a1 = v52;
    MEMORY[0x22AA9A450](v29, -1, -1);
    v30 = v25;
    v18 = v51;
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  v31 = *(v10 + 8);
  v32 = v31(v20, v9);
  if (state)
  {
    a4(v32);
    v33 = v56;
    sub_22766A730();

    v34 = sub_22766B380();
    v35 = sub_22766C8B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_226E97AE8(v57, a3, &v58);
      _os_log_impl(&dword_226E8E000, v34, v35, "Scheduling [%{public}s] setting update task as done", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    v31(v33, v9);
    if (!xpc_activity_set_state(a1, 5))
    {
      v46 = v53;
      sub_22766A730();

      v47 = sub_22766B380();
      v48 = sub_22766C890();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v58 = v50;
        *v49 = 136446210;
        *(v49 + 4) = sub_226E97AE8(v57, a3, &v58);
        _os_log_impl(&dword_226E8E000, v47, v48, "Scheduling [%{public}s] failed to set xpc activity state to done", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      v31(v46, v9);
    }
  }

  else
  {
    v38 = xpc_activity_copy_criteria(a1);
    if (!v38 || (v39 = xpc_equal(v38, v54), swift_unknownObjectRelease(), !v39))
    {
      sub_22766A730();

      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v18;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v58 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_226E97AE8(v57, a3, &v58);
        _os_log_impl(&dword_226E8E000, v40, v41, "Scheduling [%{public}s] setting criteria", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);

        v45 = v42;
      }

      else
      {

        v45 = v18;
      }

      v31(v45, v9);
      xpc_activity_set_criteria(a1, v54);
    }
  }
}

uint64_t sub_226F78B14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_226F78B74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226F78B9C(uint64_t result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_226F78D10@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D60];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226F78D90@<X0>(void *a1@<X8>)
{
  v2 = sub_2276689F0();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
  sub_227663AD0();
  result = sub_226EB2DFC(v2, v4, v6);
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t sub_226F78E18(uint64_t a1)
{
  *(a1 + 24) = sub_226F78E80(&qword_2813A5560);
  result = sub_226F78E80(&qword_2813A5558);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226F78E80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227668A00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226F78EC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2276674C0();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v63 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v15 = sub_227662750();
  v66 = *(v15 - 8);
  v16 = *(v66 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v55 - v23;
  v25 = [a1 identifier];
  if (!v25)
  {
    goto LABEL_9;
  }

  v61 = a2;
  v62 = v2;
  v26 = v25;
  v60 = sub_22766C000();
  v28 = v27;

  v29 = [a1 startDate];
  if (!v29)
  {

LABEL_9:
    v47 = sub_227664DD0();
    sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51028], v47);
    swift_willThrow();

    return;
  }

  v30 = v29;
  v59 = v28;
  sub_227662710();

  (*(v66 + 32))(v24, v22, v15);
  [a1 duration];
  v31 = [a1 workoutActivityType];
  if ((v31 & 0x80000000) == 0)
  {
    v57 = v31;
    v56 = [a1 isIndoorWorkout];
    v32 = [a1 sessionReference];
    v58 = a1;
    if (v32)
    {
      v33 = v32;
      v34 = [v32 sessionIdentifier];
      if (v34)
      {
        v35 = v34;
        v55[2] = sub_22766C000();

        v36 = [v33 workoutIdentifier];
        if (v36)
        {
          v37 = v24;
          v38 = v15;
          v39 = v36;
          sub_22766C000();
          v55[1] = v40;

          sub_2276674A0();
          v41 = v64;
          v42 = v14;
          v43 = v8;
          v44 = v65;
          (*(v64 + 32))(v14, v43, v65);
          v45 = v44;
          v46 = 0;
LABEL_14:
          (*(v41 + 56))(v42, v46, 1, v45);
          sub_226E93170(v42, v63, &unk_27D7BB930, &unk_22767B3F0);
          v54 = v66;
          (*(v66 + 16))(v19, v37, v38);
          sub_227664C70();

          sub_226E97D1C(v42, &unk_27D7BB930, &unk_22767B3F0);
          (*(v54 + 8))(v37, v38);
          return;
        }
      }

      v37 = v24;
      v42 = v14;
      v38 = v15;
      v52 = sub_227664DD0();
      sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040]);
      v50 = swift_allocError();
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D51028], v52);
      swift_willThrow();
    }

    else
    {
      v37 = v24;
      v42 = v14;
      v38 = v15;
      v49 = sub_227664DD0();
      sub_226F79FDC(&qword_28139B8D0, MEMORY[0x277D51040]);
      v50 = swift_allocError();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D51028], v49);
      swift_willThrow();
    }

    v62 = 0;

    v46 = 1;
    v41 = v64;
    v45 = v65;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_226F79544(void *a1, uint64_t a2)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664C40();
  v13 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227664C80();
  [a1 setDuration_];
  sub_227664C90();
  v14 = sub_2276626A0();
  (*(v9 + 8))(v12, v8);
  [a1 setStartDate_];

  v15 = sub_227664C60();
  if (v15 >= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  [a1 setWorkoutActivityType_];
  [a1 setIsIndoorWorkout_];
  sub_227664C50();
  v17 = sub_2276674C0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_226E97D1C(v7, &unk_27D7BB930, &unk_22767B3F0);
    v19 = 0;
  }

  else
  {
    v20 = sub_226F92D7C(v22);
    if (v2)
    {
      (*(v18 + 8))(v7, v17);
      return;
    }

    v19 = v20;
    (*(v18 + 8))(v7, v17);
  }

  [a1 setSessionReference_];
}

size_t static HealthKitWorkout.representativeSamples()()
{
  v45 = sub_227662750();
  v47 = *(v45 - 8);
  v0 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v33 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EC8, &qword_227672860);
  v5 = *(v42 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = v33 - v7;
  v41 = sub_227664CA0();
  v46 = *(v41 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D274();
  v10 = sub_22766BE70();
  v11 = sub_22766C090();
  v12 = sub_22766C410();
  sub_2276674C0();
  sub_226F79FDC(&qword_27D7B8ED0, MEMORY[0x277D52DB0]);
  v13 = sub_22766CB70();
  v14 = sub_227662630();
  sub_226F5D220();
  v15 = sub_22766CFA0();
  v65 = v11;
  v66[0] = v10;
  v66[1] = v66;
  v66[2] = &v65;
  v63 = v13;
  v64 = v12;
  v66[3] = &v64;
  v66[4] = &v63;
  v61 = v15;
  v62 = v14;
  v66[5] = &v62;
  v66[6] = &v61;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EE0, &qword_227672870);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v49 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v50 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v51 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v52 = sub_226F5BF60(&qword_27D7B8EF0, &qword_27D7B8EE0, &qword_227672870);
  v53 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v54 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F828(0, v17, 0);
    v19 = 0;
    v35 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = v48;
    v34 = (v47 + 16);
    v33[1] = v46 + 32;
    v38 = v5;
    v37 = v16;
    v36 = v17;
    v21 = v40;
    while (v19 < *(v16 + 16))
    {
      v22 = v35 + *(v5 + 72) * v19;
      v47 = v20;
      v23 = v39;
      sub_226E93170(v22, v39, &qword_27D7B8EC8, &qword_227672860);
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v28 = v42[24];
      v29 = *(v23 + v42[28]);
      sub_226E93170(v23 + v42[20], v43, &unk_27D7BB930, &unk_22767B3F0);
      (*v34)(v44, v23 + v28, v45);

      sub_227664C70();
      v30 = v23;
      v20 = v47;
      sub_226E97D1C(v30, &qword_27D7B8EC8, &qword_227672860);
      v48 = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F828(v31 > 1, v32 + 1, 1);
        v20 = v48;
      }

      ++v19;
      *(v20 + 16) = v32 + 1;
      result = (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, v21, v41);
      v5 = v38;
      v16 = v37;
      if (v36 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226F79F84(uint64_t a1)
{
  result = sub_226F79FDC(&qword_2813A5768, MEMORY[0x277D50E98]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F79FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F7A024(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v49 = a3;
  v48 = a2(0);
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v37 - v7;
  v46 = sub_227666330();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v44 = v11;
    v37[1] = v3;
    v53 = MEMORY[0x277D84F90];
    sub_226F1F888(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v51 = a1 + 56;
    v52 = v53;
    result = sub_22766CC90();
    v15 = v8;
    v16 = result;
    v17 = 0;
    v42 = v5 + 8;
    v43 = v5 + 16;
    v45 = v15;
    v40 = v5;
    v41 = v15 + 32;
    v38 = a1 + 64;
    v39 = v12;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v51 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_22;
      }

      v50 = *(a1 + 36);
      v22 = v47;
      v21 = v48;
      v23 = (*(v5 + 16))(v47, *(a1 + 48) + *(v5 + 72) * v16, v48);
      v49(v23);
      v24 = a1;
      v25 = v44;
      sub_227666300();
      (*(v5 + 8))(v22, v21);
      v26 = v52;
      v53 = v52;
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1F888(v27 > 1, v28 + 1, 1);
        v26 = v53;
      }

      *(v26 + 16) = v28 + 1;
      v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v26;
      result = (*(v45 + 32))(v26 + v29 + *(v45 + 72) * v28, v25, v46);
      v18 = 1 << *(v24 + 32);
      if (v16 >= v18)
      {
        goto LABEL_23;
      }

      v30 = *(v51 + 8 * v20);
      if ((v30 & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v24;
      if (v50 != *(v24 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v16 & 0x3F));
      if (v31)
      {
        v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v39;
      }

      else
      {
        v32 = v20 << 6;
        v33 = v20 + 1;
        v19 = v39;
        v34 = (v38 + 8 * v20);
        while (v33 < (v18 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v16, v50, 0);
            v18 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v16, v50, 0);
      }

LABEL_4:
      ++v17;
      v16 = v18;
      v5 = v40;
      if (v17 == v19)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F7A400(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(BOOL, unint64_t, uint64_t), void (*a5)(uint64_t))
{
  v55 = a5;
  v54 = a2(0);
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - v11;
  v52 = a3(0);
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v52);
  v15 = &v41 - v14;
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v50 = v15;
    v42 = a4;
    v43 = v5;
    v59 = MEMORY[0x277D84F90];
    a4(0, v16, 0);
    v18 = -1 << *(a1 + 32);
    v57 = a1 + 56;
    v58 = v59;
    result = sub_22766CC90();
    v19 = result;
    v20 = 0;
    v48 = v9 + 8;
    v49 = v9 + 16;
    v51 = v12;
    v46 = v9;
    v47 = v12 + 32;
    v44 = a1 + 64;
    v45 = v16;
    v21 = v9;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      v24 = v19 >> 6;
      if ((*(v57 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_22;
      }

      v56 = *(a1 + 36);
      v26 = v53;
      v25 = v54;
      v27 = (*(v21 + 16))(v53, *(a1 + 48) + *(v21 + 72) * v19, v54);
      v28 = a1;
      v29 = v50;
      v55(v27);
      (*(v21 + 8))(v26, v25);
      v30 = v58;
      v59 = v58;
      v32 = *(v58 + 16);
      v31 = *(v58 + 24);
      if (v32 >= v31 >> 1)
      {
        v42(v31 > 1, v32 + 1, 1);
        v30 = v59;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v58 = v30;
      result = (*(v51 + 32))(v30 + v33 + *(v51 + 72) * v32, v29, v52);
      v22 = 1 << *(v28 + 32);
      if (v19 >= v22)
      {
        goto LABEL_23;
      }

      v34 = *(v57 + 8 * v24);
      if ((v34 & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v28;
      if (v56 != *(v28 + 36))
      {
        goto LABEL_25;
      }

      v35 = v34 & (-2 << (v19 & 0x3F));
      if (v35)
      {
        v22 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v23 = v45;
      }

      else
      {
        v36 = v24 << 6;
        v37 = v24 + 1;
        v23 = v45;
        v38 = (v44 + 8 * v24);
        while (v37 < (v22 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_226EB526C(v19, v56, 0);
            v22 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v19, v56, 0);
      }

LABEL_4:
      ++v20;
      v19 = v22;
      v21 = v46;
      if (v20 == v23)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F7A7DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EF90(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F7AAEC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

void *sub_226F7ADD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2274CD6BC(*(a1 + 16), 0);
  v4 = sub_2274CDE20(&v6, v3 + 4, v2, a1);
  sub_226EBB21C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_226F7AE64(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22766CD20();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_226ECC830(v3, 0);
  sub_22746B238(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226F7AF1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_2276645A0();
  v9 = v8;
  sub_226E93170(a2, v6, &qword_27D7B8F20, &qword_2276767D0);
  v10 = sub_227666B60();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8F20, &qword_2276767D0);
    v12 = 0;
  }

  else
  {
    v13 = sub_227666A90();
    v15 = v14;
    (*(v11 + 8))(v6, v10);
    if (v7 == v13 && v9 == v15)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_22766D190();
    }
  }

  return v12 & 1;
}

uint64_t sub_226F7B0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void *))
{
  v7 = a3();
  v11[0] = a4();
  v11[1] = v8;
  v10[2] = v11;
  LOBYTE(a5) = sub_226F7E160(a5, v10, v7);

  return a5 & 1;
}

uint64_t sub_226F7B170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v88 = a4;
  v6 = sub_2276624A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v80 - v11;
  v12 = sub_227664A10();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &v80 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F68, &qword_2276729E8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v87 = &v80 - v24;
  v25 = sub_227664EB0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v84 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v80 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F70, &unk_2276729F0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v85 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v80 - v36;
  v38 = a1[1];
  v99 = *a1;
  v97 = v25;
  v98 = v38;
  v39 = *(a2 + 16);
  v89 = v26;
  v90 = &v80 - v36;
  if (v39)
  {
    v92 = v19;
    v42 = *(v26 + 16);
    v40 = v26 + 16;
    v41 = v42;
    v43 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    while (1)
    {
      v41(v31, v43, v25);
      if (sub_227664E60() == v99 && v45 == v98)
      {
        break;
      }

      v46 = sub_22766D190();

      if (v46)
      {
        goto LABEL_10;
      }

      v25 = v97;
      (*(v40 - 8))(v31, v97);
      v43 += v44;
      if (!--v39)
      {
        v47 = 1;
        v26 = v89;
        v37 = v90;
        goto LABEL_11;
      }
    }

LABEL_10:
    v26 = v89;
    v37 = v90;
    v25 = v97;
    (*(v89 + 32))(v90, v31, v97);
    v47 = 0;
LABEL_11:
    v19 = v92;
  }

  else
  {
    v47 = 1;
  }

  (*(v26 + 56))(v37, v47, 1, v25);
  v48 = v95 + 56;
  v49 = 1 << *(v95 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v95 + 56);
  v52 = (v49 + 63) >> 6;
  v53 = v93;
  v54 = (v93 + 32);
  v91 = v93 + 16;
  v92 = (v93 + 8);

  v56 = 0;
  v57 = v94;
  if (v51)
  {
    while (1)
    {
      v58 = v56;
LABEL_19:
      (*(v53 + 16))(v19, *(v95 + 48) + *(v53 + 72) * (__clz(__rbit64(v51)) | (v58 << 6)), v57);
      v59 = *(v53 + 32);
      v59(v96, v19, v57);
      if (sub_2276649A0() == v99 && v60 == v98)
      {

        goto LABEL_27;
      }

      v61 = sub_22766D190();

      if (v61)
      {
        break;
      }

      v51 &= v51 - 1;
      v57 = v94;
      result = (*v92)(v96, v94);
      v56 = v58;
      v53 = v93;
      if (!v51)
      {
        goto LABEL_16;
      }
    }

    v57 = v94;
LABEL_27:
    v53 = v93;
    v63 = v87;
    v59(v87, v96, v57);
    v62 = 0;
LABEL_28:
    v64 = v97;
    v65 = v89;
    v66 = v86;
    (*(v53 + 56))(v63, v62, 1, v57);
    v67 = v90;
    v68 = v85;
    sub_226E93170(v90, v85, &qword_27D7B8F70, &unk_2276729F0);
    if ((*(v65 + 48))(v68, 1, v64) == 1)
    {
      sub_226E97D1C(v63, &qword_27D7B8F68, &qword_2276729E8);
      v69 = &qword_27D7B8F70;
      v70 = &unk_2276729F0;
      sub_226E97D1C(v67, &qword_27D7B8F70, &unk_2276729F0);
      v71 = v68;
    }

    else
    {
      v72 = v53;
      v73 = v84;
      (*(v65 + 32))(v84, v68, v64);
      sub_226E93170(v63, v66, &qword_27D7B8F68, &qword_2276729E8);
      if ((*(v72 + 48))(v66, 1, v57) != 1)
      {
        v75 = v81;
        (*v54)(v81, v66, v57);
        sub_227664EA0();
        v76 = sub_2276649F0();
        v95 = v77;
        v96 = v76;

        v93 = sub_2276649C0();
        v91 = v78;
        v89 = sub_227664E80();
        sub_227664A00();
        sub_2276649B0();
        sub_2276649D0();
        sub_2276692C0();
        (*v92)(v75, v94);
        (*(v65 + 8))(v73, v97);
        sub_226E97D1C(v87, &qword_27D7B8F68, &qword_2276729E8);
        sub_226E97D1C(v90, &qword_27D7B8F70, &unk_2276729F0);
        v74 = 0;
        goto LABEL_34;
      }

      (*(v65 + 8))(v73, v64);
      v69 = &qword_27D7B8F68;
      v70 = &qword_2276729E8;
      sub_226E97D1C(v63, &qword_27D7B8F68, &qword_2276729E8);
      sub_226E97D1C(v90, &qword_27D7B8F70, &unk_2276729F0);
      v71 = v66;
    }

    sub_226E97D1C(v71, v69, v70);
    v74 = 1;
LABEL_34:
    v79 = sub_2276692D0();
    return (*(*(v79 - 8) + 56))(v88, v74, 1, v79);
  }

LABEL_16:
  while (1)
  {
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v58 >= v52)
    {

      v62 = 1;
      v63 = v87;
      goto LABEL_28;
    }

    v51 = *(v48 + 8 * v58);
    ++v56;
    if (v51)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F7BA68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v91 = a4;
  v6 = sub_2276624A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = v82 - v11;
  v12 = sub_227666980();
  v13 = *(v12 - 8);
  v97 = v12;
  v98 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v84 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = v82 - v18;
  MEMORY[0x28223BE20](v17);
  v95 = v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA0, &qword_227672A48);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v87 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v90 = v82 - v24;
  v25 = sub_227666FF0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v88 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v82 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v89 = v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v82 - v36;
  v38 = a1[1];
  v103 = *a1;
  v101 = v25;
  v102 = v38;
  v39 = *(a2 + 16);
  v92 = v26;
  v93 = v82 - v36;
  if (v39)
  {
    v42 = *(v26 + 16);
    v40 = v26 + 16;
    v41 = v42;
    v43 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    while (1)
    {
      v41(v31, v43, v25);
      if (sub_227666F70() == v103 && v45 == v102)
      {
        break;
      }

      v46 = sub_22766D190();

      if (v46)
      {
        goto LABEL_10;
      }

      v25 = v101;
      (*(v40 - 8))(v31, v101);
      v43 += v44;
      if (!--v39)
      {
        v47 = 1;
        v26 = v92;
        v37 = v93;
        goto LABEL_11;
      }
    }

LABEL_10:
    v26 = v92;
    v37 = v93;
    v25 = v101;
    (*(v92 + 32))(v93, v31, v101);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

LABEL_11:
  (*(v26 + 56))(v37, v47, 1, v25);
  v48 = v98;
  v49 = v99 + 56;
  v50 = 1 << *(v99 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v99 + 56);
  v53 = (v50 + 63) >> 6;
  v94 = v98 + 16;
  v54 = (v98 + 32);
  v96 = (v98 + 8);

  v56 = 0;
  v57 = v97;
  if (v52)
  {
    while (1)
    {
      v58 = v56;
LABEL_18:
      v59 = v95;
      (*(v48 + 16))(v95, *(v99 + 48) + *(v48 + 72) * (__clz(__rbit64(v52)) | (v58 << 6)), v57);
      v60 = *(v48 + 32);
      v60(v100, v59, v57);
      if (sub_227666910() == v103 && v61 == v102)
      {

        goto LABEL_26;
      }

      v62 = sub_22766D190();

      if (v62)
      {
        break;
      }

      v52 &= v52 - 1;
      v57 = v97;
      result = (*v96)(v100, v97);
      v56 = v58;
      v48 = v98;
      if (!v52)
      {
        goto LABEL_15;
      }
    }

    v57 = v97;
LABEL_26:
    v48 = v98;
    v64 = v90;
    v60(v90, v100, v57);
    v63 = 0;
LABEL_27:
    v65 = v101;
    v66 = v92;
    v67 = v89;
    (*(v48 + 56))(v64, v63, 1, v57);
    v68 = v93;
    sub_226E93170(v93, v67, &qword_27D7B8FA8, &unk_227672A50);
    if ((*(v66 + 48))(v67, 1, v65) == 1)
    {
      sub_226E97D1C(v64, &qword_27D7B8FA0, &qword_227672A48);
      v69 = &qword_27D7B8FA8;
      v70 = &unk_227672A50;
      sub_226E97D1C(v68, &qword_27D7B8FA8, &unk_227672A50);
      v71 = v67;
    }

    else
    {
      v72 = v67;
      v73 = v88;
      (*(v66 + 32))(v88, v72, v65);
      v74 = v87;
      sub_226E93170(v64, v87, &qword_27D7B8FA0, &qword_227672A48);
      if ((*(v48 + 48))(v74, 1, v57) != 1)
      {
        v76 = v74;
        v77 = v84;
        (*v54)(v84, v76, v57);
        v95 = sub_227666940();
        v100 = v78;
        v99 = sub_227666950();
        v98 = sub_227666FE0();
        v97 = sub_227666F80();
        v94 = sub_227666F90();

        v92 = sub_227666FB0();
        v89 = v79;
        v83 = v80;
        v87 = sub_227666FA0();
        v82[1] = sub_227666FC0();
        sub_227666960();
        sub_227666920();
        sub_227666970();
        sub_2276645B0();
        (*v96)(v77, v57);
        (*(v66 + 8))(v73, v101);
        sub_226E97D1C(v90, &qword_27D7B8FA0, &qword_227672A48);
        sub_226E97D1C(v93, &qword_27D7B8FA8, &unk_227672A50);
        v75 = 0;
        goto LABEL_33;
      }

      (*(v66 + 8))(v73, v65);
      v69 = &qword_27D7B8FA0;
      v70 = &qword_227672A48;
      sub_226E97D1C(v64, &qword_27D7B8FA0, &qword_227672A48);
      sub_226E97D1C(v93, &qword_27D7B8FA8, &unk_227672A50);
      v71 = v74;
    }

    sub_226E97D1C(v71, v69, v70);
    v75 = 1;
LABEL_33:
    v81 = sub_2276645D0();
    return (*(*(v81 - 8) + 56))(v91, v75, 1, v81);
  }

LABEL_15:
  while (1)
  {
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v58 >= v53)
    {

      v63 = 1;
      v64 = v90;
      goto LABEL_27;
    }

    v52 = *(v49 + 8 * v58);
    ++v56;
    if (v52)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F7C3A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  v20 = sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  v21 = MEMORY[0x22AA99A00](v20);
  sub_22754466C(v17, a2);
  objc_autoreleasePoolPop(v21);
  swift_setDeallocating();

  v22 = *(v17 + 40);

  v23 = qword_2813B2078;
  v24 = sub_22766A100();
  (*(*(v24 - 8) + 8))(v17 + v23, v24);
  v25 = *(*v17 + 48);
  v26 = *(*v17 + 52);
  return swift_deallocClassInstance();
}

void sub_226F7C604(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v7 = a1[3];
  v51 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  v53 = v17;
  v54 = v12;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v59 = v18;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  swift_getKeyPath();
  v52 = a2;
  v19 = sub_227664BB0();
  v20 = sub_226F7A7DC(v19, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v58[0] = v20;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v58, v56, &unk_27D7BC990, &qword_227670A30);
  v22 = v57;
  if (v57)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v56, v57);
    v55 = &v50;
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = a3;
    v28 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v28);
    v29 = sub_22766D170();
    v30 = v28;
    a3 = v27;
    (*(v24 + 8))(v30, v22);
    v5 = v3;
    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  else
  {
    v29 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v58, &unk_27D7BC990, &qword_227670A30);
  v33 = &qword_2813B2078;
  swift_beginAccess();
  v34 = v32;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v35(v58, 0);
    swift_endAccess();

    v38 = sub_227284754(0);
    if (v5)
    {

      *a3 = v5;
      return;
    }

    v39 = v38;
    v40 = a3;
    type metadata accessor for ManagedCatalogWorkoutReference();
    v41 = v59;
    a3 = sub_22766C9E0();

    swift_setDeallocating();
    v42 = *v33;
    v43 = sub_22766A100();
    (*(*(v43 - 8) + 8))(v16 + v42, v43);
    v44 = *(*v16 + 48);
    v45 = *(*v16 + 52);
    swift_deallocClassInstance();
    v50 = v40;
    if (a3 >> 62)
    {
      break;
    }

    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_21;
    }

LABEL_9:
    v16 = 0;
    v35 = (a3 & 0xC000000000000001);
    while (1)
    {
      if (v35)
      {
        v46 = MEMORY[0x22AA991A0](v16, a3);
      }

      else
      {
        if (v16 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v46 = *(a3 + 8 * v16 + 32);
      }

      v47 = v46;
      v33 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v46 setBodyFocusIdentifierss_];
      [v47 setContributorIdentifierss_];
      [v47 setEquipmentIdentifierss_];
      [v47 setMusicGenreIdentifierss_];
      [v47 setSkillLevelIdentifierss_];
      [v47 setThemeIdentifierss_];
      [v47 setTrainerIdentifierss_];

      ++v16;
      if (v33 == v34)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v34 = sub_22766CD20();
  if (v34)
  {
    goto LABEL_9;
  }

LABEL_21:

  v48 = __swift_project_boxed_opaque_existential_0(v51, v51[3]);
  v49 = sub_227664BB0();
  sub_22755B834(v49, v48[1], *(v48 + 16), v48[3]);
}

void sub_226F7CC54(void *a1, uint64_t a2, void *a3)
{
  v52 = a3;
  v4 = v3;
  v6 = a1[3];
  v48 = a1;
  v7 = __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = &qword_2813B2078;
  v17 = v8;
  v18 = v9;

  sub_22766A070();
  v50 = v17;
  v51 = v11;
  *(v15 + 16) = v17;
  *(v15 + 24) = v18;
  v56 = v18;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v49 = a2;
  v19 = sub_227664B90();
  v20 = sub_226F7A7DC(v19, MEMORY[0x277D52790], MEMORY[0x277D52770]);

  v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v55[0] = v20;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v55, v53, &unk_27D7BC990, &qword_227670A30);
  v22 = v54;
  if (v54)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v53, v54);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    v4 = v3;
    v16 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9078 &qword_227672D10))];

  sub_226E97D1C(v55, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = v30;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  v35 = v56;
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v32(v55, 0);
    swift_endAccess();

    v36 = sub_22728473C(0);
    if (v4)
    {

      *v52 = v4;
      return;
    }

    v37 = v36;
    type metadata accessor for ManagedCatalogProgramReference();
    v31 = sub_22766C9E0();

    swift_setDeallocating();
    v38 = *v16;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v15 + v38, v39);
    v40 = *(*v15 + 48);
    v41 = *(*v15 + 52);
    swift_deallocClassInstance();
    if (v31 >> 62)
    {
      break;
    }

    v42 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_21;
    }

LABEL_9:
    v15 = 0;
    v32 = (v31 & 0xC000000000000001);
    v16 = &off_2785D6000;
    while (1)
    {
      if (v32)
      {
        v43 = MEMORY[0x22AA991A0](v15, v31);
      }

      else
      {
        if (v15 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v43 = *(v31 + 8 * v15 + 32);
      }

      v35 = v43;
      v44 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v43 setContributorIdentifierss_];
      [v35 setEquipmentIdentifierss_];
      [v35 setMusicGenreIdentifierss_];
      [v35 setThemeIdentifierss_];
      [v35 setTrainerIdentifierss_];
      [v35 setWorkoutIdentifierss_];

      ++v15;
      if (v44 == v42)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v42 = sub_22766CD20();
  if (v42)
  {
    goto LABEL_9;
  }

LABEL_21:

  v45 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  v46 = sub_227664B90();
  sub_22755BE54(v46, v45[1], *(v45 + 16), v45[3]);
}

void sub_226F7D270(void *a1, uint64_t a2, uint64_t *a3)
{
  v54 = a3;
  v5 = a1[3];
  v46 = a1;
  v6 = __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = &qword_2813B2078;
  v16 = v7;
  v17 = v8;

  sub_22766A070();
  v48 = v16;
  v49 = v10;
  *(v14 + 16) = v16;
  *(v14 + 24) = v17;
  v50 = v17;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v47 = a2;
  v18 = sub_227664B80();
  v19 = sub_226F7A7DC(v18, MEMORY[0x277D519E0], MEMORY[0x277D519D8]);
  v20 = v3;

  v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v53[0] = v19;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v53, v51, &unk_27D7BC990, &qword_227670A30);
  v22 = v52;
  if (v52)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](v23);
    v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    v15 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9080 &qword_227672D40))];

  sub_226E97D1C(v53, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = v30;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_22766C3A0();
    v32(v53, 0);
    swift_endAccess();

    v35 = sub_22728476C(0);
    if (v20)
    {

      *v54 = v20;
      return;
    }

    v32 = v35;
    type metadata accessor for ManagedCatalogTipReference();
    v36 = v50;
    v31 = sub_22766C9E0();

    swift_setDeallocating();
    v37 = *v15;
    v38 = sub_22766A100();
    (*(*(v38 - 8) + 8))(v14 + v37, v38);
    v39 = *(*v14 + 48);
    v40 = *(*v14 + 52);
    swift_deallocClassInstance();
    if (v31 >> 62)
    {
      break;
    }

    v41 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_21;
    }

LABEL_9:
    v14 = 0;
    v20 = v31 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x22AA991A0](v14, v31);
      }

      else
      {
        if (v14 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v42 = *(v31 + 8 * v14 + 32);
      }

      v32 = v42;
      v15 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v42 setCategoryIdentifiers_];

      ++v14;
      if (v15 == v41)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_22766C360();
  }

  v41 = sub_22766CD20();
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_21:

  v43 = __swift_project_boxed_opaque_existential_0(v46, v46[3]);
  v44 = sub_227664B80();
  sub_22755C474(v44, v43[1], *(v43 + 16), v43[3]);
}

void sub_226F7D85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void, void, void, void))
{
  v7 = v4;
  v8 = a3(0);
  if (!v5)
  {
    v9 = v8;
    [v8 setResultType_];
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v10 = sub_22766C820();
    v11 = [v10 keyPath];

    v12 = sub_22766C000();
    v14 = v13;

    v15 = v12;

    v16 = sub_22766C820();
    v17 = v9;
    v18 = [v16 keyPath];

    v19 = sub_22766C000();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2276728D0;
    v23 = MEMORY[0x277D837D0];
    *(v22 + 32) = v15;
    *(v22 + 40) = v14;
    *(v22 + 88) = v23;
    *(v22 + 56) = v23;
    *(v22 + 64) = v19;
    *(v22 + 72) = v21;

    v24 = sub_22766C2B0();

    [v17 setPropertiesToFetch_];

    v25 = *(v7 + 16);
    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    v52 = v19;
    v26 = sub_22766C9E0();
    v27 = sub_2273C20D4(v26);

    if (v27)
    {
      v28 = v27[2];
      if (v28)
      {
        v47 = v17;
        v53 = MEMORY[0x277D84F90];
        v48 = v28;
        sub_226F1F968(0, v28, 0);
        v29 = 0;
        v30 = v53;
        v49 = v14;
        v50 = v21;
        v51 = v27;
        while (v29 < v27[2])
        {
          v31 = v30;
          v32 = v27[v29 + 4];
          v34 = v15;
          v35 = a4;

          v36 = a4(v33, v15, v14, v52, v21);
          v38 = v37;
          v40 = v39;

          v30 = v31;
          v53 = v31;
          v42 = *(v31 + 16);
          v41 = *(v31 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_226F1F968((v41 > 1), v42 + 1, 1);
            v30 = v53;
          }

          ++v29;
          *(v30 + 16) = v42 + 1;
          v43 = (v30 + 24 * v42);
          v43[4] = v36;
          v43[5] = v38;
          v43[6] = v40;
          v14 = v49;
          a4 = v35;
          v15 = v34;
          v21 = v50;
          v27 = v51;
          if (v48 == v29)
          {

            v17 = v47;
            goto LABEL_14;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
LABEL_14:
        if (*(v30 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF0, &qword_227672B88);
          v46 = sub_22766D010();
        }

        else
        {
          v46 = MEMORY[0x277D84F98];
        }

        v53 = v46;
        sub_226F91F08(v30, 1, &v53);
      }
    }

    else
    {

      v44 = sub_227664DD0();
      sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D51018], v44);
      swift_willThrow();
    }
  }
}

uint64_t sub_226F7DD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if ((swift_dynamicCast() & 1) == 0 || !v18)
  {
    goto LABEL_14;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_14:
    v14 = sub_227664DD0();
    sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  *(v13 + 40) = v18;
  return v5;
}

uint64_t sub_226F7DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v19);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:
    v14 = sub_227664DD0();
    sub_226F89164(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  *(v13 + 40) = v18;
  return v5;
}

uint64_t sub_226F7E160(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_226F7E20C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_226F7E2BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_226F7E3E0(uint64_t a1, char a2, void *a3)
{
  v45 = *(a1 + 16);
  if (!v45)
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_226EB396C(v7, v6, v8);
  v11 = sub_226E92000(v4, v5);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF0F7C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_226FE3DF8(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_226E92000(v4, v5);
  if ((v15 & 1) == (v18 & 1))
  {
    v11 = v17;
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v21 = *a3;
      *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
      v22 = (v21[6] + 16 * v11);
      *v22 = v4;
      v22[1] = v5;
      v23 = v21[7] + 24 * v11;
      *v23 = v7;
      *(v23 + 8) = v6;
      *(v23 + 16) = v8;
      v24 = v21[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v21[2] = v26;
      if (v45 != 1)
      {
        v27 = (a1 + 104);
        v28 = 1;
        while (v28 < *(a1 + 16))
        {
          v30 = *(v27 - 4);
          v29 = *(v27 - 3);
          v7 = *(v27 - 2);
          v6 = *(v27 - 1);
          v8 = *v27;
          v31 = *a3;

          sub_226EB396C(v7, v6, v8);
          v32 = sub_226E92000(v30, v29);
          v34 = v31[2];
          v35 = (v33 & 1) == 0;
          v25 = __OFADD__(v34, v35);
          v36 = v34 + v35;
          if (v25)
          {
            goto LABEL_24;
          }

          v37 = v33;
          if (v31[3] < v36)
          {
            sub_226FE3DF8(v36, 1);
            v38 = *a3;
            v32 = sub_226E92000(v30, v29);
            if ((v37 & 1) != (v39 & 1))
            {
              goto LABEL_26;
            }
          }

          if (v37)
          {
            goto LABEL_9;
          }

          v40 = *a3;
          *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
          v41 = (v40[6] + 16 * v32);
          *v41 = v30;
          v41[1] = v29;
          v42 = v40[7] + 24 * v32;
          *v42 = v7;
          *(v42 + 8) = v6;
          *(v42 + 16) = v8;
          v43 = v40[2];
          v25 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v25)
          {
            goto LABEL_25;
          }

          ++v28;
          v40[2] = v44;
          v27 += 40;
          if (v45 == v28)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_22:

      return;
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v7, v6, v8);

      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_22766D220();
  __break(1u);
LABEL_27:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_226F7E7D0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190() & 1;
  }
}

uint64_t sub_226F7E828(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t (*a4)(void))
{
  v47 = a2;
  v48 = a3;
  v46 = a4(0);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v38 = v4;
    v52 = MEMORY[0x277D84F90];
    v11 = v7;
    sub_226F1EFF0(0, v9, 0);
    v51 = v52;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v14 = v11;
    v15 = result;
    v16 = 0;
    v43 = v11 + 8;
    v44 = v11 + 16;
    v39 = a1 + 64;
    v40 = v9;
    v41 = v11;
    v42 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v49 = *(a1 + 36);
      v20 = v45;
      v19 = v46;
      v21 = v14;
      (*(v14 + 16))(v45, *(a1 + 48) + *(v14 + 72) * v15, v46);
      v22 = v47(v20);
      v50 = v23;
      result = (*(v21 + 8))(v20, v19);
      v24 = v51;
      v52 = v51;
      v26 = *(v51 + 16);
      v25 = *(v51 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_226F1EFF0((v25 > 1), v26 + 1, 1);
        v24 = v52;
      }

      *(v24 + 16) = v26 + 1;
      v27 = v24 + 16 * v26;
      v28 = v50;
      *(v27 + 32) = v22;
      *(v27 + 40) = v28;
      v17 = 1 << *(a1 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v42;
      v29 = *(v42 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      v51 = v24;
      if (v49 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v14 = v41;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v39 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            v36 = v41;
            result = sub_226EB526C(v15, v49, 0);
            v14 = v36;
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        v37 = v41;
        result = sub_226EB526C(v15, v49, 0);
        v14 = v37;
      }

LABEL_4:
      ++v16;
      v15 = v17;
      if (v16 == v40)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_226F7EB64(uint64_t a1, void *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD8, &unk_227672B10);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  v20 = sub_227230638(a1);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v44[0] = v20;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v44, v42, &unk_27D7BC990, &qword_227670A30);
  v22 = v43;
  if (v43)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64);
    v26 = MEMORY[0x28223BE20](v23);
    v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v24 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9068 &unk_227683240))];

  sub_226E97D1C(v44, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v41 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v44, 0);
  swift_endAccess();

  v34 = sub_2272346B8(100);
  swift_setDeallocating();

  v35 = *(v17 + 40);

  v36 = qword_2813B2078;
  v37 = sub_22766A100();
  (*(*(v37 - 8) + 8))(v17 + v36, v37);
  v38 = *(*v17 + 48);
  v39 = *(*v17 + 52);
  swift_deallocClassInstance();
  return v34;
}

uint64_t sub_226F7F05C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryEquipment", 32, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_2272349B8(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_227669580();
    sub_226F89164(&unk_28139B208, MEMORY[0x277D53E88]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

uint64_t sub_226F7F468(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v84 = a2;
  v7 = sub_227669890();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogMetadataJournals", 46, 2, &dword_226E8E000, 0, v90);
  (*(v8 + 8))(v11, v7);
  v12 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v23 = sub_227073F2C(a1);
  v85 = a1;
  if (a3)
  {
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v88[0] = v23;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v24 = sub_22766C820();
    sub_226E93170(v88, v86, &unk_27D7BC990, &qword_227670A30);
    v25 = v87;
    if (v87)
    {
      v26 = __swift_project_boxed_opaque_existential_0(v86, v87);
      v27 = *(v25 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20](v26);
      v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30);
      v31 = sub_22766D170();
      (*(v27 + 8))(v30, v25);
      v32 = v92;
      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    else
    {
      v31 = 0;
      v32 = v92;
    }

    v42 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD0 qword_227672AD0))];

    sub_226E97D1C(v88, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v43 = sub_22766A080();
    v45 = v44;
    MEMORY[0x22AA985C0]();
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v79 = *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v43(v88, 0);
    swift_endAccess();

    sub_227234CB8(100);
    if (!v32)
    {
LABEL_21:
      swift_setDeallocating();

      v73 = *(v20 + 40);

      v74 = qword_2813B2078;
      v75 = sub_22766A100();
      (*(*(v75 - 8) + 8))(v20 + v74, v75);
      v76 = *(*v20 + 48);
      v77 = *(*v20 + 52);
      swift_deallocClassInstance();
      sub_227666330();
      sub_226F89164(&qword_28139B698, MEMORY[0x277D522A0]);
      v72 = sub_22766C5B0();

      __swift_project_boxed_opaque_existential_0(v90, v91);
      sub_227669930();
      __swift_destroy_boxed_opaque_existential_0(v90);
      return v72;
    }
  }

  else
  {
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v88[0] = v23;
    v33 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v83 = v33;
    v34 = sub_22766C820();
    sub_226E93170(v88, v86, &unk_27D7BC990, &qword_227670A30);
    v35 = v87;
    if (v87)
    {
      v36 = __swift_project_boxed_opaque_existential_0(v86, v87);
      v37 = *(v35 - 8);
      v38 = *(v37 + 64);
      MEMORY[0x28223BE20](v36);
      v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v40);
      v41 = sub_22766D170();
      (*(v37 + 8))(v40, v35);
      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    else
    {
      v41 = 0;
    }

    v82 = objc_opt_self();
    v46 = [v82 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD0, qword_227672AD0);
    [objc_allocWithZone(v47) initWithLeftExpression:v34 rightExpression:v46 modifier:0 type:10 options:0];

    sub_226E97D1C(v88, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v48 = sub_22766A080();
    v50 = v49;
    MEMORY[0x22AA985C0]();
    if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v48(v88, 0);
    swift_endAccess();

    swift_getKeyPath();
    v89 = MEMORY[0x277D839F8];
    v88[0] = v84;

    v51 = sub_22766C820();
    sub_226E93170(v88, v86, &unk_27D7BC990, &qword_227670A30);
    v52 = v87;
    if (v87)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v86, v87);
      v84 = &v81;
      v54 = v47;
      v55 = *(v52 - 8);
      v56 = *(v55 + 64);
      MEMORY[0x28223BE20](v53);
      v58 = &v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v55 + 16))(v58);
      v59 = sub_22766D170();
      (*(v55 + 8))(v58, v52);
      v47 = v54;
      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    else
    {
      v59 = 0;
    }

    v60 = v92;
    v61 = [v82 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v62 = [objc_allocWithZone(v47) initWithLeftExpression:v51 rightExpression:v61 modifier:0 type:3 options:0];

    sub_226E97D1C(v88, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v63 = v62;
    v64 = sub_22766A080();
    v66 = v65;
    MEMORY[0x22AA985C0]();
    if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v64(v88, 0);
    swift_endAccess();

    sub_227234CB8(100);
    if (!v60)
    {
      goto LABEL_21;
    }
  }

  swift_setDeallocating();

  v67 = *(v20 + 40);

  v68 = qword_2813B2078;
  v69 = sub_22766A100();
  (*(*(v69 - 8) + 8))(v20 + v68, v69);
  v70 = *(*v20 + 48);
  v71 = *(*v20 + 52);
  swift_deallocClassInstance();
  v72 = v91;
  __swift_project_boxed_opaque_existential_0(v90, v91);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v90);
  return v72;
}

uint64_t sub_226F7FF9C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalityReferences", 48, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_226EB1A68(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_227666FF0();
    sub_226F89164(&unk_28139B578, MEMORY[0x277D52AF8]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

void *sub_226F803A8(void (**a1)(char *, uint64_t), uint64_t *a2, int a3, uint64_t a4)
{
  v97 = a4;
  v98 = a1;
  LODWORD(v99) = a3;
  v100 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F10, &qword_227672928);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v89 - v6);
  v8 = sub_2276645D0();
  v95 = *(v8 - 8);
  v9 = *(v95 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v89 - v13;
  v15 = sub_227666330();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227669890();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalities", 40, 2, &dword_226E8E000, 0, v104);
  v24 = v23;
  v25 = v97;
  (*(v20 + 8))(v24, v19);
  v26 = v106;
  v27 = sub_226F7F468(v98, v100, v99 & 1, v25);
  v28 = v26;
  if (v26)
  {
    goto LABEL_16;
  }

  v29 = v93;
  v106 = v15;
  v91 = v14;
  v94 = v12;
  v96 = v8;
  v92 = v7;
  v30 = *(v27 + 16);
  if (v30)
  {
    v90 = 0;
    v103[0] = MEMORY[0x277D84F90];
    v31 = v27;
    sub_226F1EF90(0, v30, 0);
    v32 = v103[0];
    v33 = v29 + 16;
    v34 = *(v29 + 16);
    v35 = *(v29 + 80);
    v93 = v31;
    v36 = v31 + ((v35 + 32) & ~v35);
    v99 = *(v29 + 72);
    v100 = v34;
    v98 = (v29 + 8);
    v37 = v106;
    do
    {
      v38 = v33;
      (v100)(v18, v36, v37);
      v39 = sub_227666310();
      v41 = v40;
      (*v98)(v18, v37);
      v103[0] = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      v7 = (v43 + 1);
      if (v43 >= v42 >> 1)
      {
        sub_226F1EF90(v42 > 1, v43 + 1, 1);
        v32 = v103[0];
      }

      *(v32 + 16) = v7;
      v44 = v32 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v36 += v99;
      --v30;
      v37 = v106;
      v33 = v38;
    }

    while (v30);

    v28 = v90;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v45 = v97;
  v46 = sub_226F7FF9C(v32, v97);
  if (v28)
  {

LABEL_16:
    __swift_project_boxed_opaque_existential_0(v104, v105);
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0(v104);
    return v7;
  }

  v98 = v46;
  v47 = __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  v48 = v32;
  v49 = *v47;
  v50 = v47[1];
  v51 = *(v47 + 16);
  v52 = v47[3];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v7 = swift_allocObject();
  v56 = v49;
  v57 = v50;

  sub_22766A070();
  v7[2] = v56;
  v7[3] = v57;
  *(v7 + 32) = v51;
  v7[5] = v52;
  swift_getKeyPath();
  v106 = v48;
  v58 = sub_227073F2C(v48);
  v103[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v103[0] = v58;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v59 = sub_22766C820();
  sub_226E93170(v103, v101, &unk_27D7BC990, &qword_227670A30);
  v60 = v102;
  if (v102)
  {
    v61 = __swift_project_boxed_opaque_existential_0(v101, v102);
    v62 = *(v60 - 8);
    v63 = *(v62 + 64);
    MEMORY[0x28223BE20](v61);
    v65 = &v89 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v65);
    v66 = sub_22766D170();
    (*(v62 + 8))(v65, v60);
    __swift_destroy_boxed_opaque_existential_0(v101);
  }

  else
  {
    v66 = 0;
  }

  v67 = v95;
  v68 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F98 &qword_227672A40))];

  sub_226E97D1C(v103, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v69 = sub_22766A080();
  v71 = v70;
  MEMORY[0x22AA985C0]();
  v72 = v98;
  if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_22766C3A0();
    (v69)(v103, 0);
    swift_endAccess();

    v100 = sub_227234FB8(100);
    swift_setDeallocating();

    v74 = v7[5];

    v75 = qword_2813B2078;
    v76 = sub_22766A100();
    (*(*(v76 - 8) + 8))(v7 + v75, v76);
    v77 = *(*v7 + 48);
    v78 = *(*v7 + 52);
    swift_deallocClassInstance();
    v99 = *(v106 + 16);
    if (!v99)
    {
      break;
    }

    v79 = 0;
    v80 = v67;
    v67 += 6;
    v69 = (v80 + 4);
    v81 = (v106 + 40);
    v7 = MEMORY[0x277D84F90];
    v82 = v92;
    while (v79 < *(v106 + 16))
    {
      v83 = *v81;
      v103[0] = *(v81 - 1);
      v103[1] = v83;

      sub_226F7BA68(v103, v72, v100, v82);
      v84 = v96;

      if ((*v67)(v82, 1, v84) == 1)
      {
        sub_226E97D1C(v82, &qword_27D7B8F10, &qword_227672928);
      }

      else
      {
        v85 = *v69;
        v86 = v91;
        (*v69)();
        (v85)(v94, v86, v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2273A5224(0, v7[2] + 1, 1, v7);
        }

        v88 = v7[2];
        v87 = v7[3];
        if (v88 >= v87 >> 1)
        {
          v7 = sub_2273A5224(v87 > 1, v88 + 1, 1, v7);
        }

        v7[2] = v88 + 1;
        (v85)(v7 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v88, v94, v96);
        v82 = v92;
        v72 = v98;
      }

      ++v79;
      v81 += 2;
      if (v99 == v79)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    sub_22766C360();
    v72 = v98;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_30:

  __swift_project_boxed_opaque_existential_0(v104, v105);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v104);
  return v7;
}

uint64_t sub_226F80E80(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryMusicGenres", 34, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_226ED00DC(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_2276632A0();
    sub_226F89164(&qword_28139BD28, MEMORY[0x277D4FE80]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

uint64_t sub_226F8128C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryCatalogThemes", 36, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_227233DB8(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_227663A30();
    sub_226F89164(&qword_28139BC90, MEMORY[0x277D50278]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

uint64_t sub_226F81698(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryTrainerReferences", 40, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_227233AB8(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_227664EB0();
    sub_226F89164(&qword_28139B8B8, MEMORY[0x277D51130]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

void *sub_226F81AA4(void (**a1)(char *, uint64_t), uint64_t *a2, int a3, uint64_t a4)
{
  v97 = a4;
  v98 = a1;
  LODWORD(v99) = a3;
  v100 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F50, &qword_2276729A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v89 - v6);
  v8 = sub_2276692D0();
  v95 = *(v8 - 8);
  v9 = *(v95 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v89 - v13;
  v15 = sub_227666330();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227669890();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryTrainers", 31, 2, &dword_226E8E000, 0, v104);
  v24 = v23;
  v25 = v97;
  (*(v20 + 8))(v24, v19);
  v26 = v106;
  v27 = sub_226F7F468(v98, v100, v99 & 1, v25);
  v28 = v26;
  if (v26)
  {
    goto LABEL_16;
  }

  v29 = v93;
  v106 = v15;
  v91 = v14;
  v94 = v12;
  v96 = v8;
  v92 = v7;
  v30 = *(v27 + 16);
  if (v30)
  {
    v90 = 0;
    v103[0] = MEMORY[0x277D84F90];
    v31 = v27;
    sub_226F1EF90(0, v30, 0);
    v32 = v103[0];
    v33 = v29 + 16;
    v34 = *(v29 + 16);
    v35 = *(v29 + 80);
    v93 = v31;
    v36 = v31 + ((v35 + 32) & ~v35);
    v99 = *(v29 + 72);
    v100 = v34;
    v98 = (v29 + 8);
    v37 = v106;
    do
    {
      v38 = v33;
      (v100)(v18, v36, v37);
      v39 = sub_227666310();
      v41 = v40;
      (*v98)(v18, v37);
      v103[0] = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      v7 = (v43 + 1);
      if (v43 >= v42 >> 1)
      {
        sub_226F1EF90(v42 > 1, v43 + 1, 1);
        v32 = v103[0];
      }

      *(v32 + 16) = v7;
      v44 = v32 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v36 += v99;
      --v30;
      v37 = v106;
      v33 = v38;
    }

    while (v30);

    v28 = v90;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v45 = v97;
  v46 = sub_226F81698(v32, v97);
  if (v28)
  {

LABEL_16:
    __swift_project_boxed_opaque_existential_0(v104, v105);
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0(v104);
    return v7;
  }

  v98 = v46;
  v47 = __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  v48 = v32;
  v49 = *v47;
  v50 = v47[1];
  v51 = *(v47 + 16);
  v52 = v47[3];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v7 = swift_allocObject();
  v56 = v49;
  v57 = v50;

  sub_22766A070();
  v7[2] = v56;
  v7[3] = v57;
  *(v7 + 32) = v51;
  v7[5] = v52;
  swift_getKeyPath();
  v106 = v48;
  v58 = sub_227073F2C(v48);
  v103[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v103[0] = v58;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v59 = sub_22766C820();
  sub_226E93170(v103, v101, &unk_27D7BC990, &qword_227670A30);
  v60 = v102;
  if (v102)
  {
    v61 = __swift_project_boxed_opaque_existential_0(v101, v102);
    v62 = *(v60 - 8);
    v63 = *(v62 + 64);
    MEMORY[0x28223BE20](v61);
    v65 = &v89 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v65);
    v66 = sub_22766D170();
    (*(v62 + 8))(v65, v60);
    __swift_destroy_boxed_opaque_existential_0(v101);
  }

  else
  {
    v66 = 0;
  }

  v67 = v95;
  v68 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F60 &qword_2276729E0))];

  sub_226E97D1C(v103, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v69 = sub_22766A080();
  v71 = v70;
  MEMORY[0x22AA985C0]();
  v72 = v98;
  if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    sub_22766C3A0();
    (v69)(v103, 0);
    swift_endAccess();

    v100 = sub_2272352B8(100);
    swift_setDeallocating();

    v74 = v7[5];

    v75 = qword_2813B2078;
    v76 = sub_22766A100();
    (*(*(v76 - 8) + 8))(v7 + v75, v76);
    v77 = *(*v7 + 48);
    v78 = *(*v7 + 52);
    swift_deallocClassInstance();
    v99 = *(v106 + 16);
    if (!v99)
    {
      break;
    }

    v79 = 0;
    v80 = v67;
    v67 += 6;
    v69 = (v80 + 4);
    v81 = (v106 + 40);
    v7 = MEMORY[0x277D84F90];
    v82 = v92;
    while (v79 < *(v106 + 16))
    {
      v83 = *v81;
      v103[0] = *(v81 - 1);
      v103[1] = v83;

      sub_226F7B170(v103, v72, v100, v82);
      v84 = v96;

      if ((*v67)(v82, 1, v84) == 1)
      {
        sub_226E97D1C(v82, &qword_27D7B8F50, &qword_2276729A0);
      }

      else
      {
        v85 = *v69;
        v86 = v91;
        (*v69)();
        (v85)(v94, v86, v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2273A524C(0, v7[2] + 1, 1, v7);
        }

        v88 = v7[2];
        v87 = v7[3];
        if (v88 >= v87 >> 1)
        {
          v7 = sub_2273A524C(v87 > 1, v88 + 1, 1, v7);
        }

        v7[2] = v88 + 1;
        (v85)(v7 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v88, v94, v96);
        v82 = v92;
        v72 = v98;
      }

      ++v79;
      v81 += 2;
      if (v99 == v79)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    sub_22766C360();
    v72 = v98;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_30:

  __swift_project_boxed_opaque_existential_0(v104, v105);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v104);
  return v7;
}

uint64_t sub_226F8257C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::queryBodyFocuses", 34, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_226ED85A4(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_227669530();
    sub_226F89164(&unk_28139B238, MEMORY[0x277D53E10]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}