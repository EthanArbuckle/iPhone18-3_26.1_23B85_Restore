unint64_t sub_21CFB6BD4()
{
  result = qword_27CE456B0;
  if (!qword_27CE456B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE456B0);
  }

  return result;
}

unint64_t sub_21CFB6C2C()
{
  result = qword_28121DC20[0];
  if (!qword_28121DC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28121DC20);
  }

  return result;
}

unint64_t sub_21CFB6C84()
{
  result = qword_28121DC10;
  if (!qword_28121DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC10);
  }

  return result;
}

uint64_t sub_21CFB6CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250746E65696C63 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021D02DF20 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021D02DF40 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021D02DF60 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21D022B24();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21CFB6ED8()
{
  v0 = sub_21D0224A4();
  __swift_allocate_value_buffer(v0, qword_27CE456F8);
  __swift_project_value_buffer(v0, qword_27CE456F8);
  return sub_21D022494();
}

uint64_t sub_21CFB6F58(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = qword_28121E0B8;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v71 = xmmword_28121B1B0;
  v72[0] = *&qword_28121B1C0;
  *(v72 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v71, &v69, &qword_27CE45600, &qword_21D0246F8);
  v7 = sub_21D014BC8();
  v9 = v8;
  sub_21CF7F200(&v71, &qword_27CE45600, &qword_21D0246F8);
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69 = a3;
      sub_21CFA3AC4(v7, v9, 0x6C65646F6DLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      a3 = v69;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v12 = sub_21D0224A4();
      __swift_project_value_buffer(v12, qword_27CE456F8);

      v13 = sub_21D022484();
      v14 = sub_21D0228D4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v69 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_21CF9703C(a1, a2, &v69);
        *(v15 + 12) = 2080;
        v17 = sub_21CF9703C(v7, v9, &v69);

        *(v15 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v13, v14, "%s Overriding workload parameters.model=[%s]", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v16, -1, -1);
        MEMORY[0x223D3ADE0](v15, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v69 = xmmword_28121B120;
  v70[0] = *&qword_28121B130;
  *(v70 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v69, &v67, &qword_27CE45600, &qword_21D0246F8);
  v18 = sub_21D014BC8();
  v20 = v19;
  sub_21CF7F200(&v69, &qword_27CE45600, &qword_21D0246F8);
  if (v20)
  {
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = a3;
      sub_21CFA3AC4(v18, v20, 0x72657470616461, 0xE700000000000000, v22);
      a3 = v67;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v23 = sub_21D0224A4();
      __swift_project_value_buffer(v23, qword_27CE456F8);

      v24 = sub_21D022484();
      v25 = sub_21D0228D4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v67 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_21CF9703C(a1, a2, &v67);
        *(v26 + 12) = 2080;
        v28 = sub_21CF9703C(v18, v20, &v67);

        *(v26 + 14) = v28;
        _os_log_impl(&dword_21CF72000, v24, v25, "%s Overriding workload parameters.adapter=[%s]", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v27, -1, -1);
        MEMORY[0x223D3ADE0](v26, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v67 = xmmword_28121B150;
  v68[0] = *&qword_28121B160;
  *(v68 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v67, &v63, &qword_27CE45600, &qword_21D0246F8);
  v29 = sub_21D014BC8();
  v31 = v30;
  sub_21CF7F200(&v67, &qword_27CE45600, &qword_21D0246F8);
  if (v31)
  {
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = a3;
      sub_21CFA3AC4(v29, v31, 0x636E657265666E69, 0xEC00000064692D65, v33);
      a3 = v63;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v34 = sub_21D0224A4();
      __swift_project_value_buffer(v34, qword_27CE456F8);

      v35 = sub_21D022484();
      v36 = sub_21D0228D4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v63 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_21CF9703C(a1, a2, &v63);
        *(v37 + 12) = 2080;
        v39 = sub_21CF9703C(v29, v31, &v63);

        *(v37 + 14) = v39;
        _os_log_impl(&dword_21CF72000, v35, v36, "%s Overriding workload parameters.inference-id=[%s]", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v38, -1, -1);
        MEMORY[0x223D3ADE0](v37, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v65[0] = xmmword_28121B2E0;
  v65[1] = *&qword_28121B2F0;
  v66 = byte_28121B300;
  sub_21CF7F198(v65, &v63, &qword_27CE452D0, &unk_21D023690);
  v40 = sub_21D015100();
  sub_21CF7F200(v65, &qword_27CE452D0, &unk_21D023690);
  if (v40)
  {
    if (*(v40 + 16))
    {

      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_21D0224A4();
      __swift_project_value_buffer(v41, qword_27CE456F8);

      v42 = sub_21D022484();
      v43 = sub_21D0228D4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v63 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_21CF9703C(a1, a2, &v63);
        _os_log_impl(&dword_21CF72000, v42, v43, "%s Overriding workload parameters with user default supplied ones", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x223D3ADE0](v45, -1, -1);
        MEMORY[0x223D3ADE0](v44, -1, -1);
      }

      a3 = v40;
    }

    else
    {
    }
  }

  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v63 = xmmword_28121B1E8;
  v64[0] = *&qword_28121B1F8;
  *(v64 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v63, v62, &qword_27CE45600, &qword_21D0246F8);
  v46 = sub_21D014BC8();
  v48 = v47;
  sub_21CF7F200(&v63, &qword_27CE45600, &qword_21D0246F8);
  if (v48)
  {
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      swift_bridgeObjectRetain_n();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = a3;
      sub_21CFA3AC4(v46, v48, 0x6C65646F6DLL, 0xE500000000000000, v50);
      v51 = v62[0];
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v51;
      sub_21CFA3AC4(v46, v48, 0x72657470616461, 0xE700000000000000, v52);
      v53 = v62[0];
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v53;
      sub_21CFA3AC4(v46, v48, 0x636E657265666E69, 0xEC00000064692D65, v54);
      a3 = v62[0];
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v55 = sub_21D0224A4();
      __swift_project_value_buffer(v55, qword_27CE456F8);

      v56 = sub_21D022484();
      v57 = sub_21D0228D4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62[0] = v59;
        *v58 = 136315906;
        *(v58 + 4) = sub_21CF9703C(a1, a2, v62);
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_21CF9703C(v46, v48, v62);
        *(v58 + 22) = 2080;
        *(v58 + 24) = sub_21CF9703C(v46, v48, v62);
        *(v58 + 32) = 2080;
        v60 = sub_21CF9703C(v46, v48, v62);

        *(v58 + 34) = v60;
        _os_log_impl(&dword_21CF72000, v56, v57, "%s Overriding workload parameters.model=[%s] adapter=[%s] inference-id=[%s]", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v59, -1, -1);
        MEMORY[0x223D3ADE0](v58, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return a3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_21CFB7C70()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7D84()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7E8C()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7F9C()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB80AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45710, &qword_21D0253C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_21D021914();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D021904();
  sub_21D0218F4();
  MEMORY[0x223D393B0](7824750, 0xE300000000000000);
  sub_21CFB82FC();
  sub_21D0218C4();
  sub_21D0218D4();
  v11 = sub_21D0219D4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_21CF7F200(v5, &qword_27CE45710, &qword_21D0253C0);
    sub_21CFBD36C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_21CFB82FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45720, &qword_21D0253C8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v400 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v399 = &v364 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v398 = &v364 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v395 = &v364 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v392 = &v364 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v389 = &v364 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v388 = &v364 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v364 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v364 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v364 - v24;
  v26 = sub_21D021894();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v367 = &v364 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v366 = &v364 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v383 = &v364 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v382 = &v364 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v419 = &v364 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v381 = &v364 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v418 = &v364 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v417 = &v364 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v380 = &v364 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v416 = &v364 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v364 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v396 = &v364 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v415 = &v364 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v379 = &v364 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v414 = &v364 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v413 = &v364 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v378 = &v364 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v412 = &v364 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v411 = &v364 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v377 = &v364 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v410 = &v364 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v409 = &v364 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v376 = &v364 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v408 = &v364 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v394 = &v364 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v393 = &v364 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v420 = &v364 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v375 = &v364 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v407 = &v364 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v406 = &v364 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v374 = &v364 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v405 = &v364 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v404 = &v364 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v373 = &v364 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v403 = &v364 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v391 = &v364 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v390 = &v364 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v402 = &v364 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v372 = &v364 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v401 = &v364 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v371 = &v364 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v370 = &v364 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v369 = &v364 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v368 = &v364 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v387 = &v364 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v386 = &v364 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v385 = &v364 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v384 = &v364 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v127 = &v364 - v126;
  MEMORY[0x28223BE20](v125);
  v129 = &v364 - v128;
  v424 = v27;
  v425 = MEMORY[0x277D84F90];
  v130 = v1[3];
  v421 = v1;
  if (!v130)
  {
    v422 = *(v27 + 56);
    v422(v25, 1, 1, v26);
LABEL_5:
    sub_21CF7F200(v25, &qword_27CE45720, &qword_21D0253C8);
    v134 = v1[6];
    if (!v134)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v131 = v1[1];
  v132 = v1[2];
  v133 = *v1;

  v27 = v424;
  sub_21D021884();
  v422 = *(v27 + 56);
  v422(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v1 = v421;
    goto LABEL_5;
  }

  v423 = *(v27 + 32);
  v423(v129, v25, v26);
  (*(v27 + 16))(v127, v129, v26);
  v167 = sub_21CFB4F18(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = v167[2];
  v168 = v167[3];
  v365 = v20;
  if (v169 >= v168 >> 1)
  {
    v167 = sub_21CFB4F18(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v424;
  v171 = v424 + 8;
  (*(v424 + 8))(v129, v26);
  v167[2] = v169 + 1;
  v172 = v167 + ((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v169;
  v27 = v170;
  v423(v172, v127, v26);
  v425 = v167;
  v1 = v421;
  v20 = v365;
  v134 = v421[6];
  if (v134)
  {
LABEL_6:
    v136 = v1[7];
    v135 = v1[8];
    v426 = *(v1 + 2);
    v427 = v134;
    v428 = v136;
    v429 = v135;
    v137 = sub_21CFBAF30();
    sub_21CFBCBCC(v137);
  }

LABEL_7:
  v138 = v1[9];
  v139 = v1[10];
  v140 = *(v1 + 88);

  sub_21CFBC5C4(v140, v23);

  v423 = *(v27 + 48);
  if (v423(v23, 1, v26) == 1)
  {
    sub_21CF7F200(v23, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v141 = *(v27 + 32);
    v142 = v384;
    v141(v384, v23, v26);
    (*(v27 + 16))(v385, v142, v26);
    v143 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_21CFB4F18(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_21CFB4F18(v144 > 1, v145 + 1, 1, v143);
    }

    (*(v27 + 8))(v384, v26);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v145], v385, v26);
    v425 = v143;
    v1 = v421;
  }

  v146 = v1[12];
  v147 = v1[13];
  v148 = *(v1 + 112);

  sub_21CFBC7B8(v148, v20);

  if (v423(v20, 1, v26) == 1)
  {
    sub_21CF7F200(v20, &qword_27CE45720, &qword_21D0253C8);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v152 = v388;
    v422(v388, 1, 1, v26);
    goto LABEL_29;
  }

  v159 = *(v27 + 32);
  v160 = v386;
  v159(v386, v20, v26);
  (*(v27 + 16))(v387, v160, v26);
  v161 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_21CFB4F18(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_21CFB4F18(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v27 + 8))(v386, v26);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v163], v387, v26);
  v425 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v150 = v1[16];
  v149 = v1[17];
  v151 = v1[15];

  v152 = v388;
  sub_21D021884();
  v422(v152, 0, 1, v26);

  if (v423(v152, 1, v26) != 1)
  {
    v153 = *(v27 + 32);
    v154 = v368;
    v153(v368, v152, v26);
    (*(v27 + 16))(v369, v154, v26);
    v155 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_21CFB4F18(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_21CFB4F18(v156 > 1, v157 + 1, 1, v155);
    }

    (*(v27 + 8))(v368, v26);
    *(v155 + 2) = v157 + 1;
    v153(&v155[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v157], v369, v26);
    v425 = v155;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21CF7F200(v152, &qword_27CE45720, &qword_21D0253C8);
  if (!v1[22])
  {
LABEL_22:
    v158 = v389;
    v422(v389, 1, 1, v26);
LABEL_31:
    sub_21CF7F200(v158, &qword_27CE45720, &qword_21D0253C8);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v158 = v389;
  sub_21D021884();
  v422(v158, 0, 1, v26);

  if (v423(v158, 1, v26) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v27 + 32);
  v174 = v370;
  v173(v370, v158, v26);
  (*(v27 + 16))(v371, v174, v26);
  v175 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_21CFB4F18(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_21CFB4F18(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v27 + 8))(v370, v26);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v177], v371, v26);
  v425 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_21CFBD214(v181);
  if (v182)
  {
    v183 = v372;
    sub_21D021884();

    v184 = *(v27 + 32);
    v185 = v401;
    v184(v401, v183, v26);
    (*(v27 + 16))(v402, v185, v26);
    v186 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_21CFB4F18(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_21CFB4F18(v187 > 1, v188 + 1, 1, v186);
    }

    (*(v27 + 8))(v401, v26);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v188], v402, v26);
    v425 = v186;
  }

  else
  {
  }

  v189 = type metadata accessor for TapToRadarDraft();
  v190 = v1 + v189[11];
  v191 = v392;
  sub_21CFBC910(v392);
  if (v423(v191, 1, v26) == 1)
  {
    sub_21CF7F200(v191, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v192 = *(v27 + 32);
    v193 = v390;
    v192(v390, v191, v26);
    (*(v27 + 16))(v391, v193, v26);
    v194 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_21CFB4F18(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_21CFB4F18(v195 > 1, v196 + 1, 1, v194);
    }

    (*(v27 + 8))(v390, v26);
    *(v194 + 2) = v196 + 1;
    v192(&v194[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v196], v391, v26);
    v425 = v194;
    v1 = v421;
  }

  v197 = (v1 + v189[12]);
  v199 = *v197;
  v198 = v197[1];
  v200 = v197[2];

  sub_21CFBD000(v201);
  if (v202)
  {
    v203 = v373;
    sub_21D021884();

    v204 = *(v27 + 32);
    v205 = v403;
    v204(v403, v203, v26);
    (*(v27 + 16))(v404, v205, v26);
    v206 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_21CFB4F18(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_21CFB4F18(v207 > 1, v208 + 1, 1, v206);
    }

    (*(v27 + 8))(v403, v26);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v208], v404, v26);
    v425 = v206;
    v1 = v421;
  }

  else
  {
  }

  v209 = (v1 + v189[13]);
  v211 = *v209;
  v210 = v209[1];
  v212 = v209[2];

  sub_21CFBD000(v213);
  if (v214)
  {
    v215 = v374;
    sub_21D021884();

    v216 = *(v27 + 32);
    v217 = v405;
    v216(v405, v215, v26);
    (*(v27 + 16))(v406, v217, v26);
    v218 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_21CFB4F18(0, *(v218 + 2) + 1, 1, v218);
    }

    v220 = *(v218 + 2);
    v219 = *(v218 + 3);
    if (v220 >= v219 >> 1)
    {
      v218 = sub_21CFB4F18(v219 > 1, v220 + 1, 1, v218);
    }

    (*(v27 + 8))(v405, v26);
    *(v218 + 2) = v220 + 1;
    v216(&v218[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v220], v406, v26);
    v425 = v218;
    v1 = v421;
  }

  else
  {
  }

  v221 = (v1 + v189[14]);
  v223 = *v221;
  v222 = v221[1];
  v224 = v221[2];

  sub_21CFBCED0(v225);
  if (v226)
  {
    v227 = v375;
    sub_21D021884();

    v228 = *(v27 + 32);
    v229 = v407;
    v228(v407, v227, v26);
    (*(v27 + 16))(v420, v229, v26);
    v230 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_21CFB4F18(0, *(v230 + 2) + 1, 1, v230);
    }

    v232 = *(v230 + 2);
    v231 = *(v230 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_21CFB4F18(v231 > 1, v232 + 1, 1, v230);
    }

    (*(v27 + 8))(v407, v26);
    *(v230 + 2) = v232 + 1;
    v228(&v230[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v232], v420, v26);
    v425 = v230;
    v1 = v421;
  }

  else
  {
  }

  v233 = (v1 + v189[15]);
  v234 = *v233;
  v235 = v233[1];
  *(v233 + 16);

  v236 = v395;
  sub_21D021884();

  v420 = (v27 + 56);
  v422(v236, 0, 1, v26);

  if (v423(v236, 1, v26) == 1)
  {
    sub_21CF7F200(v236, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v237 = *(v27 + 32);
    v238 = v393;
    v237(v393, v236, v26);
    (*(v27 + 16))(v394, v238, v26);
    v239 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_21CFB4F18(0, *(v239 + 2) + 1, 1, v239);
    }

    v241 = *(v239 + 2);
    v240 = *(v239 + 3);
    if (v241 >= v240 >> 1)
    {
      v239 = sub_21CFB4F18(v240 > 1, v241 + 1, 1, v239);
    }

    v242 = v424 + 8;
    (*(v424 + 8))(v393, v26);
    *(v239 + 2) = v241 + 1;
    v237(&v239[((*(v242 + 72) + 32) & ~*(v242 + 72)) + *(v242 + 64) * v241], v394, v26);
    v425 = v239;
  }

  v243 = (v1 + v189[16]);
  v245 = *v243;
  v244 = v243[1];
  v246 = v243[2];

  sub_21CFBCED0(v247);
  if (v248)
  {
    v249 = v376;
    sub_21D021884();

    v250 = v424;
    v251 = *(v424 + 32);
    v252 = v408;
    v251(v408, v249, v26);
    (*(v250 + 16))(v409, v252, v26);
    v253 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = sub_21CFB4F18(0, *(v253 + 2) + 1, 1, v253);
    }

    v255 = *(v253 + 2);
    v254 = *(v253 + 3);
    if (v255 >= v254 >> 1)
    {
      v253 = sub_21CFB4F18(v254 > 1, v255 + 1, 1, v253);
    }

    v256 = v424 + 8;
    (*(v424 + 8))(v408, v26);
    *(v253 + 2) = v255 + 1;
    v251(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v409, v26);
    v425 = v253;
  }

  else
  {
  }

  v257 = (v1 + v189[17]);
  v259 = *v257;
  v258 = v257[1];
  v260 = v257[2];

  sub_21CFBCCF8(v261);
  if (v262)
  {
    v263 = v377;
    sub_21D021884();

    v264 = v424;
    v265 = *(v424 + 32);
    v266 = v410;
    v265(v410, v263, v26);
    (*(v264 + 16))(v411, v266, v26);
    v267 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_21CFB4F18(0, *(v267 + 2) + 1, 1, v267);
    }

    v269 = *(v267 + 2);
    v268 = *(v267 + 3);
    if (v269 >= v268 >> 1)
    {
      v267 = sub_21CFB4F18(v268 > 1, v269 + 1, 1, v267);
    }

    v270 = v424 + 8;
    (*(v424 + 8))(v410, v26);
    *(v267 + 2) = v269 + 1;
    v265(&v267[((*(v270 + 72) + 32) & ~*(v270 + 72)) + *(v270 + 64) * v269], v411, v26);
    v425 = v267;
  }

  else
  {
  }

  v271 = (v1 + v189[18]);
  v273 = *v271;
  v272 = v271[1];
  v274 = v271[2];

  sub_21CFBCED0(v275);
  if (v276)
  {
    v277 = v378;
    sub_21D021884();

    v278 = v424;
    v279 = *(v424 + 32);
    v280 = v412;
    v279(v412, v277, v26);
    (*(v278 + 16))(v413, v280, v26);
    v281 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = sub_21CFB4F18(0, *(v281 + 2) + 1, 1, v281);
    }

    v283 = *(v281 + 2);
    v282 = *(v281 + 3);
    if (v283 >= v282 >> 1)
    {
      v281 = sub_21CFB4F18(v282 > 1, v283 + 1, 1, v281);
    }

    v284 = v424 + 8;
    (*(v424 + 8))(v412, v26);
    *(v281 + 2) = v283 + 1;
    v279(&v281[((*(v284 + 72) + 32) & ~*(v284 + 72)) + *(v284 + 64) * v283], v413, v26);
    v425 = v281;
  }

  else
  {
  }

  v285 = (v1 + v189[19]);
  v287 = *v285;
  v286 = v285[1];
  v288 = v285[2];

  sub_21CFBBA48(v288);
  if (v289)
  {
    v290 = v379;
    sub_21D021884();

    v291 = v424;
    v292 = *(v424 + 32);
    v293 = v414;
    v292(v414, v290, v26);
    (*(v291 + 16))(v415, v293, v26);
    v294 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_21CFB4F18(0, *(v294 + 2) + 1, 1, v294);
    }

    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    if (v296 >= v295 >> 1)
    {
      v294 = sub_21CFB4F18(v295 > 1, v296 + 1, 1, v294);
    }

    v297 = v424 + 8;
    (*(v424 + 8))(v414, v26);
    *(v294 + 2) = v296 + 1;
    v292(&v294[((*(v297 + 72) + 32) & ~*(v297 + 72)) + *(v297 + 64) * v296], v415, v26);
    v425 = v294;
  }

  else
  {
  }

  v298 = (v1 + v189[20]);
  v299 = *v298;
  v300 = v298[1];
  *(v298 + 16);

  v301 = v398;
  sub_21D021884();

  v422(v301, 0, 1, v26);
  v302 = v301;

  if (v423(v301, 1, v26) == 1)
  {
    sub_21CF7F200(v301, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v303 = v424;
    v304 = *(v424 + 32);
    v305 = v396;
    v304(v396, v302, v26);
    (*(v303 + 16))(v397, v305, v26);
    v306 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_21CFB4F18(0, *(v306 + 2) + 1, 1, v306);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_21CFB4F18(v307 > 1, v308 + 1, 1, v306);
    }

    v309 = v424 + 8;
    (*(v424 + 8))(v396, v26);
    *(v306 + 2) = v308 + 1;
    v304(&v306[((*(v309 + 72) + 32) & ~*(v309 + 72)) + *(v309 + 64) * v308], v397, v26);
    v425 = v306;
  }

  v310 = (v1 + v189[21]);
  v312 = *v310;
  v311 = v310[1];
  v313 = *(v310 + 16);

  sub_21CFBC198(v313);
  if (v314)
  {
    v315 = v380;
    sub_21D021884();

    v316 = v424;
    v317 = *(v424 + 32);
    v318 = v416;
    v317(v416, v315, v26);
    (*(v316 + 16))(v417, v318, v26);
    v319 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v319 = sub_21CFB4F18(0, *(v319 + 2) + 1, 1, v319);
    }

    v321 = *(v319 + 2);
    v320 = *(v319 + 3);
    if (v321 >= v320 >> 1)
    {
      v319 = sub_21CFB4F18(v320 > 1, v321 + 1, 1, v319);
    }

    v322 = v424 + 8;
    (*(v424 + 8))(v416, v26);
    *(v319 + 2) = v321 + 1;
    v317(&v319[((*(v322 + 72) + 32) & ~*(v322 + 72)) + *(v322 + 64) * v321], v417, v26);
    v425 = v319;
  }

  else
  {
  }

  v323 = (v1 + v189[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_21CFBCED0(v327);
  if (v328)
  {
    v329 = v381;
    sub_21D021884();

    v330 = v424;
    v331 = *(v424 + 32);
    v332 = v418;
    v331(v418, v329, v26);
    (*(v330 + 16))(v419, v332, v26);
    v333 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_21CFB4F18(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_21CFB4F18(v334 > 1, v335 + 1, 1, v333);
    }

    v336 = v424 + 8;
    (*(v424 + 8))(v418, v26);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v336 + 72) + 32) & ~*(v336 + 72)) + *(v336 + 64) * v335], v419, v26);
    v425 = v333;
  }

  else
  {
  }

  v337 = (v1 + v189[23]);
  if (!v337[3])
  {
    v342 = v399;
    v422(v399, 1, 1, v26);
    v344 = v424;
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v399;
  sub_21D021884();
  v422(v342, 0, 1, v26);

  v343 = v423(v342, 1, v26);
  v344 = v424;
  if (v343 == 1)
  {
LABEL_140:
    sub_21CF7F200(v342, &qword_27CE45720, &qword_21D0253C8);
    goto LABEL_141;
  }

  v345 = *(v424 + 32);
  v346 = v382;
  v345(v382, v342, v26);
  (*(v344 + 16))(v383, v346, v26);
  v347 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_21CFB4F18(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_21CFB4F18(v348 > 1, v349 + 1, 1, v347);
  }

  v344 = v424;
  v350 = v424 + 8;
  (*(v424 + 8))(v382, v26);
  *(v347 + 2) = v349 + 1;
  v345(&v347[((*(v350 + 72) + 32) & ~*(v350 + 72)) + *(v350 + 64) * v349], v383, v26);
  v425 = v347;
LABEL_141:
  v351 = (v421 + v189[24]);
  if (!v351[3])
  {
    v356 = v400;
    v422(v400, 1, 1, v26);
    goto LABEL_149;
  }

  v353 = v351[1];
  v352 = v351[2];
  v354 = *v351;
  v355 = v351[3];

  v356 = v400;
  sub_21D021884();
  v422(v356, 0, 1, v26);

  if (v423(v356, 1, v26) == 1)
  {
LABEL_149:
    sub_21CF7F200(v356, &qword_27CE45720, &qword_21D0253C8);
    return v425;
  }

  v357 = *(v344 + 32);
  v358 = v366;
  v357(v366, v356, v26);
  v359 = v367;
  (*(v344 + 16))(v367, v358, v26);
  v360 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v360 = sub_21CFB4F18(0, *(v360 + 2) + 1, 1, v360);
  }

  v362 = *(v360 + 2);
  v361 = *(v360 + 3);
  if (v362 >= v361 >> 1)
  {
    v360 = sub_21CFB4F18(v361 > 1, v362 + 1, 1, v360);
  }

  (*(v344 + 8))(v358, v26);
  *(v360 + 2) = v362 + 1;
  v357(&v360[((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v362], v359, v26);
  return v360;
}

uint64_t sub_21CFBAD18()
{
  v1[2] = v0;
  v2 = sub_21D0219D4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CFBADD8, 0, 0);
}

uint64_t sub_21CFBADD8()
{
  v1 = v0[2];
  sub_21CFB80AC(v0[5]);
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v0[5];
    v4 = v2;
    v5 = sub_21D0219B4();
    sub_21CF9DC68(MEMORY[0x277D84F90]);
    v6 = sub_21D022524();

    [v4 openSensitiveURL:v5 withOptions:v6];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CFBAF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456D0, &qword_21D0252B0);
  v1 = *(sub_21D021894() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v10 = *v0;
  sub_21D022B04();
  sub_21D021884();

  v5 = v0[1];
  v6 = v0[2];
  sub_21D021884();
  v7 = v0[3];
  v8 = v0[4];
  sub_21D021884();
  return v4;
}

uint64_t sub_21CFBB0AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  sub_21D022614();
  sub_21D022614();
  return sub_21D022C24();
}

uint64_t sub_21CFBB12C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x223D3A6E0](*v0);
  sub_21D022614();

  return sub_21D022614();
}

uint64_t sub_21CFBB19C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  sub_21D022614();
  sub_21D022614();
  return sub_21D022C24();
}

uint64_t sub_21CFBB218(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21D022B24() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21D022B24();
}

unint64_t sub_21CFBB2CC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21CFBB430(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21CFBB2CC(*a1);
  v5 = v4;
  if (v3 == sub_21CFBB2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21D022B24();
  }

  return v8 & 1;
}

uint64_t sub_21CFBB4B8()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21CFBB2CC(v1);
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFBB51C()
{
  sub_21CFBB2CC(*v0);
  sub_21D022614();
}

uint64_t sub_21CFBB570()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21CFBB2CC(v1);
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFBB5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21CFBEA40();
  *a2 = result;
  return result;
}

unint64_t sub_21CFBB600@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21CFBB2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21CFBB640()
{
  *v0;
  *v0;
  *v0;
  sub_21D022614();
}

uint64_t sub_21CFBB744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21CFBEA8C();
  *a2 = result;
  return result;
}

void sub_21CFBB774(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21CFBB858()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_21D022614();
}

uint64_t sub_21CFBB954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21CFBEAD8();
  *a2 = result;
  return result;
}

void sub_21CFBB984(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21CFBBA48(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21CFB4D00(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21CFB4D00((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21CFB4D00((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21CFB4D00((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21CFB4D00((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21CFB4D00((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
            sub_21CFBD40C();
            v1 = sub_21D022564();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21CFB4D00((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021D02DFA0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21CFB4D00((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21CFB4D00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21CFBBF18()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFBBF8C()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

BOOL sub_21CFBC014(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21CFBC044@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21CFBC070@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21CFBC148@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21CFBC158@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21CFBEA08(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21CFBC198(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21D022B24();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21CFBC368()
{
  *v0;
  sub_21D022614();
}

uint64_t sub_21CFBC46C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21CFBEB24();
  *a2 = result;
  return result;
}

void sub_21CFBC49C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021D02D2F0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021D02D310;
    }

    v5 = 0x800000021D02D2B0;
    if (v2 != 3)
    {
      v5 = 0x800000021D02D2D0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_21CFBC56C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_21CFBC5C4@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_21D021884();

    v3 = 0;
  }

  v4 = sub_21D021894();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21CFBC7B8@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_21D021884();

    v3 = 0;
  }

  v4 = sub_21D021894();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21CFBC910@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_21D021A34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
  sub_21CFBD470(v2 + *(v13 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE45730, &qword_21D0253D0);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_21D022584();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_21D021A14();
    v18 = [v15 stringFromDate_];

    sub_21D022594();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_21D021884();

    v14 = 0;
  }

  v21 = sub_21D021894();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_21CFBCBCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_21CFB4F18(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_21D021894();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CFBCCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21CFB4D00((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v17 = sub_21D022564();

  return v17;
}

uint64_t sub_21CFBCED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21CFB4D00((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v9 = sub_21D022564();

  return v9;
}

uint64_t sub_21CFBD000(uint64_t a1)
{
  v24 = sub_21D0219D4();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_21D0219C4();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21CFB4D00(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_21CFB4D00((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v20 = sub_21D022564();

  return v20;
}

uint64_t sub_21CFBD214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_21D022B04();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_21CFB4D00((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v11 = sub_21D022564();

  return v11;
}

unint64_t sub_21CFBD36C()
{
  result = qword_27CE45718;
  if (!qword_27CE45718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45718);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27CE457C0;
  if (!qword_27CE457C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CFBD40C()
{
  result = qword_27CE45728;
  if (!qword_27CE45728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45728);
  }

  return result;
}

uint64_t sub_21CFBD470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CFBD4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CFBD578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21CFBD6FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21CFBD98C()
{
  sub_21CFBDDB0(319, &qword_27CE457D0, &qword_27CE457D8, &qword_21D025420, sub_21CFBDCE4);
  if (v0 <= 0x3F)
  {
    sub_21CFBDD60();
    if (v1 <= 0x3F)
    {
      sub_21CFBDDB0(319, &qword_27CE457F0, &qword_27CE457F8, &qword_21D025428, sub_21CFBDE20);
      if (v2 <= 0x3F)
      {
        sub_21CFBDDB0(319, &qword_27CE45808, &qword_27CE45810, &qword_21D025430, sub_21CFBDE9C);
        if (v3 <= 0x3F)
        {
          sub_21CFBDDB0(319, &qword_27CE45820, &qword_27CE45828, &qword_21D025438, sub_21CFBDF18);
          if (v4 <= 0x3F)
          {
            sub_21CFBDDB0(319, &qword_27CE45838, &qword_27CE45730, &qword_21D0253D0, sub_21CFBDF94);
            if (v5 <= 0x3F)
            {
              sub_21CFBDDB0(319, &qword_27CE45848, &qword_27CE45850, &qword_21D025440, sub_21CFBE010);
              if (v6 <= 0x3F)
              {
                sub_21CFBDDB0(319, &qword_27CE45860, &qword_27CE45638, &qword_21D024740, sub_21CFBE08C);
                if (v7 <= 0x3F)
                {
                  sub_21CFBE184(319, &qword_27CE45870);
                  if (v8 <= 0x3F)
                  {
                    sub_21CFBDDB0(319, &qword_27CE45878, &qword_27CE45880, &qword_21D025448, sub_21CFBE108);
                    if (v9 <= 0x3F)
                    {
                      sub_21CFBE184(319, &qword_27CE45890);
                      if (v10 <= 0x3F)
                      {
                        sub_21CFBE184(319, &qword_27CE45898);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21CFBDCE4()
{
  result = qword_27CE457E0;
  if (!qword_27CE457E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457D8, &qword_21D025420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE457E0);
  }

  return result;
}

void sub_21CFBDD60()
{
  if (!qword_27CE457E8)
  {
    v0 = sub_21D022924();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE457E8);
    }
  }
}

void sub_21CFBDDB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21CFBDE20()
{
  result = qword_27CE45800;
  if (!qword_27CE45800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457F8, &qword_21D025428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45800);
  }

  return result;
}

unint64_t sub_21CFBDE9C()
{
  result = qword_27CE45818;
  if (!qword_27CE45818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45810, &qword_21D025430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45818);
  }

  return result;
}

unint64_t sub_21CFBDF18()
{
  result = qword_27CE45830;
  if (!qword_27CE45830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45828, &qword_21D025438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45830);
  }

  return result;
}

unint64_t sub_21CFBDF94()
{
  result = qword_27CE45840;
  if (!qword_27CE45840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45730, &qword_21D0253D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45840);
  }

  return result;
}

unint64_t sub_21CFBE010()
{
  result = qword_27CE45858;
  if (!qword_27CE45858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45850, &qword_21D025440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45858);
  }

  return result;
}

unint64_t sub_21CFBE08C()
{
  result = qword_27CE45868;
  if (!qword_27CE45868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45868);
  }

  return result;
}

unint64_t sub_21CFBE108()
{
  result = qword_27CE45888;
  if (!qword_27CE45888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45880, &qword_21D025448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45888);
  }

  return result;
}

void sub_21CFBE184(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21CFBE1F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21CFBE284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_21CFBE5F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CFBE640(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_21CFBE69C()
{
  result = qword_27CE458A0;
  if (!qword_27CE458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458A0);
  }

  return result;
}

unint64_t sub_21CFBE6F4()
{
  result = qword_27CE458A8;
  if (!qword_27CE458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458A8);
  }

  return result;
}

unint64_t sub_21CFBE74C()
{
  result = qword_27CE458B0;
  if (!qword_27CE458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458B0);
  }

  return result;
}

unint64_t sub_21CFBE7A4()
{
  result = qword_27CE458B8;
  if (!qword_27CE458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458B8);
  }

  return result;
}

unint64_t sub_21CFBE7F8()
{
  result = qword_27CE458C0;
  if (!qword_27CE458C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458C0);
  }

  return result;
}

unint64_t sub_21CFBE850()
{
  result = qword_27CE458C8;
  if (!qword_27CE458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458C8);
  }

  return result;
}

unint64_t sub_21CFBE8A8()
{
  result = qword_27CE458D0;
  if (!qword_27CE458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458D0);
  }

  return result;
}

unint64_t sub_21CFBE900()
{
  result = qword_27CE458D8;
  if (!qword_27CE458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458D8);
  }

  return result;
}

unint64_t sub_21CFBE958()
{
  result = qword_27CE458E0;
  if (!qword_27CE458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458E0);
  }

  return result;
}

unint64_t sub_21CFBE9B4()
{
  result = qword_27CE458E8;
  if (!qword_27CE458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458E8);
  }

  return result;
}

uint64_t sub_21CFBEA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_21CFBEA40()
{
  v0 = sub_21D022A74();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21CFBEA8C()
{
  v0 = sub_21D022A74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21CFBEAD8()
{
  v0 = sub_21D022A74();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21CFBEB24()
{
  v0 = sub_21D022A74();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

PrivateMLClient::ServerAssetInfo __swiftcall ServerAssetInfo.init(name:version:)(Swift::String name, Swift::String_optional version)
{
  v2->value = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

PrivateMLClient::ServerAssetInfo __swiftcall ServerAssetInfo.init(name:)(Swift::String name)
{
  *v1 = name;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.name = name;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServerEnvironmentInfo.asJSONString()()
{
  v1 = sub_21D0225C4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21D021834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[8];
  v23 = v0[2];
  v24 = v0[3];
  v25 = v0[4];
  v26 = v0[5];
  v21 = *v0;
  v22 = v0[1];
  v6 = sub_21D021874();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v9 = *(v4 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_21D0238C0;
  sub_21D021814();
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  sub_21D022964();
  sub_21D021844();
  sub_21CFBEEC8();
  v11 = sub_21D021854();
  if (v30)
  {
  }

  else
  {
    v15 = v11;
    v16 = v12;
    sub_21D0225B4();
    v17 = sub_21D0225A4();
    v19 = v18;
    sub_21CF8F460(v15, v16);

    if (v19)
    {
      v13 = v17;
    }

    else
    {
      v13 = 32123;
    }

    if (v19)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0xE200000000000000;
    }
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t sub_21CFBEE70()
{
  result = qword_28121E0A8;
  if (!qword_28121E0A8)
  {
    sub_21D021834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121E0A8);
  }

  return result;
}

unint64_t sub_21CFBEEC8()
{
  result = qword_28121D800;
  if (!qword_28121D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D800);
  }

  return result;
}

uint64_t ServerEnvironmentInfo.cloudosVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerEnvironmentInfo.cloudosVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerEnvironmentInfo.baseModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21CFBEFB8(v2, v3);
}

uint64_t sub_21CFBEFB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 ServerEnvironmentInfo.baseModel.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_21CF7D9E8(v1[2], v1[3]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v6;
  return result;
}

uint64_t ServerEnvironmentInfo.adapter.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21CFBEFB8(v2, v3);
}

__n128 ServerEnvironmentInfo.adapter.setter(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  sub_21CF7D9E8(v1[6], v1[7]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v6;
  return result;
}

uint64_t ServerEnvironmentInfo.tokenizer.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21CFBEFB8(v2, v3);
}

__n128 ServerEnvironmentInfo.tokenizer.setter(uint64_t a1)
{
  v3 = v1[12];
  v4 = v1[13];
  sub_21CF7D9E8(v1[10], v1[11]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 6) = v6;
  return result;
}

uint64_t ServerEnvironmentInfo.draftModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21CFBEFB8(v2, v3);
}

__n128 ServerEnvironmentInfo.draftModel.setter(uint64_t a1)
{
  v3 = v1[16];
  v4 = v1[17];
  sub_21CF7D9E8(v1[14], v1[15]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v6;
  return result;
}

uint64_t sub_21CFBF188()
{
  v1 = *v0;
  v2 = 0x56736F64756F6C63;
  v3 = 0x72657470616461;
  v4 = 0x657A696E656B6F74;
  if (v1 != 3)
  {
    v4 = 0x646F4D7466617264;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D65736162;
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

uint64_t sub_21CFBF240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CFC05E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CFBF268(uint64_t a1)
{
  v2 = sub_21CFBF5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFBF2A4(uint64_t a1)
{
  v2 = sub_21CFBF5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerEnvironmentInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE458F0, &qword_21D025B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v38 = v1[3];
  v39 = v10;
  v11 = v1[4];
  v36 = v1[5];
  v37 = v11;
  v12 = v1[6];
  v34 = v1[7];
  v35 = v12;
  v13 = v1[8];
  v32 = v1[9];
  v33 = v13;
  v14 = v1[11];
  v28 = v1[10];
  v29 = v14;
  v15 = v1[13];
  v30 = v1[12];
  v31 = v15;
  v16 = v1[15];
  v24 = v1[14];
  v25 = v16;
  v17 = v1[17];
  v26 = v1[16];
  v27 = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBF5D8();
  sub_21D022C44();
  LOBYTE(v41) = 0;
  v19 = v40;
  sub_21D022AC4();
  if (!v19)
  {
    v21 = v33;
    v20 = v34;
    v22 = v35;
    v41 = v39;
    v42 = v38;
    v43 = v37;
    v44 = v36;
    v45 = 1;
    sub_21CFBEFB8(v39, v38);
    sub_21CFBF62C();
    sub_21D022AD4();
    sub_21CF7D9E8(v41, v42);
    v41 = v22;
    v42 = v20;
    v43 = v21;
    v44 = v32;
    v45 = 2;
    sub_21CFBEFB8(v22, v20);
    sub_21D022AD4();
    sub_21CF7D9E8(v41, v42);
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v45 = 3;
    sub_21CFBEFB8(v28, v29);
    sub_21D022AD4();
    sub_21CF7D9E8(v41, v42);
    v41 = v24;
    v42 = v25;
    v43 = v26;
    v44 = v27;
    v45 = 4;
    sub_21CFBEFB8(v24, v25);
    sub_21D022AD4();
    sub_21CF7D9E8(v41, v42);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21CFBF5D8()
{
  result = qword_28121D818;
  if (!qword_28121D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D818);
  }

  return result;
}

unint64_t sub_21CFBF62C()
{
  result = qword_28121D858;
  if (!qword_28121D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D858);
  }

  return result;
}

uint64_t ServerEnvironmentInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE458F8, &qword_21D025B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21CFBF5D8();
  sub_21D022C34();
  if (v2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    __swift_destroy_boxed_opaque_existential_0(v55);
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = v34;
    v49 = v33;
    v50 = v32;
    v51 = v31;
    v52 = 0uLL;
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    *&v31 = v6;
    LOBYTE(v46) = 0;
    *&v30 = sub_21D022A84();
    *(&v30 + 1) = v13;
    LOBYTE(v35[0]) = 1;
    sub_21CFBFB64();
    sub_21D022A94();
    v29 = v46;
    v34 = v47;
    sub_21CF7D9E8(0, 0);
    LOBYTE(v35[0]) = 2;
    sub_21D022A94();
    v32 = v47;
    v33 = v46;
    sub_21CF7D9E8(0, 0);
    LOBYTE(v35[0]) = 3;
    sub_21D022A94();
    v28 = *(&v46 + 1);
    v14 = v46;
    v15 = v47;
    sub_21CF7D9E8(0, 0);
    v41 = 4;
    sub_21D022A94();
    (*(v31 + 8))(v9, v5);
    v16 = v42;
    v17 = v43;
    *&v31 = v42;
    v18 = v44;
    v27 = v45;
    sub_21CF7D9E8(0, 0);
    v35[0] = v30;
    v35[1] = v29;
    v35[2] = v34;
    v35[3] = v33;
    v36 = v32;
    *&v37 = v14;
    *(&v37 + 1) = v28;
    v38 = v15;
    *&v39 = v16;
    *(&v39 + 1) = v17;
    v19 = v27;
    *&v40 = v18;
    *(&v40 + 1) = v27;
    v20 = v30;
    v21 = v29;
    v22 = v33;
    a2[2] = v34;
    a2[3] = v22;
    *a2 = v20;
    a2[1] = v21;
    v23 = v36;
    v24 = v37;
    v25 = v40;
    v26 = v38;
    a2[7] = v39;
    a2[8] = v25;
    a2[5] = v24;
    a2[6] = v26;
    a2[4] = v23;
    sub_21CFB52D0(v35, &v46);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v46 = v30;
    v47 = v29;
    v48 = v34;
    v49 = v33;
    v50 = v32;
    *&v51 = v14;
    *(&v51 + 1) = v28;
    v52 = v15;
    *&v53 = v31;
    *(&v53 + 1) = v17;
    *&v54 = v18;
    *(&v54 + 1) = v19;
  }

  return sub_21CFB5258(&v46);
}

unint64_t sub_21CFBFB64()
{
  result = qword_27CE45900;
  if (!qword_27CE45900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45900);
  }

  return result;
}

uint64_t ServerAssetInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerAssetInfo.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21CFBFC48()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_21CFBFC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21D022B24() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21D022B24();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21CFBFD64(uint64_t a1)
{
  v2 = sub_21CFBFF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFBFDA0(uint64_t a1)
{
  v2 = sub_21CFBFF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45908, &qword_21D025B20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBFF70();
  sub_21D022C44();
  v16 = 0;
  v12 = v14[3];
  sub_21D022AE4();
  if (!v12)
  {
    v15 = 1;
    sub_21D022AC4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21CFBFF70()
{
  result = qword_28121D870;
  if (!qword_28121D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D870);
  }

  return result;
}

uint64_t ServerAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45910, &qword_21D025B28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBFF70();
  sub_21D022C34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_21D022AA4();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_21D022A84();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t get_enum_tag_for_layout_string_15PrivateMLClient15ServerAssetInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21CFC0238(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CFC0294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21CFC031C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CFC0364(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CFC03D8()
{
  result = qword_27CE45918;
  if (!qword_27CE45918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45918);
  }

  return result;
}

unint64_t sub_21CFC0430()
{
  result = qword_27CE45920;
  if (!qword_27CE45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45920);
  }

  return result;
}

unint64_t sub_21CFC0488()
{
  result = qword_28121D860;
  if (!qword_28121D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D860);
  }

  return result;
}

unint64_t sub_21CFC04E0()
{
  result = qword_28121D868;
  if (!qword_28121D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D868);
  }

  return result;
}

unint64_t sub_21CFC0538()
{
  result = qword_28121D808;
  if (!qword_28121D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D808);
  }

  return result;
}

unint64_t sub_21CFC0590()
{
  result = qword_28121D810;
  if (!qword_28121D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D810);
  }

  return result;
}

uint64_t sub_21CFC05E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56736F64756F6C63 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D65736162 && a2 == 0xE90000000000006CLL || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657470616461 && a2 == 0xE700000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696E656B6F74 && a2 == 0xE900000000000072 || (sub_21D022B24() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F4D7466617264 && a2 == 0xEA00000000006C65)
  {

    return 4;
  }

  else
  {
    v6 = sub_21D022B24();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServerPromptInfo.asJSONString()()
{
  v1 = v0;
  v2 = sub_21D0225C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26[1] = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21D021834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *v0;
  v29 = *(v0 + 24);
  v28 = *(v0 + 32);
  v9 = sub_21D021874();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21D0238C0;
  sub_21D021814();
  v30 = v14;
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  v27 = *(v1 + 8);
  sub_21D022964();
  sub_21D021844();
  v30 = v8;
  v31 = v27;
  v32 = v29;
  v33 = v28;
  sub_21CFC0A48();
  v15 = v34;
  v16 = sub_21D021854();
  if (v15)
  {
  }

  else
  {
    v20 = v16;
    v21 = v17;
    sub_21D0225B4();
    v22 = sub_21D0225A4();
    v24 = v23;
    sub_21CF8F460(v20, v21);

    if (v24)
    {
      v18 = v22;
    }

    else
    {
      v18 = 32123;
    }

    if (v24)
    {
      v19 = v24;
    }

    else
    {
      v19 = 0xE200000000000000;
    }
  }

  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

unint64_t sub_21CFC0A48()
{
  result = qword_28121D828;
  if (!qword_28121D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D828);
  }

  return result;
}

PrivateMLClient::ServerPromptInfo::Source_optional __swiftcall ServerPromptInfo.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21D022A74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ServerPromptInfo.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_21CFC0B2C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726576726573;
  }

  else
  {
    v2 = 0x746E65696C63;
  }

  if (*a2)
  {
    v3 = 0x726576726573;
  }

  else
  {
    v3 = 0x746E65696C63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21D022B24();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21CFC0BAC()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFC0C1C()
{
  *v0;
  sub_21D022614();
}

uint64_t sub_21CFC0C70()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFC0CDC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21D022A74();

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

void sub_21CFC0D3C(uint64_t *a1@<X8>)
{
  v2 = 0x746E65696C63;
  if (*v1)
  {
    v2 = 0x726576726573;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t ServerPromptInfo.renderedPrompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerPromptInfo.renderedPrompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerPromptInfo.segments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ServerPromptInfo.tokenIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_21CFC0F84()
{
  v1 = 0x64657265646E6572;
  v2 = 0x7344496E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x73746E656D676573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21CFC1008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CFC1A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CFC103C(uint64_t a1)
{
  v2 = sub_21CFC1338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFC1078(uint64_t a1)
{
  v2 = sub_21CFC1338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerPromptInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45928, &unk_21D025F50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v17 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFC1338();
  sub_21D022C44();
  LOBYTE(v22) = 0;
  v12 = v20;
  sub_21D022AE4();
  if (!v12)
  {
    v13 = v18;
    v14 = v17;
    v22 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    sub_21CFB55CC(&qword_28121B3D0);
    sub_21D022AF4();
    v22 = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45930, &qword_21D025F60);
    sub_21CFC138C(&qword_28121B3C0);
    sub_21D022AF4();
    LOBYTE(v22) = v14;
    v21 = 3;
    sub_21CFC13F8();
    sub_21D022AD4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21CFC1338()
{
  result = qword_28121D850;
  if (!qword_28121D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D850);
  }

  return result;
}

uint64_t sub_21CFC138C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45930, &qword_21D025F60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CFC13F8()
{
  result = qword_28121D838;
  if (!qword_28121D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D838);
  }

  return result;
}

uint64_t ServerPromptInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45938, &qword_21D025F68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFC1338();
  sub_21D022C34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_21D022AA4();
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  v21 = 1;
  sub_21CFB55CC(&qword_27CE45658);
  sub_21D022AB4();
  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45930, &qword_21D025F60);
  v21 = 2;
  sub_21CFC138C(&qword_27CE45940);
  sub_21D022AB4();
  v18 = v22;
  v21 = 3;
  sub_21CFC17DC();
  sub_21D022A94();
  (*(v6 + 8))(v9, v5);
  v14 = v22;
  v16 = v19;
  v15 = v20;
  *a2 = v11;
  *(a2 + 8) = v15;
  v17 = v18;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21CFC17DC()
{
  result = qword_27CE45948;
  if (!qword_27CE45948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45948);
  }

  return result;
}

unint64_t sub_21CFC1834()
{
  result = qword_27CE45950;
  if (!qword_27CE45950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45950);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CFC18CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21CFC1914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CFC198C()
{
  result = qword_27CE45958;
  if (!qword_27CE45958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45958);
  }

  return result;
}

unint64_t sub_21CFC19E4()
{
  result = qword_28121D840;
  if (!qword_28121D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D840);
  }

  return result;
}

unint64_t sub_21CFC1A3C()
{
  result = qword_28121D848;
  if (!qword_28121D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D848);
  }

  return result;
}

uint64_t sub_21CFC1A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7344496E656B6F74 && a2 == 0xE800000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21D022B24();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21CFC1BF8()
{
  result = qword_28121D830;
  if (!qword_28121D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D830);
  }

  return result;
}

uint64_t sub_21CFC1C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(v7 + v8, v6, &qword_27CE452B0, &qword_21D023670);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_21D000BB8(v6, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  sub_21D021CE4();
  v11 = *(v9 + 20);
  if (qword_28121D278 != -1)
  {
    swift_once();
  }

  *(a1 + v11) = qword_28121D280;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_21CF7F200(v6, &qword_27CE452B0, &qword_21D023670);
  }

  return result;
}

uint64_t sub_21CFC1E18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_21D00E8C4(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_21D000BB8(a1, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v7, &v11[v17], &qword_27CE452B0, &qword_21D023670);
  return swift_endAccess();
}

uint64_t sub_21CFC1F90@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_21CF7F198(v2, &v14 - v6, &qword_27CE452A0, &qword_21D023660);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE452A0, &qword_21D023660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21D000BB8(v7, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    }

    sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  }

  *a1 = xmmword_21D0235C0;
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v11 = &a1[*(v10 + 20)];
  sub_21D021CE4();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_21CFC2150(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_21D00E8C4(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_21D000BB8(a1, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  sub_21CF8F4D4(v7, &v11[v17], &qword_27CE46390, &qword_21D02CB30);
  return swift_endAccess();
}

uint64_t sub_21CFC22C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20));
  v8 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(v7 + v8, v6, &qword_27CE45290, &qword_21D023650);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_21D000BB8(v6, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  }

  sub_21D021CE4();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[9]);
  *v15 = 0;
  v15[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_21CF7F200(v6, &qword_27CE45290, &qword_21D023650);
  }

  return result;
}

uint64_t sub_21CFC247C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_21D00E8C4(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_21D000BB8(a1, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF8F4D4(v7, &v11[v17], &qword_27CE45290, &qword_21D023650);
  return swift_endAccess();
}

uint64_t sub_21CFC2624(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F488();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2680@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  sub_21D021CE4();
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a1[v2[8]];
  *v7 = 0;
  v7[4] = 1;
  v8 = &a1[v2[9]];
  *v8 = 0;
  v8[4] = 1;
  v9 = &a1[v2[10]];
  *v9 = 0;
  v9[4] = 1;
  v10 = &a1[v2[11]];
  *v10 = 0;
  v10[4] = 1;
  v11 = &a1[v2[12]];
  *v11 = 0;
  v11[4] = 1;
  v12 = &a1[v2[13]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &a1[v2[14]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &a1[v2[15]];
  *v14 = 0;
  v14[8] = 1;
  v15 = &a1[v2[16]];
  *v15 = 0;
  v15[4] = 1;
  v16 = &a1[v2[17]];
  *v16 = 0;
  v16[4] = 1;
  a1[v2[18]] = 2;
  v17 = &a1[v2[19]];
  *v17 = 0;
  v17[4] = 1;
  v18 = v2[20];
  v19 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v20 = *(*(v19 - 8) + 56);

  return v20(&a1[v18], 1, 1, v19);
}

uint64_t sub_21CFC2860(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0092FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC28B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00BCB0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2920(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00BD04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC296C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_21D00BC48(a1, &v11 - v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
  sub_21D00BC48(a2, &v8[v9], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
  LOBYTE(a2) = sub_21CFF8D14(v8, &v8[v9]);
  sub_21D000B58(&v8[v9], type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  return a2 & 1;
}

uint64_t sub_21CFC2A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D0, &qword_21D02CC70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_21D00BC48(a1, &v11 - v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D00BC48(a2, &v8[v9], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  LOBYTE(a2) = sub_21D004CDC(v8, &v8[v9]);
  sub_21D000B58(&v8[v9], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  return a2 & 1;
}

uint64_t sub_21CFC2B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F008();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F05C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F0B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F104();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2CFC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21D022B24();
  }
}

uint64_t sub_21CFC2D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E0, &qword_21D02CB80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_21D00BC48(a1, &v11 - v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D00BC48(a2, v8 + v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  LOBYTE(a2) = sub_21D009050(v8, (v8 + v9));
  sub_21D000B58(v8 + v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  return a2 & 1;
}

uint64_t sub_21CFC2E2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    return (v7 & 0x2000000000000000) != 0 && v4 == v6;
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_21D0035E0(v4, v5, v6, v7);
  }
}

uint64_t sub_21CFC2E68@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_21CFC2EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_21CFC2EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F158();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21CFC2F3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21CFC2F54()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_21CFC2F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_21CFC2F8C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_21CFC2FAC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFC3018(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F1AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC3064()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

BOOL sub_21CFC30CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_21CFC3118()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE537E8);
  __swift_project_value_buffer(v0, qword_27CE537E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SPECULATIVE_DECODING";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SPECULATIVE_STREAMING_DRAFT";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SPECULATIVE_STREAMING_TARGET";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFC33A0()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0) + 20);
      sub_21D021E34();
    }
  }

  return result;
}

uint64_t sub_21CFC3458(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC34D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_21CFC3560(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462E0, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3600(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC366C()
{
  sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);

  return sub_21D021EF4();
}

uint64_t sub_21CFC370C()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0) + 20);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFC3798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFCA484(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, MEMORY[0x277D21860]);
  if (!v4)
  {
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFC3818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_21CFC38A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462F0, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3940(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC39AC()
{
  sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);

  return sub_21D021EF4();
}

uint64_t sub_21CFC3A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462F8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3AF4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE461A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC3B60()
{
  sub_21CFFCB6C(&qword_27CE461A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling);

  return sub_21D021EF4();
}

uint64_t sub_21CFC3BDC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812213B0);
  __swift_project_value_buffer(v0, qword_2812213B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21D026260;
  v4 = v42 + v3;
  v5 = v42 + v3 + v1[14];
  *(v42 + v3) = 1;
  *v5 = "model_name";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "model_adaptor_name";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "model_version";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "model_adaptor_version";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "options";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v41 = *MEMORY[0x277D21870];
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "session_id";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "task_priority";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "tokenizer_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "llm_preprocessing";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "draft_model_name";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "draft_model_version";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "locale";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "image_tokenizer_name";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "image_tokenization_option";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "inference_id";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "tokenizer_version";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "model_adaptor_ref_id";
  *(v37 + 8) = 20;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "image_tokenizer_version";
  *(v39 + 1) = 23;
  v39[16] = 2;
  v8();
  return sub_21D022004();
}

char *sub_21CFC41BC()
{
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  v1 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing];
  *v6 = 0;
  *(v6 + 4) = 256;
  v7 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale] = MEMORY[0x277D84F90];
  v9 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  v12 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion];
  *v15 = 0;
  *(v15 + 1) = 0;
  return v0;
}

uint64_t sub_21CFC4358(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v94 - v8;
  *(v1 + 64) = 0u;
  v95 = (v1 + 64);
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v9 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v96 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  v98 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  v99 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  *v13 = 0;
  v13[1] = 0;
  v14 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  *v14 = 0;
  *(v14 + 8) = 256;
  v15 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
  v100 = v14;
  v101 = v15;
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  v102 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  *v16 = 0;
  v16[1] = 0;
  v103 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  *(v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale) = MEMORY[0x277D84F90];
  v17 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  v104 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v105 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v19 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  v106 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  v107 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  v108 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  v110 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  *v23 = 0;
  v23[1] = 0;
  swift_beginAccess();
  v24 = a1[2];
  v25 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v24;
  *(v1 + 24) = v25;
  swift_beginAccess();
  v26 = a1[4];
  v27 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v26;
  *(v1 + 40) = v27;
  swift_beginAccess();
  v29 = a1[6];
  v28 = a1[7];
  swift_beginAccess();
  v30 = *(v1 + 56);
  *(v1 + 48) = v29;
  *(v1 + 56) = v28;

  swift_beginAccess();
  v32 = a1[8];
  v31 = a1[9];
  v33 = v95;
  swift_beginAccess();
  v34 = *(v1 + 72);
  *v33 = v32;
  *(v1 + 72) = v31;

  v35 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v36 = v97;
  sub_21CF7F198(a1 + v35, v97, &qword_27CE452A8, &qword_21D023668);
  v37 = v96;
  swift_beginAccess();
  sub_21CF8F4D4(v36, v1 + v37, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v38 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = v98;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = v41[8];
  v43 = v99;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  swift_beginAccess();
  v47 = v13[1];
  *v13 = v46;
  v13[1] = v45;

  v48 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v46) = v48[8];
  LOBYTE(v48) = v48[9];
  v50 = v100;
  swift_beginAccess();
  *v50 = v49;
  *(v50 + 8) = v46;
  *(v50 + 9) = v48;
  v51 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = v101;
  swift_beginAccess();
  v55 = v54[1];
  *v54 = v53;
  v54[1] = v52;

  v56 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v102;
  swift_beginAccess();
  v60 = v59[1];
  *v59 = v58;
  v59[1] = v57;

  v61 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = v103;
  swift_beginAccess();
  v64 = *(v1 + v63);
  *(v1 + v63) = v62;

  v65 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v104;
  swift_beginAccess();
  v69 = v68[1];
  *v68 = v67;
  v68[1] = v66;

  v70 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  swift_beginAccess();
  v71 = v109;
  sub_21CF7F198(a1 + v70, v109, &qword_27CE46308, &unk_21D02CAD0);
  v72 = v105;
  swift_beginAccess();
  sub_21CF8F4D4(v71, v1 + v72, &qword_27CE46308, &unk_21D02CAD0);
  swift_endAccess();
  v73 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v106;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v75;
  v76[1] = v74;

  v78 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v107;
  swift_beginAccess();
  v82 = v81[1];
  *v81 = v80;
  v81[1] = v79;

  v83 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];
  v86 = v108;
  swift_beginAccess();
  v87 = v86[1];
  *v86 = v85;
  v86[1] = v84;

  v88 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];

  v91 = v110;
  swift_beginAccess();
  v92 = v91[1];
  *v91 = v90;
  v91[1] = v89;

  return v1;
}

void *sub_21CFC4BD4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options, &qword_27CE452A8, &qword_21D023668);
  v5 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale);

  v9 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName + 8);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption, &qword_27CE46308, &unk_21D02CAD0);
  v10 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion + 8);

  return v0;
}

void sub_21CFC4D3C()
{
  sub_21CFC4EC8(319, qword_28121CE20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21CFC4EC8(319, &qword_27CE459D8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CFC4EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CFC4FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21D021D74();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21CFE16C4();
          break;
        case 2:
          sub_21CFE1748(a2, a1, a3, a4, MEMORY[0x277D217D0]);
          break;
        case 3:
          sub_21CFC52AC();
          break;
        case 4:
          sub_21CFC5330();
          break;
        case 5:
          sub_21CFC53B4();
          break;
        case 6:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
          goto LABEL_24;
        case 7:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
LABEL_24:
          sub_21CFC5490(v16, v17, v18, v19, v20);
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName;
          goto LABEL_5;
        case 9:
          sub_21CFCD6E4(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing, sub_21D0092FC);
          break;
        case 10:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName;
          goto LABEL_5;
        case 11:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion;
          goto LABEL_5;
        case 12:
          sub_21CFCB9EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale);
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName;
          goto LABEL_5;
        case 14:
          sub_21CFC5518();
          break;
        case 15:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID;
          goto LABEL_5;
        case 16:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion;
          goto LABEL_5;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID;
          goto LABEL_5;
        case 18:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion;
LABEL_5:
          sub_21CFC55F4(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFC52AC()
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFC5330()
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFC53B4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFC5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_21D021E64();
  return swift_endAccess();
}

uint64_t sub_21CFC5518()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFC55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFC56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21CFE1D28(a1);
  if (!v4)
  {
    sub_21CFE1DC4(a1);
    sub_21CFC598C(a1);
    sub_21CFC5A28(a1);
    sub_21CFC5AC4(a1, a2, a3, a4);
    sub_21CFC5CEC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID);
    sub_21CFC5CEC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
    sub_21CFCEDCC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing, sub_21D0092FC);
    sub_21CFC5FA4(a1, a2, a3, a4, OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
    v10 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {

      sub_21D021F84();
    }

    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
    sub_21CFC5D7C(a1, a2, a3, a4);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
    return sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  }

  return result;
}

uint64_t sub_21CFC598C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFC5A28(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 72))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);

    sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFC5AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE452A8, &qword_21D023668);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452A8, &qword_21D023668);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
}

uint64_t sub_21CFC5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFC5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE46308, &unk_21D02CAD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE46308, &unk_21D02CAD0);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
}

uint64_t sub_21CFC5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFC6054(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v142 = *(v4 - 8);
  v143 = v4;
  v5 = *(v142 + 64);
  MEMORY[0x28223BE20](v4);
  v139 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46318, &qword_21D02CAE0);
  v7 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v145 = &v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v141 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v144 = &v138 - v13;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v146 = *(v14 - 8);
  v15 = *(v146 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46320, &qword_21D02CAE8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v138 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = (&v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = &v138 - v27;
  swift_beginAccess();
  v147 = a1;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  v148 = a2;
  v31 = a2[3];
  if (v29)
  {
    if (!v31 || (v30 != v148[2] || v29 != v31) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v147;
  swift_beginAccess();
  v33 = *(v32 + 32);
  v34 = *(v32 + 40);
  v35 = v148;
  swift_beginAccess();
  v36 = v35[5];
  if (v34)
  {
    if (!v36 || (v33 != v148[4] || v34 != v36) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v147;
  swift_beginAccess();
  v38 = *(v37 + 48);
  v39 = *(v37 + 56);
  v40 = v148;
  swift_beginAccess();
  v41 = v40[7];
  if (v39)
  {
    if (!v41 || (v38 != v148[6] || v39 != v41) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v147;
  swift_beginAccess();
  v43 = *(v42 + 64);
  v44 = *(v42 + 72);
  v45 = v148;
  swift_beginAccess();
  v46 = v45[9];
  if (!v44)
  {
    if (!v46)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v46 || (v43 != v148[8] || v44 != v46) && (sub_21D022B24() & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v47 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v48 = v147;
  swift_beginAccess();
  sub_21CF7F198(v48 + v47, v28, &qword_27CE452A8, &qword_21D023668);
  v49 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v50 = v148;
  swift_beginAccess();
  v51 = *(v18 + 48);
  sub_21CF7F198(v28, v21, &qword_27CE452A8, &qword_21D023668);
  v138 = v51;
  sub_21CF7F198(v50 + v49, &v21[v51], &qword_27CE452A8, &qword_21D023668);
  v52 = *(v146 + 48);
  if (v52(v21, 1, v14) == 1)
  {

    sub_21CF7F200(v28, &qword_27CE452A8, &qword_21D023668);
    v53 = v50;
    v54 = v48;
    if (v52(&v21[v138], 1, v14) == 1)
    {
      sub_21CF7F200(v21, &qword_27CE452A8, &qword_21D023668);
      goto LABEL_38;
    }

LABEL_34:
    sub_21CF7F200(v21, &qword_27CE46320, &qword_21D02CAE8);
    goto LABEL_35;
  }

  sub_21CF7F198(v21, v26, &qword_27CE452A8, &qword_21D023668);
  v55 = v138;
  if (v52(&v21[v138], 1, v14) == 1)
  {

    sub_21CF7F200(v28, &qword_27CE452A8, &qword_21D023668);
    sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    goto LABEL_34;
  }

  sub_21D000BB8(&v21[v55], v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v54 = v147;

  v57 = v148;

  v58 = sub_21D009738(v26, v17);
  sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21CF7F200(v28, &qword_27CE452A8, &qword_21D023668);
  sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v53 = v57;
  sub_21CF7F200(v21, &qword_27CE452A8, &qword_21D023668);
  if ((v58 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_38:
  v59 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID);
  swift_beginAccess();
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  swift_beginAccess();
  v63 = v62[8];
  if (v61)
  {
    if ((v62[8] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v62[8] & 1) != 0 || v60 != *v62)
  {
    goto LABEL_35;
  }

  v64 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority);
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  v68 = v67[8];
  if (v66)
  {
    if ((v67[8] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v67[8] & 1) != 0 || v65 != *v67)
  {
    goto LABEL_35;
  }

  v69 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  v72 = (v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v73 = v72[1];
  if (v71)
  {
    if (!v73 || (v70 != *v72 || v71 != v73) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v73)
  {
    goto LABEL_35;
  }

  v74 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing);
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 9);
  v77 = v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  swift_beginAccess();
  v78 = v77[9];
  if (v76)
  {
    if ((v77[9] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v77[9])
    {
      goto LABEL_35;
    }

    v84 = *v77;
    if (v77[8])
    {
      if (v84 <= 1)
      {
        if (!v84)
        {
          v54 = v147;
          v53 = v148;
          if (v75)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }

        v85 = v75 == 1;
      }

      else if (v84 == 2)
      {
        v85 = v75 == 2;
      }

      else if (v84 == 3)
      {
        v85 = v75 == 3;
      }

      else
      {
        v85 = v75 == 4;
      }

      v54 = v147;
      v53 = v148;
      if (!v85)
      {
        goto LABEL_35;
      }

      goto LABEL_57;
    }

    if (v75 != v84)
    {
      goto LABEL_35;
    }
  }

LABEL_57:
  v79 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName[0]);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  v82 = (v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName[0]);
  swift_beginAccess();
  v83 = v82[1];
  if (v81)
  {
    if (!v83 || (v80 != *v82 || v81 != v83) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v83)
  {
    goto LABEL_35;
  }

  v86 = (v54 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (v53 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v90 = v89[1];
  if (v88)
  {
    if (!v90 || (v87 != *v89 || v88 != v90) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v90)
  {
    goto LABEL_35;
  }

  v91 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  v92 = *(v54 + v91);
  v93 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  if ((sub_21D0021AC(v92, *(v53 + v93)) & 1) == 0)
  {
    goto LABEL_35;
  }

  v94 = (v147 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  v97 = (v148 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v98 = v97[1];
  if (v96)
  {
    if (!v98 || (v95 != *v97 || v96 != v98) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v98)
  {
    goto LABEL_35;
  }

  v99 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v100 = v147;
  swift_beginAccess();
  v101 = v144;
  sub_21CF7F198(v100 + v99, v144, &qword_27CE46308, &unk_21D02CAD0);
  v102 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v103 = v148;
  swift_beginAccess();
  v104 = *(v140 + 48);
  v105 = v101;
  v106 = v145;
  sub_21CF7F198(v105, v145, &qword_27CE46308, &unk_21D02CAD0);
  sub_21CF7F198(v103 + v102, v106 + v104, &qword_27CE46308, &unk_21D02CAD0);
  v107 = *(v142 + 48);
  if (v107(v106, 1, v143) == 1)
  {
    sub_21CF7F200(v144, &qword_27CE46308, &unk_21D02CAD0);
    if (v107(v145 + v104, 1, v143) == 1)
    {
      sub_21CF7F200(v145, &qword_27CE46308, &unk_21D02CAD0);
      goto LABEL_104;
    }

LABEL_101:
    sub_21CF7F200(v145, &qword_27CE46318, &qword_21D02CAE0);
    goto LABEL_35;
  }

  v108 = v145;
  sub_21CF7F198(v145, v141, &qword_27CE46308, &unk_21D02CAD0);
  if (v107(v108 + v104, 1, v143) == 1)
  {
    sub_21CF7F200(v144, &qword_27CE46308, &unk_21D02CAD0);
    sub_21D000B58(v141, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
    goto LABEL_101;
  }

  v109 = v145;
  v110 = v145 + v104;
  v111 = v139;
  sub_21D000BB8(v110, v139, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  v112 = v141;
  v113 = sub_21D00956C(v141, v111);
  sub_21D000B58(v111, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CF7F200(v144, &qword_27CE46308, &unk_21D02CAD0);
  sub_21D000B58(v112, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CF7F200(v109, &qword_27CE46308, &unk_21D02CAD0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_104:
  v114 = (v147 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  v117 = (v148 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v118 = v117[1];
  if (v116)
  {
    if (!v118 || (v115 != *v117 || v116 != v118) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v118)
  {
    goto LABEL_35;
  }

  v119 = (v147 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v120 = *v119;
  v121 = v119[1];
  v122 = (v148 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v123 = v122[1];
  if (v121)
  {
    if (!v123 || (v120 != *v122 || v121 != v123) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v123)
  {
    goto LABEL_35;
  }

  v124 = (v147 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  v127 = (v148 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v128 = v127[1];
  if (v126)
  {
    if (!v128 || (v125 != *v127 || v126 != v128) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v128)
  {
    goto LABEL_35;
  }

  v129 = (v147 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[1];
  v132 = (v148 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v133 = v132[1];
  if (v131)
  {
    if (v133)
    {
      if (v130 == *v132 && v131 == v133)
      {
        v134 = v132[1];
      }

      else
      {
        v136 = v132[1];
        v137 = sub_21D022B24();

        if ((v137 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

LABEL_35:

    return 0;
  }

  v135 = v132[1];

  if (v133)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_21CFC705C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46300, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC70FC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC7168()
{
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

  return sub_21D021EF4();
}

uint64_t sub_21CFC7228()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53830);
  __swift_project_value_buffer(v0, qword_27CE53830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026270;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_PREPROCESSING";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ON_DEVICE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEPRECATED_ON_SERVER";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "ON_SERVER_TGI";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFC74DC()
{
  result = MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02E850);
  qword_27CE53848 = 0xD000000000000027;
  unk_27CE53850 = 0x800000021D02E640;
  return result;
}

uint64_t sub_21CFC7550()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812213C8);
  __swift_project_value_buffer(v0, qword_2812213C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21D026260;
  v4 = v42 + v3;
  v5 = v42 + v3 + v1[14];
  *(v42 + v3) = 1;
  *v5 = "num_completions";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "temperature";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v41 = *MEMORY[0x277D21870];
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "max_tokens";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "logprobs";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "length_penalty";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "frequency_penalty";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "random_seed";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "DEPRECATED_nucleus_sampling_threshold";
  *(v21 + 1) = 37;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "timeout_secs";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "stop_sequences";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "DEPRECATED_top_k";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "DEPRECATED_arg_max";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 19;
  *v30 = "disable_stop_sequences_check";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "arg_max";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "nucleus_sampling";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "top_k";
  *(v36 + 1) = 5;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "draft_steps";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "constraints";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFC7B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 28);
        goto LABEL_3;
      case 3:
        v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 32);
        goto LABEL_13;
      case 4:
        v18 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 36);
        goto LABEL_3;
      case 5:
        v17 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 40);
        goto LABEL_3;
      case 6:
        v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 44);
        goto LABEL_13;
      case 7:
        v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 48);
LABEL_13:
        v4 = 0;
        sub_21D021DE4();
        continue;
      case 8:
        v19 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 52);
        sub_21D021E64();
        continue;
      case 9:
        v20 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 56);
        goto LABEL_23;
      case 10:
        v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 60);
LABEL_23:
        v4 = 0;
        sub_21D021E34();
        continue;
      case 11:
        sub_21D021E14();
        continue;
      case 12:
        v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 64);
        goto LABEL_3;
      case 13:
        v16 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 68);
        goto LABEL_3;
      case 14:
        sub_21CFC7D94(a1, v5);
        continue;
      case 15:
        sub_21CFC7F7C(v5, a1, a2, a3);
        continue;
      case 16:
        sub_21CFC8544(v5, a1, a2, a3);
        continue;
      case 17:
        v21 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 76);
LABEL_3:
        v4 = 0;
        sub_21D021E54();
        break;
      case 18:
        sub_21CFC8B0C();
        break;
      case 19:
        v23 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 72);
        sub_21D021D94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21CFC7D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v17 = 2;
  result = sub_21D021D94();
  if (!v2 && v17 != 2)
  {
    v16 = v17;
    v15 = 0;
    v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
    sub_21CF7F198(a2 + v9, v7, &qword_27CE452B8, &qword_21D023678);
    v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_21CF7F200(v7, &qword_27CE452B8, &qword_21D023678);
    if (v12 != 1)
    {
      v13 = v15;
      result = sub_21D021D84();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    sub_21CF7F200(a2 + v9, &qword_27CE452B8, &qword_21D023678);
    *(a2 + v9) = v16 & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2 + v9, 0, 1, v10);
  }

  return result;
}

uint64_t sub_21CFC7F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46358, &qword_21D02CB18);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_21CF7F198(a1 + v32, v14, &qword_27CE452B8, &qword_21D023678);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE452B8, &qword_21D023678);
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE46358, &qword_21D02CB18);
      v35 = v20;
      v36 = v49;
      sub_21D000BB8(v35, v49, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      sub_21D000BB8(v36, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
  v39 = v52;
  sub_21D021E84();
  if (v39)
  {
    return sub_21CF7F200(v28, &qword_27CE46358, &qword_21D02CB18);
  }

  sub_21CF7F198(v28, v38, &qword_27CE46358, &qword_21D02CB18);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46358, &qword_21D02CB18);
    return sub_21CF7F200(v38, &qword_27CE46358, &qword_21D02CB18);
  }

  else
  {
    v41 = v48;
    sub_21D000BB8(v38, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    if (v33 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46358, &qword_21D02CB18);
    v42 = v47;
    v43 = v45;
    sub_21CF7F200(v47 + v45, &qword_27CE452B8, &qword_21D023678);
    sub_21D000BB8(v41, v42 + v43, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_21CFC8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46360, &qword_21D02CB20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_21CF7F198(a1 + v32, v14, &qword_27CE452B8, &qword_21D023678);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE452B8, &qword_21D023678);
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v28, &qword_27CE46360, &qword_21D02CB20);
      v35 = v20;
      v36 = v49;
      sub_21D000BB8(v35, v49, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      sub_21D000BB8(v36, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
  v39 = v52;
  sub_21D021E84();
  if (v39)
  {
    return sub_21CF7F200(v28, &qword_27CE46360, &qword_21D02CB20);
  }

  sub_21CF7F198(v28, v38, &qword_27CE46360, &qword_21D02CB20);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46360, &qword_21D02CB20);
    return sub_21CF7F200(v38, &qword_27CE46360, &qword_21D02CB20);
  }

  else
  {
    v41 = v48;
    sub_21D000BB8(v38, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    if (v33 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46360, &qword_21D02CB20);
    v42 = v47;
    v43 = v45;
    sub_21CF7F200(v47 + v45, &qword_27CE452B8, &qword_21D023678);
    sub_21D000BB8(v41, v42 + v43, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_21CFC8B0C()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 80);
  type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  return sub_21D021E84();
}

uint64_t sub_21CFC8BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  result = sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, 1, MEMORY[0x277D21860]);
  if (!v4)
  {
    sub_21CFC8F64(v3);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, 4, MEMORY[0x277D21860]);
    sub_21CFC8FDC(v3);
    sub_21CFC9054(v3);
    sub_21CFC90CC(v3);
    sub_21CFC9144(v3);
    sub_21CFC91BC(v3);
    sub_21CFC9234(v3);
    if (*(*v3 + 16))
    {
      sub_21D021F84();
    }

    sub_21CFC92AC(v3);
    sub_21CFC9324(v3);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
    sub_21CF7F198(v3 + *(v13 + 20), v11, &qword_27CE452B8, &qword_21D023678);
    v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_21CFC9508(v3, a1, a2, a3);
        }

        else
        {
          sub_21CFC974C(v3, a1, a2, a3);
        }

        sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      }

      else
      {
        sub_21CFC939C(v3);
      }
    }

    sub_21CFC9990(v3);
    sub_21CFC9A08(v3, a1, a2, a3);
    sub_21CFC9C24(v3);
    v15 = *(v13 + 24);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFC8F64(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC8FDC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9054(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC90CC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC9144(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFC91BC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC9234(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC92AC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9324(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC939C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v6 + 20), v5, &qword_27CE452B8, &qword_21D023678);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_21CF7F200(v5, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *v5;
    return sub_21D021F34();
  }

  result = sub_21D000B58(v5, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC9508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v13 + 20), v8, &qword_27CE452B8, &qword_21D023678);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v13 + 20), v8, &qword_27CE452B8, &qword_21D023678);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC9990(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v14 + 80), v8, &qword_27CE452D8, "ҷ");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452D8, "ҷ");
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
}

uint64_t sub_21CFC9C24(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t (*sub_21CFC9CCC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_21CFC9D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46350, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC9DC0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC9E2C()
{
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);

  return sub_21D021EF4();
}

uint64_t sub_21CFC9EA8()
{
  result = MEMORY[0x223D3A110](0xD000000000000019, 0x800000021D02E9C0);
  qword_27CE53858 = 0xD000000000000027;
  unk_27CE53860 = 0x800000021D02E640;
  return result;
}

uint64_t sub_21CFC9F1C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53868);
  __swift_project_value_buffer(v0, qword_27CE53868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "resolution_width_in_pixels";
  *(v5 + 8) = 26;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "tokenize_mode";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "num_sub_images_min";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "num_sub_images_max";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "patch_width_in_pixel";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFCA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21D021D74();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v11 = v4;
          v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0) + 20);
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_21CFE4ED0(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, sub_21D00BCB0);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v11 = v4;
            v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0) + 28);
LABEL_5:
            v4 = v11;
            sub_21D021E54();
            break;
          case 4:
            v11 = v4;
            v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0) + 32);
            goto LABEL_5;
          case 5:
            v11 = v4;
            v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0) + 36);
            goto LABEL_5;
        }
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFCA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFCA484(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D21860]);
  if (!v4)
  {
    sub_21CFE5638(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, sub_21D00BCB0);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, 3, MEMORY[0x277D21860]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D21860]);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, 5, MEMORY[0x277D21860]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFCA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 20));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 1, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 28));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 36));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA634@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_21CFCA704(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46368, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFCA7A4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFCA810()
{
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);

  return sub_21D021EF4();
}

uint64_t sub_21CFCA88C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53880);
  __swift_project_value_buffer(v0, qword_27CE53880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAST";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ACCURATE";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFCAAC0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812212D8);
  __swift_project_value_buffer(v0, qword_2812212D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21D026280;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "prompt";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v35 + v3 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "data";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v35 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "model_config";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v8();
  v13 = (v35 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "prompts";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v8();
  v15 = (v35 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "include_perf_metrics";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v8();
  v17 = (v35 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "request_metadata";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v35 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "delimiters";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v8();
  v21 = (v35 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "prompt_template";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v8();
  v23 = v35 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v23 = "attachment";
  *(v23 + 8) = 10;
  *(v23 + 16) = 2;
  v8();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 12;
  *v25 = "streaming_config";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v8();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 13;
  *v27 = "media_header";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v8();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 14;
  *v29 = "media_chunk";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 15;
  *v31 = "streaming_end";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 16;
  *v33 = "mode";
  *(v33 + 1) = 4;
  v33[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFCAFC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

char *sub_21CFCB01C()
{
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xF000000000000000;
  v1 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics] = 2;
  v4 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters] = v3;
  v6 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment] = v3;
  v8 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  v10 = &v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  *v10 = 0;
  *(v10 + 4) = 256;
  return v0;
}

void *sub_21CFCB1C4()
{
  v1 = v0[3];

  sub_21CF94FCC(v0[4], v0[5]);
  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig, &qword_27CE452B0, &qword_21D023670);
  v2 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata, &qword_27CE45290, &qword_21D023650);
  v3 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate, &qword_27CE46390, &qword_21D02CB30);
  v4 = *(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType, &qword_27CE46380, &qword_21D02CB28);
  return v0;
}

uint64_t sub_21CFCB2B4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_21CFCB334()
{
  sub_21CFC4EC8(319, qword_28121CD70, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21CFC4EC8(319, qword_28121C2A0, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21CFC4EC8(319, qword_28121C5F8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_21CFC4EC8(319, &qword_27CE45A38, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_21CFCB5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_21D00E8C4(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_21CFCB6A8(v11, a1, a2, a3);
}

uint64_t sub_21CFCB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21D021D74();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21CFE16C4();
          break;
        case 3:
          sub_21CFE1748(a2, a1, a3, a4, MEMORY[0x277D21760]);
          break;
        case 4:
          sub_21CFCB910();
          break;
        case 5:
          sub_21CFCB9EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts);
          break;
        case 6:
          sub_21CFCBA74();
          break;
        case 7:
          sub_21CFCBB00();
          break;
        case 8:
          sub_21CFCBBDC();
          break;
        case 9:
          sub_21CFCBCB8();
          break;
        case 10:
          sub_21CFCBD94();
          break;
        case 12:
          sub_21CFCBE70(a1, a2, a3, a4);
          break;
        case 13:
          sub_21CFCC490(a1, a2, a3, a4);
          break;
        case 14:
          sub_21CFCCAAC(a1, a2, a3, a4);
          break;
        case 15:
          sub_21CFCD0C8(a1, a2, a3, a4);
          break;
        case 16:
          sub_21CFCD6E4(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode, sub_21D00BD04);
          break;
        default:
          break;
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFCB910()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCB9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_21D021E14();
  return swift_endAccess();
}

uint64_t sub_21CFCBA74()
{
  swift_beginAccess();
  sub_21D021D94();
  return swift_endAccess();
}

uint64_t sub_21CFCBB00()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCBBDC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
  sub_21D021E74();
  return swift_endAccess();
}

uint64_t sub_21CFCBCB8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCBD94()
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
  sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
  sub_21D021E74();
  return swift_endAccess();
}

uint64_t sub_21CFCBE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46398, &qword_21D02CB38);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v52 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v43 - v29;
  v51 = v6;
  v31 = *(v6 + 56);
  v54 = v5;
  v47 = v31;
  v31(&v43 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v46 = a1;
  sub_21CF7F198(a1 + v32, v16, &qword_27CE46380, &qword_21D02CB28);
  v44 = v18;
  v33 = (*(v18 + 48))(v16, 1, v17);
  v49 = v17;
  if (v33 == 1)
  {
    sub_21CF7F200(v16, &qword_27CE46380, &qword_21D02CB28);
    v34 = v54;
  }

  else
  {
    sub_21D000BB8(v16, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v24, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      v34 = v54;
    }

    else
    {
      sub_21CF7F200(v30, &qword_27CE46398, &qword_21D02CB38);
      v35 = v48;
      sub_21D000BB8(v22, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
      sub_21D000BB8(v35, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
      v34 = v54;
      v47(v30, 0, 1, v54);
    }
  }

  v36 = v52;
  sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
  v37 = v53;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v30, &qword_27CE46398, &qword_21D02CB38);
  }

  sub_21CF7F198(v30, v36, &qword_27CE46398, &qword_21D02CB38);
  if ((*(v51 + 48))(v36, 1, v34) == 1)
  {
    sub_21CF7F200(v30, &qword_27CE46398, &qword_21D02CB38);
    return sub_21CF7F200(v36, &qword_27CE46398, &qword_21D02CB38);
  }

  else
  {
    v39 = v50;
    sub_21D000BB8(v36, v50, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    if (v33 != 1)
    {
      sub_21D021D84();
    }

    v40 = v49;
    sub_21CF7F200(v30, &qword_27CE46398, &qword_21D02CB38);
    v41 = v45;
    sub_21D000BB8(v39, v45, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    swift_storeEnumTagMultiPayload();
    (*(v44 + 56))(v41, 0, 1, v40);
    v42 = v46;
    swift_beginAccess();
    sub_21CF8F4D4(v41, v42 + v32, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCC490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A0, &qword_21D02CB40);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v44 = a1;
  sub_21CF7F198(a1 + v32, v16, &qword_27CE46380, &qword_21D02CB28);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_21CF7F200(v16, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v16, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v24, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v30, &qword_27CE463A0, &qword_21D02CB40);
      v33 = v48;
      sub_21D000BB8(v22, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      sub_21D000BB8(v33, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  v36 = v51;
  sub_21D021E84();
  if (v36)
  {
    return sub_21CF7F200(v30, &qword_27CE463A0, &qword_21D02CB40);
  }

  sub_21CF7F198(v30, v35, &qword_27CE463A0, &qword_21D02CB40);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_21CF7F200(v30, &qword_27CE463A0, &qword_21D02CB40);
    return sub_21CF7F200(v35, &qword_27CE463A0, &qword_21D02CB40);
  }

  else
  {
    v38 = v46;
    sub_21D000BB8(v35, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    if (v45 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v30, &qword_27CE463A0, &qword_21D02CB40);
    v39 = v43;
    sub_21D000BB8(v38, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_21CF8F4D4(v39, v40 + v32, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCCAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A8, &qword_21D02CB48);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v44 = a1;
  sub_21CF7F198(a1 + v32, v16, &qword_27CE46380, &qword_21D02CB28);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_21CF7F200(v16, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v16, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v24, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v30, &qword_27CE463A8, &qword_21D02CB48);
      v33 = v48;
      sub_21D000BB8(v22, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      sub_21D000BB8(v33, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  v36 = v51;
  sub_21D021E84();
  if (v36)
  {
    return sub_21CF7F200(v30, &qword_27CE463A8, &qword_21D02CB48);
  }

  sub_21CF7F198(v30, v35, &qword_27CE463A8, &qword_21D02CB48);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_21CF7F200(v30, &qword_27CE463A8, &qword_21D02CB48);
    return sub_21CF7F200(v35, &qword_27CE463A8, &qword_21D02CB48);
  }

  else
  {
    v38 = v46;
    sub_21D000BB8(v35, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    if (v45 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v30, &qword_27CE463A8, &qword_21D02CB48);
    v39 = v43;
    sub_21D000BB8(v38, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_21CF8F4D4(v39, v40 + v32, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCD0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463B0, &qword_21D02CB50);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v44 = a1;
  sub_21CF7F198(a1 + v32, v16, &qword_27CE46380, &qword_21D02CB28);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_21CF7F200(v16, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v16, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v24, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v30, &qword_27CE463B0, &qword_21D02CB50);
      v33 = v48;
      sub_21D000BB8(v22, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
      sub_21D000BB8(v33, v30, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
  v36 = v51;
  sub_21D021E84();
  if (v36)
  {
    return sub_21CF7F200(v30, &qword_27CE463B0, &qword_21D02CB50);
  }

  sub_21CF7F198(v30, v35, &qword_27CE463B0, &qword_21D02CB50);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_21CF7F200(v30, &qword_27CE463B0, &qword_21D02CB50);
    return sub_21CF7F200(v35, &qword_27CE463B0, &qword_21D02CB50);
  }

  else
  {
    v38 = v46;
    sub_21D000BB8(v35, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    if (v45 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v30, &qword_27CE463B0, &qword_21D02CB50);
    v39 = v43;
    sub_21D000BB8(v38, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_21CF8F4D4(v39, v40 + v32, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCD6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_21D021DA4();
  return swift_endAccess();
}

uint64_t sub_21CFCD7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFCD84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20[-v11];
  result = sub_21CFE1D28(a1);
  if (!v4)
  {
    sub_21CFCDCBC(a1);
    sub_21CFCDD68(a1, a2, a3, a4);
    v14 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
    swift_beginAccess();
    if (*(*(a1 + v14) + 16))
    {

      sub_21D021F84();
    }

    sub_21CFCDF90(a1);
    sub_21CFCE020(a1, a2, a3, a4);
    v15 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
    swift_beginAccess();
    if (*(*(a1 + v15) + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
      sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);

      sub_21D021FD4();
    }

    sub_21CFCE248(a1, a2, a3, a4);
    v16 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
    swift_beginAccess();
    if (*(*(a1 + v16) + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
      sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);

      sub_21D021FD4();
    }

    v17 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
    swift_beginAccess();
    sub_21CF7F198(a1 + v17, v12, &qword_27CE46380, &qword_21D02CB28);
    v18 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
    if ((*(*(v18 - 8) + 48))(v12, 1, v18) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_21CFCE91C(a1, a2, a3, a4);
        }

        else
        {
          sub_21CFCEB74(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_21CFCE6C4(a1, a2, a3, a4);
      }

      else
      {
        sub_21CFCE470(a1, a2, a3, a4);
      }

      sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    }

    return sub_21CFCEDCC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode, sub_21D00BD04);
  }

  return result;
}

uint64_t sub_21CFCDCBC(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 40);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 32);
    sub_21CF8F3E0(v4, v3);
    sub_21D021F54();
    return sub_21CF94FCC(v4, v3);
  }

  return result;
}

uint64_t sub_21CFCDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE452B0, &qword_21D023670);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452B0, &qword_21D023670);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
}

uint64_t sub_21CFCDF90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFCE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE45290, &qword_21D023650);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45290, &qword_21D023650);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
}

uint64_t sub_21CFCE248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  sub_21CF7F198(a1 + v14, v8, &qword_27CE46390, &qword_21D02CB30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE46390, &qword_21D02CB30);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
}

uint64_t sub_21CFCE470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v13, v8, &qword_27CE46380, &qword_21D02CB28);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCE6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v13, v8, &qword_27CE46380, &qword_21D02CB28);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}