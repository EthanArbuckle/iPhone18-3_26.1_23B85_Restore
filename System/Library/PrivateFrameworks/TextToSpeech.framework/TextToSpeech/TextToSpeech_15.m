uint64_t sub_1A9476120(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386818, &qword_1A95871A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9476188()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94761C8()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB38DF78);
  sub_1A937731C(v0, qword_1EB38DF78);
  return sub_1A957BC78();
}

uint64_t SQLiteVoiceBackingStore.__allocating_init(readOnly:)(char a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t SQLiteVoiceBackingStore.init(readOnly:)(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1A94762CC()
{
  result = sub_1A947B63C(v0);
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1A9476300(uint64_t a1)
{
  v3 = v1;
  result = sub_1A957B3D8();
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result, v6);
    v13[2] = a1;
    v13[3] = v3;
    v7 = sub_1A957B398();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7, v10);
    v12 = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 104))(v12, *MEMORY[0x1E69D4F00], v7);
    sub_1A957B388();
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_1A9476474(uint64_t a1)
{
  v2 = sub_1A957B598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  sub_1A957B588();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v7 = v9;
  v9(v28 - v6, v2);
  v10 = v34;
  sub_1A957B3A8();
  if (v10)
  {
  }

  v30 = 0;
  v31 = v8;
  v32 = v7;
  v33 = v2;
  v34 = a1;

  v28[1] = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = v28 - v6;
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  sub_1A937829C(&qword_1EB387A48, &qword_1A9591708);
  v14 = swift_allocObject();
  v29 = xmmword_1A9587160;
  *(v14 + 16) = xmmword_1A9587160;
  if (qword_1EB38DF98 != -1)
  {
    swift_once();
  }

  v15 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  v16 = sub_1A937731C(v15, qword_1EB3A7950);
  *(v14 + 56) = v15;
  *(v14 + 64) = sub_1A93B744C(&qword_1EB386228, &qword_1EB3879E8, &qword_1A95915E0);
  v17 = sub_1A93981E4((v14 + 32));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  sub_1A957B578();

  v32(v13, v33);
  v18 = v30;
  sub_1A957B3A8();
  if (v18)
  {
  }

  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  if (qword_1EB38ECD8 != -1)
  {
    swift_once();
  }

  v24 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  v25 = sub_1A937731C(v24, qword_1EB3A7B20);
  *(v23 + 56) = v24;
  *(v23 + 64) = sub_1A93B744C(&qword_1EB386220, &qword_1EB3879F0, qword_1A95915E8);
  v26 = sub_1A93981E4((v23 + 32));
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  sub_1A957B578();

  v32(v22, v33);
  sub_1A957B3A8();

  sub_1A957B3A8();

  sub_1A957B3A8();

  sub_1A957B3A8();
}

uint64_t sub_1A94769E8(uint64_t a1)
{
  v206 = a1;
  if (qword_1EB389540 != -1)
  {
    swift_once();
  }

  v1 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A937731C(v1, qword_1EB3A7870);
  v2 = sub_1A937829C(&qword_1EB387AA8, &qword_1A9591778);
  v204 = &v197;
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v208 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  v6 = *(v5 - 8);
  v209 = *(v6 + 56);
  v7 = v6 + 56;
  v209(&v197 - v3, 1, 1, v5);
  v8 = sub_1A937829C(&qword_1EB387AB0, &qword_1A9591780);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = *(v1 - 8);
  v12 = *(v11 + 56);
  v212 = v11 + 56;
  v210 = v12;
  v12(&v197 - v9, 1, 1, v1);
  sub_1A957B418();
  sub_1A937B960(&v197 - v9, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v3, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38DFA8 != -1)
  {
    swift_once();
  }

  v13 = sub_1A937731C(v1, qword_1EB3A7968);
  v204 = &v197;
  v14 = v208;
  MEMORY[0x1EEE9AC00](v13, v15);
  v16 = (v209)(&v197 - v3, 1, 1, v5);
  MEMORY[0x1EEE9AC00](v16, v17);
  v210(&v197 - v9, 1, 1, v1);
  sub_1A957B428();
  sub_1A937B960(&v197 - v9, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v3, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB389550 != -1)
  {
    swift_once();
  }

  v18 = sub_1A937731C(v1, qword_1EB3A78A0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v209)(&v197 - v20, 1, 1, v5);
  v207 = v7;
  v22 = v5;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v210(&v197 - v25, 1, 1, v1);
  sub_1A957B428();
  sub_1A937B960(&v197 - v25, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v20, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB389538 != -1)
  {
    swift_once();
  }

  v26 = sub_1A937731C(v1, qword_1EB3A7858);
  v204 = &v197;
  v27 = v208;
  MEMORY[0x1EEE9AC00](v26, v28);
  v29 = v209;
  v205 = v22;
  v30 = (v209)(&v197 - v20, 1, 1, v22);
  MEMORY[0x1EEE9AC00](v30, v31);
  v210(&v197 - v25, 1, 1, v1);
  sub_1A957B428();
  sub_1A937B960(&v197 - v25, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v20, &qword_1EB387AA8, &qword_1A9591778);
  v32 = v205;
  v33 = v27;
  if (qword_1EB38E000 != -1)
  {
    swift_once();
  }

  v34 = sub_1A937731C(v1, qword_1EB3A79F8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = v29(&v197 - v36, 1, 1, v32);
  MEMORY[0x1EEE9AC00](v37, v38);
  v204 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (&v197 - v204);
  v210((&v197 - v204), 1, 1, v1);
  sub_1A957B428();
  sub_1A937B960(v40, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v36, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38DFB8 != -1)
  {
    swift_once();
  }

  v41 = sub_1A937731C(v1, qword_1EB3A7980);
  v203 = &v197;
  MEMORY[0x1EEE9AC00](v41, v42);
  v43 = v205;
  v44 = v1;
  v45 = v209;
  v46 = (v209)(&v197 - v36, 1, 1, v205);
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = (&v197 - v204);
  v210((&v197 - v204), 1, 1, v44);
  sub_1A957B428();
  sub_1A937B960(v48, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v36, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E080 != -1)
  {
    swift_once();
  }

  v49 = sub_1A937731C(v44, qword_1EB3A7AD0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v45(&v197 - v51, 1, 1, v43);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v210(&v197 - v55, 1, 1, v44);
  sub_1A957B428();
  sub_1A937B960(&v197 - v55, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v51, &qword_1EB387AA8, &qword_1A9591778);
  v56 = v44;
  if (qword_1EB38DFD8 != -1)
  {
    swift_once();
  }

  v57 = sub_1A937731C(v44, qword_1EB3A79B0);
  v204 = &v197;
  MEMORY[0x1EEE9AC00](v57, v58);
  v59 = (v209)(&v197 - v51, 1, 1, v205);
  v60 = v211;
  MEMORY[0x1EEE9AC00](v59, v61);
  v62 = v44;
  v63 = v210;
  v210(&v197 - v55, 1, 1, v62);
  sub_1A957B428();
  sub_1A937B960(&v197 - v55, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v51, &qword_1EB387AA8, &qword_1A9591778);
  v64 = v60;
  v65 = v63;
  if (qword_1EB38DFF0 != -1)
  {
    swift_once();
  }

  v66 = sub_1A937731C(v56, qword_1EB3A79E0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = (v209)(&v197 - v69, 1, 1, v205);
  MEMORY[0x1EEE9AC00](v70, v71);
  v202 = v56;
  v65(&v197 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v56);
  sub_1A957B428();
  sub_1A937B960(&v197 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v69, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E018 != -1)
  {
    swift_once();
  }

  v72 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  v73 = sub_1A937731C(v72, qword_1EB3A7A28);
  v203 = &v197;
  MEMORY[0x1EEE9AC00](v73, v74);
  v75 = &v197 - v69;
  v209(&v197 - v69, 1, 1, v205);
  v76 = sub_1A937829C(&qword_1EB387AB8, &qword_1A9591788);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8, v78);
  v204 = v79;
  v80 = (&v197 - v79);
  v81 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  v82 = *(v81 - 8);
  v83 = *(v82 + 56);
  v84 = (v82 + 56);
  v83(v80, 1, 1, v81);
  sub_1A957B438();
  sub_1A937B960(v80, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(v75, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E060 != -1)
  {
    swift_once();
  }

  v85 = sub_1A937731C(v72, qword_1EB3A7AA0);
  v201 = &v197;
  v86 = v208;
  MEMORY[0x1EEE9AC00](v85, v87);
  v198 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = &v197 - v198;
  v89 = v205;
  v90 = v209;
  v91 = (v209)(&v197 - v198, 1, 1, v205);
  v197 = &v197;
  v200 = v77;
  MEMORY[0x1EEE9AC00](v91, v92);
  v93 = (&v197 - v204);
  v94 = (&v197 - v204);
  v199 = v81;
  v203 = v84;
  v204 = v83;
  v83(v94, 1, 1, v81);
  sub_1A957B438();
  sub_1A937B960(v93, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(v88, &qword_1EB387AA8, &qword_1A9591778);
  v95 = v202;
  v96 = v90;
  if (qword_1EB38DFC8 != -1)
  {
    swift_once();
  }

  v201 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  v97 = sub_1A937731C(v201, qword_1EB3A7998);
  MEMORY[0x1EEE9AC00](v97, v98);
  v99 = &v197 - v198;
  v100 = (v90)(&v197 - v198, 1, 1, v89);
  MEMORY[0x1EEE9AC00](v100, v101);
  v103 = &v197 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210(v103, 1, 1, v95);
  sub_1A957B438();
  sub_1A937B960(v103, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(v99, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E020 != -1)
  {
    swift_once();
  }

  v104 = v199;
  v105 = sub_1A937731C(v199, qword_1EB3A7A40);
  v197 = &v197;
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v96(&v197 - v108, 1, 1, v89);
  v110 = v89;
  v111 = v200;
  MEMORY[0x1EEE9AC00](v109, v112);
  v198 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = &v197 - v198;
  (v204)(&v197 - v198, 1, 1, v104);
  sub_1A957B428();
  sub_1A937B960(v113, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(&v197 - v108, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E008 != -1)
  {
    swift_once();
  }

  v114 = sub_1A937731C(v104, qword_1EB3A7A10);
  v197 = &v197;
  MEMORY[0x1EEE9AC00](v114, v115);
  v116 = v110;
  v117 = v110;
  v118 = v209;
  v119 = (v209)(&v197 - v108, 1, 1, v116);
  MEMORY[0x1EEE9AC00](v119, v120);
  v121 = &v197 - v198;
  (v204)(&v197 - v198, 1, 1, v104);
  sub_1A957B428();
  sub_1A937B960(v121, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(&v197 - v108, &qword_1EB387AA8, &qword_1A9591778);
  v122 = v202;
  if (qword_1EB38E030 != -1)
  {
    swift_once();
  }

  v123 = sub_1A937731C(v122, qword_1EB3A7A58);
  MEMORY[0x1EEE9AC00](v123, v124);
  v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v118(&v197 - v126, 1, 1, v117);
  MEMORY[0x1EEE9AC00](v127, v128);
  v198 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = &v197 - v198;
  v210(&v197 - v198, 1, 1, v122);
  sub_1A957B428();
  sub_1A937B960(v130, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v126, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB389548 != -1)
  {
    swift_once();
  }

  v131 = sub_1A937731C(v122, qword_1EB3A7888);
  v197 = &v197;
  v132 = v208;
  MEMORY[0x1EEE9AC00](v131, v133);
  v134 = v205;
  v135 = v209;
  v136 = (v209)(&v197 - v126, 1, 1, v205);
  MEMORY[0x1EEE9AC00](v136, v137);
  v138 = &v197 - v198;
  v210(&v197 - v198, 1, 1, v122);
  sub_1A957B428();
  sub_1A937B960(v138, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v126, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E050 != -1)
  {
    swift_once();
  }

  v139 = sub_1A937731C(v122, qword_1EB3A7A88);
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v135(&v197 - v141, 1, 1, v134);
  MEMORY[0x1EEE9AC00](v142, v143);
  v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF0;
  v210(&v197 - v145, 1, 1, v122);
  sub_1A957B428();
  sub_1A937B960(&v197 - v145, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v141, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38E070 != -1)
  {
    swift_once();
  }

  v146 = sub_1A937731C(v201, qword_1EB3A7AB8);
  MEMORY[0x1EEE9AC00](v146, v147);
  v148 = v205;
  v149 = (v209)(&v197 - v141, 1, 1, v205);
  MEMORY[0x1EEE9AC00](v149, v150);
  v210(&v197 - v145, 1, 1, v122);
  sub_1A957B438();
  sub_1A937B960(&v197 - v145, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v141, &qword_1EB387AA8, &qword_1A9591778);
  v151 = v148;
  if (qword_1EB38DFE8 != -1)
  {
    swift_once();
  }

  v152 = sub_1A937731C(v122, qword_1EB3A79C8);
  MEMORY[0x1EEE9AC00](v152, v153);
  v154 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = (v209)(&v197 - v154, 1, 1, v151);
  MEMORY[0x1EEE9AC00](v155, v156);
  v158 = &v197 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210(v158, 1, 1, v122);
  sub_1A957B428();
  sub_1A937B960(v158, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v154, &qword_1EB387AA8, &qword_1A9591778);
  v159 = v151;
  if (qword_1EB38ECD8 != -1)
  {
    swift_once();
  }

  v160 = v199;
  v161 = sub_1A937731C(v199, qword_1EB3A7B20);
  v197 = &v197;
  MEMORY[0x1EEE9AC00](v161, v162);
  v163 = &v197 - v154;
  v164 = &v197 - v154;
  v165 = v209;
  v166 = (v209)(v164, 1, 1, v159);
  v167 = v200;
  MEMORY[0x1EEE9AC00](v166, v168);
  v198 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = &v197 - v198;
  (v204)(&v197 - v198, 1, 1, v160);
  sub_1A957B428();
  sub_1A937B960(v169, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(v163, &qword_1EB387AA8, &qword_1A9591778);
  v170 = v165;
  if (qword_1EB38E040 != -1)
  {
    swift_once();
  }

  v171 = sub_1A937731C(v160, qword_1EB3A7A70);
  v197 = &v197;
  MEMORY[0x1EEE9AC00](v171, v172);
  v173 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = v205;
  v175 = v170(&v197 - v173, 1, 1, v205);
  MEMORY[0x1EEE9AC00](v175, v176);
  v177 = &v197 - v198;
  (v204)(&v197 - v198, 1, 1, v160);
  sub_1A957B428();
  sub_1A937B960(v177, &qword_1EB387AB8, &qword_1A9591788);
  sub_1A937B960(&v197 - v173, &qword_1EB387AA8, &qword_1A9591778);
  if (qword_1EB38DF98 != -1)
  {
    swift_once();
  }

  v178 = sub_1A937731C(v201, qword_1EB3A7950);
  v203 = &v197;
  MEMORY[0x1EEE9AC00](v178, v179);
  v180 = v209;
  v181 = (v209)(&v197 - v173, 1, 1, v174);
  v182 = v211;
  MEMORY[0x1EEE9AC00](v181, v183);
  v204 = ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = (&v197 - v204);
  v185 = v202;
  v186 = v210;
  v210((&v197 - v204), 1, 1, v202);
  sub_1A957B438();
  sub_1A937B960(v184, &qword_1EB387AB0, &qword_1A9591780);
  sub_1A937B960(&v197 - v173, &qword_1EB387AA8, &qword_1A9591778);
  v187 = v205;
  v188 = v180;
  if (qword_1EB38E090 != -1)
  {
    swift_once();
  }

  v189 = sub_1A937731C(v201, qword_1EB3A7AE8);
  MEMORY[0x1EEE9AC00](v189, v190);
  v192 = &v197 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v188(v192, 1, 1, v187);
  MEMORY[0x1EEE9AC00](v193, v194);
  v195 = (&v197 - v204);
  v186(&v197 - v204, 1, 1, v185);
  sub_1A957B438();
  sub_1A937B960(v195, &qword_1EB387AB0, &qword_1A9591780);
  return sub_1A937B960(v192, &qword_1EB387AA8, &qword_1A9591778);
}

uint64_t sub_1A94788B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94788D8, v2, 0);
}

uint64_t sub_1A94788D8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  sub_1A947C33C(v2, v2, v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A9478978(void *__src, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  memcpy(v3 + 2, __src, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A94789F0, v2, 0);
}

uint64_t sub_1A94789F0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = swift_task_alloc();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0 + 2;
  sub_1A947E444(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A9478A94(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  v69 = a4;
  v54 = a2;
  v65 = a1;
  v62 = sub_1A957B5B8();
  v60 = *(v62 - 8);
  v5 = v60[8];
  MEMORY[0x1EEE9AC00](v62, v6);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957B598();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = v63[8];
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v57 = &v53 - v14;
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v56 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  v15 = *(v56 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v56, v17);
  v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v22 = &v53 - v19;
  v23 = a3[3];
  v24 = a3[4];
  v53 = a3;
  sub_1A93780F4(a3, v23);
  *&v67[0] = (*(v24 + 8))(v23, v24);
  *(&v67[0] + 1) = v25;
  if (qword_1EB389538 != -1)
  {
    swift_once();
  }

  v26 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A937731C(v26, qword_1EB3A7858);
  sub_1A957B4C8();

  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = &v53 - v19;
  v68 = *v69;
  v67[0] = *v69;
  v30 = qword_1EB38DFA8;

  if (v30 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v26, qword_1EB3A7968);
  sub_1A957B4C8();
  sub_1A948C1C0(&v68);
  sub_1A957B488();
  v31 = *(v15 + 8);
  v32 = v29;
  v33 = v56;
  v31(v32, v56);
  v31(v22, v33);
  v34 = v57;
  v35 = v58;
  v36 = v64;
  sub_1A957B638();
  v31(v20, v33);
  v37 = v63[1];
  v37(v34, v36);
  v38 = v59;
  sub_1A957B648();
  v37(v35, v36);
  v39 = v61;
  sub_1A957B3B8();
  if (v39)
  {
    return (v60[1])(v38, v62);
  }

  (v60[1])(v38, v62);
  v41 = sub_1A957B5C8();
  v61 = *(v41 - 8);
  v62 = v41;
  v42 = *(v61 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v46 = &v53 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = &v53;
  MEMORY[0x1EEE9AC00](v44, v47);
  v49 = &v53 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v50 = v69;
  memcpy(v67, v69, 0x118uLL);
  result = sub_1A94890F0(v69);
  v63 = &v53;
  if ((v51 & 1) != 0 && (memcpy(v66, v50, sizeof(v66)), result = CoreSynthesizer.Voice.hashValue.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    (*(*v54 + 216))(v53, v67, result);
    v52 = v64;
    sub_1A957B668();

    v37(v49, v52);
    sub_1A957B3C8();
    return (*(v61 + 8))(v46, v62);
  }

  return result;
}

uint64_t sub_1A947911C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9479140, v2, 0);
}

uint64_t sub_1A9479140()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v3 = v0[1];
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = sub_1A947D7A8(v2);

  v5 = v0->i64[1];

  return v5(v4);
}

uint64_t sub_1A94791E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = &v20;
  v20 = 0;
  v7 = sub_1A957B398();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v12, *MEMORY[0x1E69D4F00], v7);
  sub_1A957B388();
  result = (*(v8 + 8))(v12, v7);
  if (!v5)
  {
    *a5 = v20;
  }

  return result;
}

uint64_t sub_1A9479344(uint64_t a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  v105 = a5;
  v110 = a4;
  v115 = a1;
  v116 = a2;
  v128 = MEMORY[0x1E69E7CD0];
  v6 = sub_1A957B598();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v111 = v10;
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v114 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  v12 = *(v114 - 8);
  v106 = v12[8];
  MEMORY[0x1EEE9AC00](v114, v13);
  v15 = &v100 - v14;
  v16 = a3[3];
  v17 = a3[4];
  v120 = a3;
  sub_1A93780F4(a3, v16);
  v123 = (*(v17 + 8))(v16, v17);
  v124 = v18;
  if (qword_1EB389538 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v122 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
    v103 = sub_1A937731C(v122, qword_1EB3A7858);
    sub_1A957B4C8();

    v126[3] = v6;
    v126[4] = MEMORY[0x1E69D4F08];
    sub_1A93981E4(v126);
    sub_1A957B658();
    v107 = v12[1];
    v108 = v12 + 1;
    v107(v15, v114);
    v20 = *(v7 + 8);
    v7 += 8;
    v19 = v20;
    v20(v11, v6);
    v21 = v121;
    v22 = sub_1A957B3E8();
    v109 = v6;
    v112 = v20;
    v113 = v7;
    if (v21)
    {

      v23 = sub_1A9378138(v126);
      v25 = 0;
    }

    else
    {
      v104 = 0;
      v26 = v22;
      sub_1A9378138(v126);

      v27 = sub_1A957D048();
      v102 = v26;

      v28 = sub_1A937829C(&qword_1EB387A38, &unk_1A95916E0);
      v101 = &v100;
      v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v28 - 8, v30);
      v32 = &v100 - v31;
      v121 = v27;
      sub_1A957D138();
      v15 = sub_1A957B548();
      v33 = *(v15 - 1);
      v119 = *(v33 + 48);
      v34 = (v119)(v32, 1, v15);
      if (v34 != 1)
      {
        v117 = *(v33 + 32);
        v118 = (v33 + 32);
        v95 = *(v33 + 64);
        do
        {
          MEMORY[0x1EEE9AC00](v34, v35);
          (v117)(&v100 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v15);
          if (qword_1EB389540 != -1)
          {
            swift_once();
          }

          sub_1A937731C(v122, qword_1EB3A7870);
          sub_1A957B558();
          sub_1A93AB260(v126, v123, v124);

          (*(v33 + 8))(&v100 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
          sub_1A957D138();
          v34 = (v119)(v32, 1, v15);
        }

        while (v34 != 1);
      }

      v6 = v109;
      v19 = v112;
      v7 = v113;
      v25 = v104;
    }

    if (!*(v110 + 2))
    {
      v104 = v25;
      v60 = sub_1A957B5B8();
      v117 = &v100;
      v121 = *(v60 - 1);
      v122 = v60;
      v61 = v121[8];
      v63 = MEMORY[0x1EEE9AC00](v60, v62);
      v65 = v6;
      v66 = &v100 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      v119 = &v100;
      v68 = MEMORY[0x1EEE9AC00](v63, v67);
      v70 = &v100 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      v118 = &v100;
      MEMORY[0x1EEE9AC00](v68, v71);
      v73 = &v100 - v72;
      v74 = MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
      v116 = &v100;
      MEMORY[0x1EEE9AC00](v74, v75);
      v77 = &v100 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      v78 = v120[3];
      v79 = v120[4];
      sub_1A93780F4(v120, v78);
      v126[0] = (*(v79 + 8))(v78, v79);
      v126[1] = v80;
      sub_1A957B4C8();

      sub_1A957B638();
      v107(v77, v114);
      v81 = v112;
      v112(v73, v65);
      sub_1A957B648();
      v81(v70, v65);
      v82 = v104;
      sub_1A957B3B8();
      (v121[1])(v66, v122);
      if (!v82)
      {
        *v105 = v128[2];
      }
    }

    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v100 - 2) = v120;
    *(&v100 - 1) = &v128;
    v37 = sub_1A947A1AC(sub_1A948C238, (&v100 - 4), v36);
    v12 = v128;
    v38 = v128[2];
    v121 = v37;
    v39 = v37[2];
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_10;
    }

    v11 = v25;
    *v105 = v41;
    if (!v12[2])
    {
      v83 = v121;
      if (!v121[2])
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v101 = v39;
    v110 = v25;
    v42 = sub_1A957B5B8();
    v117 = &v100;
    v118 = *(v42 - 8);
    v119 = v42;
    v43 = *(v118 + 8);
    v45 = MEMORY[0x1EEE9AC00](v42, v44);
    v105 = (&v100 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    v104 = &v100;
    v48 = MEMORY[0x1EEE9AC00](v45, v47);
    v6 = &v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v103 = &v100;
    MEMORY[0x1EEE9AC00](v48, v50);
    v15 = &v100 - v51;
    v52 = MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
    v102 = &v100;
    MEMORY[0x1EEE9AC00](v52, v53);
    v19 = (&v100 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    v126[0] = v12;
    v55 = qword_1EB389540;

    v7 = v12;
    if (v55 != -1)
    {
      goto LABEL_40;
    }

LABEL_10:
    sub_1A937731C(v122, qword_1EB3A7870);
    sub_1A937829C(&qword_1EB387A78, &qword_1A9591740);
    sub_1A93B744C(&qword_1EB385F70, &qword_1EB387A78, &qword_1A9591740);
    sub_1A957C958();

    v56 = v109;
    sub_1A957B638();
    v107(v19, v114);
    v12 = v7;
    v19 = v112;
    v7 = v113;
    v112(v15, v56);
    v57 = v105;
    sub_1A957B648();
    v58 = v6;
    v6 = v56;
    v19(v58, v56);
    v59 = v110;
    sub_1A957B3B8();
    v11 = v59;
    if (v59)
    {
      (*(v118 + 1))(v57, v119);
    }

    (*(v118 + 1))(v57, v119);
    v83 = v121;
    v39 = v101;
    if (!v121[2])
    {
LABEL_29:
    }

LABEL_15:
    v114 = sub_1A957B5C8();
    v108 = *(v114 - 8);
    v84 = v108[8];
    v86 = MEMORY[0x1EEE9AC00](v114, v85);
    v107 = (&v100 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    v106 = &v100;
    MEMORY[0x1EEE9AC00](v86, v88);
    v111 = &v100 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
    v117 = &v100;
    if (!v39)
    {

      v96 = v6;
      goto LABEL_33;
    }

    v105 = v12;
    v110 = v11;
    v127 = MEMORY[0x1E69E7CC0];
    v15 = v39;
    sub_1A9489B98(0, v39, 0);
    v6 = v127;
    v90 = (*v116 + 216);
    v122 = *v90;
    v119 = v90;
    if (v83[2])
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v11 = 0;
  v118 = (v39 - 1);
  v7 = 32;
  v15 = &unk_1A9591748;
  while (1)
  {
    memcpy(v126, v83 + v7, sizeof(v126));
    v91 = v126[35];
    memcpy(v125, v83 + v7, sizeof(v125));
    sub_1A9391BAC(v126, &v123, &qword_1EB387A80, &unk_1A9591748);
    v92 = v122(v120, v125, v91);
    sub_1A937B960(v126, &qword_1EB387A80, &unk_1A9591748);
    v127 = v6;
    v94 = *(v6 + 2);
    v93 = *(v6 + 3);
    v12 = (v94 + 1);
    if (v94 >= v93 >> 1)
    {
      sub_1A9489B98((v93 > 1), v94 + 1, 1);
      v6 = v127;
    }

    *(v6 + 2) = v12;
    *&v6[8 * v94 + 32] = v92;
    if (v118 == v11)
    {
      break;
    }

    ++v11;
    v83 = v121;
    v7 += 288;
    if (v11 >= v121[2])
    {
      goto LABEL_37;
    }
  }

  v96 = v109;
  v11 = v110;
  v19 = v112;
LABEL_33:
  v97 = v107;
  v98 = v111;
  sub_1A957B5F8();

  v19(v98, v96);
  sub_1A957B3C8();
  if (v11)
  {
    (v108[1])(v97, v114);
  }

  (v108[1])(v97, v114);
}

void *sub_1A947A1AC(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; i += 280)
  {
    memcpy(v17, i, 0x118uLL);
    memcpy(v16, i, sizeof(v16));
    sub_1A937B3DC(v17, v14);
    a1(__src, v16);
    if (v3)
    {
      break;
    }

    memcpy(v13, v16, sizeof(v13));
    sub_1A937B48C(v13);
    memcpy(v14, __src, sizeof(v14));
    if (sub_1A932D058(v14) == 1)
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_1A937B960(__dst, &qword_1EB387A98, &qword_1A9591768);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A948961C(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1A948961C((v8 > 1), v9 + 1, 1, v6);
      }

      memcpy(v11, __dst, sizeof(v11));
      v6[2] = v9 + 1;
      memcpy(&v6[36 * v9 + 4], v11, 0x120uLL);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  memcpy(v14, v16, 0x118uLL);
  sub_1A937B48C(v14);

  return v6;
}

uint64_t sub_1A947A39C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v58[1] = v2;
  v92 = MEMORY[0x1E69E7CC0];
  sub_1A9489BB8(0, v10, 0);
  v11 = v92;
  v12 = -1 << *(a1 + 32);
  v89 = a1 + 56;
  v13 = sub_1A957CE18();
  v71 = v5 + 16;
  v70 = (v5 + 8);
  result = sub_1A957B598();
  v16 = result;
  v17 = 0;
  v18 = *(result - 8);
  v68 = (v18 + 16);
  v67 = (v18 + 8);
  v19 = *(v18 + 64);
  v69 = v18;
  v65 = v18 + 32;
  v59 = a1 + 64;
  v60 = result;
  v72 = a1;
  v62 = v5;
  v61 = v10;
  v66 = v19;
  v64 = v4;
  v63 = v9;
  while (1)
  {
    v77 = v17;
    v21 = *(a1 + 36);
    result = MEMORY[0x1EEE9AC00](result, v15);
    v88 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v13 < 0 || v13 >= v22 << *(a1 + 32))
    {
      break;
    }

    if ((*(v89 + 8 * (v13 >> 6)) & (v22 << v13)) == 0)
    {
      goto LABEL_24;
    }

    v75 = v22 << v13;
    v76 = v13 >> 6;
    v85 = v24;
    v86 = v13;
    v74 = v23;
    v87 = v11;
    v25 = (*(v5 + 16))(v9, *(a1 + 48) + *(v5 + 72) * v13, v4);
    v84 = v58;
    MEMORY[0x1EEE9AC00](v25, v26);
    v27 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = *v68;
    v83 = v58 - v27;
    v29 = v73;
    v28();
    v81 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
    v82 = v58;
    v80 = *(v81 - 8);
    v30 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v32 = MEMORY[0x1EEE9AC00](v81, v31);
    v34 = v58 - v33;
    v79 = v58;
    MEMORY[0x1EEE9AC00](v32, v35);
    v36 = v16;
    v37 = v58 - v27;
    (v28)(v58 - v27, v29, v36);
    if (qword_1EB38E050 != -1)
    {
      swift_once();
    }

    v38 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
    v39 = sub_1A937731C(v38, qword_1EB3A7A88);
    v78 = v58;
    v40 = *(v38 - 8);
    v41 = *(v40 + 64);
    MEMORY[0x1EEE9AC00](v39, v42);
    v44 = v58 - v43;
    sub_1A957B678();
    v45 = *v67;
    (*v67)(v37, v36);
    v90 = 24357;
    v91 = 0xE200000000000000;
    v46 = sub_1A957B148();
    MEMORY[0x1AC585140](v46);

    MEMORY[0x1AC585140](9567, 0xE200000000000000);
    sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
    sub_1A957B468();

    (*(v40 + 8))(v44, v38);
    v47 = v88;
    v48 = v83;
    sub_1A957B658();
    (*(v80 + 8))(v34, v81);
    v45(v48, v36);
    v9 = v63;
    v4 = v64;
    (*v70)(v63, v64);
    v11 = v87;
    v92 = v87;
    v50 = *(v87 + 16);
    v49 = *(v87 + 24);
    v16 = v36;
    if (v50 >= v49 >> 1)
    {
      sub_1A9489BB8(v49 > 1, v50 + 1, 1);
      v16 = v60;
      v11 = v92;
    }

    *(v11 + 16) = v50 + 1;
    (*(v69 + 32))(v11 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50, v47, v16);
    result = v86;
    a1 = v72;
    v13 = 1 << *(v72 + 32);
    v19 = v66;
    if (v86 >= v13)
    {
      goto LABEL_25;
    }

    v51 = *(v89 + 8 * v76);
    if ((v51 & v75) == 0)
    {
      goto LABEL_26;
    }

    v15 = v74;
    if (v74 != *(v72 + 36))
    {
      goto LABEL_27;
    }

    v52 = v51 & (-2 << (v86 & 0x3F));
    if (v52)
    {
      v13 = __clz(__rbit64(v52)) | v86 & 0x7FFFFFFFFFFFFFC0;
      v20 = v61;
    }

    else
    {
      v53 = v76 << 6;
      v54 = v76 + 1;
      v55 = (v59 + 8 * v76);
      v20 = v61;
      while (v54 < (v13 + 63) >> 6)
      {
        v57 = *v55++;
        v56 = v57;
        v53 += 64;
        ++v54;
        if (v57)
        {
          result = sub_1A932D0A4(v86, v74, 0);
          v13 = __clz(__rbit64(v56)) + v53;
          goto LABEL_21;
        }
      }

      result = sub_1A932D0A4(v86, v74, 0);
LABEL_21:
      v16 = v60;
    }

    v17 = v77 + 1;
    v5 = v62;
    if (v77 + 1 == v20)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A947AB40()
{
  v0 = sub_1A957AF08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957AFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9377618(v10, qword_1EB38EC98);
  sub_1A937731C(v6, qword_1EB38EC98);
  sub_1A957AF38();
  v14[0] = 0xD000000000000016;
  v14[1] = 0x80000001A95C3750;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_1A93820F4();
  sub_1A957AFC8();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1A947ADA0()
{
  v0 = sub_1A957AF08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A957AFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A9377618(v10, qword_1EB38ECB8);
  sub_1A937731C(v6, qword_1EB38ECB8);
  if (qword_1EB38EC90 != -1)
  {
    swift_once();
  }

  v13 = sub_1A937731C(v6, qword_1EB38EC98);
  (*(v7 + 16))(v12, v13, v6);
  strcpy(v15, "voicedb.sqlite");
  v15[15] = -18;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_1A93820F4();
  sub_1A957AFC8();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1A947B00C()
{
  v0 = sub_1A957AF08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957AFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9377618(v10, qword_1EB389518);
  sub_1A937731C(v6, qword_1EB389518);
  if (qword_1EB38EC90 != -1)
  {
    swift_once();
  }

  v13 = sub_1A937731C(v6, qword_1EB38EC98);
  (*(v7 + 16))(v12, v13, v6);
  v15[0] = 0xD000000000000012;
  v15[1] = 0x80000001A95C3730;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_1A93820F4();
  sub_1A957AFC8();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1A947B270()
{
  v0 = sub_1A957AF08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957AFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9377618(v10, qword_1EB3894F8);
  sub_1A937731C(v6, qword_1EB3894F8);
  if (qword_1EB38EC90 != -1)
  {
    swift_once();
  }

  v13 = sub_1A937731C(v6, qword_1EB38EC98);
  (*(v7 + 16))(v12, v13, v6);
  v15[0] = 0xD000000000000012;
  v15[1] = 0x80000001A95C3710;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_1A93820F4();
  sub_1A957AFC8();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1A947B4D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A957AFD8();
  v6 = sub_1A937731C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1A947B56C()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_1A947B5A4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_1A947B63C(unsigned __int8 *a1)
{
  v96[23] = *MEMORY[0x1E69E9840];
  v3 = sub_1A957BC88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v84[-v12];
  if ((*(*a1 + 160))(v11))
  {
    v14 = sub_1A957B3A8();

    goto LABEL_51;
  }

  v88 = v1;
  v15 = a1[112];
  v16 = &qword_1EB38E000;
  if (v15 & 1) == 0 && (AXProcessIsAXAssetsd())
  {
    v85 = v15;
    v86 = a1;
    v94 = objc_opt_self();
    v17 = [v94 defaultManager];
    if (qword_1EB38EC90 != -1)
    {
      swift_once();
    }

    v18 = sub_1A957AFD8();
    sub_1A937731C(v18, qword_1EB38EC98);
    sub_1A957AFA8();
    v19 = sub_1A957C0C8();

    v20 = [v17 fileExistsAtPath_];

    if ((v20 & 1) == 0)
    {
      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v21 = sub_1A937731C(v3, qword_1EB38DF78);
      (*(v4 + 16))(v13, v21, v3);
      v22 = sub_1A957BC68();
      v23 = sub_1A957CA58();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1A9324000, v22, v23, "Creating intermediate accessibility directory", v24, 2u);
        MEMORY[0x1AC587CD0](v24, -1, -1);
      }

      (*(v4 + 8))(v13, v3);
      v25 = [v94 defaultManager];
      v26 = sub_1A957AF58();
      v96[0] = 0;
      v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v96];

      if (!v27)
      {
        v81 = v96[0];
        v14 = sub_1A957AEF8();

        swift_willThrow();
        goto LABEL_51;
      }

      v28 = v96[0];
    }

    if (qword_1EB38ECB0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v18, qword_1EB38ECB8);
    v96[17] = sub_1A957AFA8();
    v96[18] = v29;
    if (qword_1EB389510 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v18, qword_1EB389518);
    v96[19] = sub_1A957AFA8();
    v96[20] = v30;
    if (qword_1EB3894F0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v18, qword_1EB3894F8);
    v31 = sub_1A957AFA8();
    v32 = 0;
    v91 = (v4 + 16);
    v90 = (v4 + 8);
    v96[21] = v31;
    v96[22] = v33;
    v93 = *MEMORY[0x1E696A3A0];
    v92 = *MEMORY[0x1E696A3A8];
    *&v34 = 136315138;
    v87 = v34;
    v89 = xmmword_1A9587160;
    while (1)
    {
      v44 = v96[v32 + 17];
      v45 = v96[v32 + 18];

      v46 = [v94 defaultManager];
      v47 = sub_1A957C0C8();
      v48 = [v46 fileExistsAtPath_];

      if (!v48)
      {
        goto LABEL_37;
      }

      v49 = [v94 defaultManager];
      v50 = sub_1A957C0C8();
      v96[0] = 0;
      v51 = [v49 attributesOfItemAtPath:v50 error:v96];

      v52 = v96[0];
      if (v51)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
        v53 = sub_1A957C038();
        v54 = v52;

        if (!*(v53 + 16) || (v55 = sub_1A9489F14(v93), (v56 & 1) == 0))
        {

LABEL_34:
          v64 = [v94 defaultManager];
          v65 = sub_1A957C0C8();
          v96[0] = 0;
          v66 = [v64 removeItemAtPath:v65 error:v96];

          if (v66)
          {
            v67 = v96[0];
          }

          else
          {
            v68 = v96[0];
            v69 = sub_1A957AEF8();

            swift_willThrow();
            v88 = 0;
          }

LABEL_37:
          if (qword_1EB38DF70 != -1)
          {
            swift_once();
          }

          v70 = sub_1A937731C(v3, qword_1EB38DF78);
          (*v91)(v9, v70, v3);

          v71 = sub_1A957BC68();
          v72 = sub_1A957CA58();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v96[0] = v74;
            *v73 = v87;
            *(v73 + 4) = sub_1A937A5C0(v44, v45, v96);
            _os_log_impl(&dword_1A9324000, v71, v72, "Creating voice db file at path %s", v73, 0xCu);
            sub_1A9378138(v74);
            MEMORY[0x1AC587CD0](v74, -1, -1);
            MEMORY[0x1AC587CD0](v73, -1, -1);
          }

          (*v90)(v9, v3);
          v35 = [v94 defaultManager];
          v36 = sub_1A957C0C8();

          sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
          inited = swift_initStackObject();
          *(inited + 16) = v89;
          v38 = v93;
          *(inited + 32) = v93;
          type metadata accessor for FileProtectionType(0);
          *(inited + 64) = v39;
          v40 = v92;
          *(inited + 40) = v92;
          v41 = v38;
          v42 = v40;
          sub_1A948BC00(inited);
          swift_setDeallocating();
          sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
          type metadata accessor for FileAttributeKey(0);
          sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
          v43 = sub_1A957C018();

          [v35 createFileAtPath:v36 contents:0 attributes:v43];

          goto LABEL_22;
        }

        sub_1A937BA14(*(v53 + 56) + 32 * v55, v96);

        type metadata accessor for FileProtectionType(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_34;
        }

        v57 = v95;
        v58 = sub_1A957C0F8();
        v60 = v59;
        if (v58 == sub_1A957C0F8() && v60 == v61)
        {
        }

        else
        {
          v75 = sub_1A957D3E8();

          if ((v75 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v62 = v96[0];

        v63 = sub_1A957AEF8();

        swift_willThrow();
        v88 = 0;
      }

LABEL_22:
      v32 += 2;
      if (v32 == 6)
      {
        swift_arrayDestroy();
        a1 = v86;
        LOBYTE(v15) = v85;
        v16 = &qword_1EB38E000;
        break;
      }
    }
  }

  v14 = sub_1A957B3F8();
  if (v16[406] != -1)
  {
    swift_once();
  }

  v76 = sub_1A957AFD8();
  sub_1A937731C(v76, qword_1EB38ECB8);
  sub_1A957AFA8();
  v77 = v88;
  v78 = sub_1A957B408();
  if (!v77)
  {
    if ((v15 & 1) == 0)
    {
      (*(*a1 + 128))(v78);
    }

    sub_1A957B3D8();
    sub_1A957B378();
    v79 = *(*a1 + 168);

    v79(v80);
    v14 = sub_1A957B3A8();
  }

LABEL_51:
  v82 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1A947C33C(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v159[5] = *MEMORY[0x1E69E9840];
  v8 = sub_1A957BC88();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v141 - v17;
  v19 = (*(*a1 + 160))(v16);
  if (!v19)
  {
    v46 = a1[112];
    v143 = a1;
    LODWORD(v144) = v46;
    if ((v46 & 1) != 0 || (AXProcessIsAXAssetsd() & 1) == 0)
    {
LABEL_48:
      sub_1A957B3F8();
      v110 = v144;
      if (qword_1EB38ECB0 != -1)
      {
        swift_once();
      }

      v111 = sub_1A957AFD8();
      sub_1A937731C(v111, qword_1EB38ECB8);
      sub_1A957AFA8();
      v112 = v153;
      v113 = sub_1A957B408();
      if (!v112)
      {
        if ((v110 & 1) == 0)
        {
          (*(*v143 + 128))(v113);
        }

        sub_1A957B3D8();
        v147 = a2;
        sub_1A957B378();
        v115 = *(*v143 + 168);

        v115(v116);
        v117 = sub_1A957B5B8();
        v154 = &v141;
        v153 = v117;
        v152 = *(v117 - 8);
        v118 = *(v152 + 64);
        MEMORY[0x1EEE9AC00](v117, v119);
        v151 = &v141 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
        v121 = sub_1A957B598();
        v150 = &v141;
        v122 = a4;
        v149 = *(v121 - 8);
        v123 = v149[8];
        v125 = MEMORY[0x1EEE9AC00](v121, v124);
        v127 = &v141 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v148 = &v141;
        MEMORY[0x1EEE9AC00](v125, v128);
        v130 = &v141 - v129;
        MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
        v131 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
        *&v145 = &v141;
        v144 = v131;
        v132 = *(v131 - 8);
        v133 = *(v132 + 64);
        MEMORY[0x1EEE9AC00](v131, v134);
        v136 = &v141 - v135;
        v156 = a3;
        v146 = v122;
        v157 = v122;
        if (qword_1EB389538 != -1)
        {
          swift_once();
        }

        v137 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
        sub_1A937731C(v137, qword_1EB3A7858);
        sub_1A957B4C8();
        sub_1A957B638();
        (*(v132 + 8))(v136, v144);
        v138 = v149[1];
        v138(v130, v121);
        v139 = v151;
        sub_1A957B648();
        v138(v127, v121);
        sub_1A957B3B8();
        (*(v152 + 8))(v139, v153);

        goto LABEL_46;
      }
    }

    else
    {
      v141 = a3;
      v147 = a2;
      v146 = a4;
      v154 = objc_opt_self();
      v47 = [v154 defaultManager];
      if (qword_1EB38EC90 != -1)
      {
        swift_once();
      }

      v48 = sub_1A957AFD8();
      sub_1A937731C(v48, qword_1EB38EC98);
      sub_1A957AFA8();
      v49 = sub_1A957C0C8();

      v50 = [v47 fileExistsAtPath_];

      if (v50)
      {
        goto LABEL_17;
      }

      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v51 = sub_1A937731C(v8, qword_1EB38DF78);
      (v9[2])(v18, v51, v8);
      v52 = sub_1A957BC68();
      v53 = sub_1A957CA58();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1A9324000, v52, v53, "Creating intermediate accessibility directory", v54, 2u);
        MEMORY[0x1AC587CD0](v54, -1, -1);
      }

      (v9[1])(v18, v8);
      v55 = [v154 defaultManager];
      v56 = sub_1A957AF58();
      v156 = 0;
      v57 = [v55 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:&v156];

      if (v57)
      {
        v58 = v156;
LABEL_17:
        if (qword_1EB38ECB0 != -1)
        {
          swift_once();
        }

        sub_1A937731C(v48, qword_1EB38ECB8);
        v158 = sub_1A957AFA8();
        v159[0] = v59;
        v60 = &property descriptor for TTSAXResource.footprint;
        if (qword_1EB389510 != -1)
        {
          swift_once();
        }

        sub_1A937731C(v48, qword_1EB389518);
        v159[1] = sub_1A957AFA8();
        v159[2] = v61;
        if (qword_1EB3894F0 != -1)
        {
          swift_once();
        }

        sub_1A937731C(v48, qword_1EB3894F8);
        v62 = sub_1A957AFA8();
        v63 = 0;
        v150 = (v9 + 2);
        v149 = (v9 + 1);
        v159[3] = v62;
        v159[4] = v64;
        v152 = *MEMORY[0x1E696A3A0];
        v151 = *MEMORY[0x1E696A3A8];
        *&v65 = 136315138;
        v145 = v65;
        v148 = xmmword_1A9587160;
        while (1)
        {
          v76 = v159[v63 - 1];
          v75 = v159[v63];

          v77 = [v154 v60[411]];
          v78 = sub_1A957C0C8();
          v79 = [v77 fileExistsAtPath_];

          if (!v79)
          {
            goto LABEL_39;
          }

          v80 = [v154 v60[411]];
          v81 = sub_1A957C0C8();
          v156 = 0;
          v82 = [v80 attributesOfItemAtPath:v81 error:&v156];

          v83 = v156;
          if (v82)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
            v84 = sub_1A957C038();
            v85 = v83;

            if (!*(v84 + 16) || (v86 = sub_1A9489F14(v152), (v87 & 1) == 0))
            {

LABEL_35:
              v92 = [v154 v60[411]];
              v93 = sub_1A957C0C8();
              v156 = 0;
              v94 = [v92 removeItemAtPath:v93 error:&v156];

              if (v94)
              {
                v95 = v156;
              }

              else
              {
                v98 = v156;
                v99 = sub_1A957AEF8();

                swift_willThrow();
                v153 = 0;
              }

LABEL_39:
              if (qword_1EB38DF70 != -1)
              {
                swift_once();
              }

              v100 = sub_1A937731C(v8, qword_1EB38DF78);
              (*v150)(v14, v100, v8);

              v101 = sub_1A957BC68();
              v102 = sub_1A957CA58();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = v8;
                v105 = v14;
                v106 = v76;
                v107 = swift_slowAlloc();
                v156 = v107;
                *v103 = v145;
                *(v103 + 4) = sub_1A937A5C0(v106, v75, &v156);
                _os_log_impl(&dword_1A9324000, v101, v102, "Creating voice db file at path %s", v103, 0xCu);
                sub_1A9378138(v107);
                v14 = v105;
                v8 = v104;
                v60 = &property descriptor for TTSAXResource.footprint;
                MEMORY[0x1AC587CD0](v107, -1, -1);
                MEMORY[0x1AC587CD0](v103, -1, -1);
              }

              (*v149)(v14, v8);
              v66 = [v154 v60[411]];
              v67 = sub_1A957C0C8();

              sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
              inited = swift_initStackObject();
              *(inited + 16) = v148;
              v69 = v152;
              *(inited + 32) = v152;
              type metadata accessor for FileProtectionType(0);
              *(inited + 64) = v70;
              v71 = v151;
              *(inited + 40) = v151;
              v72 = v69;
              v73 = v71;
              sub_1A948BC00(inited);
              swift_setDeallocating();
              sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
              type metadata accessor for FileAttributeKey(0);
              sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
              v74 = sub_1A957C018();

              [v66 createFileAtPath:v67 contents:0 attributes:v74];

              v60 = &property descriptor for TTSAXResource.footprint;
              goto LABEL_25;
            }

            sub_1A937BA14(*(v84 + 56) + 32 * v86, &v156);

            type metadata accessor for FileProtectionType(0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_35;
            }

            v142 = v155;
            v88 = sub_1A957C0F8();
            v90 = v89;
            if (v88 == sub_1A957C0F8() && v90 == v91)
            {
            }

            else
            {
              v108 = sub_1A957D3E8();

              if ((v108 & 1) == 0)
              {
                goto LABEL_35;
              }
            }
          }

          else
          {
            v96 = v156;

            v97 = sub_1A957AEF8();

            swift_willThrow();
            v153 = 0;
          }

LABEL_25:
          v63 += 2;
          if (v63 == 6)
          {
            swift_arrayDestroy();
            a4 = v146;
            a2 = v147;
            a3 = v141;
            goto LABEL_48;
          }
        }
      }

      v140 = v156;
      sub_1A957AEF8();

      swift_willThrow();
    }

    goto LABEL_55;
  }

  v152 = v19;
  v147 = a2;
  v20 = sub_1A957B5B8();
  v154 = &v141;
  v151 = v20;
  v150 = *(v20 - 8);
  v21 = v150[8];
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = a4;
  v25 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A957B598();
  v149 = &v141;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v148 = &v141;
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v141 - v34;
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v36 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  *&v145 = &v141;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v141 - v40;
  v156 = v42;
  v146 = v24;
  v157 = v24;
  if (qword_1EB389538 != -1)
  {
    swift_once();
  }

  v43 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A937731C(v43, qword_1EB3A7858);
  sub_1A957B4C8();
  sub_1A957B638();
  (*(v37 + 8))(v41, v36);
  v44 = *(v27 + 8);
  v44(v35, v26);
  sub_1A957B648();
  v44(v32, v26);
  v45 = v153;
  sub_1A957B3B8();
  if (v45)
  {
    (v150[1])(v25, v151);

LABEL_55:

    goto LABEL_56;
  }

  (v150[1])(v25, v151);

LABEL_46:

LABEL_56:
  v114 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A947D7A8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v105[23] = *MEMORY[0x1E69E9840];
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v90[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v90[-v15];
  v17 = (*(*v1 + 160))(v14);
  if (v17)
  {
LABEL_2:
    sub_1A9489468(v17, &v104);

    if (!v3)
    {
      result = v104;
    }

    goto LABEL_51;
  }

  v96 = v2;
  v19 = v1[112];
  v20 = &qword_1EB38E000;
  if (v19 & 1) == 0 && (AXProcessIsAXAssetsd())
  {
    v91 = v19;
    v92 = v4;
    v93 = a1;
    v102 = objc_opt_self();
    v21 = [v102 defaultManager];
    if (qword_1EB38EC90 != -1)
    {
      swift_once();
    }

    v22 = sub_1A957AFD8();
    sub_1A937731C(v22, qword_1EB38EC98);
    sub_1A957AFA8();
    v23 = sub_1A957C0C8();

    v24 = [v21 fileExistsAtPath_];

    if ((v24 & 1) == 0)
    {
      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v25 = sub_1A937731C(v6, qword_1EB38DF78);
      (*(v7 + 16))(v16, v25, v6);
      v26 = sub_1A957BC68();
      v27 = sub_1A957CA58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A9324000, v26, v27, "Creating intermediate accessibility directory", v28, 2u);
        MEMORY[0x1AC587CD0](v28, -1, -1);
      }

      (*(v7 + 8))(v16, v6);
      v29 = [v102 defaultManager];
      v30 = sub_1A957AF58();
      v105[0] = 0;
      v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v105];

      if (!v31)
      {
        v88 = v105[0];
        sub_1A957AEF8();

        result = swift_willThrow();
        goto LABEL_51;
      }

      v32 = v105[0];
    }

    if (qword_1EB38ECB0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB38ECB8);
    v105[17] = sub_1A957AFA8();
    v105[18] = v33;
    if (qword_1EB389510 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB389518);
    v105[19] = sub_1A957AFA8();
    v105[20] = v34;
    v35 = &property descriptor for TTSAXResource.footprint;
    if (qword_1EB3894F0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB3894F8);
    v36 = sub_1A957AFA8();
    v37 = 0;
    v99 = (v7 + 16);
    v98 = (v7 + 8);
    v105[21] = v36;
    v105[22] = v38;
    v101 = *MEMORY[0x1E696A3A0];
    v100 = *MEMORY[0x1E696A3A8];
    *&v39 = 136315138;
    v95 = v39;
    v97 = xmmword_1A9587160;
    while (1)
    {
      v50 = v105[v37 + 17];
      v49 = v105[v37 + 18];

      v51 = [v102 v35[411]];
      v52 = sub_1A957C0C8();
      v53 = [v51 fileExistsAtPath_];

      if (!v53)
      {
        goto LABEL_37;
      }

      v54 = [v102 v35[411]];
      v55 = sub_1A957C0C8();
      v105[0] = 0;
      v56 = [v54 attributesOfItemAtPath:v55 error:v105];

      v57 = v105[0];
      if (v56)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
        v58 = sub_1A957C038();
        v59 = v57;

        if (!*(v58 + 16) || (v60 = sub_1A9489F14(v101), (v61 & 1) == 0))
        {

LABEL_33:
          v66 = [v102 v35[411]];
          v67 = sub_1A957C0C8();
          v105[0] = 0;
          v68 = [v66 removeItemAtPath:v67 error:v105];

          if (v68)
          {
            v69 = v105[0];
          }

          else
          {
            v72 = v105[0];
            v73 = sub_1A957AEF8();

            swift_willThrow();
            v96 = 0;
          }

LABEL_37:
          if (qword_1EB38DF70 != -1)
          {
            swift_once();
          }

          v74 = sub_1A937731C(v6, qword_1EB38DF78);
          (*v99)(v12, v74, v6);

          v75 = sub_1A957BC68();
          v76 = sub_1A957CA58();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = v6;
            v79 = v12;
            v80 = v50;
            v81 = swift_slowAlloc();
            v105[0] = v81;
            *v77 = v95;
            *(v77 + 4) = sub_1A937A5C0(v80, v49, v105);
            _os_log_impl(&dword_1A9324000, v75, v76, "Creating voice db file at path %s", v77, 0xCu);
            sub_1A9378138(v81);
            v12 = v79;
            v6 = v78;
            v35 = &property descriptor for TTSAXResource.footprint;
            MEMORY[0x1AC587CD0](v81, -1, -1);
            MEMORY[0x1AC587CD0](v77, -1, -1);
          }

          (*v98)(v12, v6);
          v40 = [v102 v35[411]];
          v41 = sub_1A957C0C8();

          sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
          inited = swift_initStackObject();
          *(inited + 16) = v97;
          v43 = v101;
          *(inited + 32) = v101;
          type metadata accessor for FileProtectionType(0);
          *(inited + 64) = v44;
          v45 = v100;
          *(inited + 40) = v100;
          v46 = v43;
          v47 = v45;
          sub_1A948BC00(inited);
          swift_setDeallocating();
          sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
          type metadata accessor for FileAttributeKey(0);
          sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
          v48 = sub_1A957C018();

          [v40 createFileAtPath:v41 contents:0 attributes:v48];

          v35 = &property descriptor for TTSAXResource.footprint;
          goto LABEL_23;
        }

        sub_1A937BA14(*(v58 + 56) + 32 * v60, v105);

        type metadata accessor for FileProtectionType(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v94 = v103;
        v62 = sub_1A957C0F8();
        v64 = v63;
        if (v62 == sub_1A957C0F8() && v64 == v65)
        {
        }

        else
        {
          v82 = sub_1A957D3E8();

          if ((v82 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v70 = v105[0];

        v71 = sub_1A957AEF8();

        swift_willThrow();
        v96 = 0;
      }

LABEL_23:
      v37 += 2;
      if (v37 == 6)
      {
        swift_arrayDestroy();
        v4 = v92;
        LOBYTE(v19) = v91;
        v20 = &qword_1EB38E000;
        break;
      }
    }
  }

  sub_1A957B3F8();
  if (v20[406] != -1)
  {
    swift_once();
  }

  v83 = sub_1A957AFD8();
  sub_1A937731C(v83, qword_1EB38ECB8);
  sub_1A957AFA8();
  v84 = v96;
  result = sub_1A957B408();
  if (!v84)
  {
    v85 = result;
    if ((v19 & 1) == 0)
    {
      (*(*v4 + 128))(result);
    }

    sub_1A957B3D8();
    v3 = 0;
    sub_1A957B378();
    v86 = *(*v4 + 168);

    v86(v87);
    v17 = v85;
    goto LABEL_2;
  }

LABEL_51:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A947E444(uint64_t a1)
{
  v3 = v1;
  v103[23] = *MEMORY[0x1E69E9840];
  v5 = sub_1A957BC88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v89[-v14];
  v16 = (*(*v1 + 160))(v13);
  if (v16)
  {
LABEL_2:
    sub_1A9489064(v16);

    goto LABEL_49;
  }

  v95 = v2;
  v18 = v1[112];
  v19 = &qword_1EB38E000;
  if (v18 & 1) == 0 && (AXProcessIsAXAssetsd())
  {
    v90 = v18;
    v91 = v3;
    v92 = a1;
    v101 = objc_opt_self();
    v20 = [v101 defaultManager];
    if (qword_1EB38EC90 != -1)
    {
      swift_once();
    }

    v21 = sub_1A957AFD8();
    sub_1A937731C(v21, qword_1EB38EC98);
    sub_1A957AFA8();
    v22 = sub_1A957C0C8();

    v23 = [v20 fileExistsAtPath_];

    if ((v23 & 1) == 0)
    {
      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v24 = sub_1A937731C(v5, qword_1EB38DF78);
      (*(v6 + 16))(v15, v24, v5);
      v25 = sub_1A957BC68();
      v26 = sub_1A957CA58();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1A9324000, v25, v26, "Creating intermediate accessibility directory", v27, 2u);
        MEMORY[0x1AC587CD0](v27, -1, -1);
      }

      (*(v6 + 8))(v15, v5);
      v28 = [v101 defaultManager];
      v29 = sub_1A957AF58();
      v103[0] = 0;
      v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v103];

      if (!v30)
      {
        v88 = v103[0];
        sub_1A957AEF8();

        result = swift_willThrow();
        goto LABEL_49;
      }

      v31 = v103[0];
    }

    if (qword_1EB38ECB0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v21, qword_1EB38ECB8);
    v103[17] = sub_1A957AFA8();
    v103[18] = v32;
    if (qword_1EB389510 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v21, qword_1EB389518);
    v103[19] = sub_1A957AFA8();
    v103[20] = v33;
    v34 = &property descriptor for TTSAXResource.footprint;
    if (qword_1EB3894F0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v21, qword_1EB3894F8);
    v35 = sub_1A957AFA8();
    v36 = 0;
    v98 = (v6 + 16);
    v97 = (v6 + 8);
    v103[21] = v35;
    v103[22] = v37;
    v100 = *MEMORY[0x1E696A3A0];
    v99 = *MEMORY[0x1E696A3A8];
    *&v38 = 136315138;
    v94 = v38;
    v96 = xmmword_1A9587160;
    while (1)
    {
      v49 = v103[v36 + 17];
      v48 = v103[v36 + 18];

      v50 = [v101 v34[411]];
      v51 = sub_1A957C0C8();
      v52 = [v50 fileExistsAtPath_];

      if (!v52)
      {
        goto LABEL_36;
      }

      v53 = [v101 v34[411]];
      v54 = sub_1A957C0C8();
      v103[0] = 0;
      v55 = [v53 attributesOfItemAtPath:v54 error:v103];

      v56 = v103[0];
      if (v55)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
        v57 = sub_1A957C038();
        v58 = v56;

        if (!*(v57 + 16) || (v59 = sub_1A9489F14(v100), (v60 & 1) == 0))
        {

LABEL_32:
          v65 = [v101 v34[411]];
          v66 = sub_1A957C0C8();
          v103[0] = 0;
          v67 = [v65 removeItemAtPath:v66 error:v103];

          if (v67)
          {
            v68 = v103[0];
          }

          else
          {
            v71 = v103[0];
            v72 = sub_1A957AEF8();

            swift_willThrow();
            v95 = 0;
          }

LABEL_36:
          if (qword_1EB38DF70 != -1)
          {
            swift_once();
          }

          v73 = sub_1A937731C(v5, qword_1EB38DF78);
          (*v98)(v11, v73, v5);

          v74 = sub_1A957BC68();
          v75 = sub_1A957CA58();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = v5;
            v78 = v11;
            v79 = v49;
            v80 = swift_slowAlloc();
            v103[0] = v80;
            *v76 = v94;
            *(v76 + 4) = sub_1A937A5C0(v79, v48, v103);
            _os_log_impl(&dword_1A9324000, v74, v75, "Creating voice db file at path %s", v76, 0xCu);
            sub_1A9378138(v80);
            v11 = v78;
            v5 = v77;
            v34 = &property descriptor for TTSAXResource.footprint;
            MEMORY[0x1AC587CD0](v80, -1, -1);
            MEMORY[0x1AC587CD0](v76, -1, -1);
          }

          (*v97)(v11, v5);
          v39 = [v101 v34[411]];
          v40 = sub_1A957C0C8();

          sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
          inited = swift_initStackObject();
          *(inited + 16) = v96;
          v42 = v100;
          *(inited + 32) = v100;
          type metadata accessor for FileProtectionType(0);
          *(inited + 64) = v43;
          v44 = v99;
          *(inited + 40) = v99;
          v45 = v42;
          v46 = v44;
          sub_1A948BC00(inited);
          swift_setDeallocating();
          sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
          type metadata accessor for FileAttributeKey(0);
          sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
          v47 = sub_1A957C018();

          [v39 createFileAtPath:v40 contents:0 attributes:v47];

          v34 = &property descriptor for TTSAXResource.footprint;
          goto LABEL_22;
        }

        sub_1A937BA14(*(v57 + 56) + 32 * v59, v103);

        type metadata accessor for FileProtectionType(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v93 = v102;
        v61 = sub_1A957C0F8();
        v63 = v62;
        if (v61 == sub_1A957C0F8() && v63 == v64)
        {
        }

        else
        {
          v81 = sub_1A957D3E8();

          if ((v81 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v69 = v103[0];

        v70 = sub_1A957AEF8();

        swift_willThrow();
        v95 = 0;
      }

LABEL_22:
      v36 += 2;
      if (v36 == 6)
      {
        swift_arrayDestroy();
        v3 = v91;
        LOBYTE(v18) = v90;
        v19 = &qword_1EB38E000;
        break;
      }
    }
  }

  sub_1A957B3F8();
  if (v19[406] != -1)
  {
    swift_once();
  }

  v82 = sub_1A957AFD8();
  sub_1A937731C(v82, qword_1EB38ECB8);
  sub_1A957AFA8();
  v83 = v95;
  result = sub_1A957B408();
  if (!v83)
  {
    v84 = result;
    if ((v18 & 1) == 0)
    {
      (*(*v3 + 128))(result);
    }

    sub_1A957B3D8();
    sub_1A957B378();
    v86 = *(*v3 + 168);

    v86(v87);
    v16 = v84;
    goto LABEL_2;
  }

LABEL_49:
  v85 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A947F0C8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v105[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v90[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v90[-v15];
  v17 = (*(*v1 + 160))(v14);
  if (v17)
  {
LABEL_2:
    sub_1A9489488(v17, v105);

    if (!v3)
    {
      result = v105[0];
    }

    goto LABEL_51;
  }

  v96 = v2;
  v19 = v1[112];
  v20 = &qword_1EB38E000;
  if (v19 & 1) == 0 && (AXProcessIsAXAssetsd())
  {
    v91 = v19;
    v92 = v4;
    v93 = a1;
    v102 = objc_opt_self();
    v21 = [v102 defaultManager];
    if (qword_1EB38EC90 != -1)
    {
      swift_once();
    }

    v22 = sub_1A957AFD8();
    sub_1A937731C(v22, qword_1EB38EC98);
    sub_1A957AFA8();
    v23 = sub_1A957C0C8();

    v24 = [v21 fileExistsAtPath_];

    if ((v24 & 1) == 0)
    {
      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v25 = sub_1A937731C(v6, qword_1EB38DF78);
      (*(v7 + 16))(v16, v25, v6);
      v26 = sub_1A957BC68();
      v27 = sub_1A957CA58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A9324000, v26, v27, "Creating intermediate accessibility directory", v28, 2u);
        MEMORY[0x1AC587CD0](v28, -1, -1);
      }

      (*(v7 + 8))(v16, v6);
      v29 = [v102 defaultManager];
      v30 = sub_1A957AF58();
      v104[0] = 0;
      v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v104];

      if (!v31)
      {
        v88 = v104[0];
        sub_1A957AEF8();

        result = swift_willThrow();
        goto LABEL_51;
      }

      v32 = v104[0];
    }

    if (qword_1EB38ECB0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB38ECB8);
    v104[17] = sub_1A957AFA8();
    v104[18] = v33;
    if (qword_1EB389510 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB389518);
    v104[19] = sub_1A957AFA8();
    v104[20] = v34;
    v35 = &property descriptor for TTSAXResource.footprint;
    if (qword_1EB3894F0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB3894F8);
    v36 = sub_1A957AFA8();
    v37 = 0;
    v99 = (v7 + 16);
    v98 = (v7 + 8);
    v104[21] = v36;
    v104[22] = v38;
    v101 = *MEMORY[0x1E696A3A0];
    v100 = *MEMORY[0x1E696A3A8];
    *&v39 = 136315138;
    v95 = v39;
    v97 = xmmword_1A9587160;
    while (1)
    {
      v50 = v104[v37 + 17];
      v49 = v104[v37 + 18];

      v51 = [v102 v35[411]];
      v52 = sub_1A957C0C8();
      v53 = [v51 fileExistsAtPath_];

      if (!v53)
      {
        goto LABEL_37;
      }

      v54 = [v102 v35[411]];
      v55 = sub_1A957C0C8();
      v104[0] = 0;
      v56 = [v54 attributesOfItemAtPath:v55 error:v104];

      v57 = v104[0];
      if (v56)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
        v58 = sub_1A957C038();
        v59 = v57;

        if (!*(v58 + 16) || (v60 = sub_1A9489F14(v101), (v61 & 1) == 0))
        {

LABEL_33:
          v66 = [v102 v35[411]];
          v67 = sub_1A957C0C8();
          v104[0] = 0;
          v68 = [v66 removeItemAtPath:v67 error:v104];

          if (v68)
          {
            v69 = v104[0];
          }

          else
          {
            v72 = v104[0];
            v73 = sub_1A957AEF8();

            swift_willThrow();
            v96 = 0;
          }

LABEL_37:
          if (qword_1EB38DF70 != -1)
          {
            swift_once();
          }

          v74 = sub_1A937731C(v6, qword_1EB38DF78);
          (*v99)(v12, v74, v6);

          v75 = sub_1A957BC68();
          v76 = sub_1A957CA58();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = v6;
            v79 = v12;
            v80 = v50;
            v81 = swift_slowAlloc();
            v104[0] = v81;
            *v77 = v95;
            *(v77 + 4) = sub_1A937A5C0(v80, v49, v104);
            _os_log_impl(&dword_1A9324000, v75, v76, "Creating voice db file at path %s", v77, 0xCu);
            sub_1A9378138(v81);
            v12 = v79;
            v6 = v78;
            v35 = &property descriptor for TTSAXResource.footprint;
            MEMORY[0x1AC587CD0](v81, -1, -1);
            MEMORY[0x1AC587CD0](v77, -1, -1);
          }

          (*v98)(v12, v6);
          v40 = [v102 v35[411]];
          v41 = sub_1A957C0C8();

          sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
          inited = swift_initStackObject();
          *(inited + 16) = v97;
          v43 = v101;
          *(inited + 32) = v101;
          type metadata accessor for FileProtectionType(0);
          *(inited + 64) = v44;
          v45 = v100;
          *(inited + 40) = v100;
          v46 = v43;
          v47 = v45;
          sub_1A948BC00(inited);
          swift_setDeallocating();
          sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
          type metadata accessor for FileAttributeKey(0);
          sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
          v48 = sub_1A957C018();

          [v40 createFileAtPath:v41 contents:0 attributes:v48];

          v35 = &property descriptor for TTSAXResource.footprint;
          goto LABEL_23;
        }

        sub_1A937BA14(*(v58 + 56) + 32 * v60, v104);

        type metadata accessor for FileProtectionType(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v94 = v103;
        v62 = sub_1A957C0F8();
        v64 = v63;
        if (v62 == sub_1A957C0F8() && v64 == v65)
        {
        }

        else
        {
          v82 = sub_1A957D3E8();

          if ((v82 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v70 = v104[0];

        v71 = sub_1A957AEF8();

        swift_willThrow();
        v96 = 0;
      }

LABEL_23:
      v37 += 2;
      if (v37 == 6)
      {
        swift_arrayDestroy();
        v4 = v92;
        LOBYTE(v19) = v91;
        v20 = &qword_1EB38E000;
        break;
      }
    }
  }

  sub_1A957B3F8();
  if (v20[406] != -1)
  {
    swift_once();
  }

  v83 = sub_1A957AFD8();
  sub_1A937731C(v83, qword_1EB38ECB8);
  sub_1A957AFA8();
  v84 = v96;
  result = sub_1A957B408();
  if (!v84)
  {
    v85 = result;
    if ((v19 & 1) == 0)
    {
      (*(*v4 + 128))(result);
    }

    sub_1A957B3D8();
    v3 = 0;
    sub_1A957B378();
    v86 = *(*v4 + 168);

    v86(v87);
    v17 = v85;
    goto LABEL_2;
  }

LABEL_51:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A947FD5C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v108[23] = *MEMORY[0x1E69E9840];
  v6 = sub_1A957BC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v94[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v94[-v15];
  v17 = (*(*a1 + 160))(v14);
  if (v17)
  {
    goto LABEL_2;
  }

  v99 = v2;
  v19 = a1[112];
  v20 = &qword_1EB38E000;
  if (v19 & 1) == 0 && (AXProcessIsAXAssetsd())
  {
    v95 = v19;
    v96 = a1;
    v97 = a2;
    v105 = objc_opt_self();
    v21 = [v105 defaultManager];
    if (qword_1EB38EC90 != -1)
    {
      swift_once();
    }

    v22 = sub_1A957AFD8();
    sub_1A937731C(v22, qword_1EB38EC98);
    sub_1A957AFA8();
    v23 = sub_1A957C0C8();

    v24 = [v21 fileExistsAtPath_];

    if ((v24 & 1) == 0)
    {
      if (qword_1EB38DF70 != -1)
      {
        swift_once();
      }

      v25 = sub_1A937731C(v6, qword_1EB38DF78);
      (*(v7 + 16))(v16, v25, v6);
      v26 = sub_1A957BC68();
      v27 = sub_1A957CA58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A9324000, v26, v27, "Creating intermediate accessibility directory", v28, 2u);
        MEMORY[0x1AC587CD0](v28, -1, -1);
      }

      (*(v7 + 8))(v16, v6);
      v29 = [v105 defaultManager];
      v30 = sub_1A957AF58();
      v108[0] = 0;
      v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v108];

      if (!v31)
      {
        v92 = v108[0];
        sub_1A957AEF8();

        swift_willThrow();

        goto LABEL_52;
      }

      v32 = v108[0];
    }

    if (qword_1EB38ECB0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB38ECB8);
    v108[17] = sub_1A957AFA8();
    v108[18] = v33;
    if (qword_1EB389510 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB389518);
    v108[19] = sub_1A957AFA8();
    v108[20] = v34;
    v35 = &property descriptor for TTSAXResource.footprint;
    if (qword_1EB3894F0 != -1)
    {
      swift_once();
    }

    sub_1A937731C(v22, qword_1EB3894F8);
    v36 = sub_1A957AFA8();
    v37 = 0;
    v102 = (v7 + 16);
    v101 = (v7 + 8);
    v108[21] = v36;
    v108[22] = v38;
    v104 = *MEMORY[0x1E696A3A0];
    v103 = *MEMORY[0x1E696A3A8];
    *&v39 = 136315138;
    v98 = v39;
    v100 = xmmword_1A9587160;
    while (1)
    {
      v50 = v108[v37 + 17];
      v49 = v108[v37 + 18];

      v51 = [v105 v35[411]];
      v52 = sub_1A957C0C8();
      v53 = [v51 fileExistsAtPath_];

      if (!v53)
      {
        goto LABEL_37;
      }

      v54 = [v105 v35[411]];
      v55 = sub_1A957C0C8();
      v108[0] = 0;
      v56 = [v54 attributesOfItemAtPath:v55 error:v108];

      v57 = v108[0];
      if (v56)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
        v58 = sub_1A957C038();
        v59 = v57;

        if (!*(v58 + 16) || (v60 = sub_1A9489F14(v104), (v61 & 1) == 0))
        {

LABEL_33:
          v67 = [v105 v35[411]];
          v68 = sub_1A957C0C8();
          v108[0] = 0;
          v69 = [v67 removeItemAtPath:v68 error:v108];

          if (v69)
          {
            v70 = v108[0];
          }

          else
          {
            v73 = v108[0];
            v74 = sub_1A957AEF8();

            swift_willThrow();
            v99 = 0;
          }

LABEL_37:
          if (qword_1EB38DF70 != -1)
          {
            swift_once();
          }

          v75 = sub_1A937731C(v6, qword_1EB38DF78);
          (*v102)(v12, v75, v6);

          v76 = sub_1A957BC68();
          v77 = sub_1A957CA58();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = v6;
            v80 = v12;
            v81 = v50;
            v82 = swift_slowAlloc();
            v108[0] = v82;
            *v78 = v98;
            *(v78 + 4) = sub_1A937A5C0(v81, v49, v108);
            _os_log_impl(&dword_1A9324000, v76, v77, "Creating voice db file at path %s", v78, 0xCu);
            sub_1A9378138(v82);
            v12 = v80;
            v6 = v79;
            v35 = &property descriptor for TTSAXResource.footprint;
            MEMORY[0x1AC587CD0](v82, -1, -1);
            MEMORY[0x1AC587CD0](v78, -1, -1);
          }

          (*v101)(v12, v6);
          v40 = [v105 v35[411]];
          v41 = sub_1A957C0C8();

          sub_1A937829C(&qword_1EB387A20, &qword_1A95916C0);
          inited = swift_initStackObject();
          *(inited + 16) = v100;
          v43 = v104;
          *(inited + 32) = v104;
          type metadata accessor for FileProtectionType(0);
          *(inited + 64) = v44;
          v45 = v103;
          *(inited + 40) = v103;
          v46 = v43;
          v47 = v45;
          sub_1A948BC00(inited);
          swift_setDeallocating();
          sub_1A937B960(inited + 32, &qword_1EB387A28, &unk_1A95916C8);
          type metadata accessor for FileAttributeKey(0);
          sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
          v48 = sub_1A957C018();

          [v40 createFileAtPath:v41 contents:0 attributes:v48];

          v35 = &property descriptor for TTSAXResource.footprint;
          goto LABEL_23;
        }

        sub_1A937BA14(*(v58 + 56) + 32 * v60, v108);

        type metadata accessor for FileProtectionType(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v62 = v106;
        v63 = sub_1A957C0F8();
        v65 = v64;
        if (v63 == sub_1A957C0F8() && v65 == v66)
        {
        }

        else
        {
          v83 = sub_1A957D3E8();
          v84 = v62;
          v85 = v83;

          if ((v85 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v71 = v108[0];

        v72 = sub_1A957AEF8();

        swift_willThrow();
        v99 = 0;
      }

LABEL_23:
      v37 += 2;
      if (v37 == 6)
      {
        swift_arrayDestroy();
        a2 = v97;
        a1 = v96;
        LOBYTE(v19) = v95;
        v20 = &qword_1EB38E000;
        break;
      }
    }
  }

  sub_1A957B3F8();
  if (v20[406] != -1)
  {
    swift_once();
  }

  v86 = sub_1A957AFD8();
  sub_1A937731C(v86, qword_1EB38ECB8);
  sub_1A957AFA8();
  v87 = v99;
  v88 = sub_1A957B408();
  if (v87)
  {

    goto LABEL_52;
  }

  v89 = v88;
  if ((v19 & 1) == 0)
  {
    (*(*a1 + 128))(v88);
  }

  sub_1A957B3D8();
  v3 = 0;
  sub_1A957B378();
  v90 = *(*a1 + 168);

  v90(v91);
  v17 = v89;
LABEL_2:
  sub_1A9485974(v17, a2, &v107);

  if (!v3)
  {
    result = v107;
  }

LABEL_52:
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9480A28(uint64_t *a1)
{
  v2 = sub_1A957B2E8();
  v145 = *(v2 - 8);
  v146 = v2;
  v3 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v144 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v133 - v9;
  v11 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v151 = &v133 - v14;
  v15 = sub_1A957B188();
  v153 = *(v15 - 8);
  v154 = v15;
  v16 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A957B598();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v156 = v24;
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v26 = a1[1];
  v160 = v26;
  v27 = sub_1A9387410();
  sub_1A957CDF8();
  v28 = sub_1A93B1F40();
  v29 = sub_1A957C098();
  v158 = v21;
  v159 = v20;
  v157 = v25;
  v152 = v19;
  v150 = v10;
  v155 = a1;
  if (v29)
  {
    goto LABEL_5;
  }

  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v148 = v28;
  v149 = v27;
  v147 = &v133;
  MEMORY[0x1EEE9AC00](v29, v30);
  v143 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  v142 = &v133;
  v141 = v32;
  v140 = *(v32 - 8);
  v33 = v140[8];
  MEMORY[0x1EEE9AC00](v32, v34);
  v25 = &v133 - v35;
  a1 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  v139 = &v133;
  v19 = *(a1 - 1);
  v20 = (*(v19 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, v36);
  v27 = &v133 - v20;
  if (qword_1EB38ECD8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = sub_1A937731C(a1, qword_1EB3A7B20);
    MEMORY[0x1EEE9AC00](v37, v38);
    v39 = &v133 - v20;
    v20 = v159;
    v40 = v157;
    sub_1A957B678();
    v160 = v26;
    sub_1A957B478();
    v41 = *(v19 + 1);
    v41(v39, a1);
    v160 = v26;
    sub_1A957B4B8();
    v41(v27, a1);
    v42 = v143;
    sub_1A957B658();
    v43 = v25;
    v25 = v40;
    (v140[1])(v43, v141);
    v21 = v158;
    (*(v158 + 40))(v40, v42, v20);
    v28 = v148;
    a1 = v155;
    v27 = v149;
LABEL_5:
    v19 = v28;
    v44 = *a1;
    v160 = *a1;
    sub_1A957CDF8();
    v45 = sub_1A957C098();
    if (v45)
    {
      break;
    }

    if ((v44 & 0x8000000000000000) == 0)
    {
      v149 = &v133;
      MEMORY[0x1EEE9AC00](v45, v46);
      v148 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
      v147 = &v133;
      v143 = v48;
      v142 = *(v48 - 8);
      v49 = v142[8];
      MEMORY[0x1EEE9AC00](v48, v50);
      v52 = &v133 - v51;
      v53 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
      v141 = &v133;
      v54 = *(v53 - 8);
      v55 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v53, v56);
      if (qword_1EB38ECD8 != -1)
      {
        swift_once();
      }

      v57 = sub_1A937731C(v53, qword_1EB3A7B20);
      MEMORY[0x1EEE9AC00](v57, v58);
      v59 = v159;
      v60 = v157;
      sub_1A957B678();
      v160 = v44;
      sub_1A957B478();
      v61 = *(v54 + 8);
      v61(&v133 - v55, v53);
      v160 = 0;
      sub_1A957B4B8();
      v25 = v60;
      v61(&v133 - v55, v53);
      v20 = v59;
      v62 = v148;
      sub_1A957B658();
      (v142[1])(v52, v143);
      v21 = v158;
      (*(v158 + 40))(v60, v62, v59);
      a1 = v155;
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v65 = (a1 + *(Criteria + 28));
  if (v65[1])
  {
    v148 = v65[1];
    v143 = Criteria;
    v142 = &v133;
    v147 = *v65;
    MEMORY[0x1EEE9AC00](Criteria, v64);
    v141 = &v133 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
    v140 = &v133;
    v139 = v67;
    v138 = *(v67 - 8);
    v68 = *(v138 + 64);
    v70 = MEMORY[0x1EEE9AC00](v67, v69);
    v71 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
    v137 = &v133 - v71;
    v136 = &v133;
    MEMORY[0x1EEE9AC00](v70, v72);
    v149 = &v133 - v71;
    if (qword_1EB389550 != -1)
    {
      swift_once();
    }

    v73 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
    v74 = sub_1A937731C(v73, qword_1EB3A78A0);
    v133 = &v133;
    v75 = *(v73 - 8);
    v76 = *(v75 + 64);
    MEMORY[0x1EEE9AC00](v74, v77);
    v134 = v78;
    v79 = &v133 - v78;
    v80 = v159;
    v25 = v157;
    sub_1A957B678();
    v160 = sub_1A957C1A8();
    v161 = v81;
    sub_1A957B4B8();

    v82 = *(v75 + 8);
    v83 = v79;
    v135 = v75 + 8;
    v84 = v82;
    v85 = (v82)(v83, v73);
    MEMORY[0x1EEE9AC00](v85, v86);
    v87 = &v133 - v71;
    if (qword_1EB38E080 != -1)
    {
      swift_once();
    }

    v88 = sub_1A937731C(v73, qword_1EB3A7AD0);
    MEMORY[0x1EEE9AC00](v88, v89);
    v90 = &v133 - v134;
    sub_1A957B678();
    v160 = 24357;
    v161 = 0xE200000000000000;
    v91 = sub_1A957C1A8();
    MEMORY[0x1AC585140](v91);

    MEMORY[0x1AC585140](9567, 0xE200000000000000);
    sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
    sub_1A957B468();

    v84(v90, v73);
    v92 = v137;
    v93 = v149;
    sub_1A957B528();
    v94 = *(v138 + 8);
    v95 = v87;
    v96 = v139;
    v94(v95, v139);
    v94(v93, v96);
    v97 = v141;
    sub_1A957B658();
    v94(v92, v96);
    v21 = v158;
    (*(v158 + 40))(v25, v97, v80);
    v20 = v80;
    a1 = v155;
    Criteria = v143;
  }

  v98 = v150;
  sub_1A9391BAC(a1 + *(Criteria + 24), v150, &qword_1EB386988, &qword_1A9587830);
  v99 = sub_1A957B308();
  v100 = *(v99 - 8);
  v101 = (*(v100 + 48))(v98, 1, v99);
  v102 = v152;
  if (v101 == 1)
  {
    sub_1A937B960(v98, &qword_1EB386988, &qword_1A9587830);
    v103 = v151;
    (*(v153 + 56))(v151, 1, 1, v154);
LABEL_19:
    sub_1A937B960(v103, &qword_1EB386A68, &qword_1A9587F40);
    goto LABEL_20;
  }

  v104 = v144;
  sub_1A957B2F8();
  (*(v100 + 8))(v98, v99);
  v105 = v151;
  sub_1A957B2B8();
  v103 = v105;
  (*(v145 + 8))(v104, v146);
  v106 = v153;
  v107 = v154;
  if ((*(v153 + 48))(v103, 1, v154) == 1)
  {
    goto LABEL_19;
  }

  (*(v106 + 32))(v102, v103, v107);
  v112 = v106;
  v113 = Locale.LanguageCode.childLanguages.getter();
  if (*(v113 + 16))
  {
    v110 = sub_1A947A39C(v113, v25);

    (*(v112 + 8))(v102, v107);
    (*(v21 + 8))(v25, v20);
    return v110;
  }

  v155 = &v133;
  MEMORY[0x1EEE9AC00](v114, v115);
  v156 = &v133 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
  v151 = &v133;
  v117 = *(v150 - 1);
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v150, v119);
  v121 = &v133 - v120;
  if (qword_1EB38E050 != -1)
  {
    swift_once();
  }

  v122 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  v123 = sub_1A937731C(v122, qword_1EB3A7A88);
  v149 = &v133;
  v124 = *(v122 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123, v126);
  v128 = &v133 - v127;
  v129 = v159;
  v25 = v157;
  sub_1A957B678();
  v160 = 24357;
  v161 = 0xE200000000000000;
  v130 = v152;
  v131 = sub_1A957B148();
  MEMORY[0x1AC585140](v131);

  MEMORY[0x1AC585140](9567, 0xE200000000000000);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  sub_1A957B468();

  (*(v124 + 8))(v128, v122);
  v20 = v129;
  v132 = v156;
  sub_1A957B658();
  (*(v117 + 8))(v121, v150);
  (*(v153 + 8))(v130, v154);
  v21 = v158;
  (*(v158 + 40))(v25, v132, v20);
LABEL_20:
  sub_1A937829C(&qword_1EB387A00, &qword_1A9591610);
  v108 = *(v21 + 72);
  v109 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1A9587160;
  (*(v21 + 32))(v110 + v109, v25, v20);
  return v110;
}

uint64_t sub_1A9481D18(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v4 = (*(*v1 + 192))(a1);
    MEMORY[0x1EEE9AC00](v4, v5);
    v9[2] = v1;
    v9[3] = v4;
    v9[4] = a1;
    v6 = sub_1A947F0C8(v9);

    if (v6)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t sub_1A9481DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v370 = a3;
  v371 = a4;
  v387 = a1;
  v5 = sub_1A957BC88();
  v372 = *(v5 - 8);
  v373 = v5;
  v6 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v374 = &v368 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_1A957B308();
  v9 = *(v457 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v457, v11);
  v14 = &v368 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v368 - v16;
  v481 = MEMORY[0x1E69E7CC8];
  v18 = sub_1A957B598();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v368 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v368 - v26;
  MEMORY[0x1AC584460](0x736563696F76, 0xE600000000000000, 0, 0);
  v435 = v24;
  sub_1A957B618();
  v410 = v19[1];
  v411 = v19 + 1;
  v28 = v410(v27, v18);
  v29 = *(a2 + 16);
  v452 = v18;
  v385 = v29;
  if (!v29)
  {
LABEL_165:
    if (qword_1EB38DF70 != -1)
    {
LABEL_186:
      swift_once();
    }

    v352 = v373;
    v353 = sub_1A937731C(v373, qword_1EB38DF78);
    v354 = v372;
    (*(v372 + 16))(v374, v353, v352);
    v355 = sub_1A957BC68();
    v356 = sub_1A957CA68();
    if (os_log_type_enabled(v355, v356))
    {
      v357 = swift_slowAlloc();
      *v357 = 134217984;
      swift_beginAccess();
      *(v357 + 4) = *(v481 + 16);
      _os_log_impl(&dword_1A9324000, v355, v356, "Read %ld voices from store.", v357, 0xCu);
      MEMORY[0x1AC587CD0](v357, -1, -1);
    }

    (*(v354 + 8))(v374, v352);
    swift_beginAccess();
    v358 = v481;
    v359 = *(v481 + 16);
    if (v359)
    {
      v360 = sub_1A93EB098(*(v481 + 16), 0);
      v361 = sub_1A93ED710(&v459, v360 + 32, v359, v358);

      sub_1A932D088();
      if (v361 == v359)
      {
LABEL_172:
        v459 = v360;
        v362 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
        v363 = sub_1A93B744C(&qword_1EB386280, &qword_1EB386958, &qword_1A9587790);
        v364 = Sequence<>.filtered(axCriteria:)(v370, v362, v363, &protocol witness table for CoreSynthesizer.Voice);

        v410(v435, v452);

        *v371 = v364;
        return result;
      }

      __break(1u);
    }

    v360 = MEMORY[0x1E69E7CC0];
    goto LABEL_172;
  }

  v30 = 0;
  v32 = v19[2];
  v31 = v19 + 2;
  v382 = a2 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
  v383 = v32;
  v455 = v9 + 32;
  v381 = v31[7];
  v384 = xmmword_1A9587160;
  v368 = xmmword_1A958BF10;
  v369 = xmmword_1A95873F0;
  v456 = v9;
  v375 = v14;
  v378 = v17;
  v379 = v31;
  while (1)
  {
    v422 = &v368;
    v423 = v30;
    v33 = v386;
    MEMORY[0x1EEE9AC00](v28, v382 + v381 * v30);
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
    v453 = &v368 - v34;
    v35 = v452;
    v36 = v383;
    v37 = v383();
    v445 = &v368;
    MEMORY[0x1EEE9AC00](v37, v38);
    v444 = &v368 - v34;
    v39 = sub_1A957B5E8();
    v443 = &v368;
    v40 = *(*(v39 - 8) + 64);
    MEMORY[0x1EEE9AC00](v39, v41);
    v43 = *MEMORY[0x1E69D4F10];
    v441 = v44;
    v45 = *(v44 + 104);
    v440 = &v368 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v442 = v46;
    v45();
    v458[3] = v35;
    v458[4] = MEMORY[0x1E69D4F08];
    v47 = sub_1A93981E4(v458);
    (v36)(v47, v435, v35);
    v48 = sub_1A937829C(&qword_1EB387A40, &qword_1A9591700);
    v439 = &v368;
    v451 = v48;
    v454 = *(v48 - 8);
    v49 = *(v454 + 64);
    v51 = MEMORY[0x1EEE9AC00](v48, v50);
    v438 = &v368 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v437 = &v368;
    v53 = MEMORY[0x1EEE9AC00](v51, v52);
    v447 = (&v368 - v54);
    v449 = &v368;
    MEMORY[0x1EEE9AC00](v53, v55);
    v448 = v56;
    v450 = &v368 - v56;
    if (qword_1EB38DF98 != -1)
    {
      swift_once();
    }

    v57 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
    v433 = sub_1A937731C(v57, qword_1EB3A7950);
    v446 = &v368;
    v434 = v57;
    v58 = *(v57 - 8);
    v59 = *(v58 + 64);
    MEMORY[0x1EEE9AC00](v433, v60);
    v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1A957B688();
    v471 = 0;
    v470 = 0;
    sub_1A957B518();
    v62 = *(v58 + 8);
    v63 = v62(&v368 - v61, v57);
    v446 = &v368;
    v65 = MEMORY[0x1EEE9AC00](v63, v64);
    v428 = (&v368 - v448);
    v448 = &v368;
    MEMORY[0x1EEE9AC00](v65, v66);
    v67 = sub_1A957B688();
    v430 = &v368;
    v432 = v59;
    MEMORY[0x1EEE9AC00](v67, v68);
    sub_1A957B688();
    v69 = v428;
    sub_1A957B4D8();
    v70 = v434;
    v62(&v368 - v61, v434);
    v431 = v58 + 8;
    v429 = v62;
    v62(&v368 - v61, v70);
    v71 = v450;
    sub_1A957B4A8();
    v72 = v454 + 8;
    v73 = *(v454 + 8);
    v74 = v451;
    (v73)(v69, v451);
    v454 = v72;
    v433 = v73;
    (v73)(v71, v74);
    v75 = sub_1A937829C(&qword_1EB3879F8, &qword_1A9591608);
    v430 = &v368;
    v427 = *(v75 - 8);
    v428 = v75;
    v76 = *(v427 + 64);
    MEMORY[0x1EEE9AC00](v75, v77);
    v426 = (&v368 - v78);
    if (qword_1EB38DFA8 != -1)
    {
      swift_once();
    }

    v79 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
    v80 = sub_1A937731C(v79, qword_1EB3A7968);
    v425 = &v368;
    v81 = *(v79 - 8);
    v82 = *(v81 + 64);
    MEMORY[0x1EEE9AC00](v80, v83);
    v84 = v452;
    v85 = sub_1A957B678();
    v424 = &v368;
    v446 = v82;
    MEMORY[0x1EEE9AC00](v85, v86);
    v87 = &v368 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    v421 = v80;
    sub_1A957B678();
    v88 = v426;
    sub_1A957B508();
    v89 = *(v81 + 8);
    (v89)(v87, v79);
    v448 = v79;
    v450 = (v81 + 8);
    v449 = v89;
    (v89)(v87, v79);
    v90 = v438;
    v91 = v447;
    sub_1A957B498();
    (*(v427 + 8))(v88, v428);
    v92 = v451;
    v93 = v433;
    (v433)(v91, v451);
    v94 = v444;
    v95 = v440;
    sub_1A957B608();
    (v93)(v90, v92);
    (*(v441 + 8))(v95, v442);
    sub_1A9378138(v458);
    sub_1A937829C(&qword_1EB387A48, &qword_1A9591708);
    *(swift_allocObject() + 16) = v384;
    v96 = MEMORY[0x1E69D4F08];
    if (qword_1EB38E040 != -1)
    {
      swift_once();
    }

    v97 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
    sub_1A937731C(v97, qword_1EB3A7A70);
    sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8);
    sub_1A957B448();
    v462 = v84;
    v463 = v96;
    sub_1A93981E4(&v459);
    sub_1A957B628();

    v98 = v410;
    v410(v94, v84);
    v99 = v436;
    v100 = sub_1A957B3E8();
    if (!v99)
    {
      break;
    }

    v98(v453, v84);
    v28 = sub_1A9378138(&v459);
    v436 = 0;
LABEL_4:
    v30 = v423 + 1;
    if (v423 + 1 == v385)
    {
      goto LABEL_165;
    }
  }

  v101 = v100;
  v436 = 0;
  sub_1A9378138(&v459);

  v102 = sub_1A957D048();
  v377 = v101;

  v103 = sub_1A937829C(&qword_1EB387A38, &unk_1A95916E0);
  v376 = &v368;
  v104 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v103 - 8, v105);
  v107 = &v368 - v106;
  v445 = v102;
  sub_1A957D138();
  v108 = sub_1A957B548();
  v109 = *(v108 - 8);
  v110 = *(v109 + 48);
  v444 = (v109 + 48);
  v443 = v110;
  v111 = (v110)(v107, 1, v108);
  if (v111 == 1)
  {
LABEL_13:
    v410(v453, v452);

    goto LABEL_4;
  }

  v425 = v97;
  v380 = v97 - 8;
  v114 = *(v109 + 32);
  v113 = (v109 + 32);
  v442 = v114;
  v441 = *(v113 + 4);
  v437 = (v113 - 24);
  v115 = v448;
  v440 = v107;
  v439 = v108;
  v438 = v113;
  while (1)
  {
    while (1)
    {
      v447 = &v368;
      MEMORY[0x1EEE9AC00](v111, v112);
      v119 = &v368 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
      v442(v119, v107, v108);
      if (qword_1EB38DFB8 != -1)
      {
        swift_once();
      }

      v120 = sub_1A937731C(v115, qword_1EB3A7980);
      v121 = v446;
      v454 = MEMORY[0x1EEE9AC00](v120, v122);
      sub_1A957B678();
      v115 = v448;
      sub_1A957B558();
      (v449)(&v368 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0), v115);
      CoreSynthesizer.Voice.Quality.init(rawValue:)(v458);
      v123 = LOBYTE(v458[0]);
      if (LOBYTE(v458[0]) != 5)
      {
        break;
      }

      v116 = *v437;
      v117 = v119;
LABEL_16:
      v108 = v439;
      v116(v117, v439);
LABEL_17:
      v107 = v440;
LABEL_18:
      sub_1A957D138();
      v111 = (v443)(v107, 1, v108);
      if (v111 == 1)
      {
        goto LABEL_13;
      }
    }

    v451 = v119;
    if (qword_1EB38DFD8 != -1)
    {
      swift_once();
    }

    v124 = sub_1A937731C(v115, qword_1EB3A79B0);
    MEMORY[0x1EEE9AC00](v124, v125);
    sub_1A957B678();
    v115 = v448;
    v126 = v451;
    sub_1A957B558();
    (v449)(&v368 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0), v115);
    CoreSynthesizer.Voice.Gender.init(rawValue:)(v458);
    v127 = LOBYTE(v458[0]);
    if (LOBYTE(v458[0]) == 3)
    {
      v116 = *v437;
      v117 = v126;
      goto LABEL_16;
    }

    if (qword_1EB38DFF0 != -1)
    {
      swift_once();
    }

    v128 = sub_1A937731C(v115, qword_1EB3A79E0);
    v428 = MEMORY[0x1EEE9AC00](v128, v129);
    sub_1A957B678();
    v130 = v451;
    sub_1A957B558();
    (v449)(&v368 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0), v115);
    CoreSynthesizer.Voice.VoiceType.init(rawValue:)(v458[0], v458[1], &v459);
    if (v465 == 255)
    {
      v108 = v439;
      (*v437)(v130, v439);
      goto LABEL_17;
    }

    v419 = v465;
    v407 = v127;
    v413 = v459;
    v414 = v460;
    v415 = v461;
    v416 = v462;
    v417 = v463;
    v418 = v464;
    if (qword_1EB38ECD8 != -1)
    {
      swift_once();
    }

    v131 = v425;
    v132 = sub_1A937731C(v425, qword_1EB3A7B20);
    v133 = *(v131 - 8);
    v427 = *(v133 + 64);
    v135 = MEMORY[0x1EEE9AC00](v132, v134);
    v137 = &v368 - v136;
    v406 = v135;
    sub_1A957B678();
    sub_1A957B558();
    v139 = *(v133 + 8);
    v138 = v133 + 8;
    v426 = v139;
    (v139)(v137, v131);
    if ((v459 & 0x8000000000000000) != 0)
    {
      goto LABEL_176;
    }

    v412 = v138;
    v409 = v123;
    CoreSynthesizer.Voice.Trait.init(rawValue:)(v459, &v477);
    if (qword_1EB38E090 != -1)
    {
      swift_once();
    }

    v140 = v434;
    v141 = sub_1A937731C(v434, qword_1EB3A7AE8);
    v433 = &v368;
    MEMORY[0x1EEE9AC00](v141, v142);
    v144 = &v368 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A957B688();
    sub_1A957B568();
    v145 = v429(v144, v140);
    v408 = v459;
    v420 = v460;
    v424 = &v368;
    MEMORY[0x1EEE9AC00](v145, v146);
    v147 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1A957B678();
    sub_1A957B558();
    v148 = v448;
    v149 = v449;
    v150 = (v449)(&v368 - v147, v448);
    v433 = v459;
    v430 = v460;
    v424 = &v368;
    MEMORY[0x1EEE9AC00](v150, v151);
    v152 = &v368 - v147;
    sub_1A957B678();
    v153 = v436;
    sub_1A957B538();
    if (v153)
    {

      (v149)(v152, v148);
      v436 = 0;
      v154 = v378;
      v115 = v148;
      goto LABEL_36;
    }

    v436 = 0;
    (v149)(v152, v148);
    v168 = CoreSynthesizer.Voice.VoiceType.init(rawValue:)(v459, v460, &v459);
    if (v465 == 255)
    {
      v115 = v148;
      v154 = v378;
      goto LABEL_36;
    }

    v428 = &v368;
    v170 = v459;
    v171 = v460;
    v172 = v462;
    v173 = v464;
    v479[0] = v459;
    v479[1] = v460;
    v405 = v461;
    v479[2] = v461;
    v479[3] = v462;
    v424 = v463;
    v479[4] = v463;
    v479[5] = v464;
    v480 = v465;
    MEMORY[0x1EEE9AC00](v168, v169);
    v175 = &v368 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
    v177 = v176;
    sub_1A957B678();
    v178 = v436;
    sub_1A957B538();
    if (!v178)
    {
      break;
    }

    sub_1A948BF3C(v170, v171, v405, v172, v424, v173, v177);
    (v426)(v175, v425);
    v436 = 0;
LABEL_45:
    v154 = v378;
    v115 = v448;
LABEL_36:
    v155 = sub_1A957C1A8();
    v157 = v481;
    if (*(v481 + 16))
    {
      v158 = sub_1A937A490(v155, v156);
      v160 = v159;

      if (v160)
      {
        sub_1A948BF3C(v413, v414, v415, v416, v417, v418, v419);

        memcpy(v458, (*(v157 + 56) + 280 * v158), sizeof(v458));
        v161 = sub_1A957C1A8();
        v163 = v162;
        sub_1A937B3DC(v458, &v459);

        v164 = sub_1A9485504(&v470, v161, v163);
        v166 = v165;
        memmove(&v459, v165, 0x118uLL);
        if (sub_1A932D058(&v459) != 1)
        {
          v167 = v477;
          v467[0] = v458[8];
          sub_1A93FC780();
          sub_1A957C438();
          sub_1A93FC7D4();
          sub_1A957D5D8();
          v474 = v167;
          sub_1A9387410();
          v115 = v448;
          sub_1A957CDD8();
          v166[8] = v469[0];
        }

        (v164)(&v470, 0);
        v107 = v440;

        sub_1A937B48C(v458);
        v108 = v439;
        (*v437)(v451, v439);
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (qword_1EB38E000 != -1)
    {
      swift_once();
    }

    v179 = sub_1A937731C(v115, qword_1EB3A79F8);
    v428 = &v368;
    v180 = v446;
    MEMORY[0x1EEE9AC00](v179, v181);
    v454 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
    v182 = &v368 - v454;
    sub_1A957B678();
    sub_1A957B558();
    v183 = v449;
    (v449)(v182, v115);
    v424 = v459;
    v406 = v460;
    if (qword_1EB38E030 != -1)
    {
      swift_once();
    }

    v184 = sub_1A937731C(v115, qword_1EB3A7A58);
    v428 = &v368;
    MEMORY[0x1EEE9AC00](v184, v185);
    v186 = &v368 - v454;
    sub_1A957B678();
    sub_1A957B558();
    v187 = (v183)(v186, v115);
    v458[0] = 44;
    v458[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v187, v188);
    v367 = v458;
    v189 = v436;
    v192 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A948C694, &v366, v190, v191, &v368);
    v454 = v189;
    v193 = *(v192 + 16);
    if (v193)
    {
      v459 = MEMORY[0x1E69E7CC0];
      sub_1A93ABB88(0, v193, 0);
      v194 = v459;
      v195 = (v192 + 56);
      do
      {
        v196 = *(v195 - 3);
        v197 = *(v195 - 2);
        v198 = v154;
        v199 = *(v195 - 1);
        v200 = *v195;

        MEMORY[0x1AC585090](v196, v197, v199, v200);
        sub_1A957B1B8();

        v459 = v194;
        v202 = *(v194 + 16);
        v201 = *(v194 + 24);
        if (v202 >= v201 >> 1)
        {
          sub_1A93ABB88(v201 > 1, v202 + 1, 1);
          v194 = v459;
        }

        *(v194 + 16) = v202 + 1;
        (*(v456 + 32))(v194 + ((*(v456 + 80) + 32) & ~*(v456 + 80)) + *(v456 + 72) * v202, v198, v457);
        v195 += 4;
        --v193;
        v154 = v198;
      }

      while (v193);
    }

    else
    {

      v194 = MEMORY[0x1E69E7CC0];
    }

    v203 = v375;
    sub_1A94855D8(v194);
    v405 = v204;
    v428 = v205;
    v206 = v446;
    if (qword_1EB389548 != -1)
    {
      swift_once();
    }

    v207 = v448;
    v208 = sub_1A937731C(v448, qword_1EB3A7888);
    MEMORY[0x1EEE9AC00](v208, v209);
    sub_1A957B678();
    sub_1A957B558();
    v210 = (v449)(&v368 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0), v207);
    v458[0] = 44;
    v458[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v210, v211);
    v367 = v458;
    v212 = v454;
    v215 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A948C694, &v366, v213, v214, &v368);
    v436 = v212;
    v216 = *(v215 + 16);
    if (v216)
    {
      v459 = MEMORY[0x1E69E7CC0];
      sub_1A93ABB88(0, v216, 0);
      v217 = v459;
      v218 = (v215 + 56);
      do
      {
        v219 = *(v218 - 3);
        v220 = *(v218 - 2);
        v221 = *(v218 - 1);
        v222 = *v218;

        MEMORY[0x1AC585090](v219, v220, v221, v222);
        sub_1A957B1B8();

        v459 = v217;
        v224 = *(v217 + 16);
        v223 = *(v217 + 24);
        if (v224 >= v223 >> 1)
        {
          sub_1A93ABB88(v223 > 1, v224 + 1, 1);
          v217 = v459;
        }

        *(v217 + 16) = v224 + 1;
        (*(v456 + 32))(v217 + ((*(v456 + 80) + 32) & ~*(v456 + 80)) + *(v456 + 72) * v224, v203, v457);
        v218 += 4;
        --v216;
      }

      while (v216);
    }

    else
    {

      v217 = MEMORY[0x1E69E7CC0];
    }

    sub_1A94855D8(v217);
    v403 = v226;
    v404 = v225;
    if (qword_1EB38E080 != -1)
    {
      swift_once();
    }

    v227 = v448;
    v228 = sub_1A937731C(v448, qword_1EB3A7AD0);
    MEMORY[0x1EEE9AC00](v228, v229);
    v231 = &v368 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A957B678();
    sub_1A957B558();
    (v449)(v231, v227);
    v458[0] = v459;
    v458[1] = v460;
    v470 = 44;
    v471 = 0xE100000000000000;
    sub_1A93820F4();
    v232 = sub_1A957CCC8();

    v233 = *(v232 + 16);
    if (v233)
    {
      v459 = MEMORY[0x1E69E7CC0];
      sub_1A93ABB68(0, v233, 0);
      v234 = v459;
      v402 = v232;
      v235 = (v232 + 40);
      while (1)
      {
        v236 = *(v235 - 1);
        if ((*v235 & 0x2000000000000000) != 0)
        {
          v237 = HIBYTE(*v235) & 0xF;
        }

        else
        {
          v237 = v236 & 0xFFFFFFFFFFFFLL;
        }

        v238 = 7;
        if (((*v235 >> 60) & ((v236 & 0x800000000000000) == 0)) != 0)
        {
          v238 = 11;
        }

        v239 = v238 | (v237 << 16);
        v240 = *v235;

        v241 = sub_1A957C258();
        if (v242)
        {
          v241 = v239;
        }

        if (4 * v237 < v241 >> 14)
        {
          break;
        }

        v454 = v233;
        v243 = v234;
        v244 = sub_1A957C3B8();
        v246 = v245;
        if (__OFSUB__(sub_1A957CC88(), 1))
        {
          goto LABEL_174;
        }

        v247 = sub_1A957CC68();
        if (v248)
        {
          v249 = v246;
        }

        else
        {
          v249 = v247;
        }

        if (v249 >> 14 < v244 >> 14)
        {
          goto LABEL_175;
        }

        v250 = sub_1A957CC98();
        v252 = v251;
        v254 = v253;
        v256 = v255;

        v257 = MEMORY[0x1AC585090](v250, v252, v254, v256);
        v259 = v258;

        v234 = v243;
        v459 = v243;
        v261 = *(v243 + 16);
        v260 = *(v243 + 24);
        if (v261 >= v260 >> 1)
        {
          sub_1A93ABB68((v260 > 1), v261 + 1, 1);
          v234 = v459;
        }

        *(v234 + 16) = v261 + 1;
        v262 = v234 + 16 * v261;
        *(v262 + 32) = v257;
        *(v262 + 40) = v259;
        v235 += 2;
        v233 = v454 - 1;
        if (v454 == 1)
        {

          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v234 = MEMORY[0x1E69E7CC0];
LABEL_89:
    if (qword_1EB38E018 != -1)
    {
      swift_once();
    }

    v263 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
    v264 = sub_1A937731C(v263, qword_1EB3A7A28);
    v265 = *(v263 - 8);
    v266 = *(v265 + 64);
    MEMORY[0x1EEE9AC00](v264, v267);
    v269 = &v368 - v268;
    sub_1A957B688();
    sub_1A957B568();
    v270 = *(v265 + 8);
    v270(v269, v263);
    if (v460)
    {
      v271 = 0;
    }

    else
    {
      v271 = v459;
      if ((v459 & 0x8000000000000000) != 0)
      {
        goto LABEL_181;
      }

      if (HIDWORD(v459))
      {
        goto LABEL_182;
      }
    }

    v399 = v271;
    v400 = v460;
    v401 = v234;
    if (qword_1EB38E060 != -1)
    {
      swift_once();
    }

    v272 = sub_1A937731C(v263, qword_1EB3A7AA0);
    MEMORY[0x1EEE9AC00](v272, v273);
    sub_1A957B688();
    sub_1A957B568();
    v270(&v368 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0), v263);
    if (v460)
    {
      v274 = 0;
      v275 = v434;
      v276 = v432;
    }

    else
    {
      v274 = v459;
      v275 = v434;
      v276 = v432;
      if ((v459 & 0x8000000000000000) != 0)
      {
        goto LABEL_183;
      }

      if (HIDWORD(v459))
      {
        goto LABEL_184;
      }
    }

    v397 = v274;
    v398 = v460;
    if (qword_1EB38DFC8 != -1)
    {
      swift_once();
    }

    v277 = sub_1A937731C(v275, qword_1EB3A7998);
    v402 = &v368;
    MEMORY[0x1EEE9AC00](v277, v278);
    v279 = (v276 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1A957B688();
    sub_1A957B568();
    v280 = v429;
    v429(&v368 - v279, v275);
    v396 = v459;
    v454 = v460;
    if (qword_1EB38E070 != -1)
    {
      swift_once();
    }

    v281 = sub_1A937731C(v275, qword_1EB3A7AB8);
    MEMORY[0x1EEE9AC00](v281, v282);
    sub_1A957B688();
    sub_1A957B568();
    v280(&v368 - v279, v275);
    v283 = v459;
    v284 = v460;
    if (v454)
    {
      CoreSynthesizer.Voice.AssetIdentifier.init(rawValue:)(v396, v454, &v459);
      v402 = v459;
      v395 = v461;
      v396 = v460;
      v393 = v463;
      v394 = v462;
    }

    else
    {
      v402 = 0;
      v395 = 0;
      v396 = 0;
      v393 = 0;
      v394 = 0;
    }

    if (v284)
    {
      CoreSynthesizer.Voice.AssetIdentifier.init(rawValue:)(v283, v284, &v459);
      v391 = v460;
      v392 = v459;
      v388 = v462;
      v389 = v463;
      v390 = v461;
    }

    else
    {
      v391 = 0;
      v392 = 0;
      v389 = 0;
      v390 = 0;
      v388 = 0;
    }

    v285 = v446;
    if (qword_1EB38DFE8 != -1)
    {
      swift_once();
    }

    v286 = v448;
    v287 = sub_1A937731C(v448, qword_1EB3A79C8);
    MEMORY[0x1EEE9AC00](v287, v288);
    sub_1A957B678();
    sub_1A957B558();
    (v449)(&v368 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0), v286);
    CoreSynthesizer.Voice.State.init(rawValue:)(v459, v460, v458);
    LODWORD(v454) = LOBYTE(v458[0]);
    if (qword_1EB38E008 != -1)
    {
      swift_once();
    }

    v289 = v425;
    v290 = sub_1A937731C(v425, qword_1EB3A7A10);
    MEMORY[0x1EEE9AC00](v290, v291);
    v293 = &v368 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A957B678();
    sub_1A957B558();
    (v426)(v293, v289);
    v294 = v459;
    if ((v459 & 0x8000000000000000) != 0)
    {
      goto LABEL_177;
    }

    if (HIDWORD(v459))
    {
      goto LABEL_178;
    }

    if (qword_1EB38E020 != -1)
    {
      swift_once();
    }

    v295 = sub_1A937731C(v289, qword_1EB3A7A40);
    MEMORY[0x1EEE9AC00](v295, v296);
    v298 = &v368 - ((v297 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A957B678();
    sub_1A957B558();
    (v426)(v298, v289);
    v299 = v459;
    if ((v459 & 0x8000000000000000) != 0)
    {
      goto LABEL_179;
    }

    if (HIDWORD(v459))
    {
      goto LABEL_180;
    }

    v300 = v430;
    v301 = sub_1A957C1A8();
    v426 = v302;
    v427 = v301;
    v476 = v409;
    v475 = v407;
    v474 = v477;
    v459 = v413;
    v460 = v414;
    v461 = v415;
    v462 = v416;
    v463 = v417;
    v464 = v418;
    v465 = v419;
    v303 = sub_1A937829C(&unk_1EB388370, &unk_1A9596DB0);
    v458[3] = v303;
    v458[4] = sub_1A93B744C(&qword_1EB3863E8, &unk_1EB388370, &unk_1A9596DB0);
    v458[0] = v405;
    v458[1] = v428;
    v472 = v303;
    v473 = v458[4];
    v470 = v404;
    v471 = v403;
    v469[0] = v402;
    v469[1] = v396;
    v469[2] = v395;
    v469[3] = v394;
    v469[4] = v393;
    v468 = v454;
    v467[0] = v392;
    v467[1] = v391;
    v467[2] = v390;
    v467[3] = v388;
    v467[4] = v389;

    v466 = v398;
    CoreSynthesizer.Voice.init(id:alternateIdentifiers:name:quality:gender:traits:type:primaryLocales:secondaryLocales:componentDescription:downloadSizeBytes:diskSizeBytes:assetId:state:newerAssetId:supersedingVoiceIdentifier:)(v433, v300, v401, v424, v406, &v476, &v475, &v474, v478, &v459, v458, &v470, (v299 << 32) | 0x61757370, v294, 0, v365, v399, (v399 | (v400 << 32)) >> 32, v397, (v397 | (v398 << 32)) >> 32, v469, &v468, v467, v408, v420);
    v304 = v481;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v459 = v304;
    sub_1A93ECBB8(v478, v427, v426, isUniquelyReferenced_nonNull_native);

    v481 = v459;

    v108 = v439;
    (*v437)(v451, v439);
    v107 = v440;
    sub_1A957D138();
    v111 = (v443)(v107, 1, v108);
    v115 = v448;
    if (v111 == 1)
    {
      goto LABEL_13;
    }
  }

  v401 = v170;
  v402 = v171;
  v403 = v172;
  v406 = v173;
  LODWORD(v404) = v177;
  v306 = (v426)(v175, v425);
  v307 = v459;
  MEMORY[0x1EEE9AC00](v306, v308);
  v310 = &v368 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B678();
  sub_1A957B538();
  v311 = v307;
  v436 = 0;
  (v449)(v310, v448);
  v312 = CoreSynthesizer.Voice.Quality.init(rawValue:)(&v459);
  v314 = v459;
  v154 = v378;
  v315 = v406;
  if (v459 == 5)
  {
    sub_1A948BF3C(v401, v402, v405, v403, v424, v406, v404);
    v115 = v448;
    goto LABEL_36;
  }

  MEMORY[0x1EEE9AC00](v312, v313);
  v317 = &v368 - ((v316 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B678();
  v318 = v436;
  sub_1A957B538();
  if (v318)
  {

    sub_1A948BF3C(v401, v402, v405, v403, v424, v315, v404);
    v115 = v448;
    (v449)(v317, v448);
    v436 = 0;
    goto LABEL_36;
  }

  v319 = v409;
  v436 = 0;
  result = (v449)(v317, v448);
  if ((v311 & 0x8000000000000000) == 0)
  {
    CoreSynthesizer.Voice.Trait.init(rawValue:)(v311, &v459);
    v454 = v459;
    v321 = v420;
    if (v420)
    {
      v322 = sub_1A957C1A8();
      v324 = v323;

      if (v322 == v408 && v321 == v324)
      {

LABEL_135:
        v459 = *sub_1A9493C84();
        v458[0] = v454;
        sub_1A9387410();
        if (sub_1A957CD88())
        {
          v326 = sub_1A9493D5C();
          sub_1A93B0A74(&v459, *v326);
        }
      }

      else
      {
        v325 = sub_1A957D3E8();

        if (v325)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
    }

    LOBYTE(v470) = v319;
    LOBYTE(v469[0]) = 2;
    sub_1A93B1148();
    sub_1A957C438();
    sub_1A957C438();
    if (v459 == v458[0] && v460 == v458[1])
    {

      goto LABEL_141;
    }

    v327 = sub_1A957D3E8();

    if (v327)
    {
LABEL_141:
      v328 = sub_1A9493C3C();
      v459 = *v328;
      v458[0] = v454;
      sub_1A9387410();
      if (sub_1A957CD88())
      {
        sub_1A93B0A74(&v459, *v328);
      }

      LOBYTE(v470) = v314;
      LOBYTE(v469[0]) = 1;
      sub_1A957C438();
      sub_1A957C438();
      if (v459 == v458[0] && v460 == v458[1])
      {

        goto LABEL_147;
      }

      v329 = sub_1A957D3E8();

      if (v329)
      {
LABEL_147:
        v330 = sub_1A9493D14();
        sub_1A93B0A74(&v459, *v330);
      }
    }

    sub_1A937829C(&qword_1EB387A50, &qword_1A9591710);
    v331 = swift_allocObject();
    *(v331 + 16) = v384;
    *(v331 + 32) = *sub_1A9493C3C();
    *(v331 + 40) = *sub_1A9493CB4();
    v332 = sub_1A948BF50(v331);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v333 = 0;
    v334 = 1 << *(v332 + 32);
    if (v334 < 64)
    {
      v335 = ~(-1 << v334);
    }

    else
    {
      v335 = -1;
    }

    v336 = v335 & *(v332 + 64);
    v337 = (v334 + 63) >> 6;
    while (v336)
    {
LABEL_157:
      v339 = (v333 << 9) | (8 * __clz(__rbit64(v336)));
      v340 = *(*(v332 + 56) + v339);
      v336 &= v336 - 1;
      v459 = *(*(v332 + 48) + v339);
      v458[0] = v454;
      sub_1A9387410();
      if (sub_1A957CD88())
      {
        v459 = v340;
        v470 = v477;
        sub_1A957CD98();
        sub_1A93B1F40();
        if ((sub_1A957C098() & 1) == 0)
        {
          v470 = v459;
          sub_1A957CDD8();
        }
      }
    }

    while (1)
    {
      v338 = v333 + 1;
      if (__OFADD__(v333, 1))
      {
        goto LABEL_185;
      }

      if (v338 >= v337)
      {

        sub_1A937829C(&qword_1EB387A58, &qword_1A9591718);
        v341 = swift_allocObject();
        *(v341 + 16) = v368;
        *(v341 + 32) = 4;
        v454 = v341 + 32;
        *(v341 + 40) = 0u;
        *(v341 + 56) = 0u;
        *(v341 + 65) = 0u;
        sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
        v342 = swift_allocObject();
        *(v342 + 16) = v369;
        *(v342 + 32) = *sub_1A9493D74();
        v343 = sub_1A9493CFC();
        *(v342 + 40) = *v343;
        v459 = v342;
        sub_1A9387410();
        sub_1A937829C(&unk_1EB388360, qword_1A958B690);
        sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
        sub_1A957CE08();
        *(v341 + 96) = 1;
        *(v341 + 104) = 0u;
        *(v341 + 120) = 0u;
        *(v341 + 129) = 0u;
        v344 = swift_allocObject();
        *(v344 + 16) = v369;
        *(v344 + 32) = *sub_1A9493CCC();
        *(v344 + 40) = *v343;
        v459 = v344;
        sub_1A957CE08();
        *(v341 + 160) = 2;
        *(v341 + 168) = 0u;
        *(v341 + 184) = 0u;
        *(v341 + 193) = 0u;
        v345 = swift_allocObject();
        *(v345 + 16) = v369;
        *(v345 + 32) = *sub_1A9493CE4();
        *(v345 + 40) = *v343;
        v459 = v345;
        sub_1A957CE08();
        *(v341 + 272) = 0;
        *(v341 + 240) = 0u;
        *(v341 + 256) = 0u;
        *(v341 + 224) = 0u;
        v346 = swift_allocObject();
        *(v346 + 16) = v384;
        *(v346 + 32) = *v343;
        v459 = v346;
        sub_1A957CE08();
        v347 = sub_1A948C038(v341);
        swift_setDeallocating();
        sub_1A937829C(&qword_1EB387A60, &qword_1A9591720);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (!*(v347 + 16))
        {
          sub_1A948BF3C(v401, v402, v405, v403, v424, v406, v404);

          goto LABEL_45;
        }

        v348 = sub_1A9489FA8(v479);
        v350 = v349;
        sub_1A948BF3C(v401, v402, v405, v403, v424, v406, v404);
        v154 = v378;
        v115 = v448;
        if (v350)
        {
          v351 = *(*(v347 + 56) + 8 * v348);

          sub_1A93B0A74(&v459, v351);
        }

        else
        {
        }

        goto LABEL_36;
      }

      v336 = *(v332 + 64 + 8 * v338);
      ++v333;
      if (v336)
      {
        v333 = v338;
        goto LABEL_157;
      }
    }
  }

  __break(1u);
  return result;
}

void (*sub_1A9485504(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1A948A38C(v6, a2, a3);
  return sub_1A948558C;
}

void sub_1A948558C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1A94855D8(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v28 - v10;
  v12 = sub_1A937838C();
  v13 = sub_1A948A498(&v33, a1, 0, 1, v12);
  v14 = *(a1 + 16);
  v15 = v33;
  if (v33 != v14)
  {
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 >= v33)
    {
      v31 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v30 = a1 + v31;
      sub_1A948B2F8(a1, a1 + v31, 0, (2 * v33) | 1);
      v34 = v13;
      v35 = v16;
      if (*(a1 + 16) >= v14)
      {
        v28[1] = v13;
        v28[2] = a1;
        v19 = *(v3 + 16);
        v18 = v3 + 16;
        v17 = v19;
        v32 = *(v18 + 56);
        v20 = (v18 - 8);

        v29 = v14;
        while (1)
        {
          v21 = v18;
          v17(v11, v30 + v32 * v15, v2);
          v22 = v34;
          v23 = v35 + v31;
          v24 = *(v35 + 16);
          if (v34)
          {

            sub_1A948A7A0(v11, v23, v24, (v22 + 16), v22 + 32);
            v26 = v25;

            if ((v26 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v24)
          {
            do
            {
              v17(v8, v23, v2);
              sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770]);
              v27 = sub_1A957C098();
              (*v20)(v8, v2);
              if (v27)
              {
                goto LABEL_7;
              }

              v23 += v32;
            }

            while (--v24);
          }

          sub_1A948ACDC(v11);
LABEL_7:
          ++v15;
          (*v20)(v11, v2);
          v18 = v21;
          if (v15 == v29)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1A94858C8(uint64_t a1)
{
  if (TTSIsBaseSystem())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v5 = (*(*v1 + 192))(a1);

  v6 = sub_1A947FD5C(v1, v5);

  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1A9485974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v96 = sub_1A957B308();
  v7 = *(v96 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v96, v9);
  result = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = v72 - v14;
  v16 = MEMORY[0x1E69E7CD0];
  v101 = MEMORY[0x1E69E7CD0];
  v100 = MEMORY[0x1E69E7CD0];
  v77 = *(a2 + 16);
  if (v77)
  {
    v81 = v13;
    v72[0] = a3;
    v17 = sub_1A957B598();
    v18 = 0;
    v76 = v17;
    v19 = *(v17 - 8);
    v75 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v74 = (v19 + 16);
    v73 = *(v19 + 72);
    v80 = v15;
    do
    {
      v79 = v18;
      v20 = v75 + v73 * v18;
      v21 = v76;
      v99[3] = v76;
      v99[4] = MEMORY[0x1E69D4F08];
      v22 = sub_1A93981E4(v99);
      (*v74)(v22, v20, v21);
      v23 = sub_1A957B3E8();
      if (v4)
      {

        result = sub_1A9378138(v99);
        v4 = 0;
      }

      else
      {
        v24 = v23;
        sub_1A9378138(v99);

        v25 = sub_1A957D048();
        v72[2] = v24;

        v26 = sub_1A937829C(&qword_1EB387A38, &unk_1A95916E0);
        v72[1] = v72;
        v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v26 - 8, v28);
        v30 = v72 - v29;
        v90 = v25;
        sub_1A957D138();
        v31 = sub_1A957B548();
        v32 = *(v31 - 8);
        v88 = *(v32 + 48);
        v89 = v32 + 48;
        v33 = v88(v30, 1, v31);
        if (v33 != 1)
        {
          v36 = *(v32 + 32);
          v35 = v32 + 32;
          v84 = v36;
          v83 = *(v35 + 32);
          v82 = (v35 - 24);
          v86 = v31;
          v87 = v30;
          v85 = v35;
          do
          {
            v94 = v72;
            MEMORY[0x1EEE9AC00](v33, v34);
            v39 = v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            v84(v39, v30, v31);
            if (qword_1EB38E030 != -1)
            {
              swift_once();
            }

            v40 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
            v93 = sub_1A937731C(v40, qword_1EB3A7A58);
            v41 = sub_1A957B558();
            v97 = 44;
            v98 = 0xE100000000000000;
            MEMORY[0x1EEE9AC00](v41, v42);
            v72[-2] = &v97;
            v45 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A948BD84, &v72[-4], v43, v44, v72);
            v46 = *(v45 + 16);
            v95 = v39;
            if (v46)
            {
              v92 = v4;
              v99[0] = MEMORY[0x1E69E7CC0];
              sub_1A93ABB88(0, v46, 0);
              v47 = v99[0];
              v91 = v45;
              v48 = (v45 + 56);
              do
              {
                v50 = *(v48 - 3);
                v49 = *(v48 - 2);
                v52 = *(v48 - 1);
                v51 = *v48;

                MEMORY[0x1AC585090](v50, v49, v52, v51);
                sub_1A957B1B8();

                v99[0] = v47;
                v54 = *(v47 + 16);
                v53 = *(v47 + 24);
                if (v54 >= v53 >> 1)
                {
                  sub_1A93ABB88(v53 > 1, v54 + 1, 1);
                  v47 = v99[0];
                }

                *(v47 + 16) = v54 + 1;
                (*(v7 + 32))(v47 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v54, v15, v96);
                v48 += 4;
                --v46;
              }

              while (v46);

              v39 = v95;
              v4 = v92;
            }

            else
            {

              v47 = MEMORY[0x1E69E7CC0];
            }

            v55 = sub_1A948BDA0(v47);

            v56 = sub_1A957B558();
            v97 = 44;
            v98 = 0xE100000000000000;
            MEMORY[0x1EEE9AC00](v56, v57);
            v72[-2] = &v97;
            v60 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A948C694, &v72[-4], v58, v59, v72);
            v61 = *(v60 + 16);
            if (v61)
            {
              v92 = v55;
              v93 = v4;
              v99[0] = MEMORY[0x1E69E7CC0];
              sub_1A93ABB88(0, v61, 0);
              v62 = v99[0];
              v91 = v60;
              v63 = (v60 + 56);
              v64 = v81;
              do
              {
                v66 = *(v63 - 3);
                v65 = *(v63 - 2);
                v67 = *(v63 - 1);
                v68 = *v63;

                MEMORY[0x1AC585090](v66, v65, v67, v68);
                sub_1A957B1B8();

                v99[0] = v62;
                v70 = *(v62 + 16);
                v69 = *(v62 + 24);
                if (v70 >= v69 >> 1)
                {
                  sub_1A93ABB88(v69 > 1, v70 + 1, 1);
                  v62 = v99[0];
                }

                *(v62 + 16) = v70 + 1;
                (*(v7 + 32))(v62 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v70, v64, v96);
                v63 += 4;
                --v61;
              }

              while (v61);

              v15 = v80;
              v55 = v92;
              v4 = v93;
              v39 = v95;
            }

            else
            {

              v62 = MEMORY[0x1E69E7CC0];
            }

            v37 = sub_1A948BDA0(v62);

            sub_1A94861BC(v55);
            sub_1A94861BC(v37);
            v31 = v86;
            (*v82)(v39, v86);
            v30 = v87;
            sub_1A957D138();
            v33 = v88(v30, 1, v31);
          }

          while (v33 != 1);
        }
      }

      v18 = v79 + 1;
    }

    while (v79 + 1 != v77);
    v71 = v101;
    v16 = v100;
    a3 = v72[0];
  }

  else
  {
    v71 = MEMORY[0x1E69E7CD0];
  }

  *a3 = v71;
  a3[1] = v16;
  return result;
}

uint64_t sub_1A94861BC(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v27 - v11;
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v27 - v15;
  v17 = 0;
  v28 = a1;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v3 + 32;
  v27[2] = v3 + 16;
  v27[0] = v3 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v3 + 16))(v16, *(v28 + 48) + *(v3 + 72) * (v26 | (v25 << 6)), v2);
      (*(v3 + 32))(v8, v16, v2);
      sub_1A94265A0(v12, v8);
      result = (*(v3 + 8))(v12, v2);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94863CC(void *a1, uint64_t a2, uint64_t a3)
{
  v155 = a3;
  v4 = *a2;
  v5 = *(a2 + 8);
  v163 = *(a2 + 16);
  v164 = v4;
  v6 = *(a2 + 24);
  v157 = *(a2 + 32);
  v188 = *(a2 + 40);
  v187 = *(a2 + 48);
  v186 = *(a2 + 56);
  v185 = *(a2 + 57);
  v249 = *(a2 + 58);
  v250 = *(a2 + 62);
  v160 = *(a2 + 64);
  v161 = v6;
  v7 = *(a2 + 72);
  v183 = *(a2 + 80);
  v184 = v7;
  v8 = *(a2 + 88);
  v181 = *(a2 + 96);
  v182 = v8;
  v9 = *(a2 + 112);
  v189 = *(a2 + 104);
  v180 = v9;
  v179 = *(a2 + 120);
  v10 = *(a2 + 137);
  v247 = *(a2 + 121);
  v248[0] = v10;
  *(v248 + 11) = *(a2 + 148);
  v159 = *(a2 + 164);
  v178 = *(a2 + 168);
  v156 = *(a2 + 172);
  v177 = *(a2 + 180);
  v246 = *(a2 + 184);
  v244 = *(a2 + 185);
  v245 = *(a2 + 187);
  v176 = *(a2 + 188);
  v243 = *(a2 + 192);
  v175 = *(a2 + 193);
  v242 = *(a2 + 198);
  v241 = *(a2 + 194);
  v11 = *(a2 + 200);
  v173 = *(a2 + 208);
  v174 = v11;
  v12 = *(a2 + 216);
  v171 = *(a2 + 224);
  v172 = v12;
  v13 = *(a2 + 232);
  v169 = *(a2 + 240);
  v170 = v13;
  v14 = *(a2 + 248);
  v167 = *(a2 + 256);
  v168 = v14;
  v15 = *(a2 + 264);
  v165 = *(a2 + 272);
  v166 = v15;
  sub_1A937829C(&qword_1EB387A08, &qword_1A9591618);
  v16 = *(sub_1A957B5D8() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A95915C0;
  v149 = v19;
  v20 = v19 + v18;
  if (qword_1EB389540 != -1)
  {
    swift_once();
  }

  v21 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A937731C(v21, qword_1EB3A7870);
  v22 = a1;
  v24 = a1[3];
  v23 = a1[4];
  v148 = v22;
  v25 = sub_1A93780F4(v22, v24);
  v26 = *(v23 + 8);
  v152 = v25;
  v153 = v26;
  v154 = v24;
  v158 = v23;
  v198 = (v26)(v24, v23);
  v199 = v27;
  MEMORY[0x1AC585140](95, 0xE100000000000000);

  MEMORY[0x1AC585140](v164, v5);
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v194 = v155;
  v28 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v28);

  sub_1A957B4E8();

  if (qword_1EB38DFA8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7968);
  v198 = v164;
  v199 = v5;
  sub_1A957B4E8();

  v190 = v20;
  if (qword_1EB389550 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A78A0);
  v155 = v5;
  v198 = sub_1A957C1A8();
  v199 = v29;
  sub_1A957B4E8();

  if (qword_1EB389538 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7858);
  v198 = (v153)(v154, v158);
  v199 = v30;
  sub_1A957B4E8();

  if (qword_1EB38E000 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A79F8);
  v198 = v188;
  v199 = v187;

  sub_1A957B4E8();

  if (qword_1EB38DFB8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7980);
  LOBYTE(v194) = v186;
  v198 = CoreSynthesizer.Voice.Quality.rawValue.getter();
  v199 = v31;
  sub_1A957B4E8();

  if (qword_1EB38DFD8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A79B0);
  LOBYTE(v194) = v185;
  v198 = CoreSynthesizer.Voice.Gender.rawValue.getter();
  v199 = v32;
  sub_1A957B4E8();

  v151 = v190 - v17;
  if (qword_1EB38DFF0 != -1)
  {
    swift_once();
  }

  v158 = v21;
  sub_1A937731C(v21, qword_1EB3A79E0);
  v198 = v184;
  v199 = v183;
  v200 = v182;
  v201 = v181;
  v202 = v189;
  v203 = v180;
  LOBYTE(v204) = v179;
  v194 = CoreSynthesizer.Voice.VoiceType.rawValue.getter();
  v195 = v33;
  sub_1A957B4E8();

  v34 = v177;
  if (qword_1EB38E018 != -1)
  {
    swift_once();
  }

  v35 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  v36 = sub_1A937731C(v35, qword_1EB3A7A28);
  v153 = v142;
  v37 = *(v35 - 8);
  v38 = v37[8];
  MEMORY[0x1EEE9AC00](v36, v36);
  v154 = v39;
  v40 = v142 - v39;
  v41 = v37[2];
  v41(v142 - v39);
  if (v246)
  {
    v42 = 0;
  }

  else
  {
    v42 = v34;
  }

  v198 = v42;
  LOBYTE(v199) = v246;
  sub_1A957B4F8();
  v43 = v37[1];
  v43(v40, v35);
  if (qword_1EB38E060 != -1)
  {
    swift_once();
  }

  v44 = sub_1A937731C(v35, qword_1EB3A7AA0);
  MEMORY[0x1EEE9AC00](v44, v44);
  v45 = v142 - v154;
  v41(v142 - v154);
  v46 = v176;
  if (v243)
  {
    v46 = 0;
  }

  v162 = v17;
  v198 = v46;
  LOBYTE(v199) = v243;
  sub_1A957B4F8();
  v43(v45, v35);
  if (qword_1EB38DFC8 != -1)
  {
    swift_once();
  }

  v47 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  v48 = sub_1A937731C(v47, qword_1EB3A7998);
  v49 = *(v47 - 8);
  v50 = v49[8];
  MEMORY[0x1EEE9AC00](v48, v48);
  v52 = v142 - v51;
  v53 = v49[2];
  v154 = v47;
  v53(v142 - v51);
  if (v173)
  {
    v198 = v174;
    v199 = v173;
    v200 = v172;
    v201 = v171;
    v202 = v170;
    v54 = CoreSynthesizer.Voice.AssetIdentifier.rawValue.getter();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v198 = v54;
  v199 = v56;
  sub_1A957B4F8();

  v57 = v49[1];
  v58 = v154;
  v57(v52, v154);
  if (qword_1EB38E070 != -1)
  {
    swift_once();
  }

  v59 = sub_1A937731C(v58, qword_1EB3A7AB8);
  MEMORY[0x1EEE9AC00](v59, v59);
  v60 = v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53(v60);
  if (v168)
  {
    v198 = v169;
    v199 = v168;
    v200 = v167;
    v201 = v166;
    v202 = v165;
    v61 = CoreSynthesizer.Voice.AssetIdentifier.rawValue.getter();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = v162;
  v65 = v190;
  v198 = v61;
  v199 = v63;
  sub_1A957B4F8();

  v57(v60, v154);
  v66 = v65;
  if (qword_1EB38DFE8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v158, qword_1EB3A79C8);
  LOBYTE(v194) = v175;
  v198 = CoreSynthesizer.Voice.State.rawValue.getter();
  v199 = v67;
  sub_1A957B4E8();

  v68 = v161;
  v69 = v189;
  v70 = v178;
  if (qword_1EB38ECD8 != -1)
  {
    swift_once();
  }

  v71 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A937731C(v71, qword_1EB3A7B20);
  v73 = v159;
  v72 = v160;
  if (v160 < 0)
  {
    __break(1u);
  }

  else
  {
    v152 = v71;
    v198 = v160;
    sub_1A957B4E8();
    if (qword_1EB38E008 == -1)
    {
      goto LABEL_42;
    }
  }

  swift_once();
LABEL_42:
  v74 = v152;
  sub_1A937731C(v152, qword_1EB3A7A10);
  v198 = v70;
  sub_1A957B4E8();
  if (qword_1EB38E020 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v74, qword_1EB3A7A40);
  v198 = v73;
  sub_1A957B4E8();
  v75 = v73;
  v153 = (v66 + 16 * v64);
  if (qword_1EB38E030 != -1)
  {
    swift_once();
  }

  v76 = v158;
  v151 = sub_1A937731C(v158, qword_1EB3A7A58);
  v207 = v249;
  v208 = v250;
  v223 = v246;
  v224 = v244;
  v225 = v245;
  v227 = v243;
  v230 = v242;
  v229 = v241;
  v217 = v247;
  v198 = v164;
  v199 = v155;
  v200 = v163;
  v201 = v68;
  v202 = v157;
  v203 = v188;
  v204 = v187;
  v205 = v186;
  v206 = v185;
  v209 = v72;
  v210 = v184;
  v211 = v183;
  v212 = v182;
  v213 = v181;
  v214 = v69;
  v215 = v180;
  v216 = v179;
  *v218 = v248[0];
  *&v218[11] = *(v248 + 11);
  v219 = v75;
  v220 = v178;
  v221 = v156;
  v222 = v177;
  v226 = v176;
  v228 = v175;
  v231 = v174;
  v232 = v173;
  v233 = v172;
  v234 = v171;
  v235 = v170;
  v236 = v169;
  v237 = v168;
  v238 = v167;
  v239 = v166;
  v240 = v165;
  CoreSynthesizer.Voice.primaryLocales.getter(&v194);
  v77 = v196;
  v78 = v197;
  v79 = sub_1A93780F4(&v194, v196);
  v80 = MEMORY[0x1E69E6158];
  v191 = sub_1A9386128(sub_1A948C674, 0, v77, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v78, MEMORY[0x1E69E7410], v79);
  v81 = sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  v82 = sub_1A93B744C(&qword_1EB385F80, &qword_1EB386B68, &qword_1A9591620);
  v83 = sub_1A957C088();
  v85 = v84;

  sub_1A9378138(&v194);
  v198 = v83;
  v199 = v85;
  sub_1A957B4E8();

  v153 = (v190 + 17 * v162);
  if (qword_1EB389548 != -1)
  {
    swift_once();
  }

  v147 = sub_1A937731C(v76, qword_1EB3A7888);
  v207 = v249;
  v208 = v250;
  v223 = v246;
  v224 = v244;
  v225 = v245;
  v227 = v243;
  v230 = v242;
  v229 = v241;
  v217 = v247;
  v198 = v164;
  v199 = v155;
  v200 = v163;
  v201 = v161;
  v202 = v157;
  v203 = v188;
  v204 = v187;
  v205 = v186;
  v206 = v185;
  v209 = v160;
  v210 = v184;
  v211 = v183;
  v212 = v182;
  v213 = v181;
  v214 = v189;
  v215 = v180;
  v216 = v179;
  *v218 = v248[0];
  *&v218[11] = *(v248 + 11);
  v219 = v159;
  v220 = v178;
  v221 = v156;
  v222 = v177;
  v226 = v176;
  v228 = v175;
  v231 = v174;
  v232 = v173;
  v233 = v172;
  v234 = v171;
  v235 = v170;
  v236 = v169;
  v237 = v168;
  v238 = v167;
  v239 = v166;
  v240 = v165;
  CoreSynthesizer.Voice.secondaryLocales.getter(&v194);
  v86 = v196;
  v87 = v197;
  v88 = sub_1A93780F4(&v194, v196);
  v191 = sub_1A9386128(sub_1A932D0F4, 0, v86, v80, MEMORY[0x1E69E73E0], v87, MEMORY[0x1E69E7410], v88);
  v150 = v81;
  v151 = v82;
  v89 = sub_1A957C088();
  v91 = v90;

  sub_1A9378138(&v194);
  v198 = v89;
  v199 = v91;
  sub_1A957B4E8();

  if (qword_1EB38E050 != -1)
  {
    swift_once();
  }

  v92 = sub_1A937731C(v76, qword_1EB3A7A88);
  v145 = v142;
  v93 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92, v92);
  v153 = v94;
  v95 = *(v94 + 16);
  v144 = v142 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v95;
  v147 = v94 + 16;
  v95();
  v207 = v249;
  v208 = v250;
  v223 = v246;
  v224 = v244;
  v225 = v245;
  v227 = v243;
  v230 = v242;
  v229 = v241;
  v217 = v247;
  v198 = v164;
  v199 = v155;
  v200 = v163;
  v201 = v161;
  v202 = v157;
  v203 = v188;
  v204 = v187;
  v205 = v186;
  v206 = v185;
  v209 = v160;
  v210 = v184;
  v211 = v183;
  v212 = v182;
  v213 = v181;
  v214 = v189;
  v215 = v180;
  v216 = v179;
  *v218 = v248[0];
  *&v218[11] = *(v248 + 11);
  v219 = v159;
  v220 = v178;
  v221 = v156;
  v222 = v177;
  v226 = v176;
  v228 = v175;
  v231 = v174;
  v232 = v173;
  v233 = v172;
  v234 = v171;
  v235 = v170;
  v236 = v169;
  v237 = v168;
  v238 = v167;
  v239 = v166;
  v240 = v165;
  CoreSynthesizer.Voice.locales.getter(&v194);
  v96 = v197;
  sub_1A93780F4(&v194, v196);
  v97 = *(v96 + 8);
  v98 = sub_1A957C3D8();
  v99 = *(v98 + 16);
  if (v99)
  {
    v143 = v93;
    v193 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v99, 0);
    v100 = v193;
    v142[1] = v98;
    v101 = (v98 + 40);
    do
    {
      v103 = *(v101 - 1);
      v102 = *v101;
      v191 = 95;
      v192 = 0xE100000000000000;

      MEMORY[0x1AC585140](v103, v102);
      MEMORY[0x1AC585140](95, 0xE100000000000000);

      v104 = v191;
      v105 = v192;
      v193 = v100;
      v107 = *(v100 + 16);
      v106 = *(v100 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_1A93ABB68((v106 > 1), v107 + 1, 1);
        v100 = v193;
      }

      *(v100 + 16) = v107 + 1;
      v108 = v100 + 16 * v107;
      *(v108 + 32) = v104;
      *(v108 + 40) = v105;
      v101 += 2;
      --v99;
    }

    while (v99);

    v93 = v143;
  }

  else
  {

    v100 = MEMORY[0x1E69E7CC0];
  }

  sub_1A9378138(&v194);
  v198 = v100;
  v109 = sub_1A957C088();
  v111 = v110;

  v198 = v109;
  v199 = v111;
  v112 = v144;
  sub_1A957B4E8();

  v113 = v153 + 1;
  v114 = v112;
  v115 = v158;
  v144 = v153[1];
  (v144)(v114, v158);
  if (qword_1EB38E080 != -1)
  {
    swift_once();
  }

  v116 = sub_1A937731C(v115, qword_1EB3A7AD0);
  v145 = v142;
  MEMORY[0x1EEE9AC00](v116, v116);
  v143 = v142 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146();
  v117 = v163;
  v118 = *(v163 + 16);
  v119 = MEMORY[0x1E69E7CC0];
  if (v118)
  {
    v153 = v113;
    v194 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v118, 0);
    v119 = v194;
    v120 = (v117 + 40);
    do
    {
      v121 = *(v120 - 1);
      v122 = *v120;
      v198 = 95;
      v199 = 0xE100000000000000;
      v123 = sub_1A957C1A8();
      v125 = v124;

      MEMORY[0x1AC585140](v123, v125);

      MEMORY[0x1AC585140](95, 0xE100000000000000);

      v126 = v198;
      v127 = v199;
      v194 = v119;
      v129 = *(v119 + 16);
      v128 = *(v119 + 24);
      if (v129 >= v128 >> 1)
      {
        sub_1A93ABB68((v128 > 1), v129 + 1, 1);
        v119 = v194;
      }

      *(v119 + 16) = v129 + 1;
      v130 = v119 + 16 * v129;
      *(v130 + 32) = v126;
      *(v130 + 40) = v127;
      v120 += 2;
      --v118;
    }

    while (v118);
  }

  v198 = v119;
  v131 = sub_1A957C088();
  v133 = v132;

  v198 = v131;
  v199 = v133;
  v134 = v143;
  sub_1A957B4E8();

  (v144)(v134, v158);
  if (qword_1EB38E040 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v152, qword_1EB3A7A70);
  v135 = v148[3];
  v136 = v148[4];
  sub_1A93780F4(v148, v135);
  v198 = (*(v136 + 32))(v135, v136);
  sub_1A957B4E8();
  if (qword_1EB38DF98 != -1)
  {
    swift_once();
  }

  v137 = v154;
  sub_1A937731C(v154, qword_1EB3A7950);
  v198 = v164;
  v199 = v155;
  v138 = v161;
  v200 = v163;
  v201 = v161;
  v217 = v247;
  v139 = v157;
  v202 = v157;
  v203 = v188;
  v204 = v187;
  v205 = v186;
  v206 = v185;
  v207 = v249;
  v208 = v250;
  v209 = v160;
  v210 = v184;
  v211 = v183;
  v212 = v182;
  v213 = v181;
  v214 = v189;
  v215 = v180;
  v216 = v179;
  *v218 = v248[0];
  *&v218[11] = *(v248 + 11);
  v219 = v159;
  v220 = v178;
  v221 = v156;
  v222 = v177;
  v223 = v246;
  v224 = v244;
  v225 = v245;
  v226 = v176;
  v227 = v243;
  v228 = v175;
  v230 = v242;
  v229 = v241;
  v231 = v174;
  v232 = v173;
  v233 = v172;
  v234 = v171;
  v235 = v170;
  v236 = v169;
  v237 = v168;
  v238 = v167;
  v239 = v166;
  v240 = v165;
  v194 = CoreSynthesizer.Voice.talentGroupKey.getter();
  v195 = v140;
  sub_1A957B4F8();

  if (qword_1EB38E090 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v137, qword_1EB3A7AE8);
  v198 = v138;
  v199 = v139;

  sub_1A957B4F8();

  return v149;
}

uint64_t sub_1A9487F14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A957B2E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v19 - v11;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v3 + 8))(v7, v2);
  v13 = sub_1A957B188();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    result = sub_1A937B960(v12, &qword_1EB386A68, &qword_1A9587F40);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_1A957B148();
    v17 = v18;
    result = (*(v14 + 8))(v12, v13);
  }

  *a1 = v16;
  a1[1] = v17;
  return result;
}

uint64_t sub_1A94880F8()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7870);
  sub_1A937731C(v0, qword_1EB3A7870);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488194()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7968);
  sub_1A937731C(v0, qword_1EB3A7968);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A948823C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A78A0);
  sub_1A937731C(v0, qword_1EB3A78A0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A94882EC()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7858);
  sub_1A937731C(v0, qword_1EB3A7858);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488394()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79F8);
  sub_1A937731C(v0, qword_1EB3A79F8);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488434()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7980);
  sub_1A937731C(v0, qword_1EB3A7980);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A94884DC()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7AD0);
  sub_1A937731C(v0, qword_1EB3A7AD0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A948858C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79B0);
  sub_1A937731C(v0, qword_1EB3A79B0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488630()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79E0);
  sub_1A937731C(v0, qword_1EB3A79E0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A94886D0()
{
  v0 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  sub_1A9377618(v0, qword_1EB3A7A28);
  sub_1A937731C(v0, qword_1EB3A7A28);
  sub_1A93B744C(&qword_1EB386348, &qword_1EB3879E0, &qword_1A95915D8);
  return sub_1A957B458();
}

uint64_t sub_1A9488784()
{
  v0 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  sub_1A9377618(v0, qword_1EB3A7AA0);
  sub_1A937731C(v0, qword_1EB3A7AA0);
  sub_1A93B744C(&qword_1EB386348, &qword_1EB3879E0, &qword_1A95915D8);
  return sub_1A957B458();
}

uint64_t sub_1A9488838()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7998);
  sub_1A937731C(v0, qword_1EB3A7998);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0);
  return sub_1A957B458();
}

uint64_t sub_1A94888E0()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7AB8);
  sub_1A937731C(v0, qword_1EB3A7AB8);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0);
  return sub_1A957B458();
}

uint64_t sub_1A9488990()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79C8);
  sub_1A937731C(v0, qword_1EB3A79C8);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488A34()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A40);
  sub_1A937731C(v0, qword_1EB3A7A40);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8);
  return sub_1A957B458();
}

uint64_t sub_1A9488AE8()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A10);
  sub_1A937731C(v0, qword_1EB3A7A10);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8);
  return sub_1A957B458();
}

uint64_t sub_1A9488B9C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7A58);
  sub_1A937731C(v0, qword_1EB3A7A58);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488C50()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7888);
  sub_1A937731C(v0, qword_1EB3A7888);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488D04()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7A88);
  sub_1A937731C(v0, qword_1EB3A7A88);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0);
  return sub_1A957B458();
}

uint64_t sub_1A9488DB0()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7B20);
  sub_1A937731C(v0, qword_1EB3A7B20);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8);
  return sub_1A957B458();
}

uint64_t sub_1A9488E54()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A70);
  sub_1A937731C(v0, qword_1EB3A7A70);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8);
  return sub_1A957B458();
}

uint64_t sub_1A9488F08()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7950);
  sub_1A937731C(v0, qword_1EB3A7950);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0);
  return sub_1A957B458();
}

uint64_t sub_1A9488FB0()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7AE8);
  sub_1A937731C(v0, qword_1EB3A7AE8);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0);
  return sub_1A957B458();
}

uint64_t SQLiteVoiceBackingStore.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLiteVoiceBackingStore.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A94890F0(const void *a1)
{
  v2 = sub_1A957B018();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A957ADB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  memcpy(v28, a1, sizeof(v28));
  v11 = sub_1A957ADF8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1A957ADE8();
  sub_1A937829C(&qword_1EB387A10, &qword_1A9591628);
  v14 = *(v8 + 72);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A9587160;
  sub_1A957ADA8();
  v27 = v16;
  sub_1A948BD3C(&qword_1EB386250, MEMORY[0x1E6967F78]);
  sub_1A937829C(&qword_1EB387A18, &qword_1A9591630);
  sub_1A93B744C(&unk_1EB385FA0, &qword_1EB387A18, &qword_1A9591630);
  sub_1A957CE08();
  sub_1A957ADC8();
  sub_1A948C450();
  v17 = sub_1A957ADD8();
  v19 = v17;
  v20 = v18;
  if (v18 >> 62 == 2)
  {
    v21 = *(v17 + 16);
  }

  v22 = 0xCBF29CE484222325;
  sub_1A9450950(v17, v18);
  sub_1A957B028();
  for (i = sub_1A957B008(); (i & 0x100) == 0; i = sub_1A957B008())
  {
    v22 = 0x100000001B3 * (v22 ^ i);
  }

  sub_1A9442638(v19, v20);
  (*(v26 + 8))(v6, v2);
  return v22;
}

uint64_t sub_1A94894A4(uint64_t a1)
{
  v2 = sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey);
  v3 = sub_1A948BD3C(&qword_1EB387AF8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A9489560(uint64_t a1)
{
  v2 = sub_1A948BD3C(&qword_1EB387AE8, type metadata accessor for FileProtectionType);
  v3 = sub_1A948BD3C(&qword_1EB387AF0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A948961C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387AA0, &qword_1A9591770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[36 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 288 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387A80, &unk_1A9591748);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A948976C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  v7 = sub_1A957D548();
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
    if (v12 || (sub_1A957D3E8() & 1) != 0)
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
    sub_1A93AB790();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1A94898A8(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1A94898A8(unint64_t result)
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

    v9 = sub_1A957CE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1A957D4F8();

        sub_1A957C228();
        v15 = sub_1A957D548();

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

void *sub_1A9489B98(void *a1, int64_t a2, char a3)
{
  result = sub_1A9489C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A9489BB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A9489D38(a1, a2, a3, *v3, &qword_1EB387A00, &qword_1A9591610, MEMORY[0x1EEE94788]);
  *v3 = result;
  return result;
}

void *sub_1A9489C04(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387A88, &qword_1A9591758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387A90, &qword_1A9591760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A9489D38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A9489F14(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v4 = sub_1A957D548();

  return sub_1A948A0A4(a1, v4);
}

unint64_t sub_1A9489FA8(uint64_t a1)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = *(v1 + 40);
  sub_1A948C16C();
  v3 = sub_1A957C058();
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = v7;
  v10 = v8;
  return sub_1A948A1A8(v9, v3);
}

unint64_t sub_1A948A03C(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1A942C394();
  v3 = sub_1A957C058();
  return sub_1A948A2C4(a1, v3);
}

unint64_t sub_1A948A0A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A957C0F8();
      v9 = v8;
      if (v7 == sub_1A957C0F8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1A957D3E8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A948A1A8(__int128 *a1, uint64_t a2)
{
  v17 = *a1;
  v18 = a1[1];
  v3 = a1[2];
  v19 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v10 = *v7;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      v13 = *(v7 + 24);
      v14 = *(v7 + 32);
      v15 = *(v7 + 40);
      v16 = *(v7 + 48);
      sub_1A93B10F0(*v7, v11, v12, v13, v14, v15, v16);
      sub_1A93B72DC();
      v8 = sub_1A957C098();
      sub_1A93B183C(v10, v11, v12, v13, v14, v15, v16);
      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A948A2C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A93B1F40();
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_1A957C098())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void (*sub_1A948A38C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1A948BBCC(v8);
  v8[9] = sub_1A948B838(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A948A438;
}

void sub_1A948A438(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1A948A498(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1AC584A20](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1AC584A30]();
    v15 = *(sub_1A957B308() - 8);
    sub_1A948B498(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(sub_1A957B308() - 8);
    v18 = sub_1A948A9F0(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1A948A5EC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v13 = sub_1A957D548();

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
        result = (v18 + 280 * v3);
        v19 = (v18 + 280 * v6);
        if (v3 != v6 || result >= v19 + 280)
        {
          result = memmove(result, v19, 0x118uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A948A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v32 = a2;
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770]);
  v31[1] = a1;
  result = sub_1A957C058();
  v16 = 1 << *a4;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v18 & result;
    v20 = sub_1A957BAF8();
    *&v37 = a4;
    *(&v37 + 1) = a5;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    *&v39 = v21;
    *(&v39 + 1) = v22;
    v40 = 0;
    v23 = sub_1A957BB18();
    if ((v24 & 1) == 0)
    {
      v27 = *(v9 + 16);
      v26 = v9 + 16;
      v25 = v27;
      v28 = *(v26 + 56);
      do
      {
        v25(v13, v32 + v28 * v23, v8);
        sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770]);
        v29 = sub_1A957C098();
        (*(v26 - 8))(v13, v8);
        if (v29)
        {
          break;
        }

        sub_1A957BB38();
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v23 = sub_1A957BB18();
      }

      while ((v30 & 1) == 0);
    }

    return v23;
  }

  return result;
}

size_t sub_1A948A9F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A957B308();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v30 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v26 - v12;
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1A93ABB88(0, a2 & ~(a2 >> 63), 0);
  v15 = v37;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v28 = a2;
    v29 = v2;
    v16 = 0;
    v33 = (v6 + 8);
    v26[1] = v6 + 32;
    v27 = a1;
    v17 = *(v6 + 16);
    v18 = *(v6 + 72);
    v34 = v17;
    v35 = v6 + 16;
    do
    {
      v31 = v16;
      v32 = v16 + 1;
      v17(v13, (a1 + v18 * v16), v5);
      v19 = *(v15 + 16) + 1;
      v36 = v15;
      while (--v19)
      {
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770]);
        v15 += v18;
        if (sub_1A957C098())
        {
          (*v33)(v13, v5);
          a2 = v31;
          goto LABEL_11;
        }
      }

      v21 = v30;
      v34(v30, v13, v5);
      v37 = v36;
      v23 = *(v36 + 16);
      v22 = *(v36 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1A93ABB88(v22 > 1, v23 + 1, 1);
        v21 = v30;
      }

      (*(v6 + 8))(v13, v5);
      v24 = v37;
      *(v37 + 16) = v23 + 1;
      v25 = v21;
      v15 = v24;
      (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v23 * v18, v25, v5);
      a1 = v27;
      a2 = v28;
      v16 = v32;
      v17 = v34;
    }

    while (v32 != v28);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A948ACDC(uint64_t a1)
{
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = v1 + 1;
  v10 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A93ABB88(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1A93ABB88(v12 > 1, v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  result = (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v8, v3);
  v1[1] = v10;
  v15 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1AC584A00](*(v15 + 16) & 0x3FLL) > v13)
    {
      v16 = *v1;
      result = swift_isUniquelyReferenced_native();
      v17 = *v1;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = *v1;
        v19 = sub_1A957BB58();

        *v1 = v19;
        v17 = v19;
      }

      if (v17)
      {
        v20 = *(v17 + 16);
        v21 = *(*v9 + 16) + ~(*(v17 + 24) >> 6);
        return sub_1A957BB08();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return sub_1A948AF24();
}

uint64_t sub_1A948AF24()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1AC584A20](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A948AFC4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A948AFC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1AC584A20](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1AC584A30](v8, a4);
    sub_1A948B044(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1A948B0E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v6 = sub_1A957B308();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  if (a2)
  {
    if ((v41 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v15 = *(v10 + 16);
      v14 = v10 + 16;
      v29 = *(v14 + 56);
      v30 = v15;
      v31 = v14;
      v28 = (v14 - 8);
      v15(v12, v33, v6);
      while (1)
      {
        v16 = *a3;
        sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770]);
        result = sub_1A957C058();
        v17 = 1 << *a3;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          break;
        }

        v20 = v19 & result;
        v21 = v32;
        v22 = sub_1A957BAF8();
        v24 = v23;
        v26 = v25;
        (*v28)(v12, v6);
        v34 = a3;
        v35 = v21;
        v36 = v20;
        v37 = v22;
        v38 = v24;
        v39 = v26;
        v40 = 0;
        while (v37)
        {
          sub_1A957BB38();
        }

        result = sub_1A957BB28();
        if (++v13 == v41)
        {
          return result;
        }

        v30(v12, v33 + v29 * v13, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1A948B2F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
      v7 = *(sub_1A957B308() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_1A957B308() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1A948B498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v46 = a1;
  v7 = sub_1A957B308();
  v39 = *(v7 - 8);
  v8 = v39[8];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v35 - v15;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v35 = v4;
    v17 = 0;
    v18 = (v39 + 1);
    v37 = a2;
    v36 = a3;
    while (1)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v40 = v17 + 1;
      v19 = v39[9];
      v45 = v17;
      v56 = v19;
      v20 = v39[2];
      v47 = v46 + v19 * v17;
      v20(v16);
      v21 = *a3;
      sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770]);
      result = sub_1A957C058();
      v22 = 1 << *a3;
      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v23)
      {
        goto LABEL_15;
      }

      v44 = v24 & result;
      v25 = v38;
      v26 = sub_1A957BAF8();
      v42 = v27;
      v43 = v26;
      v41 = v28;
      v29 = *v18;
      (*v18)(v16, v7);
      *&v48 = a3;
      *(&v48 + 1) = v25;
      *&v49 = v44;
      *(&v49 + 1) = v43;
      *&v50 = v42;
      *(&v50 + 1) = v41;
      v51 = 0;
      v55 = 0;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v30 = sub_1A957BB18();
      v31 = v46;
      if ((v32 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1A957BB28();
      v17 = v40;
      a3 = v36;
      if (v40 == v37)
      {
        return 1;
      }
    }

    while (1)
    {
      (v20)(v16, v31 + v30 * v56, v7);
      (v20)(v12, v47, v7);
      sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770]);
      v33 = sub_1A957C098();
      v29(v12, v7);
      v29(v16, v7);
      if (v33)
      {
        return 0;
      }

      sub_1A957BB38();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
      v30 = sub_1A957BB18();
      if (v34)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void (*sub_1A948B838(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x7D0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[247] = v4;
  v10[246] = a3;
  v10[245] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 1992) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A93ED3EC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A93EBE70(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[248] = v13;
  if (v19)
  {
    memmove(v11 + 105, (*(*v5 + 56) + 280 * v13), 0x118uLL);
    nullsub_23(v11 + 105);
    memcpy(v11 + 70, v11 + 105, 0x118uLL);
  }

  else
  {
    sub_1A93847E0((v11 + 70));
  }

  return sub_1A948B9BC;
}

void sub_1A948B9BC(uint64_t *a1, char a2)
{
  v3 = *a1;
  memcpy((*a1 + 1120), (*a1 + 560), 0x118uLL);
  memcpy((v3 + 840), (v3 + 560), 0x118uLL);
  v4 = sub_1A932D058(v3 + 840);
  LOBYTE(v5) = *(v3 + 1992);
  v6 = v4 == 1;
  if (a2)
  {
    if (v4 == 1)
    {
      goto LABEL_9;
    }

    v7 = *(v3 + 1984);
    v8 = *(v3 + 1976);
    if (*(v3 + 1992))
    {
      goto LABEL_12;
    }

    v9 = *(v3 + 1968);
    v10 = *(v3 + 1960);
    v11 = *v8;
    memcpy(v3, (v3 + 1120), 0x118uLL);
    v11[(v7 >> 6) + 8] |= 1 << v7;
    v12 = (v11[6] + 16 * v7);
    *v12 = v10;
    v12[1] = v9;
    memcpy((v11[7] + 280 * v7), v3, 0x118uLL);
    v13 = v11[2];
    v14 = __OFADD__(v13, 1);
    v5 = v13 + 1;
    v6 = v5 == 0;
    if (!v14)
    {
LABEL_14:
      v21 = *(v3 + 1968);
      v11[2] = v5;

      goto LABEL_15;
    }

    __break(1u);
  }

  if (v6)
  {
LABEL_9:
    if (v5)
    {
      v15 = *(v3 + 1984);
      v16 = **(v3 + 1976);
      sub_1A948C1C0(*(v16 + 48) + 16 * v15);
      sub_1A948A5EC(v15, v16);
    }

    goto LABEL_15;
  }

  v7 = *(v3 + 1984);
  v8 = *(v3 + 1976);
  if ((v5 & 1) == 0)
  {
    v17 = *(v3 + 1968);
    v18 = *(v3 + 1960);
    v11 = *v8;
    memcpy((v3 + 280), (v3 + 1120), 0x118uLL);
    v11[(v7 >> 6) + 8] |= 1 << v7;
    v19 = (v11[6] + 16 * v7);
    *v19 = v18;
    v19[1] = v17;
    memcpy((v11[7] + 280 * v7), (v3 + 280), 0x118uLL);
    v20 = v11[2];
    v14 = __OFADD__(v20, 1);
    v5 = v20 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  memmove((*(*v8 + 56) + 280 * v7), (v3 + 1120), 0x118uLL);
LABEL_15:
  memcpy((v3 + 1400), (v3 + 560), 0x118uLL);
  sub_1A9391BAC(v3 + 1120, v3 + 1680, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960(v3 + 1400, &unk_1EB387BC0, &qword_1A9587E30);

  free(v3);
}

uint64_t (*sub_1A948BBCC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A948BBF4;
}

unint64_t sub_1A948BC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A30, &qword_1A95916D8);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, &v11, &qword_1EB387A28, &unk_1A95916C8);
      v5 = v11;
      result = sub_1A9489F14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A93981D4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A948BD3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A948BDA0(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770]);
  result = MEMORY[0x1AC585770](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_1A94265A0(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1A948BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1A93B183C(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

unint64_t sub_1A948BF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A70, &unk_1A9591730);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A948A03C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A948C038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A68, &qword_1A9591728);
    v3 = sub_1A957D128();

    for (i = a1 + 48; ; i += 64)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 40);
      *&v18 = *(i - 16);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v8;
      *(&v20 + 1) = v9;
      v21 = *(i + 32);
      sub_1A93B10F0(v18, v5, v6, v7, v8, v9, v21);
      result = sub_1A9489FA8(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A948C16C()
{
  result = qword_1ED96FDC0;
  if (!qword_1ED96FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FDC0);
  }

  return result;
}

uint64_t sub_1A948C238@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  result = sub_1A94890F0(__dst);
  if ((v8 & 1) != 0 && (memcpy(__srca, __dst, 0x118uLL), result = CoreSynthesizer.Voice.hashValue.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v6[3];
    v11 = v6[4];
    sub_1A93780F4(v6, v10);
    *&__srca[0] = (*(v11 + 8))(v10, v11);
    *(&__srca[0] + 1) = v12;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](__dst[0], __dst[1]);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v16[0] = v9;
    v13 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v13);

    v14 = __srca[0];
    v15 = *v5;

    LOBYTE(v11) = sub_1A93A8204(v14, *(&v14 + 1), v15);

    if (v11)
    {
      sub_1A948976C(v14, *(&v14 + 1));

      sub_1A948C424(__srca);
      return memcpy(a2, __srca, 0x120uLL);
    }

    else
    {

      memcpy(__srca, v19, 0x118uLL);
      *(&__srca[17] + 1) = v9;
      nullsub_23(__srca);
      memcpy(a2, __srca, 0x120uLL);
      return sub_1A937B3DC(__dst, v16);
    }
  }

  return result;
}

double sub_1A948C424(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1A948C450()
{
  result = qword_1EB3860C8;
  if (!qword_1EB3860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860C8);
  }

  return result;
}

uint64_t TTSMarkup.ForEach.context.getter@<X0>(void *a1@<X8>)
{
  sub_1A93ADE40(v1 + 8, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    sub_1A93780F4(v8, v9);
    (*(v4 + 24))(&v7, v3, v4);
    v5 = v7;
    result = sub_1A9378138(v8);
    *a1 = v5;
  }

  else
  {
    sub_1A9383404(v8);
    return SpeechContext.init<each A>(_:)(v8, 0, v8, a1);
  }

  return result;
}

uint64_t sub_1A948C758@<X0>(void *a1@<X8>)
{
  result = TTSMarkup.ForEach.context.getter(&v3);
  *a1 = v3;
  return result;
}

void (*TTSMarkup.ForEach.context.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1A93ADE40(v1 + 8, v3);
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];
    sub_1A93780F4(v4, v4[3]);
    (*(v6 + 24))(&v9, v5, v6);
    v7 = v9;
    sub_1A9378138(v4);
    v4[5] = v7;
  }

  else
  {
    sub_1A9383404(v4);
    SpeechContext.init<each A>(_:)(v4, 0, v4, v4 + 5);
  }

  return sub_1A948C890;
}

void sub_1A948C890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  free(v1);
}

double TTSMarkup.ForEach.init(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A9381740(MEMORY[0x1E69E7CC0]);

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t static TTSMarkup.ForEach.tag.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB387B00;
  return result;
}

uint64_t static TTSMarkup.ForEach.tag.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB387B00 = v1;
  return result;
}

uint64_t sub_1A948C9FC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB387B00;
  return result;
}

uint64_t sub_1A948CA48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB387B00 = v1;
  return result;
}

uint64_t TTSMarkup.ForEach.attributes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TTSMarkup.ForEach.init<A>(_:iterationBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0;
  *(a5 + 8) = 0u;
  v17[0] = a1;
  v16[2] = a4;
  v16[3] = a2;
  v16[4] = a3;
  v10 = sub_1A957C578();
  v11 = sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A9386128(sub_1A948D284, v16, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v17[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v17[4] = &protocol witness table for <A> [A];
  v17[0] = v14;
  return sub_1A93A38D8(v17, a5 + 8);
}

uint64_t TTSMarkup.ForEach.init(speeches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v5[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v5[4] = &protocol witness table for <A> [A];
  v5[0] = a1;
  return sub_1A93A38D8(v5, a2 + 8);
}

uint64_t TTSMarkup.ForEach.ssml.getter()
{
  sub_1A93ADE40(v0 + 8, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_1A93780F4(v4, v5);
    v1 = (*(v2 + 64))(v1, v2);
    sub_1A9378138(v4);
  }

  else
  {
    sub_1A9383404(v4);
  }

  return v1;
}

uint64_t TTSMarkup.ForEach.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A93ADE40(v3 + 8, v10);
  v7 = v11;
  if (!v11)
  {
    return sub_1A9383404(v10);
  }

  v8 = v12;
  sub_1A93780F4(v10, v11);
  (*(v8 + 72))(a1, a2, a3, v7, v8);
  return sub_1A9378138(v10);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A948CE28, 0, 0);
}

uint64_t sub_1A948CE28()
{
  v1 = v0[10];
  sub_1A93ADE40(v1 + 8, (v0 + 2));
  v2 = v0[5];
  result = sub_1A9383404((v0 + 2));
  if (v2)
  {
    if (*(v0[10] + 32))
    {
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1A948CF28;
      v5 = v0[8];
      v6 = v0[9];
      v7 = v0[7];

      return TTSMarkupAsyncVisitor.visit(_:)(v1 + 8, v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1A948CF28()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void (*sub_1A948D028(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTSMarkup.ForEach.context.modify(v2);
  return sub_1A948D098;
}

void sub_1A948D098(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A948D0F8()
{
  sub_1A93ADE40(v0 + 8, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_1A93780F4(v4, v5);
    v1 = (*(v2 + 64))(v1, v2);
    sub_1A9378138(v4);
  }

  else
  {
    sub_1A9383404(v4);
  }

  return v1;
}

uint64_t sub_1A948D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9382328;

  return TTSMarkup.ForEach.accept<A>(_:)(a1, a2, a3);
}

double sub_1A948D240@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A9381740(MEMORY[0x1E69E7CC0]);

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1A948D284()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t TTSMarkup.GenericSpeechElement.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v27, 0, v27, v24);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v4 = MEMORY[0x1E69E7D40];
  v24[3] = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v3);
  v24[1] = (*((*v4 & *a1) + 0xD0))();
  v24[2] = v5;
  v17 = a1;
  v6 = (*((*v4 & *a1) + 0x100))();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC585DE0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v19);

      if (v20)
      {
        sub_1A932D070(&v19, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A93ADC90(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_1A93ADC90((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        sub_1A932D070(&v21, &v10[5 * v15 + 4]);
      }

      else
      {
        sub_1A9383404(&v19);
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v22 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v23 = &protocol witness table for <A> [A];

  *&v21 = v10;
  sub_1A93A38D8(&v21, v25);
  sub_1A948DA50(v24, a2);
  return sub_1A948DA88(v24);
}

uint64_t TTSMarkup.GenericSpeechElement.tag.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TTSMarkup.GenericSpeechElement.tag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

double TTSMarkup.GenericSpeechElement.init(tag:attributes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  SpeechContext.init<each A>(_:)(v9, 0, v9, a4);
  *(a4 + 64) = 0;
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.init(tag:attributes:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a5;
  v10 = SpeechContext.init<each A>(_:)(v13, 0, v13, a5);
  *(v9 + 32) = 0u;
  v9 += 32;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0u;
  *(v9 - 24) = a1;
  *(v9 - 16) = a2;
  *(v9 - 8) = a3;
  a4(v12, v10);
  return sub_1A93A38D8(v12, v9);
}

uint64_t TTSMarkup.GenericSpeechElement.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))(v3);
}

{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t sub_1A948D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.GenericSpeechElement.accept<A>(_:)(a1, a2, a3);
}

__n128 sub_1A948DAB8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A948DADC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A948DB24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreSynthesizer.Voice.cannonicId.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 56) <= 1u && *(v0 + 56))
  {

    goto LABEL_6;
  }

  v3 = sub_1A957D3E8();

  if (v3)
  {
LABEL_6:
    sub_1A957C0F8();
    sub_1A957C0F8();
    sub_1A93820F4();

    v2 = sub_1A957CD08();

    return v2;
  }

  return v2;
}

uint64_t sub_1A948DD60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65707974627573;
    }

    else
    {
      v5 = 1701869940;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x74636166756E616DLL;
    v4 = 0xEC00000072657275;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x7367616C66;
  }

  else
  {
    v5 = 0x73614D7367616C66;
    v4 = 0xE90000000000006BLL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x65707974627573;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x74636166756E616DLL;
    v6 = 0xEC00000072657275;
    v7 = 0xE500000000000000;
    v8 = 0x7367616C66;
    if (a2 != 3)
    {
      v8 = 0x73614D7367616C66;
      v7 = 0xE90000000000006BLL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A957D3E8();
  }

  return v12 & 1;
}

uint64_t sub_1A948DEE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F632D7265707573;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xED0000746361706DLL;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746361706D6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6465636E61686E65;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6D75696D657270;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F632D7265707573;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xED0000746361706DLL;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6465636E61686E65;
    if (a2 != 3)
    {
      v6 = 0x6D75696D657270;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x746361706D6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A948E080(__int128 *a1, __int128 *a2)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(a1 + 48);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 48);
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C438();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A957D3E8();
  }

  return v2 & 1;
}

uint64_t sub_1A948E15C()
{
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C438();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A957D3E8();
  }

  return v1 & 1;
}

uint64_t sub_1A948E20C(__int128 *a1, __int128 *a2)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 4);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C438();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A957D3E8();
  }

  return v2 & 1;
}

uint64_t sub_1A948E2D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C617275656ELL;
    }

    else
    {
      v3 = 0x6E6F6870797267;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x58416C617275656ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0x646E6172626E6F6ELL;
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C61727574616ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C617275656ELL;
    }

    else
    {
      v9 = 0x6E6F6870797267;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x646E6172626E6F6ELL;
    v6 = 0xEA00000000006465;
    if (a2 != 3)
    {
      v5 = 0x6C61727574616ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x58416C617275656ELL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t CoreSynthesizer.Voice.supersedingVoiceIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CoreSynthesizer.Voice.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CoreSynthesizer.Voice.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 120);
  *(a1 + 48) = v8;
  return sub_1A93B10F0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CoreSynthesizer.Voice.primaryLocales.getter@<X0>(void *a1@<X8>)
{
  v20 = sub_1A957B308();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v20, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 136);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19[0] = a1;
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v9, 0);
    v12 = 0;
    v10 = v21;
    v19[1] = v3 + 32;
    v13 = (v8 + 40);
    while (v12 < *(v8 + 16))
    {
      v14 = v9;
      v15 = *(v13 - 1);
      v16 = *v13;

      sub_1A957B1B8();
      v21 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A93ABB88(v17 > 1, v18 + 1, 1);
        v10 = v21;
      }

      ++v12;
      *(v10 + 16) = v18 + 1;
      result = (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v7, v20);
      v13 += 2;
      v9 = v14;
      if (v14 == v12)
      {
        a1 = v19[0];
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    a1[3] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0);
    a1[4] = result;
    *a1 = v10;
  }

  return result;
}

uint64_t sub_1A948E76C(uint64_t a1, uint64_t a2)
{
  sub_1A9379534(a1, v14);
  v3 = v15;
  v4 = v16;
  v5 = sub_1A93780F4(v14, v15);
  v6 = sub_1A9386128(sub_1A948C674, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  sub_1A93B0B3C(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(a2 + 128);

  v12 = *(a2 + 136);

  *(a2 + 128) = v8;
  *(a2 + 136) = v10;
  return sub_1A9378138(v14);
}

uint64_t CoreSynthesizer.Voice.primaryLocales.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1A93780F4(a1, v4);
  v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  sub_1A93B0B3C(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v2 + 128);

  v13 = *(v2 + 136);

  *(v2 + 128) = v9;
  *(v2 + 136) = v11;

  return sub_1A9378138(a1);
}

void (*CoreSynthesizer.Voice.primaryLocales.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v3[11] = *(v1 + 16);
  v3[12] = *(v1 + 17);
  v15 = v1[11];
  v16 = v1[12];
  v13 = v1[9];
  v14 = v1[10];
  v21 = *(v1 + 34);
  v19 = v1[15];
  v20 = v1[16];
  v17 = v1[13];
  v18 = v1[14];
  CoreSynthesizer.Voice.primaryLocales.getter(v3);
  return sub_1A948E9C0;
}

void sub_1A948E9C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_1A9379534(*a1, (v2 + 5));
    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1A93780F4(v2 + 5, v6);
    v9 = sub_1A9386128(sub_1A948C674, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    sub_1A93B0B3C(v9);
    v11 = v10;
    v13 = v12;

    *(v5 + 128) = v11;
    *(v5 + 136) = v13;
    sub_1A9378138(v2 + 5);
  }

  else
  {
    v14 = v2[3];
    v15 = v2[4];
    v16 = sub_1A93780F4(*a1, v14);
    v17 = sub_1A9386128(sub_1A948C674, 0, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
    sub_1A93B0B3C(v17);
    v19 = v18;
    v21 = v20;

    *(v5 + 128) = v19;
    *(v5 + 136) = v21;
  }

  sub_1A9378138(v2);

  free(v2);
}

uint64_t CoreSynthesizer.Voice.secondaryLocales.getter@<X0>(void *a1@<X8>)
{
  v20 = sub_1A957B308();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v20, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 152);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19[0] = a1;
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v9, 0);
    v12 = 0;
    v10 = v21;
    v19[1] = v3 + 32;
    v13 = (v8 + 40);
    while (v12 < *(v8 + 16))
    {
      v14 = v9;
      v15 = *(v13 - 1);
      v16 = *v13;

      sub_1A957B1B8();
      v21 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A93ABB88(v17 > 1, v18 + 1, 1);
        v10 = v21;
      }

      ++v12;
      *(v10 + 16) = v18 + 1;
      result = (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v7, v20);
      v13 += 2;
      v9 = v14;
      if (v14 == v12)
      {
        a1 = v19[0];
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    a1[3] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0);
    a1[4] = result;
    *a1 = v10;
  }

  return result;
}

uint64_t sub_1A948ED5C(uint64_t a1, uint64_t a2)
{
  sub_1A9379534(a1, v14);
  v3 = v15;
  v4 = v16;
  v5 = sub_1A93780F4(v14, v15);
  v6 = sub_1A9386128(sub_1A948C674, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  sub_1A93B0B3C(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(a2 + 144);

  v12 = *(a2 + 152);

  *(a2 + 144) = v8;
  *(a2 + 152) = v10;
  return sub_1A9378138(v14);
}

uint64_t CoreSynthesizer.Voice.secondaryLocales.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1A93780F4(a1, v4);
  v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  sub_1A93B0B3C(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v2 + 144);

  v13 = *(v2 + 152);

  *(v2 + 144) = v9;
  *(v2 + 152) = v11;

  return sub_1A9378138(a1);
}

void (*CoreSynthesizer.Voice.secondaryLocales.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  v3[11] = *(v1 + 18);
  v3[12] = *(v1 + 19);
  v18 = v1[14];
  v19 = v1[15];
  v20 = v1[16];
  v21 = *(v1 + 34);
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[13];
  CoreSynthesizer.Voice.secondaryLocales.getter(v3);
  return sub_1A948EFB8;
}