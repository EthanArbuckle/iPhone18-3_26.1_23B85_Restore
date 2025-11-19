uint64_t sub_1DAAED0E4()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_1DAAEFF94;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_1DAAED200;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAAED200()
{
  v117 = v0;
  v2 = *(v0 + 256);
  *(v0 + 352) = v2;
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = sub_1DACB8C94();
  *(v0 + 360) = __swift_project_value_buffer(v6, qword_1EE13E2D0);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 304);
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v116[0] = v10;
    *v3 = 136315138;
    v11 = MEMORY[0x1E1277130](v9, MEMORY[0x1E69E6158]);
    v13 = sub_1DAA7ABE4(v11, v12, v116);

    *(v3 + 4) = v13;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Checking records for deprecated stocks, symbols=%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v3, -1, -1);
  }

  v15 = 0;
  v16 = v0 + 296;
  v17 = *(v2 + 32);
  *(v0 + 60) = v17;
  v18 = 1 << v17;
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v2 + 64);
  v21 = *(v0 + 344);
  v22 = (v18 + 63) >> 6;
  while (v20)
  {
    v14 = *(v0 + 352);
LABEL_14:
    *(v0 + 368) = v20;
    *(v0 + 376) = v15;
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v24 | (v15 << 6);
    v26 = *(v14 + 56) + 104 * v25;
    if (*(v26 + 80))
    {
      v27 = *(v0 + 360);
      v28 = (*(v14 + 48) + 16 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v26 + 8);
      v32 = *(v26 + 24);
      v107 = *(v26 + 88);
      v33 = *(v26 + 72);
      v34 = *(v26 + 56);
      v35 = *(v26 + 40);
      v109 = *(v26 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v36 = sub_1DACB8C74();
      v37 = sub_1DACB9914();

      v114 = v30;
      v115 = v29;
      v110 = (v0 + 296);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v116[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_1DAA7ABE4(v29, v30, v116);
        _os_log_impl(&dword_1DAA3F000, v36, v37, "Will deprecated stock, symbol=%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1E1278C00](v39, -1, -1);
        MEMORY[0x1E1278C00](v38, -1, -1);
      }

      if (!v109)
      {
        goto LABEL_21;
      }

      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v40 = qword_1EE13E3B8;
      v41 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v107, v109);
      if (v42)
      {
        goto LABEL_21;
      }

      *(v0 + 176) = 0;
      *(v0 + 184) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v40, v41);
      sub_1DACB9204();
      v63 = *(v0 + 176);
      v64 = *(v0 + 184);
      v65 = sub_1DACB94A4();

      if (v65)
      {
        goto LABEL_33;
      }

      *(v0 + 192) = 0;
      *(v0 + 200) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v40, v41);
      sub_1DACB9204();
      v66 = *(v0 + 192);
      v67 = *(v0 + 200);
      v68 = sub_1DACB94A4();

      if (v68)
      {
LABEL_33:
        v106 = *(v0 + 360);
        v69 = *(v0 + 304);
        sub_1DACB71E4();
        v70 = sub_1DACB9424();
        v71 = sub_1DAAF0E30(v70, v107, v109);
        v73 = v72;
        v75 = v74;
        v77 = v76;

        v16 = MEMORY[0x1E1276EB0](v71, v73, v75, v77);
        v2 = v78;

        *(v0 + 208) = v16;
        *(v0 + 216) = v2;
        v79 = swift_task_alloc();
        *(v79 + 16) = v0 + 208;
        LOBYTE(v73) = sub_1DAC78448(sub_1DAA88710, v79, v69);

        v1 = v114;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v7 = sub_1DACB8C74();
        LOBYTE(v3) = sub_1DACB9914();

        LODWORD(v14) = os_log_type_enabled(v7, v3);
        if (v73)
        {
          if (v14)
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v116[0] = v81;
            *v80 = 136315394;
            v82 = v115;
            *(v80 + 4) = sub_1DAA7ABE4(v115, v114, v116);
            *(v80 + 12) = 2080;
            v83 = sub_1DAA7ABE4(v16, v2, v116);

            *(v80 + 14) = v83;
            _os_log_impl(&dword_1DAA3F000, v7, v3, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v80, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v81, -1, -1);
            MEMORY[0x1E1278C00](v80, -1, -1);
          }

          else
          {

            v82 = v115;
          }

          v97 = *(v0 + 58);
          v99 = *(v0 + 312);
          v98 = *(v0 + 320);
          v100 = *(v0 + 288);
          v101 = *(v0 + 264);
          v102 = v101[5];
          v103 = v101[6];
          v113 = *v110;
          __swift_project_boxed_opaque_existential_1(v101 + 2, v102);
          *(v0 + 112) = v100;
          *(v0 + 120) = v113;
          *(v0 + 136) = v99;
          *(v0 + 144) = v98;
          *(v0 + 152) = v97;
          *(v0 + 384) = (*(v103 + 168))(v82, v114, v0 + 112, v102, v103);

          v104 = *(MEMORY[0x1E69D6B08] + 4);
          v105 = swift_task_alloc();
          *(v0 + 392) = v105;
          *v105 = v0;
          v105[1] = sub_1DAAEDD8C;
          v62 = v0 + 240;
        }

        else
        {
LABEL_37:
          v108 = v16;
          if (v14)
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v116[0] = v85;
            *v84 = 136315394;
            *(v84 + 4) = sub_1DAA7ABE4(v115, v1, v116);
            *(v84 + 12) = 2080;
            *(v84 + 14) = sub_1DAA7ABE4(v16, v2, v116);
            _os_log_impl(&dword_1DAA3F000, v7, v3, "Deprecating %s and replacing it with %s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v85, -1, -1);
            MEMORY[0x1E1278C00](v84, -1, -1);
          }

          v86 = v1;
          v87 = v2;
          v88 = *(v0 + 58);
          v90 = *(v0 + 312);
          v89 = *(v0 + 320);
          v91 = *(v0 + 288);
          v92 = *(v0 + 264);
          v93 = v92[5];
          v94 = v92[6];
          v112 = *v110;
          __swift_project_boxed_opaque_existential_1(v92 + 2, v93);
          *(v0 + 64) = v91;
          *(v0 + 72) = v112;
          *(v0 + 88) = v90;
          *(v0 + 96) = v89;
          *(v0 + 104) = v88;
          *(v0 + 408) = (*(v94 + 192))(v115, v86, v108, v87, v0 + 64, v93, v94);

          v95 = *(MEMORY[0x1E69D6B08] + 4);
          v96 = swift_task_alloc();
          *(v0 + 416) = v96;
          *v96 = v0;
          v96[1] = sub_1DAAEE8E4;
          v62 = v0 + 224;
        }
      }

      else
      {
LABEL_21:

        v43 = *(v0 + 360);

        sub_1DACB71E4();
        v44 = sub_1DACB8C74();
        v45 = sub_1DACB9914();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v116[0] = v47;
          *v46 = 136315138;
          v48 = v115;
          *(v46 + 4) = sub_1DAA7ABE4(v115, v30, v116);
          _os_log_impl(&dword_1DAA3F000, v44, v45, "Deprecating %s with no replacement", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          MEMORY[0x1E1278C00](v47, -1, -1);
          MEMORY[0x1E1278C00](v46, -1, -1);
        }

        else
        {

          v48 = v115;
        }

        v53 = *(v0 + 58);
        v55 = *(v0 + 312);
        v54 = *(v0 + 320);
        v56 = *(v0 + 288);
        v57 = *(v0 + 264);
        v58 = v57[5];
        v59 = v57[6];
        v111 = *v110;
        __swift_project_boxed_opaque_existential_1(v57 + 2, v58);
        *(v0 + 16) = v56;
        *(v0 + 24) = v111;
        *(v0 + 40) = v55;
        *(v0 + 48) = v54;
        *(v0 + 56) = v53;
        *(v0 + 432) = (*(v59 + 168))(v48, v114, v0 + 16, v58, v59);

        v60 = *(MEMORY[0x1E69D6B08] + 4);
        v61 = swift_task_alloc();
        *(v0 + 440) = v61;
        *v61 = v0;
        v61[1] = sub_1DAAEF43C;
        v62 = v0 + 160;
      }

      return MEMORY[0x1EEE44EE0](v62);
    }
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = *(v0 + 352);
    if (v23 >= v22)
    {
      break;
    }

    v20 = *(v14 + 8 * v23 + 64);
    ++v15;
    if (v20)
    {
      v15 = v23;
      goto LABEL_14;
    }
  }

  v49 = *(v0 + 272);
  v50 = *(v0 + 280);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1DAAEDD8C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  v2[50] = v0;

  v5 = v2[48];
  if (v0)
  {

    v6 = sub_1DAAF0150;
  }

  else
  {
    v7 = v2[31];

    v6 = sub_1DAAEDED4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAAEDED4(uint64_t a1)
{
  v100 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 400);
  v8 = *(v3 + 376);
  v9 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v9)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v9;
    *(v3 + 376) = v8;
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(a1 + 56) + 104 * v12;
    if (*(v13 + 80))
    {
      v14 = *(v3 + 360);
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      v92 = *(v13 + 88);
      v20 = *(v13 + 72);
      v21 = *(v13 + 56);
      v22 = *(v13 + 40);
      v94 = *(v13 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v23 = sub_1DACB8C74();
      v24 = sub_1DACB9914();

      v98 = v16;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v99[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1DAA7ABE4(v16, v17, v99);
        _os_log_impl(&dword_1DAA3F000, v23, v24, "Will deprecated stock, symbol=%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E1278C00](v26, -1, -1);
        MEMORY[0x1E1278C00](v25, -1, -1);
      }

      if (!v94)
      {
        goto LABEL_19;
      }

      v91 = v17;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v27 = qword_1EE13E3B8;
      v28 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v92, v94);
      if (v29)
      {
        goto LABEL_19;
      }

      *(v3 + 176) = 0;
      *(v3 + 184) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v49 = *(v3 + 176);
      v50 = *(v3 + 184);
      v51 = sub_1DACB94A4();

      if (v51)
      {
        goto LABEL_27;
      }

      *(v3 + 192) = 0;
      *(v3 + 200) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v52 = *(v3 + 192);
      v53 = *(v3 + 200);
      v54 = sub_1DACB94A4();

      if (v54)
      {
LABEL_27:
        v55 = *(v3 + 360);
        v56 = *(v3 + 304);
        sub_1DACB71E4();
        v57 = sub_1DACB9424();
        v58 = sub_1DAAF0E30(v57, v92, v94);
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v4 = MEMORY[0x1E1276EB0](v58, v60, v62, v64);
        v1 = v65;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v66 = swift_task_alloc();
        *(v66 + 16) = v6;
        LOBYTE(v60) = sub_1DAC78448(sub_1DAA88710, v66, v56);

        v5 = v91;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v60)
        {
          if (a1)
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v99[0] = v68;
            *v67 = 136315394;
            *(v67 + 4) = sub_1DAA7ABE4(v98, v91, v99);
            *(v67 + 12) = 2080;
            v69 = sub_1DAA7ABE4(v4, v1, v99);

            *(v67 + 14) = v69;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v68, -1, -1);
            MEMORY[0x1E1278C00](v67, -1, -1);
          }

          else
          {
          }

          v82 = *(v3 + 58);
          v84 = *(v3 + 312);
          v83 = *(v3 + 320);
          v85 = *(v3 + 288);
          v86 = *(v3 + 264);
          v87 = v86[5];
          v88 = v86[6];
          v97 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v86 + 2, v87);
          *(v3 + 112) = v85;
          *(v3 + 120) = v97;
          *(v3 + 136) = v84;
          *(v3 + 144) = v83;
          *(v3 + 152) = v82;
          *(v3 + 384) = (*(v88 + 168))(v98, v91, v3 + 112, v87, v88);

          v89 = *(MEMORY[0x1E69D6B08] + 4);
          v90 = swift_task_alloc();
          *(v3 + 392) = v90;
          *v90 = v3;
          v90[1] = sub_1DAAEDD8C;
          v48 = v3 + 240;
        }

        else
        {
LABEL_31:
          v93 = v4;
          if (a1)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v99[0] = v71;
            *v70 = 136315394;
            *(v70 + 4) = sub_1DAA7ABE4(v98, v5, v99);
            *(v70 + 12) = 2080;
            *(v70 + 14) = sub_1DAA7ABE4(v4, v1, v99);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v71, -1, -1);
            MEMORY[0x1E1278C00](v70, -1, -1);
          }

          v72 = v5;
          v73 = *(v3 + 58);
          v75 = *(v3 + 312);
          v74 = *(v3 + 320);
          v76 = *(v3 + 288);
          v77 = *(v3 + 264);
          v78 = v77[5];
          v79 = v77[6];
          v96 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v77 + 2, v78);
          *(v3 + 64) = v76;
          *(v3 + 72) = v96;
          *(v3 + 88) = v75;
          *(v3 + 96) = v74;
          *(v3 + 104) = v73;
          *(v3 + 408) = (*(v79 + 192))(v98, v72, v93, v1, v3 + 64, v78, v79);

          v80 = *(MEMORY[0x1E69D6B08] + 4);
          v81 = swift_task_alloc();
          *(v3 + 416) = v81;
          *v81 = v3;
          v81[1] = sub_1DAAEE8E4;
          v48 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        v34 = *(v3 + 360);

        sub_1DACB71E4();
        v35 = sub_1DACB8C74();
        v36 = sub_1DACB9914();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v99[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1DAA7ABE4(v98, v17, v99);
          _os_log_impl(&dword_1DAA3F000, v35, v36, "Deprecating %s with no replacement", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E1278C00](v38, -1, -1);
          MEMORY[0x1E1278C00](v37, -1, -1);
        }

        v39 = *(v3 + 58);
        v41 = *(v3 + 312);
        v40 = *(v3 + 320);
        v42 = *(v3 + 288);
        v43 = *(v3 + 264);
        v44 = v43[5];
        v45 = v43[6];
        v95 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
        *(v3 + 16) = v42;
        *(v3 + 24) = v95;
        *(v3 + 40) = v41;
        *(v3 + 48) = v40;
        *(v3 + 56) = v39;
        *(v3 + 432) = (*(v45 + 168))(v98, v17, v3 + 16, v44, v45);

        v46 = *(MEMORY[0x1E69D6B08] + 4);
        v47 = swift_task_alloc();
        *(v3 + 440) = v47;
        *v47 = v3;
        v47[1] = sub_1DAAEF43C;
        v48 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v48);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v10 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v9 = *(a1 + 8 * v10 + 64);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_8;
    }
  }

  v30 = *(v3 + 272);
  v31 = *(v3 + 280);

  v32 = *(v3 + 8);

  return v32();
}

uint64_t sub_1DAAEE8E4()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  v2[53] = v0;

  v5 = v2[51];
  if (v0)
  {

    v6 = sub_1DAAF030C;
  }

  else
  {
    v7 = v2[29];

    v6 = sub_1DAAEEA2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAAEEA2C(uint64_t a1)
{
  v100 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 424);
  v8 = *(v3 + 376);
  v9 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v9)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v9;
    *(v3 + 376) = v8;
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(a1 + 56) + 104 * v12;
    if (*(v13 + 80))
    {
      v14 = *(v3 + 360);
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      v92 = *(v13 + 88);
      v20 = *(v13 + 72);
      v21 = *(v13 + 56);
      v22 = *(v13 + 40);
      v94 = *(v13 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v23 = sub_1DACB8C74();
      v24 = sub_1DACB9914();

      v98 = v16;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v99[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1DAA7ABE4(v16, v17, v99);
        _os_log_impl(&dword_1DAA3F000, v23, v24, "Will deprecated stock, symbol=%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E1278C00](v26, -1, -1);
        MEMORY[0x1E1278C00](v25, -1, -1);
      }

      if (!v94)
      {
        goto LABEL_19;
      }

      v91 = v17;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v27 = qword_1EE13E3B8;
      v28 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v92, v94);
      if (v29)
      {
        goto LABEL_19;
      }

      *(v3 + 176) = 0;
      *(v3 + 184) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v49 = *(v3 + 176);
      v50 = *(v3 + 184);
      v51 = sub_1DACB94A4();

      if (v51)
      {
        goto LABEL_27;
      }

      *(v3 + 192) = 0;
      *(v3 + 200) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v52 = *(v3 + 192);
      v53 = *(v3 + 200);
      v54 = sub_1DACB94A4();

      if (v54)
      {
LABEL_27:
        v55 = *(v3 + 360);
        v56 = *(v3 + 304);
        sub_1DACB71E4();
        v57 = sub_1DACB9424();
        v58 = sub_1DAAF0E30(v57, v92, v94);
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v4 = MEMORY[0x1E1276EB0](v58, v60, v62, v64);
        v1 = v65;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v66 = swift_task_alloc();
        *(v66 + 16) = v6;
        LOBYTE(v60) = sub_1DAC78448(sub_1DAA88710, v66, v56);

        v5 = v91;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v60)
        {
          if (a1)
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v99[0] = v68;
            *v67 = 136315394;
            *(v67 + 4) = sub_1DAA7ABE4(v98, v91, v99);
            *(v67 + 12) = 2080;
            v69 = sub_1DAA7ABE4(v4, v1, v99);

            *(v67 + 14) = v69;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v68, -1, -1);
            MEMORY[0x1E1278C00](v67, -1, -1);
          }

          else
          {
          }

          v82 = *(v3 + 58);
          v84 = *(v3 + 312);
          v83 = *(v3 + 320);
          v85 = *(v3 + 288);
          v86 = *(v3 + 264);
          v87 = v86[5];
          v88 = v86[6];
          v97 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v86 + 2, v87);
          *(v3 + 112) = v85;
          *(v3 + 120) = v97;
          *(v3 + 136) = v84;
          *(v3 + 144) = v83;
          *(v3 + 152) = v82;
          *(v3 + 384) = (*(v88 + 168))(v98, v91, v3 + 112, v87, v88);

          v89 = *(MEMORY[0x1E69D6B08] + 4);
          v90 = swift_task_alloc();
          *(v3 + 392) = v90;
          *v90 = v3;
          v90[1] = sub_1DAAEDD8C;
          v48 = v3 + 240;
        }

        else
        {
LABEL_31:
          v93 = v4;
          if (a1)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v99[0] = v71;
            *v70 = 136315394;
            *(v70 + 4) = sub_1DAA7ABE4(v98, v5, v99);
            *(v70 + 12) = 2080;
            *(v70 + 14) = sub_1DAA7ABE4(v4, v1, v99);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v71, -1, -1);
            MEMORY[0x1E1278C00](v70, -1, -1);
          }

          v72 = v5;
          v73 = *(v3 + 58);
          v75 = *(v3 + 312);
          v74 = *(v3 + 320);
          v76 = *(v3 + 288);
          v77 = *(v3 + 264);
          v78 = v77[5];
          v79 = v77[6];
          v96 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v77 + 2, v78);
          *(v3 + 64) = v76;
          *(v3 + 72) = v96;
          *(v3 + 88) = v75;
          *(v3 + 96) = v74;
          *(v3 + 104) = v73;
          *(v3 + 408) = (*(v79 + 192))(v98, v72, v93, v1, v3 + 64, v78, v79);

          v80 = *(MEMORY[0x1E69D6B08] + 4);
          v81 = swift_task_alloc();
          *(v3 + 416) = v81;
          *v81 = v3;
          v81[1] = sub_1DAAEE8E4;
          v48 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        v34 = *(v3 + 360);

        sub_1DACB71E4();
        v35 = sub_1DACB8C74();
        v36 = sub_1DACB9914();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v99[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1DAA7ABE4(v98, v17, v99);
          _os_log_impl(&dword_1DAA3F000, v35, v36, "Deprecating %s with no replacement", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E1278C00](v38, -1, -1);
          MEMORY[0x1E1278C00](v37, -1, -1);
        }

        v39 = *(v3 + 58);
        v41 = *(v3 + 312);
        v40 = *(v3 + 320);
        v42 = *(v3 + 288);
        v43 = *(v3 + 264);
        v44 = v43[5];
        v45 = v43[6];
        v95 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
        *(v3 + 16) = v42;
        *(v3 + 24) = v95;
        *(v3 + 40) = v41;
        *(v3 + 48) = v40;
        *(v3 + 56) = v39;
        *(v3 + 432) = (*(v45 + 168))(v98, v17, v3 + 16, v44, v45);

        v46 = *(MEMORY[0x1E69D6B08] + 4);
        v47 = swift_task_alloc();
        *(v3 + 440) = v47;
        *v47 = v3;
        v47[1] = sub_1DAAEF43C;
        v48 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v48);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v10 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v9 = *(a1 + 8 * v10 + 64);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_8;
    }
  }

  v30 = *(v3 + 272);
  v31 = *(v3 + 280);

  v32 = *(v3 + 8);

  return v32();
}

uint64_t sub_1DAAEF43C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  if (v0)
  {

    v6 = sub_1DAAF04C8;
  }

  else
  {
    v7 = v2[21];

    v6 = sub_1DAAEF584;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAAEF584(uint64_t a1)
{
  v100 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 448);
  v8 = *(v3 + 376);
  v9 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v9)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v9;
    *(v3 + 376) = v8;
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v8 << 6);
    v13 = *(a1 + 56) + 104 * v12;
    if (*(v13 + 80))
    {
      v14 = *(v3 + 360);
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      v92 = *(v13 + 88);
      v20 = *(v13 + 72);
      v21 = *(v13 + 56);
      v22 = *(v13 + 40);
      v94 = *(v13 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v23 = sub_1DACB8C74();
      v24 = sub_1DACB9914();

      v98 = v16;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v99[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1DAA7ABE4(v16, v17, v99);
        _os_log_impl(&dword_1DAA3F000, v23, v24, "Will deprecated stock, symbol=%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E1278C00](v26, -1, -1);
        MEMORY[0x1E1278C00](v25, -1, -1);
      }

      if (!v94)
      {
        goto LABEL_19;
      }

      v91 = v17;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v27 = qword_1EE13E3B8;
      v28 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v92, v94);
      if (v29)
      {
        goto LABEL_19;
      }

      *(v3 + 176) = 0;
      *(v3 + 184) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v49 = *(v3 + 176);
      v50 = *(v3 + 184);
      v51 = sub_1DACB94A4();

      if (v51)
      {
        goto LABEL_27;
      }

      *(v3 + 192) = 0;
      *(v3 + 200) = 0xE000000000000000;
      MEMORY[0x1E1276F20](v27, v28);
      sub_1DACB9204();
      v52 = *(v3 + 192);
      v53 = *(v3 + 200);
      v54 = sub_1DACB94A4();

      if (v54)
      {
LABEL_27:
        v55 = *(v3 + 360);
        v56 = *(v3 + 304);
        sub_1DACB71E4();
        v57 = sub_1DACB9424();
        v58 = sub_1DAAF0E30(v57, v92, v94);
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v4 = MEMORY[0x1E1276EB0](v58, v60, v62, v64);
        v1 = v65;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v66 = swift_task_alloc();
        *(v66 + 16) = v6;
        LOBYTE(v60) = sub_1DAC78448(sub_1DAA88710, v66, v56);

        v5 = v91;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v60)
        {
          if (a1)
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v99[0] = v68;
            *v67 = 136315394;
            *(v67 + 4) = sub_1DAA7ABE4(v98, v91, v99);
            *(v67 + 12) = 2080;
            v69 = sub_1DAA7ABE4(v4, v1, v99);

            *(v67 + 14) = v69;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v68, -1, -1);
            MEMORY[0x1E1278C00](v67, -1, -1);
          }

          else
          {
          }

          v82 = *(v3 + 58);
          v84 = *(v3 + 312);
          v83 = *(v3 + 320);
          v85 = *(v3 + 288);
          v86 = *(v3 + 264);
          v87 = v86[5];
          v88 = v86[6];
          v97 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v86 + 2, v87);
          *(v3 + 112) = v85;
          *(v3 + 120) = v97;
          *(v3 + 136) = v84;
          *(v3 + 144) = v83;
          *(v3 + 152) = v82;
          *(v3 + 384) = (*(v88 + 168))(v98, v91, v3 + 112, v87, v88);

          v89 = *(MEMORY[0x1E69D6B08] + 4);
          v90 = swift_task_alloc();
          *(v3 + 392) = v90;
          *v90 = v3;
          v90[1] = sub_1DAAEDD8C;
          v48 = v3 + 240;
        }

        else
        {
LABEL_31:
          v93 = v4;
          if (a1)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v99[0] = v71;
            *v70 = 136315394;
            *(v70 + 4) = sub_1DAA7ABE4(v98, v5, v99);
            *(v70 + 12) = 2080;
            *(v70 + 14) = sub_1DAA7ABE4(v4, v1, v99);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v71, -1, -1);
            MEMORY[0x1E1278C00](v70, -1, -1);
          }

          v72 = v5;
          v73 = *(v3 + 58);
          v75 = *(v3 + 312);
          v74 = *(v3 + 320);
          v76 = *(v3 + 288);
          v77 = *(v3 + 264);
          v78 = v77[5];
          v79 = v77[6];
          v96 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v77 + 2, v78);
          *(v3 + 64) = v76;
          *(v3 + 72) = v96;
          *(v3 + 88) = v75;
          *(v3 + 96) = v74;
          *(v3 + 104) = v73;
          *(v3 + 408) = (*(v79 + 192))(v98, v72, v93, v1, v3 + 64, v78, v79);

          v80 = *(MEMORY[0x1E69D6B08] + 4);
          v81 = swift_task_alloc();
          *(v3 + 416) = v81;
          *v81 = v3;
          v81[1] = sub_1DAAEE8E4;
          v48 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        v34 = *(v3 + 360);

        sub_1DACB71E4();
        v35 = sub_1DACB8C74();
        v36 = sub_1DACB9914();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v99[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1DAA7ABE4(v98, v17, v99);
          _os_log_impl(&dword_1DAA3F000, v35, v36, "Deprecating %s with no replacement", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1E1278C00](v38, -1, -1);
          MEMORY[0x1E1278C00](v37, -1, -1);
        }

        v39 = *(v3 + 58);
        v41 = *(v3 + 312);
        v40 = *(v3 + 320);
        v42 = *(v3 + 288);
        v43 = *(v3 + 264);
        v44 = v43[5];
        v45 = v43[6];
        v95 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
        *(v3 + 16) = v42;
        *(v3 + 24) = v95;
        *(v3 + 40) = v41;
        *(v3 + 48) = v40;
        *(v3 + 56) = v39;
        *(v3 + 432) = (*(v45 + 168))(v98, v17, v3 + 16, v44, v45);

        v46 = *(MEMORY[0x1E69D6B08] + 4);
        v47 = swift_task_alloc();
        *(v3 + 440) = v47;
        *v47 = v3;
        v47[1] = sub_1DAAEF43C;
        v48 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v48);
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v10 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v9 = *(a1 + 8 * v10 + 64);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_8;
    }
  }

  v30 = *(v3 + 272);
  v31 = *(v3 + 280);

  v32 = *(v3 + 8);

  return v32();
}

uint64_t sub_1DAAEFF94()
{
  v1 = v0[41];

  v2 = v0[43];
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE13E2D0);
  v4 = v2;
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9904();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Failed to deprecate stock in watchlist. Error=%@", v7, 0xCu);
    sub_1DAAF0D34(v8, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = v0[34];
  v11 = v0[35];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DAAF0150()
{
  v1 = v0[44];

  v2 = v0[50];
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE13E2D0);
  v4 = v2;
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9904();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Failed to deprecate stock in watchlist. Error=%@", v7, 0xCu);
    sub_1DAAF0D34(v8, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = v0[34];
  v11 = v0[35];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DAAF030C()
{
  v1 = v0[44];

  v2 = v0[53];
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE13E2D0);
  v4 = v2;
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9904();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Failed to deprecate stock in watchlist. Error=%@", v7, 0xCu);
    sub_1DAAF0D34(v8, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = v0[34];
  v11 = v0[35];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DAAF04C8()
{
  v1 = v0[44];

  v2 = v0[56];
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE13E2D0);
  v4 = v2;
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9904();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Failed to deprecate stock in watchlist. Error=%@", v7, 0xCu);
    sub_1DAAF0D34(v8, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = v0[34];
  v11 = v0[35];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DAAF0684()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAAEC598();
}

unint64_t sub_1DAAF0714(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1DACB94C4() != a1 || v9 != a2)
  {
    v10 = sub_1DACBA174();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1DACB9424();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DAAF0804(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v43 = a1[6];
    v44 = a1[5];
    v42 = a1[7];
    v40 = v8;
    v41 = a1[9];
    v37 = a1[11];
    v38 = a1[10];
    v10 = (a2 + 32);
    v45 = v2 - 1;
    v35 = a1[14];
    v36 = a1[12];
    v11 = a1[15];
    v32 = v11;
    v33 = a1[13];
    v34 = a1[16];
    v39 = v9;
    while (1)
    {
      v12 = v10[7];
      v53 = v10[6];
      v54 = v12;
      v55 = *(v10 + 16);
      v13 = v10[3];
      v49 = v10[2];
      v50 = v13;
      v14 = v10[5];
      v51 = v10[4];
      v52 = v14;
      v15 = v10[1];
      v47 = *v10;
      v48 = v15;
      if ((v47 != v5 || *(&v47 + 1) != v6) && (sub_1DACBA174() & 1) == 0 || (v48 != v7 || *(&v48 + 1) != v8) && (sub_1DACBA174() & 1) == 0 || (v49 != v9 || *(&v49 + 1) != v44) && (sub_1DACBA174() & 1) == 0 || (v50 != v43 || *(&v50 + 1) != v42) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_97;
      }

      if (v51 > 3u)
      {
        if (v51 > 5u)
        {
          if (v51 == 6)
          {
            v21 = 0xE500000000000000;
            v20 = 0x7865646E69;
            if (v4 <= 3)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v20 = 0x75466C617574756DLL;
            v21 = 0xEA0000000000646ELL;
            if (v4 <= 3)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          if (v51 == 4)
          {
            v20 = 6714469;
          }

          else
          {
            v20 = 0x73657275747566;
          }

          if (v51 == 4)
          {
            v21 = 0xE300000000000000;
          }

          else
          {
            v21 = 0xE700000000000000;
          }

          if (v4 <= 3)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v16 = 0x75636F7470797263;
        if (v51 != 2)
        {
          v16 = 0x797469757165;
        }

        v17 = 0xEE0079636E657272;
        if (v51 != 2)
        {
          v17 = 0xE600000000000000;
        }

        v18 = 0x79636E6572727563;
        if (!v51)
        {
          v18 = 0x6E776F6E6B6E75;
        }

        v19 = 0xE700000000000000;
        if (v51)
        {
          v19 = 0xE800000000000000;
        }

        if (v51 <= 1u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v51 <= 1u)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v4 <= 3)
        {
LABEL_60:
          if (v4 > 1)
          {
            if (v4 == 2)
            {
              v28 = 0x75636F7470797263;
            }

            else
            {
              v28 = 0x797469757165;
            }

            if (v4 == 2)
            {
              v27 = 0xEE0079636E657272;
            }

            else
            {
              v27 = 0xE600000000000000;
            }

            if (v20 != v28)
            {
              goto LABEL_75;
            }
          }

          else if (v4)
          {
            v27 = 0xE800000000000000;
            if (v20 != 0x79636E6572727563)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v27 = 0xE700000000000000;
            if (v20 != 0x6E776F6E6B6E75)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_73;
        }
      }

      v22 = 0x75466C617574756DLL;
      if (v4 == 6)
      {
        v22 = 0x7865646E69;
      }

      v23 = 0xEA0000000000646ELL;
      if (v4 == 6)
      {
        v23 = 0xE500000000000000;
      }

      v24 = 0x73657275747566;
      if (v4 == 4)
      {
        v24 = 6714469;
      }

      v25 = 0xE700000000000000;
      if (v4 == 4)
      {
        v25 = 0xE300000000000000;
      }

      if (v4 <= 5)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v4 <= 5)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      if (v20 != v26)
      {
LABEL_75:
        v29 = sub_1DACBA174();
        sub_1DAA806E4(&v47, v46);

        v9 = v39;
        v8 = v40;
        if ((v29 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_76;
      }

LABEL_73:
      if (v21 != v27)
      {
        goto LABEL_75;
      }

      sub_1DAA806E4(&v47, v46);

      v9 = v39;
      v8 = v40;
LABEL_76:
      if ((*(&v51 + 1) != v41 || v52 != v38) && (sub_1DACBA174() & 1) == 0 || (*(&v52 + 1) != v37 || v53 != v36) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_96;
      }

      if (v54)
      {
        if (!v35 || (*(&v53 + 1) != v33 || v54 != v35) && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else if (v35)
      {
        goto LABEL_96;
      }

      if (!v55)
      {
        if (!v34)
        {
          goto LABEL_101;
        }

LABEL_96:
        sub_1DAA9B1C8(&v47);
        goto LABEL_97;
      }

      if (!v34)
      {
        goto LABEL_96;
      }

      if (*(&v54 + 1) == v32 && v55 == v34)
      {
LABEL_101:
        sub_1DAA9B1C8(&v47);
        return v3;
      }

      v30 = sub_1DACBA174();
      sub_1DAA9B1C8(&v47);
      if (v30)
      {
        return v3;
      }

LABEL_97:
      if (v45 == v3)
      {
        return 0;
      }

      v10 = (v10 + 136);
      ++v3;
    }
  }

  return 0;
}

uint64_t sub_1DAAF0D34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAAF0D90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAAF0D90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAAF0DE4()
{
  result = qword_1EE11F798;
  if (!qword_1EE11F798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F798);
  }

  return result;
}

unint64_t sub_1DAAF0E30(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1DACB94E4();
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DAAF0E98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAAF0EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore11SDSMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1DAAF0F70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DAAF0FB8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DAAF1014(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646174654D736473;
  }

  else
  {
    v4 = 0x6D6574497377656ELL;
  }

  if (v3)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v6 = 0x646174654D736473;
  }

  else
  {
    v6 = 0x6D6574497377656ELL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000617461;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAAF10C8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1158()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAAF11D4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1260@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DAAF12C0(uint64_t *a1@<X8>)
{
  v2 = 0x6D6574497377656ELL;
  if (*v1)
  {
    v2 = 0x646174654D736473;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xEB00000000617461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAAF130C()
{
  if (*v0)
  {
    result = 0x646174654D736473;
  }

  else
  {
    result = 0x6D6574497377656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DAAF1354@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAAF13B8(uint64_t a1)
{
  v2 = sub_1DAAF2370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF13F4(uint64_t a1)
{
  v2 = sub_1DAAF2370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAF1430(void *a1)
{
  v3 = v1;
  sub_1DAAF282C(0, &qword_1ECBE6C30, sub_1DAAF2370, &type metadata for SDSNewsResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF2370();
  sub_1DACBA304();
  *&v14[0] = *v3;
  v16 = 0;
  sub_1DAAF23C4();
  sub_1DAAF2894(&qword_1ECBE6C38, sub_1DAAF2900);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v14[0] = *(v3 + 8);
    v14[1] = v12;
    v15 = *(v3 + 40);
    v16 = 1;
    sub_1DAA6EF04();
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAAF1648()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1728()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAAF17F4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF18D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAAF2468();
  *a2 = result;
  return result;
}

void sub_1DAAF1900(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x72656469766F7270;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7573;
  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 3)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x446873696C627570;
    v3 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAAF199C()
{
  v1 = *v0;
  v2 = 0x72656469766F7270;
  v3 = 0x7972616D6D7573;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x446873696C627570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAAF1A34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAAF2468();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAF1A68(uint64_t a1)
{
  v2 = sub_1DAAF27D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF1AA4(uint64_t a1)
{
  v2 = sub_1DAAF27D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAF1AE0(void *a1)
{
  v3 = v1;
  sub_1DAAF282C(0, &qword_1ECBE6C28, sub_1DAAF27D8, &type metadata for SDSNewsResponse.SDSNewsResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF27D8();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v28 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v27 = 1;
    sub_1DACBA094();
    v16 = v3[4];
    v17 = v3[5];
    v26 = 2;
    sub_1DACBA024();
    v18 = v3[6];
    v19 = v3[7];
    v25 = 3;
    sub_1DACBA094();
    v20 = v3[8];
    v21 = v3[9];
    v24 = 4;
    sub_1DACBA094();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1DAAF1CCC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAAF24B4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1DAAF1D30(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v15 = a1[9];
  v16 = a1[8];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13 = a2[9];
  v14 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v17 != v10 || v18 != v11) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DACBA174();
}

double sub_1DAAF1EB8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DAAF20D4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_1DAAF1F14(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DAAF1F5C(v7, v8);
}

BOOL sub_1DAAF1F5C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1DAC37DEC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1];
  v4 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  if (!v4)
  {
    if (!v9)
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (!v9)
  {
LABEL_6:
    sub_1DAAF2954(v10, v9);
    sub_1DAAF2954(v5, v4);
    sub_1DAA75E60(v5, v4);
    sub_1DAA75E60(v10, v9);
    return 0;
  }

  v16[0] = v5;
  v16[1] = v4;
  v16[2] = v7;
  v16[3] = v6;
  v16[4] = v8;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  sub_1DAAF2954(v10, v9);
  sub_1DAAF2954(v5, v4);
  v14 = sub_1DAC3C194(v16, v17);

  sub_1DAA75E60(v5, v4);
  return v14;
}

uint64_t sub_1DAAF20D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1DAAF282C(0, &qword_1ECBE6BF0, sub_1DAAF2370, &type metadata for SDSNewsResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF2370();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v19;
  sub_1DAAF23C4();
  v23 = 0;
  sub_1DAAF2894(&qword_1ECBE6C08, sub_1DAAF2414);
  sub_1DACB9F84();
  if (v20)
  {
    v13 = v20;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v23 = 1;
  sub_1DAA6EEB0();
  sub_1DACB9F84();
  (*(v11 + 8))(v9, v5);
  v14 = v22;
  v17 = v21;
  v18 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v13;
  v16 = v18;
  *(v12 + 24) = v17;
  *(v12 + 8) = v16;
  *(v12 + 40) = v14;
  return result;
}

unint64_t sub_1DAAF2370()
{
  result = qword_1ECBE6BF8;
  if (!qword_1ECBE6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BF8);
  }

  return result;
}

void sub_1DAAF23C4()
{
  if (!qword_1ECBE6C00)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6C00);
    }
  }
}

unint64_t sub_1DAAF2414()
{
  result = qword_1ECBE6C10;
  if (!qword_1ECBE6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C10);
  }

  return result;
}

uint64_t sub_1DAAF2468()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAAF24B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1DAAF282C(0, &qword_1ECBE6C18, sub_1DAAF27D8, &type metadata for SDSNewsResponse.SDSNewsResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF27D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v40 = 0;
  v12 = v5;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v39 = 1;
  v16 = sub_1DACB9FA4();
  v18 = v17;
  v34 = v16;
  v38 = 2;
  v32 = sub_1DACB9F34();
  v33 = v19;
  v37 = 3;
  v30 = sub_1DACB9FA4();
  v31 = v20;
  v36 = 4;
  v21 = sub_1DACB9FA4();
  v22 = v9;
  v24 = v23;
  (*(v11 + 8))(v22, v12);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v34;
  v27 = v35;
  *v35 = v13;
  v27[1] = v15;
  v27[2] = v26;
  v27[3] = v18;
  v28 = v33;
  v27[4] = v32;
  v27[5] = v28;
  v29 = v31;
  v27[6] = v30;
  v27[7] = v29;
  v27[8] = v21;
  v27[9] = v24;
  return result;
}

unint64_t sub_1DAAF27D8()
{
  result = qword_1ECBE6C20;
  if (!qword_1ECBE6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C20);
  }

  return result;
}

void sub_1DAAF282C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DAAF2894(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAAF23C4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAF2900()
{
  result = qword_1ECBE6C40;
  if (!qword_1ECBE6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C40);
  }

  return result;
}

uint64_t sub_1DAAF2954(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DAAF29C8()
{
  result = qword_1ECBE6C48;
  if (!qword_1ECBE6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C48);
  }

  return result;
}

unint64_t sub_1DAAF2A20()
{
  result = qword_1ECBE6C50;
  if (!qword_1ECBE6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C50);
  }

  return result;
}

unint64_t sub_1DAAF2A78()
{
  result = qword_1ECBE6C58;
  if (!qword_1ECBE6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C58);
  }

  return result;
}

unint64_t sub_1DAAF2AD0()
{
  result = qword_1ECBE6C60;
  if (!qword_1ECBE6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C60);
  }

  return result;
}

unint64_t sub_1DAAF2B28()
{
  result = qword_1ECBE6C68;
  if (!qword_1ECBE6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C68);
  }

  return result;
}

unint64_t sub_1DAAF2B80()
{
  result = qword_1ECBE6C70;
  if (!qword_1ECBE6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C70);
  }

  return result;
}

unint64_t sub_1DAAF2BE8()
{
  result = qword_1ECBE6C78;
  if (!qword_1ECBE6C78)
  {
    sub_1DAAF2C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C78);
  }

  return result;
}

void sub_1DAAF2C40()
{
  if (!qword_1ECBE6C80)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6C80);
    }
  }
}

unint64_t sub_1DAAF2CA4()
{
  result = qword_1ECBE6C88;
  if (!qword_1ECBE6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C88);
  }

  return result;
}

uint64_t sub_1DAAF2D1C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE6C90);
  __swift_project_value_buffer(v9, qword_1ECBE6C90);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAF2F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAAF2FB4()
{
  sub_1DAAF5D74(0, &qword_1ECBE6CA8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAAF5D74(0, &qword_1ECBE6CB0, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAAF3184();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAF31FC();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAAF3184()
{
  result = qword_1EE11E6B8;
  if (!qword_1EE11E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6B8);
  }

  return result;
}

void sub_1DAAF31FC()
{
  if (!qword_1ECBE6CB8)
  {
    sub_1DAAF5D74(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6CB8);
    }
  }
}

uint64_t sub_1DAAF3294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAAF3320(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAAF3360(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAF33F8(uint64_t a1, uint64_t *a2)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1DAAF35B8(a1, &v15 - v9);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  sub_1DAAF35B8(v10, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAF3638(v10);
}

uint64_t sub_1DAAF3510(uint64_t a1)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *(v1 + 8);
  sub_1DAAF35B8(a1, &v8 - v6);
  sub_1DACB6FC4();
  return sub_1DAAF3638(a1);
}

uint64_t sub_1DAAF35B8(uint64_t a1, uint64_t a2)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAF3638(uint64_t a1)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1DAAF36B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAF376C(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v8);
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_1DAA4D678(v8, &v7);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DAAF37F8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAAF383C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAAF38D4@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v63 = v48 - v3;
  v67 = sub_1DACB7274();
  v69 = *(v67 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1440(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v48 - v10;
  sub_1DAAA1440(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = v48 - v13;
  v14 = sub_1DACB78E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB7E44();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1DACB92E4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1DACB7904();
  v59 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v48[1] = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAF5D74(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v61 = v27;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = *(v15 + 104);
  v49 = *MEMORY[0x1E6968DF0];
  v28 = v49;
  v50 = v14;
  v29(v18, v49, v14);
  v51 = v29;
  v52 = v15 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29(v18, v28, v14);
  v30 = v55;
  sub_1DACB7914();
  v31 = *(v24 + 56);
  v58 = v24 + 56;
  v60 = v31;
  v31(v30, 0, 1, v23);
  v32 = sub_1DACB6E84();
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v57 = v34;
  v56 = v33 + 56;
  v34(v64, 1, 1, v32);
  v34(v65, 1, 1, v32);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  v62 = sub_1DACB6D94();
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  sub_1DACB6D84();
  *&v70 = sub_1DACB6D54();
  v53 = *MEMORY[0x1E695A500];
  v35 = *(v69 + 104);
  v69 += 104;
  v54 = v35;
  v35(v66);
  sub_1DAAF4218();
  sub_1DAADA468();
  *v68 = sub_1DACB6FF4();
  sub_1DAAF426C();
  v61 = v36;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v51(v18, v49, v50);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v39(v18, v37, v38);
  sub_1DACB7914();
  v60(v30, 0, 1, v59);
  v40 = type metadata accessor for SymbolEntity();
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  v41 = v57;
  v57(v64, 1, 1, v32);
  v41(v65, 1, 1, v32);
  *&v70 = sub_1DAB1CC4C();
  *(&v70 + 1) = v42;
  *&v71 = v43;
  *(&v71 + 1) = v44;
  v54(v66, v53, v67);
  sub_1DAAF59D0();
  v45 = sub_1DACB7004();
  v46 = v68;
  v68[1] = v45;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v46[2] = result;
  return result;
}

void sub_1DAAF41C0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1DAA4436C(255, a3);
    v4 = sub_1DACB6D64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAAF4218()
{
  result = qword_1ECBE6CC0;
  if (!qword_1ECBE6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CC0);
  }

  return result;
}

void sub_1DAAF426C()
{
  if (!qword_1ECBE6CC8)
  {
    sub_1DAAA1440(255, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    sub_1DAAA11C4();
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6CC8);
    }
  }
}

uint64_t sub_1DAAF42EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v75 = a2;
  v82 = a3;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = v57 - v8;
  v81 = sub_1DACB7274();
  v83 = *(v81 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1440(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = v57 - v15;
  sub_1DAAA1440(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v76 = v57 - v18;
  v19 = sub_1DACB78E4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DACB7E44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = sub_1DACB92E4();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v77 = sub_1DACB7904();
  v28 = *(v77 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v57[2] = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *a1;
  sub_1DAAF5D74(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v68 = v31;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32 = *(v20 + 104);
  v33 = *MEMORY[0x1E6968DF0];
  v69 = "Symbol to Watchlist' intent";
  v71 = *(a1 + 1);
  v34 = v33;
  v58 = v33;
  v59 = v19;
  v32(v23);
  v61 = v32;
  v60 = v20 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  (v32)(v23, v34, v19);
  v35 = v76;
  sub_1DACB7914();
  v36 = *(v28 + 56);
  v66 = v28 + 56;
  v67 = v36;
  v36(v35, 0, 1, v77);
  v37 = sub_1DACB6E84();
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v65 = v39;
  v64 = v38 + 56;
  v39(v78, 1, 1, v37);
  v39(v79, 1, 1, v37);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  v70 = sub_1DACB6D94();
  memset(v84, 0, sizeof(v84));
  v85 = 0;
  sub_1DACB6D84();
  *&v84[0] = sub_1DACB6D54();
  v62 = *MEMORY[0x1E695A500];
  v40 = *(v83 + 104);
  v83 += 104;
  v63 = v40;
  v40(v80);
  sub_1DAAF4218();
  sub_1DAADA468();
  v41 = v76;
  v68 = sub_1DACB6FF4();
  *v82 = v68;
  sub_1DAAF426C();
  v57[1] = v42;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v43 = v58;
  v44 = v59;
  v45 = v61;
  (v61)(v23, v58, v59);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v45(v23, v43, v44);
  sub_1DACB7914();
  v67(v41, 0, 1, v77);
  v46 = type metadata accessor for SymbolEntity();
  v47 = v73;
  (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
  v48 = v65;
  v65(v78, 1, 1, v37);
  v48(v79, 1, 1, v37);
  *&v84[0] = sub_1DAB1CC4C();
  *(&v84[0] + 1) = v49;
  *&v84[1] = v50;
  *(&v84[1] + 1) = v51;
  v63(v80, v62, v81);
  sub_1DAAF59D0();
  v52 = v47;
  v53 = sub_1DACB7004();
  v54 = v82;
  v82[1] = v53;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948);
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  sub_1DACB6D84();
  v54[2] = sub_1DACB6D54();
  *&v84[0] = v72;
  *(v84 + 8) = v71;
  sub_1DACB6FC4();
  v55 = v75;
  sub_1DAAF35B8(v75, v52);
  sub_1DAAF35B8(v52, v74);
  sub_1DACB6FC4();
  sub_1DAAF3638(v55);
  return sub_1DAAF3638(v52);
}

uint64_t sub_1DAAF4CC8(uint64_t a1)
{
  *(v2 + 160) = a1;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v5 = type metadata accessor for SymbolEntity();
  *(v2 + 176) = v5;
  v6 = *(v5 - 8);
  *(v2 + 184) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAAF4DEC, 0, 0);
}

uint64_t sub_1DAAF4DEC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1DACB6D24();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[12] = v3;
  v0[13] = v2;
  v0[14] = v1 | 0x6000000000000000;
  v6 = *(v5 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1DAAF4F6C;

  return (v10)(v0 + 12, v4, v5);
}

uint64_t sub_1DAAF4F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v6 = *v1;
  v2[30] = v0;

  sub_1DAAF5A24(v2[12], v2[13], v2[14]);
  if (v0)
  {
    v4 = sub_1DAAF5490;
  }

  else
  {
    v4 = sub_1DAAF508C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAAF508C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 160);
    sub_1DAAF3638(*(v0 + 168));
    sub_1DACB6EB4();
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 168);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 224);
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    sub_1DAAF5AA4(*(v0 + 168), v12);
    sub_1DACB6D24();
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
    sub_1DAAA2C80(v12, v13);
    sub_1DAC45D08(v13, (v0 + 144));
    *(v0 + 120) = *(v0 + 144);
    *(v0 + 136) = 0x4000000000000000;
    v16 = *(v15 + 8);
    v19 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_1DAAF52AC;

    return v19(v0 + 120, v14, v15);
  }
}

uint64_t sub_1DAAF52AC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  v2[32] = v0;

  sub_1DAAF5A24(v2[15], v2[16], v2[17]);
  if (v0)
  {
    v5 = sub_1DAAF5518;
  }

  else
  {
    v5 = sub_1DAAF53F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAAF53F8()
{
  v1 = v0[25];
  v2 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_1DACB6EB4();
  sub_1DAAD5434(v1);
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAAF5490()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAAF5518()
{
  sub_1DAAD5434(v0[25]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAAF55CC(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAAF560C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAF5680@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAAF5728()
{
  sub_1DAAF5D74(0, &qword_1ECBE6CA8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAAF5D74(0, &qword_1ECBE6CB0, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAF31FC();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAAF58F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAAF4CC8(a1);
}

uint64_t sub_1DAAF5994(uint64_t a1)
{
  v2 = sub_1DAAF3184();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAAF59D0()
{
  result = qword_1ECBE6CD0;
  if (!qword_1ECBE6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CD0);
  }

  return result;
}

uint64_t sub_1DAAF5A24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v3 >= 2)
    {
      return result;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_1DAAF5AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAAF5B0C()
{
  result = qword_1ECBE6CD8;
  if (!qword_1ECBE6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CD8);
  }

  return result;
}

unint64_t sub_1DAAF5B68()
{
  result = qword_1EE11E6B0;
  if (!qword_1EE11E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6B0);
  }

  return result;
}

unint64_t sub_1DAAF5BC0()
{
  result = qword_1EE11E6C0;
  if (!qword_1EE11E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6C0);
  }

  return result;
}

uint64_t sub_1DAAF5C4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DAAF5C94(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAAF5CE4()
{
  result = qword_1ECBE6CE0;
  if (!qword_1ECBE6CE0)
  {
    sub_1DAAF5D74(255, &qword_1ECBE6CE8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CE0);
  }

  return result;
}

void sub_1DAAF5D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t AdConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAAF6974(0, &qword_1EE123CE0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF6424();
  sub_1DACBA2F4();
  if (!v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    LOBYTE(v31) = 0;
    sub_1DACB9F84();
    v30 = v35;
    if (v35 == 2)
    {
      swift_beginAccess();
      v12 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DAA9A3B0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = 0x73746E656D676573;
      *(v15 + 5) = 0xEF64656C62616E45;
      v36 = v12;
      swift_endAccess();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v35 = 1;
    sub_1DACB9F84();
    v16 = v31;
    v29 = v32;
    if (v32)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DAA9A3B0(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = 0xD00000000000001FLL;
      *(v19 + 5) = 0x80000001DACE3FD0;
      v36 = v12;
      swift_endAccess();
    }

    LOBYTE(v31) = 2;
    sub_1DACB9F84();
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DAA9A3B0(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v23 = &v12[16 * v22];
      *(v23 + 4) = 0xD000000000000022;
      *(v23 + 5) = 0x80000001DACE3FF0;
      v24 = 1.0;
      if (v29)
      {
        v16 = 1.0;
      }
    }

    else
    {
      v24 = v33;
      if (v29)
      {
        v16 = 1.0;
      }

      if (!*(v12 + 2))
      {
        sub_1DAA41DCC();
        v27 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_27;
      }
    }

    sub_1DAA4DCBC(0, &qword_1EE123B20, sub_1DAADF88C);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v25 + 56) = v26;
    *(v25 + 64) = sub_1DAAF691C();
    *(v25 + 32) = v12;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v27 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

LABEL_27:

    (*(v7 + 8))(v10, v6);

    *a2 = v30 & 1;
    *(a2 + 8) = v16;
    *(a2 + 16) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAAF63B8()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E656D676573;
  }
}

unint64_t sub_1DAAF6424()
{
  result = qword_1EE124ED0;
  if (!qword_1EE124ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124ED0);
  }

  return result;
}

uint64_t sub_1DAAF6478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAF6B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAF64A0(uint64_t a1)
{
  v2 = sub_1DAAF6424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF64DC(uint64_t a1)
{
  v2 = sub_1DAAF6424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdConfiguration.encode(to:)(void *a1)
{
  sub_1DAAF6974(0, &qword_1EE123C20, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = *v1;
  v12 = *(v1 + 1);
  v11 = *(v1 + 2);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF6424();
  sub_1DACBA304();
  v18 = 0;
  sub_1DACBA0A4();
  if (!v2)
  {
    v17 = 1;
    sub_1DACBA0B4();
    v16 = 2;
    sub_1DACBA0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1DAAF671C(char *a1)
{
  v1 = *a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DAA4DCBC(0, &qword_1EE11F4A0, sub_1DAAF6CC4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  sub_1DACB9C14();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = v1;
  sub_1DACB9C14();
  v6 = MEMORY[0x1E69E63B0];
  *(inited + 168) = MEMORY[0x1E69E63B0];
  *(inited + 144) = v3;
  sub_1DACB9C14();
  *(inited + 240) = v6;
  *(inited + 216) = v2;
  sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAAF6CC4();
  swift_arrayDestroy();
  v7 = sub_1DACB9114();

  v8 = [v4 initWithConfigDictionary_];

  if (!v8)
  {
    __break(1u);
  }
}

uint64_t sub_1DAAF690C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_1DAAF691C()
{
  result = qword_1EE123E80;
  if (!qword_1EE123E80)
  {
    sub_1DAA613E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E80);
  }

  return result;
}

void sub_1DAAF6974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAF6424();
    v7 = a3(a1, &type metadata for AdConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AdConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DAAF6A94()
{
  result = qword_1ECBE6CF0;
  if (!qword_1ECBE6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CF0);
  }

  return result;
}

unint64_t sub_1DAAF6AEC()
{
  result = qword_1EE124EC0;
  if (!qword_1EE124EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EC0);
  }

  return result;
}

unint64_t sub_1DAAF6B44()
{
  result = qword_1EE124EC8;
  if (!qword_1EE124EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EC8);
  }

  return result;
}

uint64_t sub_1DAAF6B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D676573 && a2 == 0xEF64656C62616E45;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE3FD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACE3FF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1DAAF6CC4()
{
  if (!qword_1EE11F770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F770);
    }
  }
}

void *PaywallConfig.init(paywallType:title:descriptionTrial:descriptionNonTrial:learnMoreTitle:learnMoreURL:subscriptionButton:visualSpecification:compactPortraitTopOffsetRatio:compactLandscapeTopOffsetRatio:regularPortraitTopOffsetRatio:regularLandscapeTopOffsetRatio:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, const void *a15, double a16, char a17, double a18, char a19, double a20, char a21, double a22, char a23)
{
  v23 = a2;
  v26 = a13;
  v28 = a11;
  if (!a2)
  {
    a1 = 0;
    v23 = 0xE000000000000000;
  }

  if (!a4)
  {
    a3 = 0;
    a4 = 0xE000000000000000;
  }

  if (!a6)
  {
    a5 = 0;
    a6 = 0xE000000000000000;
  }

  if (!a8)
  {
    a7 = 0;
    a8 = 0xE000000000000000;
  }

  if (!a11)
  {
    a10 = 0;
    v28 = 0xE000000000000000;
  }

  if (!a13)
  {
    a12 = 0;
    v26 = 0xE000000000000000;
  }

  if (a17)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = a16;
  }

  *a9 = a1;
  *(a9 + 8) = v23;
  if (a19)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = a18;
  }

  if (a21)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = a20;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (a23)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = a22;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = v28;
  *(a9 + 80) = a12;
  *(a9 + 88) = v26;
  v33 = *(a14 + 112);
  *(a9 + 192) = *(a14 + 96);
  *(a9 + 208) = v33;
  *(a9 + 224) = *(a14 + 128);
  *(a9 + 240) = *(a14 + 144);
  v34 = *(a14 + 48);
  *(a9 + 128) = *(a14 + 32);
  *(a9 + 144) = v34;
  v35 = *(a14 + 80);
  *(a9 + 160) = *(a14 + 64);
  *(a9 + 176) = v35;
  v36 = *(a14 + 16);
  *(a9 + 96) = *a14;
  *(a9 + 112) = v36;
  result = memcpy((a9 + 248), a15, 0x170uLL);
  *(a9 + 616) = v29;
  *(a9 + 624) = v30;
  *(a9 + 632) = v31;
  *(a9 + 640) = v32;
  return result;
}

unint64_t sub_1DAAF6E5C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001DLL;
      if (a1 != 10)
      {
        v6 = 0xD00000000000001ELL;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001ELL;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000013;
      if (a1 != 7)
      {
        v5 = 0xD00000000000001DLL;
      }

      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x546C6C6177796170;
    v2 = 0x726F4D6E7261656CLL;
    if (a1 != 4)
    {
      v2 = 0x726F4D6E7261656CLL;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (a1 == 1)
    {
      v3 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAAF7004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAAF6E5C(*a1);
  v5 = v4;
  if (v3 == sub_1DAAF6E5C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAAF708C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAAF6E5C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF70F0()
{
  sub_1DAAF6E5C(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAAF7144()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAAF6E5C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF71A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAAF9B60();
  *a2 = result;
  return result;
}

unint64_t sub_1DAAF71D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAAF6E5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAAF721C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAAF9B60();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAF7250(uint64_t a1)
{
  v2 = sub_1DAAF84B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF728C(uint64_t a1)
{
  v2 = sub_1DAAF84B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PaywallConfig.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1DAAF9670(0, &qword_1EE123CF8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v87 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAAF84B8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v13 = v7;
    v102 = a2;
    v141 = MEMORY[0x1E69E7CC0];
    v115[0] = 0;
    sub_1DACB9F84();
    v101 = v116[0];
    v14 = v116[1];
    if (v116[1])
    {
      v15 = v13;
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v16 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[16 * v18];
      *(v19 + 4) = 0x546C6C6177796170;
      *(v19 + 5) = 0xEB00000000657079;
      v141 = v16;
      swift_endAccess();
      v15 = v13;
    }

    v115[0] = 1;
    sub_1DACB9F84();
    v99 = v116[0];
    v100 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[16 * v21];
      *(v22 + 4) = 0x656C746974;
      *(v22 + 5) = 0xE500000000000000;
      v141 = v16;
      swift_endAccess();
      v15 = v13;
    }

    v115[0] = 2;
    sub_1DACB9F84();
    v96 = v116[0];
    v98 = v116[1];
    if (!v116[1])
    {
      v97 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        v16 = sub_1DAA9A3B0((v23 > 1), v24 + 1, 1, v16);
      }

      *(v16 + 2) = v24 + 1;
      v25 = &v16[16 * v24];
      *(v25 + 4) = 0xD000000000000010;
      *(v25 + 5) = 0x80000001DACE0D90;
      v141 = v16;
      swift_endAccess();
      v2 = v97;
    }

    v115[0] = 3;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v15 + 8))(v10, v6);
LABEL_42:

      return __swift_destroy_boxed_opaque_existential_1(v142);
    }

    v94 = v116[0];
    v95 = v116[1];
    if (!v116[1])
    {
      v97 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v27 = *(v16 + 2);
      v26 = *(v16 + 3);
      if (v27 >= v26 >> 1)
      {
        v16 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v16);
      }

      *(v16 + 2) = v27 + 1;
      v28 = &v16[16 * v27];
      *(v28 + 4) = 0xD000000000000013;
      *(v28 + 5) = 0x80000001DACE0DB0;
      v141 = v16;
      swift_endAccess();
      v2 = v97;
    }

    v115[0] = 4;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v15 + 8))(v10, v6);

      goto LABEL_42;
    }

    v93 = v116[0];
    v97 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v30 = *(v16 + 2);
      v29 = *(v16 + 3);
      if (v30 >= v29 >> 1)
      {
        v16 = sub_1DAA9A3B0((v29 > 1), v30 + 1, 1, v16);
      }

      *(v16 + 2) = v30 + 1;
      v31 = &v16[16 * v30];
      strcpy(v31 + 32, "learnMoreTitle");
      v31[47] = -18;
      v141 = v16;
      swift_endAccess();
    }

    v115[0] = 5;
    sub_1DACB9F84();
    v91 = v116[0];
    v92 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      strcpy(v34 + 32, "learnMoreURL");
      v34[45] = 0;
      *(v34 + 23) = -5120;
      v141 = v16;
      swift_endAccess();
    }

    v140 = 6;
    sub_1DAAF8A6C();
    sub_1DACB9F84();
    v128[6] = v136;
    v128[7] = v137;
    v128[8] = v138;
    v129 = v139;
    v128[2] = v132;
    v128[3] = v133;
    v128[4] = v134;
    v128[5] = v135;
    v128[0] = v130;
    v128[1] = v131;
    if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v128) == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v90 = v37 + 1;
        v84 = v16;
        v85 = v37;
        v86 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v84);
        v38 = v90;
        v37 = v85;
        v16 = v86;
      }

      *(v16 + 2) = v38;
      v39 = &v16[16 * v37];
      *(v39 + 4) = 0xD000000000000012;
      *(v39 + 5) = 0x80000001DACE0DE0;
      v141 = v16;
      swift_endAccess();
    }

    v124 = v136;
    v125 = v137;
    v126 = v138;
    v127 = v139;
    v120 = v132;
    v121 = v133;
    v122 = v134;
    v123 = v135;
    v118 = v130;
    v119 = v131;
    v117[375] = 7;
    sub_1DAAF8AC0();
    sub_1DACB9F84();
    memcpy(v116, v117, sizeof(v116));
    if (sub_1DAAF8B14(v116) == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v41 = *(v16 + 2);
      v40 = *(v16 + 3);
      if (v41 >= v40 >> 1)
      {
        v16 = sub_1DAA9A3B0((v40 > 1), v41 + 1, 1, v16);
      }

      *(v16 + 2) = v41 + 1;
      v42 = &v16[16 * v41];
      *(v42 + 4) = 0xD000000000000013;
      *(v42 + 5) = 0x80000001DACE0E00;
      v141 = v16;
      swift_endAccess();
    }

    memcpy(v115, v117, sizeof(v115));
    v114 = 8;
    sub_1DACB9F84();
    v43 = *&v104;
    v44 = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v46 = *(v16 + 2);
      v45 = *(v16 + 3);
      v90 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v16 = sub_1DAA9A3B0((v45 > 1), v90, 1, v16);
      }

      *(v16 + 2) = v90;
      v47 = &v16[16 * v46];
      *(v47 + 4) = 0xD00000000000001DLL;
      *(v47 + 5) = 0x80000001DACE0E20;
      v141 = v16;
      swift_endAccess();
    }

    v114 = 9;
    sub_1DACB9F84();
    v48 = *&v104;
    LODWORD(v90) = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v50 = *(v16 + 2);
      v49 = *(v16 + 3);
      v89 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v16 = sub_1DAA9A3B0((v49 > 1), v89, 1, v16);
      }

      *(v16 + 2) = v89;
      v51 = &v16[16 * v50];
      *(v51 + 4) = 0xD00000000000001ELL;
      *(v51 + 5) = 0x80000001DACE0E40;
      v141 = v16;
      swift_endAccess();
    }

    v114 = 10;
    sub_1DACB9F84();
    v52 = *&v104;
    LODWORD(v89) = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v54 = *(v16 + 2);
      v53 = *(v16 + 3);
      v88 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v16 = sub_1DAA9A3B0((v53 > 1), v88, 1, v16);
      }

      *(v16 + 2) = v88;
      v55 = &v16[16 * v54];
      *(v55 + 4) = 0xD00000000000001DLL;
      *(v55 + 5) = 0x80000001DACE0E60;
      v141 = v16;
      swift_endAccess();
    }

    LOBYTE(v104) = 11;
    sub_1DACB9F84();
    if (v103[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
      }

      v57 = *(v16 + 2);
      v56 = *(v16 + 3);
      v88 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v16 = sub_1DAA9A3B0((v56 > 1), v88, 1, v16);
      }

      *(v16 + 2) = v88;
      v58 = &v16[16 * v57];
      *(v58 + 4) = 0xD00000000000001ELL;
      *(v58 + 5) = 0x80000001DACE0E80;
      v59 = 0;
    }

    else
    {
      v59 = v103[0];
    }

    if (v14)
    {
      v60 = v101;
    }

    else
    {
      v60 = 0;
    }

    v113 = v127;
    v61 = 0xE000000000000000;
    if (!v14)
    {
      v14 = 0xE000000000000000;
    }

    v63 = v99;
    v62 = v100;
    if (!v100)
    {
      v63 = 0;
    }

    v99 = v63;
    if (!v100)
    {
      v62 = 0xE000000000000000;
    }

    v100 = v62;
    v101 = v60;
    v64 = v98;
    if (v98)
    {
      v65 = v96;
    }

    else
    {
      v65 = 0;
    }

    if (!v98)
    {
      v64 = 0xE000000000000000;
    }

    v98 = v64;
    v67 = v94;
    v66 = v95;
    v110 = v124;
    v111 = v125;
    if (!v95)
    {
      v67 = 0;
    }

    v94 = v67;
    if (!v95)
    {
      v66 = 0xE000000000000000;
    }

    v95 = v66;
    v96 = v65;
    v68 = v97;
    if (v97)
    {
      v69 = v93;
    }

    else
    {
      v69 = 0;
    }

    v112 = v126;
    if (!v97)
    {
      v68 = 0xE000000000000000;
    }

    v97 = v68;
    v70 = v91;
    if (!v92)
    {
      v70 = 0;
    }

    v91 = v70;
    if (v92)
    {
      v61 = v92;
    }

    v92 = v61;
    v93 = v69;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v104 = v118;
    v105 = v119;
    memcpy(v103, v115, sizeof(v103));
    if (v44)
    {
      v43 = 0.0;
    }

    if (v90)
    {
      v48 = 0.0;
    }

    if (v89)
    {
      v52 = 0.0;
    }

    if (*(v16 + 2))
    {
      sub_1DAA41D64();
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1DACC1D20;
      sub_1DAAF8B9C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v71 + 56) = v72;
      *(v71 + 64) = sub_1DAAF691C();
      *(v71 + 32) = v16;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v73 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41DCC();
      v73 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    (*(v13 + 8))(v10, v6);

    v74 = v102;
    *v102 = v101;
    v74[1] = v14;
    v75 = v100;
    v74[2] = v99;
    v74[3] = v75;
    v76 = v98;
    v74[4] = v96;
    v74[5] = v76;
    v77 = v95;
    v74[6] = v94;
    v74[7] = v77;
    v78 = v97;
    v74[8] = v93;
    v74[9] = v78;
    v79 = v92;
    v74[10] = v91;
    v74[11] = v79;
    v80 = v111;
    *(v74 + 12) = v110;
    *(v74 + 13) = v80;
    *(v74 + 14) = v112;
    v74[30] = v113;
    v81 = v107;
    *(v74 + 8) = v106;
    *(v74 + 9) = v81;
    v82 = v109;
    *(v74 + 10) = v108;
    *(v74 + 11) = v82;
    v83 = v105;
    *(v74 + 6) = v104;
    *(v74 + 7) = v83;
    memcpy(v74 + 31, v103, 0x170uLL);
    *(v74 + 77) = v43;
    *(v74 + 78) = v48;
    *(v74 + 79) = v52;
    v74[80] = v59;
  }

  return __swift_destroy_boxed_opaque_existential_1(v142);
}

unint64_t sub_1DAAF84B8()
{
  result = qword_1EE124FF8[0];
  if (!qword_1EE124FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124FF8);
  }

  return result;
}

uint64_t PaywallConfig.encode(to:)(void *a1)
{
  sub_1DAAF9670(0, &qword_1EE123C30, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v27 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v27[10] = v1[2];
  v27[11] = v9;
  v12 = v1[5];
  v27[8] = v1[4];
  v27[9] = v11;
  v13 = v1[7];
  v27[6] = v1[6];
  v27[7] = v12;
  v14 = v1[9];
  v27[4] = v1[8];
  v27[5] = v13;
  v15 = v1[11];
  v27[1] = v1[10];
  v27[2] = v15;
  v27[3] = v14;
  v16 = *(v1 + 13);
  v50 = *(v1 + 12);
  v51 = v16;
  v52 = *(v1 + 14);
  v53 = v1[30];
  v17 = *(v1 + 9);
  v46 = *(v1 + 8);
  v47 = v17;
  v18 = *(v1 + 11);
  v48 = *(v1 + 10);
  v49 = v18;
  v19 = *(v1 + 7);
  v44 = *(v1 + 6);
  v45 = v19;
  memcpy(v54, v1 + 31, 0x170uLL);
  v20 = v1[77];
  v21 = v1[78];
  v22 = v1[79];
  v23 = v1[80];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF84B8();
  sub_1DACBA304();
  v30[0] = 0;
  v25 = v55;
  sub_1DACBA094();
  if (!v25)
  {
    v30[0] = 1;
    sub_1DACBA094();
    v30[0] = 2;
    sub_1DACBA094();
    v55 = v5;
    v30[0] = 3;
    sub_1DACBA094();
    v30[0] = 4;
    sub_1DACBA094();
    v30[0] = 5;
    sub_1DACBA094();
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v34 = v44;
    v35 = v45;
    v33 = 6;
    sub_1DAAF96D4(&v44, v30, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAA96AB4();
    sub_1DACBA074();
    v31[6] = v40;
    v31[7] = v41;
    v31[8] = v42;
    v32 = v43;
    v31[2] = v36;
    v31[3] = v37;
    v31[4] = v38;
    v31[5] = v39;
    v31[0] = v34;
    v31[1] = v35;
    sub_1DAAF8B2C(v31, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    memcpy(v30, v54, sizeof(v30));
    v29[375] = 7;
    sub_1DAAF96D4(v54, v29, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF9754();
    sub_1DACBA074();
    memcpy(v29, v30, 0x170uLL);
    sub_1DAAF8B2C(v29, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    v28 = 8;
    sub_1DACBA0B4();
    v28 = 9;
    sub_1DACBA0B4();
    v28 = 10;
    sub_1DACBA0B4();
    v28 = 11;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DAAF8A6C()
{
  result = qword_1EE124578;
  if (!qword_1EE124578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124578);
  }

  return result;
}

unint64_t sub_1DAAF8AC0()
{
  result = qword_1EE124CD0;
  if (!qword_1EE124CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CD0);
  }

  return result;
}

uint64_t sub_1DAAF8B14(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAF8B2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAAF8B9C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAAF8B9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL _s10StocksCore13PaywallConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v96 = *(v1 + 32);
  v97 = *(v1 + 24);
  v95 = *(v1 + 40);
  v92 = *(v1 + 56);
  v93 = *(v1 + 48);
  v88 = *(v1 + 72);
  v89 = *(v1 + 64);
  v84 = *(v1 + 88);
  v85 = *(v1 + 80);
  v8 = *(v1 + 208);
  v108[6] = *(v1 + 192);
  v108[7] = v8;
  v108[8] = *(v1 + 224);
  v109 = *(v1 + 240);
  v9 = *(v1 + 144);
  v108[2] = *(v1 + 128);
  v108[3] = v9;
  v10 = *(v1 + 176);
  v108[4] = *(v1 + 160);
  v108[5] = v10;
  v11 = *(v1 + 112);
  v108[0] = *(v1 + 96);
  v108[1] = v11;
  memcpy(v110, (v1 + 248), sizeof(v110));
  v12 = *(v4 + 616);
  v13 = *(v4 + 624);
  v14 = *(v4 + 632);
  v15 = *(v4 + 640);
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = v3[4];
  v94 = v3[5];
  v90 = v3[7];
  v91 = v3[6];
  v86 = v3[9];
  v87 = v3[8];
  v82 = v3[11];
  v83 = v3[10];
  v21 = *(v3 + 6);
  v111[1] = *(v3 + 7);
  v111[0] = v21;
  v22 = *(v3 + 10);
  v111[5] = *(v3 + 11);
  v111[4] = v22;
  v23 = *(v3 + 8);
  v111[3] = *(v3 + 9);
  v111[2] = v23;
  v112 = v3[30];
  v24 = *(v3 + 13);
  v111[8] = *(v3 + 14);
  v25 = *(v3 + 12);
  v111[7] = v24;
  v111[6] = v25;
  memcpy(v113, v3 + 31, 0x170uLL);
  v26 = *(v3 + 77);
  v27 = *(v3 + 78);
  v28 = *(v3 + 79);
  v29 = *(v3 + 80);
  if ((v6 != v16 || v5 != v17) && (sub_1DACBA174() & 1) == 0 || (v7 != v18 || v97 != v19) && (sub_1DACBA174() & 1) == 0 || (v96 != v20 || v95 != v94) && (sub_1DACBA174() & 1) == 0 || (v93 != v91 || v92 != v90) && (sub_1DACBA174() & 1) == 0 || (v89 != v87 || v88 != v86) && (sub_1DACBA174() & 1) == 0 || (v85 != v83 || v84 != v82) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v30 = *(v4 + 208);
  v31 = *(v4 + 176);
  __src[6] = *(v4 + 192);
  __src[7] = v30;
  v32 = *(v4 + 208);
  __src[8] = *(v4 + 224);
  v33 = *(v4 + 144);
  v34 = *(v4 + 112);
  __src[2] = *(v4 + 128);
  __src[3] = v33;
  v35 = *(v4 + 144);
  v36 = *(v4 + 176);
  __src[4] = *(v4 + 160);
  __src[5] = v36;
  v37 = *(v4 + 112);
  __src[0] = *(v4 + 96);
  __src[1] = v37;
  v38 = *(v3 + 14);
  v39 = *(v3 + 12);
  *(&__src[16] + 8) = *(v3 + 13);
  *(&__src[17] + 8) = v38;
  *(&__src[15] + 8) = v39;
  v40 = *(v3 + 9);
  *(&__src[11] + 8) = *(v3 + 8);
  *(&__src[12] + 8) = v40;
  v41 = *(v3 + 11);
  *(&__src[13] + 8) = *(v3 + 10);
  *(&__src[14] + 8) = v41;
  v42 = *(v3 + 7);
  *(&__src[9] + 8) = *(v3 + 6);
  *(&__src[10] + 8) = v42;
  v106[6] = __src[6];
  v106[7] = v32;
  v106[8] = *(v4 + 224);
  v106[2] = __src[2];
  v106[3] = v35;
  v106[4] = __src[4];
  v106[5] = v31;
  v43 = v3[30];
  *&__src[9] = *(v4 + 240);
  *(&__src[18] + 1) = v43;
  v107 = *(v4 + 240);
  v106[0] = __src[0];
  v106[1] = v34;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v106) == 1)
  {
    v44 = *(v3 + 13);
    __dst[6] = *(v3 + 12);
    __dst[7] = v44;
    __dst[8] = *(v3 + 14);
    *&__dst[9] = v3[30];
    v45 = *(v3 + 9);
    __dst[2] = *(v3 + 8);
    __dst[3] = v45;
    v46 = *(v3 + 11);
    __dst[4] = *(v3 + 10);
    __dst[5] = v46;
    v47 = *(v3 + 7);
    __dst[0] = *(v3 + 6);
    __dst[1] = v47;
    if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(__dst) == 1)
    {
      v48 = *(v4 + 208);
      v105[6] = *(v4 + 192);
      v105[7] = v48;
      v105[8] = *(v4 + 224);
      *&v105[9] = *(v4 + 240);
      v49 = *(v4 + 144);
      v105[2] = *(v4 + 128);
      v105[3] = v49;
      v50 = *(v4 + 176);
      v105[4] = *(v4 + 160);
      v105[5] = v50;
      v51 = *(v4 + 112);
      v105[0] = *(v4 + 96);
      v105[1] = v51;
      sub_1DAAF96D4(v108, v103, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      sub_1DAAF96D4(v111, v103, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      sub_1DAAF8B2C(v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      goto LABEL_27;
    }

    sub_1DAAF96D4(v108, v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v111, v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
LABEL_25:
    memcpy(__dst, __src, 0x130uLL);
    v68 = &unk_1ECBE6D00;
    v69 = &qword_1EE124570;
    v70 = &type metadata for SubscriptionButtonConfig;
LABEL_34:
    sub_1DAAF9BAC(__dst, v68, v69, v70);
    return 0;
  }

  v52 = *(v4 + 208);
  v53 = *(v4 + 176);
  v105[6] = *(v4 + 192);
  v105[7] = v52;
  v54 = *(v4 + 208);
  v105[8] = *(v4 + 224);
  v55 = *(v4 + 144);
  v56 = *(v4 + 112);
  v105[2] = *(v4 + 128);
  v105[3] = v55;
  v57 = *(v4 + 144);
  v58 = *(v4 + 176);
  v105[4] = *(v4 + 160);
  v105[5] = v58;
  v59 = *(v4 + 112);
  v105[0] = *(v4 + 96);
  v105[1] = v59;
  v103[6] = v105[6];
  v103[7] = v54;
  v103[8] = *(v4 + 224);
  v103[2] = v105[2];
  v103[3] = v57;
  v103[4] = v105[4];
  v103[5] = v53;
  *&v105[9] = *(v4 + 240);
  *&v103[9] = *(v4 + 240);
  v103[0] = v105[0];
  v103[1] = v56;
  v60 = *(v3 + 13);
  __dst[6] = *(v3 + 12);
  __dst[7] = v60;
  __dst[8] = *(v3 + 14);
  *&__dst[9] = v3[30];
  v61 = *(v3 + 9);
  __dst[2] = *(v3 + 8);
  __dst[3] = v61;
  v62 = *(v3 + 11);
  __dst[4] = *(v3 + 10);
  __dst[5] = v62;
  v63 = *(v3 + 7);
  __dst[0] = *(v3 + 6);
  __dst[1] = v63;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(__dst) == 1)
  {
    v64 = *(v4 + 208);
    v101[6] = *(v4 + 192);
    v101[7] = v64;
    v101[8] = *(v4 + 224);
    *&v101[9] = *(v4 + 240);
    v65 = *(v4 + 144);
    v101[2] = *(v4 + 128);
    v101[3] = v65;
    v66 = *(v4 + 176);
    v101[4] = *(v4 + 160);
    v101[5] = v66;
    v67 = *(v4 + 112);
    v101[0] = *(v4 + 96);
    v101[1] = v67;
    sub_1DAAF96D4(v108, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v111, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v105, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF9CD4(v101);
    goto LABEL_25;
  }

  v71 = *(v3 + 13);
  v101[6] = *(v3 + 12);
  v101[7] = v71;
  v101[8] = *(v3 + 14);
  *&v101[9] = v3[30];
  v72 = *(v3 + 9);
  v101[2] = *(v3 + 8);
  v101[3] = v72;
  v73 = *(v3 + 11);
  v101[4] = *(v3 + 10);
  v101[5] = v73;
  v74 = *(v3 + 7);
  v101[0] = *(v3 + 6);
  v101[1] = v74;
  v75 = sub_1DAC74B58(v103, v101);
  v99[6] = v101[6];
  v99[7] = v101[7];
  v99[8] = v101[8];
  *&v99[9] = *&v101[9];
  v99[2] = v101[2];
  v99[3] = v101[3];
  v99[4] = v101[4];
  v99[5] = v101[5];
  v99[0] = v101[0];
  v99[1] = v101[1];
  sub_1DAAF96D4(v108, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF96D4(v111, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF96D4(v105, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF9CD4(v99);
  v100[6] = v103[6];
  v100[7] = v103[7];
  v100[8] = v103[8];
  *&v100[9] = *&v103[9];
  v100[2] = v103[2];
  v100[3] = v103[3];
  v100[4] = v103[4];
  v100[5] = v103[5];
  v100[0] = v103[0];
  v100[1] = v103[1];
  sub_1DAAF9CD4(v100);
  v76 = *(v4 + 208);
  v101[6] = *(v4 + 192);
  v101[7] = v76;
  v101[8] = *(v4 + 224);
  *&v101[9] = *(v4 + 240);
  v77 = *(v4 + 144);
  v101[2] = *(v4 + 128);
  v101[3] = v77;
  v78 = *(v4 + 176);
  v101[4] = *(v4 + 160);
  v101[5] = v78;
  v79 = *(v4 + 112);
  v101[0] = *(v4 + 96);
  v101[1] = v79;
  sub_1DAAF8B2C(v101, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  memcpy(__src, v110, 0x170uLL);
  memcpy(&__src[23], v113, 0x170uLL);
  memcpy(v105, v110, sizeof(v105));
  if (sub_1DAAF8B14(v105) != 1)
  {
    memcpy(v103, __src, sizeof(v103));
    memcpy(v101, __src, sizeof(v101));
    memcpy(__dst, &__src[23], 0x170uLL);
    if (sub_1DAAF8B14(__dst) == 1)
    {
      memcpy(v100, __src, sizeof(v100));
      sub_1DAAF96D4(v110, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF96D4(v113, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF96D4(v103, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF9C80(v100);
LABEL_33:
      memcpy(__dst, __src, sizeof(__dst));
      v68 = &unk_1ECBE6D08;
      v69 = &qword_1EE124CC8;
      v70 = &type metadata for PaywallVisualSpec;
      goto LABEL_34;
    }

    memcpy(v100, &__src[23], sizeof(v100));
    sub_1DAAF96D4(v110, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v113, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v103, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    v81 = sub_1DAB9082C(v101, v100);
    memcpy(v98, v100, sizeof(v98));
    sub_1DAAF9C80(v98);
    memcpy(v99, v101, sizeof(v99));
    sub_1DAAF9C80(v99);
    memcpy(v100, __src, sizeof(v100));
    sub_1DAAF8B2C(v100, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    if (v81)
    {
      goto LABEL_37;
    }

    return 0;
  }

  memcpy(__dst, &__src[23], 0x170uLL);
  if (sub_1DAAF8B14(__dst) != 1)
  {
    sub_1DAAF96D4(v110, v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v113, v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    goto LABEL_33;
  }

  memcpy(v103, __src, sizeof(v103));
  sub_1DAAF96D4(v110, v101, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
  sub_1DAAF96D4(v113, v101, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
  sub_1DAAF8B2C(v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
LABEL_37:
  if (v12 != v26 || v13 != v27 || v14 != v28)
  {
    return 0;
  }

  return v15 == v29;
}

void sub_1DAAF9670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAF84B8();
    v7 = a3(a1, &type metadata for PaywallConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAAF96D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAAF8B9C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DAAF9754()
{
  result = qword_1EE124CD8;
  if (!qword_1EE124CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17PaywallVisualSpecVSg(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAF97C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 648))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAAF9810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 648) = 1;
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

    *(result + 648) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaywallConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaywallConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAAF9A5C()
{
  result = qword_1ECBE6CF8;
  if (!qword_1ECBE6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CF8);
  }

  return result;
}

unint64_t sub_1DAAF9AB4()
{
  result = qword_1EE124FE8;
  if (!qword_1EE124FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FE8);
  }

  return result;
}

unint64_t sub_1DAAF9B0C()
{
  result = qword_1EE124FF0;
  if (!qword_1EE124FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FF0);
  }

  return result;
}

uint64_t sub_1DAAF9B60()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAAF9BAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAAF9C08(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DAAF9C08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAAF8B9C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAAF9D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAAF9E14();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_1DACB71E4();
  sub_1DAA78E98(v10, a3, a4, a5);

  v11 = sub_1DACB89D4();
  type metadata accessor for Quote();
  v12 = sub_1DACB8A54();

  return v12;
}

void sub_1DAAF9E14()
{
  if (!qword_1EE123B50)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123B50);
    }
  }
}

uint64_t sub_1DAAF9E64(uint64_t *a1)
{
  sub_1DAA887D8(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Quote();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  sub_1DAB85A14(*a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAA88D78(v5, sub_1DAA887D8);
    sub_1DAAFBF48();
    swift_allocError();
    sub_1DAA5EDC0(0, &qword_1ECBE6D38, type metadata accessor for Quote, MEMORY[0x1E69D6B18]);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA7BD70(v5, v13);
    sub_1DAA88924(v13, v11, type metadata accessor for Quote);
    sub_1DAA5EDC0(0, &qword_1ECBE6D38, type metadata accessor for Quote, MEMORY[0x1E69D6B18]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1DACB8AE4();
    sub_1DAA88D78(v13, type metadata accessor for Quote);
    return v21;
  }
}

uint64_t sub_1DAAFA0EC()
{
  sub_1DAA5EDC0(0, &qword_1ECBE6D10, sub_1DAA887D8, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAAFA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DAAF9D34(a6, a7, a8, a9, a10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A64();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAAFA2E8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAA887D8(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA88924(a1, v7, type metadata accessor for Quote);
  v8 = type metadata accessor for Quote();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_1DAA88D78(v7, sub_1DAA887D8);
}

uint64_t sub_1DAAFA3F8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAA887D8(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Quote();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_1DAA88D78(v6, sub_1DAA887D8);
}

uint64_t sub_1DAAFA4D4()
{
  sub_1DAA7A458();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAAFA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAA78E98(a6, a7, a8, a9);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DAA7390C;
  *(v15 + 24) = v14;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DAA7390C;
  *(v17 + 24) = v14;
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAAFA71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v6, 0);
    v7 = v17;
    v9 = (a1 + 56);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      sub_1DACB71E4();
      if (v13 >= v12 >> 1)
      {
        sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 17;
      --v6;
    }

    while (v6);
  }

  v15 = a5(v7);

  return v15;
}

uint64_t sub_1DAAFA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA886DC(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA88924(a3, v12, sub_1DAA886DC);
  v13 = sub_1DACB97B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_1DACB71F4();
  if (v15 == 1)
  {
    sub_1DAA88D78(v12, sub_1DAA886DC);
  }

  else
  {
    sub_1DACB97A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DACB9744();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DACB93C4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1DACB71F4();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1DAA88D78(a3, sub_1DAA886DC);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DAA88D78(a3, sub_1DAA886DC);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DAAFAB30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  sub_1DAA88D78((v0 + 11), sub_1DAAFB6A0);
  v4 = v0[12];

  return swift_deallocClassInstance();
}

void sub_1DAAFABA4(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v10 = sub_1DACB8C94();
  __swift_project_value_buffer(v10, qword_1EE124090);
  sub_1DACB71E4();
  v11 = a1;
  oslog = sub_1DACB8C74();
  v12 = a4();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1DAA7ABE4(a2, a3, &v19);
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1DACBA224();
    v17 = sub_1DAA7ABE4(v15, v16, &v19);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1DAA3F000, oslog, v12, a5, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v14, -1, -1);
    MEMORY[0x1E1278C00](v13, -1, -1);
  }

  else
  {
  }
}

void sub_1DAAFAD94(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 20);
  swift_unknownObjectRetain();
  v4 = sub_1DAAFB9C8(&v3[22]._os_unfair_lock_opaque, a1);
  swift_unknownObjectRelease();
  v5 = *&v3[22]._os_unfair_lock_opaque;
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *&v3[22]._os_unfair_lock_opaque;
    }

    v6 = sub_1DACB9E14();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1DAA8D0E4(v4, v6);

  os_unfair_lock_unlock(v3 + 20);
}

uint64_t sub_1DAAFAE74@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = *MEMORY[0x1E69D63E0];
  v4 = sub_1DACB81B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_1DAAFAF10(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DACB8FC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA57C58();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
  v14 = sub_1DACB9984();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB71E4();
  sub_1DACB8BA4();

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v4;
  sub_1DACB71E4();
  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAAFB160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAAF9E14();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_1DACB71E4();
  v6 = sub_1DAA7A4CC(v5);

  return v6;
}

unint64_t sub_1DAAFB1F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1DAA886DC(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Quote();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v38 - v21);
  v23 = *a1;
  if (*(v23 + 16))
  {
    result = sub_1DAA4BF3C(a2, a3);
    if (v24)
    {
      sub_1DAA88924(*(v23 + 56) + *(v15 + 72) * result, v19, type metadata accessor for Quote);
      sub_1DAA7BD70(v19, v22);
      if ((v22[1] & 1) == 0 && (v22[3] & 1) == 0)
      {
        v25 = v22[2] + a5 - *v22;
        *v22 = a5;
        *(v22 + 8) = 0;
        v22[2] = v25;
        *(v22 + 24) = 0;
        sub_1DAA5EDC0(0, &qword_1ECBE6D28, sub_1DAAFB724, MEMORY[0x1E69E6F90]);
        sub_1DAAFB724();
        v27 = v26 - 8;
        v28 = *(*(v26 - 8) + 72);
        v29 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1DACC1D20;
        v31 = (v30 + v29);
        v32 = *(v27 + 56);
        *v31 = a2;
        v31[1] = a3;
        sub_1DAA88924(v22, v31 + v32, type metadata accessor for Quote);
        sub_1DACB71E4();
        v33 = sub_1DAB68788(v30);
        swift_setDeallocating();
        sub_1DAA88D78(v31, sub_1DAAFB724);
        swift_deallocClassInstance();
        v34 = sub_1DACB97B4();
        (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
        sub_1DACB9794();
        sub_1DACB71F4();
        v35 = sub_1DACB9784();
        v36 = swift_allocObject();
        v37 = MEMORY[0x1E69E85E0];
        v36[2] = v35;
        v36[3] = v37;
        v36[4] = a4;
        v36[5] = v33;
        sub_1DAAFA828(0, 0, v13, &unk_1DACC4918, v36);
      }

      return sub_1DAA88D78(v22, type metadata accessor for Quote);
    }
  }

  return result;
}

uint64_t sub_1DAAFB59C()
{
  sub_1DAAFBEA8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAFB5D4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DAAFB78C(v6, a2, v2, v4, v5);
}

void sub_1DAAFB724()
{
  if (!qword_1EE11D198)
  {
    type metadata accessor for Quote();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D198);
    }
  }
}

uint64_t sub_1DAAFB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DAAFB850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAA9A3AC;

  return sub_1DAA944B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAAFB910(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return sub_1DAA94374(a1, v5);
}

uint64_t sub_1DAAFB9C8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v9 = *(v3 + 8 * v7 + 32);
      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v12 == sub_1DACB9E14())
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12777A0](v12, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v15 = *(v3 + 8 * v12 + 32);
            sub_1DACB71F4();
          }

          v16 = swift_unknownObjectWeakLoadStrong();

          if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = MEMORY[0x1E12777A0](v7, v3);
                v18 = MEMORY[0x1E12777A0](v12, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_60;
                }

                if (v12 >= v19)
                {
                  goto LABEL_61;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
                sub_1DACB71F4();
                sub_1DACB71F4();
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1DACA83E4(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if ((v3 & 0x8000000000000000) != 0 || v20)
              {
                v3 = sub_1DACA83E4(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_1DACB9E14();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_1DACB9E14();
  }

  return *(v4 + 16);
}

uint64_t sub_1DAAFBCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAFBD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAA94754;

  return sub_1DAA944B8(a1, v4, v5, v7, v6);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DAAFBED0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1DAB68788(MEMORY[0x1E69E7CC0]);
  v2();
}

unint64_t sub_1DAAFBF48()
{
  result = qword_1ECBE6D30;
  if (!qword_1ECBE6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D30);
  }

  return result;
}

unint64_t sub_1DAAFBFB0()
{
  result = qword_1ECBE6D40;
  if (!qword_1ECBE6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D40);
  }

  return result;
}

uint64_t sub_1DAAFC004(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1DACB9BC4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 48 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = sub_1DACB71E4();
    if (v13 >= v14 >> 1)
    {
      result = sub_1DAA5859C((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DAAA2C74(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t WatchlistQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB02E58(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t WatchlistQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 128) = a1;
  *(v2 + 136) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAAFC2F0, 0, 0);
}

uint64_t sub_1DAAFC2F0()
{
  v18 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[15] = v5;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching watchlists for entities with identifiers=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[17];
  sub_1DACB6D24();
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v0[19] = (*(v13 + 40))(1, v12, v13);
  v14 = *(MEMORY[0x1E69D6B08] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1DAAFC558;

  return MEMORY[0x1EEE44EE0](v0 + 9);
}

uint64_t sub_1DAAFC558()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1DAAFCED0;
  }

  else
  {
    v5 = *(v2 + 152);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAAFC67C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DAAFC67C()
{
  v101 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[9];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  v82 = v3;
  v84 = v0;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v96 = v93;
    *v7 = 136315394;
    v0[13] = v6;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v96);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = *(v3 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v87 = v5;
      v90 = v4;
      v98[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v11, 0);
      v12 = v98[0];
      v13 = *(v98[0] + 16);
      v14 = 16 * v13;
      v15 = (v3 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v98[0] = v12;
        v18 = v13 + 1;
        v19 = *(v12 + 24);
        sub_1DACB71E4();
        if (v13 >= v19 >> 1)
        {
          sub_1DAA5859C((v19 > 1), v18, 1);
          v12 = v98[0];
        }

        *(v12 + 16) = v18;
        v20 = v12 + v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v14 += 16;
        v15 += 6;
        ++v13;
        --v11;
      }

      while (v11);
      v3 = v82;
      v0 = v84;
      v4 = v90;
      v5 = v87;
    }

    v0[14] = v12;
    v21 = sub_1DACB9214();
    v23 = v22;

    v24 = sub_1DAA7ABE4(v21, v23, &v96);

    *(v7 + 14) = v24;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetching watchlists for entities with identifiers=[%s], watchlists=[%s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v93, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v25 = v0[16];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = 0;
    v79 = (v3 + 73);
    v80 = v25 + 32;
    v28 = MEMORY[0x1E69E7CC0];
    v81 = *(v25 + 16);
    while (2)
    {
      v85 = v28;
LABEL_12:
      if (v27 >= v26)
      {
        __break(1u);
      }

      else if (!__OFADD__(v27, 1))
      {
        v29 = v79;
        v30 = (v80 + 16 * v27);
        v31 = v30[1];
        v91 = v27 + 1;
        v94 = *v30;
        v88 = v27 + 1;
        v32 = *(v3 + 16) + 1;
        while (1)
        {
          if (!--v32)
          {
            v26 = v81;
            v3 = v82;
            v28 = v85;
            v0 = v84;
            v27 = v91;
            if (v88 != v81)
            {
              goto LABEL_12;
            }

            goto LABEL_32;
          }

          v33 = *(v29 - 41);
          v34 = *(v29 - 33);
          v35 = *(v29 - 25);
          v36 = *(v29 - 17);
          v37 = *(v29 - 9);
          v38 = *(v29 - 1);
          v39 = *v29;
          if (v36 == v94 && v37 == v31)
          {
            break;
          }

          v29 += 48;
          if (sub_1DACBA174())
          {
            goto LABEL_25;
          }
        }

        v36 = v94;
LABEL_25:
        v98[0] = v33;
        v98[1] = v34;
        v98[2] = v35;
        v98[3] = v36;
        v98[4] = v37;
        v99 = v38;
        v100 = v39;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        WatchlistEntity.init(from:)(v98, &v96);
        v41 = v96;
        v95 = v97;
        v28 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1DAADB910(0, *(v85 + 2) + 1, 1, v85);
        }

        v0 = v84;
        v43 = *(v28 + 2);
        v42 = *(v28 + 3);
        if (v43 >= v42 >> 1)
        {
          v28 = sub_1DAADB910((v42 > 1), v43 + 1, 1, v28);
        }

        *(v28 + 2) = v43 + 1;
        v44 = &v28[24 * v43];
        *(v44 + 4) = v41;
        *(v44 + 40) = v95;
        v26 = v81;
        v3 = v82;
        v27 = v91;
        if (v88 != v81)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    __break(1u);
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v45 = v0[18];
  v46 = v0[16];
  if (*(v28 + 2))
  {
    v47 = v0[16];
    sub_1DACB71E4();
    sub_1DACB71E4();
    v48 = sub_1DACB8C74();
    v49 = sub_1DACB9914();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[16];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v96 = v52;
      *v51 = 136315394;
      v0[10] = v50;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v53 = sub_1DACB9214();
      v55 = sub_1DAA7ABE4(v53, v54, &v96);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v56 = *(v28 + 2);
      v57 = MEMORY[0x1E69E7CC0];
      if (v56)
      {
        v83 = v52;
        v89 = v49;
        v92 = v48;
        v98[0] = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v56, 0);
        v57 = v98[0];
        v86 = v28;
        v58 = (v28 + 48);
        do
        {
          v60 = *(v58 - 1);
          v59 = *v58;
          sub_1DACB71E4();
          sub_1DACB71F4();
          sub_1DACB6ED4();

          v61 = v0[7];
          v62 = v0[8];
          v98[0] = v57;
          v64 = *(v57 + 16);
          v63 = *(v57 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_1DAA5859C((v63 > 1), v64 + 1, 1);
            v57 = v98[0];
          }

          *(v57 + 16) = v64 + 1;
          v65 = v57 + 16 * v64;
          *(v65 + 32) = v61;
          *(v65 + 40) = v62;
          v58 += 3;
          --v56;
          v0 = v84;
        }

        while (v56);
        v28 = v86;
        v48 = v92;
        v49 = v89;
        v52 = v83;
      }

      v0[11] = v57;
      v74 = sub_1DACB9214();
      v76 = v75;

      v77 = sub_1DAA7ABE4(v74, v76, &v96);

      *(v51 + 14) = v77;
      _os_log_impl(&dword_1DAA3F000, v48, v49, "Matched watchlist entities to identifiers=[%s], watchlistEntities=[%s]", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1278C00](v52, -1, -1);
      MEMORY[0x1E1278C00](v51, -1, -1);
    }
  }

  else
  {

    sub_1DACB71E4();
    v66 = sub_1DACB8C74();
    v67 = sub_1DACB9904();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v0[16];
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v98[0] = v70;
      *v69 = 136315138;
      v0[12] = v68;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v71 = sub_1DACB9214();
      v73 = sub_1DAA7ABE4(v71, v72, v98);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_1DAA3F000, v66, v67, "No matching watchlists found for identifiers=[%s]", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1E1278C00](v70, -1, -1);
      MEMORY[0x1E1278C00](v69, -1, -1);
    }

    v28 = MEMORY[0x1E69E7CC0];
  }

  v78 = v0[1];

  v78(v28);
}

uint64_t sub_1DAAFCED0()
{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t WatchlistQuery.suggestedEntities()()
{
  v2 = sub_1DACB78E4();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(sub_1DACB7E44() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_1DACB92E4();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = *(*(sub_1DACB7904() - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *v0;
  v1[19] = v10;
  v1[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1DAAFD0BC, 0, 0);
}

uint64_t sub_1DAAFD0BC()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[21] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for suggested entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[20];

  sub_1DACB6D24();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[22] = (*(v7 + 40))(1, v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1DAAFD25C;

  return MEMORY[0x1EEE44EE0](v0 + 9);
}

uint64_t sub_1DAAFD25C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1DAAFD9B8;
  }

  else
  {
    v5 = *(v2 + 176);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAAFD380;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAAFD380()
{
  v77 = v0;
  v1 = v0[21];
  v2 = v0[9];
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  v61 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v75 = v6;
    *v5 = 136315138;
    v8 = v2[2];
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v67 = v6;
      v70 = v5;
      v72 = v4;
      v74 = v3;
      v76 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v76;
      v10 = *(v76 + 16);
      v11 = 16 * v10;
      v12 = v2 + 5;
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v76 = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v76;
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 6;
        ++v10;
        --v8;
      }

      while (v8);
      v2 = v61;
      v3 = v74;
      v4 = v72;
      v7 = v67;
      v5 = v70;
    }

    v0[10] = v9;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v75);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched watchlists for suggested entities, watchlists=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v22 = v2[2];
  if (v22)
  {
    v23 = v0[16];
    v24 = v0[12];
    v76 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v22, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v25 = v76;
    v65 = (v24 + 104);
    v62 = (v23 + 8);
    v63 = (v23 + 16);
    v26 = v2 + 8;
    v64 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v71 = v25;
      v73 = v22;
      v28 = v0[18];
      v27 = v0[19];
      v29 = v0[13];
      v30 = v0[14];
      v31 = v0[11];
      v66 = *(v26 - 4);
      v68 = *(v26 - 3);
      v32 = *(v26 - 2);
      v33 = *(v26 - 1);
      v34 = *v26;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v65)(v29, v64, v31);
      v35 = v33;
      sub_1DACB7914();
      v36 = sub_1DACB6F34();
      if (v33 == sub_1DACB9324() && v34 == v37)
      {
        break;
      }

      v38 = sub_1DACBA174();
      sub_1DACB71E4();

      v39 = v66;
      v40 = v68;
      if (v38)
      {
        goto LABEL_15;
      }

LABEL_18:

      v0[7] = v39;
      v0[8] = v40;
      sub_1DACB6EE4();

      v25 = v71;
      v76 = v71;
      v52 = *(v71 + 16);
      v51 = *(v71 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1DAB25C68((v51 > 1), v52 + 1, 1);
        v25 = v76;
      }

      *(v25 + 16) = v52 + 1;
      v53 = (v25 + 24 * v52);
      v53[4] = v35;
      v53[5] = v34;
      v53[6] = v36;
      v26 += 6;
      v22 = v73 - 1;
      if (v73 == 1)
      {

        goto LABEL_23;
      }
    }

    sub_1DACB71E4();

LABEL_15:
    v69 = v36;
    v41 = v35;
    v43 = v0[17];
    v42 = v0[18];
    v44 = v0[15];
    sub_1DACB9284();
    (*v63)(v43, v42, v44);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v45 = v0[17];
    v46 = v0[18];
    v48 = v0[14];
    v47 = v0[15];
    v49 = qword_1EE13E470;
    sub_1DACB7DF4();
    v39 = sub_1DACB9384();
    v40 = v50;
    (*v62)(v46, v47);

    v35 = v41;
    v36 = v69;
    goto LABEL_18;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v55 = v0[18];
  v54 = v0[19];
  v56 = v0[17];
  v58 = v0[13];
  v57 = v0[14];

  v59 = v0[1];

  return v59(v25);
}

uint64_t sub_1DAAFD9B8()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

uint64_t sub_1DAAFDA88()
{
  v15 = v0;
  if (qword_1ECBE5A08 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECBE7088;
  v1 = unk_1ECBE7090;
  v3 = qword_1ECBE7098;
  v4 = qword_1EE11D388;
  sub_1DACB71E4();
  sub_1DACB71F4();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1DACB8C94();
  __swift_project_value_buffer(v5, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v6 = sub_1DACB8C74();
  v7 = sub_1DACB9914();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    sub_1DACB6ED4();
    v10 = sub_1DAA7ABE4(v0[2], v0[3], &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "Default watchlist entity requested, returning '%s' watchlist", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v11 = v0[4];
  *v11 = v2;
  v11[1] = v1;
  v11[2] = v3;
  v12 = v0[1];

  return v12();
}

uint64_t sub_1DAAFDC90@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB02E58(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAFDD2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return WatchlistQuery.entities(for:)(a1);
}

uint64_t sub_1DAAFDDC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAB07890;

  return WatchlistQuery.suggestedEntities()();
}

uint64_t sub_1DAAFDE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6959F20] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DAAFDF10;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1DAAFDF10(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1DAAFE010(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6959F30] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DAB06FCC();
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v7);
}

uint64_t sub_1DAAFE0C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return WatchlistQuery.defaultResult()(a1);
}

uint64_t WatchlistQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a1;
  v3[17] = a2;
  v4 = sub_1DACB78E4();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = *(*(sub_1DACB7E44() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = sub_1DACB92E4();
  v3[22] = v8;
  v9 = *(v8 - 8);
  v3[23] = v9;
  v10 = *(v9 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v11 = *(*(sub_1DACB7904() - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *v2;
  v3[26] = v12;
  v3[27] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1DAAFE2E4, 0, 0);
}

uint64_t sub_1DAAFE2E4()
{
  v16 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1DACB8C94();
  v0[28] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DAA7ABE4(v6, v5, &v15);
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Querying watchlists matching string=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v9 = v0[27];
  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[29] = (*(v11 + 40))(1, v10, v11);
  v12 = *(MEMORY[0x1E69D6B08] + 4);
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_1DAAFE4F4;

  return MEMORY[0x1EEE44EE0](v0 + 13);
}

uint64_t sub_1DAAFE4F4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1DAAFF09C;
  }

  else
  {
    v5 = *(v2 + 232);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAAFE618;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DAAFE618()
{
  v130 = v0;
  v1 = v0[28];
  v2 = v0[13];
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  v121 = v2;
  v124 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v128 = v6;
    *v5 = 136315138;
    v8 = *(v2 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v113 = v6;
      v117 = v5;
      v125 = v4;
      v129 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v129;
      v10 = *(v129 + 16);
      v11 = 16 * v10;
      v12 = (v2 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v129 = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v129;
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 6;
        ++v10;
        --v8;
      }

      while (v8);
      v2 = v121;
      v0 = v124;
      v4 = v125;
      v7 = v113;
      v5 = v117;
    }

    v0[15] = v9;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v128);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched all watchlists for string query, watchlists=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v22 = *(v2 + 16);
  if (!v22)
  {
    v104 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v23 = 0;
  v118 = -v22;
  v24 = v2 + 73;
  v104 = MEMORY[0x1E69E7CC0];
  v109 = v2 + 73;
  do
  {
    v25 = (v24 + 48 * v23);
    v26 = v23 + 1;
    while (1)
    {
      if ((v26 - 1) >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v126 = v26;
      v28 = v124[16];
      v27 = v124[17];
      v29 = *(v25 - 41);
      v30 = *(v25 - 33);
      v31 = *(v25 - 25);
      v111 = *(v25 - 17);
      v32 = *(v25 - 9);
      v110 = *(v25 - 1);
      v114 = *v25;
      v124[7] = sub_1DACB93A4();
      v124[8] = v33;
      v124[9] = sub_1DACB93A4();
      v124[10] = v34;
      sub_1DAA642D8();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      LOBYTE(v27) = sub_1DACB9B64();

      if (v27)
      {
        break;
      }

      v26 = v126 + 1;
      v2 = v121;
      v25 += 48;
      if (v118 + v126 + 1 == 1)
      {
        goto LABEL_23;
      }
    }

    v35 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v104;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DAB25C88(0, *(v104 + 16) + 1, 1);
      v35 = v129;
    }

    v2 = v121;
    v37 = v114;
    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1DAB25C88((v38 > 1), v39 + 1, 1);
      v37 = v114;
      v35 = v129;
    }

    *(v35 + 16) = v39 + 1;
    v104 = v35;
    v40 = v35 + 48 * v39;
    *(v40 + 32) = v29;
    *(v40 + 40) = v30;
    *(v40 + 48) = v31;
    *(v40 + 56) = v111;
    *(v40 + 64) = v32;
    *(v40 + 72) = v110;
    *(v40 + 73) = v37;
    v23 = v126;
    v24 = v109;
  }

  while (v118 + v126);
LABEL_23:
  v41 = v124;
  v42 = v124[28];
  v43 = v124[17];

  sub_1DACB71E4();
  sub_1DACB71F4();
  v44 = v104;
  v45 = sub_1DACB8C74();
  v46 = sub_1DACB9914();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v124[16];
    v47 = v124[17];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v128 = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_1DAA7ABE4(v48, v47, &v128);
    *(v49 + 12) = 2080;
    v51 = *(v104 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v119 = v50;
      v122 = v46;
      v127 = v45;
      v129 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v51, 0);
      v52 = v129;
      v53 = *(v129 + 16);
      v54 = 16 * v53;
      v55 = (v104 + 40);
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        v129 = v52;
        v58 = v53 + 1;
        v59 = *(v52 + 24);
        sub_1DACB71E4();
        if (v53 >= v59 >> 1)
        {
          sub_1DAA5859C((v59 > 1), v58, 1);
          v52 = v129;
        }

        *(v52 + 16) = v58;
        v60 = v52 + v54;
        *(v60 + 32) = v56;
        *(v60 + 40) = v57;
        v54 += 16;
        v55 += 6;
        ++v53;
        --v51;
      }

      while (v51);
      v41 = v124;
      v45 = v127;
      v46 = v122;
      v50 = v119;
    }

    v41[14] = v52;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v94 = sub_1DACB9214();
    v96 = v95;

    v97 = sub_1DAA7ABE4(v94, v96, &v128);

    *(v49 + 14) = v97;
    _os_log_impl(&dword_1DAA3F000, v45, v46, "Filtered down watchlists matching string=%s, watchlists=[%s]", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v50, -1, -1);
    MEMORY[0x1E1278C00](v49, -1, -1);

    v44 = v104;
    v61 = *(v104 + 16);
    if (!v61)
    {
      goto LABEL_44;
    }

LABEL_31:
    v62 = v41;
    v63 = v41[23];
    v64 = v62[19];
    v129 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v61, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v65 = v129;
    v108 = (v64 + 104);
    v105 = (v63 + 8);
    v106 = (v63 + 16);
    v66 = (v44 + 64);
    v107 = *MEMORY[0x1E6968DF0];
    while (2)
    {
      v120 = v65;
      v123 = v61;
      v68 = v124[25];
      v67 = v124[26];
      v69 = v124[20];
      v70 = v124[21];
      v71 = v124[18];
      v112 = *(v66 - 4);
      v115 = *(v66 - 3);
      v72 = *(v66 - 2);
      v73 = *(v66 - 1);
      v74 = *v66;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v108)(v69, v107, v71);
      v75 = v73;
      sub_1DACB7914();
      v76 = sub_1DACB6F34();
      if (v73 == sub_1DACB9324() && v74 == v77)
      {
        sub_1DACB71E4();

        goto LABEL_36;
      }

      v78 = sub_1DACBA174();
      sub_1DACB71E4();

      v79 = v112;
      v80 = v115;
      if (v78)
      {
LABEL_36:
        v116 = v76;
        v81 = v75;
        v83 = v124[24];
        v82 = v124[25];
        v84 = v124[22];
        sub_1DACB9284();
        (*v106)(v83, v82, v84);
        if (qword_1EE123DD8 != -1)
        {
          swift_once();
        }

        v85 = v124[24];
        v86 = v124[25];
        v88 = v124[21];
        v87 = v124[22];
        v89 = qword_1EE13E470;
        sub_1DACB7DF4();
        v79 = sub_1DACB9384();
        v80 = v90;
        (*v105)(v86, v87);

        v75 = v81;
        v76 = v116;
      }

      v124[11] = v79;
      v124[12] = v80;
      sub_1DACB6EE4();

      v65 = v120;
      v129 = v120;
      v92 = *(v120 + 16);
      v91 = *(v120 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1DAB25C68((v91 > 1), v92 + 1, 1);
        v65 = v129;
      }

      *(v65 + 16) = v92 + 1;
      v93 = (v65 + 24 * v92);
      v93[4] = v75;
      v93[5] = v74;
      v93[6] = v76;
      v66 += 6;
      v61 = v123 - 1;
      if (v123 == 1)
      {

        v41 = v124;
        goto LABEL_45;
      }

      continue;
    }
  }

  v61 = *(v104 + 16);
  if (v61)
  {
    goto LABEL_31;
  }

LABEL_44:

  v65 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v99 = v41[25];
  v98 = v41[26];
  v100 = v41[24];
  v102 = v41[20];
  v101 = v41[21];

  v103 = v41[1];

  v103(v65);
}

uint64_t sub_1DAAFF09C()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];
  v8 = v0[31];

  return v7();
}

uint64_t sub_1DAAFF14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DAAFF1F4;

  return WatchlistQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1DAAFF1F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t static WatchlistQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v26 = MEMORY[0x1E6968E10];
  sub_1DAB02E58(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v25 - v3;
  v4 = sub_1DACB78E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB92E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1DACB7904();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v5 + 104);
  v18(v8, v17, v4);
  sub_1DACB7914();
  v19 = *(v14 + 56);
  v14 += 56;
  v19(v29, 1, 1, v13);
  sub_1DAB02E58(0, &qword_1ECBE6D78, v26, MEMORY[0x1E69E6F90]);
  v20 = *(v14 + 16);
  v21 = (*(v14 + 24) + 32) & ~*(v14 + 24);
  v26 = swift_allocObject();
  *(v26 + 1) = xmmword_1DACC4A00;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  v22 = v28;
  sub_1DACB7094();
  v23 = sub_1DACB7084();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1DAAFF940()
{
  sub_1DAB02EBC();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE6D48);
  __swift_project_value_buffer(v1, qword_1ECBE6D48);
  sub_1DAB02F28();
  sub_1DAADA468();
  return sub_1DACB7194();
}

uint64_t sub_1DAAFF9C8()
{
  sub_1DAB07544();
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAADA468();
  v0 = sub_1DACB71F4();

  sub_1DAA6149C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC4A10;
  *(v1 + 32) = v0;
  sub_1DAB02F28();
  sub_1DACB71F4();
  v2 = sub_1DACB7394();

  return v2;
}

uint64_t sub_1DAAFFAD8()
{
  sub_1DAB07624();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v0);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  sub_1DAB076F0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1DACB70C4();
  sub_1DAADA468();
  sub_1DACB73E4();

  sub_1DAB077B4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAB02E58(0, &unk_1ECBE6E30, sub_1DAB07624, MEMORY[0x1E69E6F90]);
  v16 = *(v2 + 72);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D40;
  v19 = v18 + v17;
  v20 = *(v3 + 16);
  v20(v19, v9, v1);
  v20(v19 + v16, v7, v1);
  sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DAB02F28();
  sub_1DAA8D9E8();
  v21 = sub_1DACB73D4();

  v22 = *(v3 + 8);
  v22(v7, v1);
  v22(v9, v1);
  return v21;
}

uint64_t sub_1DAAFFDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1DAB07888;
  a3[1] = v6;

  return sub_1DACB71E4();
}

uint64_t sub_1DAAFFE58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1DACB93A4();
  sub_1DACB93A4();
  sub_1DAA642D8();
  v5 = sub_1DACB9B64();

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1DAAFFEF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1DAB07880;
  a2[1] = v5;

  return sub_1DACB71E4();
}

uint64_t sub_1DAAFFF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_1DACB93A4();
  v7 = v6;
  if (v5 == sub_1DACB93A4() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DACBA174();
  }

  *a2 = v10 & 1;
  return result;
}

uint64_t static WatchlistQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F8 != -1)
  {
    swift_once();
  }

  sub_1DAB02EBC();
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D48);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB000B0()
{
  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE6D60);
  __swift_project_value_buffer(v1, qword_1ECBE6D60);
  sub_1DAADA468();
  return sub_1DACB72F4();
}

uint64_t sub_1DAB00168()
{
  sub_1DAA8D834(0, &qword_1ECBE6DF8, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A630]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  swift_getKeyPath();
  sub_1DAADA468();
  sub_1DAB07424();
  sub_1DACB73F4();
  sub_1DACB7444();
  v9 = *(v2 + 8);
  v9(v6, v1);
  sub_1DAB074B4();
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC1D20;
  (*(v2 + 16))(v12 + v11, v8, v1);
  v13 = sub_1DACB7434();

  v9(v8, v1);
  return v13;
}

uint64_t static WatchlistQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A00 != -1)
  {
    swift_once();
  }

  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D60);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t WatchlistQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 257) = a5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 256) = a2;
  *(v6 + 120) = a1;
  v7 = sub_1DACB78E4();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v10 = *(*(sub_1DACB7E44() - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v11 = sub_1DACB92E4();
  *(v6 + 176) = v11;
  v12 = *(v11 - 8);
  *(v6 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v14 = *(*(sub_1DACB7904() - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *v5;
  *(v6 + 208) = v15;
  *(v6 + 216) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1DAB005E0, 0, 0);
}

uint64_t sub_1DAB005E0()
{
  v29 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = sub_1DACB8C94();
  *(v0 + 224) = __swift_project_value_buffer(v3, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 257);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 256);
    v10 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 134218754;
    *(v11 + 4) = *(v10 + 16);

    *(v11 + 12) = 2080;
    v13 = sub_1DACB72E4();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 6581857;
    }

    else
    {
      v15 = 29295;
    }

    if (v14)
    {
      v16 = 0xE200000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_1DAA7ABE4(v15, v16, &v28);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = *(v7 + 16);

    *(v11 + 24) = v18;

    *(v11 + 32) = 2048;
    if (v6)
    {
      v19 = 0;
    }

    else
    {
      v19 = v8;
    }

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Querying watchlists matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v11, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    swift_bridgeObjectRelease_n();
  }

  v22 = *(v0 + 216);
  sub_1DACB6D24();
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
  *(v0 + 232) = (*(v24 + 40))(1, v23, v24);
  v25 = *(MEMORY[0x1E69D6B08] + 4);
  v26 = swift_task_alloc();
  *(v0 + 240) = v26;
  *v26 = v0;
  v26[1] = sub_1DAB008A0;

  return MEMORY[0x1EEE44EE0](v0 + 72);
}

uint64_t sub_1DAB008A0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1DAAFF09C;
  }

  else
  {
    v5 = *(v2 + 232);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAB009C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB009C4()
{
  v190 = v0;
  v1 = v0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 72);
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  v166 = v0;
  v167 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v189[0] = v7;
    *v6 = 136315138;
    v9 = *(v3 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v172 = v7;
      v176 = v6;
      v180 = v5;
      v183 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v9, 0);
      v10 = v183;
      v11 = *(v183 + 2);
      v12 = 16 * v11;
      v13 = (v3 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v183 = v10;
        v16 = v11 + 1;
        v17 = *(v10 + 3);
        sub_1DACB71E4();
        if (v11 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v16, 1);
          v10 = v183;
        }

        *(v10 + 2) = v16;
        v18 = &v10[v12];
        *(v18 + 4) = v14;
        *(v18 + 5) = v15;
        v12 += 16;
        v13 += 6;
        ++v11;
        --v9;
      }

      while (v9);
      v3 = v167;
      v5 = v180;
      v8 = v172;
      v6 = v176;
    }

    v1 = v166;
    *(v166 + 112) = v10;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v19 = sub_1DACB9214();
    v21 = v20;

    v2 = sub_1DAA7ABE4(v19, v21, v189);

    *(v6 + 4) = v2;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched all watchlists for property query, watchlists=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v22 = *(v1 + 120);
  v159 = *(v22 + 16);
  if (!v159)
  {

    sub_1DAA8E020();
    v88 = sub_1DACB9624();
    goto LABEL_92;
  }

  v23 = 0;
  v24 = 0;
  v155 = *(v1 + 256);
  v156 = v3 + 73;
  v157 = v22 + 32;
  v161 = *(v1 + 248);
  do
  {
    v163 = v23;
    v165 = v24;
    v25 = v157 + 16 * v24;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v3 + 16);
    sub_1DACB71E4();
    sub_1DACB71F4();
    v177 = v26;
    if (v28)
    {
      v29 = 0;
      v1 = v156;
      v30 = MEMORY[0x1E69E7CC0];
      v169 = v28;
      v173 = v27;
      while (v29 < *(v3 + 16))
      {
        v31 = *(v1 - 1);
        v32 = *(v1 - 9);
        v33 = *(v1 - 17);
        v34 = *(v1 - 25);
        v35 = *(v1 - 33);
        v183 = *(v1 - 41);
        *&v184 = v35;
        *(&v184 + 1) = v34;
        v185 = v33;
        v186 = v32;
        v187 = v31;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        (v27)(&v188, &v183);
        if (v188 == 1)
        {
          v2 = v183;
          v181 = v184;
          v37 = v185;
          v36 = v186;
          v38 = v187;
          v39 = HIBYTE(v187);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v189[0] = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAB25C88(0, *(v30 + 16) + 1, 1);
            v30 = v189[0];
          }

          v42 = *(v30 + 16);
          v41 = *(v30 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1DAB25C88((v41 > 1), v42 + 1, 1);
            v30 = v189[0];
          }

          *(v30 + 16) = v42 + 1;
          v43 = v30 + 48 * v42;
          *(v43 + 32) = v2;
          *(v43 + 40) = v181;
          *(v43 + 56) = v37;
          *(v43 + 64) = v36;
          *(v43 + 72) = v38;
          *(v43 + 73) = v39;
          v3 = v167;
          v28 = v169;
          v27 = v173;
          v26 = v177;
        }

        else
        {
          v2 = *(&v184 + 1);
        }

        ++v29;
        v1 += 48;
        if (v28 == v29)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v44 = *(v166 + 224);

    v45 = sub_1DAB0604C(v30);

    sub_1DACB71E4();
    v46 = sub_1DACB8C74();
    v47 = sub_1DACB98F4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v183 = v49;
      *v48 = 136315138;
      *(v166 + 104) = sub_1DAAFC004(v45);
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v50 = sub_1DACB9214();
      v52 = v51;

      v53 = sub_1DAA7ABE4(v50, v52, &v183);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1DAA3F000, v46, v47, "Filtered watchlists down to watchlists=[%s]", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E1278C00](v49, -1, -1);
      MEMORY[0x1E1278C00](v48, -1, -1);
    }

    if (v163)
    {
      v1 = v166;
      if (*(v166 + 256))
      {
        v45 = sub_1DAB01C18(v45, v163);
        sub_1DACB71E4();
      }

      else
      {
        v57 = sub_1DAB038EC(v45, v163, sub_1DAB03B60, sub_1DAB03B60);

        sub_1DACB71F4();
        v45 = v57;
      }

      v2 = *(v166 + 224);
      sub_1DACB71E4();
      v58 = sub_1DACB8C74();
      v59 = sub_1DACB98F4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v183 = v61;
        *v60 = 136315394;
        v62 = sub_1DAAFC004(v45);

        *(v166 + 96) = v62;
        sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1DAA587CC();
        v63 = sub_1DACB9214();
        v65 = v64;

        v66 = sub_1DAA7ABE4(v63, v65, &v183);

        *(v60 + 4) = v66;
        *(v60 + 12) = 2080;
        v67 = sub_1DACB72E4();
        v68 = (v67 & 1) == 0;
        if (v67)
        {
          v69 = 6581857;
        }

        else
        {
          v69 = 29295;
        }

        if (v68)
        {
          v2 = 0xE200000000000000;
        }

        else
        {
          v2 = 0xE300000000000000;
        }

        v70 = sub_1DAA7ABE4(v69, v2, &v183);

        *(v60 + 14) = v70;
        _os_log_impl(&dword_1DAA3F000, v58, v59, "Combined watchlist filter results into accumulated results=[%s], comparatorMode=%s", v60, 0x16u);
        swift_arrayDestroy();
        v71 = v61;
        v1 = v166;
        MEMORY[0x1E1278C00](v71, -1, -1);
        MEMORY[0x1E1278C00](v60, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v1 = v166;
      v54 = *(v166 + 224);
      v2 = sub_1DACB8C74();
      v55 = sub_1DACB98F4();
      if (os_log_type_enabled(v2, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1DAA3F000, v2, v55, "No existing result for watchlist filters, so storing first results", v56, 2u);
        MEMORY[0x1E1278C00](v56, -1, -1);
      }
    }

    v24 = v165 + 1;
    v23 = v45;
  }

  while (v165 + 1 != v159);
  v72 = *(v1 + 224);
  sub_1DACB71E4();
  v73 = sub_1DACB8C74();
  v74 = sub_1DACB9914();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v183 = v76;
    *v75 = 136315138;
    *(v166 + 88) = sub_1DAAFC004(v45);
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v77 = sub_1DACB9214();
    v79 = v78;

    v80 = sub_1DAA7ABE4(v77, v79, &v183);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_1DAA3F000, v73, v74, "Successfully applied all filters, found watchlists=[%s]", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v81 = v76;
    v1 = v166;
    MEMORY[0x1E1278C00](v81, -1, -1);
    MEMORY[0x1E1278C00](v75, -1, -1);
  }

  v82 = *(v45 + 16);
  v83 = MEMORY[0x1E69E7CC0];
  if (!v82)
  {
LABEL_47:
    v85 = *(v1 + 128);
    v183 = v83;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAB06D80(&v183, v85);
    if (v161)
    {
      v86 = *(v1 + 128);
    }

    v2 = *(v1 + 224);
    v89 = *(v1 + 128);

    v26 = v183;
    sub_1DACB71F4();
    v27 = sub_1DACB8C74();
    v90 = sub_1DACB9914();

    if (os_log_type_enabled(v27, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = v92;
      v189[0] = v92;
      *v91 = 136315138;
      v94 = *(v26 + 2);
      v95 = MEMORY[0x1E69E7CC0];
      if (v94)
      {
        v168 = v92;
        v170 = v91;
        v174 = v90;
        v178 = v27;
        v183 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v94, 0);
        v95 = v183;
        v96 = *(v183 + 2);
        v97 = 16 * v96;
        v98 = (v26 + 40);
        do
        {
          v99 = *(v98 - 1);
          v100 = *v98;
          v183 = v95;
          v101 = v96 + 1;
          v102 = *(v95 + 3);
          sub_1DACB71E4();
          if (v96 >= v102 >> 1)
          {
            sub_1DAA5859C((v102 > 1), v101, 1);
            v95 = v183;
          }

          *(v95 + 2) = v101;
          v103 = &v95[v97];
          *(v103 + 4) = v99;
          *(v103 + 5) = v100;
          v97 += 16;
          v98 += 6;
          ++v96;
          --v94;
        }

        while (v94);
        v27 = v178;
        v90 = v174;
        v93 = v168;
        v91 = v170;
      }

      *(v166 + 80) = v95;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v115 = sub_1DACB9214();
      v117 = v116;
      v1 = v166;

      v2 = sub_1DAA7ABE4(v115, v117, v189);

      *(v91 + 4) = v2;
      _os_log_impl(&dword_1DAA3F000, v27, v90, "Applied sorts to sortedWatchlists=[%s]", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1E1278C00](v93, -1, -1);
      MEMORY[0x1E1278C00](v91, -1, -1);

      if ((*(v166 + 257) & 1) == 0)
      {
LABEL_61:
        v104 = *(v1 + 136);
        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        v105 = *(v26 + 2);
        if (v105 >= v104)
        {
          v105 = *(v1 + 136);
        }

        v106 = 2 * v105;
        if (v104)
        {
          v2 = v106 + 1;
        }

        else
        {
          v2 = 1;
        }

        sub_1DACBA194();
        swift_unknownObjectRetain_n();
        v107 = swift_dynamicCastClass();
        if (!v107)
        {
          swift_unknownObjectRelease();
          v107 = MEMORY[0x1E69E7CC0];
        }

        v108 = *(v107 + 16);

        if (v108 != v2 >> 1)
        {
          goto LABEL_97;
        }

        v109 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v109)
        {
          v109 = MEMORY[0x1E69E7CC0];
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_76;
    }

LABEL_60:

    if ((*(v1 + 257) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_76:

    v109 = v26;
    v118 = *(v26 + 2);
    if (!v118)
    {
      goto LABEL_91;
    }

    goto LABEL_77;
  }

  v83 = sub_1DAB02B38(*(v45 + 16), 0);
  v84 = sub_1DAB058F4(&v183, (v83 + 32), v82, v45);
  v2 = v183;
  v1 = v185;
  v26 = v45;
  sub_1DACB71E4();
  sub_1DAA54B38();
  if (v84 == v82)
  {
    v1 = v166;
    goto LABEL_47;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  swift_unknownObjectRelease();
  sub_1DAB0300C(v26, (v26 + 32), 0, v2);
  v109 = v154;
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  v110 = *(v1 + 224);
  v111 = sub_1DACB8C74();
  v112 = sub_1DACB9914();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = *(v1 + 136);
    v114 = swift_slowAlloc();
    *v114 = 134217984;
    *(v114 + 4) = v113;

    _os_log_impl(&dword_1DAA3F000, v111, v112, "Limited results down to limit=%ld", v114, 0xCu);
    MEMORY[0x1E1278C00](v114, -1, -1);
  }

  else
  {
  }

  v118 = *(v109 + 16);
  if (v118)
  {
LABEL_77:
    v119 = *(v1 + 184);
    v120 = *(v1 + 152);
    v183 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v118, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v88 = v183;
    v164 = (v120 + 104);
    v158 = (v119 + 8);
    v160 = (v119 + 16);
    v121 = (v109 + 64);
    v162 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v179 = v88;
      v182 = v118;
      v123 = *(v1 + 200);
      v122 = *(v1 + 208);
      v125 = *(v1 + 160);
      v124 = *(v1 + 168);
      v126 = *(v1 + 144);
      v127 = *(v121 - 3);
      v171 = *(v121 - 4);
      v128 = *(v121 - 2);
      v129 = *(v121 - 1);
      v130 = *v121;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v164)(v125, v162, v126);
      sub_1DACB7914();
      v131 = sub_1DACB6F34();
      v175 = v129;
      if (v129 == sub_1DACB9324() && v130 == v132)
      {
        break;
      }

      v133 = sub_1DACBA174();
      sub_1DACB71E4();

      v134 = v127;
      v1 = v166;
      v135 = v171;
      if (v133)
      {
        goto LABEL_82;
      }

LABEL_85:

      *(v1 + 56) = v135;
      *(v1 + 64) = v134;
      sub_1DACB6EE4();

      v88 = v179;
      v183 = v179;
      v146 = *(v179 + 2);
      v145 = *(v179 + 3);
      if (v146 >= v145 >> 1)
      {
        sub_1DAB25C68((v145 > 1), v146 + 1, 1);
        v88 = v183;
      }

      *(v88 + 2) = v146 + 1;
      v147 = &v88[24 * v146];
      *(v147 + 4) = v175;
      *(v147 + 5) = v130;
      *(v147 + 6) = v131;
      v121 += 6;
      v118 = v182 - 1;
      if (v182 == 1)
      {

        goto LABEL_92;
      }
    }

    sub_1DACB71E4();

    v1 = v166;
LABEL_82:
    v137 = *(v1 + 192);
    v136 = *(v1 + 200);
    v138 = *(v1 + 176);
    sub_1DACB9284();
    (*v160)(v137, v136, v138);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v139 = *(v1 + 192);
    v140 = *(v1 + 200);
    v142 = *(v1 + 168);
    v141 = *(v1 + 176);
    v143 = qword_1EE13E470;
    sub_1DACB7DF4();
    v135 = sub_1DACB9384();
    v134 = v144;
    (*v158)(v140, v141);

    goto LABEL_85;
  }

LABEL_91:

  v88 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v149 = *(v1 + 200);
  v148 = *(v1 + 208);
  v150 = *(v1 + 192);
  v152 = *(v1 + 160);
  v151 = *(v1 + 168);

  v153 = *(v1 + 8);

  return v153(v88);
}

uint64_t sub_1DAB01C18(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v16 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 26);
      v14 = v12[1];
      v17 = *v12;
      v18[0] = v14;
      *(v18 + 10) = v13;
      sub_1DAA8DB84(&v17, v15);
      sub_1DAB88B38(v15, &v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v16;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB01D3C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v22 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1DAA9B1C8(v20))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 136 * (v10 | (v9 << 6));
    v23[0] = *v11;
    v12 = *(v11 + 64);
    v14 = *(v11 + 16);
    v13 = *(v11 + 32);
    v23[3] = *(v11 + 48);
    v23[4] = v12;
    v23[1] = v14;
    v23[2] = v13;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 80);
    v24 = *(v11 + 128);
    v23[6] = v16;
    v23[7] = v15;
    v23[5] = v17;
    sub_1DAA806E4(v23, v20);
    sub_1DAB88E84(v18, v23);
    v20[6] = v18[6];
    v20[7] = v18[7];
    v21 = v19;
    v20[2] = v18[2];
    v20[3] = v18[3];
    v20[4] = v18[4];
    v20[5] = v18[5];
    v20[0] = v18[0];
    v20[1] = v18[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v22;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB01EB0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_1DAB01EE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F8 != -1)
  {
    swift_once();
  }

  sub_1DAB02EBC();
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D48);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB01F90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A00 != -1)
  {
    swift_once();
  }

  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D60);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB02074(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return WatchlistQuery.entities(matching:mode:sortedBy:limit:)(a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAB0213C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_1DACB78E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7E44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92E4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB7904();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA8D834(0, &qword_1ECBE6DF0, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A128]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v104 = &v72 - v25;
  v73 = a3;
  v26 = *(a3 + 2);
  if (!v26)
  {
    return 1;
  }

  v27 = *(a1 + 8);
  v90 = *a1;
  v100 = v27;
  v28 = *(a1 + 24);
  v89 = *(a1 + 16);
  v88 = v28;
  v87 = *(a1 + 32);
  v86 = *(a1 + 40);
  v85 = *(a1 + 41);
  v29 = *(a2 + 8);
  v82 = *a2;
  v81 = v29;
  v30 = *(a2 + 24);
  v80 = *(a2 + 16);
  v79 = v30;
  v78 = *(a2 + 32);
  v77 = *(a2 + 40);
  v32 = *(v24 + 16);
  v31 = v24 + 16;
  v84 = v32;
  v33 = (v7 + 104);
  v83 = (v31 - 8);
  v76 = *(a2 + 41);
  v34 = &v73[(*(v31 + 64) + 32) & ~*(v31 + 64)];
  v116 = *MEMORY[0x1E6968DF0];
  v35 = 1 - v26;
  v91 = v31;
  v74 = *(v31 + 56);
  v103 = v22;
  v75 = v6;
  v98 = v20;
  v99 = v16;
  v97 = (v7 + 104);
  while (1)
  {
    v38 = v101;
    v95 = v35;
    v93 = v34;
    v84(v104);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v102 = v39;
    sub_1DACB71E4();
    v40 = v89;
    sub_1DACB71E4();
    v41 = v87;
    sub_1DACB71E4();
    sub_1DACB9284();
    sub_1DACB7DF4();
    v96 = *v33;
    v96(v38, v116, v6);
    sub_1DACB7914();
    v42 = sub_1DACB6F34();
    v109 = v90;
    v110 = v100;
    v43 = v88;
    v111 = v40;
    v112 = v88;
    v113 = v41;
    v114 = v86;
    v115 = v85;
    sub_1DACB71E4();
    v44 = sub_1DAA6BA64();
    v46 = v45;

    v36 = v103;

    v106 = v44;
    v107 = v46;
    v47 = v104;
    sub_1DACB6EE4();
    sub_1DACB6F74();
    v106 = v43;
    v107 = v41;
    v108 = v42;
    swift_getAtPartialKeyPath();

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v94 = v105;
    v48 = v81;
    sub_1DACB71E4();
    v49 = v80;
    sub_1DACB71E4();
    v50 = v78;
    sub_1DACB71E4();
    sub_1DACB9284();
    sub_1DACB7DF4();
    v96(v101, v116, v6);
    sub_1DACB7914();
    v51 = sub_1DACB6F34();
    v109 = v82;
    v110 = v48;
    v52 = v79;
    v111 = v49;
    v112 = v79;
    v113 = v50;
    v114 = v77;
    v115 = v76;
    sub_1DACB71E4();
    v53 = sub_1DAA6BA64();
    v54 = v47;
    v56 = v55;

    v106 = v53;
    v107 = v56;
    v47 = v54;
    sub_1DACB6EE4();
    v36 = v103;
    sub_1DACB6F74();
    v106 = v52;
    v107 = v50;
    v108 = v51;
    swift_getAtPartialKeyPath();

    if ((swift_dynamicCast() & 1) == 0)
    {

      break;
    }

    sub_1DACB6ED4();
    v57 = v109;
    v58 = v110;
    sub_1DACB6ED4();
    v59 = v109;
    v47 = v110;
    if (sub_1DACB6F84())
    {
      if (v57 != v59 || v58 != v47)
      {
        goto LABEL_13;
      }
    }

    else if (v59 != v57 || v47 != v58)
    {
LABEL_13:
      v60 = sub_1DACBA174();

      v36 = v103;
      (*v83)(v104, v103);
      v6 = v75;
      v37 = v95;
      if ((v60 & 1) != 0 || !v95)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v36 = v103;
    (*v83)(v104, v103);
    v6 = v75;
    v37 = v95;
    if (!v95)
    {
      return 1;
    }

LABEL_4:
    v34 = &v93[v74];
    v35 = v37 + 1;
    v33 = v97;
    if (v35 == 1)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  v58 = v73;
  if (qword_1EE11D388 == -1)
  {
    goto LABEL_18;
  }

LABEL_23:
  swift_once();
LABEL_18:
  v61 = sub_1DACB8C94();
  __swift_project_value_buffer(v61, qword_1EE11D390);
  sub_1DACB71E4();
  v62 = sub_1DACB8C74();
  v63 = sub_1DACB9904();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v109 = v65;
    *v64 = 136315138;
    v66 = MEMORY[0x1E1277130](v58, v36);
    v68 = sub_1DAA7ABE4(v66, v67, &v109);

    *(v64 + 4) = v68;
    v69 = v104;
    _os_log_impl(&dword_1DAA3F000, v62, v63, "Watchlist sorts unexpectedly contained a parameter which is not a String. sorts=%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v70 = v65;
    v47 = v69;
    MEMORY[0x1E1278C00](v70, -1, -1);
    MEMORY[0x1E1278C00](v64, -1, -1);
  }

  MEMORY[0x1E1275DD0]("Encountered a WatchlistEntity value in WatchlistQuery which is not a String. We need to add explicit support for this in the property queries.", 142, 2, MEMORY[0x1E69E7CC0]);
  (*v83)(v47, v36);
  return 1;
}