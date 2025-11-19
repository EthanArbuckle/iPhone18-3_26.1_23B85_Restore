uint64_t sub_1DAB7C7AC()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[48];

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  v6 = v0[1];
  v7 = v0[62];

  return v6();
}

uint64_t sub_1DAB7C850(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = *v1;
  *(v2 + 96) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7C880, 0, 0);
}

uint64_t sub_1DAB7C880()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watched stocks for suggested symbol entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[12];

  sub_1DACB6D24();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[14] = (*(v7 + 120))(v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1DAB7CA1C;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB7CA1C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DAB7CDDC;
  }

  else
  {
    v5 = *(v2 + 112);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAB7CB40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB7CB40()
{
  v33 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v32 = v6;
    *v5 = 136315138;
    v8 = *(v2 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v24 = v6;
      v25 = v5;
      v26 = v4;
      v27 = v3;
      v29 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v29;
      v10 = *(v29 + 16);
      v11 = 16 * v10;
      v28 = v2;
      v12 = (v2 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = v10 + 1;
        v16 = *(v29 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
        }

        *(v29 + 16) = v15;
        v17 = v29 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 17;
        ++v10;
        --v8;
      }

      while (v8);
      v3 = v27;
      v2 = v28;
      v4 = v26;
      v7 = v24;
      v5 = v25;
    }

    *(v0 + 64) = v9;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v32);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v30 = *(v0 + 80);
  v31 = *(v0 + 96);
  sub_1DAB7CE48(v2, MEMORY[0x1E69E7CC0], *(v0 + 72));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DAB7CDDC()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1DAB7CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  sub_1DAB8495C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v67 - v7;
  v8 = sub_1DACB7904();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB84A48(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v67 - v15;
  sub_1DAB84A48(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v79 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - v21;
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v78 = a2;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D58(0, v23, 0);
    v24 = v102;
    v25 = a1 + 32;
    do
    {
      v26 = *(v25 + 80);
      v27 = *(v25 + 112);
      v99 = *(v25 + 96);
      v100 = v27;
      v28 = *(v25 + 16);
      v29 = *(v25 + 48);
      v95 = *(v25 + 32);
      v96 = v29;
      v30 = *(v25 + 48);
      v31 = *(v25 + 80);
      v97 = *(v25 + 64);
      v98 = v31;
      v32 = *(v25 + 16);
      v93 = *v25;
      v94 = v32;
      v33 = *(v25 + 112);
      v90 = v99;
      v91 = v33;
      v86 = v95;
      v87 = v30;
      v88 = v97;
      v89 = v26;
      v101 = *(v25 + 128);
      v92 = *(v25 + 128);
      v84 = v93;
      v85 = v28;
      sub_1DAA806E4(&v93, &v80);
      sub_1DAA806E4(&v93, &v80);
      sub_1DAB9BFD8(&v84, &v80);
      v84 = v80;
      v85 = v81;
      v86 = v82;
      v87 = v83;
      sub_1DAADD25C();
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v93);
      v102 = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1DAB25D58(v34 > 1, v35 + 1, 1);
        v24 = v102;
      }

      *(v24 + 16) = v35 + 1;
      (*(v17 + 32))(v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v35, v22, v79);
      v25 += 136;
      --v23;
    }

    while (v23);
    a2 = v78;
  }

  v36 = *(a2 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v38 = v68;
  if (v36)
  {
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D58(0, v36, 0);
    v37 = v102;
    v39 = a2 + 32;
    v78 = v17 + 32;
    do
    {
      v40 = *(v39 + 80);
      v41 = *(v39 + 112);
      v99 = *(v39 + 96);
      v100 = v41;
      v42 = *(v39 + 16);
      v43 = *(v39 + 48);
      v95 = *(v39 + 32);
      v96 = v43;
      v44 = *(v39 + 48);
      v45 = *(v39 + 80);
      v97 = *(v39 + 64);
      v98 = v45;
      v46 = *(v39 + 16);
      v93 = *v39;
      v94 = v46;
      v47 = *(v39 + 112);
      v90 = v99;
      v91 = v47;
      v86 = v95;
      v87 = v44;
      v88 = v97;
      v89 = v40;
      v101 = *(v39 + 128);
      v92 = *(v39 + 128);
      v84 = v93;
      v85 = v42;
      sub_1DAA806E4(&v93, &v80);
      sub_1DAA806E4(&v93, &v80);
      sub_1DAB9BFD8(&v84, &v80);
      v84 = v80;
      v85 = v81;
      v86 = v82;
      v87 = v83;
      sub_1DAADD25C();
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v93);
      v102 = v37;
      v49 = *(v37 + 16);
      v48 = *(v37 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1DAB25D58(v48 > 1, v49 + 1, 1);
        v37 = v102;
      }

      *(v37 + 16) = v49 + 1;
      (*(v17 + 32))(v37 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v49, v38, v79);
      v39 += 136;
      --v36;
    }

    while (v36);
  }

  v51 = v72;
  v50 = v73;
  v53 = v70;
  v52 = v71;
  if (*(v24 + 16))
  {
    if (qword_1ECBE5AD0 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v50, qword_1ECBE8000);
    v55 = v77;
    (*(v51 + 16))(v77, v54, v50);
    v56 = sub_1DAADD25C();
    MEMORY[0x1E1274B90](v55, v24, &type metadata for SymbolWidgetEntity, v56);
    v57 = sub_1DAADC16C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1DAADC16C(v58 > 1, v59 + 1, 1, v57);
    }

    v60 = v69;
    v57[2] = v59 + 1;
    (*(v53 + 32))(v57 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v59, v76, v52);
    if (*(v37 + 16))
    {
      goto LABEL_18;
    }

LABEL_26:

    goto LABEL_27;
  }

  v57 = MEMORY[0x1E69E7CC0];
  v60 = v69;
  if (!*(v37 + 16))
  {
    goto LABEL_26;
  }

LABEL_18:
  if (qword_1ECBE5AD8 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v50, qword_1ECBE8018);
  v62 = v77;
  (*(v51 + 16))(v77, v61, v50);
  v63 = sub_1DAADD25C();
  MEMORY[0x1E1274B90](v62, v37, &type metadata for SymbolWidgetEntity, v63);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_1DAADC16C(0, v57[2] + 1, 1, v57);
  }

  v65 = v57[2];
  v64 = v57[3];
  if (v65 >= v64 >> 1)
  {
    v57 = sub_1DAADC16C(v64 > 1, v65 + 1, 1, v57);
  }

  v57[2] = v65 + 1;
  (*(v53 + 32))(v57 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v65, v60, v52);
LABEL_27:
  (*(v51 + 56))(v74, 1, 1, v50);
  sub_1DAADD25C();
  return sub_1DACB7144();
}

uint64_t sub_1DAB7D6A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 472) = a1;
  *(v2 + 480) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAB7D6CC, 0, 0);
}

uint64_t sub_1DAB7D6CC()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Default symbol entity requested", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[60];

  sub_1DACB6D24();
  v6 = v0[56];
  v7 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v6);
  v0[62] = (*(v7 + 120))(v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1DAB7D868;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAB7D868()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1DAB7DE30;
  }

  else
  {
    v5 = *(v2 + 496);

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v4 = sub_1DAB7D98C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB7D98C()
{
  v78 = v0;
  v1 = *(v0 + 464);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 488);
    *(v0 + 16) = *(v1 + 32);
    v3 = *(v1 + 96);
    v5 = *(v1 + 48);
    v4 = *(v1 + 64);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v3;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v1 + 128);
    v6 = *(v1 + 144);
    v8 = *(v1 + 112);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 112) = v7;
    *(v0 + 128) = v6;
    *(v0 + 96) = v8;
    sub_1DAA806E4(v0 + 16, v0 + 152);

    v54 = *(v0 + 136);
    v62 = *(v0 + 120);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v61 = *(v0 + 80);
    v58 = *(v0 + 104);
    v59 = *(v0 + 64);
    v60 = *(v0 + 72);
    v11 = *(v0 + 56);
    v56 = *(v0 + 112);
    v57 = *(v0 + 48);
    v12 = *(v0 + 32);
    v55 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_1DAA806E4(v0 + 16, v0 + 288);
    v15 = sub_1DACB8C74();
    v16 = sub_1DACB98E4();
    sub_1DAA9B1C8(v0 + 16);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v52 = v10;
      v53 = v9;
      v18 = v12;
      v19 = swift_slowAlloc();
      *&v64 = v19;
      *v17 = 136315138;
      sub_1DACB71E4();
      v20 = v11;
      v21 = v14;
      v22 = sub_1DAA7ABE4(v14, v13, &v64);

      *(v17 + 4) = v22;
      v14 = v21;
      v11 = v20;
      _os_log_impl(&dword_1DAA3F000, v15, v16, "Returning first watched stock for default symbol entity, stock=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v23 = v19;
      v12 = v18;
      v10 = v52;
      v9 = v53;
      MEMORY[0x1E1278C00](v23, -1, -1);
      MEMORY[0x1E1278C00](v17, -1, -1);
    }

    v24 = v62;
    v25 = v61;
    v27 = v59;
    v26 = v60;
    v28 = v57;
    v29 = v58;
    v31 = v55;
    v30 = v56;
    v32 = v54;
  }

  else
  {
    v38 = *(v0 + 464);

    v39 = *(v0 + 488);
    v40 = sub_1DACB8C74();
    v41 = sub_1DACB9904();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DAA3F000, v40, v41, "No watched symbols to return as default symbol entity, falling back to AAPL", v42, 2u);
      MEMORY[0x1E1278C00](v42, -1, -1);
    }

    v12 = 1280328001;

    *&v64 = 0x51414453414ELL;
    *(&v64 + 1) = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
    v14 = 0x51414453414ELL;
    v13 = 0xE600000000000000;
    if (qword_1EE122610 != -1)
    {
      swift_once();
    }

    v43 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v10 = 0xE400000000000000;
      v44 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      v9 = 1280328001;
      if (v45)
      {
        v46 = (*(v43 + 56) + 16 * v44);
        v9 = *v46;
        v10 = v46[1];
        sub_1DACB71E4();
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1280328001;
    }

    v11 = 0xEA00000000002E63;
    v47 = qword_1EE13E390;
    v24 = 0uLL;
    if (*(qword_1EE13E390 + 16))
    {
      v48 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      if (v49)
      {
        v50 = (*(v47 + 56) + 16 * v48);
        v29 = *v50;
        v51 = v50[1];
        v30 = sub_1DACB71E4();
        v25 = 3;
        v26 = 0xE600000000000000;
        v27 = 0x51414453414ELL;
        v28 = 0x6E4920656C707041;
        v32 = 0uLL;
        v31 = 0xE400000000000000;
        v24 = 0uLL;
      }

      else
      {
        v25 = 3;
        v26 = 0xE600000000000000;
        v27 = 0x51414453414ELL;
        v28 = 0x6E4920656C707041;
        v29 = 1280328001;
        v32 = 0uLL;
        v30 = 0xE400000000000000;
        v24 = 0uLL;
        v31 = 0xE400000000000000;
      }
    }

    else
    {
      v25 = 3;
      v26 = 0xE600000000000000;
      v27 = 0x51414453414ELL;
      v28 = 0x6E4920656C707041;
      v31 = 0xE400000000000000;
      v29 = 1280328001;
      v32 = 0uLL;
      v30 = 0xE400000000000000;
    }
  }

  v33 = *(v0 + 472);
  *&v64 = v14;
  *(&v64 + 1) = v13;
  v65 = v12;
  v66 = v31;
  v67 = v28;
  v68 = v11;
  v69 = v27;
  v70 = v26;
  v71 = v25;
  v72 = v9;
  v73 = v10;
  v74 = v29;
  v75 = v30;
  v76 = v24;
  v77 = v32;
  sub_1DAB9BFD8(&v64, v63);
  v34 = v63[1];
  *v33 = v63[0];
  v33[1] = v34;
  v35 = v63[3];
  v33[2] = v63[2];
  v33[3] = v35;
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DAB7DE30()
{
  v39 = v0;
  v1 = v0[64];
  v2 = v0[62];

  __swift_destroy_boxed_opaque_existential_1(v0 + 53);

  v3 = v0[61];
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "No watched symbols to return as default symbol entity, falling back to AAPL", v6, 2u);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  *&v25 = 0x51414453414ELL;
  *(&v25 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v10 = 1280328001;
    if (v11)
    {
      v12 = (*(v7 + 56) + 16 * v9);
      v10 = *v12;
      v8 = v12[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    v10 = 1280328001;
  }

  v13 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v14 = 0xE400000000000000;
    v15 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v16 = 1280328001;
    if (v17)
    {
      v18 = (*(v13 + 56) + 16 * v15);
      v16 = *v18;
      v14 = v18[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v16 = 1280328001;
    v14 = 0xE400000000000000;
  }

  v19 = v0[59];
  *&v25 = 0x51414453414ELL;
  *(&v25 + 1) = 0xE600000000000000;
  v26 = 1280328001;
  v27 = 0xE400000000000000;
  v28 = 0x6E4920656C707041;
  v29 = 0xEA00000000002E63;
  v30 = 0x51414453414ELL;
  v31 = 0xE600000000000000;
  v32 = 3;
  v33 = v10;
  v34 = v8;
  v35 = v16;
  v36 = v14;
  v37 = 0u;
  v38 = 0u;
  sub_1DAB9BFD8(&v25, v24);
  v20 = v24[1];
  *v19 = v24[0];
  v19[1] = v20;
  v21 = v24[3];
  v19[2] = v24[2];
  v19[3] = v21;
  v22 = v0[1];

  return v22();
}

uint64_t sub_1DAB7E0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return sub_1DAB7BD24(a1);
}

uint64_t sub_1DAB7E16C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA9A3AC;

  return sub_1DAB7C850(a1);
}

uint64_t sub_1DAB7E204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return sub_1DAB7E2B4(a1, a2, a3);
}

uint64_t sub_1DAB7E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  *(v4 + 120) = *v3;
  *(v4 + 136) = *(v3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7E2E8, 0, 0);
}

uint64_t sub_1DAB7E2E8()
{
  v18 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DAA7ABE4(v6, v5, &v17);
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching stocks for symbol entities matching string='%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  sub_1DACB6D24();
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v0[19] = sub_1DAAEA918(v11, v9, v12, v13);
  v14 = *(MEMORY[0x1E69D6B08] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1DAB7E4F4;

  return MEMORY[0x1EEE44EE0](v0 + 10);
}

uint64_t sub_1DAB7E4F4()
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
    v4 = sub_1DAB7E618;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB7E618()
{
  v35 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(v0 + 176) = v3;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DAA7ABE4(v7, v6, &v33);
    *(v8 + 12) = 2080;
    v10 = *(v3 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v28 = v9;
      v29 = v8;
      v30 = v5;
      v31 = v4;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v10, 0);
      v11 = v34;
      v12 = *(v34 + 16);
      v13 = 16 * v12;
      v32 = v3;
      v14 = (v3 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v34 = v11;
        v17 = v12 + 1;
        v18 = *(v11 + 24);
        sub_1DACB71E4();
        if (v12 >= v18 >> 1)
        {
          sub_1DAA5859C((v18 > 1), v17, 1);
          v11 = v34;
        }

        *(v11 + 16) = v17;
        v19 = v11 + v13;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v13 += 16;
        v14 += 17;
        ++v12;
        --v10;
      }

      while (v10);
      v4 = v31;
      v3 = v32;
      v5 = v30;
      v9 = v28;
      v8 = v29;
    }

    *(v0 + 88) = v11;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v20 = sub_1DACB9214();
    v22 = v21;

    v23 = sub_1DAA7ABE4(v20, v22, &v33);

    *(v8 + 14) = v23;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched stocks for symbol entities matching string='%s', stocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v24 = *(v0 + 136);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v24;
  v25 = swift_task_alloc();
  *(v0 + 184) = v25;
  *v25 = v0;
  v25[1] = sub_1DAB7E91C;
  v26 = *(v0 + 96);

  return sub_1DAB7EB7C(v26, v3);
}

uint64_t sub_1DAB7E91C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DAB7EA30(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6959F30] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DAB843F4();
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v7);
}

uint64_t sub_1DAB7EAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB7D6A8(a1);
}

uint64_t sub_1DAB7EB7C(uint64_t a1, uint64_t a2)
{
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;
  *(v3 + 496) = *v2;
  *(v3 + 512) = *(v2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7EBAC, 0, 0);
}

uint64_t sub_1DAB7EBAC()
{
  v1 = v0[64];
  sub_1DACB6D24();
  v2 = v0[56];
  v3 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v2);
  v0[65] = (*(v3 + 120))(v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[66] = v5;
  *v5 = v0;
  v5[1] = sub_1DAB7EC90;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAB7EC90()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v8 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 520);

    v5 = sub_1DAB7F360;
  }

  else
  {
    v6 = *(v2 + 520);

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v5 = sub_1DAB7EDC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAB7EDC8()
{
  v78 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + 152);
    v5 = *(v0 + 536);
    v6 = v2 + 32;
    v7 = v3 - 1;
    v8 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v6;
      v9 = *(v6 + 16);
      v10 = *(v6 + 32);
      v11 = *(v6 + 64);
      *(v0 + 64) = *(v6 + 48);
      *(v0 + 80) = v11;
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      v12 = *(v6 + 80);
      v13 = *(v6 + 96);
      v14 = *(v6 + 112);
      *(v0 + 144) = *(v6 + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v14;
      *(v0 + 96) = v12;
      *v4 = *v6;
      v15 = *(v6 + 16);
      v16 = *(v6 + 32);
      v17 = *(v6 + 64);
      *(v0 + 200) = *(v6 + 48);
      *(v0 + 216) = v17;
      *(v0 + 168) = v15;
      *(v0 + 184) = v16;
      v18 = *(v6 + 80);
      v19 = *(v6 + 96);
      v20 = *(v6 + 112);
      *(v0 + 280) = *(v6 + 128);
      *(v0 + 248) = v19;
      *(v0 + 264) = v20;
      *(v0 + 232) = v18;
      v21 = swift_task_alloc();
      *(v21 + 16) = v4;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v22 = sub_1DAC784F4(sub_1DAB84A28, v21, v1);

      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAA5A0A8(0, *(v8 + 2) + 1, 1, v8);
        }

        v24 = *(v8 + 2);
        v23 = *(v8 + 3);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v26 = sub_1DAA5A0A8((v23 > 1), v24 + 1, 1, v8);
          v8 = v26;
        }

        else
        {
          v26 = v8;
        }
      }

      else
      {
        v27 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DAA5A0A8(0, *(v73 + 16) + 1, 1, v73);
        }

        v24 = *(v27 + 2);
        v28 = *(v27 + 3);
        v29 = v27;
        v25 = v24 + 1;
        if (v24 >= v28 >> 1)
        {
          v26 = sub_1DAA5A0A8((v28 > 1), v24 + 1, 1, v29);
          v73 = v26;
        }

        else
        {
          v73 = v29;
          v26 = v29;
        }
      }

      *(v26 + 2) = v25;
      v30 = &v26[136 * v24];
      *(v30 + 2) = *(v0 + 16);
      v31 = *(v0 + 32);
      v32 = *(v0 + 48);
      v33 = *(v0 + 80);
      *(v30 + 5) = *(v0 + 64);
      *(v30 + 6) = v33;
      *(v30 + 3) = v31;
      *(v30 + 4) = v32;
      v34 = *(v0 + 96);
      v35 = *(v0 + 112);
      v36 = *(v0 + 128);
      *(v30 + 20) = *(v0 + 144);
      *(v30 + 8) = v35;
      *(v30 + 9) = v36;
      *(v30 + 7) = v34;
      if (!v7)
      {
        break;
      }

      --v7;
      v6 += 136;
    }
  }

  else
  {
    v37 = *(v0 + 464);

    v8 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 488);
  v39 = sub_1DACB8C94();
  __swift_project_value_buffer(v39, qword_1EE11D390);
  sub_1DACB71E4();
  v40 = v73;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v41 = sub_1DACB8C74();
  v42 = sub_1DACB9914();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    v77[0] = v44;
    *v43 = 136315650;
    v46 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v68 = v44;
      v69 = v42;
      v70 = v43;
      v71 = v41;
      v72 = v8;
      v47 = *(v0 + 488);
      v74 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v3, 0);
      v46 = v74;
      v48 = *(v74 + 16);
      v49 = 16 * v48;
      v50 = (v47 + 40);
      do
      {
        v51 = *(v50 - 1);
        v52 = *v50;
        v53 = v48 + 1;
        v54 = *(v74 + 24);
        sub_1DACB71E4();
        if (v48 >= v54 >> 1)
        {
          sub_1DAA5859C((v54 > 1), v53, 1);
        }

        *(v74 + 16) = v53;
        v55 = v74 + v49;
        *(v55 + 32) = v51;
        *(v55 + 40) = v52;
        v49 += 16;
        v50 += 17;
        ++v48;
        --v3;
      }

      while (v3);
      v41 = v71;
      v8 = v72;
      v43 = v70;
      v42 = v69;
      v45 = v68;
    }

    *(v0 + 472) = v46;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v56 = sub_1DACB9214();
    v58 = v57;

    v59 = sub_1DAA7ABE4(v56, v58, v77);

    *(v43 + 4) = v59;
    *(v43 + 12) = 2080;
    v60 = sub_1DAB81DD8(v8);
    v62 = sub_1DAA7ABE4(v60, v61, v77);

    *(v43 + 14) = v62;
    *(v43 + 22) = 2080;
    v40 = v73;
    v63 = sub_1DAB81DD8(v73);
    v65 = sub_1DAA7ABE4(v63, v64, v77);

    *(v43 + 24) = v65;

    _os_log_impl(&dword_1DAA3F000, v41, v42, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v45, -1, -1);
    MEMORY[0x1E1278C00](v43, -1, -1);
  }

  else
  {
  }

  v75 = *(v0 + 496);
  v76 = *(v0 + 512);
  sub_1DAB7CE48(v8, v40, *(v0 + 480));

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1DAB7F360()
{
  v73 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 424));
  v1 = *(v0 + 488);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 152);
    v4 = v1 + 32;
    v5 = v2 - 1;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v4;
      v8 = *(v4 + 16);
      v9 = *(v4 + 32);
      v10 = *(v4 + 64);
      *(v0 + 64) = *(v4 + 48);
      *(v0 + 80) = v10;
      *(v0 + 32) = v8;
      *(v0 + 48) = v9;
      v11 = *(v4 + 80);
      v12 = *(v4 + 96);
      v13 = *(v4 + 112);
      *(v0 + 144) = *(v4 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v13;
      *(v0 + 96) = v11;
      *v3 = *v4;
      v14 = *(v4 + 16);
      v15 = *(v4 + 32);
      v16 = *(v4 + 64);
      *(v0 + 200) = *(v4 + 48);
      *(v0 + 216) = v16;
      *(v0 + 168) = v14;
      *(v0 + 184) = v15;
      v17 = *(v4 + 80);
      v18 = *(v4 + 96);
      v19 = *(v4 + 112);
      *(v0 + 280) = *(v4 + 128);
      *(v0 + 248) = v18;
      *(v0 + 264) = v19;
      *(v0 + 232) = v17;
      v20 = swift_task_alloc();
      *(v20 + 16) = v3;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v21 = sub_1DAC784F4(sub_1DAB84A28, v20, MEMORY[0x1E69E7CC0]);

      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAA5A0A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = sub_1DAA5A0A8((v22 > 1), v23 + 1, 1, v7);
          v7 = v25;
        }

        else
        {
          v25 = v7;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1DAA5A0A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v26 = *(v6 + 3);
        v24 = v23 + 1;
        if (v23 >= v26 >> 1)
        {
          v25 = sub_1DAA5A0A8((v26 > 1), v23 + 1, 1, v6);
          v6 = v25;
        }

        else
        {
          v25 = v6;
        }
      }

      *(v25 + 2) = v24;
      v27 = &v25[136 * v23];
      *(v27 + 2) = *(v0 + 16);
      v28 = *(v0 + 32);
      v29 = *(v0 + 48);
      v30 = *(v0 + 80);
      *(v27 + 5) = *(v0 + 64);
      *(v27 + 6) = v30;
      *(v27 + 3) = v28;
      *(v27 + 4) = v29;
      v31 = *(v0 + 96);
      v32 = *(v0 + 112);
      v33 = *(v0 + 128);
      *(v27 + 20) = *(v0 + 144);
      *(v27 + 8) = v32;
      *(v27 + 9) = v33;
      *(v27 + 7) = v31;
      if (!v5)
      {
        break;
      }

      --v5;
      v4 += 136;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    v6 = v7;
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 488);
  v35 = sub_1DACB8C94();
  __swift_project_value_buffer(v35, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v36 = sub_1DACB8C74();
  v37 = sub_1DACB9914();

  if (os_log_type_enabled(v36, v37))
  {
    v68 = v6;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    v72[0] = v39;
    *v38 = 136315650;
    v41 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v63 = v39;
      v64 = v37;
      v65 = v38;
      v66 = v36;
      v67 = v7;
      v42 = *(v0 + 488);
      v69 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v2, 0);
      v41 = v69;
      v43 = *(v69 + 16);
      v44 = 16 * v43;
      v45 = (v42 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        v48 = v43 + 1;
        v49 = *(v69 + 24);
        sub_1DACB71E4();
        if (v43 >= v49 >> 1)
        {
          sub_1DAA5859C((v49 > 1), v48, 1);
        }

        *(v69 + 16) = v48;
        v50 = v69 + v44;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        v44 += 16;
        v45 += 17;
        ++v43;
        --v2;
      }

      while (v2);
      v36 = v66;
      v7 = v67;
      v38 = v65;
      v37 = v64;
      v40 = v63;
    }

    *(v0 + 472) = v41;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v51 = sub_1DACB9214();
    v53 = v52;

    v54 = sub_1DAA7ABE4(v51, v53, v72);

    *(v38 + 4) = v54;
    *(v38 + 12) = 2080;
    v55 = sub_1DAB81DD8(v7);
    v57 = sub_1DAA7ABE4(v55, v56, v72);

    *(v38 + 14) = v57;
    *(v38 + 22) = 2080;
    v6 = v68;
    v58 = sub_1DAB81DD8(v68);
    v60 = sub_1DAA7ABE4(v58, v59, v72);

    *(v38 + 24) = v60;

    _os_log_impl(&dword_1DAA3F000, v36, v37, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v40, -1, -1);
    MEMORY[0x1E1278C00](v38, -1, -1);
  }

  else
  {
  }

  v70 = *(v0 + 496);
  v71 = *(v0 + 512);
  sub_1DAB7CE48(v7, v6, *(v0 + 480));

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1DAB7F8FC()
{
  sub_1DAB82354();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE8030);
  __swift_project_value_buffer(v1, qword_1ECBE8030);
  sub_1DAB823B8();
  return sub_1DACB7194();
}

uint64_t sub_1DAB7F97C()
{
  sub_1DAB84638();
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAB823B8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  sub_1DACB7114();
  v1 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB7394();

  return v3;
}

uint64_t sub_1DAB7FB28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_1DAA642D8();
  return sub_1DACB9B64() & 1;
}

uint64_t sub_1DAB7FBCC()
{
  sub_1DAB8470C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v0);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  sub_1DAB847D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1DACB70C4();
  sub_1DAB823B8();
  sub_1DACB73E4();

  sub_1DAB84894();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAB8495C(0, &qword_1ECBE80B8, sub_1DAB8470C, MEMORY[0x1E69E6F90]);
  v16 = *(v2 + 72);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D40;
  v19 = v18 + v17;
  v20 = *(v3 + 16);
  v20(v19, v9, v1);
  v20(v19 + v16, v7, v1);
  sub_1DAB84A48(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DAA8D9E8();
  v21 = sub_1DACB73D4();

  v22 = *(v3 + 8);
  v22(v7, v1);
  v22(v9, v1);
  return v21;
}

uint64_t sub_1DAB7FEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v8;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAB7FF3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DAA642D8();
  return sub_1DACB9B64() & 1;
}

uint64_t sub_1DAB7FFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = v6;
  a3[1] = v5;
  a3[2] = a2;
  a3[3] = v7;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAB8000C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE0 != -1)
  {
    swift_once();
  }

  sub_1DAB82354();
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8030);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB800B4()
{
  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE8048);
  __swift_project_value_buffer(v1, qword_1ECBE8048);
  sub_1DAB823B8();
  return sub_1DACB72F4();
}

uint64_t sub_1DAB8016C()
{
  sub_1DAB84A48(0, &qword_1ECBE8088, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A630]);
  v1 = v0;
  v31 = *(v0 - 8);
  v2 = v31;
  v29 = v31;
  v3 = *(v31 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v28 - v12;
  swift_getKeyPath();
  sub_1DAB823B8();
  sub_1DAB07424();
  sub_1DACB73F4();
  sub_1DACB7444();
  v13 = *(v2 + 8);
  v30 = v11;
  v13(v11, v1);
  swift_getKeyPath();
  v14 = v32;
  sub_1DACB73F4();
  sub_1DACB7444();
  v28 = v13;
  v13(v14, v1);
  swift_getKeyPath();
  sub_1DACB73F4();
  sub_1DACB7444();
  v13(v6, v1);
  sub_1DAB845A8();
  v15 = *(v31 + 72);
  v16 = v29;
  v17 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v18 = 2 * v15;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DACC2610;
  v20 = v19 + v17;
  v21 = *(v16 + 16);
  v21(v20, v33, v1);
  v22 = v20 + v15;
  v23 = v30;
  v21(v22, v30, v1);
  v24 = v32;
  v21(v20 + v18, v32, v1);
  v25 = sub_1DACB7434();

  v26 = v28;
  v28(v24, v1);
  v26(v23, v1);
  v26(v33, v1);
  return v25;
}

uint64_t sub_1DAB804DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE8 != -1)
  {
    swift_once();
  }

  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8048);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB805BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 289) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 288) = a3;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  *(v7 + 160) = *v6;
  *(v7 + 176) = *(v6 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB805F8, 0, 0);
}

uint64_t sub_1DAB805F8()
{
  v41 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = sub_1DACB8C94();
  *(v0 + 184) = __swift_project_value_buffer(v3, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 289);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = *(v0 + 288);
    v10 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
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

    v17 = sub_1DAA7ABE4(v15, v16, &v40);

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
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Querying stocks for symbol entities matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v11, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    swift_bridgeObjectRelease_n();
  }

  v22 = *(v0 + 136);
  v23 = v22[2];
  *(v0 + 192) = v23;
  if (v23)
  {
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    v24 = *(v0 + 184);
    v25 = v22[4];
    *(v0 + 216) = v25;
    v26 = v22[5];
    *(v0 + 224) = v26;
    *(v0 + 232) = v22[6];
    *(v0 + 240) = v22[7];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v27 = sub_1DACB8C74();
    v28 = sub_1DACB98F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      sub_1DACB71E4();
      v31 = sub_1DAA7ABE4(v25, v26, &v40);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_1DAA3F000, v27, v28, "Querying stocks for symbol entities matching property query=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E1278C00](v30, -1, -1);
      MEMORY[0x1E1278C00](v29, -1, -1);
    }

    v32 = *(v0 + 160);
    sub_1DACB6D24();
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v33);
    *(v0 + 248) = sub_1DAAEA918(v25, v26, v33, v34);
    v35 = *(MEMORY[0x1E69D6B08] + 4);
    v36 = swift_task_alloc();
    *(v0 + 256) = v36;
    *v36 = v0;
    v36[1] = sub_1DAB80A38;

    return MEMORY[0x1EEE44EE0](v0 + 80);
  }

  else
  {
    v37 = *(v0 + 128);
    sub_1DAADD25C();
    sub_1DACB7154();
    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1DAB80A38()
{
  v2 = *v1;
  v3 = (*v1)[32];
  v8 = *v1;
  (*v1)[33] = v0;

  v4 = v2[31];
  if (v0)
  {
    v5 = v2[25];

    v6 = sub_1DAB81AFC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_1DAB80B70;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAB80B70()
{
  v135 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = sub_1DAB072D8(*(v0 + 80));

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB98F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v133 = v11;
    *v10 = 136315394;
    sub_1DACB71E4();
    v12 = sub_1DAA7ABE4(v9, v8, &v133);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v0 + 120) = sub_1DAB7B61C(v4);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v13 = sub_1DACB9214();
    v15 = v14;

    v16 = sub_1DAA7ABE4(v13, v15, &v133);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Successfully found stocks for symbol entities matching property query=%s, results=[%s]", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v11, -1, -1);
    MEMORY[0x1E1278C00](v10, -1, -1);
  }

  else
  {

    v7 = *(v0 + 264);
  }

  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 224);
  v20 = *(v0 + 184);
  sub_1DACB71F4();
  v21 = sub_1DAB82B40(v18, v17, v4);
  sub_1DACB71E4();

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v22 = sub_1DACB8C74();
  v23 = sub_1DACB98F4();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v133 = v27;
    *v26 = 136315394;
    sub_1DACB71E4();
    v28 = sub_1DAA7ABE4(v25, v24, &v133);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    *(v0 + 112) = sub_1DAB7B61C(v21);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v29 = sub_1DACB9214();
    v31 = v30;

    v32 = sub_1DAA7ABE4(v29, v31, &v133);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_1DAA3F000, v22, v23, "Filtered stocks for symbol entities matching property query=%s, filtered=[%s]", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v27, -1, -1);
    MEMORY[0x1E1278C00](v26, -1, -1);
  }

  v33 = *(v0 + 200);

  if (!v33)
  {
    v35 = *(v0 + 184);
    v36 = sub_1DACB8C74();
    v37 = sub_1DACB98F4();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 240);
    v40 = *(v0 + 224);
    if (v38)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DAA3F000, v36, v37, "No existing result for symbol property queries, so storing first results", v41, 2u);
      MEMORY[0x1E1278C00](v41, -1, -1);
    }

    goto LABEL_21;
  }

  v34 = *(v0 + 200);
  if (*(v0 + 288))
  {
    v21 = sub_1DAB01D3C(v21, v34);
    sub_1DACB71E4();
  }

  else
  {
    v42 = sub_1DAB0387C(v21, v34);

    sub_1DACB71F4();
    v21 = v42;
  }

  v43 = *(v0 + 184);
  sub_1DACB71E4();
  v44 = sub_1DACB8C74();
  v45 = sub_1DACB98F4();

  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 240);
  v48 = *(v0 + 224);
  if (v46)
  {
    v128 = *(v0 + 288);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v133 = v50;
    *v49 = 136315394;
    v51 = sub_1DAB7B61C(v21);

    *(v0 + 104) = v51;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v52 = sub_1DACB9214();
    v54 = v53;

    v55 = sub_1DAA7ABE4(v52, v54, &v133);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v56 = sub_1DACB72E4();
    v57 = (v56 & 1) == 0;
    if (v56)
    {
      v58 = 6581857;
    }

    else
    {
      v58 = 29295;
    }

    if (v57)
    {
      v59 = 0xE200000000000000;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v60 = sub_1DAA7ABE4(v58, v59, &v133);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_1DAA3F000, v44, v45, "Combined stock query results into accumulated results=[%s], comparatorMode=%s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v50, -1, -1);
    MEMORY[0x1E1278C00](v49, -1, -1);

LABEL_21:

    goto LABEL_23;
  }

LABEL_23:
  v61 = *(v0 + 208) + 1;
  if (v61 == *(v0 + 192))
  {
    v62 = *(v0 + 184);
    sub_1DACB71E4();
    v63 = sub_1DACB8C74();
    v64 = sub_1DACB9914();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v133 = v66;
      *v65 = 136315138;
      *(v0 + 96) = sub_1DAB7B61C(v21);
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v67 = sub_1DACB9214();
      v69 = v68;

      v70 = sub_1DAA7ABE4(v67, v69, &v133);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1DAA3F000, v63, v64, "Successfully applied all queries, found stocks=[%s]", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1E1278C00](v66, -1, -1);
      MEMORY[0x1E1278C00](v65, -1, -1);
    }

    v71 = *(v21 + 16);
    if (v71)
    {
      v130 = v7;
      v72 = sub_1DAB02C90(v71, 0);
      v73 = sub_1DAB05AA0(&v133, v72 + 32, v71, v21);
      v74 = v133;
      sub_1DACB71E4();
      sub_1DAA54B38();
      if (v73 != v71)
      {
        __break(1u);
        goto LABEL_59;
      }

      v7 = v130;
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    v90 = *(v0 + 144);
    v133 = v72;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAB8429C(&v133, v90);
    if (v7)
    {
      v91 = *(v0 + 144);
    }

    v92 = *(v0 + 184);
    v93 = *(v0 + 144);

    v74 = v133;
    sub_1DACB71F4();
    v94 = sub_1DACB8C74();
    v95 = sub_1DACB9914();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v97;
      v134 = v97;
      *v96 = 136315138;
      v99 = *(v74 + 2);
      v100 = MEMORY[0x1E69E7CC0];
      if (v99)
      {
        v126 = v97;
        v127 = v95;
        v129 = v96;
        v131 = v94;
        v133 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v99, 0);
        v100 = v133;
        v101 = *(v133 + 2);
        v102 = 16 * v101;
        v132 = v74;
        v103 = (v74 + 40);
        do
        {
          v104 = *(v103 - 1);
          v105 = *v103;
          v133 = v100;
          v106 = v101 + 1;
          v107 = *(v100 + 3);
          sub_1DACB71E4();
          if (v101 >= v107 >> 1)
          {
            sub_1DAA5859C((v107 > 1), v106, 1);
            v100 = v133;
          }

          *(v100 + 2) = v106;
          v108 = &v100[v102];
          *(v108 + 4) = v104;
          *(v108 + 5) = v105;
          v102 += 16;
          v103 += 17;
          ++v101;
          --v99;
        }

        while (v99);
        v94 = v131;
        v74 = v132;
        v96 = v129;
        v95 = v127;
        v98 = v126;
      }

      *(v0 + 88) = v100;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v109 = sub_1DACB9214();
      v111 = v110;

      v112 = sub_1DAA7ABE4(v109, v111, &v134);

      *(v96 + 4) = v112;
      _os_log_impl(&dword_1DAA3F000, v94, v95, "Applied sorts to sortedStocks=[%s]", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x1E1278C00](v98, -1, -1);
      MEMORY[0x1E1278C00](v96, -1, -1);
    }

    v75 = *(v0 + 289);
    if (v75)
    {

LABEL_55:
      *(v0 + 272) = v74;
      v120 = *(v0 + 176);
      *(v0 + 56) = *(v0 + 160);
      *(v0 + 72) = v120;
      v121 = swift_task_alloc();
      *(v0 + 280) = v121;
      *v121 = v0;
      v121[1] = sub_1DAB819E8;
      v122 = *(v0 + 128);

      return sub_1DAB7EB7C(v122, v74);
    }

    v113 = *(v0 + 152);
    if ((v113 & 0x8000000000000000) == 0)
    {
      v114 = *(v74 + 2);

      if (v114 >= v113)
      {
        v75 = *(v0 + 152);
        if (*(v74 + 2) == v75)
        {
LABEL_52:
          v115 = *(v0 + 184);
          v116 = sub_1DACB8C74();
          v117 = sub_1DACB9914();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = *(v0 + 152);
            v119 = swift_slowAlloc();
            *v119 = 134217984;
            *(v119 + 4) = v118;
            _os_log_impl(&dword_1DAA3F000, v116, v117, "Limited results down to limit=%ld", v119, 0xCu);
            MEMORY[0x1E1278C00](v119, -1, -1);
          }

          goto LABEL_55;
        }

LABEL_61:
        sub_1DAB03214(v74, (v74 + 32), 0, (2 * v75) | 1);
        v124 = v123;

        v74 = v124;
        goto LABEL_52;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 200) = v21;
  *(v0 + 208) = v61;
  v76 = *(v0 + 184);
  v77 = (*(v0 + 136) + 32 * v61);
  v78 = v77[4];
  *(v0 + 216) = v78;
  v79 = v77[5];
  *(v0 + 224) = v79;
  *(v0 + 232) = v77[6];
  *(v0 + 240) = v77[7];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v80 = sub_1DACB8C74();
  v81 = sub_1DACB98F4();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v133 = v83;
    *v82 = 136315138;
    sub_1DACB71E4();
    v84 = sub_1DAA7ABE4(v78, v79, &v133);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_1DAA3F000, v80, v81, "Querying stocks for symbol entities matching property query=%s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1E1278C00](v83, -1, -1);
    MEMORY[0x1E1278C00](v82, -1, -1);
  }

  v85 = *(v0 + 160);
  sub_1DACB6D24();
  v87 = *(v0 + 40);
  v86 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v87);
  *(v0 + 248) = sub_1DAAEA918(v78, v79, v87, v86);
  v88 = *(MEMORY[0x1E69D6B08] + 4);
  v89 = swift_task_alloc();
  *(v0 + 256) = v89;
  *v89 = v0;
  v89[1] = sub_1DAB80A38;

  return MEMORY[0x1EEE44EE0](v0 + 80);
}

uint64_t sub_1DAB819E8()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DAB81AFC()
{
  v1 = v0[30];
  v2 = v0[28];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];
  v4 = v0[33];

  return v3();
}

uint64_t sub_1DAB81B74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE0 != -1)
  {
    swift_once();
  }

  sub_1DAB82354();
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8030);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB81C1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE8 != -1)
  {
    swift_once();
  }

  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8048);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB81D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DAB805BC(a1, a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAB81DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      sub_1DACB71E4();
      if (v7 >= v6 >> 1)
      {
        sub_1DAA5859C((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 17;
      --v1;
    }

    while (v1);
  }

  sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  v9 = sub_1DACB9214();

  return v9;
}

uint64_t sub_1DAB81F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB84A48(0, &qword_1ECBE8080, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A128]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 112);
  v65 = *(a1 + 96);
  v66 = v12;
  v67 = *(a1 + 128);
  v13 = *(a1 + 48);
  v61 = *(a1 + 32);
  v62 = v13;
  v14 = *(a1 + 80);
  v63 = *(a1 + 64);
  v64 = v14;
  v15 = *(a1 + 16);
  v59 = *a1;
  v60 = v15;
  v16 = *(a2 + 112);
  v74 = *(a2 + 96);
  v75 = v16;
  v76 = *(a2 + 128);
  v17 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v17;
  v18 = *(a2 + 80);
  v72 = *(a2 + 64);
  v73 = v18;
  v19 = *(a2 + 16);
  v68 = *a2;
  v69 = v19;
  v20 = *(a3 + 16);
  if (v20)
  {
    v22 = *(v9 + 16);
    v21 = v9 + 16;
    v33 = v22;
    v34 = (v21 - 8);
    v23 = a3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v35 = v21;
    v32 = *(v21 + 56);
    v22(v11, v23, v7);
    while (1)
    {
      v54 = v65;
      v55 = v66;
      v56 = v67;
      v50 = v61;
      v51 = v62;
      v52 = v63;
      v53 = v64;
      v48 = v59;
      v49 = v60;
      sub_1DAA806E4(&v59, v47);
      sub_1DAB9BFD8(&v48, v57);
      sub_1DACB6F74();
      v43 = v57[0];
      v44 = v57[1];
      v45 = v57[2];
      v46 = v57[3];
      swift_getAtPartialKeyPath();

      v58[0] = v43;
      v58[1] = v44;
      v58[2] = v45;
      v58[3] = v46;
      sub_1DAB84554(v58);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_17:
        MEMORY[0x1E1275DD0]("Encountered a SymbolWidgetEntity value in SymbolQuery which is not a String. We need to add explicit support for this in the property queries.", 142, 2, MEMORY[0x1E69E7CC0]);
        (*v34)(v11, v7);
        return 1;
      }

      v77 = v23;
      v36 = v20;
      v26 = v41;
      v25 = v42;
      v54 = v74;
      v55 = v75;
      v56 = v76;
      v50 = v70;
      v51 = v71;
      v52 = v72;
      v53 = v73;
      v48 = v68;
      v49 = v69;
      sub_1DAA806E4(&v68, v47);
      sub_1DAB9BFD8(&v48, v39);
      sub_1DACB6F74();
      v48 = v39[0];
      v49 = v39[1];
      v50 = v39[2];
      v51 = v39[3];
      swift_getAtPartialKeyPath();

      v40[0] = v48;
      v40[1] = v49;
      v40[2] = v50;
      v40[3] = v51;
      sub_1DAB84554(v40);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_17;
      }

      v27 = v37;
      v28 = v38;
      if (sub_1DACB6F84())
      {
        if (v26 == v27 && v25 == v28)
        {
          goto LABEL_3;
        }
      }

      else if (v27 == v26 && v28 == v25)
      {
LABEL_3:

        (*v34)(v11, v7);
        v24 = v77;
        goto LABEL_4;
      }

      v29 = sub_1DACBA174();

      (*v34)(v11, v7);
      v24 = v77;
      if (v29)
      {
        return 1;
      }

LABEL_4:
      v23 = v24 + v32;
      v20 = v36 - 1;
      if (v36 == 1)
      {
        return 1;
      }

      v33(v11, v23, v7);
    }
  }

  return 1;
}

void sub_1DAB82354()
{
  if (!qword_1ECBE8060)
  {
    sub_1DAB823B8();
    v0 = sub_1DACB71A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8060);
    }
  }
}

unint64_t sub_1DAB823B8()
{
  result = qword_1EE11E718;
  if (!qword_1EE11E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E718);
  }

  return result;
}

uint64_t sub_1DAB8240C(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 136;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 136;
  if (v12 < v14)
  {
    v15 = __dst;
    if (a4 != __dst || &__dst[136 * v12] <= a4)
    {
      memmove(a4, __dst, 136 * v12);
    }

    v16 = (v8 + 136 * v12);
    if (v11 < 136)
    {
LABEL_6:
      v10 = v15;
      goto LABEL_50;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v98 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v101 = *(v10 + 3);
      v102 = v21;
      v99 = v19;
      v100 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v106 = *(v10 + 16);
      v104 = v23;
      v105 = v24;
      v103 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v107 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v110 = *(v8 + 48);
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v115 = *(v8 + 128);
      v113 = v29;
      v114 = v30;
      v112 = v28;
      memmove(&v80, v8, 0x88uLL);
      sub_1DAA806E4(&v98, &v71);
      sub_1DAA806E4(&v107, &v71);
      v31 = sub_1DAB81F0C(&__dsta, &v80, a5);
      if (v5)
      {
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v62 = v80;
        v63 = v81;
        sub_1DAA9B1C8(&v62);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v73 = v91;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v71 = __dsta;
        v72 = v90;
        sub_1DAA9B1C8(&v71);
        v56 = &v16[-v8] / 136;
        if (v15 < v8 || v15 >= v8 + 136 * v56 || v15 != v8)
        {
          v57 = 136 * v56;
          v58 = v15;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v32 = v31;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      sub_1DAA9B1C8(&v62);
      v77 = v95;
      v78 = v96;
      v79 = v97;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v71 = __dsta;
      v72 = v90;
      sub_1DAA9B1C8(&v71);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v15 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v15 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v15 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v15, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v14] <= a4)
  {
    memmove(a4, __src, 136 * v14);
  }

  v16 = (v8 + 136 * v14);
  if (v13 < 136 || v10 <= __dst)
  {
LABEL_50:
    v59 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
    {
      v57 = 136 * v59;
      v58 = v10;
LABEL_54:
      memmove(v58, v8, v57);
    }

    goto LABEL_55;
  }

  v33 = -v8;
  v116 = a5;
LABEL_22:
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 -= 136;
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v98 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v101 = *(v16 - 88);
    v102 = v39;
    v99 = v37;
    v100 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v106 = *(v16 - 1);
    v104 = v41;
    v105 = v42;
    v103 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v113 = *(v10 - 40);
    v114 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v109 = *(v10 - 104);
    v110 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v111 = *(v10 - 72);
    v112 = v48;
    v49 = *(v10 - 120);
    v107 = *v34;
    v108 = v49;
    v50 = *(v10 - 24);
    v86 = v113;
    v87 = v50;
    v82 = v109;
    v83 = v47;
    v84 = v111;
    v85 = v43;
    v115 = *(v10 - 1);
    v88 = *(v10 - 1);
    v80 = v107;
    v81 = v45;
    sub_1DAA806E4(&v98, &v71);
    sub_1DAA806E4(&v107, &v71);
    v51 = sub_1DAB81F0C(&__dsta, &v80, a5);
    if (v6)
    {
      break;
    }

    v52 = v51;
    v68 = v86;
    v69 = v87;
    v70 = v88;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v62 = v80;
    v63 = v81;
    sub_1DAA9B1C8(&v62);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v71 = __dsta;
    v72 = v90;
    sub_1DAA9B1C8(&v71);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v6 = 0;
        v54 = __dst;
      }

      else
      {
        v54 = __dst;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v6 = 0;
      }

      a5 = v116;
      if (v16 <= v8 || (v10 -= 136, v33 = -v8, v34 <= v54))
      {
        v10 = v34;
        goto LABEL_50;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16)
    {
      memmove(v9, v36, 0x88uLL);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v53 != v16)
      {
        memmove(v9, v36, 0x88uLL);
      }
    }

    a5 = v116;
    v35 -= 136;
    v9 -= 136;
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_50;
    }
  }

  v68 = v86;
  v69 = v87;
  v70 = v88;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v62 = v80;
  v63 = v81;
  sub_1DAA9B1C8(&v62);
  v77 = v95;
  v78 = v96;
  v79 = v97;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v71 = __dsta;
  v72 = v90;
  sub_1DAA9B1C8(&v71);
  v55 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v55)
  {
    memmove(v10, v8, 136 * v55);

    return 1;
  }

  if (v10 != v8)
  {
    memmove(v10, v8, 136 * v55);
  }

LABEL_55:

  return 1;
}

void *sub_1DAB82AB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1DAB82EAC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1DAB82B40(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v40 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v36 = v7;
    v41 = v4;
    v38 = &v36;
    MEMORY[0x1EEE9AC00](a1);
    v37 = &v36 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v8);
    v39 = 0;
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    if (v13)
    {
      break;
    }

LABEL_6:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    sub_1DACB71F4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v34 = swift_slowAlloc();
      v35 = sub_1DAB82AB0(v34, v7, v5, v40);

      result = MEMORY[0x1E1278C00](v34, -1, -1);
      if (!v4)
      {
        result = v35;
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v7 = v5;
    v4 = v15 | (v9 << 6);
    v18 = *(v5 + 48) + 136 * v4;
    v60[0] = *v18;
    v19 = *(v18 + 64);
    v21 = *(v18 + 16);
    v20 = *(v18 + 32);
    v60[3] = *(v18 + 48);
    v60[4] = v19;
    v60[1] = v21;
    v60[2] = v20;
    v23 = *(v18 + 96);
    v22 = *(v18 + 112);
    v24 = *(v18 + 80);
    v61 = *(v18 + 128);
    v60[6] = v23;
    v60[7] = v22;
    v60[5] = v24;
    v25 = *(v18 + 112);
    v57 = *(v18 + 96);
    v58 = v25;
    v59 = *(v18 + 128);
    v26 = *(v18 + 48);
    v53 = *(v18 + 32);
    v54 = v26;
    v27 = *(v18 + 80);
    v55 = *(v18 + 64);
    v56 = v27;
    v28 = *(v18 + 16);
    v51 = *v18;
    v52 = v28;
    sub_1DAA806E4(v60, &v42);
    v29 = v41;
    v30 = v40(&v51);
    v41 = v29;
    if (v29)
    {
      v48 = v57;
      v49 = v58;
      v50 = v59;
      v44 = v53;
      v45 = v54;
      v46 = v55;
      v47 = v56;
      v42 = v51;
      v43 = v52;
      sub_1DAA9B1C8(&v42);

      result = swift_willThrow();
      goto LABEL_19;
    }

    v5 = v30;
    v48 = v57;
    v49 = v58;
    v50 = v59;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v42 = v51;
    v43 = v52;
    sub_1DAA9B1C8(&v42);
    if (v5)
    {
      *&v37[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
      if (__OFADD__(v39++, 1))
      {
        break;
      }
    }

    v5 = v7;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_18:
  result = sub_1DAB05504(v37, v36, v39, v5);
LABEL_19:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DAB82EAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v53 = a4;
  v31 = result;
  v32 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 136 * v15;
    v51[0] = *v16;
    v17 = *(v16 + 64);
    v19 = *(v16 + 16);
    v18 = *(v16 + 32);
    v51[3] = *(v16 + 48);
    v51[4] = v17;
    v51[1] = v19;
    v51[2] = v18;
    v21 = *(v16 + 96);
    v20 = *(v16 + 112);
    v22 = *(v16 + 80);
    v52 = *(v16 + 128);
    v51[6] = v21;
    v51[7] = v20;
    v51[5] = v22;
    v23 = *(v16 + 112);
    v48 = *(v16 + 96);
    v49 = v23;
    v50 = *(v16 + 128);
    v24 = *(v16 + 48);
    v44 = *(v16 + 32);
    v45 = v24;
    v25 = *(v16 + 80);
    v46 = *(v16 + 64);
    v47 = v25;
    v26 = *(v16 + 16);
    v42 = *v16;
    v43 = v26;
    sub_1DAA806E4(v51, &v33);
    v27 = v53(&v42);
    if (v4)
    {
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v33 = v42;
      v34 = v43;
      return sub_1DAA9B1C8(&v33);
    }

    v28 = v27;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v33 = v42;
    v34 = v43;
    result = sub_1DAA9B1C8(&v33);
    if (v28)
    {
      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DACB71F4();
        return sub_1DAB05504(v31, a2, v32, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB830D4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v169 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      v62 = (v9 + 1);
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v241 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v245 = *(v14 + 64);
      v244 = v17;
      v243 = v16;
      v242 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v249 = *(v14 + 128);
      v248 = v20;
      v247 = v19;
      v246 = v18;
      v21 = *(v14 + 112);
      v238 = *(v14 + 96);
      v239 = v21;
      v240 = *(v14 + 128);
      v22 = *(v14 + 48);
      v234 = *(v14 + 32);
      v235 = v22;
      v23 = *(v14 + 64);
      v237 = *(v14 + 80);
      v236 = v23;
      v24 = *v14;
      v233 = *(v14 + 16);
      v232 = v24;
      v25 = (v13 + 136 * v11);
      v250 = *v25;
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[4];
      v253 = v25[3];
      v254 = v28;
      v251 = v26;
      v252 = v27;
      v29 = v25[5];
      v30 = v25[6];
      v31 = v25[7];
      v258 = *(v25 + 16);
      v256 = v30;
      v257 = v31;
      v255 = v29;
      v32 = v25[7];
      v229 = v25[6];
      v230 = v32;
      v231 = *(v25 + 16);
      v33 = v25[3];
      v225 = v25[2];
      v226 = v33;
      v34 = v25[4];
      v228 = v25[5];
      v227 = v34;
      v35 = *v25;
      v224 = v25[1];
      v223 = v35;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v36 = sub_1DAB81F0C(&v232, &v223, a5);
      if (v6)
      {
LABEL_105:
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v209 = v227;
        v210 = v228;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_106:
        swift_bridgeObjectRelease_n();
      }

      v37 = v36;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v209 = v227;
      v210 = v228;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v38 = v11 + 2;
      if ((v11 + 2) >= v8)
      {
        v62 = (v11 + 2);
        if (v37)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v169 = v11;
        v39 = v13 + 136 * v11 + 272;
        while (1)
        {
          v40 = v38;
          v194[0] = *v39;
          v41 = *(v39 + 16);
          v42 = *(v39 + 32);
          v43 = *(v39 + 64);
          v194[3] = *(v39 + 48);
          v194[4] = v43;
          v194[1] = v41;
          v194[2] = v42;
          v44 = *(v39 + 80);
          v45 = *(v39 + 96);
          v46 = *(v39 + 112);
          v195 = *(v39 + 128);
          v194[6] = v45;
          v194[7] = v46;
          v194[5] = v44;
          v47 = *(v39 + 112);
          v191 = *(v39 + 96);
          v192 = v47;
          v193 = *(v39 + 128);
          v48 = *(v39 + 48);
          v187 = *(v39 + 32);
          v188 = v48;
          v49 = *(v39 + 80);
          v189 = *(v39 + 64);
          v190 = v49;
          v50 = *(v39 + 16);
          v185 = *v39;
          v186 = v50;
          v196 = *(v39 - 136);
          v51 = *(v39 - 120);
          v52 = *(v39 - 104);
          v53 = *(v39 - 72);
          v199 = *(v39 - 88);
          v200 = v53;
          v197 = v51;
          v198 = v52;
          v54 = *(v39 - 56);
          v55 = *(v39 - 40);
          v56 = *(v39 - 24);
          v204 = *(v39 - 8);
          v202 = v55;
          v203 = v56;
          v201 = v54;
          v57 = *(v39 - 56);
          v58 = *(v39 - 24);
          v182 = *(v39 - 40);
          v183 = v58;
          v184 = *(v39 - 8);
          v59 = *(v39 - 120);
          v60 = *(v39 - 88);
          v178 = *(v39 - 104);
          v179 = v60;
          v180 = *(v39 - 72);
          v181 = v57;
          v176 = *(v39 - 136);
          v177 = v59;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v61 = sub_1DAB81F0C(&v185, &v176, a5);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v37 ^ v61))
          {
            break;
          }

          v38 = (v40 + 1);
          v39 += 136;
          if (v8 == v40 + 1)
          {
            v12 = v40;
            v62 = v8;
            goto LABEL_15;
          }
        }

        v62 = v40;
        v12 = v40 - 1;
LABEL_15:
        v11 = v169;
        if (v37)
        {
LABEL_16:
          if (v62 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v63 = v11;
            v64 = 136 * v62 - 136;
            v65 = 136 * v63;
            v166 = v62;
            v66 = v63;
            do
            {
              if (v63 != --v62)
              {
                v67 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v68 = v67 + v64;
                v201 = *(v67 + v65 + 80);
                v202 = *(v67 + v65 + 96);
                v203 = *(v67 + v65 + 112);
                v204 = *(v67 + v65 + 128);
                v197 = *(v67 + v65 + 16);
                v198 = *(v67 + v65 + 32);
                v199 = *(v67 + v65 + 48);
                v200 = *(v67 + v65 + 64);
                v196 = *(v67 + v65);
                memmove((v67 + v65), (v67 + v64), 0x88uLL);
                *(v68 + 80) = v201;
                *(v68 + 96) = v202;
                *(v68 + 112) = v203;
                *(v68 + 128) = v204;
                *(v68 + 16) = v197;
                *(v68 + 32) = v198;
                *(v68 + 48) = v199;
                *(v68 + 64) = v200;
                *v68 = v196;
              }

              ++v63;
              v64 -= 136;
              v65 += 136;
            }

            while (v63 < v62);
            v62 = v166;
            v11 = v66;
          }
        }
      }
    }

    v69 = a3[1];
    if (v62 >= v69)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v62, v11))
    {
      goto LABEL_124;
    }

    if (v62 - v11 >= a4)
    {
      goto LABEL_137;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_130:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_131;
    }

    if (&v11[a4] >= v69)
    {
      v70 = a3[1];
    }

    else
    {
      v70 = &v11[a4];
    }

    if (v70 < v11)
    {
      goto LABEL_127;
    }

    if (v62 == v70)
    {
LABEL_137:
      if (v62 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v121 = *a3;
      v122 = *a3 + 136 * v62;
      v123 = &v11[-v62 + 1];
      do
      {
        v168 = v62;
        v169 = v123;
        v124 = v123;
        v125 = v122;
        while (1)
        {
          v241 = *v122;
          v126 = *(v122 + 16);
          v127 = *(v122 + 32);
          v128 = *(v122 + 48);
          v245 = *(v122 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v122 + 80);
          v130 = *(v122 + 96);
          v131 = *(v122 + 112);
          v249 = *(v122 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v122 + 112);
          v238 = *(v122 + 96);
          v239 = v132;
          v240 = *(v122 + 128);
          v133 = *(v122 + 48);
          v234 = *(v122 + 32);
          v235 = v133;
          v134 = *(v122 + 64);
          v237 = *(v122 + 80);
          v236 = v134;
          v135 = *v122;
          v233 = *(v122 + 16);
          v232 = v135;
          v250 = *(v122 - 136);
          v136 = *(v122 - 120);
          v137 = *(v122 - 104);
          v138 = *(v122 - 72);
          v253 = *(v122 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v122 - 56);
          v140 = *(v122 - 40);
          v141 = *(v122 - 24);
          v258 = *(v122 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v122 - 56);
          v143 = *(v122 - 24);
          v229 = *(v122 - 40);
          v230 = v143;
          v231 = *(v122 - 8);
          v144 = *(v122 - 120);
          v145 = *(v122 - 88);
          v225 = *(v122 - 104);
          v226 = v145;
          v146 = *(v122 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v122 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAB81F0C(&v232, &v223, a5);
          if (v6)
          {
            goto LABEL_105;
          }

          v149 = v148;
          v211 = v229;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v209 = v227;
          v210 = v228;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v121)
          {
            goto LABEL_130;
          }

          v150 = v122 - 136;
          v201 = *(v122 + 80);
          v202 = *(v122 + 96);
          v203 = *(v122 + 112);
          v204 = *(v122 + 128);
          v197 = *(v122 + 16);
          v198 = *(v122 + 32);
          v199 = *(v122 + 48);
          v200 = *(v122 + 64);
          v196 = *v122;
          v151 = *(v122 - 56);
          *(v122 + 64) = *(v122 - 72);
          *(v122 + 80) = v151;
          v152 = *(v122 - 24);
          *(v122 + 96) = *(v122 - 40);
          *(v122 + 112) = v152;
          *(v122 + 128) = *(v122 - 8);
          v153 = *(v122 - 88);
          *(v122 + 32) = *(v122 - 104);
          *(v122 + 48) = v153;
          v154 = *(v122 - 120);
          *v122 = *(v122 - 136);
          *(v122 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v122 -= 136;
        }

        v62 = v168 + 1;
        v122 = v125 + 136;
        v123 = (v169 - 1);
      }

      while ((v168 + 1) != v70);
      v62 = v70;
      if (v70 < v11)
      {
        goto LABEL_123;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAADB818(0, *(v10 + 2) + 1, 1, v10);
    }

    v72 = *(v10 + 2);
    v71 = *(v10 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v10 = sub_1DAADB818((v71 > 1), v72 + 1, 1, v10);
    }

    *(v10 + 2) = v73;
    v74 = &v10[16 * v72];
    *(v74 + 4) = v11;
    *(v74 + 5) = v62;
    v167 = v62;
    v169 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v72)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v167;
    a4 = v164;
    if (v167 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v75 = v73 - 1;
    if (v73 >= 4)
    {
      v80 = &v10[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_110;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_111;
      }

      v87 = &v10[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_113;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_116;
      }

      if (v91 >= v83)
      {
        v109 = &v10[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_122;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v73 == 3)
    {
      v76 = *(v10 + 4);
      v77 = *(v10 + 5);
      v86 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      v79 = v86;
LABEL_53:
      if (v79)
      {
        goto LABEL_112;
      }

      v92 = &v10[16 * v73];
      v94 = *v92;
      v93 = *(v92 + 1);
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_115;
      }

      v98 = &v10[16 * v75 + 32];
      v100 = *v98;
      v99 = *(v98 + 1);
      v86 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v86)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v96, v101))
      {
        goto LABEL_119;
      }

      if (v96 + v101 >= v78)
      {
        if (v78 < v101)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v102 = &v10[16 * v73];
    v104 = *v102;
    v103 = *(v102 + 1);
    v86 = __OFSUB__(v103, v104);
    v96 = v103 - v104;
    v97 = v86;
LABEL_67:
    if (v97)
    {
      goto LABEL_114;
    }

    v105 = &v10[16 * v75];
    v107 = *(v105 + 4);
    v106 = *(v105 + 5);
    v86 = __OFSUB__(v106, v107);
    v108 = v106 - v107;
    if (v86)
    {
      goto LABEL_117;
    }

    if (v108 < v96)
    {
      goto LABEL_3;
    }

LABEL_74:
    v113 = v75 - 1;
    if (v75 - 1 >= v73)
    {
      break;
    }

    v114 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v115 = *&v10[16 * v113 + 32];
    v116 = *&v10[16 * v75 + 40];
    v117 = (v114 + 136 * v115);
    v118 = (v114 + 136 * *&v10[16 * v75 + 32]);
    v119 = (v114 + 136 * v116);
    sub_1DACB71E4();
    sub_1DAB8240C(v117, v118, v119, v169, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v116 < v115)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAC0694C(v10);
    }

    if (v113 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v120 = &v10[16 * v113];
    *(v120 + 4) = v115;
    *(v120 + 5) = v116;
    v259 = v10;
    sub_1DAC068C0(v75);
    v10 = v259;
    v73 = *(v259 + 2);
    if (v73 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_1DAC0694C(v10);
LABEL_96:
  v259 = v10;
  v155 = *(v10 + 2);
  if (v155 < 2)
  {
LABEL_104:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v10[16 * v155];
      v158 = *&v10[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v10[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71E4();
      sub_1DAB8240C(v159, v160, v161, v169, a5);
      if (v6)
      {
        goto LABEL_104;
      }

      if (v158 < v157)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAC0694C(v10);
      }

      if (v155 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v162 = &v10[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v10;
      sub_1DAC068C0(v155 - 1);
      v10 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_133:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_134:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB83E60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAB81F0C(&v76, &v67, a5);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB84154(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAB830D4(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAB83E60(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAB8429C(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC0699C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAB84154(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAB84344()
{
  result = qword_1EE11E9C0;
  if (!qword_1EE11E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9C0);
  }

  return result;
}

unint64_t sub_1DAB8439C()
{
  result = qword_1EE11E9B8;
  if (!qword_1EE11E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9B8);
  }

  return result;
}

unint64_t sub_1DAB843F4()
{
  result = qword_1EE11E9D0;
  if (!qword_1EE11E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9D0);
  }

  return result;
}

unint64_t sub_1DAB8444C()
{
  result = qword_1EE11E9C8;
  if (!qword_1EE11E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9C8);
  }

  return result;
}

unint64_t sub_1DAB844A4()
{
  result = qword_1ECBE8070;
  if (!qword_1ECBE8070)
  {
    sub_1DAB84A48(255, &qword_1ECBE8078, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A368]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8070);
  }

  return result;
}

void sub_1DAB845A8()
{
  if (!qword_1ECBE8090)
  {
    sub_1DAB84A48(255, &qword_1ECBE8088, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A630]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8090);
    }
  }
}

void sub_1DAB84638()
{
  if (!qword_1ECBE8098)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB823B8();
    sub_1DAA8D9E8();
    v0 = sub_1DACB7104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8098);
    }
  }
}

void sub_1DAB8470C()
{
  if (!qword_1ECBE80A0)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v0 = sub_1DACB72B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE80A0);
    }
  }
}

void sub_1DAB847D4()
{
  if (!qword_1ECBE80A8)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v0 = sub_1DACB70D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE80A8);
    }
  }
}

void sub_1DAB84894()
{
  if (!qword_1ECBE80B0)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v0 = sub_1DACB7074();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE80B0);
    }
  }
}

void sub_1DAB8495C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAB849C0(uint64_t a1)
{
  if (*(a1 + 32) == *(v1 + 16) && *(a1 + 40) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

uint64_t sub_1DAB849EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DAB7FF3C(a1);
}

uint64_t sub_1DAB849F4(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 16) && *(a1 + 24) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

uint64_t sub_1DAB84A20(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DAB7FB28(a1);
}

void sub_1DAB84A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAB84B04()
{
  sub_1DAB84B70(v0 + OBJC_IVAR____TtC10StocksCore18UserRegionProvider_currentRegion);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB84B70(uint64_t a1)
{
  sub_1DAA565FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAB84BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DACB7D04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v11 = sub_1DACB7CE4();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  sub_1DACB71E4();
  os_unfair_lock_lock((v3 + 72));
  v14 = *(v3 + 80);
  sub_1DACB71E4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DACB71E4();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 80) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1DAA929C8(0, *(v14 + 2) + 1, 1, v14);
    *(v3 + 80) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = sub_1DAA929C8((v17 > 1), v18 + 1, 1, v14);
    *(v3 + 80) = v14;
  }

  *(v14 + 2) = v18 + 1;
  v19 = &v14[48 * v18];
  *(v19 + 4) = a1;
  *(v19 + 5) = a2;
  *(v19 + 6) = v15;
  *(v19 + 7) = v11;
  *(v19 + 8) = v13;
  *(v19 + 36) = 160;
  os_unfair_lock_unlock((v3 + 72));
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = v15;
  v24[3] = v11;
  v24[4] = v13;
  v25 = 160;
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB84DDC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  os_unfair_lock_lock((v1 + 72));
  v9 = *(v1 + 80);
  v17 = v3;
  v18 = v2;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v16[2] = &v17;
  v10 = sub_1DAB8563C(sub_1DAB85794, v16, v9);
  if ((v11 & 1) == 0)
  {
    sub_1DAC96120(v10, &v17);
  }

  os_unfair_lock_unlock((v1 + 72));
  v17 = v3;
  v18 = v2;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB84F20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[8];

  sub_1DAB85804((v0 + 10));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB84FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  v6 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  LOWORD(v2) = *(v2 + 56);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  sub_1DACB71E4();
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

uint64_t sub_1DAB8501C()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 80);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

uint64_t sub_1DAB8505C()
{
  sub_1DAB855C0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB850D8()
{
  sub_1DAB857B4(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85180(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 20);
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8522C()
{
  sub_1DAB855C0(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB852E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1DAB855C0(0, a3, a4, a5, MEMORY[0x1E69D6B18]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85350(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = *(a2 + 20);
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB853FC()
{
  sub_1DAB857B4(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85474(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v28 = *(a1 + 96);
  v29 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 112);
  v20 = v28;
  v21 = v8;
  v16 = v24;
  v17 = v5;
  v18 = v26;
  v19 = v1;
  v30 = *(a1 + 128);
  v22 = *(a1 + 128);
  v14 = v23[0];
  v15 = v3;
  sub_1DAB857B4(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DAA806E4(v23, v13);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85540()
{
  sub_1DAB855C0(0, &qword_1EE11FE28, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAB855C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAB857B4(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAB8563C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 48 * result);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *(v6 - 1);
    v10 = *v6;
    v9 = v6[1];
    v11 = v6[2];
    v12 = *(v6 + 12);
    v14[0] = *(v6 - 2);
    v14[1] = v8;
    v14[2] = v10;
    v14[3] = v9;
    v14[4] = v11;
    v15 = v12;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v13 = a1(v14);

    if (v3)
    {
      break;
    }

    v6 -= 6;
    result = v7 - 1;
  }

  while ((v13 & 1) == 0);
  return result;
}

BOOL sub_1DAB85718(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a1 + 20);
  v5 = *a2;
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 20);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v10 = v5;
  v11 = *(a2 + 1);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  return sub_1DABE7120(&v15, &v10);
}

void sub_1DAB857B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB85804(uint64_t a1)
{
  sub_1DAB857B4(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAB85888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DAA9A3AC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DAB85A94(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1DACB9BC4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1DAB87D50(v3, *(a1 + 36), 0, a1);
  return sub_1DACB71E4();
}

uint64_t sub_1DAB85B3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = -1 << *(a1 + 32);
  v11 = sub_1DACB9BC4();
  v12 = 1;
  if (v11 != 1 << *(a1 + 32))
  {
    sub_1DAB877C4(v11, *(a1 + 36), a1, a2, a3, a5);
    v12 = 0;
  }

  v13 = a4(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a5, v12, 1, v13);
}

uint64_t sub_1DAB85C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v38 = a1;
  v37 = sub_1DACB8344();
  v33 = *(v37 - 8);
  v34 = v33;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB8204();
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB878E0(0, &qword_1EE11D450, MEMORY[0x1E69D6B00]);
  v35 = v14;
  (*(v11 + 16))(v13, v31, v10);
  (*(v7 + 16))(v9, a3, v6);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v32;
  *(v17 + 16) = v32;
  (*(v11 + 32))(v17 + v15, v13, v10);
  (*(v7 + 32))(v17 + v16, v9, v30);
  v19 = *(v18 + 96);
  v20 = MEMORY[0x1E69D6528];
  sub_1DAB8753C(0, &qword_1EE11CEC0, MEMORY[0x1E69D6528], MEMORY[0x1E69E6F90]);
  v21 = v34;
  v22 = *(v33 + 72);
  v23 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DACC1D20;
  swift_retain_n();
  sub_1DACB8324();
  v39 = v24;
  sub_1DAB875A0();
  sub_1DAB8753C(0, &unk_1EE125520, v20, MEMORY[0x1E69E62F8]);
  sub_1DAB875F8();
  v25 = v36;
  v26 = v37;
  sub_1DACB9BB4();
  sub_1DACB8A04();

  (*(v21 + 8))(v25, v26);
  v27 = sub_1DACB89D4();
  type metadata accessor for CurrencyResponse();
  v28 = sub_1DACB8A64();

  return v28;
}

uint64_t sub_1DAB860A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1DACB7CC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8786C();
  v18 = v13;
  (*(v10 + 16))(v12, a3, v9);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v7 + 32))(v16 + v15, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DAB862D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for CurrencyResponse();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB863F4, 0, 0);
}

uint64_t sub_1DAB863F4()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1DAB86528;
  v7 = v0[12];
  v8 = v0[7];
  v9 = v0[8];

  return v11(v7, v8, v9, v2, v3);
}

uint64_t sub_1DAB86528()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1DAB86860;
  }

  else
  {
    v3 = sub_1DAB8663C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB8663C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  v6 = v0[6];
  sub_1DAB87DA0(v1, v3, type metadata accessor for CurrencyResponse);
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  swift_beginAccess();
  sub_1DAB87CBC(v3, v6 + v7);
  swift_endAccess();
  sub_1DAB8753C(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
  sub_1DAB87AA8();
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D20;
  sub_1DAB87DA0(v1, v11 + v10, type metadata accessor for CurrencyResponse);
  v12 = sub_1DAB68D7C(v11);
  swift_setDeallocating();
  sub_1DAB87B10(v11 + v10, sub_1DAB87AA8);
  swift_deallocClassInstance();
  sub_1DAB87B10(v1, type metadata accessor for CurrencyResponse);
  *v5 = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DAB86860()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1DAB868D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DACB81A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DAB8786C();
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

uint64_t sub_1DAB86A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v30[1] = a2;
  v31 = a3;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v30 - v11;
  v13 = type metadata accessor for CurrencyResponse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  swift_beginAccess();
  sub_1DAB87A14(a1 + v18, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DAB87680(v12);
LABEL_6:
    v27 = __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
    v28 = *(a1 + 112);
    (*(a1 + 104))();
    v29 = *v27;
    v25 = sub_1DAC92238();
    result = (*(v5 + 8))(v8, v4);
    goto LABEL_7;
  }

  v19 = sub_1DAB87760(v12, v17);
  v20 = *(a1 + 112);
  (*(a1 + 104))(v19);
  LOBYTE(v20) = sub_1DAC91AA0(v17);
  (*(v5 + 8))(v8, v4);
  if ((v20 & 1) == 0)
  {
    sub_1DAB87B10(v17, type metadata accessor for CurrencyResponse);
    goto LABEL_6;
  }

  sub_1DAB8753C(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
  sub_1DAB87AA8();
  v22 = *(*(v21 - 8) + 72);
  v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DACC1D20;
  sub_1DAB87DA0(v17, v24 + v23, type metadata accessor for CurrencyResponse);
  v25 = sub_1DAB68D7C(v24);
  swift_setDeallocating();
  sub_1DAB87B10(v24 + v23, sub_1DAB87AA8);
  swift_deallocClassInstance();
  result = sub_1DAB87B10(v17, type metadata accessor for CurrencyResponse);
LABEL_7:
  *v31 = v25;
  return result;
}

uint64_t sub_1DAB86E24(uint64_t a1, uint64_t a2)
{
  sub_1DAB8786C();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  sub_1DACB71F4();
  sub_1DACB71E4();
  return sub_1DACB8A94();
}

uint64_t sub_1DAB86EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DAB85B3C(*a1, type metadata accessor for CurrencyResponse, type metadata accessor for CurrencyResponse, type metadata accessor for CurrencyResponse, &v10 - v6);
  v8 = type metadata accessor for CurrencyResponse();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1DAB87760(v7, a2);
  }

  sub_1DAB87680(v7);
  sub_1DAB8770C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1DAB8701C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  v2 = v0[14];

  sub_1DAB87680(v0 + OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrencyManager()
{
  result = qword_1EE11ED78;
  if (!qword_1EE11ED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAB870F4()
{
  sub_1DAB8753C(319, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DAB871DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DAB87208, 0, 0);
}

uint64_t sub_1DAB87208()
{
  v1 = v0[6];
  v0[7] = sub_1DAB85C18(v0[3], v0[4], v0[5]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1DAB872B4;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1DAB872B4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAB873F0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAB873F0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1DAB87454(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAB860A8(a1, v7, v1 + v4, v8);
}

void sub_1DAB8753C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAB875A0()
{
  result = qword_1EE1255B0;
  if (!qword_1EE1255B0)
  {
    sub_1DACB8344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1255B0);
  }

  return result;
}

unint64_t sub_1DAB875F8()
{
  result = qword_1EE125518;
  if (!qword_1EE125518)
  {
    sub_1DAB8753C(255, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125518);
  }

  return result;
}

uint64_t sub_1DAB87680(uint64_t a1)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB8770C()
{
  result = qword_1EE11ED90;
  if (!qword_1EE11ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11ED90);
  }

  return result;
}

uint64_t sub_1DAB87760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB877C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 56);
    v10 = a4(0);
    return sub_1DAB87DA0(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1DAB8786C()
{
  if (!qword_1EE11D408)
  {
    sub_1DAB878E0(255, &qword_1EE11D1C8, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D408);
    }
  }
}

void sub_1DAB878E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CurrencyResponse();
    v7 = sub_1DAB69930();
    v8 = a3(a1, &type metadata for CurrencyManagerCacheKey, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAB87954@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *__swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  result = sub_1DAC91FDC(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB87A14(uint64_t a1, uint64_t a2)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAB87AA8()
{
  if (!qword_1EE11E110)
  {
    type metadata accessor for CurrencyResponse();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11E110);
    }
  }
}

uint64_t sub_1DAB87B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB87B70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DACB7CC4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DACB8204() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA94754;

  return sub_1DAB862D4(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1DAB87CBC(uint64_t a1, uint64_t a2)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB87D50(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DAB87DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAB87E1C()
{
  result = qword_1ECBE80C8;
  if (!qword_1ECBE80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80C8);
  }

  return result;
}

uint64_t sub_1DAB87E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAB87EB4, 0, 0);
}

uint64_t sub_1DAB87EB4()
{
  v1 = v0[10];
  v0[11] = (*(v0[9] + 8))(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1DAB87F78;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAB87F78()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1DAB88094;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB88094()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1DAB88120()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = *v0;
  v7 = v0[1];
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v3, v4);
  return v6;
}

uint64_t sub_1DAB881AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1DAA83070(0, &qword_1EE11F5B8, sub_1DAA830D8, &type metadata for StockMetadataManager.CacheEntry.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA830D8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v26;
    sub_1DAB8BBF0();
    sub_1DACB9F84();
    (*(v6 + 8))(v9, v5);
    v12 = v24;
    *(v11 + 96) = v23;
    *(v11 + 112) = v12;
    *(v11 + 128) = v25;
    v13 = v20;
    *(v11 + 32) = v19;
    *(v11 + 48) = v13;
    v14 = v22;
    *(v11 + 64) = v21;
    *(v11 + 80) = v14;
    v15 = v18;
    *v11 = *&v17[8];
    *(v11 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAB8839C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B636F7473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB88420(uint64_t a1)
{
  v2 = sub_1DAA830D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8845C(uint64_t a1)
{
  v2 = sub_1DAA830D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB884B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v25 = *(v0 + 96);
  v26 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v21 = *(v0 + 32);
  v22 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = v6;
  v7 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v7;
  v8 = *(v0 + 112);
  v17 = v25;
  v18 = v8;
  v13 = v21;
  v14 = v5;
  v15 = v23;
  v16 = v1;
  v27 = *(v0 + 128);
  v19 = *(v0 + 128);
  v11 = v20[0];
  v12 = v3;
  sub_1DAA83848(v20, v10);
  sub_1DAA837F0(0, &qword_1EE1201A8, MEMORY[0x1E69E6720]);
  return sub_1DACB9394();
}

uint64_t sub_1DAB88568()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  sub_1DAA87074((v0 + 9), &qword_1EE123E28, MEMORY[0x1E69E64E8], sub_1DAA58DCC);
  v2 = v0[10];

  return swift_deallocClassInstance();
}

void sub_1DAB885E8()
{
  if (!qword_1ECBE80D0)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    v0 = sub_1DACB8C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE80D0);
    }
  }
}

uint64_t sub_1DAB8869C()
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DACB8C64();
}

uint64_t sub_1DAB887D4(__int128 *a1)
{
  v2 = v1;
  v3 = 0x73752D6E65;
  v4 = a1[7];
  v38 = a1[6];
  v39 = v4;
  v40 = *(a1 + 16);
  v5 = a1[3];
  v34 = a1[2];
  v35 = v5;
  v6 = a1[5];
  v36 = a1[4];
  v37 = v6;
  v7 = a1[1];
  v32 = *a1;
  v33 = v7;
  v8 = v7;
  v9 = objc_opt_self();
  sub_1DACB71E4();
  v10 = [v9 sharedPreferences];
  v11 = v10;
  if (!v10)
  {
    v15 = 0xE500000000000000;
LABEL_8:

    v20 = 0xE200000000000000;
    v18 = 21333;
    goto LABEL_9;
  }

  v12 = [v10 stocksLanguageCode];
  if (v12)
  {
    v13 = v12;
    v3 = sub_1DACB9324();
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = [v11 stocksCountryCode];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_1DACB9324();
  v20 = v19;

LABEL_9:
  __src[0] = v8;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v3, v15);
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v18, v20);

  v21 = *(v2 + 80);
  sub_1DACB88F4();
  sub_1DAA58BFC(0, &qword_1ECBE80D8, sub_1DAB8B890, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  inited[1] = xmmword_1DACC1D20;
  inited[2] = v8;
  __src[0] = v32;
  __src[1] = v33;
  __src[2] = v34;
  __src[3] = v35;
  __src[4] = v36;
  __src[5] = v37;
  __src[6] = v38;
  __src[7] = v39;
  v31 = v40;
  nullsub_1(__src);
  memmove(inited + 3, __src, 0x88uLL);
  sub_1DAA806E4(&v32, v28);
  sub_1DAB68A1C(inited);
  swift_setDeallocating();
  sub_1DAA889F4((inited + 2), sub_1DAB8B890);
  sub_1DACB8D24();

  v28[6] = v38;
  v28[7] = v39;
  v29 = v40;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v28[0] = v32;
  v28[1] = v33;
  sub_1DAA837F0(0, &qword_1ECBE9AC0, MEMORY[0x1E69D6B18]);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1DAA806E4(&v32, &v27);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB88B38(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = a2[1];
  v47 = *a2;
  v48[0] = v6;
  *(v48 + 10) = *(a2 + 26);
  sub_1DACBA284();
  sub_1DABE6B08();
  v7 = sub_1DACBA2C4();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v36 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_43:
    v25 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47 = *v34;
    sub_1DAA8DB84(v36, v46);
    sub_1DAB89EAC(v36, v9, isUniquelyReferenced_nonNull_native);
    *v34 = v47;
    v27 = v36[1];
    *a1 = *v36;
    *(a1 + 16) = v27;
    *(a1 + 26) = *(v36 + 26);
    return 1;
  }

  v42 = ~v8;
  v38 = *(a2 + 41);
  v10 = *a2;
  v11 = *(a2 + 1);
  v40 = *(a2 + 4);
  v41 = *(a2 + 3);
  v43 = *(v4 + 48);
  v35 = *(a2 + 40);
  v39 = v35 & 0xE0;
  v45 = *(a2 + 2);
  while (1)
  {
    v12 = v43 + 48 * v9;
    result = *v12;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    v44 = *(v12 + 41);
    if (*v12 != v10 || *(v12 + 8) != v11)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *(v14 + 16);
    if (v19 != *(v45 + 16))
    {
      goto LABEL_5;
    }

    if (v19 && v14 != v45)
    {
      break;
    }

LABEL_17:
    if ((v15 != v41 || v16 != v40) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = v17 >> 5;
    if (v17 >> 5 > 2)
    {
      if (v21 == 3)
      {
        if (v39 != 96)
        {
          goto LABEL_5;
        }
      }

      else if (v21 == 4)
      {
        if (v39 != 128)
        {
          goto LABEL_5;
        }
      }

      else if (v35 != 160)
      {
        goto LABEL_5;
      }
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        if (v39 != 32)
        {
          goto LABEL_5;
        }
      }

      else if (v39 != 64)
      {
        goto LABEL_5;
      }
    }

    else if (v35 > 0x1F)
    {
      goto LABEL_5;
    }

    if (v44 == v38)
    {
      sub_1DAA934A8(v36);
      v28 = *(v4 + 48) + 48 * v9;
      v30 = *v28;
      v29 = *(v28 + 8);
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      v33 = *(v28 + 32);
      LOWORD(v28) = *(v28 + 40);
      *a1 = v30;
      *(a1 + 8) = v29;
      *(a1 + 16) = v32;
      *(a1 + 24) = v31;
      *(a1 + 32) = v33;
      *(a1 + 40) = v28;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      return 0;
    }

LABEL_5:
    v9 = (v9 + 1) & v42;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v22 = (v14 + 40);
  v23 = (v45 + 40);
  while (v19)
  {
    result = *(v22 - 1);
    if (result != *(v23 - 1) || *v22 != *v23)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 += 2;
    v23 += 2;
    if (!--v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB88E84(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 112);
  *v82 = *(a2 + 96);
  *&v82[16] = v6;
  *&v82[32] = *(a2 + 128);
  v7 = *(a2 + 48);
  v79 = *(a2 + 32);
  v80 = v7;
  v8 = *(a2 + 80);
  *v81 = *(a2 + 64);
  *&v81[16] = v8;
  v9 = *(a2 + 16);
  v77 = *a2;
  v78 = v9;
  sub_1DACBA284();
  sub_1DAB08BD4();
  v10 = sub_1DACBA2C4();
  v11 = v4 + 56;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_84:
    v41 = *v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75[0] = *v60;
    sub_1DAA806E4(a2, &v77);
    sub_1DAB8A1D8(a2, v13, isUniquelyReferenced_nonNull_native);
    *v60 = *&v75[0];
    v43 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v43;
    *(a1 + 128) = *(a2 + 128);
    v44 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v44;
    v45 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v45;
    v46 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v46;
    return result;
  }

  v14 = ~v12;
  v69 = *(a2 + 64);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  *(&v72 + 1) = *(a2 + 32);
  v73 = *(a2 + 24);
  *(&v71 + 1) = *(a2 + 48);
  *&v72 = *(a2 + 40);
  v70 = *(a2 + 72);
  *&v71 = *(a2 + 56);
  *(&v65 + 1) = *(a2 + 88);
  v66 = *(a2 + 80);
  v64 = *(a2 + 112);
  *&v65 = *(a2 + 96);
  v59 = *(a2 + 120);
  v62 = *(a2 + 104);
  v63 = *(a2 + 128);
  v67 = ~v12;
  v68 = v4 + 56;
  while (1)
  {
    v18 = *(v4 + 48) + 136 * v13;
    v77 = *v18;
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    v21 = *(v18 + 32);
    v78 = *(v18 + 16);
    v79 = v21;
    v80 = v19;
    *v81 = v20;
    v22 = *(v18 + 80);
    v23 = *(v18 + 96);
    v24 = *(v18 + 112);
    *&v82[32] = *(v18 + 128);
    *v82 = v23;
    *&v82[16] = v24;
    *&v81[16] = v22;
    if (v77 != __PAIR128__(v16, v15) && (sub_1DACBA174() & 1) == 0 || v78 != __PAIR128__(v73, v17) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v79, *(&v79 + 1)) != v72 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v80, *(&v80 + 1)) != v71 && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_5;
    }

    if (v81[0] <= 3u)
    {
      v25 = 0x75636F7470797263;
      if (v81[0] != 2)
      {
        v25 = 0x797469757165;
      }

      v26 = 0xEE0079636E657272;
      if (v81[0] != 2)
      {
        v26 = 0xE600000000000000;
      }

      v27 = 0x79636E6572727563;
      if (!v81[0])
      {
        v27 = 0x6E776F6E6B6E75;
      }

      v28 = 0xE700000000000000;
      if (v81[0])
      {
        v28 = 0xE800000000000000;
      }

      if (v81[0] <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      if (v81[0] <= 1u)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

LABEL_36:
      v31 = v69;
      if (v69 <= 3)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    }

    if (v81[0] <= 5u)
    {
      if (v81[0] == 4)
      {
        v29 = 6714469;
      }

      else
      {
        v29 = 0x73657275747566;
      }

      if (v81[0] == 4)
      {
        v30 = 0xE300000000000000;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      goto LABEL_36;
    }

    v31 = v69;
    if (v81[0] == 6)
    {
      v30 = 0xE500000000000000;
      v29 = 0x7865646E69;
      if (v69 <= 3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v29 = 0x75466C617574756DLL;
      v30 = 0xEA0000000000646ELL;
      if (v69 <= 3)
      {
LABEL_37:
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v33 = 0x75636F7470797263;
          }

          else
          {
            v33 = 0x797469757165;
          }

          if (v31 == 2)
          {
            v32 = 0xEE0079636E657272;
          }

          else
          {
            v32 = 0xE600000000000000;
          }
        }

        else if (v31)
        {
          v32 = 0xE800000000000000;
          v33 = 0x79636E6572727563;
        }

        else
        {
          v32 = 0xE700000000000000;
          v33 = 0x6E776F6E6B6E75;
        }

        goto LABEL_65;
      }
    }

LABEL_51:
    v34 = 0x75466C617574756DLL;
    if (v31 == 6)
    {
      v34 = 0x7865646E69;
    }

    v35 = 0xEA0000000000646ELL;
    if (v31 == 6)
    {
      v35 = 0xE500000000000000;
    }

    v36 = 0x73657275747566;
    if (v31 == 4)
    {
      v36 = 6714469;
    }

    v37 = 0xE700000000000000;
    if (v31 == 4)
    {
      v37 = 0xE300000000000000;
    }

    v33 = v31 <= 5 ? v36 : v34;
    v32 = v31 <= 5 ? v37 : v35;
LABEL_65:
    v38 = v4;
    if (v29 == v33 && v30 == v32)
    {
      sub_1DAA806E4(&v77, v75);
    }

    else
    {
      v39 = sub_1DACBA174();
      sub_1DAA806E4(&v77, v75);

      if ((v39 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (*&v81[8] != __PAIR128__(v66, v70) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v81[24], *v82) != v65 && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (*&v82[16])
    {
      if (!v64 || *&v82[8] != __PAIR128__(v64, v62) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v64)
    {
      goto LABEL_4;
    }

    if (!*&v82[32])
    {
      if (!v63)
      {
        break;
      }

LABEL_4:
      sub_1DAA9B1C8(&v77);
      v4 = v38;
      v14 = v67;
      v11 = v68;
      goto LABEL_5;
    }

    if (!v63)
    {
      goto LABEL_4;
    }

    if (*&v82[24] == __PAIR128__(v63, v59))
    {
      break;
    }

    v40 = sub_1DACBA174();
    sub_1DAA9B1C8(&v77);
    v4 = v38;
    v14 = v67;
    v11 = v68;
    if (v40)
    {
      goto LABEL_86;
    }

LABEL_5:
    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  sub_1DAA9B1C8(&v77);
  v4 = v38;
LABEL_86:
  sub_1DAA9B1C8(a2);
  v48 = *(v4 + 48) + 136 * v13;
  v75[0] = *v48;
  v49 = *(v48 + 48);
  v50 = *(v48 + 64);
  v51 = *(v48 + 32);
  v75[1] = *(v48 + 16);
  v75[2] = v51;
  v75[3] = v49;
  v75[4] = v50;
  v52 = *(v48 + 80);
  v53 = *(v48 + 96);
  v54 = *(v48 + 112);
  v76 = *(v48 + 128);
  v75[6] = v53;
  v75[7] = v54;
  v75[5] = v52;
  v55 = *(v48 + 112);
  *(a1 + 96) = *(v48 + 96);
  *(a1 + 112) = v55;
  *(a1 + 128) = *(v48 + 128);
  v56 = *(v48 + 48);
  *(a1 + 32) = *(v48 + 32);
  *(a1 + 48) = v56;
  v57 = *(v48 + 80);
  *(a1 + 64) = *(v48 + 64);
  *(a1 + 80) = v57;
  v58 = *(v48 + 16);
  *a1 = *v48;
  *(a1 + 16) = v58;
  sub_1DAA806E4(v75, v74);
  return 0;
}

uint64_t sub_1DAB89518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v6 = result;
  if (*(v3 + 16))
  {
    v42 = v2;
    v43 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v44 = result;
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v47 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v41 = 1 << *(v3 + 32);
        if (v41 >= 64)
        {
          bzero(v8, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v41;
        }

        v2 = v42;
        *(v3 + 16) = 0;
        goto LABEL_47;
      }

      v16 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v49 = *(v19 + 32);
      v50 = *(v19 + 24);
      v23 = *(v19 + 40);
      v48 = *(v19 + 41);
      v24 = *(v6 + 40);
      sub_1DACBA284();
      v45 = v21;
      v46 = v20;
      sub_1DACB9404();
      MEMORY[0x1E1277D70](*(v22 + 16));
      v25 = *(v22 + 16);
      if (v25)
      {
        v26 = (v22 + 40);
        do
        {
          v28 = *(v26 - 1);
          v27 = *v26;
          sub_1DACB71E4();
          sub_1DACB9404();

          v26 += 2;
          --v25;
        }

        while (v25);
      }

      sub_1DACB9404();
      v29 = v23 >> 5;
      if (v23 >> 5 <= 2)
      {
        break;
      }

      v6 = v44;
      if (v29 == 3)
      {
        v31 = 4;
LABEL_31:
        v32 = v48;
        goto LABEL_32;
      }

      v32 = v48;
      if (v29 == 4)
      {
        v31 = 5;
LABEL_32:
        MEMORY[0x1E1277D70](v31);
        v33 = v23 & 1;
        goto LABEL_33;
      }

      v33 = 0;
LABEL_33:
      MEMORY[0x1E1277D70](v33);
      MEMORY[0x1E1277D70](v32);
      result = sub_1DACBA2C4();
      v34 = -1 << *(v6 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 48 * v14;
      *v15 = v46;
      *(v15 + 8) = v45;
      *(v15 + 16) = v22;
      *(v15 + 24) = v50;
      *(v15 + 32) = v49;
      *(v15 + 40) = v23;
      *(v15 + 41) = v32;
      ++*(v6 + 16);
      v3 = v43;
      v11 = v47;
    }

    v30 = 2;
    if (v29 != 1)
    {
      v30 = 3;
    }

    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1;
    }

    v6 = v44;
    goto LABEL_31;
  }

LABEL_47:

  *v2 = v6;
  return result;
}

uint64_t sub_1DAB898C8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DACB7DC4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1DAB8BC44();
  result = sub_1DACB9C34();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680]);
      result = sub_1DACB91E4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1DAB89C18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = *(v3 + 48) + 136 * (v13 | (v7 << 6));
      v28 = *(v16 + 96);
      v29 = *(v16 + 112);
      v24 = *(v16 + 32);
      v25 = *(v16 + 48);
      v26 = *(v16 + 64);
      v27 = *(v16 + 80);
      v22 = *v16;
      v23 = *(v16 + 16);
      v30 = *(v16 + 128);
      v17 = *(v6 + 40);
      v21 = *v16;
      sub_1DACBA284();
      sub_1DAB08BD4();
      sub_1DACBA2C4();
      v18 = -1 << *(v6 + 32);
      result = sub_1DACB9BE4();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = *(v6 + 48) + 136 * result;
      *(v19 + 96) = v28;
      *(v19 + 112) = v29;
      *(v19 + 128) = v30;
      *(v19 + 32) = v24;
      *(v19 + 48) = v25;
      *(v19 + 64) = v26;
      *(v19 + 80) = v27;
      *v19 = v22;
      *(v19 + 16) = v23;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAB89EAC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v36 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DAB89518(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DAB8A84C();
        goto LABEL_51;
      }

      sub_1DAB8AF74(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v43 = *v5;
    *v44 = *(v5 + 16);
    *&v44[10] = *(v5 + 26);
    sub_1DACBA284();
    sub_1DABE6B08();
    result = sub_1DACBA2C4();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    v41 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v39 = ~v10;
      v32 = *(v5 + 40);
      v33 = *(v5 + 41);
      v11 = *v5;
      v12 = *(v5 + 8);
      v37 = *(v5 + 32);
      v38 = *(v5 + 24);
      v40 = *(v8 + 48);
      v34 = v32 & 0xE0;
      v42 = *(v5 + 16);
      do
      {
        v13 = v40 + 48 * a2;
        result = *v13;
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v16 = *(v13 + 32);
        v17 = *(v13 + 40);
        v18 = *(v13 + 41);
        v19 = *v13 == v11 && *(v13 + 8) == v12;
        if (v19 || (result = sub_1DACBA174(), (result & 1) != 0))
        {
          v20 = *(v14 + 16);
          if (v20 == *(v42 + 16))
          {
            if (v20)
            {
              v21 = v14 == v42;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              v23 = (v14 + 40);
              v24 = (v42 + 40);
              while (v20)
              {
                result = *(v23 - 1);
                if (result != *(v24 - 1) || *v23 != *v24)
                {
                  result = sub_1DACBA174();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_11;
                  }
                }

                v23 += 2;
                v24 += 2;
                if (!--v20)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
              goto LABEL_54;
            }

LABEL_23:
            if (v15 == v38 && v16 == v37 || (result = sub_1DACBA174(), (result & 1) != 0))
            {
              v22 = v17 >> 5;
              if (v17 >> 5 > 2)
              {
                if (v22 == 3)
                {
                  if (v34 == 96)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v22 == 4)
                {
                  if (v34 == 128)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v32 == 160)
                {
LABEL_10:
                  if (v18 == v33)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else if (v22)
              {
                if (v22 == 1)
                {
                  if (v34 == 32)
                  {
                    goto LABEL_10;
                  }
                }

                else if (v34 == 64)
                {
                  goto LABEL_10;
                }
              }

              else if (v32 <= 0x1F)
              {
                goto LABEL_10;
              }
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v39;
      }

      while (((*(v41 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_51:
  v26 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 48 * a2);
  v28 = v36[1];
  *v27 = *v36;
  v27[1] = v28;
  *(v27 + 26) = *(v36 + 26);
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_1DACBA1E4();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_1DAB8A1D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DAB89C18(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DAB8AD9C();
        goto LABEL_99;
      }

      sub_1DAB8B62C(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *(v5 + 112);
    v77 = *(v5 + 96);
    v78 = v10;
    v79 = *(v5 + 128);
    v11 = *(v5 + 48);
    v73 = *(v5 + 32);
    v74 = v11;
    v12 = *(v5 + 80);
    v75 = *(v5 + 64);
    v76 = v12;
    v13 = *(v5 + 16);
    v71 = *v5;
    v72 = v13;
    sub_1DACBA284();
    sub_1DAB08BD4();
    result = sub_1DACBA2C4();
    v14 = v8 + 56;
    v15 = -1 << *(v8 + 32);
    a2 = result & ~v15;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v63 = *(v5 + 64);
      v17 = *v5;
      v18 = *(v5 + 8);
      v19 = *(v5 + 16);
      v68 = *(v5 + 32);
      v69 = *(v5 + 24);
      v66 = *(v5 + 48);
      v67 = *(v5 + 40);
      v64 = *(v5 + 72);
      v65 = *(v5 + 56);
      v59 = *(v5 + 88);
      v60 = *(v5 + 80);
      v56 = *(v5 + 112);
      v57 = *(v5 + 96);
      v20 = *(v5 + 120);
      v53 = v20;
      v54 = *(v5 + 104);
      v55 = *(v5 + 128);
      v61 = ~v15;
      v62 = v8 + 56;
      while (1)
      {
        v21 = *(v8 + 48) + 136 * a2;
        v71 = *v21;
        v22 = *(v21 + 48);
        v23 = *(v21 + 64);
        v24 = *(v21 + 32);
        v72 = *(v21 + 16);
        v73 = v24;
        v74 = v22;
        v75 = v23;
        v25 = *(v21 + 80);
        v26 = *(v21 + 96);
        v27 = *(v21 + 112);
        v79 = *(v21 + 128);
        v77 = v26;
        v78 = v27;
        v76 = v25;
        if (v71 != v17 || *(&v71 + 1) != v18)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v72 != v19 || *(&v72 + 1) != v69)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v73 != v68 || *(&v73 + 1) != v67)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v74 != v66 || *(&v74 + 1) != v65)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v75 <= 3u)
        {
          break;
        }

        if (v75 <= 5u)
        {
          if (v75 == 4)
          {
            v32 = 6714469;
          }

          else
          {
            v32 = 0x73657275747566;
          }

          if (v75 == 4)
          {
            v33 = 0xE300000000000000;
          }

          else
          {
            v33 = 0xE700000000000000;
          }

          goto LABEL_47;
        }

        v34 = v63;
        if (v75 == 6)
        {
          v33 = 0xE500000000000000;
          v32 = 0x7865646E69;
          if (v63 <= 3)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v32 = 0x75466C617574756DLL;
          v33 = 0xEA0000000000646ELL;
          if (v63 <= 3)
          {
LABEL_48:
            if (v34 > 1)
            {
              if (v34 == 2)
              {
                v36 = 0x75636F7470797263;
              }

              else
              {
                v36 = 0x797469757165;
              }

              if (v34 == 2)
              {
                v35 = 0xEE0079636E657272;
              }

              else
              {
                v35 = 0xE600000000000000;
              }
            }

            else if (v34)
            {
              v35 = 0xE800000000000000;
              v36 = 0x79636E6572727563;
            }

            else
            {
              v35 = 0xE700000000000000;
              v36 = 0x6E776F6E6B6E75;
            }

            goto LABEL_76;
          }
        }

LABEL_62:
        v37 = 0x75466C617574756DLL;
        if (v34 == 6)
        {
          v37 = 0x7865646E69;
        }

        v38 = 0xEA0000000000646ELL;
        if (v34 == 6)
        {
          v38 = 0xE500000000000000;
        }

        v39 = 0x73657275747566;
        if (v34 == 4)
        {
          v39 = 6714469;
        }

        v40 = 0xE700000000000000;
        if (v34 == 4)
        {
          v40 = 0xE300000000000000;
        }

        if (v34 <= 5)
        {
          v36 = v39;
        }

        else
        {
          v36 = v37;
        }

        if (v34 <= 5)
        {
          v35 = v40;
        }

        else
        {
          v35 = v38;
        }

LABEL_76:
        v41 = v8;
        if (v32 == v36 && v33 == v35)
        {
          sub_1DAA806E4(&v71, v70);

          v16 = v61;
        }

        else
        {
          v42 = sub_1DACBA174();
          sub_1DAA806E4(&v71, v70);

          v16 = v61;
          if ((v42 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if ((*(&v75 + 1) != v64 || v76 != v60) && (sub_1DACBA174() & 1) == 0 || (*(&v76 + 1) != v59 || v77 != v57) && (sub_1DACBA174() & 1) == 0)
        {
LABEL_11:
          result = sub_1DAA9B1C8(&v71);
          v8 = v41;
          v14 = v62;
          goto LABEL_12;
        }

        if (v78)
        {
          if (!v56 || (*(&v77 + 1) != v54 || v78 != v56) && (sub_1DACBA174() & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v56)
        {
          goto LABEL_11;
        }

        if (v79)
        {
          if (!v55)
          {
            goto LABEL_11;
          }

          if (*(&v78 + 1) == v53 && v79 == v55)
          {
            goto LABEL_102;
          }

          v43 = sub_1DACBA174();
          result = sub_1DAA9B1C8(&v71);
          v8 = v41;
          v14 = v62;
          if (v43)
          {
            goto LABEL_103;
          }
        }

        else
        {
          result = sub_1DAA9B1C8(&v71);
          v8 = v41;
          v14 = v62;
          if (!v55)
          {
            goto LABEL_103;
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v16;
        if (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v28 = 0x75636F7470797263;
      if (v75 != 2)
      {
        v28 = 0x797469757165;
      }

      v29 = 0xEE0079636E657272;
      if (v75 != 2)
      {
        v29 = 0xE600000000000000;
      }

      v30 = 0x79636E6572727563;
      if (!v75)
      {
        v30 = 0x6E776F6E6B6E75;
      }

      v31 = 0xE700000000000000;
      if (v75)
      {
        v31 = 0xE800000000000000;
      }

      if (v75 <= 1u)
      {
        v32 = v30;
      }

      else
      {
        v32 = v28;
      }

      if (v75 <= 1u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

LABEL_47:
      v34 = v63;
      if (v63 <= 3)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }
  }

LABEL_99:
  v44 = *v58;
  *(*v58 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v45 = *(v44 + 48) + 136 * a2;
  v46 = *(v5 + 48);
  *(v45 + 32) = *(v5 + 32);
  *(v45 + 48) = v46;
  *(v45 + 128) = *(v5 + 128);
  v47 = *(v5 + 112);
  *(v45 + 96) = *(v5 + 96);
  *(v45 + 112) = v47;
  v48 = *(v5 + 80);
  *(v45 + 64) = *(v5 + 64);
  *(v45 + 80) = v48;
  v49 = *(v5 + 16);
  *v45 = *v5;
  *(v45 + 16) = v49;
  v50 = *(v44 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
LABEL_102:
    sub_1DAA9B1C8(&v71);
LABEL_103:
    result = sub_1DACBA1E4();
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v52;
  }

  return result;
}

void *sub_1DAB8A84C()
{
  v1 = v0;
  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        LOWORD(v18) = *(v18 + 40);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v22;
        *(v24 + 24) = v21;
        *(v24 + 32) = v23;
        *(v24 + 40) = v18;
        sub_1DACB71E4();
        sub_1DACB71E4();
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB8AA08()
{
  v1 = v0;
  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_1DACB71E4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DAB8AB74()
{
  v1 = v0;
  v2 = sub_1DACB7DC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8BC44();
  v7 = *v0;
  v8 = sub_1DACB9C24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_1DAB8AD9C()
{
  v1 = v0;
  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1DACB9C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAA806E4(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 136 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v19 = v17[1];
      v18 = v17[2];
      v20 = v17[4];
      v25[3] = v17[3];
      v25[4] = v20;
      v21 = v17[5];
      v22 = v17[6];
      v23 = v17[7];
      v26 = *(v17 + 16);
      v25[6] = v22;
      v25[7] = v23;
      v25[5] = v21;
      v25[0] = *v17;
      v25[1] = v19;
      v25[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x88uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DAB8AF74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA83070(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_44:
    *v2 = v6;
    return result;
  }

  v43 = v2;
  v44 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  v45 = result;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v48 = (v11 - 1) & v11;
LABEL_17:
    v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v19 + 32);
    v49 = *(v19 + 40);
    v50 = *(v19 + 41);
    v25 = *(v6 + 40);
    sub_1DACBA284();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v51 = v24;
    sub_1DACB71E4();
    v46 = v21;
    v47 = v20;
    sub_1DACB9404();
    MEMORY[0x1E1277D70](*(v23 + 16));
    v26 = *(v23 + 16);
    if (v26)
    {
      v27 = (v23 + 40);
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        sub_1DACB71E4();
        sub_1DACB9404();

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v30 = v22;
    sub_1DACB9404();
    v31 = v49 >> 5;
    if (v49 >> 5 <= 2)
    {
      v32 = 2;
      if (v31 != 1)
      {
        v32 = 3;
      }

      if (v31)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1;
      }

      v6 = v45;
      v34 = v50;
      goto LABEL_31;
    }

    v34 = v50;
    if (v31 == 3)
    {
      v33 = 4;
      v6 = v45;
      goto LABEL_31;
    }

    v6 = v45;
    if (v31 == 4)
    {
      v33 = 5;
LABEL_31:
      MEMORY[0x1E1277D70](v33);
      v35 = v49 & 1;
      goto LABEL_32;
    }

    v35 = 0;
LABEL_32:
    MEMORY[0x1E1277D70](v35);
    MEMORY[0x1E1277D70](v34);
    result = sub_1DACBA2C4();
    v36 = -1 << *(v6 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v13 + 8 * (v37 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v36) >> 6;
      while (++v38 != v40 || (v39 & 1) == 0)
      {
        v41 = v38 == v40;
        if (v38 == v40)
        {
          v38 = 0;
        }

        v39 |= v41;
        v42 = *(v13 + 8 * v38);
        if (v42 != -1)
        {
          v14 = __clz(__rbit64(~v42)) + (v38 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_46;
    }

    v14 = __clz(__rbit64((-1 << v37) & ~*(v13 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 48 * v14;
    *v15 = v47;
    *(v15 + 8) = v46;
    *(v15 + 16) = v23;
    *(v15 + 24) = v30;
    *(v15 + 32) = v51;
    *(v15 + 40) = v49;
    *(v15 + 41) = v34;
    ++*(v6 + 16);
    v3 = v44;
    v11 = v48;
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v43;
      goto LABEL_44;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1DAB8B31C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DACB7DC4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1DAB8BC44();
  v10 = sub_1DACB9C34();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680]);
      result = sub_1DACB91E4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1DAB8B62C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA83070(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = *(v3 + 48) + 136 * (v12 | (v7 << 6));
      v16 = *(v15 + 64);
      v17 = *(v15 + 16);
      v18 = *(v15 + 32);
      v40 = *(v15 + 48);
      v41 = v16;
      v39 = v18;
      v19 = *(v15 + 80);
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v45 = *(v15 + 128);
      v43 = v20;
      v44 = v21;
      v42 = v19;
      v37 = *v15;
      v38 = v17;
      v22 = *(v6 + 40);
      v23 = *(v15 + 112);
      v35[19] = *(v15 + 96);
      v35[20] = v23;
      v36 = *(v15 + 128);
      v24 = *(v15 + 48);
      v35[15] = *(v15 + 32);
      v35[16] = v24;
      v25 = *(v15 + 80);
      v35[17] = *(v15 + 64);
      v35[18] = v25;
      v26 = *(v15 + 16);
      v35[13] = *v15;
      v35[14] = v26;
      sub_1DACBA284();
      sub_1DAA806E4(&v37, v35);
      sub_1DAB08BD4();
      sub_1DACBA2C4();
      v27 = -1 << *(v6 + 32);
      result = sub_1DACB9BE4();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v28 = *(v6 + 48) + 136 * result;
      *v28 = v37;
      v29 = v41;
      v31 = v38;
      v30 = v39;
      *(v28 + 48) = v40;
      *(v28 + 64) = v29;
      *(v28 + 16) = v31;
      *(v28 + 32) = v30;
      v32 = v42;
      v33 = v43;
      v34 = v44;
      *(v28 + 128) = v45;
      *(v28 + 96) = v33;
      *(v28 + 112) = v34;
      *(v28 + 80) = v32;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_16;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

void sub_1DAB8B890()
{
  if (!qword_1ECBE7DF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7DF0);
    }
  }
}

uint64_t sub_1DAB8B8F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DACBA284();
  sub_1DACB9404();
  v7 = sub_1DACBA2C4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DACBA174() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DAB8AA08();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DAB8BA2C(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1DAB8BA2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;
    sub_1DACB71F4();
    v9 = sub_1DACB9BD4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DACBA284();
        sub_1DACB71E4();
        sub_1DACB9404();
        v15 = sub_1DACBA2C4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DAB8BBF0()
{
  result = qword_1EE1201B0;
  if (!qword_1EE1201B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201B0);
  }

  return result;
}

void sub_1DAB8BC44()
{
  if (!qword_1ECBE80E0)
  {
    sub_1DACB7DC4();
    sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680]);
    v0 = sub_1DACB9C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE80E0);
    }
  }
}

unint64_t sub_1DAB8BCFC()
{
  result = qword_1ECBE80E8;
  if (!qword_1ECBE80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80E8);
  }

  return result;
}

void sub_1DAB8BD74(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userID);
  v5 = *(v1 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userID + 8);
  v6 = sub_1DACB92F4();
  v7 = sub_1DACB92F4();
  [a1 encodeObject:v6 forKey:v7];

  v8 = sub_1DACB7C04();
  v9 = sub_1DACB92F4();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite);
  v11 = sub_1DACB92F4();
  [a1 encodeBool:v10 forKey:v11];
}

id sub_1DAB8BF10(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92F4();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {

    v18 = sub_1DAADFABC;
    v19 = &v37;
LABEL_16:
    sub_1DAB0826C(v19, v18);
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    v15 = ObjectType;
    v30 = v33;
    v31 = v34;
    v16 = sub_1DACB92F4();
    v17 = [a1 decodeObjectForKey_];

    if (v17)
    {
      sub_1DACB9B74();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    v20 = v15;
    if (*(&v36 + 1))
    {
      v21 = swift_dynamicCast();
      (*(v9 + 56))(v7, v21 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        v25 = (v1 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userID);
        v26 = v31;
        *v25 = v30;
        v25[1] = v26;
        (*(v9 + 16))(v1 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate, v12, v8);
        v27 = sub_1DACB92F4();
        v28 = [a1 decodeBoolForKey_];

        (*(v9 + 8))(v12, v8);
        *(v1 + OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite) = v28;
        v32.receiver = v1;
        v32.super_class = v20;
        v29 = objc_msgSendSuper2(&v32, sel_init);

        return v29;
      }
    }

    else
    {

      sub_1DAB0826C(&v37, sub_1DAADFABC);
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    v18 = sub_1DAA492B4;
    v19 = v7;
    goto LABEL_16;
  }

LABEL_17:
  v22 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DAB8C458(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if ((*(a2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite) & 1) != 0 || !v6)
  {
    v7 = [a1 encryptedValues];
    v8 = *(a2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userID);
    v9 = *(a2 + OBJC_IVAR___SCUpdateAdsUserIDCommand_userID + 8);
    v10 = sub_1DACB92F4();
    v11 = sub_1DACB92F4();
    [v7 setObject:v10 forKeyedSubscript:v11];
    swift_unknownObjectRelease();

    v12 = [a1 encryptedValues];
    v13 = sub_1DACB7C04();
    v14 = sub_1DACB92F4();
    [v12 setObject:v13 forKeyedSubscript:v14];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAB8C7D4(void *a1, uint64_t a2)
{
  sub_1DAB8DAC8(0, &qword_1ECBE8128, sub_1DAB8DA74, &type metadata for TestWatchlistService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8DA74();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DAB8DB30(&qword_1ECBE8130, sub_1DAA8534C);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAB8C9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B636F7473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB8CA40(uint64_t a1)
{
  v2 = sub_1DAB8DA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8CA7C(uint64_t a1)
{
  v2 = sub_1DAB8DA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB8CAB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAB8D6FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAB8CB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DAB8D59C();
  sub_1DACB83F4();
  v2 = sub_1DACB89D4();
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v3 = sub_1DACB8A64();

  return v3;
}

uint64_t sub_1DAB8CBB8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[5];
  v7 = a2[6];
  v8 = *(*a1 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v20 = a2[6];
    sub_1DACB71E4();
    sub_1DAA5859C(0, v8, 0);
    v9 = v22;
    v10 = (v5 + 56);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      sub_1DACB71E4();
      if (v14 >= v13 >> 1)
      {
        sub_1DAA5859C((v13 > 1), v14 + 1, 1);
      }

      *(v22 + 16) = v14 + 1;
      v15 = v22 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 17;
      --v8;
    }

    while (v8);
    v6 = v21;
  }

  else
  {
    v16 = a2[6];
    sub_1DACB71E4();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v18 = a2[3];
  v17 = a2[4];
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17;
  *(a3 + 40) = 160;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB8CCE0()
{
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  sub_1DAA61950(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC4A10;
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8A64();

  *(v0 + 32) = v2;
  v3 = sub_1DACB89D4();
  sub_1DAB8D628();
  sub_1DAB8D6A4();
  v4 = sub_1DACB8A34();

  return v4;
}

uint64_t sub_1DAB8CE80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

void *sub_1DAB8CEEC()
{
  v1 = v0;
  v2 = sub_1DACB7E44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1DACB92E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21[-v10];
  v21[31] = 0;
  sub_1DAB8DAC8(0, &qword_1ECBE72D8, sub_1DAB32748, &type metadata for StockTestDataLocator, MEMORY[0x1E69D6548]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[2] = sub_1DACB8414();
  v0[3] = sub_1DACB9324();
  v0[4] = v15;
  sub_1DACB9284();
  (*(v5 + 16))(v9, v11, v4);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE13E470;
  sub_1DACB7DF4();
  v17 = sub_1DACB9384();
  v19 = v18;
  (*(v5 + 8))(v11, v4);
  v1[5] = v17;
  v1[6] = v19;
  return v1;
}

uint64_t sub_1DAB8D180(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v28 = *(a1 + 96);
  v29 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 112);
  v20 = v28;
  v21 = v8;
  v16 = v24;
  v17 = v5;
  v18 = v26;
  v19 = v1;
  v30 = *(a1 + 128);
  v22 = *(a1 + 128);
  v14 = v23[0];
  v15 = v3;
  sub_1DAA61950(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DAA806E4(v23, v13);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D24C()
{
  sub_1DAA61950(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D2C4()
{
  sub_1DAA61774();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D318()
{
  v1 = *(*v0 + 16);
  sub_1DAB8D59C();
  sub_1DACB83F4();
  v2 = sub_1DACB89D4();
  sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v3 = sub_1DACB8A64();

  return v3;
}

uint64_t sub_1DAB8D3CC(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 20);
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D49C()
{
  sub_1DAA61950(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8D4FC()
{
  v1 = *v0;
  sub_1DAA61950(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1DAA61774();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAB8D59C()
{
  result = qword_1ECBE80F8;
  if (!qword_1ECBE80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80F8);
  }

  return result;
}

void sub_1DAB8D628()
{
  if (!qword_1ECBE8100)
  {
    sub_1DAA61950(255, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8100);
    }
  }
}

unint64_t sub_1DAB8D6A4()
{
  result = qword_1ECBE8108;
  if (!qword_1ECBE8108)
  {
    sub_1DAB8D628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8108);
  }

  return result;
}

void *sub_1DAB8D6FC(uint64_t *a1)
{
  sub_1DAB8DAC8(0, &qword_1ECBE8110, sub_1DAB8DA74, &type metadata for TestWatchlistService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8DA74();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA61950(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    sub_1DAB8DB30(&qword_1ECBE8120, sub_1DAB8BBF0);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DAB8D914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v9 = sub_1DACB7CE4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = v9;
  v16[4] = v11;
  v17 = 160;
  sub_1DAA61950(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAB8DA74()
{
  result = qword_1ECBE8118;
  if (!qword_1ECBE8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8118);
  }

  return result;
}

void sub_1DAB8DAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAB8DB30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61950(255, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB8DBD4()
{
  result = qword_1ECBE8138;
  if (!qword_1ECBE8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8138);
  }

  return result;
}

unint64_t sub_1DAB8DC2C()
{
  result = qword_1ECBE8140;
  if (!qword_1ECBE8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8140);
  }

  return result;
}

unint64_t sub_1DAB8DC84()
{
  result = qword_1ECBE8148;
  if (!qword_1ECBE8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8148);
  }

  return result;
}

_OWORD *sub_1DAB8DCF8@<X0>(_OWORD *result@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, unint64_t a28)
{
  v29 = a28;
  v31 = a24;
  v33 = a22;
  v35 = a20;
  v37 = a18;
  if (a7)
  {
    v38 = a6;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (a7)
  {
    v39 = a7;
  }

  if (!a18)
  {
    a17 = 0x46464646464623;
  }

  v54 = a17;
  if (!a18)
  {
    v37 = 0xE700000000000000;
  }

  if (!a20)
  {
    a19 = 0x30303030303023;
    v35 = 0xE700000000000000;
  }

  if (!a22)
  {
    a21 = 0x46464646464623;
    v33 = 0xE700000000000000;
  }

  if (!a24)
  {
    a23 = 0x46464646464623;
    v31 = 0xE700000000000000;
  }

  if (a26)
  {
    v40 = a25;
  }

  else
  {
    v40 = 0x46464646464623;
  }

  if (a26)
  {
    v41 = a26;
  }

  else
  {
    v41 = 0xE700000000000000;
  }

  if (!a28)
  {
    a27 = 0x46464646464623;
    v29 = 0xE700000000000000;
  }

  if (a16)
  {
    v42 = 0;
  }

  else
  {
    v42 = a15;
  }

  if (a14)
  {
    v44 = 0;
  }

  else
  {
    v44 = a13;
  }

  if (a12)
  {
    a11 = 0.0;
  }

  v45 = result[1];
  if (a10)
  {
    a8 = 0;
  }

  *a9 = *result;
  *(a9 + 16) = v45;
  v46 = *a2;
  v47 = a2[1];
  *(a9 + 32) = result[2];
  *(a9 + 48) = v46;
  v48 = a2[2];
  *(a9 + 64) = v47;
  *(a9 + 80) = v48;
  v49 = a3[1];
  *(a9 + 96) = *a3;
  *(a9 + 112) = v49;
  v50 = *a4;
  v51 = a4[1];
  *(a9 + 128) = a3[2];
  *(a9 + 144) = v50;
  v52 = a4[2];
  *(a9 + 160) = v51;
  *(a9 + 176) = v52;
  v53 = a5[1];
  *(a9 + 192) = *a5;
  *(a9 + 208) = v53;
  *(a9 + 224) = v38;
  *(a9 + 232) = v39;
  *(a9 + 240) = a8;
  *(a9 + 248) = a11;
  *(a9 + 256) = v44;
  *(a9 + 264) = v42;
  *(a9 + 272) = v54;
  *(a9 + 280) = v37;
  *(a9 + 288) = a19;
  *(a9 + 296) = v35;
  *(a9 + 304) = a21;
  *(a9 + 312) = v33;
  *(a9 + 320) = a23;
  *(a9 + 328) = v31;
  *(a9 + 336) = v40;
  *(a9 + 344) = v41;
  *(a9 + 352) = a27;
  *(a9 + 360) = v29;
  return result;
}

uint64_t sub_1DAB8DE78(char a1)
{
  result = 0x616D496567646162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    case 4:
      result = 0x6F65646976;
      break;
    case 5:
      result = 0x4C52556F65646976;
      break;
    case 6:
      result = 0x6469576F65646976;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x50706F5474786574;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x756F72676B636162;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x646165687473616DLL;
      break;
    case 13:
      v3 = 0x54656772616CLL;
      goto LABEL_15;
    case 14:
      v3 = 0x546C6C616D73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7865000000000000;
      break;
    case 15:
      result = 0x655473726566666FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAB8E068(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAB8DE78(*a1);
  v5 = v4;
  if (v3 == sub_1DAB8DE78(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB8E0F0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB8DE78(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB8E154()
{
  sub_1DAB8DE78(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAB8E1A8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB8DE78(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB8E208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB92508();
  *a2 = result;
  return result;
}

uint64_t sub_1DAB8E238@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAB8DE78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAB8E280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB92508();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB8E2A8(uint64_t a1)
{
  v2 = sub_1DAB8FF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8E2E4(uint64_t a1)
{
  v2 = sub_1DAB8FF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB8E320@<X0>(uint64_t *a1@<X0>, int64_t *a2@<X8>)
{
  sub_1DAB92150(0, &qword_1EE123CC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v161 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB8FF40();
  sub_1DACBA2F4();
  if (v2)
  {
    v13 = a1;
  }

  else
  {
    v218 = MEMORY[0x1E69E7CC0];
    v217 = 0;
    v12 = sub_1DAB8FF94();
    sub_1DACB9F84();
    v207 = v10;
    v208 = v6;
    v206 = v12;
    v203 = v7;
    v204 = a1;
    v202 = a2;
    if (v212)
    {
      v205 = v212;
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v16 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v19 = v16;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v16);
      }

      *(v19 + 2) = v18 + 1;
      v20 = &v19[16 * v18];
      *(v20 + 4) = 0x616D496567646162;
      *(v20 + 5) = 0xEA00000000006567;
      v15 = v19;
      v218 = v19;
      swift_endAccess();
      v205 = v212;
    }

    v21 = v211;
    v22 = v213;
    v23 = v214;
    v25 = v215;
    v24 = v216;
    v217 = 1;
    sub_1DACB9F84();
    v197 = v21;
    v198 = v22;
    v199 = v23;
    v200 = v25;
    v201 = v24;
    if (v212)
    {
      v195 = v212;
      v26 = v15;
    }

    else
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DAA9A3B0(0, *(v15 + 2) + 1, 1, v15);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      v26 = v15;
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DAA9A3B0((v27 > 1), v28 + 1, 1, v15);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[16 * v28];
      *(v29 + 4) = 0xD000000000000013;
      *(v29 + 5) = 0x80000001DACE17A0;
      v218 = v26;
      swift_endAccess();
      v195 = v212;
    }

    v30 = v211;
    v31 = v213;
    v32 = v214;
    v33 = v216;
    v196 = v215;
    v217 = 2;
    sub_1DACB9F84();
    v190 = v30;
    v191 = v31;
    v192 = v32;
    v193 = v33;
    if (v212)
    {
      v194 = v26;
      v189 = v212;
    }

    else
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DAA9A3B0(0, *(v26 + 2) + 1, 1, v26);
      }

      v35 = *(v26 + 2);
      v34 = *(v26 + 3);
      v36 = v26;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v26);
      }

      *(v36 + 2) = v35 + 1;
      v37 = &v36[16 * v35];
      *(v37 + 4) = 0x6567616D69;
      *(v37 + 5) = 0xE500000000000000;
      v194 = v36;
      v218 = v36;
      swift_endAccess();
      v189 = v212;
    }

    v38 = v211;
    v40 = v213;
    v39 = v214;
    v42 = v215;
    v41 = v216;
    v217 = 3;
    sub_1DACB9F84();
    v186 = v38;
    v187 = v40;
    v188 = v42;
    v206 = v39;
    if (v212)
    {
      v185 = v212;
    }

    else
    {
      swift_beginAccess();
      v43 = v194;
      v44 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DAA9A3B0(0, *(v43 + 2) + 1, 1, v43);
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      v47 = v43;
      if (v46 >= v45 >> 1)
      {
        v47 = sub_1DAA9A3B0((v45 > 1), v46 + 1, 1, v43);
      }

      *(v47 + 2) = v46 + 1;
      v48 = &v47[16 * v46];
      strcpy(v48 + 32, "alternateImage");
      v48[47] = -18;
      v194 = v47;
      v218 = v47;
      swift_endAccess();
      v185 = v212;
      v41 = v44;
    }

    v49 = v211;
    v50 = v213;
    v51 = v214;
    v52 = v215;
    v53 = v216;
    v217 = 4;
    sub_1DAB90794();
    sub_1DACB9F84();
    v183 = v49;
    v184 = v50;
    v180 = v51;
    v181 = v53;
    v182 = v52;
    if (v212)
    {
      v179 = v212;
    }

    else
    {
      swift_beginAccess();
      v54 = v194;
      v55 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1DAA9A3B0(0, *(v54 + 2) + 1, 1, v54);
      }

      v57 = *(v54 + 2);
      v56 = *(v54 + 3);
      v58 = v54;
      if (v57 >= v56 >> 1)
      {
        v58 = sub_1DAA9A3B0((v56 > 1), v57 + 1, 1, v54);
      }

      *(v58 + 2) = v57 + 1;
      v59 = &v58[16 * v57];
      *(v59 + 4) = 0x6F65646976;
      *(v59 + 5) = 0xE500000000000000;
      v194 = v58;
      v218 = v58;
      swift_endAccess();
      v179 = v212;
      v41 = v55;
    }

    v60 = v211;
    v62 = v213;
    v61 = v214;
    v217 = 5;
    sub_1DACB9F84();
    v178 = v60;
    v177 = v62;
    v63 = v210;
    v176 = v209;
    if (!v210)
    {
      v64 = v61;
      swift_beginAccess();
      v65 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v66 = v194;
      v68 = *(v194 + 2);
      v67 = *(v194 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_1DAA9A3B0((v67 > 1), v68 + 1, 1, v194);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[16 * v68];
      *(v69 + 4) = 0x4C52556F65646976;
      *(v69 + 5) = 0xE800000000000000;
      v194 = v66;
      v218 = v66;
      swift_endAccess();
      v41 = v65;
      v61 = v64;
    }

    v217 = 6;
    sub_1DACB9F84();
    LODWORD(v174) = v210;
    v175 = v209;
    if (v210)
    {
      v70 = v61;
      swift_beginAccess();
      v71 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v72 = v194;
      v74 = *(v194 + 2);
      v73 = *(v194 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1DAA9A3B0((v73 > 1), v74 + 1, 1, v194);
      }

      *(v72 + 2) = v74 + 1;
      v75 = &v72[16 * v74];
      *(v75 + 4) = 0x6469576F65646976;
      *(v75 + 5) = 0xEA00000000006874;
      v194 = v72;
      v218 = v72;
      swift_endAccess();
      v41 = v71;
      v61 = v70;
    }

    v217 = 7;
    sub_1DACB9F84();
    v76 = v61;
    v77 = v209;
    v78 = v210;
    if (v210)
    {
      v79 = v41;
      swift_beginAccess();
      v80 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1DAA9A3B0(0, *(v80 + 2) + 1, 1, v80);
      }

      v82 = *(v80 + 2);
      v81 = *(v80 + 3);
      if (v82 >= v81 >> 1)
      {
        v80 = sub_1DAA9A3B0((v81 > 1), v82 + 1, 1, v80);
      }

      *(v80 + 2) = v82 + 1;
      v83 = &v80[16 * v82];
      *(v83 + 4) = 0xD000000000000015;
      *(v83 + 5) = 0x80000001DACE17F0;
      v194 = v80;
      v218 = v80;
      swift_endAccess();
    }

    else
    {
      v79 = v41;
    }

    v217 = 8;
    sub_1DACB9F84();
    v84 = v209;
    v85 = v210;
    if (v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v87 = *(v194 + 2);
      v86 = *(v194 + 3);
      if (v87 >= v86 >> 1)
      {
        v194 = sub_1DAA9A3B0((v86 > 1), v87 + 1, 1, v194);
      }

      v88 = v194;
      *(v194 + 2) = v87 + 1;
      v89 = &v88[16 * v87];
      strcpy(v89 + 32, "textTopPadding");
      v89[47] = -18;
      v218 = v88;
      swift_endAccess();
    }

    v217 = 9;
    sub_1DACB9F84();
    v173 = *&v209;
    LODWORD(v172) = v210;
    if (v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v91 = *(v194 + 2);
      v90 = *(v194 + 3);
      if (v91 >= v90 >> 1)
      {
        v194 = sub_1DAA9A3B0((v90 > 1), v91 + 1, 1, v194);
      }

      v92 = v194;
      *(v194 + 2) = v91 + 1;
      v93 = &v92[16 * v91];
      *(v93 + 4) = 0xD000000000000013;
      *(v93 + 5) = 0x80000001DACE1820;
      v218 = v92;
      swift_endAccess();
    }

    v217 = 10;
    sub_1DACB9F84();
    v170 = *&v209;
    v171 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v95 = *(v194 + 2);
      v94 = *(v194 + 3);
      if (v95 >= v94 >> 1)
      {
        v194 = sub_1DAA9A3B0((v94 > 1), v95 + 1, 1, v194);
      }

      v96 = v194;
      *(v194 + 2) = v95 + 1;
      v97 = &v96[16 * v95];
      *(v97 + 4) = 0x756F72676B636162;
      *(v97 + 5) = 0xEF726F6C6F43646ELL;
      v218 = v96;
      swift_endAccess();
    }

    v217 = 11;
    sub_1DACB9F84();
    v168 = *&v209;
    v169 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v99 = *(v194 + 2);
      v98 = *(v194 + 3);
      if (v99 >= v98 >> 1)
      {
        v194 = sub_1DAA9A3B0((v98 > 1), v99 + 1, 1, v194);
      }

      v100 = v194;
      *(v194 + 2) = v99 + 1;
      v101 = &v100[16 * v99];
      *(v101 + 4) = 0xD000000000000018;
      *(v101 + 5) = 0x80000001DACE1850;
      v218 = v100;
      swift_endAccess();
    }

    v217 = 12;
    sub_1DACB9F84();
    v166 = *&v209;
    v167 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v103 = *(v194 + 2);
      v102 = *(v194 + 3);
      if (v103 >= v102 >> 1)
      {
        v194 = sub_1DAA9A3B0((v102 > 1), v103 + 1, 1, v194);
      }

      v104 = v194;
      *(v194 + 2) = v103 + 1;
      v105 = &v104[16 * v103];
      strcpy(v105 + 32, "mastheadColor");
      *(v105 + 23) = -4864;
      v218 = v104;
      swift_endAccess();
    }

    v217 = 13;
    sub_1DACB9F84();
    v164 = *&v209;
    v165 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v107 = *(v194 + 2);
      v106 = *(v194 + 3);
      if (v107 >= v106 >> 1)
      {
        v194 = sub_1DAA9A3B0((v106 > 1), v107 + 1, 1, v194);
      }

      v108 = v194;
      *(v194 + 2) = v107 + 1;
      v109 = &v108[16 * v107];
      strcpy(v109 + 32, "largeTextColor");
      v109[47] = -18;
      v218 = v108;
      swift_endAccess();
    }

    v217 = 14;
    sub_1DACB9F84();
    v162 = *&v209;
    v163 = v210;
    if (!v210)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v111 = *(v194 + 2);
      v110 = *(v194 + 3);
      if (v111 >= v110 >> 1)
      {
        v194 = sub_1DAA9A3B0((v110 > 1), v111 + 1, 1, v194);
      }

      v112 = v194;
      *(v194 + 2) = v111 + 1;
      v113 = &v112[16 * v111];
      strcpy(v113 + 32, "smallTextColor");
      v113[47] = -18;
      v218 = v112;
      swift_endAccess();
    }

    LOBYTE(v209) = 15;
    sub_1DACB9F84();
    v114 = v212;
    if (v212)
    {
      v161 = v211;
      v115 = *(v194 + 2) == 0;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1DAA9A3B0(0, *(v194 + 2) + 1, 1, v194);
      }

      v117 = *(v194 + 2);
      v116 = *(v194 + 3);
      v161 = v117 + 1;
      if (v117 >= v116 >> 1)
      {
        v194 = sub_1DAA9A3B0((v116 > 1), v161, 1, v194);
      }

      v115 = 0;
      v118 = v194;
      *(v194 + 2) = v161;
      v119 = &v118[16 * v117];
      *(v119 + 4) = 0x655473726566666FLL;
      *(v119 + 5) = 0xEF726F6C6F437478;
      v161 = 0x46464646464623;
    }

    v120 = v176;
    if (!v63)
    {
      v120 = 0.0;
    }

    v176 = v120;
    if (!v63)
    {
      v63 = 0xE000000000000000;
    }

    v121 = v175;
    if (v174)
    {
      v121 = 0.0;
    }

    v175 = v121;
    if (v78)
    {
      v77 = 0.0;
    }

    if (v85)
    {
      v122 = 0.0;
    }

    else
    {
      v122 = v84;
    }

    if (v172)
    {
      v123 = 0;
    }

    else
    {
      v123 = v173;
    }

    v124 = v171;
    v125 = v170;
    if (!v171)
    {
      v125 = 0x46464646464623;
    }

    v174 = v125;
    v126 = 0xE700000000000000;
    if (!v171)
    {
      v124 = 0xE700000000000000;
    }

    v173 = v124;
    v127 = 0x30303030303023;
    if (v169)
    {
      v127 = v168;
    }

    v172 = v127;
    if (v169)
    {
      v128 = v169;
    }

    else
    {
      v128 = 0xE700000000000000;
    }

    v171 = v128;
    v129 = v167;
    v130 = v166;
    if (!v167)
    {
      v130 = 0x46464646464623;
    }

    v170 = v130;
    if (!v167)
    {
      v129 = 0xE700000000000000;
    }

    v169 = v129;
    v131 = v165;
    v132 = v164;
    if (!v165)
    {
      v132 = 0x46464646464623;
    }

    v168 = v132;
    if (!v165)
    {
      v131 = 0xE700000000000000;
    }

    v167 = v131;
    v133 = v163;
    v134 = v162;
    if (!v163)
    {
      v134 = 0x46464646464623;
    }

    v166 = v134;
    if (!v163)
    {
      v133 = 0xE700000000000000;
    }

    v165 = v133;
    if (v114)
    {
      v126 = v114;
    }

    v164 = v126;
    if (v115)
    {
      sub_1DAA41DCC();
      v135 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41D64();
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_1DACC1D20;
      sub_1DAA61590(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v136 + 56) = v137;
      *(v136 + 64) = sub_1DAAF691C();
      *(v136 + 32) = v194;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v135 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    (*(v203 + 8))(v207, v208);

    v138 = v202;
    v139 = v205;
    *v202 = v197;
    *(v138 + 1) = v139;
    v141 = v199;
    v140 = v200;
    *(v138 + 2) = v198;
    *(v138 + 3) = v141;
    *(v138 + 4) = v140;
    v142 = v190;
    *(v138 + 5) = v201;
    *(v138 + 6) = v142;
    v143 = v191;
    *(v138 + 7) = v195;
    *(v138 + 8) = v143;
    v144 = v196;
    *(v138 + 9) = v192;
    *(v138 + 10) = v144;
    v145 = v186;
    *(v138 + 11) = v193;
    *(v138 + 12) = v145;
    v146 = v187;
    *(v138 + 13) = v189;
    *(v138 + 14) = v146;
    v147 = v188;
    *(v138 + 15) = v206;
    *(v138 + 16) = v147;
    v148 = v183;
    *(v138 + 17) = v79;
    *(v138 + 18) = v148;
    v149 = v184;
    *(v138 + 19) = v185;
    *(v138 + 20) = v149;
    v150 = v182;
    *(v138 + 21) = v180;
    *(v138 + 22) = v150;
    v151 = v178;
    *(v138 + 23) = v181;
    *(v138 + 24) = v151;
    v152 = v177;
    *(v138 + 25) = v179;
    *(v138 + 26) = v152;
    v153 = v176;
    *(v138 + 27) = v76;
    v138[28] = v153;
    v154 = v175;
    *(v138 + 29) = v63;
    v138[30] = v154;
    v138[31] = v77;
    v138[32] = v122;
    *(v138 + 33) = v123;
    v155 = v173;
    *(v138 + 34) = v174;
    *(v138 + 35) = v155;
    v156 = v171;
    *(v138 + 36) = v172;
    *(v138 + 37) = v156;
    v157 = v169;
    *(v138 + 38) = v170;
    *(v138 + 39) = v157;
    v158 = v167;
    *(v138 + 40) = v168;
    *(v138 + 41) = v158;
    v159 = v165;
    *(v138 + 42) = v166;
    *(v138 + 43) = v159;
    v160 = v164;
    *(v138 + 44) = v161;
    *(v138 + 45) = v160;
    v13 = v204;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}