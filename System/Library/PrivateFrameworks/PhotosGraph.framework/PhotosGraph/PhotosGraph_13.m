unint64_t sub_22F1E3D6C()
{
  result = qword_2810AC6F8;
  if (!qword_2810AC6F8)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC6F8);
  }

  return result;
}

uint64_t sub_22F1E3DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEventTimeAndLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1E3E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEventTimeAndLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1E3E8C(uint64_t a1)
{
  v2 = type metadata accessor for PublicEventTimeAndLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1E3F74@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___PGMusicBag_atomicMusicBagContents);
  v4 = *(v3 + 312);

  [v4 lock];
  swift_beginAccess();
  sub_22F1E4038((v3 + 16), a1);
  swift_endAccess();
  [*(v3 + 312) unlock];
}

uint64_t sub_22F1E4038@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDB8C(__dst) == 1)
  {
    memcpy(v9, __src, 0x121uLL);
    sub_22F120ADC(v9, &qword_27DAB2458, &qword_22F782A80);
    MusicBag.fetchMusicBagContents()(&v8);
    if (v4)
    {
      __srca[0] = v4;
      sub_22F1EDBA0(__srca);
      memcpy(v7, __srca, 0x121uLL);
      GEOLocationCoordinate2DMake(v7);
      memcpy(__src, v7, 0x121uLL);
    }

    else
    {
      sub_22F1EDAA8(&v8);
      memcpy(v7, &v8, 0x121uLL);
      GEOLocationCoordinate2DMake(v7);
      memcpy(__src, v7, 0x121uLL);
    }
  }

  memcpy(&v8, __src, 0x121uLL);
  memcpy(v9, __src, 0x121uLL);
  result = sub_22F1EDB8C(v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(a2, v9, 0x121uLL);
    memcpy(v7, &v8, 0x121uLL);
    return sub_22F13BA9C(v7, __srca, &qword_27DAB2448, &unk_22F788C80);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.fetchMusicBagContents()(PhotosGraph::MusicBagContents *__return_ptr retstr)
{
  (MEMORY[0x28223BE20])();
  v3 = v1;
  v137 = v4;
  v192 = *MEMORY[0x277D85DE8];
  sub_22F1A2878(v191);
  v5 = *(v1 + OBJC_IVAR___PGMusicBag_cache);
  v132 = v5;
  v139 = v1;
  if (!v5)
  {
    memcpy(v189, v191, sizeof(v189));
LABEL_12:
    memcpy(v190, v189, sizeof(v190));
    v135 = v2;
    goto LABEL_13;
  }

  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4EA8;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v7, 0, v6, &v188);
  v8 = memcpy(v150, v191, 0x130uLL);
  v9 = *(v5 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v8);
  sub_22F7417A0();
  if (!v2)
  {
    sub_22F1B2BBC(0);

    memcpy(v189, v150, sizeof(v189));
    goto LABEL_12;
  }

  memcpy(v148, v150, 0x130uLL);
  sub_22F120ADC(v148, &unk_27DAB1D90, &qword_22F7771A8);
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_2810B4CB0);
  v11 = v2;
  v12 = sub_22F740B70();
  v13 = sub_22F7415C0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v141 = &v129;
    v15 = swift_slowAlloc();
    v190[0] = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_22F7420F0();
    v18 = sub_22F145F20(v16, v17, v190);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22F0FC000, v12, v13, "[MemoriesMusic] failed to decode MusicCacheInfo, error: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v19 = v15;
    v3 = v139;
    MEMORY[0x2319033A0](v19, -1, -1);
    v20 = v14;
    v5 = v132;
    MEMORY[0x2319033A0](v20, -1, -1);
  }

  v21 = *(v5 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v22);
  sub_22F7417A0();
  v135 = 0;

  memcpy(v190, v191, sizeof(v190));
LABEL_13:
  v141 = sub_22F740DF0();
  v23 = OBJC_IVAR___PGMusicBag_amsBag;
  v24 = *(v3 + OBJC_IVAR___PGMusicBag_amsBag);
  v25 = sub_22F740DF0();
  v26 = [v24 integerForKey_];

  v27 = dispatch_semaphore_create(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v150[4] = sub_22F1ED8F4;
  v150[5] = v29;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 1107296256;
  v138 = &v150[2];
  v150[2] = sub_22F1EDBD4;
  v150[3] = &block_descriptor_6;
  v30 = _Block_copy(v150);

  v31 = v27;

  [v26 valueWithCompletion_];
  _Block_release(v30);
  sub_22F741780();

  swift_beginAccess();
  v32 = *(v28 + 16);

  v140 = v23;
  v33 = *(v3 + v23);
  v34 = sub_22F740DF0();
  v35 = [v33 integerForKey_];

  v36 = dispatch_semaphore_create(0);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v150[4] = sub_22F1EDC00;
  v150[5] = v38;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 1107296256;
  v150[2] = sub_22F1EDBD4;
  v150[3] = &block_descriptor_11_0;
  v39 = _Block_copy(v150);

  v40 = v36;

  [v35 valueWithCompletion_];
  _Block_release(v39);
  sub_22F741780();

  swift_beginAccess();
  v41 = *(v37 + 16);

  v138 = v32;
  if (v32)
  {
    v42 = v139;
    if (v41)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4CB0);
  v44 = sub_22F740B70();
  v45 = sub_22F7415D0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_22F0FC000, v44, v45, "[MemoriesMusic] failed to read song batch size from bag, defaulting hard coded value.", v46, 2u);
    MEMORY[0x2319033A0](v46, -1, -1);
  }

  v138 = 300;
  v42 = v139;
  if (!v41)
  {
LABEL_21:
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v47 = sub_22F740B90();
    __swift_project_value_buffer(v47, qword_2810B4CB0);
    v48 = sub_22F740B70();
    v49 = sub_22F7415D0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22F0FC000, v48, v49, "[MemoriesMusic] failed to read song equivalent batch size from bag, defaulting hard coded value.", v50, 2u);
      MEMORY[0x2319033A0](v50, -1, -1);
    }

    v41 = 300;
  }

LABEL_26:
  v136 = v41;
  v51 = [*(v42 + v140) dictionaryForKey_];
  v52 = dispatch_semaphore_create(0);
  v53 = swift_allocObject();
  *(v53 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v52;
  v150[4] = sub_22F1ED914;
  v150[5] = v54;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 1107296256;
  v150[2] = sub_22F1EDBD4;
  v150[3] = &block_descriptor_20;
  v55 = _Block_copy(v150);

  v56 = v52;

  [v51 valueWithCompletion_];
  _Block_release(v55);
  sub_22F741780();

  swift_beginAccess();
  v57 = *(v53 + 16);

  v150[0] = 0;
  sub_22F740C90();
  if (!v150[0])
  {
    sub_22F1ED91C();
    v78 = swift_allocError();
    *v79 = 0;
    swift_willThrow();

    goto LABEL_32;
  }

  v133 = v150[0];
  v134 = v57;
  v58 = *(v42 + v140);
  v59 = sub_22F740DF0();
  v60 = [v58 dictionaryForKey_];

  v61 = dispatch_semaphore_create(0);
  v62 = swift_allocObject();
  *(v62 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v61;
  v150[4] = sub_22F1EDC04;
  v150[5] = v63;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 1107296256;
  v150[2] = sub_22F1EDBD4;
  v150[3] = &block_descriptor_28;
  v64 = _Block_copy(v150);

  v65 = v61;

  [v60 valueWithCompletion_];
  _Block_release(v64);
  sub_22F741780();

  swift_beginAccess();
  v66 = *(v62 + 16);

  v67 = objc_opt_self();
  v150[0] = 0;
  v68 = [v67 dataWithJSONObject:v66 options:0 error:v150];
  if (!v68)
  {
    v80 = v150[0];

    v78 = sub_22F73F370();

    swift_willThrow();
    goto LABEL_32;
  }

  v69 = v68;
  v70 = v150[0];
  v71 = sub_22F73F510();
  v73 = v72;

  v74 = sub_22F73EF30();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  sub_22F73EF20();
  sub_22F1ED9CC();
  v77 = v135;
  sub_22F73EF10();
  v78 = v77;
  if (v77)
  {

    sub_22F133BF0(v71, v73);

    goto LABEL_32;
  }

  v129 = 0;
  v130 = v73;
  v131 = v71;
  v135 = v66;

  v165 = v181;
  v166 = v182;
  v167 = v183;
  v168 = v184;
  v161 = v177;
  v162 = v178;
  v163 = v179;
  v164 = v180;
  v157 = v173;
  v158 = v174;
  v159 = v175;
  v160 = v176;
  v153 = v169;
  v154 = v170;
  v155 = v171;
  v156 = v172;
  v97 = *(v139 + v140);
  v98 = sub_22F740DF0();
  v99 = [v97 dictionaryForKey_];

  v100 = dispatch_semaphore_create(0);
  v101 = swift_allocObject();
  *(v101 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v100;
  v150[4] = sub_22F1EDC04;
  v150[5] = v102;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 1107296256;
  v150[2] = sub_22F1EDBD4;
  v150[3] = &block_descriptor_36;
  v103 = _Block_copy(v150);

  v104 = v100;

  [v99 valueWithCompletion_];
  _Block_release(v103);
  sub_22F741780();

  swift_beginAccess();
  v105 = *(v101 + 16);

  v150[0] = 0;
  v106 = [v67 dataWithJSONObject:v105 options:0 error:v150];
  if (v106)
  {
    v107 = v106;
    v108 = v150[0];
    v109 = sub_22F73F510();
    v111 = v110;

    v112 = *(v74 + 48);
    v113 = *(v74 + 52);
    swift_allocObject();
    sub_22F73EF20();
    sub_22F1EDA20();
    v114 = v129;
    sub_22F73EF10();
    v115 = v130;
    if (v114)
    {

      sub_22F133BF0(v109, v111);
      sub_22F133BF0(v131, v115);

      v78 = v114;
      goto LABEL_32;
    }

    v140 = v109;

    *&v186[25] = v165;
    *&v186[27] = v166;
    *&v186[29] = v167;
    *&v186[17] = v161;
    *&v186[19] = v162;
    *&v186[21] = v163;
    *&v186[23] = v164;
    *&v186[9] = v157;
    *&v186[11] = v158;
    *&v186[13] = v159;
    *&v186[15] = v160;
    *&v186[1] = v153;
    *&v186[3] = v154;
    *&v186[5] = v155;
    LOBYTE(v186[31]) = v168;
    *&v186[7] = v156;
    v186[0] = v133;
    v186[32] = v142;
    v186[33] = v143;
    v186[34] = v138;
    v186[35] = v136;
    memcpy(v152, v190, 0x130uLL);
    if (sub_22F1A3BE4(v152) == 1)
    {
      sub_22F1ED970(v186, v150);
      v117 = v132;
      goto LABEL_52;
    }

    memcpy(v151, v186, sizeof(v151));
    GEOLocationCoordinate2DMake(v151);
    memcpy(v150, &v152[1], 0x120uLL);
    memcpy(&v150[36], v151, 0x120uLL);
    memcpy(v185, &v152[1], sizeof(v185));
    v122 = sub_22F162DEC(v185);
    v117 = v132;
    if (v122 == 1)
    {
      memcpy(v148, &v150[36], 0x120uLL);
      if (sub_22F162DEC(v148) == 1)
      {
        memcpy(v149, v150, sizeof(v149));
        sub_22F1ED970(v186, v147);
        sub_22F1ED970(v186, v147);
        sub_22F13BA9C(&v152[1], v147, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F120ADC(v149, &qword_27DAB1548, &qword_22F7720F8);
        goto LABEL_52;
      }

      sub_22F1ED970(v186, v149);
      sub_22F1ED970(v186, v149);
      sub_22F13BA9C(&v152[1], v149, &qword_27DAB1548, &qword_22F7720F8);
    }

    else
    {
      v139 = v111;
      memcpy(v149, v150, sizeof(v149));
      memcpy(v147, v150, sizeof(v147));
      memcpy(v148, &v150[36], 0x120uLL);
      if (sub_22F162DEC(v148) != 1)
      {
        memcpy(v146, &v150[36], sizeof(v146));
        sub_22F1ED970(v186, v145);
        sub_22F1ED970(v186, v145);
        sub_22F1ED970(v186, v145);
        sub_22F13BA9C(&v152[1], v145, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F13BA9C(v149, v145, &qword_27DAB1548, &qword_22F7720F8);
        v128 = _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(v147, v146);
        memcpy(v144, v146, sizeof(v144));
        sub_22F162EC8(v144);
        memcpy(v145, v147, sizeof(v145));
        sub_22F162EC8(v145);
        memcpy(v146, v150, sizeof(v146));
        sub_22F120ADC(v146, &qword_27DAB1548, &qword_22F7720F8);
        sub_22F162EC8(v186);
        v111 = v139;
        if (v128)
        {
LABEL_52:
          memcpy(v148, v186, 0x120uLL);
          GEOLocationCoordinate2DMake(v148);
          memcpy(&v150[2], v148, 0x120uLL);
          v150[0] = 56;
          v150[1] = 0xE100000000000000;
          if (v117)
          {
            if (qword_2810A9BF8[0] != -1)
            {
              swift_once();
            }

            v118 = qword_2810B4EA8;
            *&v119 = CACurrentMediaTime();
            v120 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v119, 0, v118, v151);
            v121 = *(v117 + OBJC_IVAR___PGMusicCache_managedObjectContext);
            MEMORY[0x28223BE20](v120);
            sub_22F7417A0();
            sub_22F120ADC(v190, &unk_27DAB1D90, &qword_22F7771A8);
            sub_22F1B2BBC(0);

LABEL_71:

            sub_22F133BF0(v140, v111);
            sub_22F133BF0(v131, v115);
            sub_22F1A3B90(v150);
            goto LABEL_72;
          }

          goto LABEL_70;
        }

LABEL_63:
        memcpy(&v150[2], v151, 0x120uLL);
        *v150 = v152[0];
        if (v117)
        {
          v123 = qword_2810A9BF8[0];

          if (v123 != -1)
          {
            swift_once();
          }

          v124 = qword_2810B4EA8;
          *&v125 = CACurrentMediaTime();
          v126 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v125, 0, v124, v149);
          v127 = *(v117 + OBJC_IVAR___PGMusicCache_managedObjectContext);
          MEMORY[0x28223BE20](v126);
          sub_22F7417A0();
          sub_22F120ADC(v190, &unk_27DAB1D90, &qword_22F7771A8);
          sub_22F1B2BBC(0);

          goto LABEL_71;
        }

LABEL_70:

        sub_22F133BF0(v140, v111);
        sub_22F133BF0(v131, v115);
        sub_22F1A3B90(v150);
        sub_22F120ADC(v190, &unk_27DAB1D90, &qword_22F7771A8);
LABEL_72:
        v95 = v186;
        goto LABEL_45;
      }

      memcpy(v146, v150, sizeof(v146));
      sub_22F1ED970(v186, v145);
      sub_22F1ED970(v186, v145);
      sub_22F13BA9C(&v152[1], v145, &qword_27DAB1548, &qword_22F7720F8);
      sub_22F13BA9C(v149, v145, &qword_27DAB1548, &qword_22F7720F8);
      sub_22F162EC8(v146);
      v111 = v139;
    }

    memcpy(v148, v150, sizeof(v148));
    sub_22F120ADC(v148, &qword_27DAB1550, &unk_22F772100);
    goto LABEL_63;
  }

  v116 = v150[0];

  v78 = sub_22F73F370();

  swift_willThrow();
  sub_22F133BF0(v131, v130);
LABEL_32:
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v81 = sub_22F740B90();
  __swift_project_value_buffer(v81, qword_2810B4CB0);
  v82 = v78;
  v83 = sub_22F740B70();
  v84 = sub_22F7415E0();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v140 = 0;
    v86 = v85;
    v87 = swift_slowAlloc();
    v148[0] = v87;
    *v86 = 136315138;
    swift_getErrorValue();
    v88 = sub_22F7420F0();
    v90 = sub_22F145F20(v88, v89, v148);

    *(v86 + 4) = v90;
    _os_log_impl(&dword_22F0FC000, v83, v84, "[MemoriesMusic] Failed to read personal mix identifiers from bag, defaulting to last successful values, error: %s.", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x2319033A0](v87, -1, -1);
    MEMORY[0x2319033A0](v86, -1, -1);
  }

  memcpy(v148, v190, 0x130uLL);
  if (sub_22F1A3BE4(v148) != 1)
  {
    memcpy(v152, &v148[2], 0x120uLL);
    if (sub_22F162DEC(v152) != 1)
    {
      memcpy(v186, &v148[2], sizeof(v186));
      sub_22F1ED970(v186, v185);

      sub_22F120ADC(v190, &unk_27DAB1D90, &qword_22F7771A8);
      v95 = &v148[2];
      goto LABEL_45;
    }

    sub_22F120ADC(v190, &unk_27DAB1D90, &qword_22F7771A8);
  }

  v91 = sub_22F740B70();
  v92 = sub_22F7415E0();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_22F0FC000, v91, v92, "[MemoriesMusic] Failed to read personal mix identifiers from cache, defaulting to on device constants.", v93, 2u);
    MEMORY[0x2319033A0](v93, -1, -1);
  }

  if (qword_27DAAFDE0 != -1)
  {
    swift_once();
  }

  v94 = qword_27DAB2788;

  LOBYTE(v186[0]) = 0;
  LOBYTE(v185[0]) = 0;
  *(v152 + 8) = vdupq_n_s64(0x40F5180000000000uLL);
  *&v152[0] = v94;
  *(&v152[1] + 1) = 2;
  *&v152[2] = 0x4132750000000000;
  *(&v152[2] + 8) = *(v152 + 8);
  *(&v152[3] + 8) = xmmword_22F779CA0;
  BYTE8(v152[4]) = 0;
  v152[5] = *(v152 + 8);
  *(&v152[6] + 8) = xmmword_22F779CB0;
  *&v152[6] = 2;
  *(&v152[7] + 1) = 0x40F5180000000000;
  *(&v152[8] + 8) = xmmword_22F779CB0;
  *&v152[8] = 2;
  *(&v152[9] + 1) = 0x40F5180000000000;
  *&v152[10] = 2;
  *(&v152[10] + 1) = 0x4132750000000000;
  v152[11] = *(v152 + 8);
  v152[12] = xmmword_22F779CA0;
  LOBYTE(v152[13]) = 0;
  *(&v152[13] + 8) = *(v152 + 8);
  *(&v152[14] + 8) = xmmword_22F779CA0;
  BYTE8(v152[15]) = 0;
  *&v152[16] = 0x4122750000000000;
  *(&v152[16] + 1) = 200;
  *&v152[17] = v138;
  *(&v152[17] + 1) = v136;
  GEOLocationCoordinate2DMake(v152);
  v95 = v152;
LABEL_45:
  memcpy(v187, v95, sizeof(v187));
  memcpy(v137, v187, 0x120uLL);
  v96 = *MEMORY[0x277D85DE8];
}

uint64_t MusicBag.MusicBagError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

id MusicBag.__allocating_init(with:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22F1ED5B0(a1);

  return v4;
}

id MusicBag.init(with:)(void *a1)
{
  v2 = sub_22F1ED5B0(a1);

  return v2;
}

id MusicBag.init(musicBagContents:cache:)(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___PGMusicBag_atomicMusicBagContents;
  sub_22F1EDA74(__src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2440, &qword_22F779CC0);
  v6 = swift_allocObject();
  *(v6 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v6 + 16), __src, 0x121uLL);
  *&v2[v5] = v6;
  v7 = sub_22F740DF0();
  v8 = sub_22F740DF0();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8];

  *&v2[OBJC_IVAR___PGMusicBag_amsBag] = v9;
  memcpy(__dst, a1, 0x120uLL);
  sub_22F1EDAA8(__dst);
  memcpy(v17, __dst, 0x121uLL);
  GEOLocationCoordinate2DMake(v17);
  v10 = swift_allocObject();
  *(v10 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v10 + 16), v17, 0x121uLL);
  v11 = *&v2[v5];
  *&v2[v5] = v10;

  *&v2[OBJC_IVAR___PGMusicBag_cache] = a2;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t static MusicBag.stringValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v10[4] = sub_22F1EDAB0;
  v10[5] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22F1EDBD4;
  v10[3] = &block_descriptor_46;
  v5 = _Block_copy(v10);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return v7;
}

uint64_t sub_22F1E6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_22F740E20();
    v7 = v6;
    swift_beginAccess();
    v8 = *(a4 + 24);
    *(a4 + 16) = v5;
    *(a4 + 24) = v7;
  }

  return sub_22F741790();
}

uint64_t static MusicBag.intValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v9[4] = sub_22F1EDC00;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22F1EDBD4;
  v9[3] = &block_descriptor_54;
  v5 = _Block_copy(v9);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_22F1E64B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 integerValue];
    swift_beginAccess();
    *(a4 + 16) = v5;
  }

  return sub_22F741790();
}

id static MusicBag.dictionaryValue(from:)(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v9[4] = sub_22F1EDC04;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22F1EDBD4;
  v9[3] = &block_descriptor_62;
  v5 = _Block_copy(v9);

  v6 = v2;

  [a1 valueWithCompletion_];
  _Block_release(v5);
  sub_22F741780();

  swift_beginAccess();
  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_22F1E667C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  return sub_22F741790();
}

void sub_22F1E66E0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.userStorefront()()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicBag_amsBag);
  v2 = sub_22F740DF0();
  v3 = [v1 stringForKey_];

  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v14[4] = sub_22F1EDC08;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F1EDBD4;
  v14[3] = &block_descriptor_70;
  v7 = _Block_copy(v14);

  v8 = v4;

  [v3 valueWithCompletion_];
  _Block_release(v7);
  sub_22F741780();

  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);

  v11 = v9;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.mediaApiDomain()()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicBag_amsBag);
  v2 = sub_22F740DF0();
  v3 = [v1 stringForKey_];

  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v14[4] = sub_22F1EDC08;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F1EDBD4;
  v14[3] = &block_descriptor_78;
  v7 = _Block_copy(v14);

  v8 = v4;

  [v3 valueWithCompletion_];
  _Block_release(v7);
  sub_22F741780();

  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);

  v11 = v9;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_22F1E6B88(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v12, __src, 0x121uLL);
    v15 = *GEOLocationCoordinate2DMake(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v11, __src, 0x121uLL);
    v5 = *GEOLocationCoordinate2DMake(v11);
    memcpy(v12, __src, 0x121uLL);
    v6 = GEOLocationCoordinate2DMake(v12);
    sub_22F1ED970(v6, &v10);
    v7 = a1(v5);
    if (qword_2810AB5D8 != -1)
    {
      swift_once();
    }

    v2 = a2(v8, v7);

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
  }

  return v2;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.personalMixName(for:)(Swift::String a1)
{
  v1 = sub_22F1E6D68(a1._countAndFlagsBits, a1._object, MusicBagContents.personalMixName(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.personalMixIdentifier(for:)(Swift::String a1)
{
  v1 = sub_22F1E6D68(a1._countAndFlagsBits, a1._object, MusicBagContents.personalMixIdentifier(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22F1E6D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v11, __src, 0x121uLL);
    v12 = *GEOLocationCoordinate2DMake(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v11, __src, 0x121uLL);
    v7 = GEOLocationCoordinate2DMake(v11);
    memcpy(v9, v7, sizeof(v9));
    v3 = a3(a1, a2);
    memcpy(v10, v9, sizeof(v10));
    sub_22F162EC8(v10);
  }

  return v3;
}

uint64_t MusicBag.yearlySummaryPlaylistNames()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v6, __src, 0x121uLL);
    v7 = *GEOLocationCoordinate2DMake(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v6, __src, 0x121uLL);
    v1 = *GEOLocationCoordinate2DMake(v6);

    v3 = sub_22F144294(v2);
    if (qword_2810AB5D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22F1E8F80(v4, v3);

    sub_22F1E7F04(&unk_2843DA9A8);
    sub_22F1DF3B0(&unk_2843DA9C8);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    return v5;
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.yearlySummaryIdentifier(for:)(Swift::Int a1)
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v68, __src, 0x121uLL);
    v71 = *GEOLocationCoordinate2DMake(v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v2 = swift_willThrowTypedImpl();
    goto LABEL_89;
  }

  GEOLocationCoordinate2DMake(__dst);
  memcpy(v68, __src, 0x121uLL);
  v3 = *GEOLocationCoordinate2DMake(v68);

  v5 = sub_22F144294(v4);
  if (qword_2810AB5D8 != -1)
  {
    swift_once();
  }

  v7 = sub_22F1E8F80(v6, v5);

  v66 = v7;
  sub_22F1E7F04(&unk_2843DAA08);
  sub_22F1DF3B0(&unk_2843DAA28);
  sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
  v8 = v7;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v1 = v11 & *(v66 + 56);
  v12 = (v10 + 63) >> 6;

  v63 = 0;
  v64 = 0;
  v13 = 0;
  while (v1)
  {
    v14 = v13;
LABEL_13:
    v15 = (*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v1)))));
    v16 = *v15;
    v17 = v15[1];
    v66 = *v15;
    v67 = v17;
    sub_22F160DE4();

    v18 = sub_22F7418E0();
    v20 = HIBYTE(v19) & 0xF;
    v21 = v18 & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
LABEL_91:

LABEL_92:

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v56 = sub_22F740B90();
      __swift_project_value_buffer(v56, qword_2810B4CB0);
      v57 = sub_22F740B70();
      v58 = sub_22F7415E0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_22F0FC000, v57, v58, "[MemoriesMusic] yearlySummaryIdentifiers contains a value that doesnt conform to replayYYYY format.", v59, 2u);
        MEMORY[0x2319033A0](v59, -1, -1);
      }

      sub_22F1ED91C();
      swift_allocError();
      *v60 = 1;
      swift_willThrow();

      goto LABEL_89;
    }

    if ((v19 & 0x1000000000000000) == 0)
    {
      if ((v19 & 0x2000000000000000) != 0)
      {
        v66 = v18;
        v67 = v19 & 0xFFFFFFFFFFFFFFLL;
        if (v18 == 43)
        {
          if (!v20)
          {
            goto LABEL_98;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v35 = &v66 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v18 == 45)
        {
          if (!v20)
          {
            goto LABEL_100;
          }

          v21 = v20 - 1;
          if (v20 != 1)
          {
            v25 = 0;
            v29 = &v66 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v31 - v30;
              if (__OFSUB__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v20)
        {
          v25 = 0;
          v40 = &v66;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            v40 = (v40 + 1);
            if (!--v20)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          v23 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_22F741B80();
          v21 = v45;
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v21 < 1)
          {
            goto LABEL_99;
          }

          if (--v21)
          {
            v25 = 0;
            if (!v23)
            {
              goto LABEL_72;
            }

            v32 = v23 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v21 < 1)
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (--v21)
          {
            v25 = 0;
            if (v23)
            {
              v26 = v23 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_73;
                }

                v28 = 10 * v25;
                if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                {
                  goto LABEL_73;
                }

                v25 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  goto LABEL_73;
                }

                ++v26;
                if (!--v21)
                {
                  goto LABEL_74;
                }
              }
            }

LABEL_72:
            LOBYTE(v21) = 0;
LABEL_74:
            v43 = v21;

            if (v43)
            {
              goto LABEL_92;
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_73;
          }

          v25 = 0;
          if (!v23)
          {
            goto LABEL_72;
          }

          while (1)
          {
            v38 = *v23 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_74;
            }
          }
        }
      }

LABEL_73:
      v25 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_74;
    }

    v25 = sub_22F29C288(v18, v19, 10);
    v62 = v44;

    if (v62)
    {
      goto LABEL_92;
    }

LABEL_75:
    v1 &= v1 - 1;

    if (v25 == a1)
    {
      v63 = v16;
      v64 = v17;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v14 >= v12)
    {
      break;
    }

    v1 = *(v9 + 8 * v14);
    ++v13;
    if (v1)
    {
      goto LABEL_13;
    }
  }

  v1 = v64;
  if (v64)
  {

    goto LABEL_88;
  }

  if (qword_2810A93F0 != -1)
  {
LABEL_101:
    swift_once();
  }

  v46 = sub_22F740B90();
  __swift_project_value_buffer(v46, qword_2810B4CB0);

  v47 = sub_22F740B70();
  v48 = sub_22F7415D0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v66 = v50;
    *v49 = 134218242;
    *(v49 + 4) = a1;
    *(v49 + 12) = 2080;
    v51 = sub_22F741430();
    v53 = v52;

    v54 = sub_22F145F20(v51, v53, &v66);

    *(v49 + 14) = v54;
    _os_log_impl(&dword_22F0FC000, v47, v48, "[MemoriesMusic] yearlySummaryIdentifiers doesn't contain a key for %ld. yearlySummaryPlaylistNames = %s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x2319033A0](v50, -1, -1);
    MEMORY[0x2319033A0](v49, -1, -1);
  }

  else
  {
  }

LABEL_88:
  v2 = v63;
LABEL_89:
  v55 = v1;
  result.value._object = v55;
  result.value._countAndFlagsBits = v2;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.jobConfiguration()(PhotosGraph::JobConfiguration *__return_ptr retstr)
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v10, __src, 0x121uLL);
    v13 = *GEOLocationCoordinate2DMake(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v10, __src, 0x121uLL);
    v2 = GEOLocationCoordinate2DMake(v10);
    v3 = *(v2 + 216);
    *&retstr->musicForTimeBackfill.value.maximumFailureCadenceSeconds = *(v2 + 200);
    *(&retstr->musicForTimeFrontfill.value.minimumSuccessCadenceSeconds + 7) = v3;
    *(&retstr->musicForTimeFrontfill.value.failureBackoffMultiplier + 7) = *(v2 + 232);
    LOBYTE(retstr[1].musicForYou.minimumSuccessCadenceSeconds) = *(v2 + 248);
    v4 = *(v2 + 152);
    *&retstr->musicForPerformer.maximumFailureCadenceSeconds = *(v2 + 136);
    *&retstr->musicForTime.minimumFailureCadenceSeconds = v4;
    v5 = *(v2 + 184);
    *&retstr->musicForTime.maximumFailureCadenceSeconds = *(v2 + 168);
    *&retstr->musicForTimeBackfill.value.minimumFailureCadenceSeconds = v5;
    v6 = *(v2 + 88);
    *&retstr->musicForTopic.is_nil = *(v2 + 72);
    *&retstr->musicForMoment.minimumFailureCadenceSeconds = v6;
    v7 = *(v2 + 120);
    *&retstr->musicForMoment.maximumFailureCadenceSeconds = *(v2 + 104);
    *&retstr->musicForPerformer.minimumFailureCadenceSeconds = v7;
    v8 = *(v2 + 24);
    *&retstr->musicForYou.minimumSuccessCadenceSeconds = *(v2 + 8);
    *&retstr->musicForYou.failureBackoffMultiplier = v8;
    v9 = *(v2 + 56);
    *&retstr->musicForTopic.value.minimumSuccessCadenceSeconds = *(v2 + 40);
    *&retstr->musicForTopic.value.failureBackoffMultiplier = v9;
  }
}

PhotosGraph::CacheRefreshConfiguration __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicBag.cacheRefreshConfiguration()()
{
  v1 = v0;
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v6, __src, 0x121uLL);
    v9 = *GEOLocationCoordinate2DMake(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    v2 = swift_willThrowTypedImpl();
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v6, __src, 0x121uLL);
    v2 = GEOLocationCoordinate2DMake(v6);
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    *v1 = v3;
    *(v1 + 8) = v4;
  }

  result.minimumRefreshCadenceSeconds = v3;
  result.batchSize = v2;
  return result;
}

Swift::Int __swiftcall MusicBag.songEquivalentQueryBatchSize()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v5, __src, 0x121uLL);
    v6 = *GEOLocationCoordinate2DMake(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v0 = sub_22F740B90();
    __swift_project_value_buffer(v0, qword_2810B4CB0);
    v1 = sub_22F740B70();
    v2 = sub_22F7415D0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22F0FC000, v1, v2, "[MemoriesMusic] Bag is missing songEquivalentQueryBatchSize.", v3, 2u);
      MEMORY[0x2319033A0](v3, -1, -1);
    }

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);

    return 300;
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v5, __src, 0x121uLL);
    return *(GEOLocationCoordinate2DMake(v5) + 280);
  }
}

Swift::Int __swiftcall MusicBag.songQueryBatchSize()()
{
  sub_22F1E3F74(__src);
  memcpy(__dst, __src, 0x121uLL);
  if (sub_22F1EDAB8(__dst) == 1)
  {
    GEOLocationCoordinate2DMake(__dst);
    memcpy(v5, __src, 0x121uLL);
    v6 = *GEOLocationCoordinate2DMake(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v0 = sub_22F740B90();
    __swift_project_value_buffer(v0, qword_2810B4CB0);
    v1 = sub_22F740B70();
    v2 = sub_22F7415D0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22F0FC000, v1, v2, "[MemoriesMusic] Bag is missing songQueryBatchSize.", v3, 2u);
      MEMORY[0x2319033A0](v3, -1, -1);
    }

    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);

    return 300;
  }

  else
  {
    GEOLocationCoordinate2DMake(__dst);
    sub_22F120ADC(__src, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v5, __src, 0x121uLL);
    return *(GEOLocationCoordinate2DMake(v5) + 272);
  }
}

id MusicBag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicBag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1E7F04(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_22F164408(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_22F1E7F80(uint64_t a1, uint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  v99 = type metadata accessor for Song();
  v11 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  MEMORY[0x28223BE20](v12);
  v14 = (&v82 - v13);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v86 = &v82 - v20;
  if (*(a2 + 16))
  {
    v87 = v19;
    v102 = v17;
    v93 = v7;
    v83 = 0;
    v22 = a1 + 56;
    v21 = *(a1 + 56);
    v23 = -1 << *(a1 + 32);
    v100 = ~v23;
    if (-v23 < 64)
    {
      v24 = ~(-1 << -v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (63 - v23) >> 6;
    v98 = (v18 + 56);
    v85 = v18;
    v97 = (v18 + 48);
    v103 = (a2 + 56);

    v28 = 0;
    v96 = v26;
    for (i = v10; ; v10 = i)
    {
      v29 = v25;
      v30 = v28;
      v104 = v25;
      if (!v25)
      {
        if (v26 <= (v28 + 1))
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = v26;
        }

        v32 = v31 - 1;
        v33 = v28;
        while (1)
        {
          v30 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v30 >= v26)
          {
            v34 = 0;
            v35 = 1;
            goto LABEL_16;
          }

          v29 = *(v22 + 8 * v30);
          ++v33;
          if (v29)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_15:
      v34 = (v29 - 1) & v29;
      sub_22F1A39E0(*(a1 + 48) + *(v85 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v10, type metadata accessor for Song);
      v35 = 0;
      v32 = v30;
LABEL_16:
      v36 = v99;
      v95 = *v98;
      v95(v10, v35, 1, v99);
      v105 = a1;
      v106 = a1 + 56;
      v107 = v100;
      v108 = v32;
      v109 = v34;
      v94 = *v97;
      if (v94(v10, 1, v36) == 1)
      {
        goto LABEL_65;
      }

      v101 = v34;
      v37 = v86;
      sub_22F1BA7A4(v10, v86, type metadata accessor for Song);
      v38 = *(a2 + 40);
      sub_22F742170();
      v39 = *(v37 + 8);
      v89 = *v37;
      v88 = v39;
      sub_22F740D60();
      v40 = sub_22F7421D0();
      v41 = -1 << *(a2 + 32);
      v28 = v40 & ~v41;
      v30 = v28 >> 6;
      v25 = 1 << v28;
      if (((1 << v28) & v103[v28 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_22F1A3AB0(v86, type metadata accessor for Song);
      v28 = v32;
      v25 = v101;
      v26 = v96;
    }

    v42 = ~v41;
    v104 = *(v85 + 72);
    while (1)
    {
      v10 = v87;
      sub_22F1A39E0(*(a2 + 48) + v104 * v28, v87, type metadata accessor for Song);
      v43 = *v10 == v89 && *(v10 + 8) == v88;
      if (v43)
      {
        break;
      }

      v44 = sub_22F742040();
      v45 = v10;
      v10 = v44;
      sub_22F1A3AB0(v45, type metadata accessor for Song);
      if (v10)
      {
        goto LABEL_29;
      }

      v28 = (v28 + 1) & v42;
      v30 = v28 >> 6;
      v25 = 1 << v28;
      if (((1 << v28) & v103[v28 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_22F1A3AB0(v10, type metadata accessor for Song);
LABEL_29:
    v46 = sub_22F1A3AB0(v86, type metadata accessor for Song);
    v47 = *(a2 + 32);
    v86 = ((1 << v47) + 63) >> 6;
    v27 = 8 * v86;
    if ((v47 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

LABEL_67:
    v10 = v27;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_30:
      v87 = &v82;
      MEMORY[0x28223BE20](v46);
      v49 = &v82 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v49, v103, v48);
      v50 = *&v49[8 * v30] & ~v25;
      v51 = *(a2 + 16);
      v89 = v49;
      *&v49[8 * v30] = v50;
      v52 = v51 - 1;
      v53 = v93;
      v54 = v96;
      v55 = v101;
      v92 = a1;
      v91 = a1 + 56;
      v90 = v14;
LABEL_31:
      v88 = v52;
      while (v55)
      {
        v56 = v32;
LABEL_43:
        v59 = __clz(__rbit64(v55));
        v60 = (v55 - 1) & v55;
        sub_22F1A39E0(*(a1 + 48) + (v59 | (v56 << 6)) * v104, v53, type metadata accessor for Song);
        v61 = 0;
LABEL_44:
        v62 = v99;
        v95(v53, v61, 1, v99);
        v105 = a1;
        v106 = v22;
        v107 = v100;
        v108 = v32;
        v109 = v60;
        if (v94(v53, 1, v62) == 1)
        {
          sub_22F120ADC(v53, &qword_27DAB1250, &qword_22F781A10);
          a2 = sub_22F1B9048(v89, v86, v88, a2);
          goto LABEL_62;
        }

        v101 = v60;
        sub_22F1BA7A4(v53, v14, type metadata accessor for Song);
        v63 = *(a2 + 40);
        sub_22F742170();
        v10 = *v14;
        v64 = v14[1];
        sub_22F740D60();
        v65 = sub_22F7421D0();
        v66 = a2;
        v67 = -1 << *(a2 + 32);
        v68 = v65 & ~v67;
        v69 = v68 >> 6;
        v70 = 1 << v68;
        if (((1 << v68) & v103[v68 >> 6]) != 0)
        {
          v71 = ~v67;
          while (1)
          {
            v72 = v102;
            sub_22F1A39E0(*(v66 + 48) + v68 * v104, v102, type metadata accessor for Song);
            if (*v72 == v10 && v72[1] == v64)
            {
              break;
            }

            v74 = sub_22F742040();
            sub_22F1A3AB0(v72, type metadata accessor for Song);
            if (v74)
            {
              goto LABEL_55;
            }

            v68 = (v68 + 1) & v71;
            v69 = v68 >> 6;
            v70 = 1 << v68;
            if (((1 << v68) & v103[v68 >> 6]) == 0)
            {
              goto LABEL_32;
            }
          }

          sub_22F1A3AB0(v72, type metadata accessor for Song);
LABEL_55:
          v14 = v90;
          sub_22F1A3AB0(v90, type metadata accessor for Song);
          v75 = v89[v69];
          v89[v69] = v75 & ~v70;
          v43 = (v75 & v70) == 0;
          a2 = v66;
          a1 = v92;
          v22 = v91;
          v53 = v93;
          v54 = v96;
          v55 = v101;
          if (!v43)
          {
            v52 = v88 - 1;
            if (__OFSUB__(v88, 1))
            {
              __break(1u);
            }

            if (v88 == 1)
            {

              a2 = MEMORY[0x277D84FA0];
              goto LABEL_62;
            }

            goto LABEL_31;
          }
        }

        else
        {
LABEL_32:
          v14 = v90;
          sub_22F1A3AB0(v90, type metadata accessor for Song);
          a2 = v66;
          a1 = v92;
          v22 = v91;
          v53 = v93;
          v54 = v96;
          v55 = v101;
        }
      }

      if (v54 <= (v32 + 1))
      {
        v57 = v32 + 1;
      }

      else
      {
        v57 = v54;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v56 >= v54)
        {
          v60 = 0;
          v61 = 1;
          v32 = v58;
          goto LABEL_44;
        }

        v55 = *(v22 + 8 * v56);
        ++v32;
        if (v55)
        {
          v32 = v56;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_65:
      sub_22F120ADC(v10, &qword_27DAB1250, &qword_22F781A10);
LABEL_62:
      sub_22F0FF590();
      goto LABEL_63;
    }

    v78 = swift_slowAlloc();
    memcpy(v78, v103, v10);
    v79 = v83;
    sub_22F1EBC34(v78, v86, a2, v28, &v105);
    v81 = v80;

    if (!v79)
    {

      MEMORY[0x2319033A0](v78, -1, -1);
      v100 = v107;
      a2 = v81;
      goto LABEL_62;
    }

    result = MEMORY[0x2319033A0](v78, -1, -1);
    __break(1u);
  }

  else
  {

    a2 = MEMORY[0x277D84FA0];
LABEL_63:
    v76 = *MEMORY[0x277D85DE8];
    return a2;
  }

  return result;
}

uint64_t sub_22F1E8A10(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22F742170();

    sub_22F740D60();
    v24 = sub_22F7421D0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22F1B8E24(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22F742170();

            sub_22F740D60();
            v43 = sub_22F7421D0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22F1EC4C4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x2319033A0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_22F0FF590();
    goto LABEL_53;
  }

  result = MEMORY[0x2319033A0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E8F80(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 56);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22F742170();

    sub_22F740D60();
    v24 = sub_22F7421D0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22F1B8E24(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 56);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22F742170();

            sub_22F740D60();
            v43 = sub_22F7421D0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22F1EC0A8(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x2319033A0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_22F0FF590();
    goto LABEL_53;
  }

  result = MEMORY[0x2319033A0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E94F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_22F742170();

    sub_22F740D60();
    v12 = sub_22F7421D0();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_22F742040() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_22F1B8E24(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_22F742170();

        sub_22F740D60();
        v35 = sub_22F7421D0();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_22F742040() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_22F1EC2E0(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x2319033A0](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x2319033A0](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E999C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22F742170();

    sub_22F740D60();
    v24 = sub_22F7421D0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22F1B8E24(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22F742170();

            sub_22F740D60();
            v43 = sub_22F7421D0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22F1EC4C4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x2319033A0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_22F0FF590();
    goto LABEL_53;
  }

  result = MEMORY[0x2319033A0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E9F0C(unint64_t a1, unint64_t a2)
{
  v184 = *MEMORY[0x277D85DE8];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v4 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v158 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v138 - v7;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v160 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v168 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v143 = &v138 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v138 - v19);
  MEMORY[0x28223BE20](v21);
  v139 = &v138 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v140 = &v138 - v28;
  v175 = type metadata accessor for SongSource();
  v29 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v165 = (&v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v172 = (&v138 - v32);
  MEMORY[0x28223BE20](v33);
  v166 = (&v138 - v34);
  MEMORY[0x28223BE20](v35);
  v38 = (&v138 - v37);
  v176 = a2;
  if (!*(a2 + 16))
  {

    v176 = MEMORY[0x277D84FA0];
    goto LABEL_114;
  }

  v144 = v26;
  v138 = 0;
  v39 = *(a1 + 56);
  v155 = a1 + 56;
  v40 = -1 << *(a1 + 32);
  v151 = ~v40;
  if (-v40 < 64)
  {
    v41 = ~(-1 << -v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & v39;
  v145 = (63 - v40) >> 6;
  v150 = (v36 + 56);
  v141 = v36;
  v149 = (v36 + 48);
  v170 = (v10 + 48);
  v159 = (v10 + 32);
  v163 = (v10 + 8);
  v174 = (v176 + 56);

  v44 = 0;
  v169 = v9;
  v152 = v20;
  v153 = v38;
  for (i = a1; ; a1 = i)
  {
    v45 = v42;
    v46 = v44;
    v47 = v140;
    if (v42)
    {
LABEL_15:
      v51 = (v45 - 1) & v45;
      sub_22F1A39E0(*(a1 + 48) + *(v141 + 72) * (__clz(__rbit64(v45)) | (v46 << 6)), v140, type metadata accessor for SongSource);
      v52 = 0;
      v53 = v46;
    }

    else
    {
      v48 = v145 <= (v44 + 1) ? v44 + 1 : v145;
      v49 = v48 - 1;
      v50 = v44;
      while (1)
      {
        v46 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_117;
        }

        if (v46 >= v145)
        {
          break;
        }

        v45 = *(v155 + 8 * v46);
        ++v50;
        if (v45)
        {
          goto LABEL_15;
        }
      }

      v51 = 0;
      v52 = 1;
      v53 = v49;
    }

    v54 = v175;
    v147 = *v150;
    v147(v47, v52, 1, v175);
    v179 = a1;
    v180 = v155;
    v181 = v151;
    v182 = v53;
    v156 = v53;
    v157 = v51;
    v183 = v51;
    v146 = *v149;
    if (v146(v47, 1, v54) == 1)
    {
      sub_22F120ADC(v47, &qword_27DAB2460, &qword_22F78B130);
      goto LABEL_113;
    }

    v55 = v47;
    v56 = v153;
    sub_22F1BA7A4(v55, v153, type metadata accessor for SongSource);
    v57 = *(v176 + 40);
    sub_22F742170();
    v58 = *v56;
    v178 = v56[1];
    sub_22F740D60();
    v59 = (v56 + v54[11]);
    if (v59[1])
    {
      v60 = *v59;
      sub_22F742190();
      v54 = v175;
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    v20 = v166;
    v164 = v54[7];
    v61 = v139;
    sub_22F13BA9C(v56 + v164, v139, &qword_27DAB0920, &qword_22F770B20);
    a2 = *v170;
    if ((*v170)(v61, 1, v9) == 1)
    {
      sub_22F742190();
    }

    else
    {
      v62 = v160;
      (*v159)(v160, v61, v9);
      sub_22F742190();
      sub_22F1662C8(&qword_2810AC710);
      sub_22F740D50();
      (*v163)(v62, v9);
    }

    v63 = (v56 + v54[8]);
    v64 = v63[1];
    v142 = *v63;
    sub_22F742190();
    if (v64)
    {
      sub_22F740D60();
    }

    v154 = v64;
    v65 = (v56 + v54[12]);
    if (v65[1])
    {
      v66 = *v65;
      sub_22F742190();
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    v67 = sub_22F7421D0();
    v68 = -1 << *(v176 + 32);
    v44 = v67 & ~v68;
    v69 = v44 >> 6;
    v46 = 1 << v44;
    if (((1 << v44) & v174[v44 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_22F1A3AB0(v56, type metadata accessor for SongSource);
    v44 = v156;
    v42 = v157;
  }

  v177 = ~v68;
  v173 = *(v141 + 72);
  v162 = a2;
  v161 = v58;
  while (1)
  {
    v171 = v69;
    sub_22F1A39E0(*(v176 + 48) + v173 * v44, v20, type metadata accessor for SongSource);
    v70 = *v20 == v58 && v20[1] == v178;
    if (!v70 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_32;
    }

    v71 = *(v167 + 48);
    sub_22F13BA9C(v20 + *(v175 + 28), v8, &qword_27DAB0920, &qword_22F770B20);
    sub_22F13BA9C(v56 + v164, &v8[v71], &qword_27DAB0920, &qword_22F770B20);
    if ((a2)(v8, 1, v9) == 1)
    {
      v72 = (a2)(&v8[v71], 1, v9);
      v20 = v166;
      if (v72 != 1)
      {
        goto LABEL_31;
      }

      sub_22F120ADC(v8, &qword_27DAB0920, &qword_22F770B20);
      v58 = v161;
    }

    else
    {
      v73 = v8;
      v74 = v8;
      v75 = v152;
      sub_22F13BA9C(v73, v152, &qword_27DAB0920, &qword_22F770B20);
      if ((a2)(v74 + v71, 1, v9) == 1)
      {
        (*v163)(v75, v9);
        v8 = v74;
        v56 = v153;
        v20 = v166;
LABEL_31:
        sub_22F120ADC(v8, &unk_27DAB05B0, &unk_22F771430);
        v58 = v161;
LABEL_32:
        sub_22F1A3AB0(v20, type metadata accessor for SongSource);
        goto LABEL_33;
      }

      v76 = v160;
      (*v159)(v160, v74 + v71, v9);
      sub_22F1662C8(&qword_2810AC700);
      v77 = sub_22F740DE0();
      v78 = *v163;
      (*v163)(v76, v169);
      v78(v75, v169);
      a2 = v162;
      v9 = v169;
      sub_22F120ADC(v74, &qword_27DAB0920, &qword_22F770B20);
      v8 = v74;
      v56 = v153;
      v20 = v166;
      v58 = v161;
      if ((v77 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v79 = (v20 + *(v175 + 32));
    v80 = v79[1];
    if (!v80)
    {
      if (!v154)
      {
        break;
      }

      goto LABEL_32;
    }

    if (!v154)
    {
      goto LABEL_32;
    }

    if (*v79 == v142 && v80 == v154)
    {
      break;
    }

    v81 = sub_22F742040();
    sub_22F1A3AB0(v20, type metadata accessor for SongSource);
    if (v81)
    {
      goto LABEL_55;
    }

LABEL_33:
    v44 = (v44 + 1) & v177;
    v69 = v44 >> 6;
    v46 = 1 << v44;
    if ((v174[v44 >> 6] & (1 << v44)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_22F1A3AB0(v20, type metadata accessor for SongSource);
LABEL_55:
  v82 = sub_22F1A3AB0(v56, type metadata accessor for SongSource);
  v83 = *(v176 + 32);
  v142 = ((1 << v83) + 63) >> 6;
  v43 = 8 * v142;
  a2 = v157;
  v20 = v165;
  if ((v83 & 0x3Fu) > 0xD)
  {
    goto LABEL_118;
  }

  while (2)
  {
    v152 = &v138;
    MEMORY[0x28223BE20](v82);
    v85 = &v138 - ((v84 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v85, v174, v84);
    v86 = *&v85[8 * v171] & ~v46;
    v154 = v85;
    *&v85[8 * v171] = v86;
    v87 = *(v176 + 16) - 1;
    v44 = i;
    v88 = v144;
    v89 = v155;
    v90 = v145;
    v91 = v156;
LABEL_57:
    v153 = v87;
    while (2)
    {
      if (a2)
      {
        v92 = v91;
        v46 = v175;
LABEL_69:
        v95 = __clz(__rbit64(a2));
        v96 = (a2 - 1) & a2;
        sub_22F1A39E0(*(v44 + 48) + (v95 | (v92 << 6)) * v173, v88, type metadata accessor for SongSource);
        v97 = 0;
LABEL_70:
        v147(v88, v97, 1, v46);
        v179 = v44;
        v180 = v155;
        v181 = v151;
        v182 = v91;
        v183 = v96;
        if (v146(v88, 1, v46) == 1)
        {
          sub_22F120ADC(v88, &qword_27DAB2460, &qword_22F78B130);
          v176 = sub_22F1B9328(v154, v142, v153, v176);
          goto LABEL_113;
        }

        v157 = v96;
        v156 = v91;
        v98 = v172;
        sub_22F1BA7A4(v88, v172, type metadata accessor for SongSource);
        v99 = *(v176 + 40);
        sub_22F742170();
        v100 = *v98;
        v177 = v98[1];
        v178 = v100;
        sub_22F740D60();
        v101 = (v98 + *(v46 + 44));
        if (v101[1])
        {
          v102 = *v101;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v103 = v158;
        v104 = v162;
        v166 = *(v46 + 28);
        v105 = v143;
        sub_22F13BA9C(v166 + v172, v143, &qword_27DAB0920, &qword_22F770B20);
        if (v104(v105, 1, v9) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v106 = v160;
          (*v159)(v160, v105, v9);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710);
          sub_22F740D50();
          v107 = v106;
          v46 = v175;
          (*v163)(v107, v9);
        }

        v108 = (v172 + *(v46 + 32));
        v109 = v108[1];
        v161 = *v108;
        sub_22F742190();
        if (v109)
        {
          sub_22F740D60();
        }

        v110 = (v172 + *(v46 + 48));
        v111 = v110[1];
        v164 = v109;
        if (v111)
        {
          v112 = *v110;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v113 = sub_22F7421D0();
        v114 = -1 << *(v176 + 32);
        v115 = v113 & ~v114;
        v116 = v115 >> 6;
        v117 = 1 << v115;
        if (((1 << v115) & v174[v115 >> 6]) == 0)
        {
LABEL_58:
          sub_22F1A3AB0(v172, type metadata accessor for SongSource);
          v44 = i;
          v9 = v169;
          v88 = v144;
          v89 = v155;
          v90 = v145;
          v91 = v156;
          a2 = v157;
          continue;
        }

        v171 = ~v114;
LABEL_88:
        sub_22F1A39E0(*(v176 + 48) + v115 * v173, v20, type metadata accessor for SongSource);
        v118 = *v20 == v178 && v20[1] == v177;
        if (!v118 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_86;
        }

        v119 = *(v167 + 48);
        sub_22F13BA9C(v20 + *(v175 + 28), v103, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v166 + v172, v103 + v119, &qword_27DAB0920, &qword_22F770B20);
        v120 = v169;
        if (v104(v103, 1, v169) == 1)
        {
          v121 = v104(v103 + v119, 1, v120);
          v20 = v165;
          if (v121 == 1)
          {
            sub_22F120ADC(v103, &qword_27DAB0920, &qword_22F770B20);
            goto LABEL_98;
          }

LABEL_85:
          sub_22F120ADC(v103, &unk_27DAB05B0, &unk_22F771430);
          goto LABEL_86;
        }

        sub_22F13BA9C(v103, v168, &qword_27DAB0920, &qword_22F770B20);
        if (v104(v103 + v119, 1, v120) == 1)
        {
          (*v163)(v168, v120);
          v20 = v165;
          goto LABEL_85;
        }

        v122 = v103 + v119;
        v123 = v160;
        (*v159)(v160, v122, v120);
        sub_22F1662C8(&qword_2810AC700);
        v124 = sub_22F740DE0();
        v125 = *v163;
        (*v163)(v123, v120);
        v125(v168, v120);
        v104 = v162;
        v103 = v158;
        sub_22F120ADC(v158, &qword_27DAB0920, &qword_22F770B20);
        v20 = v165;
        if (v124)
        {
LABEL_98:
          v126 = (v20 + *(v175 + 32));
          v127 = v126[1];
          if (!v127)
          {
            if (!v164)
            {
              goto LABEL_105;
            }

            goto LABEL_86;
          }

          if (!v164)
          {
            goto LABEL_86;
          }

          if (*v126 == v161 && v127 == v164)
          {
LABEL_105:
            sub_22F1A3AB0(v20, type metadata accessor for SongSource);
LABEL_106:
            sub_22F1A3AB0(v172, type metadata accessor for SongSource);
            v129 = v154[v116];
            v154[v116] = v129 & ~v117;
            v70 = (v129 & v117) == 0;
            v44 = i;
            v9 = v169;
            v88 = v144;
            v89 = v155;
            v90 = v145;
            v91 = v156;
            a2 = v157;
            if (!v70)
            {
              v87 = v153 - 1;
              if (__OFSUB__(v153, 1))
              {
                __break(1u);
              }

              if (v153 == 1)
              {

                v176 = MEMORY[0x277D84FA0];
                goto LABEL_113;
              }

              goto LABEL_57;
            }

            continue;
          }

          v128 = sub_22F742040();
          sub_22F1A3AB0(v20, type metadata accessor for SongSource);
          if (v128)
          {
            goto LABEL_106;
          }
        }

        else
        {
LABEL_86:
          sub_22F1A3AB0(v20, type metadata accessor for SongSource);
        }

        v115 = (v115 + 1) & v171;
        v116 = v115 >> 6;
        v117 = 1 << v115;
        if ((v174[v115 >> 6] & (1 << v115)) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_88;
      }

      break;
    }

    if (v90 <= (v91 + 1))
    {
      v93 = v91 + 1;
    }

    else
    {
      v93 = v90;
    }

    v94 = v93 - 1;
    v46 = v175;
    while (1)
    {
      v92 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v92 >= v90)
      {
        v96 = 0;
        v97 = 1;
        v91 = v94;
        goto LABEL_70;
      }

      a2 = *(v89 + 8 * v92);
      ++v91;
      if (a2)
      {
        v91 = v92;
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v132 = v43;

    v133 = v132;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v9 = v169;
      continue;
    }

    break;
  }

  v134 = swift_slowAlloc();
  memcpy(v134, v174, v133);
  v135 = v138;
  sub_22F1EC6FC(v134, v142, v176, v44, &v179);
  v137 = v136;

  if (v135)
  {

    result = MEMORY[0x2319033A0](v134, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x2319033A0](v134, -1, -1);
    v176 = v137;
LABEL_113:
    sub_22F0FF590();
LABEL_114:
    v130 = *MEMORY[0x277D85DE8];
    return v176;
  }

  return result;
}

uint64_t sub_22F1EB59C(uint64_t a1, uint64_t a2)
{
  v67[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v53 - v9;
  MEMORY[0x28223BE20](v11);
  i = v53 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_31;
  }

  v67[0] = a1;
  v13 = *(a1 + 16);

  v55 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v57 = a1;
  v58 = a1 + ((v17 + 32) & ~v17);
  v64 = *(v15 + 56);
  v65 = v16;
  v62 = (a2 + 56);
  v63 = a2;
  v66 = v15;
  v18 = (v15 - 8);
  v54 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v59 = v14 + 1;
    v67[1] = v14 + 1;
    v65(i, v58 + v64 * v14, v4);
    v19 = *(a2 + 40);
    v56 = sub_22F1662C8(&qword_2810AC710);
    v20 = sub_22F740D40();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v62[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v59;
    if (v59 == v55)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v65(v10, *(v63 + 48) + v22 * v64, v4);
    sub_22F1662C8(&qword_2810AC700);
    v26 = sub_22F740DE0();
    v27 = *v18;
    (*v18)(v10, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v62[v22 >> 6]) == 0)
    {
      a2 = v63;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v63;
  v30 = *(v63 + 32);
  v53[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v53[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v53[1] = v53;
    MEMORY[0x28223BE20](v28);
    v33 = v53 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v62, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v54 = v33;
    v55 = (v34 - 1);
    v35 = *(v57 + 16);
    v36 = v59;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_22F1B9A78(v54, v53[0], v55, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v57 + 16))
      {
        break;
      }

      v59 = v36;
      v65(v61, v58 + v36 * v64, v4);
      v38 = *(v29 + 40);
      v39 = sub_22F740D40();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v62[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v65(v10, *(v63 + 48) + v22 * v64, v4);
      v41 = sub_22F740DE0();
      v27(v10, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v62[v22 >> 6]) == 0)
          {
            break;
          }

          v65(v10, *(v63 + 48) + v22 * v64, v4);
          v43 = sub_22F740DE0();
          v27(v10, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v61, v4);
        v29 = v63;
LABEL_16:
        v37 = v59;
        goto LABEL_17;
      }

LABEL_25:
      v27(v61, v4);
      v44 = v54[v24];
      v54[v24] = v44 & ~v23;
      v29 = v63;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v55 - 1;
      v37 = v59;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_33;
      }

      --v55;
      if (!v45)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v63;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v49);
  sub_22F1ED1E4(v51, v53[0], v63, v22, v67);
  a2 = v52;

  MEMORY[0x2319033A0](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_22F1EBC34(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v58 = type metadata accessor for Song();
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v59 = v18;
  v60 = (&v51 - v17);
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20) & ((-1 << a4) - 1);
  v53 = a1;
  v54 = v12;
  *(a1 + v20) = v21;
  v22 = v19 - 1;
  v56 = (v18 + 48);
  v57 = (v18 + 56);
  v62 = a3;
  v61 = a3 + 56;
  v55 = a5;
  while (2)
  {
    v52 = v22;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_14;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v28 = a5[3];
LABEL_13:
        v32 = (v27 - 1) & v27;
        sub_22F1A39E0(*(v23 + 48) + *(v59 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, type metadata accessor for Song);
        v33 = 0;
        v31 = v28;
LABEL_14:
        v34 = v58;
        (*v57)(v12, v33, 1, v58);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v56)(v12, 1, v34) == 1)
        {
          sub_22F120ADC(v12, &qword_27DAB1250, &qword_22F781A10);
          v50 = v62;

          sub_22F1B9048(v53, v51, v52, v50);
          return;
        }

        v35 = v60;
        sub_22F1BA7A4(v12, v60, type metadata accessor for Song);
        v36 = v62;
        v37 = *(v62 + 40);
        sub_22F742170();
        v38 = *v35;
        v39 = v35[1];
        sub_22F740D60();
        v40 = sub_22F7421D0();
        v41 = -1 << *(v36 + 32);
        v42 = v40 & ~v41;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if (((1 << v42) & *(v61 + 8 * (v42 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_22F1A3AB0(v60, type metadata accessor for Song);
        v12 = v54;
        a5 = v55;
      }

      v45 = ~v41;
      v46 = *(v59 + 72);
      while (1)
      {
        sub_22F1A39E0(*(v62 + 48) + v46 * v42, v15, type metadata accessor for Song);
        if (*v15 == v38 && v15[1] == v39)
        {
          break;
        }

        v48 = sub_22F742040();
        sub_22F1A3AB0(v15, type metadata accessor for Song);
        if (v48)
        {
          goto LABEL_25;
        }

        v42 = (v42 + 1) & v45;
        v43 = v42 >> 6;
        v44 = 1 << v42;
        if (((1 << v42) & *(v61 + 8 * (v42 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_22F1A3AB0(v15, type metadata accessor for Song);
LABEL_25:
      sub_22F1A3AB0(v60, type metadata accessor for Song);
      v12 = v54;
      v49 = v53[v43];
      v53[v43] = v49 & ~v44;
      a5 = v55;
    }

    while ((v49 & v44) == 0);
    v22 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v52 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22F1EC0A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22F1B8E24(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22F742170();

        sub_22F740D60();
        v20 = sub_22F7421D0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22F742040() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22F1EC2E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_22F1B8E24(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_22F742170();

        sub_22F740D60();
        v17 = sub_22F7421D0();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_22F742040() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22F1EC4C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22F1B8E24(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22F742170();

        sub_22F740D60();
        v20 = sub_22F7421D0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22F742040() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_22F1EC6FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v81[0] = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v9 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v11 = v81 - v10;
  v101 = sub_22F73F690();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v101);
  v91 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v93 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v85 = v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v86 = v81 - v22;
  v102 = type metadata accessor for SongSource();
  v23 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v110 = (v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v107 = (v81 - v26);
  v27 = *(a3 + 16);
  v28 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v29 = *(a1 + v28) & ((-1 << a4) - 1);
  v83 = a1;
  *(a1 + v28) = v29;
  v30 = v27 - 1;
  v88 = (v31 + 56);
  v89 = v31;
  v87 = (v31 + 48);
  v100 = (v12 + 48);
  v90 = (v12 + 32);
  v94 = (v12 + 8);
  v103 = a3;
  v84 = a5;
  v95 = a3 + 56;
  do
  {
    v82 = v30;
    do
    {
      while (1)
      {
        v32 = *a5;
        v33 = a5[1];
        v35 = a5[2];
        v34 = a5[3];
        v36 = a5[4];
        if (!v36)
        {
          v38 = (v35 + 64) >> 6;
          if (v38 <= v34 + 1)
          {
            v39 = v34 + 1;
          }

          else
          {
            v39 = (v35 + 64) >> 6;
          }

          v40 = v39 - 1;
          while (1)
          {
            v37 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v37 >= v38)
            {
              v41 = 0;
              v43 = 1;
              v42 = v86;
              goto LABEL_14;
            }

            v36 = *(v33 + 8 * v37);
            ++v34;
            if (v36)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          return;
        }

        v37 = a5[3];
LABEL_13:
        v41 = (v36 - 1) & v36;
        v42 = v86;
        sub_22F1A39E0(*(v32 + 48) + *(v89 + 72) * (__clz(__rbit64(v36)) | (v37 << 6)), v86, type metadata accessor for SongSource);
        v43 = 0;
        v40 = v37;
LABEL_14:
        v44 = v102;
        (*v88)(v42, v43, 1, v102);
        *a5 = v32;
        a5[1] = v33;
        a5[2] = v35;
        a5[3] = v40;
        a5[4] = v41;
        if ((*v87)(v42, 1, v44) == 1)
        {
          sub_22F120ADC(v42, &qword_27DAB2460, &qword_22F78B130);
          v80 = v103;

          sub_22F1B9328(v83, v81[0], v82, v80);
          return;
        }

        v45 = v107;
        sub_22F1BA7A4(v42, v107, type metadata accessor for SongSource);
        v46 = v103;
        v47 = *(v103 + 40);
        sub_22F742170();
        v48 = *v45;
        v108 = v45[1];
        v109 = v48;
        sub_22F740D60();
        v49 = (v45 + v44[11]);
        v50 = v44;
        if (v49[1])
        {
          v51 = *v49;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v52 = v101;
        v99 = v50[7];
        v53 = v85;
        sub_22F13BA9C(v107 + v99, v85, &qword_27DAB0920, &qword_22F770B20);
        v54 = *v100;
        if ((*v100)(v53, 1, v52) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v55 = v91;
          (*v90)(v91, v53, v52);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710);
          sub_22F740D50();
          (*v94)(v55, v52);
        }

        v56 = v95;
        v57 = (v107 + v50[8]);
        v58 = *v57;
        v96 = v57[1];
        if (v96)
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v59 = (v107 + v50[12]);
        v60 = v59[1];
        v92 = v58;
        if (v60)
        {
          v61 = *v59;
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v62 = sub_22F7421D0();
        v63 = -1 << *(v46 + 32);
        v64 = v62 & ~v63;
        v65 = v64 >> 6;
        v66 = 1 << v64;
        if (((1 << v64) & *(v56 + 8 * (v64 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_22F1A3AB0(v107, type metadata accessor for SongSource);
        a5 = v84;
      }

      v98 = v54;
      v105 = ~v63;
      v106 = *(v89 + 72);
      while (1)
      {
        v104 = v65;
        v67 = v110;
        sub_22F1A39E0(*(v46 + 48) + v106 * v64, v110, type metadata accessor for SongSource);
        v68 = *v67 == v109 && v67[1] == v108;
        if (!v68 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_31;
        }

        v69 = *(v97 + 48);
        sub_22F13BA9C(v110 + v50[7], v11, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v107 + v99, &v11[v69], &qword_27DAB0920, &qword_22F770B20);
        v70 = v101;
        v71 = v98;
        if (v98(v11, 1, v101) == 1)
        {
          if (v71(&v11[v69], 1, v70) != 1)
          {
            goto LABEL_30;
          }

          sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
          v50 = v102;
          v46 = v103;
        }

        else
        {
          v72 = v93;
          sub_22F13BA9C(v11, v93, &qword_27DAB0920, &qword_22F770B20);
          if (v71(&v11[v69], 1, v70) == 1)
          {
            (*v94)(v72, v70);
            v56 = v95;
LABEL_30:
            sub_22F120ADC(v11, &unk_27DAB05B0, &unk_22F771430);
            v50 = v102;
            v46 = v103;
LABEL_31:
            sub_22F1A3AB0(v110, type metadata accessor for SongSource);
            goto LABEL_32;
          }

          v73 = v91;
          (*v90)(v91, &v11[v69], v70);
          sub_22F1662C8(&qword_2810AC700);
          v74 = sub_22F740DE0();
          v75 = *v94;
          (*v94)(v73, v70);
          v75(v72, v70);
          v46 = v103;
          sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
          v50 = v102;
          v56 = v95;
          if ((v74 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v76 = (v110 + v50[8]);
        v77 = v76[1];
        if (!v77)
        {
          if (!v96)
          {
            break;
          }

          goto LABEL_31;
        }

        if (!v96)
        {
          goto LABEL_31;
        }

        if (*v76 == v92 && v77 == v96)
        {
          break;
        }

        v78 = sub_22F742040();
        sub_22F1A3AB0(v110, type metadata accessor for SongSource);
        if (v78)
        {
          goto LABEL_51;
        }

LABEL_32:
        v64 = (v64 + 1) & v105;
        v65 = v64 >> 6;
        v66 = 1 << v64;
        if ((*(v56 + 8 * (v64 >> 6)) & (1 << v64)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_22F1A3AB0(v110, type metadata accessor for SongSource);
LABEL_51:
      sub_22F1A3AB0(v107, type metadata accessor for SongSource);
      v79 = v83[v104];
      v83[v104] = v79 & ~v66;
      a5 = v84;
    }

    while ((v79 & v66) == 0);
    v30 = v82 - 1;
    if (__OFSUB__(v82, 1))
    {
      goto LABEL_59;
    }
  }

  while (v82 != 1);
}

void sub_22F1ED1E4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v44 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    sub_22F1B9A78(v38, v37, v39, a3);
    return;
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9, v17);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_22F1662C8(&qword_2810AC710);
    v27 = sub_22F740D40();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_5:
      v23(v50, v9);
      goto LABEL_6;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      (v46)(v13, *(v32 + 48) + v29 * v47, v9);
      sub_22F1662C8(&qword_2810AC700);
      v34 = sub_22F740DE0();
      v23 = *v49;
      (*v49)(v13, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_5;
      }
    }

    v23(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_6:
      v10 = v43;
      goto LABEL_7;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_20;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return;
    }

LABEL_7:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_22F1ED5B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___PGMusicBag_atomicMusicBagContents;
  sub_22F1EDA74(__src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2440, &qword_22F779CC0);
  v5 = swift_allocObject();
  *(v5 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v5 + 16), __src, 0x121uLL);
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR___PGMusicBag_cache] = a1;
  v6 = a1;
  v7 = sub_22F740DF0();
  v8 = sub_22F740DF0();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8];

  *&v1[OBJC_IVAR___PGMusicBag_amsBag] = v9;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_22F1ED6E0()
{
  v0 = sub_22F740DF0();
  v1 = sub_22F740DF0();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  v3 = sub_22F740DF0();
  v4 = [v2 stringForKey_];

  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v13[4] = sub_22F1EDC08;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22F1EDBD4;
  v13[3] = &block_descriptor_93;
  v8 = _Block_copy(v13);

  v9 = v5;

  [v4 valueWithCompletion_];
  _Block_release(v8);
  sub_22F741780();

  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);

  return v10;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1ED91C()
{
  result = qword_27DAB2430;
  if (!qword_27DAB2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2430);
  }

  return result;
}

unint64_t sub_22F1ED9CC()
{
  result = qword_2810AB720;
  if (!qword_2810AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB720);
  }

  return result;
}

unint64_t sub_22F1EDA20()
{
  result = qword_2810AA3B8;
  if (!qword_2810AA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3B8);
  }

  return result;
}

double sub_22F1EDA74(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = -1;
  return result;
}

unint64_t sub_22F1EDAC4()
{
  result = qword_27DAB2450;
  if (!qword_27DAB2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2450);
  }

  return result;
}

uint64_t sub_22F1EDB8C(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t GraphSearchEntity.label.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_label);
  v2 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_label + 8);

  return v1;
}

uint64_t GraphSearchEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_identifier);
  v2 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_identifier + 8);

  return v1;
}

uint64_t GraphSearchEntity.localeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_localeIdentifier);
  v2 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_localeIdentifier + 8);

  return v1;
}

uint64_t sub_22F1EDD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id GraphSearchEntity.__allocating_init(type:label:identifier:confidence:rankingScore:localeIdentifier:dateInterval:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v22 = objc_allocWithZone(v11);
  *&v22[OBJC_IVAR___PGGraphSearchEntity_type] = a1;
  v23 = &v22[OBJC_IVAR___PGGraphSearchEntity_label];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &v22[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v24 = a4;
  *(v24 + 1) = a5;
  *&v22[OBJC_IVAR___PGGraphSearchEntity_confidence] = a9;
  *&v22[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = a10;
  v25 = &v22[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v25 = a6;
  *(v25 + 1) = a7;
  sub_22F1EDD04(a8, &v22[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v22[OBJC_IVAR___PGGraphSearchEntity_synonyms] = a11;
  v28.receiver = v22;
  v28.super_class = v11;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_22F1EDFCC(a8);
  return v26;
}

id GraphSearchEntity.init(type:label:identifier:confidence:rankingScore:localeIdentifier:dateInterval:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  *&v11[OBJC_IVAR___PGGraphSearchEntity_type] = a1;
  v23 = &v11[OBJC_IVAR___PGGraphSearchEntity_label];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &v11[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v24 = a4;
  *(v24 + 1) = a5;
  *&v11[OBJC_IVAR___PGGraphSearchEntity_confidence] = a9;
  *&v11[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = a10;
  v25 = &v11[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v25 = a6;
  *(v25 + 1) = a7;
  sub_22F1EDD04(a8, &v11[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v11[OBJC_IVAR___PGGraphSearchEntity_synonyms] = a11;
  v28.receiver = v11;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_22F1EDFCC(a8);
  return v26;
}

uint64_t sub_22F1EDFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id GraphSearchEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphSearchEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GraphSearchEntity()
{
  result = qword_2810AC398;
  if (!qword_2810AC398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1EE1DC()
{
  sub_22F1EE2CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22F1EE2CC()
{
  if (!qword_2810AC728)
  {
    sub_22F73F090();
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_2810AC728);
    }
  }
}

uint64_t sub_22F1EE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1103)
  {
    v3 = sub_22F740DF0();
    v4 = identifierForSeasonLabel(v3);
  }

  else
  {
    if (a3 != 1600)
    {
      return 0;
    }

    v3 = sub_22F740DF0();
    v4 = identifierForMeaningLabel(v3);
  }

  v5 = v4;

  if (v5)
  {
    v6 = sub_22F740E20();

    return v6;
  }

  return 0;
}

unint64_t sub_22F1EE3B4()
{
  v1 = (v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash);
  if (*(v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash + 8) != 1)
  {
    return *v1;
  }

  result = sub_22F1EEDD0(*(v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword));
  *v1 = result;
  v1[8] = 0;
  return result;
}

id KeywordBasedFeatureExtractor.__allocating_init(with:)()
{
  v1 = v0;
  v2 = sub_22F7401D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v8 = &v7[OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash];
  *v8 = 0;
  v8[8] = 1;
  sub_22F7401C0();
  v9 = sub_22F740190();

  (*(v3 + 8))(v6, v2);
  *&v7[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword] = v9;
  v11.receiver = v7;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id KeywordBasedFeatureExtractor.init(with:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22F7401D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash];
  *v8 = 0;
  v8[8] = 1;
  sub_22F7401C0();
  v9 = sub_22F740190();

  (*(v4 + 8))(v7, v3);
  *&v1[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword] = v9;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id KeywordBasedFeatureExtractor.musicCurationFeatures(context:progressReporter:)(uint64_t a1)
{
  v3 = v2;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4E90;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("KeywordBasedFeatureExtractor - musicCurationFeatures", 52, 2u, v6, 0, v5, v38);
  v7 = sub_22F7416B0();
  v9 = v8;
  v10 = sub_22F2111D0(*&v1[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword]);
  if (v2)
  {

    sub_22F1B2BBC(0);
  }

  else
  {
    v11 = v10;
    v12 = sub_22F3EB684(a1, v10);
    v15 = v14;
    v36 = v12;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v17 = v1;

    v18 = sub_22F740B70();
    v19 = sub_22F7415D0();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v20 = 136315394;
      v21 = sub_22F740CB0();
      v23 = sub_22F145F20(v21, v22, &v39);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_22F740CB0();
      v26 = sub_22F145F20(v24, v25, &v39);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_22F0FC000, v18, v34, "[musicCurationFeatures] Keywords BEFORE: %s |\n AFTER: scoreByKeyword = %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    v27 = sub_22F1EE3B4();
    v28 = type metadata accessor for MusicCurationFeatures();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = MEMORY[0x277D84F90];
    v30 = &v29[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
    v30[8] = 1;
    *v30 = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = 0;
    v31 = &v29[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
    *v31 = 0;
    v31[1] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = v36;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = v15;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = v27;
    v32 = &v29[OBJC_IVAR___PGMusicCurationFeatures_location];
    *v32 = 0;
    v32[1] = 0;
    v29[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = v11;
    v37.receiver = v29;
    v37.super_class = v28;
    v33 = v11;
    v3 = objc_msgSendSuper2(&v37, sel_init);

    sub_22F1B2BBC(0);
  }

  return v3;
}

id KeywordBasedFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeywordBasedFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F1EEDD0(uint64_t a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_22F10B348(*(a1 + 16), 0);
    v4 = sub_22F120B3C(v17, v3 + 32, v2, a1);

    sub_22F0FF590();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v17[0] = v3;
  sub_22F1AB0EC(v17);
  v5 = *(v17[0] + 2);
  if (v5)
  {
    v6 = 0;
    v7 = (v17[0] + 40);
    do
    {
      if (*(a1 + 16))
      {
        v12 = *(v7 - 1);
        v11 = *v7;

        v13 = sub_22F1229E8(v12, v11);
        if (v14)
        {
          v8 = *(*(a1 + 56) + 4 * v13);
          v9 = sub_22F1D226C(v12, v11);

          v10 = ((v6 << 6) + 2654435769u + (v6 >> 2) + v9) ^ v6;
          v6 = (sub_22F7413F0() + 2654435769 + (v10 << 6) + (v10 >> 2)) ^ v10;
        }

        else
        {
        }
      }

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t static FlexMusicSongUtility.value<A>(forTagPrefix:fromTagIDs:ofType:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = sub_22F10B348(*(a3 + 16), 0);
    v7 = sub_22F11A438(&v23, v6 + 4, v4, a3);

    result = sub_22F1534EC();
    if (v7 != v4)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v8 = v6[2];
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
LABEL_16:

      return 0;
    }
  }

  v9 = 0;
  v10 = v6 + 5;
  while (1)
  {
    if (v9 >= v6[2])
    {
      __break(1u);
      goto LABEL_27;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    v23 = v11;
    v24 = v12;
    sub_22F160DE4();

    if ((sub_22F741910() & 1) == 0 || (v23 = v11, v24 = v12, sub_22F1BA874(), sub_22F1B1F54(), v13 = sub_22F740D70(), , v13[2] != 2))
    {

      goto LABEL_8;
    }

    v15 = v13[8];
    v14 = v13[9];
    v17 = v13[10];
    v16 = v13[11];

    if (sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0) != a4)
    {

      if (sub_22F120634(0, &qword_27DAB24A8, 0x277CCACA8) != a4)
      {

        return 0;
      }

      v23 = v15;
      v24 = v14;
      v25 = v17;
      v26 = v16;
      if (swift_dynamicCast())
      {
        return 95;
      }

      else
      {
        return 0;
      }
    }

    result = sub_22F741400();
    if ((result & 0x100000000) == 0)
    {
      break;
    }

LABEL_8:
    ++v9;
    v10 += 2;
    if (v8 == v9)
    {
      goto LABEL_16;
    }
  }

  v18 = result;

  v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v20) = v18;
  v21 = [v19 initWithFloat_];
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_22F1EF300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B0, &qword_22F779E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  v1 = *MEMORY[0x277D0A960];
  sub_22F740E20();
  v2 = MEMORY[0x277D837D0];
  sub_22F741A90();
  *(inited + 96) = v2;
  *(inited + 72) = 26704;
  *(inited + 80) = 0xE200000000000000;
  v3 = *MEMORY[0x277D0A958];
  sub_22F740E20();
  sub_22F741A90();
  *(inited + 168) = v2;
  *(inited + 144) = 0xD00000000000002BLL;
  *(inited + 152) = 0x800000022F791CB0;
  v4 = *MEMORY[0x277D0A948];
  sub_22F740E20();
  sub_22F741A90();
  *(inited + 240) = v2;
  *(inited + 216) = 0xD00000000000002BLL;
  *(inited + 224) = 0x800000022F791CE0;
  v5 = *MEMORY[0x277D0A950];
  v10 = sub_22F740E20();
  v11 = v6;
  sub_22F741A90();
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = 1;
  sub_22F14EF70(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E8, &qword_22F779E60);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x277D0A9A8]);
  v8 = sub_22F740C80();

  v9 = [v7 initWithOptions_];

  if (v9)
  {
    qword_2810A91C8 = v9;
  }

  else
  {
    __break(1u);
  }
}

id static FMSongLibrary.sharedLibrary.getter()
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2810A91C8;

  return v0;
}

void static FMSongLibrary.sharedLibrary.setter(uint64_t a1)
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  qword_2810A91C8 = a1;
}

uint64_t (*static FMSongLibrary.sharedLibrary.modify())()
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22F1EF73C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = sub_22F740E20();
  v9 = v8;
  v10 = a1;
  v11 = [v10 tagIDs];
  v12 = sub_22F741420();

  v13 = a4(v7, v9, v12);

  return v13;
}

uint64_t sub_22F1EF81C(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = sub_22F740E20();
  v7 = v6;
  v8 = [v2 tagIDs];
  v9 = sub_22F741420();

  v10 = a2(v5, v7, v9);

  return v10;
}

uint64_t FMSong.regions()()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = [v0 tagIDs];
  v2 = sub_22F741420();

  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v27 = v5;
    MEMORY[0x28223BE20](v3);
    v28 = v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v5 = 0;
    v7 = v2;
    v9 = *(v2 + 56);
    v2 += 56;
    v8 = v9;
    v10 = 1 << *(v2 - 24);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v13 = (v10 + 63) >> 6;
    v30 = *MEMORY[0x277D0A980];
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v18 = (*(v7 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_22F740E20();

      LOBYTE(v19) = sub_22F740FE0();

      if (v19)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22F1B8E24(v28, v27, v29, v7);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_22F1B8D94(v24, v5, v2, sub_22F1B6C64);

  MEMORY[0x2319033A0](v24, -1, -1);
  result = v25;
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22F1EFB84(void *a1)
{
  v1 = a1;
  v2 = [v1 tagIDs];
  v3 = sub_22F741420();

  sub_22F1EFC4C(v3);
  v4 = sub_22F741410();

  return v4;
}

uint64_t sub_22F1EFC4C(uint64_t a1)
{
  v2 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v4;
    v27 = v1;
    v25[1] = v25;
    MEMORY[0x28223BE20](a1);
    v28 = v25 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v5);
    v29 = 0;
    v4 = 0;
    v6 = v2;
    v8 = *(v2 + 56);
    v2 += 56;
    v7 = v8;
    v9 = 1 << *(v2 - 24);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v7;
    v12 = (v9 + 63) >> 6;
    v30 = *MEMORY[0x277D0A980];
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v4 << 6);
      v17 = (*(v6 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v1 = sub_22F740E20();

      LOBYTE(v18) = sub_22F740FE0();

      if (v18)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_22F1B8E24(v28, v26, v29, v6);
          goto LABEL_17;
        }
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v12)
      {
        goto LABEL_16;
      }

      v15 = *(v2 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_22F1B8D1C(v23, v4, v2);

  MEMORY[0x2319033A0](v23, -1, -1);
  result = v24;
LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F1EFEEC(void *a1, uint64_t a2)
{
  v45 = a2;
  v55 = sub_22F73F7A0();
  v3 = *(v55 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v43 - v8;
  v9 = sub_22F73F7C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_22F1B560C("GraphMusicCurationFeatureExtractor - extractMusicCurationFeatures", 65, 2u, 0, 1, qword_2810B4E90, v57);
  v14 = [a1 inferredUserLocales];
  sub_22F1F0500();
  v48 = v9;
  v15 = sub_22F741420();

  a1 = (v15 + 56);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v9 = v17 & *(v15 + 56);
  v18 = (v16 + 63) >> 6;
  v51 = (v3 + 8);
  v52 = v10 + 16;
  v53 = v10;
  v50 = (v10 + 8);
  v56 = v15;

  v19 = 0;
  v49 = MEMORY[0x277D84F90];
LABEL_5:
  v20 = v19;
  v21 = v47;
  v10 = v48;
  if (!v9)
  {
    goto LABEL_7;
  }

  do
  {
    v19 = v20;
LABEL_10:
    v22 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v53 + 16))(v13, *(v56 + 48) + *(v53 + 72) * (v22 | (v19 << 6)), v10);
    v23 = v54;
    sub_22F73F7B0();
    sub_22F73F790();
    (*v51)(v23, v55);
    v24 = sub_22F73F710();
    v3 = v21;
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v3, 1, v24) != 1)
    {
      v26 = sub_22F73F700();
      v43 = v27;
      v44 = v26;
      (*v50)(v13, v10);
      (*(v25 + 8))(v3, v24);
      v3 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22F13E1A8(0, *(v3 + 2) + 1, 1, v3);
      }

      v29 = *(v3 + 2);
      v28 = *(v3 + 3);
      if (v29 >= v28 >> 1)
      {
        v3 = sub_22F13E1A8((v28 > 1), v29 + 1, 1, v3);
      }

      *(v3 + 2) = v29 + 1;
      v49 = v3;
      v30 = &v3[16 * v29];
      v31 = v43;
      *(v30 + 4) = v44;
      *(v30 + 5) = v31;
      goto LABEL_5;
    }

    (*v50)(v13, v10);
    sub_22F1F0558(v3);
    v20 = v19;
    v21 = v3;
  }

  while (v9);
  while (1)
  {
LABEL_7:
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v19 >= v18)
    {
      break;
    }

    v9 = *(a1 + v19);
    ++v20;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v32 = sub_22F1515F8(v49);

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  __swift_project_value_buffer(v33, qword_2810B4D90);

  v34 = sub_22F740B70();
  v35 = sub_22F7415C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v37;
    *v36 = 136315138;
    v38 = sub_22F741430();
    v40 = sub_22F145F20(v38, v39, &v58);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22F0FC000, v34, v35, "[MemoriesMusic] (GraphMusicCurationFeatureExtractor) Extracted inferredUserLanguageCodes: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2319033A0](v37, -1, -1);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  v41 = v46;
  sub_22F7416A0();
  if (v41)
  {
  }

  sub_22F1B2BBC(0);

  return v32;
}

unint64_t sub_22F1F0500()
{
  result = qword_2810AC6E0;
  if (!qword_2810AC6E0)
  {
    sub_22F73F7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC6E0);
  }

  return result;
}

uint64_t sub_22F1F0558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1F05C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v27 - v10;
  v12 = [v2 category];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22F740E20();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v2 lastSuccessfulFetchedDate];
  if (v17)
  {
    v18 = v17;
    sub_22F73F640();

    v19 = sub_22F73F690();
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  }

  else
  {
    v20 = sub_22F73F690();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  v21 = [v2 lastFailedFetchedDate];
  if (v21)
  {
    v22 = v21;
    sub_22F73F640();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = sub_22F73F690();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  *a1 = v14;
  a1[1] = v16;
  v25 = type metadata accessor for CacherStatus(0);
  sub_22F1207AC(v11, a1 + *(v25 + 20), &qword_27DAB0920, &qword_22F770B20);
  return sub_22F1207AC(v7, a1 + *(v25 + 24), &qword_27DAB0920, &qword_22F770B20);
}

void sub_22F1F0818(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = [v3 category];
  if (!v12)
  {
    if (!a1[1])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_22F740E20();
  v16 = v15;

  v17 = a1[1];
  if (!v17)
  {

    goto LABEL_12;
  }

  if (v14 != *a1 || v17 != v16)
  {
    v19 = sub_22F742040();

    if (v19)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_22F1F251C();
    swift_allocError();
    swift_willThrow();
    return;
  }

LABEL_14:
  v27 = v3;
  v26[1] = v2;
  v20 = type metadata accessor for CacherStatus(0);
  sub_22F13BA9C(a1 + *(v20 + 20), v11, &qword_27DAB0920, &qword_22F770B20);
  v21 = sub_22F73F690();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v11, 1, v21) != 1)
  {
    v24 = sub_22F73F5B0();
    (*(v22 + 8))(v11, v21);
  }

  [v27 setLastSuccessfulFetchedDate_];

  sub_22F13BA9C(a1 + *(v20 + 24), v9, &qword_27DAB0920, &qword_22F770B20);
  if (v23(v9, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_22F73F5B0();
    (*(v22 + 8))(v9, v21);
  }

  [v27 setLastFailedFetchedDate_];
}

uint64_t CacherStatus.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22F741B00();
  if (v0[1])
  {
    v14 = *v0;
    v15 = v0[1];
  }

  else
  {
    v15 = 0xEB0000000079726FLL;
    v14 = 0x6765746163206F6ELL;
  }

  MEMORY[0x231900B10](v14, v15);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F791D60);
  v16 = type metadata accessor for CacherStatus(0);
  sub_22F13BA9C(v0 + *(v16 + 20), v6, &qword_27DAB0920, &qword_22F770B20);
  v17 = *(v8 + 48);
  v18 = v17(v6, 1, v7);
  v26 = v0;
  if (v18 == 1)
  {
    sub_22F73F550();
    if (v17(v6, 1, v7) != 1)
    {
      sub_22F120ADC(v6, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  sub_22F1662C8(&qword_2810AC6F8);
  v19 = sub_22F742010();
  MEMORY[0x231900B10](v19);

  v20 = *(v8 + 8);
  v20(v13, v7);
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F791D80);
  v21 = v28;
  sub_22F13BA9C(v26 + *(v16 + 24), v28, &qword_27DAB0920, &qword_22F770B20);
  if (v17(v21, 1, v7) == 1)
  {
    v22 = v27;
    sub_22F73F550();
    if (v17(v21, 1, v7) != 1)
    {
      sub_22F120ADC(v21, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    v22 = v27;
    (*(v8 + 32))(v27, v21, v7);
  }

  v23 = sub_22F742010();
  MEMORY[0x231900B10](v23);

  v20(v22, v7);
  return v29;
}

uint64_t CacherStatusUpdater.init(cacheCategory:currentCacheStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  *v8 = a1;
  v8[1] = a2;
  return sub_22F1207AC(a3, a4, &qword_27DAB1DA0, &unk_22F7771B0);
}

uint64_t CacherStatusUpdater.write(to:succeeded:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return CacherStatusUpdater.writeSuccess(to:)(a1);
  }

  else
  {
    return CacherStatusUpdater.writeFailure(to:)(a1);
  }
}

uint64_t CacherStatusUpdater.writeSuccess(to:)(uint64_t a1)
{
  v38 = a1;
  v2 = v1;
  v3 = sub_22F740AD0();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = type metadata accessor for CacherStatus(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (v1 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  v22 = v21[1];
  v43 = *v21;
  v37 = v22;

  sub_22F73F680();
  v23 = sub_22F73F690();
  v24 = *(*(v23 - 8) + 56);
  (v24)(v15, 0, 1, v23);
  sub_22F13BA9C(v2, v9, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    sub_22F120ADC(v9, &qword_27DAB1DA0, &unk_22F7771B0);
    v25 = v36;
    v24();
  }

  else
  {
    v25 = v36;
    sub_22F13BA9C(&v9[*(v16 + 24)], v36, &qword_27DAB0920, &qword_22F770B20);
    sub_22F1F1F68(v9);
  }

  v26 = v37;
  *v20 = v43;
  v20[1] = v26;
  sub_22F1207AC(v15, v20 + *(v16 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v25, v20 + *(v16 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v27 = v42;
  v28 = v40;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v29 = *(v41 + 8);
  v30 = v29(v28, v27);
  v31 = *(v38 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v30);
  *(&v35 - 4) = v43;
  *(&v35 - 3) = v26;
  *(&v35 - 2) = v32;
  *(&v35 - 1) = v20;
  v33 = v39;
  sub_22F7417A0();
  if (!v33)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v29(v28, v27);
  }

  return sub_22F1F1F68(v20);
}

uint64_t CacherStatusUpdater.writeFailure(to:)(uint64_t a1)
{
  v35 = a1;
  v2 = v1;
  v37 = sub_22F740AD0();
  v38 = *(v37 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v1 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  v20 = *v19;
  v21 = v19[1];
  sub_22F13BA9C(v2, v9, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {

    sub_22F120ADC(v9, &qword_27DAB1DA0, &unk_22F7771B0);
    v22 = sub_22F73F690();
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  }

  else
  {
    sub_22F13BA9C(&v9[*(v14 + 20)], v13, &qword_27DAB0920, &qword_22F770B20);

    sub_22F1F1F68(v9);
  }

  v23 = *(v14 + 24);
  sub_22F73F680();
  v24 = sub_22F73F690();
  (*(*(v24 - 8) + 56))(&v18[v23], 0, 1, v24);
  v25 = v20;
  *v18 = v20;
  *(v18 + 1) = v21;
  sub_22F1207AC(v13, &v18[*(v14 + 20)], &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v26 = v37;
  v27 = v38;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v28 = *(v27 + 8);
  v38 = v27 + 8;
  v29 = v28(v5, v26);
  v30 = *(v35 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v29);
  *(&v34 - 4) = v25;
  *(&v34 - 3) = v21;
  *(&v34 - 2) = v31;
  *(&v34 - 1) = v18;
  v32 = v36;
  sub_22F7417A0();
  if (!v32)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v28(v5, v37);
  }

  return sub_22F1F1F68(v18);
}

id sub_22F1F1930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CacherStatusEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1F1964()
{
  v0 = *aCacherstatus_0;

  return v0;
}

BOOL _s11PhotosGraph12CacherStatusV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v42[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v48 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v42[-v20];
  v22 = a1[1];
  v23 = a2[1];
  if (v22)
  {
    if (!v23 || (*a1 != *a2 || v22 != v23) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v44 = v13;
  v46 = v8;
  v24 = type metadata accessor for CacherStatus(0);
  v47 = v5;
  v45 = v24;
  v25 = *(v24 + 20);
  v26 = *(v16 + 48);
  sub_22F13BA9C(a1 + v25, v21, &qword_27DAB0920, &qword_22F770B20);
  v27 = a2 + v25;
  v28 = v47;
  sub_22F13BA9C(v27, &v21[v26], &qword_27DAB0920, &qword_22F770B20);
  v29 = *(v28 + 48);
  if (v29(v21, 1, v4) != 1)
  {
    sub_22F13BA9C(v21, v15, &qword_27DAB0920, &qword_22F770B20);
    if (v29(&v21[v26], 1, v4) != 1)
    {
      (*(v28 + 32))(v46, &v21[v26], v4);
      sub_22F1662C8(&qword_2810AC700);
      v43 = sub_22F740DE0();
      v31 = *(v28 + 8);
      v31(v46, v4);
      v31(v15, v4);
      sub_22F120ADC(v21, &qword_27DAB0920, &qword_22F770B20);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v28 + 8))(v15, v4);
LABEL_13:
    v30 = v21;
LABEL_21:
    sub_22F120ADC(v30, &unk_27DAB05B0, &unk_22F771430);
    return 0;
  }

  if (v29(&v21[v26], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_22F120ADC(v21, &qword_27DAB0920, &qword_22F770B20);
LABEL_15:
  v32 = *(v45 + 24);
  v33 = *(v16 + 48);
  v34 = a1 + v32;
  v35 = v48;
  sub_22F13BA9C(v34, v48, &qword_27DAB0920, &qword_22F770B20);
  sub_22F13BA9C(a2 + v32, &v35[v33], &qword_27DAB0920, &qword_22F770B20);
  if (v29(v35, 1, v4) == 1)
  {
    if (v29(&v35[v33], 1, v4) == 1)
    {
      sub_22F120ADC(v35, &qword_27DAB0920, &qword_22F770B20);
      return 1;
    }

    goto LABEL_20;
  }

  v36 = v44;
  sub_22F13BA9C(v35, v44, &qword_27DAB0920, &qword_22F770B20);
  if (v29(&v35[v33], 1, v4) == 1)
  {
    (*(v47 + 8))(v36, v4);
LABEL_20:
    v30 = v35;
    goto LABEL_21;
  }

  v39 = v46;
  v38 = v47;
  (*(v47 + 32))(v46, &v35[v33], v4);
  sub_22F1662C8(&qword_2810AC700);
  v40 = sub_22F740DE0();
  v41 = *(v38 + 8);
  v41(v39, v4);
  v41(v36, v4);
  sub_22F120ADC(v35, &qword_27DAB0920, &qword_22F770B20);
  return (v40 & 1) != 0;
}

uint64_t sub_22F1F1F68(uint64_t a1)
{
  v2 = type metadata accessor for CacherStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F1F1FEC()
{
  sub_22F1F208C();
  if (v0 <= 0x3F)
  {
    sub_22F1F2194(319, &qword_2810AC6F0, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F1F208C()
{
  if (!qword_2810A9390)
  {
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_2810A9390);
    }
  }
}

void sub_22F1F2104()
{
  sub_22F1F2194(319, qword_2810AC038, type metadata accessor for CacherStatus);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22F1F2194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_22F1F220C(id a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = objc_opt_self();

  v13 = sub_22F740DF0();

  v14 = [v12 entityForName:v13 inManagedObjectContext:a1];

  if (v14)
  {
    a1 = [objc_allocWithZone(type metadata accessor for CacherStatusEntry()) initWithEntity:v14 insertIntoManagedObjectContext:a1];

    v15 = a2[1];
    v28 = v2;
    if (v15)
    {
      v16 = *a2;
      v17 = sub_22F740DF0();
    }

    else
    {
      v17 = 0;
    }

    [a1 setCategory_];

    v18 = type metadata accessor for CacherStatus(0);
    v19 = *(v18 + 20);
    v27 = a2;
    sub_22F13BA9C(a2 + v19, v11, &qword_27DAB0920, &qword_22F770B20);
    v20 = sub_22F73F690();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = 0;
    if (v22(v11, 1, v20) != 1)
    {
      v23 = sub_22F73F5B0();
      (*(v21 + 8))(v11, v20);
    }

    [a1 setLastSuccessfulFetchedDate_];

    sub_22F13BA9C(v27 + *(v18 + 24), v9, &qword_27DAB0920, &qword_22F770B20);
    if (v22(v9, 1, v20) == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_22F73F5B0();
      (*(v21 + 8))(v9, v20);
    }

    [a1 setLastFailedFetchedDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F1F251C()
{
  result = qword_27DAB24D0;
  if (!qword_27DAB24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB24D0);
  }

  return result;
}

unint64_t sub_22F1F2584()
{
  result = qword_27DAB24D8;
  if (!qword_27DAB24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB24D8);
  }

  return result;
}

void *sub_22F1F25F0(unsigned __int8 *a1)
{
  v145 = sub_22F73F0B0();
  v2 = *(v145 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v145);
  v144 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v143 = &v130 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v140 = &v130 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v130 = &v130 - v11;
  MEMORY[0x28223BE20](v10);
  v146 = &v130 - v12;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[6];
  v131 = a1[5];
  v132 = v18;
  v19 = a1[8];
  v133 = a1[7];
  v134 = v19;
  v20 = a1[10];
  v135 = a1[9];
  v136 = v20;
  v21 = a1[12];
  v137 = a1[11];
  v138 = v21;
  v139 = a1[13];
  v22 = a1[14];
  v151 = a1[15];
  v152 = v22;
  v23 = a1[16];
  v24 = a1[17];
  v149 = a1[18];
  v150 = v23;
  v147 = a1[19];
  v148 = v24;
  v25 = a1[20];
  v26 = a1[21];
  v153 = a1[22];
  v154 = v26;
  v27 = *(a1 + 5);
  v141 = *(a1 + 6);
  v142 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22F771340;
  *(v28 + 32) = 0x6172615079616C70;
  *(v28 + 40) = 0xEA0000000000736DLL;
  if (v13 == 1)
  {
    v29 = 2;
    v28 = sub_22F13E1A8(1, 2, 1, v28);
    *(v28 + 16) = 2;
    *(v28 + 48) = 1701667182;
    *(v28 + 56) = 0xE400000000000000;
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 1;
    if (!v14)
    {
LABEL_3:
      v30 = v2;
      if (!v15)
      {
        goto LABEL_4;
      }

LABEL_12:
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        v28 = sub_22F13E1A8((v37 > 1), v38 + 1, 1, v28);
      }

      *(v28 + 16) = v38 + 1;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = 0x6D614E6D75626C61;
      *(v39 + 40) = 0xE900000000000065;
      if (v16)
      {
        goto LABEL_5;
      }

LABEL_15:
      v33 = v25;
      goto LABEL_16;
    }
  }

  v35 = *(v28 + 24);
  if (v29 >= v35 >> 1)
  {
    v28 = sub_22F13E1A8((v35 > 1), v29 + 1, 1, v28);
  }

  v30 = v2;
  *(v28 + 16) = v29 + 1;
  v36 = v28 + 16 * v29;
  *(v36 + 32) = 0x614E747369747261;
  *(v36 + 40) = 0xEA0000000000656DLL;
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_5:
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  if (v32 >= v31 >> 1)
  {
    v28 = sub_22F13E1A8((v31 > 1), v32 + 1, 1, v28);
  }

  v33 = v25;
  *(v28 + 16) = v32 + 1;
  v34 = v28 + 16 * v32;
  *(v34 + 32) = 0x6D614E65726E6567;
  *(v34 + 40) = 0xEA00000000007365;
LABEL_16:
  if (v17)
  {
    v41 = *(v28 + 16);
    v40 = *(v28 + 24);
    if (v41 >= v40 >> 1)
    {
      v28 = sub_22F13E1A8((v40 > 1), v41 + 1, 1, v28);
    }

    *(v28 + 16) = v41 + 1;
    v42 = v28 + 16 * v41;
    *(v42 + 32) = 0xD000000000000010;
    *(v42 + 40) = 0x800000022F78FFF0;
  }

  if (!v131)
  {
    v45 = v140;
    if (!v132)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v44 = *(v28 + 16);
  v43 = *(v28 + 24);
  if (v44 >= v43 >> 1)
  {
    v28 = sub_22F13E1A8((v43 > 1), v44 + 1, 1, v28);
  }

  v45 = v140;
  *(v28 + 16) = v44 + 1;
  v46 = v28 + 16 * v44;
  *(v46 + 32) = 0x6E65726566657270;
  *(v46 + 40) = 0xEF65726F63536563;
  if (v132)
  {
LABEL_26:
    v48 = *(v28 + 16);
    v47 = *(v28 + 24);
    if (v48 >= v47 >> 1)
    {
      v28 = sub_22F13E1A8((v47 > 1), v48 + 1, 1, v28);
    }

    *(v28 + 16) = v48 + 1;
    v49 = v28 + 16 * v48;
    *(v49 + 32) = 0x6B726F77747261;
    *(v49 + 40) = 0xE700000000000000;
  }

LABEL_29:
  if (!v133)
  {
    if (!v134)
    {
      goto LABEL_31;
    }

LABEL_40:
    v53 = [objc_opt_self() musicCurationShouldUseOldStylePreviewURL];
    v55 = *(v28 + 16);
    v54 = *(v28 + 24);
    v56 = v55 + 1;
    if (v53)
    {
      if (v54 >> 1 <= v55)
      {
        v28 = sub_22F13E1A8((v54 > 1), v55 + 1, 1, v28);
      }

      *(v28 + 16) = v56;
      v57 = v28 + 16 * v55;
      *(v57 + 32) = 0x7377656976657270;
      *(v57 + 40) = 0xE800000000000000;
      if (qword_2810A9440 != -1)
      {
        swift_once();
      }

      v58 = sub_22F740B90();
      __swift_project_value_buffer(v58, qword_2810B4D48);
      v59 = sub_22F740B70();
      v60 = sub_22F7415C0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_22F0FC000, v59, v60, "[Warning-Music][MusicKitClient] Custom default 'musicCurationShouldUseOldStylePreviewURL' is set to true so MusicKitClient will fetch the old style preview url.", v61, 2u);
        MEMORY[0x2319033A0](v61, -1, -1);
      }

      if (v135)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v54 >> 1 <= v55)
      {
        v28 = sub_22F13E1A8((v54 > 1), v55 + 1, 1, v28);
      }

      *(v28 + 16) = v56;
      v62 = v28 + 16 * v55;
      strcpy((v62 + 32), "introPreview");
      *(v62 + 45) = 0;
      *(v62 + 46) = -5120;
      if (v135)
      {
        goto LABEL_52;
      }
    }

LABEL_32:
    if (!v136)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

  v51 = *(v28 + 16);
  v50 = *(v28 + 24);
  if (v51 >= v50 >> 1)
  {
    v28 = sub_22F13E1A8((v50 > 1), v51 + 1, 1, v28);
  }

  *(v28 + 16) = v51 + 1;
  v52 = v28 + 16 * v51;
  *(v52 + 32) = 7107189;
  *(v52 + 40) = 0xE300000000000000;
  if (v134)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (!v135)
  {
    goto LABEL_32;
  }

LABEL_52:
  v64 = *(v28 + 16);
  v63 = *(v28 + 24);
  if (v64 >= v63 >> 1)
  {
    v28 = sub_22F13E1A8((v63 > 1), v64 + 1, 1, v28);
  }

  *(v28 + 16) = v64 + 1;
  v65 = v28 + 16 * v64;
  *(v65 + 32) = 0x636F4C6F69647561;
  *(v65 + 40) = 0xEB00000000656C61;
  if (!v136)
  {
LABEL_33:
    if (!v137)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_55:
  v67 = *(v28 + 16);
  v66 = *(v28 + 24);
  if (v67 >= v66 >> 1)
  {
    v28 = sub_22F13E1A8((v66 > 1), v67 + 1, 1, v28);
  }

  *(v28 + 16) = v67 + 1;
  v68 = v28 + 16 * v67;
  *(v68 + 32) = 0x73676174696E75;
  *(v68 + 40) = 0xE700000000000000;
  if (!v137)
  {
LABEL_34:
    if (!v138)
    {
      goto LABEL_35;
    }

    goto LABEL_61;
  }

LABEL_58:
  v70 = *(v28 + 16);
  v69 = *(v28 + 24);
  if (v70 >= v69 >> 1)
  {
    v28 = sub_22F13E1A8((v69 > 1), v70 + 1, 1, v28);
  }

  *(v28 + 16) = v70 + 1;
  v71 = v28 + 16 * v70;
  strcpy((v71 + 32), "contentRating");
  *(v71 + 46) = -4864;
  if (!v138)
  {
LABEL_35:
    if (!v139)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

LABEL_61:
  v73 = *(v28 + 16);
  v72 = *(v28 + 24);
  if (v73 >= v72 >> 1)
  {
    v28 = sub_22F13E1A8((v72 > 1), v73 + 1, 1, v28);
  }

  *(v28 + 16) = v73 + 1;
  v74 = v28 + 16 * v73;
  *(v74 + 32) = 0xD00000000000001ELL;
  *(v74 + 40) = 0x800000022F790010;
  if (v139)
  {
LABEL_64:
    v76 = *(v28 + 16);
    v75 = *(v28 + 24);
    if (v76 >= v75 >> 1)
    {
      v28 = sub_22F13E1A8((v75 > 1), v76 + 1, 1, v28);
    }

    *(v28 + 16) = v76 + 1;
    v77 = v28 + 16 * v76;
    *(v77 + 32) = 0x50746E65746E6F63;
    *(v77 + 40) = 0xEF72656469766F72;
  }

LABEL_67:
  if (!v152)
  {
    v78 = MEMORY[0x277D84F90];
    if (!v151)
    {
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  v78 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
  v80 = *(v78 + 2);
  v79 = *(v78 + 3);
  if (v80 >= v79 >> 1)
  {
    v78 = sub_22F13E1A8((v79 > 1), v80 + 1, 1, v78);
  }

  *(v78 + 2) = v80 + 1;
  v81 = &v78[16 * v80];
  *(v81 + 4) = 0x65636E656C6176;
  *(v81 + 5) = 0xE700000000000000;
  if (v151)
  {
LABEL_73:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_22F13E1A8(0, *(v78 + 2) + 1, 1, v78);
    }

    v83 = *(v78 + 2);
    v82 = *(v78 + 3);
    if (v83 >= v82 >> 1)
    {
      v78 = sub_22F13E1A8((v82 > 1), v83 + 1, 1, v78);
    }

    *(v78 + 2) = v83 + 1;
    v84 = &v78[16 * v83];
    *(v84 + 4) = 0x6C6173756F7261;
    *(v84 + 5) = 0xE700000000000000;
  }

LABEL_78:
  if (!v150)
  {
    if (!v148)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v78 = sub_22F13E1A8(0, *(v78 + 2) + 1, 1, v78);
  }

  v86 = *(v78 + 2);
  v85 = *(v78 + 3);
  if (v86 >= v85 >> 1)
  {
    v78 = sub_22F13E1A8((v85 > 1), v86 + 1, 1, v78);
  }

  *(v78 + 2) = v86 + 1;
  v87 = &v78[16 * v86];
  *(v87 + 4) = 0x65546C6175736976;
  *(v87 + 5) = 0xEB000000006F706DLL;
  if (v148)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_22F13E1A8(0, *(v78 + 2) + 1, 1, v78);
    }

    v89 = *(v78 + 2);
    v88 = *(v78 + 3);
    if (v89 >= v88 >> 1)
    {
      v78 = sub_22F13E1A8((v88 > 1), v89 + 1, 1, v78);
    }

    *(v78 + 2) = v89 + 1;
    v90 = &v78[16 * v89];
    *(v90 + 4) = 0x6E696F5074697865;
    *(v90 + 5) = 0xEA00000000007374;
  }

LABEL_91:
  if (v149)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_22F13E1A8(0, *(v78 + 2) + 1, 1, v78);
    }

    v96 = *(v78 + 2);
    v95 = *(v78 + 3);
    if (v96 >= v95 >> 1)
    {
      v78 = sub_22F13E1A8((v95 > 1), v96 + 1, 1, v78);
    }

    *(v78 + 2) = v96 + 1;
    v97 = &v78[16 * v96];
    *(v97 + 4) = 0x696F507972746E65;
    *(v97 + 5) = 0xEB0000000073746ELL;
    if (!v147)
    {
LABEL_93:
      if (v33)
      {
        goto LABEL_94;
      }

LABEL_108:
      v91 = MEMORY[0x277D84F90];
      if (!v154)
      {
        goto LABEL_114;
      }

      goto LABEL_109;
    }
  }

  else if (!v147)
  {
    goto LABEL_93;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v78 = sub_22F13E1A8(0, *(v78 + 2) + 1, 1, v78);
  }

  v99 = *(v78 + 2);
  v98 = *(v78 + 3);
  if (v99 >= v98 >> 1)
  {
    v78 = sub_22F13E1A8((v98 > 1), v99 + 1, 1, v78);
  }

  *(v78 + 2) = v99 + 1;
  v100 = &v78[16 * v99];
  *(v100 + 4) = 0x6576456F65646976;
  *(v100 + 5) = 0xEB0000000073746ELL;
  if (!v33)
  {
    goto LABEL_108;
  }

LABEL_94:
  v91 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
  v93 = *(v91 + 2);
  v92 = *(v91 + 3);
  if (v93 >= v92 >> 1)
  {
    v91 = sub_22F13E1A8((v92 > 1), v93 + 1, 1, v91);
  }

  *(v91 + 2) = v93 + 1;
  v94 = &v91[16 * v93];
  *(v94 + 4) = 0x7373656E64756F6CLL;
  *(v94 + 5) = 0xE800000000000000;
  if (v154)
  {
LABEL_109:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_22F13E1A8(0, *(v91 + 2) + 1, 1, v91);
    }

    v102 = *(v91 + 2);
    v101 = *(v91 + 3);
    if (v102 >= v101 >> 1)
    {
      v91 = sub_22F13E1A8((v101 > 1), v102 + 1, 1, v91);
    }

    *(v91 + 2) = v102 + 1;
    v103 = &v91[16 * v102];
    *(v103 + 4) = 0x796772656E65;
    *(v103 + 5) = 0xE600000000000000;
  }

LABEL_114:
  if (v153)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_22F13E1A8(0, *(v91 + 2) + 1, 1, v91);
    }

    v105 = *(v91 + 2);
    v104 = *(v91 + 3);
    if (v105 >= v104 >> 1)
    {
      v91 = sub_22F13E1A8((v104 > 1), v105 + 1, 1, v91);
    }

    *(v91 + 2) = v105 + 1;
    v106 = &v91[16 * v105];
    *(v106 + 4) = 0x65636E656C6176;
    *(v106 + 5) = 0xE700000000000000;
  }

  v107 = v145;
  if ((v152 | v151 | v150 | v148 | v149 | v147))
  {
    v108 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v110 = *(v108 + 2);
    v109 = *(v108 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_22F13E1A8((v109 > 1), v110 + 1, 1, v108);
    }

    *(v108 + 2) = v110 + 1;
    v111 = &v108[16 * v110];
    *(v111 + 4) = 0x612D6C6D78656C66;
    *(v111 + 5) = 0xEF736973796C616ELL;
  }

  else
  {
    v108 = MEMORY[0x277D84F90];
  }

  if ((v33 | v154 | v153))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_22F13E1A8(0, *(v108 + 2) + 1, 1, v108);
    }

    v113 = *(v108 + 2);
    v112 = *(v108 + 3);
    if (v113 >= v112 >> 1)
    {
      v108 = sub_22F13E1A8((v112 > 1), v113 + 1, 1, v108);
    }

    *(v108 + 2) = v113 + 1;
    v114 = &v108[16 * v113];
    strcpy(v114 + 32, "audio-analysis");
    v114[47] = -18;
  }

  if (!*(v28 + 16))
  {

    v115 = MEMORY[0x277D84F90];
    if (*(v78 + 2))
    {
      goto LABEL_135;
    }

LABEL_151:

    if (*(v91 + 2))
    {
      goto LABEL_140;
    }

    goto LABEL_152;
  }

  v155 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  sub_22F73F0A0();

  v115 = sub_22F13EDB8(0, 1, 1, MEMORY[0x277D84F90]);
  v117 = v115[2];
  v116 = v115[3];
  if (v117 >= v116 >> 1)
  {
    v115 = sub_22F13EDB8(v116 > 1, v117 + 1, 1, v115);
  }

  v115[2] = v117 + 1;
  (*(v30 + 32))(v115 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v117, v146, v107);
  if (!*(v78 + 2))
  {
    goto LABEL_151;
  }

LABEL_135:
  v155 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  v118 = v130;
  sub_22F73F0A0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_22F13EDB8(0, v115[2] + 1, 1, v115);
  }

  v120 = v115[2];
  v119 = v115[3];
  if (v120 >= v119 >> 1)
  {
    v115 = sub_22F13EDB8(v119 > 1, v120 + 1, 1, v115);
  }

  v115[2] = v120 + 1;
  (*(v30 + 32))(v115 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v120, v118, v107);
  if (*(v91 + 2))
  {
LABEL_140:
    v155 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    sub_22F73F0A0();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = sub_22F13EDB8(0, v115[2] + 1, 1, v115);
    }

    v121 = v143;
    v123 = v115[2];
    v122 = v115[3];
    if (v123 >= v122 >> 1)
    {
      v115 = sub_22F13EDB8(v122 > 1, v123 + 1, 1, v115);
    }

    v115[2] = v123 + 1;
    (*(v30 + 32))(v115 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v123, v45, v107);
    if (*(v108 + 2))
    {
      goto LABEL_145;
    }

LABEL_153:

    v124 = v144;
    goto LABEL_154;
  }

LABEL_152:

  v121 = v143;
  if (!*(v108 + 2))
  {
    goto LABEL_153;
  }

LABEL_145:
  v155 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  sub_22F73F0A0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_22F13EDB8(0, v115[2] + 1, 1, v115);
  }

  v124 = v144;
  v126 = v115[2];
  v125 = v115[3];
  if (v126 >= v125 >> 1)
  {
    v115 = sub_22F13EDB8(v125 > 1, v126 + 1, 1, v115);
  }

  v115[2] = v126 + 1;
  (*(v30 + 32))(v115 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v126, v121, v107);
LABEL_154:
  sub_22F73F0A0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_22F13EDB8(0, v115[2] + 1, 1, v115);
  }

  v128 = v115[2];
  v127 = v115[3];
  if (v128 >= v127 >> 1)
  {
    v115 = sub_22F13EDB8(v127 > 1, v128 + 1, 1, v115);
  }

  v115[2] = v128 + 1;
  (*(v30 + 32))(v115 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v128, v124, v107);
  return v115;
}

uint64_t sub_22F1F3A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v45 = a2;
  v2 = sub_22F73F7D0();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F73F9B0();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_22F73F270();
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22F73F690();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v25 = sub_22F73F660();
  v26 = *(v21 + 8);
  v26(v24, v20);
  if (v25 != 1)
  {
    return (*(v21 + 56))(v45, 1, 1, v20);
  }

  sub_22F73F570();
  v27 = sub_22F73F660();
  v26(v24, v20);
  if (v27 != 1)
  {
    return (*(v21 + 56))(v45, 1, 1, v20);
  }

  v29 = v41;
  v28 = v42;
  (*(v41 + 56))(v15, 1, 1, v42);
  v30 = sub_22F73FA10();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  sub_22F73F250();
  v32 = v43;
  v31 = v44;
  v33 = v40;
  (*(v43 + 104))(v40, *MEMORY[0x277CC9830], v44);
  v34 = v38;
  sub_22F73F7E0();
  (*(v32 + 8))(v33, v31);
  sub_22F73F930();
  (*(v29 + 8))(v34, v28);
  return (*(v36 + 8))(v19, v37);
}

uint64_t sub_22F1F3EE8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_22F73F7D0();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F73F9B0();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v14 = sub_22F73F660();
  v15 = *(v10 + 8);
  v15(v13, v9);
  if (v14 == 1 && (sub_22F73F570(), v16 = sub_22F73F660(), v15(v13, v9), v16 == 1))
  {
    v17 = v24;
    (*(v24 + 104))(v4, *MEMORY[0x277CC9830], v1);
    sub_22F73F7E0();
    (*(v17 + 8))(v4, v1);
    v18 = v25;
    sub_22F73F800();
    (*(v22 + 8))(v8, v23);
    v19 = v18;
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v19 = v25;
  }

  return (*(v10 + 56))(v19, v20, 1, v9);
}

uint64_t sub_22F1F41AC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_22F73F690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v18 = sub_22F73F660();
  v19 = *(v14 + 8);
  v19(v17, v13);
  if (v18 == 1)
  {
    sub_22F73F570();
    v20 = sub_22F73F660();
    v19(v17, v13);
    if (v20 == 1)
    {
      sub_22F1F3EE8(v12);
      sub_22F13BA9C(v12, v7, &qword_27DAB0920, &qword_22F770B20);
      v21 = *(v14 + 48);
      if (v21(v7, 1, v13) == 1)
      {
        sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
        (*(v14 + 56))(v10, 1, 1, v13);
      }

      else
      {
        sub_22F1F3A00(1, v10);
        v19(v7, v13);
      }

      v22 = v27;
      sub_22F13BA9C(v10, v27, &qword_27DAB0920, &qword_22F770B20);
      if (v21(v22, 1, v13) != 1)
      {
        v26 = v28;
        sub_22F73F5A0();
        sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
        sub_22F120ADC(v12, &qword_27DAB0920, &qword_22F770B20);
        v19(v22, v13);
        v24 = v26;
        v23 = 0;
        return (*(v14 + 56))(v24, v23, 1, v13);
      }

      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v12, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v22, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  v23 = 1;
  v24 = v28;
  return (*(v14 + 56))(v24, v23, 1, v13);
}

uint64_t sub_22F1F4550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v57 = a2;
  v4 = sub_22F73F7D0();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22F73F9B0();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22F73F270();
  v46 = *(v48 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = sub_22F73FA10();
  v56 = *(v20 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v55 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F73F690();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v28 = sub_22F73F660();
  v29 = *(v24 + 8);
  v29(v27, v23);
  if (v28 != 1)
  {
    return (*(v24 + 56))(v57, 1, 1, v23);
  }

  sub_22F73F570();
  v30 = sub_22F73F660();
  v29(v27, v23);
  if (v30 != 1)
  {
    return (*(v24 + 56))(v57, 1, 1, v23);
  }

  v31 = v3;
  sub_22F13BA9C(v54, v17, &qword_27DAB24E0, &unk_22F77C6B0);
  v32 = v56;
  v33 = *(v56 + 48);
  if (v33(v17, 1, v20) == 1)
  {
    sub_22F73F9D0();
    if (v33(v17, 1, v20) != 1)
    {
      sub_22F120ADC(v17, &qword_27DAB24E0, &unk_22F77C6B0);
    }
  }

  else
  {
    (*(v32 + 32))(v19, v17, v20);
    (*(v32 + 56))(v19, 0, 1, v20);
  }

  if (v33(v19, 1, v20) == 1)
  {
    sub_22F120ADC(v19, &qword_27DAB24E0, &unk_22F77C6B0);
    v35 = v57;
    (*(v24 + 16))(v57, v31, v23);
    return (*(v24 + 56))(v35, 0, 1, v23);
  }

  else
  {
    (*(v32 + 32))(v55, v19, v20);
    LODWORD(v54) = *MEMORY[0x277CC9830];
    v37 = v52;
    v36 = v53;
    v43 = *(v52 + 104);
    v38 = v50;
    v43(v50);
    v39 = v47;
    sub_22F73F7E0();
    v52 = *(v37 + 8);
    (v52)(v38, v36);
    v40 = v45;
    sub_22F73F840();
    v49 = *(v49 + 8);
    v41 = v51;
    (v49)(v39, v51);
    sub_22F73F9D0();
    sub_22F73F260();
    (v43)(v38, v54, v36);
    sub_22F73F7E0();
    (v52)(v38, v36);
    sub_22F73F920();
    (v49)(v39, v41);
    (*(v46 + 8))(v40, v48);
    return (*(v56 + 8))(v55, v20);
  }
}

uint64_t type metadata accessor for PublicEventTimeAndLocation()
{
  result = qword_27DAB24F0;
  if (!qword_27DAB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1F4C6C()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_22F73F690();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22F1F4D04()
{
  sub_22F742170();
  v1 = *v0;
  v2 = v0[1];
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F1F4D48()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22F740D60();
}

uint64_t sub_22F1F4D50()
{
  sub_22F742170();
  v1 = *v0;
  v2 = v0[1];
  sub_22F740D60();
  return sub_22F7421D0();
}

unint64_t sub_22F1F4D94()
{
  result = qword_27DAB2500;
  if (!qword_27DAB2500)
  {
    type metadata accessor for PublicEventTimeAndLocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2500);
  }

  return result;
}

void sub_22F1F4DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *v21 = *(v3 + 1);
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v6 = sub_22F740B90();
  __swift_project_value_buffer(v6, qword_2810B4CE0);
  v7 = sub_22F740B70();
  v8 = sub_22F7415F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22F0FC000, v7, v8, "Anniversary grounding has started.", v9, 2u);
    MEMORY[0x2319033A0](v9, -1, -1);
  }

  v10 = objc_opt_self();
  v11 = sub_22F740DF0();
  v12 = [v10 personNodesForLocalIdentifier:v11 inGraph:v21[0]];

  v13 = [v12 anniversaryMomentNodes];
  v14 = [v13 uuids];

  v15 = sub_22F741420();
  if (a3)
  {

    v16 = sub_22F1ABBB4(a3, v15);

    v15 = v16;
  }

  if (*(v15 + 16) || (, (v18 = [v12 firstNode]) == 0))
  {
    sub_22F7407A0();
    v17 = v12;
  }

  else
  {
    v22 = v18;
    v19 = sub_22F1F5074(v18);
    if (a3)
    {
      v20 = v19;

      sub_22F1ABBB4(a3, v20);
    }

    sub_22F7407A0();

    v17 = v22;
  }
}

uint64_t sub_22F1F5074(void *a1)
{
  v3 = sub_22F73F270();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v8 = *(v1 + 2);
  v9 = [a1 anniversaryDateComponents];
  if (v9)
  {
    v10 = v9;
    sub_22F73F1B0();

    v34 = v33;
    v35 = v8;
    v11 = sub_22F1F5444();
    if (v11)
    {
      v12 = v11;
      if ([v11 count] >= 1)
      {
        v13 = [v12 momentNodes];
        v14 = [v13 uuids];

        v15 = sub_22F741420();
        (*(v4 + 8))(v7, v3);
        return v15;
      }
    }

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4CE0);
    v29 = sub_22F740B70();
    v30 = sub_22F7415E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22F0FC000, v29, v30, "No anniversary date nodes are found", v31, 2u);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4CE0);
    v18 = a1;
    v19 = sub_22F740B70();
    v20 = sub_22F7415F0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v34 = v22;
      *v21 = 136315138;
      v23 = [v18 localIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22F740E20();
        v27 = v26;
      }

      else
      {
        v27 = 0xE300000000000000;
        v25 = 7104878;
      }

      v32 = sub_22F145F20(v25, v27, &v34);

      *(v21 + 4) = v32;
      _os_log_impl(&dword_22F0FC000, v19, v20, "No anniversary date components for person localIdentifier %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2319033A0](v22, -1, -1);
      MEMORY[0x2319033A0](v21, -1, -1);
    }
  }

  return MEMORY[0x277D84FA0];
}

void *sub_22F1F5444()
{
  v1 = *(v0 + 8);
  v2 = sub_22F73F1F0();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_22F73F1C0();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = sub_22F73F210();
  if (v9)
  {
    return 0;
  }

  v11 = v8;
  v12 = [objc_opt_self() dayNodesForDay:v7 inGraph:v1];
  v13 = [v12 dateNodes];

  v14 = [objc_opt_self() monthNodesForMonth:v11 inGraph:v1];
  v15 = [v14 dateNodes];

  v16 = [objc_opt_self() yearNodesLargerThanYear:v4 inGraph:v1];
  v17 = [v16 dateNodes];

  v18 = [v13 collectionByIntersecting_];
  v19 = [v18 collectionByIntersecting_];

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v20 = sub_22F740B90();
  __swift_project_value_buffer(v20, qword_2810B4CE0);
  v21 = v19;
  v22 = sub_22F740B70();
  v23 = sub_22F7415F0();
  v24 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v34 = v13;
    v35 = swift_slowAlloc();
    v26 = v35;
    *v25 = 136315138;
    v27 = [v24 dateNames];
    v28 = MEMORY[0x277D837D0];
    v29 = sub_22F741180();

    v30 = MEMORY[0x231900D40](v29, v28);
    v32 = v31;

    v33 = sub_22F145F20(v30, v32, &v35);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_22F0FC000, v22, v23, "All potential anniversary dates = %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2319033A0](v26, -1, -1);
    MEMORY[0x2319033A0](v25, -1, -1);
  }

  else
  {
  }

  return v24;
}

unint64_t get_enum_tag_for_layout_string_11PhotosGraph27EventClusterFeaturizerErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22F1F57D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22F1F5834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22F1F589C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_22F77A0B0;
  }

  return result;
}

uint64_t LibraryAveragePersonCountFeatureExtractor.featureNames.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F771340;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  return v0;
}

id LibraryAveragePersonCountFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LibraryAveragePersonCountFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LibraryAveragePersonCountFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F1F5C18(void *a1)
{
  v2 = [a1 count];
  if (v2 < 1)
  {
    sub_22F1F5FB0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v3 = v2;
    v4 = [a1 photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIncludeTorsoOnlyPerson_];
    [v5 setPersonContext_];
    v25 = MEMORY[0x277D84F90];
    sub_22F741BD0();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
    sub_22F741BA0();
    v6 = *(v25 + 16);
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    sub_22F170D8C();
    v7 = sub_22F741160();

    [v5 setIncludedDetectionTypes_];

    v8 = [objc_opt_self() fetchPersonCountGroupedByAssetLocalIdentifierForAssets:a1 options:v5];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22F740CA0();

      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      for (i = 0.0; v13; i = i + v19)
      {
        v17 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        [*(*(v10 + 56) + ((v17 << 9) | (8 * v18))) floatValue];
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_22F771340;
          *(v20 + 32) = i / v3;
          v21 = objc_allocWithZone(sub_22F73FBE0());
          v22 = MEMORY[0x2318FF780](v20);
          [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

          return;
        }

        v13 = *(v10 + 64 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      sub_22F1F5FB0();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
    }
  }
}

unint64_t sub_22F1F5FB0()
{
  result = qword_27DAB2508;
  if (!qword_27DAB2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2508);
  }

  return result;
}

unint64_t sub_22F1F6018()
{
  result = qword_27DAB2510;
  if (!qword_27DAB2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2510);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:momentNodes:)(uint64_t a1, void *a2)
{
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  __swift_project_value_buffer(v5, qword_2810B4D00);
  v6 = sub_22F740B70();
  v7 = sub_22F7415C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22F0FC000, v6, v7, "generateTimeExtendedTokens for query tokens has started.", v8, 2u);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  v19 = MEMORY[0x277D84F98];
  v9 = [a2 dateNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = &v19;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F1F657C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22F1F68E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  [v9 enumerateUsingBlock_];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {

    v14 = sub_22F1FF988(a1, v2, &v19);

    v15 = sub_22F740B70();
    v16 = sub_22F7415F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "generateTimeExtendedTokens for query tokens complete.", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    return v14;
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:timeQueryExtendedTokens:)(void *a1, uint64_t a2)
{
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v4 = sub_22F740B90();
  __swift_project_value_buffer(v4, qword_2810B4D00);
  v5 = sub_22F740B70();
  v6 = sub_22F7415C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22F0FC000, v5, v6, "generateTimeExtendedTokens for collection tokens has started.", v7, 2u);
    MEMORY[0x2319033A0](v7, -1, -1);
  }

  if (*(a2 + 16))
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = sub_22F200C0C(a1);
  }

  v9 = sub_22F1F8BA0(a1);
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v10, v11, "generateTimeExtendedTokens for collection tokens complete.", v12, 2u);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  sub_22F144C20(v8);
  sub_22F144C20(v9);
  return a2;
}

void sub_22F1F651C(void *a1, uint64_t a2, void **a3)
{
  v5 = objc_autoreleasePoolPush();
  sub_22F1F6584(a1, a3);

  objc_autoreleasePoolPop(v5);
}

void sub_22F1F6584(void *a1, void **a2)
{
  v5 = sub_22F73F690();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v49 = &v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = [a1 seasonNode];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = [v17 localizedName];

  if (!v19)
  {
    return;
  }

  v48 = v2;
  sub_22F740E20();

  v20 = sub_22F740EA0();
  v22 = v21;

  v23 = [a1 localDate];
  if (!v23)
  {

    return;
  }

  v24 = v20;
  v25 = v23;
  sub_22F73F640();

  v26 = v50;
  (*(v50 + 32))(v16, v14, v5);
  (*(v26 + 16))(v9, v16, v5);
  v27 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v22;
  v30 = isUniquelyReferenced_nonNull_native;
  v51 = *a2;
  v31 = v51;
  *a2 = 0x8000000000000000;
  v46 = v24;
  v47 = v29;
  v33 = sub_22F1229E8(v24, v29);
  v34 = v31[2];
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
LABEL_17:
    sub_22F1353A4();
    goto LABEL_10;
  }

  LOBYTE(v26) = v32;
  if (v31[3] < v36)
  {
    sub_22F1275BC(v36, v30);
    v37 = v47;
    v38 = sub_22F1229E8(v46, v47);
    if ((v26 & 1) != (v39 & 1))
    {
      sub_22F7420C0();
      __break(1u);
      return;
    }

    v33 = v38;
    goto LABEL_11;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v37 = v47;
LABEL_11:
  v40 = *a2;
  *a2 = v51;

  v41 = *a2;
  if (v26)
  {
  }

  else
  {
    sub_22F1534CC(v33, v46, v37, MEMORY[0x277D84FA0], *a2);
  }

  v42 = v49;
  v43 = v41[7] + 8 * v33;
  sub_22F10C984(v49, v9);
  v44 = *(v50 + 8);
  v44(v42, v5);
  v44(v16, v5);
}

uint64_t sub_22F1F68E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F1F6928@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v168 = a2;
  v183 = a1;
  v191 = a3;
  v165 = sub_22F740890();
  v164 = *(v165 - 8);
  v4 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v178 = v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22F73F690();
  v177 = *(v170 - 8);
  v6 = *(v177 + 64);
  v7 = MEMORY[0x28223BE20](v170);
  v169 = v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v171 = v143 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v176 = v143 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v184 = v143 - v15;
  v167 = sub_22F73F270();
  v175 = *(v167 - 8);
  v16 = *(v175 + 64);
  v17 = MEMORY[0x28223BE20](v167);
  v161 = v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v163 = v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v185 = v143 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v174 = v143 - v24;
  MEMORY[0x28223BE20](v23);
  v188 = v143 - v25;
  v190 = sub_22F7404D0();
  v195 = *(v190 - 8);
  v26 = *(v195 + 64);
  v27 = MEMORY[0x28223BE20](v190);
  v182 = v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v192 = v143 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v166 = v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v162 = v143 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v181 = v143 - v37;
  MEMORY[0x28223BE20](v36);
  v180 = v143 - v38;
  v39 = sub_22F740270();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v179 = v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = (v143 - v44);
  v46 = sub_22F7403B0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v143 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v193 = v143 - v52;
  v53 = sub_22F73FD40();
  if (*(v53 + 16))
  {
    v189 = v3;
    (*(v47 + 16))(v51, v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v46);

    (*(v47 + 32))(v193, v51, v46);
    v172 = sub_22F73FD50();
    v187 = v54;
    v173 = sub_22F73FD90();
    *v45 = sub_22F73FD80();
    (*(v40 + 104))(v45, *MEMORY[0x277D3C2B8], v39);
    v55 = v192;
    sub_22F7403A0();
    v56 = *(v195 + 88);
    v57 = v190;
    v58 = v56(v55, v190);
    v59 = *MEMORY[0x277D3C4D8];
    v60 = v45;
    v186 = v39;
    if (v58 == v59)
    {
      v61 = v192;
      (*(v195 + 96))(v192, v57);
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB0, &unk_22F777710) + 48);
      v63 = v180;
      sub_22F2030D4(v61, v180);
      v64 = v181;
      sub_22F2030D4(v61 + v62, v181);
      sub_22F1F7F3C(v172, v187, v60, v63, v64, v173, v191);

      sub_22F120ADC(v64, &qword_27DAB1EB8, &unk_22F77A2D0);
      sub_22F120ADC(v63, &qword_27DAB1EB8, &unk_22F77A2D0);
      (*(v40 + 8))(v60, v186);
      return (*(v47 + 8))(v193, v46);
    }

    v183 = v45;
    v160 = v47;
    v180 = v46;
    v181 = v40;
    v71 = *(v195 + 8);
    v71(v192, v57);
    v72 = v182;
    v73 = v193;
    sub_22F7403A0();
    v74 = v190;
    if (v56(v72, v190) != *MEMORY[0x277D3C500])
    {

      (*(v181 + 8))(v183, v186);
      (*(v160 + 8))(v73, v180);
      v71(v72, v74);
      v86 = sub_22F740120();
      return (*(*(v86 - 8) + 56))(v191, 1, 1, v86);
    }

    (*(v195 + 96))(v72, v74);
    v75 = sub_22F740A70();
    (*(*(v75 - 8) + 8))(v72, v75);
    v76 = sub_22F740EA0();
    v78 = *v168;
    v79 = v189;
    if (*(*v168 + 16))
    {
      v80 = sub_22F1229E8(v76, v77);
      v82 = v81;

      v83 = v184;
      if (v82)
      {
        v84 = *(*(v78 + 56) + 8 * v80);

        v85 = *(v84 + 16);
        if (!v85)
        {
          goto LABEL_19;
        }

LABEL_16:
        v87 = sub_22F10B2E8(v85, 0);
        v88 = sub_22F11B4EC(&v194, &v87[(*(v177 + 80) + 32) & ~*(v177 + 80)], v85, v84);

        sub_22F0FF590();
        if (v88 != v85)
        {
          __break(1u);
          goto LABEL_30;
        }

        v79 = v189;
        v83 = v184;
LABEL_20:
        v194 = v87;
        sub_22F1FAD44(&v194);
        v189 = v79;
        if (v79)
        {
LABEL_31:

          __break(1u);
          return result;
        }

        v89 = v194;
        v90 = sub_22F73F9B0();
        v91 = (*(v90 - 8) + 56);
        v182 = *v91;
        (v182)(v83, 1, 1, v90);
        v92 = sub_22F73FA10();
        v93 = *(v92 - 8);
        v94 = *(v93 + 56);
        v95 = v176;
        v195 = v92;
        v192 = v94;
        v190 = v93 + 56;
        (v94)(v176, 1, 1);
        sub_22F73F250();
        v96 = v177;
        if (!v89[2])
        {
          (v182)(v83, 1, 1, v90);
          (v192)(v95, 1, 1, v195);
          sub_22F73F250();

          v128 = v178;
          v129 = v165;
          v130 = v164;
          v127 = v167;
          v126 = v175;
LABEL_28:
          v135 = v181;
          (*(v181 + 16))(v179, v183, v186);
          (*(v130 + 104))(v128, *MEMORY[0x277D3C740], v129);
          v136 = *(v126 + 16);
          v137 = v188;
          v136(v174, v188, v127);
          v138 = v166;
          v139 = v185;
          v136(v166, v185, v127);
          (*(v126 + 56))(v138, 0, 1, v127);
          v140 = v191;
          sub_22F740100();
          v141 = *(v126 + 8);
          v141(v139, v127);
          v141(v137, v127);
          (*(v135 + 8))(v183, v186);
          (*(v160 + 8))(v193, v180);
          v142 = sub_22F740120();
          return (*(*(v142 - 8) + 56))(v140, 0, 1, v142);
        }

        v168 = v89[2];
        v97 = v89 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
        v98 = *(v177 + 16);
        v159 = v89;
        v149 = v97;
        v158 = v90;
        v99 = v170;
        v151 = v177 + 16;
        v150 = v98;
        (v98)(v171);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
        v100 = sub_22F73F990();
        v101 = *(v100 - 8);
        v102 = *(v101 + 72);
        v103 = v96;
        v104 = *(v101 + 80);
        v105 = (v104 + 32) & ~v104;
        v153 = 2 * v102;
        v145 = v104;
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_22F770DF0;
        v157 = v91;
        v147 = v105;
        v107 = *(v101 + 104);
        v146 = *MEMORY[0x277CC9998];
        v107(v106 + v105);
        v108 = *MEMORY[0x277CC9968];
        v152 = v102;
        v144 = v108;
        v148 = v107;
        v107(v106 + v105 + v102);
        v109 = v103;
        sub_22F3D97CC(v106);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v110 = v174;
        v111 = v171;
        sub_22F7405A0();

        v112 = v111;
        v113 = v159;
        v171 = *(v109 + 8);
        v156 = v109 + 8;
        (v171)(v112, v99);
        v114 = v175;
        v115 = v188;
        v116 = v167;
        v155 = *(v175 + 8);
        v154 = v175 + 8;
        v155(v188, v167);
        v117 = *(v114 + 32);
        v143[1] = v114 + 32;
        v143[0] = v117;
        v117(v115, v110, v116);
        (v182)(v184, 1, 1, v158);
        (v192)(v176, 1, 1, v195);
        sub_22F73F250();
        if (v168 <= v113[2])
        {
          v118 = v170;
          v150(v169, &v149[*(v109 + 72) * (v168 - 1)], v170);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
          v119 = v152;
          v120 = v147;
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_22F7707D0;
          v122 = v121 + v120;
          v123 = v148;
          (v148)(v122, *MEMORY[0x277CC9988], v100);
          (v123)(v122 + v119, v146, v100);
          (v123)(v122 + v153, v144, v100);
          sub_22F3D97CC(v121);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v124 = v163;
          sub_22F7405A0();

          v125 = v162;
          sub_22F7405D0();
          v126 = v175;
          v127 = v116;
          if ((*(v175 + 48))(v125, 1, v116) == 1)
          {
            v155(v124, v116);
            (v171)(v169, v118);
            sub_22F120ADC(v125, &qword_27DAB1EB8, &unk_22F77A2D0);
          }

          else
          {
            v131 = v185;
            v132 = v116;
            v133 = v155;
            v155(v185, v132);
            v134 = v161;
            (v143[0])(v161, v125, v127);
            (*(v126 + 16))(v131, v134, v127);
            sub_22F73F200();
            v133(v134, v127);
            v133(v124, v127);
            (v171)(v169, v118);
          }

          v128 = v178;
          v129 = v165;
          v130 = v164;
          goto LABEL_28;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v84 = MEMORY[0x277D84FA0];
      v85 = *(MEMORY[0x277D84FA0] + 16);
      if (v85)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v84 = MEMORY[0x277D84FA0];
      v83 = v184;
      v85 = *(MEMORY[0x277D84FA0] + 16);
      if (v85)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    v87 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v66 = sub_22F740B90();
  __swift_project_value_buffer(v66, qword_2810B4D00);
  v67 = sub_22F740B70();
  v68 = sub_22F7415E0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_22F0FC000, v67, v68, "The query token does not have any suggestions", v69, 2u);
    MEMORY[0x2319033A0](v69, -1, -1);
  }

  v70 = sub_22F740120();
  return (*(*(v70 - 8) + 56))(v191, 1, 1, v70);
}

uint64_t sub_22F1F7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v112 = a6;
  v113 = a1;
  v116 = a5;
  v109 = a3;
  v114 = a2;
  v121 = a7;
  v8 = sub_22F740270();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v111 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22F740890();
  v110 = *(v117 - 8);
  v11 = *(v110 + 64);
  v12 = MEMORY[0x28223BE20](v117);
  v108 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v115 = &v94 - v16;
  v119 = sub_22F73F9B0();
  v17 = *(v119 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v119);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v102 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v94 - v25;
  v120 = sub_22F73F690();
  v122 = *(v120 - 8);
  v27 = *(v122 + 64);
  v28 = MEMORY[0x28223BE20](v120);
  v99 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v118 = &v94 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v105 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v94 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v94 - v38;
  v40 = sub_22F73F270();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v104 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v101 = &v94 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v94 - v46;
  v48 = a4;
  v50 = v49;
  sub_22F13BA9C(v48, v39, &qword_27DAB1EB8, &unk_22F77A2D0);
  v51 = *(v50 + 48);
  if (v51(v39, 1, v40) != 1)
  {
    v103 = v50;
    v97 = *(v50 + 32);
    v97(v47, v39, v40);
    sub_22F740600();
    v98 = v47;
    sub_22F73F920();
    v96 = *(v17 + 8);
    v96(v20, v119);
    v95 = *(v122 + 48);
    v57 = v40;
    if (v95(v26, 1, v120) == 1)
    {
      sub_22F120ADC(v26, &qword_27DAB0920, &qword_22F770B20);
      if (qword_2810A9418 != -1)
      {
        swift_once();
      }

      v58 = sub_22F740B90();
      __swift_project_value_buffer(v58, qword_2810B4D00);
      v59 = sub_22F740B70();
      v60 = sub_22F7415E0();
      v61 = os_log_type_enabled(v59, v60);
      v52 = v121;
      v62 = v103;
      v63 = v98;
      if (v61)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_22F0FC000, v59, v60, "Could not generate date from start date components.", v64, 2u);
        MEMORY[0x2319033A0](v64, -1, -1);
      }

      (*(v62 + 8))(v63, v57);
      goto LABEL_13;
    }

    v66 = v26;
    v67 = v120;
    v94 = *(v122 + 32);
    v94(v118, v66, v120);
    sub_22F13BA9C(v116, v37, &qword_27DAB1EB8, &unk_22F77A2D0);
    if (v51(v37, 1, v40) == 1)
    {
      v68 = v40;
      v69 = &qword_27DAB1EB8;
      v70 = &unk_22F77A2D0;
      v71 = v37;
    }

    else
    {
      v72 = v67;
      v73 = v101;
      v97(v101, v37, v40);
      sub_22F740600();
      v74 = v102;
      sub_22F73F920();
      v96(v20, v119);
      if (v95(v74, 1, v72) != 1)
      {
        v68 = v40;
        v82 = v99;
        v94(v99, v74, v72);
        sub_22F73F590();
        v84 = v83;
        sub_22F741390();
        v76 = v110;
        if (v84 <= v85)
        {
          (*(v122 + 8))(v82, v72);
          (*(v103 + 8))(v73, v40);
          v89 = v100;
          v81 = v117;
          (*(v76 + 104))(v100, *MEMORY[0x277D3C730], v117);
        }

        else
        {
          sub_22F741370();
          v87 = v86;
          (*(v122 + 8))(v82, v72);
          (*(v103 + 8))(v73, v40);
          v81 = v117;
          if (v84 <= v87)
          {
            v88 = MEMORY[0x277D3C750];
          }

          else
          {
            v88 = MEMORY[0x277D3C738];
          }

          v89 = v100;
          (*(v76 + 104))(v100, *v88, v117);
        }

        v75 = v115;
        (*(v76 + 32))(v115, v89, v81);
LABEL_30:
        (*(v106 + 16))(v111, v109, v107);
        (*(v76 + 16))(v108, v75, v81);
        v90 = v103;
        v91 = v98;
        (*(v103 + 16))(v104, v98, v68);
        sub_22F13BA9C(v116, v105, &qword_27DAB1EB8, &unk_22F77A2D0);

        v52 = v121;
        sub_22F740100();
        (*(v76 + 8))(v115, v117);
        (*(v122 + 8))(v118, v120);
        (*(v90 + 8))(v91, v68);
        v65 = 0;
        goto LABEL_31;
      }

      v68 = v40;
      (*(v103 + 8))(v73, v40);
      v69 = &qword_27DAB0920;
      v70 = &qword_22F770B20;
      v71 = v74;
    }

    sub_22F120ADC(v71, v69, v70);
    v75 = v115;
    v76 = v110;
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v77 = sub_22F740B90();
    __swift_project_value_buffer(v77, qword_2810B4D00);
    v78 = sub_22F740B70();
    v79 = sub_22F7415F0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_22F0FC000, v78, v79, "No valid end date components or date from date components, setting timeType to day", v80, 2u);
      MEMORY[0x2319033A0](v80, -1, -1);
    }

    v81 = v117;
    (*(v76 + 104))(v75, *MEMORY[0x277D3C730], v117);
    goto LABEL_30;
  }

  v52 = v121;
  sub_22F120ADC(v39, &qword_27DAB1EB8, &unk_22F77A2D0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v53 = sub_22F740B90();
  __swift_project_value_buffer(v53, qword_2810B4D00);
  v54 = sub_22F740B70();
  v55 = sub_22F7415E0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_22F0FC000, v54, v55, "The query token did not have start date components, invalid date token", v56, 2u);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

LABEL_13:
  v65 = 1;
LABEL_31:
  v92 = sub_22F740120();
  return (*(*(v92 - 8) + 56))(v52, v65, 1, v92);
}

uint64_t sub_22F1F8BA0(void *a1)
{
  v3 = *v1;
  v4 = [a1 count];
  if (v4 < 1)
  {
    if (qword_2810A9418 == -1)
    {
LABEL_7:
      v23 = sub_22F740B90();
      __swift_project_value_buffer(v23, qword_2810B4D00);
      v24 = sub_22F740B70();
      v25 = sub_22F7415E0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_22F0FC000, v24, v25, "No moments from which to generate holiday extended time tokens!", v26, 2u);
        MEMORY[0x2319033A0](v26, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [objc_opt_self() celebratedHolidayOfMoment];
  v7 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = v5;
    v10 = [a1 elementIdentifiers];
    v11 = [v8 adjacencyWithSources:v10 relation:v6];

    swift_unknownObjectRetain();
    v12 = [v11 transposed];
    swift_unknownObjectRelease();

    v13 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    *&v28[2] = v9;
    v28[3] = MEMORY[0x28223BE20](v13);
    v28[4] = v3;
    v14 = swift_allocObject();
    v14[2] = sub_22F202E74;
    v14[3] = v28;
    v14[4] = v12;
    v14[5] = v8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22F202E80;
    *(v15 + 24) = v14;
    v34 = sub_22F15A3B8;
    v35 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_22F107F34;
    v33 = &block_descriptor_12;
    v16 = _Block_copy(&aBlock);
    v17 = v12;
    swift_unknownObjectRetain();

    [v17 enumerateTargetsBySourceWith_];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      v18 = [objc_allocWithZone(PGGraphHolidayNodeCollection) initWithGraph:*(v1 + 16) elementIdentifiers:v13];
      v19 = swift_allocObject();
      *(v19 + 16) = &v29;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_22F202E8C;
      *(v20 + 24) = v19;
      v34 = sub_22F15A678;
      v35 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_22F2136B4;
      v33 = &block_descriptor_21;
      v21 = _Block_copy(&aBlock);

      [v18 enumerateLocalizedHolidayNamesUsingBlock_];
      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        aBlock = v29;
        swift_bridgeObjectRetain_n();
        sub_22F1FAFF0(&aBlock);

        swift_unknownObjectRelease();

        v22 = aBlock;

        return v22;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_22F741D40();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F1F9174(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  v11 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_22F13E15C(0, v11[2] + 1, 1, v11);
    *a4 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_22F13E15C(v13 > 1, v14 + 1, 1, v11);
    *a4 = v11;
  }

  v11[2] = v14 + 1;
  return (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
}

uint64_t sub_22F1F92EC@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = sub_22F73F270();
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F9B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v62 - v22;
  v24 = sub_22F73F690();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v27 + 24) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "sortedMonthYearTimeTokens: Collection time token did not have a month!";
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v32, v33, v35, v34, 2u);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_18:

    v46 = _s29IntermediateTimeExtendedTokenVMa();
    return (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  }

  if (*(v27 + 40) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "sortedMonthYearTimeTokens: Collection time token did not have a year!";
    goto LABEL_11;
  }

  v37 = *(v27 + 16);
  v66 = v1;
  v67 = v37;
  v38 = *(v27 + 32);
  v62 = v27;
  v63 = v38;
  v64 = v28;
  v65 = v26;
  sub_22F73F970();
  (*(v16 + 56))(v9, 1, 1, v15);
  v39 = sub_22F73FA10();
  (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
  v40 = v63;
  sub_22F73F250();
  sub_22F73F920();
  (*(v69 + 8))(v14, v68);
  (*(v16 + 8))(v19, v15);
  v41 = v64;
  v42 = v65;
  if ((*(v64 + 48))(v23, 1) == 1)
  {
    sub_22F120ADC(v23, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v43 = sub_22F740B90();
    __swift_project_value_buffer(v43, qword_2810B4D00);
    v32 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (os_log_type_enabled(v32, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = v40;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v67;
      _os_log_impl(&dword_22F0FC000, v32, v44, "Unable to create a date from year %ld and month %ld!", v45, 0x16u);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    goto LABEL_18;
  }

  (*(v41 + 32))(v30, v23, v42);
  v48 = sub_22F7405E0();
  v49 = sub_22F73F5B0();
  v50 = [v48 stringFromDate_];

  v51 = sub_22F740E20();
  v53 = v52;

  (*(v41 + 8))(v30, v42);
  v54 = _s29IntermediateTimeExtendedTokenVMa();
  v55 = v40;
  v56 = v54[7];
  v57 = *MEMORY[0x277D3C750];
  v58 = sub_22F740890();
  v59 = v70;
  (*(*(v58 - 8) + 104))(v70 + v56, v57, v58);
  v60 = *(v41 + 16);
  v61 = v62;
  v60(v59 + v54[8], v62 + v54[8], v42);
  v60(v59 + v54[9], v61 + v54[9], v42);
  *v59 = v51;
  *(v59 + 8) = v53;
  *(v59 + 16) = v67;
  *(v59 + 24) = 0;
  *(v59 + 32) = v55;
  *(v59 + 40) = 0;
  return (*(*(v54 - 1) + 56))(v59, 0, 1, v54);
}