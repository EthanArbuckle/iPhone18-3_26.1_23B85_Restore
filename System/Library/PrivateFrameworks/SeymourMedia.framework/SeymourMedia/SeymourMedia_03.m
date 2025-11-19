uint64_t AVURLAsset.fetchAudioHint(for:session:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v37 = a1;
  v5 = sub_20C59D63C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8);
  v42 = *(v9 - 8);
  v43 = v9;
  v41 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v34 - v12;
  sub_20C479154(0, &qword_2810F3D90);
  v13 = sub_20C5A08EC();
  v14 = *(v6 + 16);
  v35 = v13;
  v36 = v14;
  v34 = v5;
  v14(v8, a1, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v38 = v15 + v7;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v17 = *(v6 + 32);
  v17(v16 + v15, v8, v5);
  *(v16 + ((v15 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  sub_20C59D37C();
  v18 = v3;
  v19 = v39;
  sub_20C59EA9C();
  v20 = v34;
  v36(v8, v37, v34);
  v21 = swift_allocObject();
  v22 = v44;
  *(v21 + 16) = v44;
  v17(v21 + v15, v8, v20);
  v23 = v42;
  v24 = v40;
  v25 = v19;
  v26 = v19;
  v27 = v43;
  (*(v42 + 16))(v40, v26, v43);
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v29 = (v41 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v23 + 32))(v30 + v28, v24, v27);
  v31 = (v30 + v29);
  *v31 = sub_20C4BFB28;
  v31[1] = v21;
  v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0);
  sub_20C59EA9C();
  return (*(v23 + 8))(v25, v27);
}

uint64_t sub_20C4B5C88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v65 = a2;
  v6 = sub_20C59D63C();
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = v7;
  v68 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60);
  v73 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v10;
  MEMORY[0x28223BE20](v9);
  v72 = &v54 - v11;
  v12 = sub_20C59D37C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = v15;
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = sub_20C5A01CC();
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v21 = *(v13 + 16);
  v63 = v12;
  v64 = a1;
  v58 = v21;
  v21(v17, a1, v12);
  v22 = sub_20C5A01BC();
  v23 = sub_20C5A08AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v55 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v56 = v8;
    v27 = v26;
    v74 = v26;
    *v25 = 136315138;
    v28 = sub_20C59D2FC();
    v57 = a4;
    v30 = v29;
    v31 = v17;
    v32 = v63;
    (*(v13 + 8))(v31, v63);
    v33 = sub_20C479640(v28, v30, &v74);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_20C472000, v22, v23, "Fetching audio hint from %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v34 = v27;
    v8 = v56;
    MEMORY[0x20F2FFF90](v34, -1, -1);
    v35 = v25;
    v6 = v55;
    MEMORY[0x20F2FFF90](v35, -1, -1);
  }

  else
  {

    v36 = v17;
    v32 = v63;
    (*(v13 + 8))(v36, v63);
  }

  (*(v59 + 8))(v20, v60);
  v37 = v62;
  v58(v62, v64, v32);
  v38 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v39 = swift_allocObject();
  v40 = v65;
  *(v39 + 16) = v65;
  (*(v13 + 32))(v39 + v38, v37, v32);
  v41 = v40;
  v42 = v72;
  sub_20C59EA9C();
  v43 = v71;
  v44 = v68;
  (*(v71 + 16))(v68, v70, v6);
  v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v45, v44, v6);
  v47 = v73;
  v48 = v69;
  (*(v73 + 16))(v69, v42, v8);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v66 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v8);
  v52 = (v51 + v50);
  *v52 = sub_20C4C0280;
  v52[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E0);
  sub_20C59EA9C();
  return (*(v47 + 8))(v42, v8);
}

uint64_t sub_20C4B627C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v37 = a5;
  v38 = a2;
  v34 = a4;
  v35 = a3;
  v36 = a1;
  v39 = sub_20C5A020C();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C5A023C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C59D63C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C5A021C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C479154(0, &qword_2810F3D90);
  (*(v15 + 104))(v17, *MEMORY[0x277D851B8], v14);
  v33 = sub_20C5A090C();
  (*(v15 + 8))(v17, v14);
  (*(v11 + 16))(v13, v34, v10);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v35;
  *(v20 + 16) = v35;
  (*(v11 + 32))(v20 + v18, v13, v10);
  v22 = v36;
  v23 = v37;
  *(v20 + v19) = v37;
  v24 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v38;
  *v24 = v22;
  v24[1] = v25;
  aBlock[4] = sub_20C4C0410;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_5;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v23;

  sub_20C5A022C();
  v43 = MEMORY[0x277D84F90];
  sub_20C4C05E0(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v29 = v39;
  sub_20C5A0AEC();
  v30 = v33;
  MEMORY[0x20F2FEDA0](0, v9, v6, v26);
  _Block_release(v26);

  (*(v42 + 8))(v6, v29);
  (*(v40 + 8))(v9, v41);
}

uint64_t sub_20C4B6700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a4;
  v146 = a5;
  v148 = a3;
  v139 = sub_20C59D61C();
  v7 = *(v139 - 1);
  MEMORY[0x28223BE20](v139);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v123 - v11;
  v13 = sub_20C5A020C();
  v143 = *(v13 - 8);
  v144 = v13;
  MEMORY[0x28223BE20](v13);
  v140 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C5A023C();
  v141 = *(v15 - 8);
  v142 = v15;
  MEMORY[0x28223BE20](v15);
  v147 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20C59D63C();
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20C5A01CC();
  v135 = *(v136 - 8);
  v18 = MEMORY[0x28223BE20](v136);
  v126 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v125 = &v123 - v21;
  MEMORY[0x28223BE20](v20);
  v131 = &v123 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v133 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v127 = &v123 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v123 - v28;
  v30 = sub_20C59D37C();
  v31 = *(v30 - 8);
  v149 = v30;
  v150 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v137 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v128 = &v123 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v134 = &v123 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v123 - v38;
  v138 = a1;
  v40 = AVURLAsset.audioHintURLMap.getter();
  v41 = sub_20C59D51C();
  if (*(v40 + 16))
  {
    v124 = v39;
    sub_20C4820C8(v41, v42);
    v44 = v43;

    if (v44)
    {

      sub_20C4B7A14(v29);

      v46 = v149;
      v45 = v150;
      if ((*(v150 + 48))(v29, 1, v149) != 1)
      {

        v139 = *(v45 + 32);
        v139(v124, v29, v46);
        v68 = v131;
        sub_20C59FE5C();
        v69 = v130;
        v70 = v129;
        v71 = v132;
        (*(v130 + 16))(v129, a2, v132);
        v72 = sub_20C5A01BC();
        v73 = sub_20C5A08AC();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = v70;
          v76 = swift_slowAlloc();
          aBlock = v76;
          *v74 = 136315138;
          v77 = sub_20C59D51C();
          v78 = v69;
          v80 = v79;
          (*(v78 + 8))(v75, v132);
          v81 = sub_20C479640(v77, v80, &aBlock);

          *(v74 + 4) = v81;
          _os_log_impl(&dword_20C472000, v72, v73, "Found audio hint url for %s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x20F2FFF90](v76, -1, -1);
          MEMORY[0x20F2FFF90](v74, -1, -1);
        }

        else
        {

          (*(v69 + 8))(v70, v71);
        }

        (*(v135 + 8))(v68, v136);
        v95 = v144;
        v96 = v149;
        v97 = v150;
        v98 = v134;
        v99 = v124;
        (*(v150 + 16))(v134, v124, v149);
        v100 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v101 = swift_allocObject();
        v102 = v146;
        *(v101 + 16) = v145;
        *(v101 + 24) = v102;
        v139((v101 + v100), v98, v96);
        v156 = sub_20C4C068C;
        v157 = v101;
        aBlock = MEMORY[0x277D85DD0];
        v153 = 1107296256;
        v154 = sub_20C4F8F74;
        v155 = &block_descriptor_217;
        v103 = _Block_copy(&aBlock);

        v104 = v147;
        sub_20C5A022C();
        v151 = MEMORY[0x277D84F90];
        sub_20C4C05E0(&qword_2810F3E00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
        sub_20C495A30();
        v105 = v140;
        sub_20C5A0AEC();
        MEMORY[0x20F2FEDA0](0, v104, v105, v103);
        _Block_release(v103);
        (*(v143 + 8))(v105, v95);
        (*(v141 + 8))(v104, v142);
        (*(v97 + 8))(v99, v96);
      }

      sub_20C477B50(v29, &qword_27C7C4AC0);
    }
  }

  else
  {
  }

  sub_20C59D62C();
  sub_20C59D5EC();
  (*(v7 + 8))(v9, v139);
  v47 = sub_20C59D53C();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v12, 1, v47) == 1)
  {
    sub_20C477B50(v12, &unk_27C7C6170);
    v49 = v140;
    v50 = v149;
LABEL_13:
    v54 = v150;
    goto LABEL_14;
  }

  v51 = sub_20C59D52C();
  v53 = v52;
  (*(v48 + 8))(v12, v47);
  v50 = v149;
  if (!*(v40 + 16))
  {

    v49 = v140;
    goto LABEL_13;
  }

  sub_20C4820C8(v51, v53);
  v49 = v140;
  v54 = v150;
  if ((v55 & 1) == 0)
  {

    goto LABEL_14;
  }

  v56 = v127;
  sub_20C4B7A14(v127);

  if ((*(v54 + 48))(v56, 1, v50) == 1)
  {

    sub_20C477B50(v56, &qword_27C7C4AC0);
LABEL_14:
    if (*(v40 + 16) && (sub_20C4820C8(28261, 0xE200000000000000), (v57 & 1) != 0))
    {

      v58 = v133;
      sub_20C4B7A14(v133);

      if ((*(v54 + 48))(v58, 1, v50) != 1)
      {
        v140 = *(v54 + 32);
        (v140)(v137, v58, v50);
        v82 = v126;
        sub_20C59FE5C();
        v83 = sub_20C5A01BC();
        v84 = sub_20C5A08AC();
        v85 = os_log_type_enabled(v83, v84);
        v60 = v144;
        if (v85)
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_20C472000, v83, v84, "Use default language code for audio hint url", v86, 2u);
          MEMORY[0x20F2FFF90](v86, -1, -1);
        }

        (*(v135 + 8))(v82, v136);
        v87 = v150;
        v88 = v134;
        (*(v150 + 16))(v134, v137, v50);
        v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v90 = swift_allocObject();
        v91 = v146;
        *(v90 + 16) = v145;
        *(v90 + 24) = v91;
        (v140)(v90 + v89, v88, v50);
        v156 = sub_20C4C068C;
        v157 = v90;
        aBlock = MEMORY[0x277D85DD0];
        v153 = 1107296256;
        v154 = sub_20C4F8F74;
        v155 = &block_descriptor_205;
        v92 = _Block_copy(&aBlock);

        v93 = v147;
        sub_20C5A022C();
        v151 = MEMORY[0x277D84F90];
        sub_20C4C05E0(&qword_2810F3E00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
        sub_20C495A30();
        sub_20C5A0AEC();
        MEMORY[0x20F2FEDA0](0, v93, v49, v92);
        _Block_release(v92);
        v59 = v143;
        (*(v143 + 8))(v49, v60);
        v62 = v141;
        v94 = v93;
        v61 = v142;
        (*(v141 + 8))(v94, v142);
        (*(v87 + 8))(v137, v50);

        goto LABEL_20;
      }

      sub_20C477B50(v58, &qword_27C7C4AC0);
    }

    else
    {
    }

    v59 = v143;
    v60 = v144;
    v62 = v141;
    v61 = v142;
LABEL_20:
    v63 = swift_allocObject();
    v64 = v146;
    *(v63 + 16) = v145;
    *(v63 + 24) = v64;
    v156 = sub_20C4C04B8;
    v157 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v153 = 1107296256;
    v154 = sub_20C4F8F74;
    v155 = &block_descriptor_199;
    v65 = _Block_copy(&aBlock);

    v66 = v147;
    sub_20C5A022C();
    v151 = MEMORY[0x277D84F90];
    sub_20C4C05E0(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v66, v49, v65);
    _Block_release(v65);
    (*(v59 + 8))(v49, v60);
    (*(v62 + 8))(v66, v61);
  }

  v139 = *(v54 + 32);
  v139(v128, v56, v50);
  v106 = v125;
  sub_20C59FE5C();

  v107 = sub_20C5A01BC();
  v108 = sub_20C5A08AC();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    aBlock = v110;
    *v109 = 136315138;
    v111 = sub_20C479640(v51, v53, &aBlock);

    *(v109 + 4) = v111;
    _os_log_impl(&dword_20C472000, v107, v108, "Found audio hint url for %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x20F2FFF90](v110, -1, -1);
    v112 = v109;
    v54 = v150;
    MEMORY[0x20F2FFF90](v112, -1, -1);
  }

  else
  {
  }

  (*(v135 + 8))(v106, v136);
  v113 = v134;
  v114 = v128;
  v115 = v149;
  (*(v54 + 16))(v134, v128, v149);
  v116 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v117 = swift_allocObject();
  v118 = v146;
  *(v117 + 16) = v145;
  *(v117 + 24) = v118;
  v139((v117 + v116), v113, v115);
  v156 = sub_20C4C04C0;
  v157 = v117;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = sub_20C4F8F74;
  v155 = &block_descriptor_211;
  v119 = _Block_copy(&aBlock);

  v120 = v147;
  sub_20C5A022C();
  v151 = MEMORY[0x277D84F90];
  sub_20C4C05E0(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v121 = v54;
  v122 = v144;
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v120, v49, v119);
  _Block_release(v119);
  (*(v143 + 8))(v49, v122);
  (*(v141 + 8))(v120, v142);
  (*(v121 + 8))(v114, v115);
}

uint64_t sub_20C4B7A14@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v69 = sub_20C59D37C();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v4 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20C5A01CC();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v57[-v15];
  v17 = sub_20C5A03FC();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_20C59D3AC();
  if (v19 >> 60 != 15)
  {
    v20 = v18;
    v21 = v19;
    sub_20C5A03EC();
    v22 = sub_20C5A03BC();
    if (v23)
    {
      v24 = v23;
      v64 = v10;
      v65 = v20;
      v63 = v4;
      v25 = v22;
      v26 = [v1 URL];
      sub_20C59D32C();

      v27 = *(v2 + 56);
      v28 = v69;
      v27(v14, 0, 1, v69);
      v62 = v25;
      sub_20C59D35C();
      sub_20C477B50(v14, &qword_27C7C4AC0);
      if ((*(v2 + 48))(v16, 1, v28) == 1)
      {
        v60 = v2 + 56;
        v61 = v27;
        sub_20C477B50(v16, &qword_27C7C4AC0);
        v29 = v64;
        sub_20C59FE5C();
        v30 = v1;

        v31 = sub_20C5A01BC();
        v32 = sub_20C5A089C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v70 = v59;
          *v33 = 136315394;
          v34 = [v30 URL];
          v58 = v32;
          v35 = v34;
          v36 = v63;
          sub_20C59D32C();

          sub_20C4C05E0(&unk_27C7C59F0, MEMORY[0x277CC9260]);
          v37 = v69;
          v38 = sub_20C5A0E6C();
          v40 = v39;
          (*(v2 + 8))(v36, v37);
          v41 = sub_20C479640(v38, v40, &v70);

          *(v33 + 4) = v41;
          *(v33 + 12) = 2080;
          v42 = sub_20C479640(v62, v24, &v70);

          *(v33 + 14) = v42;
          _os_log_impl(&dword_20C472000, v31, v58, "Unable to get relative URL for audio hints: baseURL %s relativeURL %s", v33, 0x16u);
          v43 = v59;
          swift_arrayDestroy();
          MEMORY[0x20F2FFF90](v43, -1, -1);
          MEMORY[0x20F2FFF90](v33, -1, -1);
          sub_20C4BFD68(v65, v21);

          (*(v66 + 8))(v29, v67);
        }

        else
        {
          sub_20C4BFD68(v65, v21);

          (*(v66 + 8))(v29, v67);
          v37 = v69;
        }

        return v61(v68, 1, 1, v37);
      }

      else
      {
        sub_20C4BFD68(v65, v21);

        v56 = v68;
        (*(v2 + 32))(v68, v16, v28);
        return v27(v56, 0, 1, v28);
      }
    }

    sub_20C4BFD68(v20, v21);
  }

  sub_20C59FE5C();
  v44 = v1;
  v45 = sub_20C5A01BC();
  v46 = sub_20C5A089C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v70 = v48;
    *v47 = 136315138;
    v49 = [v44 URL];
    sub_20C59D32C();

    sub_20C4C05E0(&unk_27C7C59F0, MEMORY[0x277CC9260]);
    v50 = v69;
    v51 = sub_20C5A0E6C();
    v53 = v52;
    (*(v2 + 8))(v4, v50);
    v54 = sub_20C479640(v51, v53, &v70);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_20C472000, v45, v46, "Unable to decode URL for audio hints: baseURL %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x20F2FFF90](v48, -1, -1);
    MEMORY[0x20F2FFF90](v47, -1, -1);

    (*(v66 + 8))(v8, v67);
  }

  else
  {

    (*(v66 + 8))(v8, v67);
    v50 = v69;
  }

  return (*(v2 + 56))(v68, 1, 1, v50);
}

uint64_t sub_20C4B81A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_20C59D37C();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_20C477B50(v7, &qword_27C7C4A80);
}

uint64_t sub_20C4B82B0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20C4C0628();
  v5 = swift_allocError();
  *v6 = 0;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20C477B50(v4, &qword_27C7C4A80);
}

uint64_t sub_20C4B8394(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AD0);
  v37 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B8654(uint64_t a1, int a2)
{
  v3 = v2;
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  v39 = *(started - 8);
  MEMORY[0x28223BE20](started - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A90);
  v40 = a2;
  result = sub_20C5A0D5C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_20C4948B4(v28, v41);
      }

      else
      {
        sub_20C4BFE48(v28, v41);
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_20C4948B4(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20C4B8990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A58);
  v33 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_20C4947E4(v24, v34);
      }

      else
      {
        sub_20C479AA8(v24, v34);
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_20C4947E4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B8C48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A98);
  v36 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_20C4775E4(v26, &v37, &qword_27C7C44D0);
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B8F10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AA8);
  v44 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 32 * v24);
      v28 = *v26;
      v27 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v25 + 40 * v24;
      v45 = v21;
      if (v44)
      {
        v32 = *v31;
        v33 = *(v31 + 16);
        v48 = *(v31 + 32);
        v46 = v32;
        v47 = v33;
      }

      else
      {
        sub_20C483FD8(v31, &v46);
      }

      sub_20C5A0FBC();
      sub_20C5A02FC();
      result = sub_20C5A0FFC();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v28;
      v16[1] = v27;
      v16[2] = v29;
      v16[3] = v30;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v46;
      v19 = v47;
      *(v17 + 32) = v48;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
      v5 = v43;
      v12 = v45;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B9214(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A88);
  v33 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_20C4BFD7C(v34, *(&v34 + 1));
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B94D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E8);
  v34 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B9778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AA0);
  v47 = a2;
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v46 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v47)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 88 * v22;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 32);
        v55 = *(v24 + 16);
        v56 = v27;
        v28 = *(v24 + 64);
        v57 = *(v24 + 48);
        v58 = v28;
        v29 = *(v24 + 80);
        v30 = *(v23 + 8 * v22);
      }

      else
      {
        v31 = *(v5 + 48) + 88 * v22;
        v32 = *(v31 + 32);
        v33 = *(v31 + 48);
        v34 = *(v31 + 64);
        v54 = *(v31 + 80);
        v52 = v33;
        v53 = v34;
        v35 = *(v31 + 16);
        v49 = *v31;
        v50 = v35;
        v51 = v32;
        v30 = *(*(v5 + 56) + 8 * v22);
        sub_20C494988(&v49, v48);
        v26 = *(&v49 + 1);
        v25 = *&v49;
        v55 = v50;
        v56 = v51;
        v57 = v52;
        v58 = v53;
        v29 = v54;
      }

      sub_20C5A0FBC();
      if (v29)
      {
        MEMORY[0x20F2FF470](1);
        *&v49 = v25;
        *(&v49 + 1) = v26;
        v50 = v55;
        v51 = v56;
        v52 = v57;
        v53 = v58;
        ArtworkImageCacheKey.hash(into:)();
      }

      else
      {
        MEMORY[0x20F2FF470](0);
        if (v25 == 0.0)
        {
          v36 = 0.0;
        }

        else
        {
          v36 = v25;
        }

        MEMORY[0x20F2FF490](*&v36);
        if (v26 == 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v26;
        }

        MEMORY[0x20F2FF490](*&v37);
      }

      result = sub_20C5A0FFC();
      v38 = -1 << *(v7 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 88 * v15;
      *v16 = v25;
      *(v16 + 8) = v26;
      v17 = v56;
      *(v16 + 16) = v55;
      *(v16 + 32) = v17;
      v18 = v58;
      *(v16 + 48) = v57;
      *(v16 + 64) = v18;
      *(v16 + 80) = v29;
      *(*(v7 + 56) + 8 * v15) = v30;
      ++*(v7 + 16);
      v5 = v46;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_43;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v2;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B9B0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A18);
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(v5 + 56) + 40 * v22;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v37 = *(v24 + 32);
        v35 = v25;
        v36 = v26;
      }

      else
      {
        sub_20C483FD8(v24, &v35);
      }

      sub_20C5A0FBC();
      sub_20C59E41C();
      sub_20C5A049C();

      result = sub_20C5A0FFC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v23;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v35;
      v18 = v36;
      *(v16 + 32) = v37;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4B9DD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A38);
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        sub_20C4BFD10(v21);
      }

      result = sub_20C5A09AC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20C4BA048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AD0);
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 48) + 56 * v24;
      if (a2)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 32);
        v48 = *(v25 + 48);
        v46 = v27;
        v47 = v28;
        v45 = v26;
        v29 = (*(v5 + 56) + 32 * v24);
        v43 = *v29;
        v44 = v29[1];
      }

      else
      {
        sub_20C494788(v25, &v45);
        v30 = (*(v5 + 56) + 32 * v24);
        v43 = *v30;
        v44 = v30[1];
      }

      sub_20C5A0FBC();
      sub_20C5A0B8C();
      v31 = *(&v47 + 1);
      v32 = v48;
      if (*(&v47 + 1) == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x20F2FF490](*&v31);
      if (v32 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v32;
      }

      MEMORY[0x20F2FF490](*&v33);
      result = sub_20C5A0FFC();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = v45;
      v18 = v46;
      v19 = v47;
      *(v16 + 48) = v48;
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *v16 = v17;
      v20 = (*(v7 + 56) + 32 * v15);
      *v20 = v43;
      v20[1] = v44;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_20C4BA370(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49F8);
  result = sub_20C5A0D5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_20C4947E4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_20C483FD8(v23, &v36);
        sub_20C479AA8(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_20C5A0B6C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_20C4947E4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_20C4BA628(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_20C4BA678(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  result = sub_20C4948B4(a4, v9 + *(*(started - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_20C4BA710(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20C4947E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_20C4BA77C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_20C4BA7C4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 88 * result;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_20C4BA82C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_20C4BA870(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 56 * result;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = (a7[7] + 32 * result);
  *v9 = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

unint64_t sub_20C4BA8D8(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_20C4BA928(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_20C4947E4(a3, (a4[7] + 32 * a1));
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

void *sub_20C4BA9A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AD0);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BAB1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AD8);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_20C483FD8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_20C4BACD0()
{
  v1 = v0;
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  v31 = *(started - 8);
  MEMORY[0x28223BE20](started - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A90);
  v4 = *v0;
  v5 = sub_20C5A0D4C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_20C4BFE48(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_20C4948B4(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20C4BAF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A98);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_20C4775E4(*(v2 + 56) + 32 * v17, v27, &qword_27C7C44D0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_20C4BB0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A58);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20C479AA8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20C4947E4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_20C4BB258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AA8);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v28 = *v19;
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v22 = 40 * v17;
        sub_20C483FD8(*(v2 + 56) + 40 * v17, v29);
        v23 = *(v4 + 48) + v18;
        *v23 = v28;
        *(v23 + 16) = v21;
        *(v23 + 24) = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_20C4BB41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49E8);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BB58C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AA0);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 88 * v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v25 = *(v17 + 80);
      v24[3] = v19;
      v24[4] = v20;
      v21 = v17[1];
      v24[0] = *v17;
      v24[1] = v21;
      v24[2] = v18;
      v22 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 88 * v16), v17, 0x51uLL);
      *(*(v4 + 56) + 8 * v16) = v22;
      sub_20C494988(v24, v23);
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BB740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A18);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        result = sub_20C483FD8(*(v2 + 56) + 40 * v17, v22);
        *(*(v4 + 48) + v17) = v18;
        v19 = *(v4 + 56) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BB8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A38);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = sub_20C4BFD10(v19);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BBA30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AD0);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 56 * v17;
        sub_20C494788(*(v2 + 48) + 56 * v17, v29);
        v19 = 32 * v17;
        v20 = *(v2 + 56) + 32 * v17;
        v21 = *v20;
        v22 = *(v20 + 24);
        v23 = *(v4 + 48) + v18;
        v24 = *(v20 + 8);
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v23 = v29[0];
        *(v23 + 16) = v27;
        *(v23 + 32) = v26;
        *(v23 + 48) = v25;
        v28 = *(v4 + 56) + v19;
        *v28 = v21;
        *(v28 + 8) = v24;
        *(v28 + 24) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_20C4BBBF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49F8);
  v2 = *v0;
  v3 = sub_20C5A0D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_20C483FD8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_20C479AA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_20C4947E4(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_20C4BC550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v13 = sub_20C59EABC();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

void sub_20C4BC610(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C59EABC();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20C4907D4, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20C48D05C(a1);
}

void sub_20C4BC7C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AB8);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59D37C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C4A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C4C06AC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20C4BCAA4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59EBBC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49F0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C49F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C4907D4, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20C4BCD84(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2)
  {
    v20 = a1;
    v21 = 1;
    v16 = a1;
    a5(&v20);
    return sub_20C49B78C(a1, 1);
  }

  else
  {
    a3(v13);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_20C490920, v19);

    return (*(v12 + 8))(v15, v11);
  }
}

void sub_20C4BCF24(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  if (a3)
  {
    v26 = a1;
    LOBYTE(v27) = 1;
    v21 = a1;
    a6(&v26);
    sub_20C4C0014(a1, a2, 1, sub_20C4A7C7C);
  }

  else
  {
    v25 = a11;
    v26 = a1;
    v27 = a2;
    sub_20C4BFD7C(a1, a2);
    a4(&v26);
    v22 = sub_20C59EABC();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;

    v22(v25, v23);

    (*(v18 + 8))(v20, v17);
    sub_20C4A7C7C(v26, v27);
  }
}

void sub_20C4BD0E8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v24 = a1;
  if (a2)
  {
    v25 = 1;
    v19 = a1;
    a5(&v24);
    v20 = a1;
    v21 = 1;
  }

  else
  {

    a3(&v24);
    v22 = sub_20C59EABC();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v20 = a1;
    v21 = 0;
  }

  sub_20C4C0054(v20, v21);
}

void sub_20C4BD288(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C63B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A30);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_20C477B50(v12, &unk_27C7C63B0);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_20C4C06A8, v19);

    (*(v14 + 8))(v16, v13);
    sub_20C4C0054(a1, 0);
  }
}

void sub_20C4BD4B4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A08);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A00);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_20C477B50(v12, &qword_27C7C4A08);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_20C4C06A8, v19);

    (*(v14 + 8))(v16, v13);
    sub_20C4C0054(a1, 0);
  }
}

uint64_t sub_20C4BD6E0(void *a1, char a2, void (*a3)(__n128), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A78);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20C477B50(v12, &qword_27C7C4A78);
  }

  else
  {
    a3(v15);
    v20 = sub_20C59EABC();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20C4C06A8, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20C4BD8F4(void *a1, char a2, void (*a3)(__n128), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A68);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20C477B50(v12, &qword_27C7C4A68);
  }

  else
  {
    a3(v15);
    v20 = sub_20C59EABC();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20C4C06A8, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20C4BDB08(void *a1, char a2, void (*a3)(__n128), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A48);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20C477B50(v12, &qword_27C7C4A48);
  }

  else
  {
    a3(v15);
    v20 = sub_20C59EABC();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20C4C06A8, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20C4BDD1C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A48);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C59E5BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A50);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20C4775E4(v28, v24 - v16, &qword_27C7C4A50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20C477B50(v7, &qword_27C7C4A48);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C59EABC();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20C481738, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20C4BE068(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_20C59E5BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A50);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_20C4775E4(a1, &v25 - v17, &qword_27C7C4A50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_20C477B50(v15, &qword_27C7C4A50);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_20C59EABC();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_20C4C06A8, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_20C4BE384(void *a1, unint64_t a2, char a3, void (*a4)(id *), uint64_t a5, void (*a6)(id *), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  if (a3)
  {
    v21 = a1;
    v22 = 0;
    v23 = 1;
    v17 = a1;
    a6(&v21);
    sub_20C4C0014(v21, v22, v23, sub_20C4BFD68);
  }

  else
  {
    v21 = a1;
    v22 = a2;
    sub_20C4BFD7C(a1, a2);
    a4(&v21);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = a6;
    *(v19 + 24) = a7;

    v18(sub_20C48172C, v19);

    (*(v14 + 8))(v16, v13);
    sub_20C4A7C7C(v21, v22);
  }
}

void sub_20C4BE558(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59D72C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A48);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C4A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C490920, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20C4BE838(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59D37C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C4A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C490920, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20C4BEB18(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59E26C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C63B0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &unk_27C7C63B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C490920, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20C4BEDF8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59E18C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A08);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C4A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C490920, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20C4BF0D8(void *a1, char a2, void (*a3)(__n128), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61A0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2)
  {
    v20 = a1;
    v21 = 1;
    v16 = a1;
    a5(&v20);
    return sub_20C49B78C(a1);
  }

  else
  {
    a3(v13);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_20C4C06AC, v19);

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_20C4BF278(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t))
{
  v25 = a8;
  v26 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v27 = a1;
  if (a2)
  {
    v28 = 1;
    v18 = a1;
    a5(&v27);
    v19 = a1;
    v20 = 1;
  }

  else
  {
    v21 = a1;
    a3(&v27);
    v22 = sub_20C59EABC();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(v25, v23);

    (*(v15 + 8))(v17, v14);
    v19 = a1;
    v20 = 0;
  }

  return v26(v19, v20);
}

void sub_20C4BF42C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5FE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C59EABC();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20C4C06AC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20C48D05C(a1);
}

void sub_20C4BF5E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5FE0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C59D37C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20C4775E4(a1, v20 - v14, &qword_27C7C4A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C4C06AC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void (*sub_20C4BF8C0(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2FF0E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20C4C0694;
  }

  __break(1u);
  return result;
}

void (*sub_20C4BF940(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2FF0E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20C4BF9C0;
  }

  __break(1u);
  return result;
}

unint64_t sub_20C4BF9C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_20C5A04DC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_20C5A059C();
}

uint64_t sub_20C4BFA78(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C59D63C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_20C4B627C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_20C4BFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C59D63C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_20C4B5C88(a1, v6, v7, a2);
}

id sub_20C4BFD10(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_20C4BFD68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20C4A7C7C(a1, a2);
  }

  return a1;
}

uint64_t sub_20C4BFD7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20C4BFE0C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_20C4BFE48(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

void sub_20C4C0014(id a1, uint64_t a2, char a3, void (*a4)(id))
{
  if (a3)
  {
  }

  else
  {
    a4(a1);
  }
}

void sub_20C4C0054(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_20C4C00E8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_20C4C01FC(uint64_t a1, uint64_t a2)
{
  sub_20C59D37C();
  v5 = *(v2 + 16);

  sub_20C4E50B0(a1, a2, v5);
}

uint64_t sub_20C4C0280(uint64_t *a1)
{
  v3 = *(sub_20C59D63C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C4E5354(a1, v4);
}

uint64_t sub_20C4C0330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20C4BC550(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_20C4C0410()
{
  v1 = *(sub_20C59D63C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_20C4B6700(v4, v0 + v2, v5, v7, v8);
}

uint64_t objectdestroy_201Tm()
{
  v1 = sub_20C59D37C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20C4C05E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C4C0628()
{
  result = qword_27C7C4AC8;
  if (!qword_27C7C4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4AC8);
  }

  return result;
}

uint64_t MarketingActionItem.footnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem() + 20));

  return v1;
}

uint64_t type metadata accessor for MarketingActionItem()
{
  result = qword_27C7C4AE8;
  if (!qword_27C7C4AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MarketingActionItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem() + 24));

  return v1;
}

uint64_t MarketingActionItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem() + 28));

  return v1;
}

uint64_t MarketingActionItem.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MarketingActionItem();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t MarketingActionItem.init(with:style:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C5A01CC();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20C59D37C();
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for MarketingActionItem();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a2;
  v17 = [a1 type];
  if (!v17)
  {

    return (*(v13 + 56))(a3, 1, 1, v12);
  }

  v18 = v17;
  v80 = a3;
  v19 = [a1 offerID];
  v79 = v13;
  v74 = v16;
  if (v19)
  {
    v20 = v19;
    v21 = sub_20C5A039C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (v15 + v12[6]);
  *v24 = v21;
  v24[1] = v23;
  v75 = v23;
  v25 = sub_20C5A039C();
  v27 = v26;
  if (v25 == sub_20C5A039C() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_20C5A0E9C();

    if ((v29 & 1) == 0)
    {
      v44 = sub_20C5A039C();
      v46 = v45;
      if (v44 == sub_20C5A039C() && v46 == v47)
      {
      }

      else
      {
        v48 = sub_20C5A0E9C();

        if ((v48 & 1) == 0)
        {
          sub_20C59FE2C();
          v65 = v18;
          v66 = sub_20C5A01BC();
          v67 = sub_20C5A089C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v81 = v69;
            *v68 = 136446210;
            v70 = sub_20C5A039C();
            v72 = sub_20C479640(v70, v71, &v81);

            *(v68 + 4) = v72;
            _os_log_impl(&dword_20C472000, v66, v67, "Failed to make button for item action with unknown type: %{public}s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v69);
            MEMORY[0x20F2FFF90](v69, -1, -1);
            MEMORY[0x20F2FFF90](v68, -1, -1);
          }

          else
          {
          }

          (*(v76 + 8))(v8, v77);
          goto LABEL_25;
        }
      }

      v49 = [a1 callToActionLabel];
      if (v49)
      {
        v50 = v49;
        v51 = sub_20C5A039C();
        v53 = v52;

        v54 = [a1 url];
        if (v54)
        {
          v55 = v54;
          sub_20C59D32C();

          v56 = v78;
          (*(v78 + 16))(v15, v11, v9);
          type metadata accessor for MarketingAction();
          swift_storeEnumTagMultiPayload();
          v57 = (v15 + v12[7]);
          *v57 = v51;
          v57[1] = v53;
          v58 = [a1 disclaimerText];
          if (v58)
          {
            v59 = v56;
            v60 = v58;
            v41 = sub_20C5A039C();
            v43 = v61;

            (*(v59 + 8))(v11, v9);
            goto LABEL_29;
          }

          (*(v56 + 8))(v11, v9);

LABEL_28:
          v41 = 0;
          v43 = 0;
          goto LABEL_29;
        }

        goto LABEL_24;
      }

LABEL_23:

LABEL_24:
LABEL_25:

      v13 = v79;
      a3 = v80;
      return (*(v13 + 56))(a3, 1, 1, v12);
    }
  }

  v30 = [a1 callToActionLabel];
  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v30;
  v32 = sub_20C5A039C();
  v34 = v33;

  v35 = [a1 buyParams];
  if (!v35)
  {

    goto LABEL_23;
  }

  *v15 = v35;
  v36 = v35;
  type metadata accessor for MarketingAction();
  swift_storeEnumTagMultiPayload();
  v37 = (v15 + v12[7]);
  *v37 = v32;
  v37[1] = v34;
  v38 = v36;
  v39 = [a1 disclaimerText];
  if (!v39)
  {

    goto LABEL_28;
  }

  v40 = v39;
  v41 = sub_20C5A039C();
  v43 = v42;

LABEL_29:
  v63 = (v15 + v12[5]);
  *v63 = v41;
  v63[1] = v43;
  *(v15 + v12[8]) = v74;
  v64 = v80;
  sub_20C4C1274(v15, v80, type metadata accessor for MarketingActionItem);
  (*(v79 + 56))(v64, 0, 1, v12);
  return sub_20C498018(v15);
}

uint64_t MarketingActionItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C59D37C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingAction();
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C4C1274(v1, v8, type metadata accessor for MarketingAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2FF470](1);
    sub_20C4C1480(&qword_27C7C4560, MEMORY[0x277CC9260]);
    sub_20C5A02FC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    MEMORY[0x20F2FF470](0);
    sub_20C5A09CC();
  }

  v10 = type metadata accessor for MarketingActionItem();
  if (*(v1 + v10[5] + 8))
  {
    sub_20C5A0FDC();
    sub_20C5A049C();
  }

  else
  {
    sub_20C5A0FDC();
  }

  if (*(v1 + v10[6] + 8))
  {
    sub_20C5A0FDC();
    sub_20C5A049C();
  }

  else
  {
    sub_20C5A0FDC();
  }

  sub_20C5A049C();
  v11 = *(v1 + v10[8]);
  MEMORY[0x20F2FF470](v11 >> 7);
  return MEMORY[0x20F2FF470](v11 & 0x7F);
}

uint64_t MarketingActionItem.hashValue.getter()
{
  sub_20C5A0FBC();
  MarketingActionItem.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4C11F0()
{
  sub_20C5A0FBC();
  MarketingActionItem.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4C1234()
{
  sub_20C5A0FBC();
  MarketingActionItem.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4C1274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s12SeymourMedia19MarketingActionItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s12SeymourMedia15MarketingActionO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MarketingActionItem();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_20C5A0E9C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_20C5A0E9C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_20:
    v21 = v4[7];
    v23 = *(a1 + v21);
    v22 = *(a1 + v21 + 8);
    v24 = (a2 + v21);
    if (v23 != *v24 || v22 != v24[1])
    {
      v26 = v4;
      v27 = sub_20C5A0E9C();
      v4 = v26;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    v28 = v4[8];
    v29 = *(a1 + v28);
    v30 = *(a1 + v28);
    v31 = *(a2 + v28);
    if (v29 < 0)
    {
      if ((v31 & 0x80) == 0 || ((v31 ^ v30) & 0x7F) != 0)
      {
        return 0;
      }
    }

    else if (v30 != v31)
    {
      return 0;
    }

    return 1;
  }

  if (!v17)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_20C4C1480(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C4C14F0()
{
  type metadata accessor for MarketingAction();
  if (v0 <= 0x3F)
  {
    sub_20C4C1588();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C4C1588()
{
  if (!qword_27C7C4AF8)
  {
    v0 = sub_20C5A0A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C4AF8);
    }
  }
}

uint64_t MediaPlayerSyncLink.sessionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20C4C1608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C59C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C4C169C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5988;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C4C1758()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_20C487984(v1);
  return v1;
}

uint64_t sub_20C4C17A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_20C47E6BC(v5);
}

uint64_t sub_20C4C184C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C5980;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C4C18E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5978;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C4C199C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_20C487984(v1);
  return v1;
}

uint64_t sub_20C4C19EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_20C47E6BC(v5);
}

uint64_t sub_20C4C1A90@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C5950;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C4C1B24(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5928;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t sub_20C4C1BE0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_20C487984(v1);
  return v1;
}

uint64_t sub_20C4C1C30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_20C47E6BC(v5);
}

uint64_t sub_20C4C1D08(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_20C4C1E14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_20C59D4CC();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_20C4C1E9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_20C59D4CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t sub_20C4C1FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_20C59D4CC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_20C4C2050(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_20C59D4CC();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t MediaPlayerSyncLink.__allocating_init(multiUserSession:multiUserClient:sessionClient:eventHub:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_20C4C48D4(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t MediaPlayerSyncLink.init(multiUserSession:multiUserClient:sessionClient:eventHub:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_20C4C48D4(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_20C4C21EC()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C59E2EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FCBC();
  v8 = sub_20C59E2CC();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 16);
    v12 = *(Strong + 24);

    if (v8 == v13 && v10 == v12)
    {

      goto LABEL_13;
    }

    v15 = sub_20C5A0E9C();

    if (v15)
    {
LABEL_13:
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v20 = result;
        swift_beginAccess();
        v21 = *(v20 + 48);
        sub_20C487984(v21);

        if (v21)
        {
          v21(result);
          return sub_20C47E6BC(v21);
        }
      }

      return result;
    }
  }

  else
  {
  }

  sub_20C59FE7C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20C472000, v16, v17, "PlaybackSync: Dropping remote catchup request because of session mismatch with link", v18, 2u);
    MEMORY[0x20F2FFF90](v18, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20C4C24E4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_20C5A01CC();
  v63 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v54 - v9;
  v10 = sub_20C59E57C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C59D4CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  swift_beginAccess();
  v61 = a2;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v56 = v7;
  v57 = v3;
  v67 = v22;
  v24 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
  v25 = result;
  swift_beginAccess();
  v26 = v25 + v24;
  v27 = v67;
  (*(v15 + 16))(v20, v26, v14);

  v62 = v15;
  v28 = *(v15 + 32);
  v65 = v14;
  v55 = v28;
  v28(v27, v20, v14);
  sub_20C59FA3C();
  v29 = sub_20C59E53C();
  v58 = *(v11 + 8);
  v58(v13, v10);
  if (*(v29 + 16))
  {
    v68[0] = sub_20C59D48C();
    v68[1] = v30;
    MEMORY[0x28223BE20](v68[0]);
    *(&v54 - 2) = v68;
    v31 = sub_20C4FEE3C(sub_20C4C5AF0, (&v54 - 4), v29);

    if ((v31 & 1) == 0)
    {
      v32 = v59;
      sub_20C59FE7C();
      v33 = sub_20C5A01BC();
      v34 = sub_20C5A08AC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_20C472000, v33, v34, "PlaybackSync: Dropping sync update because of recipient mismatch", v35, 2u);
        MEMORY[0x20F2FFF90](v35, -1, -1);
      }

      (*(v63 + 8))(v32, v57);
      return (*(v62 + 8))(v67, v65);
    }
  }

  else
  {
  }

  sub_20C59FA3C();
  sub_20C59E54C();
  v59 = v10;
  v58(v13, v10);
  v36 = v64;
  sub_20C59D47C();

  v37 = v62;
  v38 = v65;
  if ((*(v62 + 48))(v36, 1, v65) == 1)
  {
    sub_20C477B50(v36, &qword_27C7C4588);
    v39 = v56;
    sub_20C59FE7C();
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A089C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v37;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20C472000, v40, v41, "PlaybackSync: No sender on message", v43, 2u);
      MEMORY[0x20F2FFF90](v43, -1, -1);

      (*(v63 + 8))(v39, v57);
      return (*(v42 + 8))(v67, v65);
    }

    else
    {

      (*(v63 + 8))(v39, v57);
      return (*(v37 + 8))(v67, v65);
    }
  }

  else
  {
    v44 = v60;
    v55(v60, v36, v38);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      swift_beginAccess();
      v47 = *(v46 + 32);
      sub_20C487984(v47);

      if (v47)
      {
        sub_20C59FA3C();
        v48 = sub_20C59E55C();
        v50 = v49;
        v58(v13, v59);
        v47(v48, v50, v44);
        sub_20C4A7C7C(v48, v50);
        sub_20C47E6BC(v47);
      }

      v51 = *(v62 + 8);
      v52 = v65;
      v51(v44, v65);
      return (v51)(v67, v52);
    }

    else
    {
      v53 = *(v37 + 8);
      v53(v44, v38);
      return (v53)(v67, v38);
    }
  }
}

uint64_t sub_20C4C2C80()
{
  v0 = sub_20C59E8FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59FD5C();
    sub_20C4C2F54(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20C4C2D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4B40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_20C59E8FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59EADC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20C477B50(v2, &qword_27C7C4B40);
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C4C2F54(v6);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20C4C2F54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v80 - v4;
  v5 = sub_20C59D4CC();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v92 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v80 - v8;
  v88 = sub_20C59E30C();
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C59E8FC();
  v11 = *(v84 - 1);
  v12 = MEMORY[0x28223BE20](v84);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v80 - v15;
  v17 = sub_20C5A01CC();
  v85 = *(v17 - 8);
  v86 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  v83 = v1;
  v90 = a1;
  if (v23 == sub_20C59E8EC() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_20C5A0E9C();

    if ((v26 & 1) == 0)
    {
      sub_20C59FE7C();
      v70 = v84;
      (*(v11 + 16))(v14, v90, v84);
      v71 = sub_20C5A01BC();
      v72 = sub_20C5A08AC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v95[0] = v74;
        *v73 = 136315138;
        sub_20C4C58D0();
        v75 = sub_20C5A0E6C();
        v76 = v70;
        v78 = v77;
        (*(v11 + 8))(v14, v76);
        v79 = sub_20C479640(v75, v78, v95);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_20C472000, v71, v72, "PlaybackSync: Ignoring identities update because of session mismatch %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x20F2FFF90](v74, -1, -1);
        MEMORY[0x20F2FFF90](v73, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v14, v70);
      }

      return (*(v85 + 8))(v20, v86);
    }
  }

  sub_20C59FE7C();
  v27 = v84;
  (*(v11 + 16))(v16, v90, v84);
  v28 = sub_20C5A01BC();
  v29 = sub_20C5A08AC();
  v30 = os_log_type_enabled(v28, v29);
  v82 = v9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v95[0] = v32;
    *v31 = 136315138;
    sub_20C4C58D0();
    v33 = sub_20C5A0E6C();
    v35 = v34;
    (*(v11 + 8))(v16, v27);
    v36 = sub_20C479640(v33, v35, v95);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_20C472000, v28, v29, "PlaybackSync: received identities updated %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x20F2FFF90](v32, -1, -1);
    MEMORY[0x20F2FFF90](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v27);
  }

  (*(v85 + 8))(v22, v86);
  v37 = sub_20C59E8DC();
  v38 = v37 + 56;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 56);
  v42 = (v39 + 63) >> 6;
  v85 = v91 + 8;
  v86 = v91 + 16;
  v43 = (v93 + 48);
  v81 = (v93 + 32);
  v90 = v37;

  v45 = 0;
  v84 = MEMORY[0x277D84F90];
  v46 = v87;
  v47 = v88;
  while (1)
  {
    v48 = v45;
    if (!v41)
    {
      break;
    }

LABEL_15:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v91;
    (*(v91 + 16))(v46, *(v90 + 48) + *(v91 + 72) * (v49 | (v45 << 6)), v47);
    sub_20C59E2FC();
    v51 = v89;
    sub_20C59D47C();

    (*(v50 + 8))(v46, v47);
    if ((*v43)(v51, 1, v94) == 1)
    {
      result = sub_20C477B50(v51, &qword_27C7C4588);
    }

    else
    {
      v52 = *v81;
      (*v81)(v82, v51, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_20C4ECA44(0, v84[2] + 1, 1, v84);
      }

      v54 = v84[2];
      v53 = v84[3];
      if (v54 >= v53 >> 1)
      {
        v84 = sub_20C4ECA44(v53 > 1, v54 + 1, 1, v84);
      }

      v55 = v84;
      v84[2] = v54 + 1;
      result = v52(&v55[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54], v82, v94);
    }
  }

  while (1)
  {
    v45 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v45 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v45);
    ++v48;
    if (v41)
    {
      goto LABEL_15;
    }
  }

  v56 = sub_20C5580E0(v84);

  v57 = v83;
  v90 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_participantIdentifiers;
  v91 = v56;
  v58 = *(v83 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_participantIdentifiers);
  if (*(v56 + 16) <= *(v58 + 16) >> 3)
  {
    v95[0] = *(v83 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_participantIdentifiers);

    sub_20C553FC4(v56);
    v59 = v95[0];
  }

  else
  {

    v59 = sub_20C554308(v56, v58);
  }

  v60 = 1 << *(v59 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v59 + 56);

  result = swift_beginAccess();
  v63 = 0;
  v64 = (v60 + 63) >> 6;
  v65 = v92;
  v66 = (v93 + 8);
  while (v62)
  {
LABEL_34:
    (*(v93 + 16))(v65, *(v59 + 48) + *(v93 + 72) * (__clz(__rbit64(v62)) | (v63 << 6)), v94);
    v68 = v57;
    v69 = *(v57 + 64);
    if (v69)
    {

      v69(v92);
      v65 = v92;
      sub_20C47E6BC(v69);
    }

    v62 &= v62 - 1;
    result = (*v66)(v65, v94);
    v57 = v68;
  }

  while (1)
  {
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v67 >= v64)
    {

      *(v57 + v90) = v91;
    }

    v62 = *(v59 + 56 + 8 * v67);
    ++v63;
    if (v62)
    {
      v63 = v67;
      goto LABEL_34;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t *MediaPlayerSyncLink.deinit()
{

  sub_20C47E6BC(v0[4]);
  sub_20C47E6BC(v0[6]);
  sub_20C47E6BC(v0[8]);
  v1 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
  v2 = sub_20C59D4CC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionIdentifier, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_sessionClient);

  return v0;
}

uint64_t MediaPlayerSyncLink.__deallocating_deinit()
{
  MediaPlayerSyncLink.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MediaPlayerSyncLink.sendData(_:to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v50 = a1;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = sub_20C59D4CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_20C59E57C();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v49 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 24);
  v48 = *(v4 + 16);
  v19 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
  swift_beginAccess();
  v20 = v4 + v19;
  v21 = v44;
  v56 = *(v10 + 16);
  v57 = v10 + 16;
  v56(v15, v20, v9);
  v47 = v18;

  v22 = sub_20C59D48C();
  v45 = v23;
  v46 = v22;
  v24 = *(v10 + 8);
  v58 = v9;
  v54 = v24;
  v55 = v10 + 8;
  v24(v15, v9);
  v25 = *(v21 + 16);
  if (v25)
  {
    v40 = v4;
    v41 = v8;
    v42 = v6;
    v43 = v5;
    v59 = MEMORY[0x277D84F90];
    sub_20C4C47CC(0, v25, 0);
    v26 = v59;
    v27 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v28 = *(v10 + 72);
    do
    {
      v29 = v58;
      v56(v13, v27, v58);
      v30 = sub_20C59D48C();
      v32 = v31;
      v54(v13, v29);
      v59 = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_20C4C47CC((v33 > 1), v34 + 1, 1);
        v26 = v59;
      }

      *(v26 + 16) = v34 + 1;
      v35 = v26 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v27 += v28;
      --v25;
    }

    while (v25);
    v6 = v42;
    v5 = v43;
    v8 = v41;
    v4 = v40;
  }

  sub_20C4BFD7C(v50, v51);
  v36 = v49;
  sub_20C59E56C();
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient), *(v4 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient + 24));
  sub_20C59F31C();
  v37 = sub_20C59EABC();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_20C4BFC70, v38);

  (*(v6 + 8))(v8, v5);
  return (*(v52 + 8))(v36, v53);
}

Swift::Void __swiftcall MediaPlayerSyncLink.sendCommand(participantIdentifier:command:rate:)(Swift::String_optional participantIdentifier, Swift::String command, Swift::Float rate)
{
  v4 = v3;
  v20 = command;
  object = participantIdentifier.value._object;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v19 - v6;
  v8 = sub_20C59D4CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C59E93C();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    v15 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
    swift_beginAccess();
    (*(v9 + 16))(v11, v4 + v15, v8);
    sub_20C59D48C();
    (*(v9 + 8))(v11, v8);
  }

  sub_20C59E92C();
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient), *(v4 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient + 24));
  sub_20C59F32C();
  v16 = v22;
  v17 = sub_20C59EABC();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_20C4C06AC, v18);

  (*(v19 + 8))(v7, v16);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_20C4C425C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_20C487984(v2);
  return v2;
}

uint64_t sub_20C4C42B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 32);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return sub_20C47E6BC(v6);
}

uint64_t sub_20C4C435C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  sub_20C487984(v2);
  return v2;
}

uint64_t sub_20C4C43B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 48);
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return sub_20C47E6BC(v6);
}

uint64_t sub_20C4C445C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  sub_20C487984(v2);
  return v2;
}

uint64_t sub_20C4C44B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 64);
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  return sub_20C47E6BC(v6);
}

uint64_t sub_20C4C455C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_20C4C4624@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_20C59D4CC();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t sub_20C4C46B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  v8 = sub_20C59D4CC();
  (*(*(v8 - 8) + 40))(v6 + v7, a1, v8);
  return swift_endAccess();
}

char *sub_20C4C47AC(char *a1, int64_t a2, char a3)
{
  result = sub_20C551EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C4C47CC(char *a1, int64_t a2, char a3)
{
  result = sub_20C5521FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20C4C47EC(size_t a1, int64_t a2, char a3)
{
  result = sub_20C552308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20C4C480C(size_t a1, int64_t a2, char a3)
{
  result = sub_20C551FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C4C482C(char *a1, int64_t a2, char a3)
{
  result = sub_20C55232C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C4C484C(char *a1, int64_t a2, char a3)
{
  result = sub_20C552620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20C4C486C(void *a1, int64_t a2, char a3)
{
  result = sub_20C552748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_20C4C488C(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_20C4C48D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v80 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v69 = v12;
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v74 = &v60 - v15;
  v67 = sub_20C59E2EC();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C59E30C();
  v17 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v64 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - v23;
  v25 = sub_20C59D4CC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v62 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v60 = &v60 - v29;
  *(v6 + 80) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 32) = 0u;
  v30 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
  sub_20C59D4BC();
  v61 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionIdentifier;
  sub_20C59D4BC();
  *(v6 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_participantIdentifiers) = MEMORY[0x277D84FA0];
  v77 = a2;
  sub_20C477580(a2, v6 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_multiUserClient);
  v78 = a3;
  sub_20C477580(a3, v6 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_sessionClient);
  v31 = (v6 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_eventHub);
  v32 = v79;
  *v31 = a4;
  v31[1] = v32;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v68 = a4;
  *(v6 + OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_eventSubscription) = sub_20C59F75C();
  sub_20C59E1AC();
  sub_20C59E2FC();
  (*(v17 + 8))(v19, v63);
  sub_20C59D47C();

  v33 = *(v26 + 48);
  if (v33(v24, 1, v25) == 1)
  {
    sub_20C477B50(v24, &qword_27C7C4588);
  }

  else
  {
    v34 = v60;
    (*(v26 + 32))(v60, v24, v25);
    swift_beginAccess();
    (*(v26 + 40))(v6 + v30, v34, v25);
    swift_endAccess();
  }

  sub_20C59E19C();
  v35 = v64;
  sub_20C59D47C();

  if (v33(v35, 1, v25) == 1)
  {
    sub_20C477B50(v35, &qword_27C7C4588);
  }

  else
  {
    v36 = v62;
    (*(v26 + 32))(v62, v35, v25);
    v37 = v61;
    swift_beginAccess();
    (*(v26 + 40))(v6 + v37, v36, v25);
    swift_endAccess();
  }

  v38 = v65;
  sub_20C59E1DC();
  v39 = sub_20C59E2CC();
  v41 = v40;
  (*(v66 + 8))(v38, v67);
  *(v6 + 16) = v39;
  *(v6 + 24) = v41;
  v42 = sub_20C59E1BC();
  swift_beginAccess();
  *(v6 + 80) = v42 & 1;
  swift_getObjectType();
  sub_20C59FCCC();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  sub_20C59FA4C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  sub_20C59FD7C();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  v43 = v78;
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v44 = v71;
  sub_20C59F29C();
  v45 = swift_allocObject();
  swift_weakInit();

  v46 = swift_allocObject();
  *(v46 + 16) = sub_20C4C5A10;
  *(v46 + 24) = v45;
  v48 = v72;
  v47 = v73;
  v49 = v70;
  (*(v72 + 16))(v70, v44, v73);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v51 = (v69 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v50, v49, v47);
  v53 = (v52 + v51);
  *v53 = sub_20C4C5A2C;
  v53[1] = v46;
  v54 = v74;
  sub_20C59EA9C();
  (*(v48 + 8))(v44, v47);
  v55 = v76;
  v56 = sub_20C59EABC();
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  v56(sub_20C4C06AC, v57);

  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  v58 = sub_20C59E1EC();
  (*(*(v58 - 8) + 8))(v80, v58);
  (*(v75 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v6;
}

uint64_t type metadata accessor for MediaPlayerSyncLink()
{
  result = qword_27C7C4B28;
  if (!qword_27C7C4B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C4C54FC()
{
  result = sub_20C59D4CC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20C4C58D0()
{
  result = qword_27C7C4B38;
  if (!qword_27C7C4B38)
  {
    sub_20C59E8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4B38);
  }

  return result;
}

uint64_t sub_20C4C5988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t sub_20C4C5A34(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBE30(a1, a2, v2 + v6, v8, v9);
}

uint64_t SessionStartDateUpdated.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59D46C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionStartDateUpdated.init(startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59D46C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static SessionStartDateUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SessionMediaMomentsPrefetcher.__allocating_init(artworkImageLoader:catalogWorkout:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_hasBegunPrefetch) = 0;
  sub_20C477580(a1, v8 + 16);
  v9 = OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_catalogWorkout;
  v10 = sub_20C59DE3C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8 + v9, a2, v10);
  v12 = (v8 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_eventHub);
  *v12 = a3;
  v12[1] = a4;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = sub_20C59F75C();
  (*(v11 + 8))(a2, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v8 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_subscriptionToken) = v13;
  return v8;
}

uint64_t SessionMediaMomentsPrefetcher.init(artworkImageLoader:catalogWorkout:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_hasBegunPrefetch) = 0;
  sub_20C477580(a1, v5 + 16);
  v10 = OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_catalogWorkout;
  v11 = sub_20C59DE3C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a2, v11);
  v13 = (v5 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_eventHub);
  *v13 = a3;
  v13[1] = a4;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_20C59F75C();
  (*(v12 + 8))(a2, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v5 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_subscriptionToken) = v14;
  return v5;
}

uint64_t sub_20C4C5EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  sub_20C47E6BC(v3);
  swift_getObjectType();
  sub_20C59F5AC();
  swift_allocObject();
  swift_weakInit();
  sub_20C59F61C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_20C4C5FF8()
{
  v0 = sub_20C59ECFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59F58C();
    sub_20C4C610C();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20C4C610C()
{
  v1 = v0;
  v2 = sub_20C5A020C();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C5A023C();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A025C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_hasBegunPrefetch;
  if ((*(v0 + OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_hasBegunPrefetch) & 1) == 0)
  {
    result = sub_20C59ECDC();
    if ((result & 0x100000000) != 0)
    {
      v17 = sub_20C59ECCC();
      result = sub_20C59ECCC();
      if (v17 == result)
      {
        v18 = *(sub_20C59DD8C() + 16);

        if (v18)
        {
          if (*(v1 + 56))
          {
            v35 = *(v1 + 56);

            v20 = v35(v19);
            v32 = v21;
            v33 = v20;
            LODWORD(v34) = v22;
            result = sub_20C47E6BC(v35);
            if ((v34 & 1) == 0 && (v33 & 0x7FFFFFFFFFFFFFFFLL) != 0 && (v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              *(v1 + v16) = 1;
              sub_20C4B3570();
              v31 = sub_20C5A08EC();
              sub_20C5A024C();
              sub_20C5A027C();
              v23 = *(v9 + 8);
              v34 = v9 + 8;
              v35 = v23;
              (v23)(v12, v8);
              v24 = swift_allocObject();
              swift_weakInit();
              v25 = swift_allocObject();
              v26 = v32;
              v27 = v33;
              v25[2] = v24;
              v25[3] = v27;
              v25[4] = v26;
              aBlock[4] = sub_20C4C8ED4;
              aBlock[5] = v25;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_20C4F8F74;
              aBlock[3] = &block_descriptor_6;
              v28 = _Block_copy(aBlock);

              sub_20C5A022C();
              aBlock[0] = MEMORY[0x277D84F90];
              v33 = sub_20C4959D8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
              sub_20C47C934(&qword_2810F3DC0, &unk_27C7C60D0);
              v29 = v38;
              sub_20C5A0AEC();
              v30 = v31;
              MEMORY[0x20F2FED70](v15, v7, v4, v28);
              _Block_release(v28);

              (*(v37 + 8))(v4, v29);
              (*(v36 + 8))(v7, v5);
              return (v35)(v15, v8);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20C4C657C(double a1, double a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C4C65EC(a1, a2);
  }

  return result;
}

uint64_t sub_20C4C65EC(double a1, double a2)
{
  v97 = sub_20C59EA6C();
  v102 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v98 = *(v95 - 8);
  v5 = MEMORY[0x28223BE20](v95);
  v94 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x28223BE20](v5);
  v93 = v77 - v7;
  v104 = sub_20C59D86C();
  v8 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v10 = *(v105 - 8);
  v11 = MEMORY[0x28223BE20](v105);
  v92 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v77 - v14;
  v17 = v16;
  MEMORY[0x28223BE20](v13);
  v106 = v77 - v18;
  v19 = sub_20C5A01CC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A08AC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20C472000, v23, v24, "[SessionMediaMomentsPrefetcher] prefetching media moments", v25, 2u);
    MEMORY[0x20F2FFF90](v25, -1, -1);
  }

  (*(v20 + 8))(v22, v19);
  v26 = sub_20C59DD8C();
  v27 = v26;
  v28 = *(v26 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v30 = sub_20C4AB390(*(v26 + 16), 0);
    v100 = sub_20C4AE1CC(v107, &v30[(*(v8 + 80) + 32) & ~*(v8 + 80)], v28, v27);
    v91 = v107[2];
    v89 = v107[3];
    v88 = v107[4];

    sub_20C483B94();
    if (v100 == v28)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v30 = v29;
LABEL_7:
  v107[0] = v30;
  sub_20C4C7364(v107);

  v31 = v107[0];
  v32 = v107[0][2];
  if (v32)
  {
    v107[0] = v29;
    sub_20C4C47EC(0, v32, 0);
    v34 = *(v8 + 16);
    v33 = v8 + 16;
    v89 = v34;
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v77[1] = v31;
    v36 = v31 + v35;
    v37 = v107[0];
    v88 = 0x800000020C5AC1B0;
    v87 = *(v33 + 56);
    v86 = (v102 + 1);
    v85 = v98 + 16;
    v84 = v101 + 7;
    v83 = v98 + 32;
    v82 = v98 + 8;
    v81 = v10 + 16;
    v80 = v17 + 7;
    v38 = v10 + 32;
    v79 = v10 + 8;
    v91 = v33;
    v78 = (v33 - 8);
    v90 = v15;
    do
    {
      v101 = v32;
      v102 = v37;
      v100 = v36;
      v89();
      v40 = v99[5];
      v39 = v99[6];
      __swift_project_boxed_opaque_existential_1(v99 + 2, v40);
      v41 = v96;
      sub_20C59D84C();
      v42 = v93;
      (*(v39 + 24))(v41, v40, v39, a1, a2);
      (*v86)(v41, v97);
      v43 = swift_allocObject();
      *(v43 + 16) = nullsub_1;
      *(v43 + 24) = 0;
      v44 = v98;
      v46 = v94;
      v45 = v95;
      (*(v98 + 16))(v94, v42, v95);
      v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v48 = (v84 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      (*(v44 + 32))(v49 + v47, v46, v45);
      v50 = (v49 + v48);
      *v50 = sub_20C4C8D68;
      v50[1] = v43;
      v51 = v106;
      sub_20C59EA9C();
      (*(v44 + 8))(v42, v45);
      v52 = swift_allocObject();
      v52[2] = 0xD000000000000030;
      v52[3] = v88;
      v52[4] = 64;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_20C4C8D98;
      *(v53 + 24) = v52;
      v54 = v38;
      v55 = v92;
      v56 = v51;
      v57 = v105;
      (*(v10 + 16))(v92, v56, v105);
      v58 = *(v10 + 80);
      v59 = (v58 + 16) & ~v58;
      v60 = v10;
      v61 = v57;
      v62 = (v80 + v59) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v64 = *(v60 + 32);
      v65 = v55;
      v38 = v54;
      v64(v63 + v59, v65, v61);
      v66 = (v63 + v62);
      v67 = v90;
      v68 = v61;
      v10 = v60;
      v37 = v102;
      *v66 = sub_20C4C8DB8;
      v66[1] = v53;
      sub_20C59EA9C();
      (*(v10 + 8))(v106, v68);
      (*v78)(v103, v104);
      v107[0] = v37;
      v70 = v37[2];
      v69 = v37[3];
      if (v70 >= v69 >> 1)
      {
        sub_20C4C47EC(v69 > 1, v70 + 1, 1);
        v37 = v107[0];
      }

      v37[2] = v70 + 1;
      v64(v37 + ((v58 + 32) & ~v58) + *(v10 + 72) * v70, v67, v105);
      v36 = (v100 + v87);
      v32 = v101 - 1;
    }

    while (v101 != 1);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v107[0] = v37;
  sub_20C4B3570();
  v71 = sub_20C5A08EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4D60);
  sub_20C47C934(&qword_2810F3DD0, &qword_27C7C4D60);
  v72 = v106;
  sub_20C59EA8C();

  v73 = v105;
  v74 = sub_20C59EABC();
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  v74(sub_20C4907D4, v75);

  return (*(v10 + 8))(v72, v73);
}

uint64_t SessionMediaMomentsPrefetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_20C47E6BC(*(v0 + 56));
  v1 = OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_catalogWorkout;
  v2 = sub_20C59DE3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SessionMediaMomentsPrefetcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_20C47E6BC(v0[7]);
  v1 = OBJC_IVAR____TtC12SeymourMedia29SessionMediaMomentsPrefetcher_catalogWorkout;
  v2 = sub_20C59DE3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SessionMediaMomentsPrefetcher()
{
  result = qword_27C7C4D50;
  if (!qword_27C7C4D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C4C7250()
{
  result = sub_20C59DE3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C4C7364(void **a1)
{
  v2 = *(sub_20C59D86C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20C557D30(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20C4C740C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20C4C740C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C5A0E4C();
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
        sub_20C59D86C();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59D86C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4C77D8(v8, v9, a1, v4);
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
    return sub_20C4C7538(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20C4C7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C59D86C();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_20C59D85C();
      v28 = v27;
      sub_20C59D85C();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v28 >= v30)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C4C77D8(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_20C59D86C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_20C553FB0(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_20C4C81E8(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_20C553FB0(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_20C553F24(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_20C59D85C();
      v31 = v30;
      sub_20C59D85C();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_20C59D85C();
        v42 = v41;
        sub_20C59D85C();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v31 < v33 == v42 >= v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v31 < v33)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_20C4EC940(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_20C4EC940((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
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

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_20C4C81E8(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_20C553FB0(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_20C553F24(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_20C59D85C();
    v109 = v108;
    sub_20C59D85C();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v109 >= v111)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
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

uint64_t sub_20C4C81E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_20C59D86C();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_20C59D85C();
          v49 = v48;
          sub_20C59D85C();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v49 < v51)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_20C59D85C();
        v29 = v28;
        sub_20C59D85C();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v29 >= v31)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_20C51E748(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_20C4C8788(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a4;
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE2C();
  v11 = a1;

  v12 = sub_20C5A01BC();
  v13 = sub_20C5A089C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[1] = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[0] = v7;
    v17 = v16;
    v27 = v16;
    *v15 = 136446722;
    swift_getErrorValue();
    v18 = MEMORY[0x20F2FF3F0](v25, v26);
    v20 = sub_20C479640(v18, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_20C479640(v23, a3, &v27);
    *(v15 + 22) = 2050;
    *(v15 + 24) = v24;
    _os_log_impl(&dword_20C472000, v12, v13, "Caught %{public}s at %{public}s:%{public}lu", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v17, -1, -1);
    MEMORY[0x20F2FFF90](v15, -1, -1);

    return (*(v8 + 8))(v10, v22[0]);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_20C4C89D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_20C59EA9C();
}

uint64_t sub_20C4C8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v9 = sub_20C59EABC();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_20C4C8EB0, v10);
}

uint64_t sub_20C4C8B48(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_20C49B78C(v6, 0);
}

uint64_t sub_20C4C8BDC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_20C59EABC();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_20C4C00E8, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t sub_20C4C8DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C4C8EE8(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0x7075727265746E69;
    }

    if (a1 == 5)
    {
      return 1701736302;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return 0x756F72676B636162;
    }

    if (a1 == 3)
    {
      return 0x726F727265;
    }
  }

  sub_20C5A0C0C();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x20F2FE9A0](v3, v4);

  return 0xD000000000000014;
}

uint64_t sub_20C4C9020()
{
  v1 = v0;
  v2 = sub_20C59E6EC();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E30);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FD8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E20);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode;
  swift_beginAccess();
  v19 = *MEMORY[0x277D53C10];
  v20 = sub_20C59EC9C();
  (*(*(v20 - 8) + 104))(v17, v19, v20);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 56))(v17, 0, 1, v6);
  v21 = *(v10 + 56);
  v22 = v1 + v18;
  v23 = v1;
  sub_20C4775E4(v22, v12, &qword_27C7C4E20);
  sub_20C4775E4(v17, &v12[v21], &qword_27C7C4E20);
  v24 = *(v7 + 48);
  if (v24(v12, 1, v6) == 1)
  {
    sub_20C477B50(v17, &qword_27C7C4E20);
    v25 = v24(&v12[v21], 1, v6);
    v26 = v47;
    if (v25 == 1)
    {
      sub_20C477B50(v12, &qword_27C7C4E20);
      v27 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20C4775E4(v12, v45, &qword_27C7C4E20);
  if (v24(&v12[v21], 1, v6) == 1)
  {
    sub_20C477B50(v17, &qword_27C7C4E20);
    sub_20C477B50(v45, &qword_27C7C4F00);
    v26 = v47;
LABEL_6:
    sub_20C477B50(v12, &qword_27C7C4FD8);
    v27 = 0;
    goto LABEL_8;
  }

  v28 = v43;
  sub_20C4E1800(&v12[v21], v43, &qword_27C7C4F00);
  v29 = MEMORY[0x277D53C20];
  sub_20C4E2084(&qword_27C7C4F88, MEMORY[0x277D53C20]);
  sub_20C4E2084(&qword_27C7C4F50, v29);
  v30 = v45;
  v27 = sub_20C59DA6C();
  sub_20C477B50(v28, &qword_27C7C4F00);
  sub_20C477B50(v17, &qword_27C7C4E20);
  sub_20C477B50(v30, &qword_27C7C4F00);
  sub_20C477B50(v12, &qword_27C7C4E20);
  v26 = v47;
LABEL_8:
  v31 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection;
  swift_beginAccess();
  v32 = v23 + v31;
  v33 = v46;
  sub_20C4775E4(v32, v46, &qword_27C7C4E30);
  v34 = v48;
  if ((*(v26 + 48))(v33, 1, v48))
  {
    sub_20C477B50(v33, &qword_27C7C4E30);
    v35 = 0;
  }

  else
  {
    v36 = v44;
    (*(v26 + 16))(v44, v33, v34);
    sub_20C477B50(v33, &qword_27C7C4E30);
    v37 = sub_20C59E6DC();
    v39 = v38;
    v41 = v40;
    (*(v26 + 8))(v36, v34);
    v51 = v37;
    v52 = v39;
    v53 = v41 & 1;
    v49 = xmmword_20C5A58D0;
    v50 = 1;
    sub_20C4E1868();
    sub_20C4E18BC();
    v35 = sub_20C59DA6C();
    sub_20C481884(v51, v52, v53);
  }

  return (v27 | v35) & 1;
}

uint64_t sub_20C4C96BC()
{
  v1 = sub_20C59E73C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection;
  swift_beginAccess();
  sub_20C4775E4(v0 + v8, v7, &qword_27C7C4688);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20C477B50(v7, &qword_27C7C4688);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_20C477B50(v7, &qword_27C7C4688);
    v10 = sub_20C59E72C();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    v14 = v10;
    v15 = v12 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FD0);
    sub_20C59DA5C();
    return *(&off_277DA2CC8 + v13[7]);
  }
}

char *sub_20C4C98D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v165 = &v139 - v3;
  v4 = sub_20C59DB1C();
  v166 = *(v4 - 8);
  v167 = v4;
  MEMORY[0x28223BE20](v4);
  v163 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20C59DF8C();
  v157 = *(v148 - 8);
  v6 = MEMORY[0x28223BE20](v148);
  v146 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v147 = &v139 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v139 - v10;
  v154 = sub_20C59E7EC();
  v153 = *(v154 - 8);
  v11 = MEMORY[0x28223BE20](v154);
  v142 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v139 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DE0);
  MEMORY[0x28223BE20](v14 - 8);
  v152 = &v139 - v15;
  v16 = sub_20C59EA0C();
  MEMORY[0x28223BE20](v16 - 8);
  v160 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C59E73C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v139 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v139 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FC0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v155 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v162 = &v139 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v139 - v33;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FC8);
  v164 = *(v168 - 8);
  v35 = MEMORY[0x28223BE20](v168);
  v144 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v151 = &v139 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v139 - v39;
  v41 = sub_20C59E98C();
  v42 = *(v41 - 8);
  v170 = v41;
  v171 = v42;
  v43 = MEMORY[0x28223BE20](v41);
  v159 = &v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v158 = &v139 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v145 = &v139 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v143 = &v139 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v150 = &v139 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v140 = &v139 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v149 = &v139 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v139 - v57;
  v59 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection;
  swift_beginAccess();
  v169 = v1;
  sub_20C4775E4(v1 + v59, v27, &qword_27C7C4688);
  v60 = 1;
  if ((*(v19 + 48))(v27, 1, v18) != 1)
  {
    (*(v19 + 32))(v24, v27, v18);
    (*(v19 + 16))(v22, v24, v18);
    v61 = sub_20C59E72C();
    v62 = 1;
    if ((v63 & 1) != 0 && v61 == 1)
    {
      sub_20C59E9FC();
      sub_20C59E97C();
      v62 = 0;
    }

    v64 = *(v19 + 8);
    v64(v22, v18);
    (*(v171 + 56))(v34, v62, 1, v170);
    v64(v24, v18);
    v60 = 0;
  }

  v65 = v164;
  v66 = v168;
  v161 = v164[7];
  v161(v34, v60, 1, v168);
  v67 = v65[6];
  if (v67(v34, 1, v66) == 1)
  {
    v68 = v170;
    (*(v171 + 56))(v40, 1, 1, v170);
    if (v67(v34, 1, v66) != 1)
    {
      sub_20C477B50(v34, &qword_27C7C4FC0);
    }
  }

  else
  {
    sub_20C4E1800(v34, v40, &qword_27C7C4FC8);
    v68 = v170;
  }

  v69 = v171;
  v71 = v171 + 48;
  v70 = *(v171 + 48);
  if ((v70)(v40, 1, v68) == 1)
  {
    v164 = v70;
    sub_20C477B50(v40, &qword_27C7C4FC8);
    v72 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection;
    v73 = v169;
    swift_beginAccess();
    v74 = v152;
    sub_20C4775E4(v73 + v72, v152, &qword_27C7C4DE0);
    v75 = v153;
    v76 = 1;
    v77 = v154;
    if ((*(v153 + 48))(v74, 1, v154) != 1)
    {
      v78 = v141;
      (*(v75 + 32))(v141, v74, v77);
      v79 = v142;
      (*(v75 + 16))(v142, v78, v77);
      sub_20C593C48(v79, v162);
      (*(v75 + 8))(v78, v77);
      v76 = 0;
    }

    v80 = v162;
    v81 = v76;
    v82 = v168;
    v161(v162, v81, 1, v168);
    v83 = v67(v80, 1, v82);
    v84 = v157;
    v85 = v156;
    v86 = v155;
    if (v83 == 1)
    {
      v87 = *(v171 + 56);
      v154 = v71;
      v88 = v67;
      v89 = v156;
      v90 = v157;
      v91 = v155;
      v92 = v151;
      v87(v151, 1, 1, v68);
      v93 = v82;
      v94 = v92;
      v86 = v91;
      v84 = v90;
      v85 = v89;
      v67 = v88;
      if (v88(v80, 1, v93) != 1)
      {
        sub_20C477B50(v80, &qword_27C7C4FC0);
      }
    }

    else
    {
      v94 = v151;
      sub_20C4E1800(v80, v151, &qword_27C7C4FC8);
    }

    if ((v164)(v94, 1, v68) == 1)
    {
      sub_20C477B50(v94, &qword_27C7C4FC8);
      v106 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric;
      v107 = v169;
      swift_beginAccess();
      sub_20C4775E4(v107 + v106, v85, &qword_27C7C4DF0);
      v108 = 1;
      v109 = v148;
      if ((*(v84 + 48))(v85, 1, v148) != 1)
      {
        v110 = v147;
        (*(v84 + 32))(v147, v85, v109);
        (*(v84 + 16))(v146, v110, v109);
        v111 = sub_20C59DF6C();
        if ((v111 & 0x100000000) != 0 && (v111 & 1) == 0)
        {
          sub_20C59E9FC();
          sub_20C59E97C();
          v112 = 0;
        }

        else
        {
          v112 = 1;
        }

        v121 = *(v84 + 8);
        v122 = v148;
        v121(v146, v148);
        (*(v171 + 56))(v86, v112, 1, v68);
        v121(v147, v122);
        v108 = 0;
      }

      v123 = v168;
      v161(v86, v108, 1, v168);
      if (v67(v86, 1, v123) == 1)
      {
        v124 = v144;
        (*(v171 + 56))(v144, 1, 1, v68);
        v125 = v67(v86, 1, v123);
        v102 = v166;
        if (v125 != 1)
        {
          sub_20C477B50(v86, &qword_27C7C4FC0);
        }
      }

      else
      {
        v124 = v144;
        sub_20C4E1800(v86, v144, &qword_27C7C4FC8);
        v102 = v166;
      }

      if ((v164)(v124, 1, v68) == 1)
      {
        sub_20C477B50(v124, &qword_27C7C4FC8);
        v98 = MEMORY[0x277D84F90];
        v105 = v167;
        v101 = v171;
        goto LABEL_40;
      }

      v101 = v171;
      v113 = *(v171 + 32);
      v126 = v143;
      v113(v143, v124, v68);
      (*(v101 + 16))(v145, v126, v68);
      v98 = sub_20C4ECA6C(0, 1, 1, MEMORY[0x277D84F90]);
      v128 = *(v98 + 2);
      v127 = *(v98 + 3);
      if (v128 >= v127 >> 1)
      {
        v98 = sub_20C4ECA6C(v127 > 1, v128 + 1, 1, v98);
      }

      v105 = v167;
      v118 = v170;
      (*(v101 + 8))(v143, v170);
      *(v98 + 2) = v128 + 1;
      v68 = v118;
      v119 = &v98[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v128];
      v120 = &v172;
    }

    else
    {
      v101 = v171;
      v113 = *(v171 + 32);
      v114 = v140;
      v113(v140, v94, v68);
      (*(v101 + 16))(v150, v114, v68);
      v98 = sub_20C4ECA6C(0, 1, 1, MEMORY[0x277D84F90]);
      v116 = *(v98 + 2);
      v115 = *(v98 + 3);
      if (v116 >= v115 >> 1)
      {
        v98 = sub_20C4ECA6C(v115 > 1, v116 + 1, 1, v98);
      }

      v102 = v166;
      v105 = v167;
      v117 = v114;
      v118 = v170;
      (*(v101 + 8))(v117, v170);
      *(v98 + 2) = v116 + 1;
      v68 = v118;
      v119 = &v98[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v116];
      v120 = &v173;
    }

    v113(v119, *(v120 - 32), v118);
  }

  else
  {
    v95 = v68;
    v96 = *(v69 + 32);
    v96(v58, v40, v95);
    v97 = v149;
    (*(v69 + 16))(v149, v58, v95);
    v98 = sub_20C4ECA6C(0, 1, 1, MEMORY[0x277D84F90]);
    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    v101 = v69;
    if (v100 >= v99 >> 1)
    {
      v98 = sub_20C4ECA6C(v99 > 1, v100 + 1, 1, v98);
    }

    v102 = v166;
    v103 = v58;
    v104 = v170;
    (*(v69 + 8))(v103, v170);
    *(v98 + 2) = v100 + 1;
    v96(&v98[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v100], v97, v104);
    v68 = v104;
    v105 = v167;
  }

LABEL_40:
  v129 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric;
  v130 = v169;
  swift_beginAccess();
  v131 = v130 + v129;
  v132 = v165;
  sub_20C4775E4(v131, v165, &qword_27C7C4DC0);
  if ((*(v102 + 48))(v132, 1, v105) == 1)
  {
    sub_20C477B50(v132, &qword_27C7C4DC0);
  }

  else
  {
    v133 = v163;
    (*(v102 + 32))(v163, v132, v105);
    sub_20C59DB0C();
    if (v134 <= 0.0)
    {
      (*(v102 + 8))(v133, v105);
    }

    else
    {
      sub_20C59E9EC();
      v135 = v158;
      sub_20C59E97C();
      (*(v101 + 16))(v159, v135, v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_20C4ECA6C(0, *(v98 + 2) + 1, 1, v98);
      }

      v137 = *(v98 + 2);
      v136 = *(v98 + 3);
      if (v137 >= v136 >> 1)
      {
        v98 = sub_20C4ECA6C(v136 > 1, v137 + 1, 1, v98);
      }

      (*(v101 + 8))(v158, v68);
      (*(v102 + 8))(v163, v105);
      *(v98 + 2) = v137 + 1;
      (*(v101 + 32))(&v98[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v137], v159, v68);
    }
  }

  return v98;
}

uint64_t MetricPlaybackTracker.__allocating_init(catalogWorkout:eventHub:networkEvaluator:assetClient:platform:playContext:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  swift_allocObject();
  v18 = sub_20C4DF224(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  return v18;
}

uint64_t MetricPlaybackTracker.init(catalogWorkout:eventHub:networkEvaluator:assetClient:platform:playContext:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = sub_20C4DF224(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_20C4CAD1C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E20);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E10);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v53 - v6;
  v61 = sub_20C59E43C();
  v68 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F00);
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = sub_20C59ECFC();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C59F5AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C5A01CC();
  v63 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v24 = *(v18 + 16);
  v67 = a1;
  v59 = v17;
  v24(v20, a1, v17);
  v25 = sub_20C5A01BC();
  v26 = sub_20C5A088C();
  v27 = os_log_type_enabled(v25, v26);
  v57 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v54 = v21;
    v29 = v16;
    v30 = v28;
    *v28 = 67240192;
    sub_20C59F58C();
    sub_20C59ECAC();
    (*(v65 + 8))(v29, v64);
    sub_20C59DA4C();
    sub_20C477B50(v12, &qword_27C7C4F00);
    v31 = v71;
    (*(v18 + 8))(v20, v59);
    *(v30 + 1) = v31;
    _os_log_impl(&dword_20C472000, v25, v26, "EventHub Update triggering workout playback update event %{public}d", v30, 8u);
    v32 = v30;
    v16 = v29;
    v21 = v54;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  else
  {
    (*(v18 + 8))(v20, v59);
  }

  v63[1](v23, v21);
  sub_20C59F58C();
  v33 = v60;
  sub_20C59E42C();
  v34 = v61;
  (*(v68 + 104))(v66, *MEMORY[0x277D51AC0], v61);
  sub_20C4E2084(&qword_27C7C5048, MEMORY[0x277D51AC8]);
  sub_20C5A05CC();
  sub_20C5A05CC();
  v63 = v16;
  if (v71 == v69 && v72 == v70)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_20C5A0E9C();
  }

  v36 = v64;
  v37 = *(v68 + 8);
  v37(v66, v34);

  if (v35)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v39 = *(Strong + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause);

      if (v39 == 2)
      {
        swift_beginAccess();
        v40 = swift_weakLoadStrong();
        if (v40)
        {
          *(v40 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 5;
        }
      }
    }
  }

  swift_beginAccess();
  v41 = swift_weakLoadStrong();
  if (v41)
  {
    v42 = v41;
    v43 = v68;
    v44 = v55;
    (*(v68 + 16))(v55, v33, v34);
    (*(v43 + 56))(v44, 0, 1, v34);
    v45 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackFocus;
    swift_beginAccess();
    sub_20C4E20CC(v44, v42 + v45, &qword_27C7C4E10);
    swift_endAccess();
  }

  swift_beginAccess();
  v46 = swift_weakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = v63;
    sub_20C59F58C();
    v49 = v58;
    sub_20C59ECAC();
    (*(v65 + 8))(v48, v36);
    (*(v56 + 56))(v49, 0, 1, v57);
    v50 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_playbackMode;
    swift_beginAccess();
    sub_20C4E20CC(v49, v47 + v50, &qword_27C7C4E20);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v51 = v63;
    sub_20C59F58C();
    sub_20C4CF2D0();

    (*(v65 + 8))(v51, v36);
  }

  return (v37)(v33, v34);
}

uint64_t sub_20C4CB5C4(double *a1, uint64_t a2, const char *a3, void (*a4)(double))
{
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_20C59FE3C();
  v12 = sub_20C5A01BC();
  v13 = sub_20C5A088C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20C472000, v12, v13, a3, v14, 2u);
    MEMORY[0x20F2FFF90](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(v11);
  }

  return result;
}

uint64_t sub_20C4CB75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4, void (*a5)(void), void (*a6)(void))
{
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A088C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v9;
    v19 = a5;
    v20 = v8;
    v21 = a6;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_20C472000, v16, v17, v27, v18, 2u);
    v23 = v22;
    a6 = v21;
    v8 = v20;
    a5 = v19;
    v9 = v26;
    MEMORY[0x20F2FFF90](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a5();
    a6(v11);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_20C4CB9B0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4];
  v36 = sub_20C59E6EC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C59FC7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20C5A01CC();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C59FE3C();
  v15 = *(v9 + 16);
  v33 = a1;
  v15(v11, a1, v8);
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A088C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v17;
    v19 = v18;
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v19 = 136446210;
    sub_20C59FC5C();
    sub_20C4E2084(&qword_27C7C5040, MEMORY[0x277D52940]);
    v20 = v36;
    v21 = sub_20C5A0E6C();
    v32 = v5;
    v23 = v22;
    (*(v38 + 8))(v7, v20);
    (*(v9 + 8))(v11, v8);
    v24 = sub_20C479640(v21, v23, v39);
    v5 = v32;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20C472000, v16, v30, "EventHub Update triggering remoteDisplayConnection update: %{public}s", v19, 0xCu);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x20F2FFF90](v25, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v34 + 8))(v14, v35);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    (*(v34 + 8))(v14, v35);
    v20 = v36;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    sub_20C59FC5C();
    (*(v38 + 56))(v5, 0, 1, v20);
    v28 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_remoteDisplayConnection;
    swift_beginAccess();
    sub_20C4E20CC(v5, v27 + v28, &qword_27C7C4E30);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CBE34(uint64_t a1)
{
  v2 = sub_20C59E95C();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C59D81C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v22 = a1;
  sub_20C59F78C();
  v11 = sub_20C59D80C();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (v11 == sub_20C59DD5C() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_20C59F78C();
    sub_20C59D7FC();
    v14(v8, v4);
    v20 = v23;
    sub_20C59E94C();
    v21 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
    swift_beginAccess();
    (*(v24 + 40))(v19 + v21, v20, v25);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CC0D4(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_20C4E1744(a1, v4, type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle);
    v7 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_currentSubtitleSelection;
    swift_beginAccess();
    sub_20C4E2020(v4, v6 + v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CC1C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_20C59E1EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FA9C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8 = Strong;
  v9 = sub_20C59E1CC();
  v11 = v10;
  v18[1] = v9;
  v18[2] = v10;
  v13 = v12 & 1;
  v19 = v12 & 1;
  v20 = 1;
  sub_20C4E1F78();
  sub_20C4E1FCC();
  v14 = sub_20C59DA7C();
  sub_20C481884(v9, v11, v13);
  if (v14)
  {
    (*(v4 + 32))(v2, v6, v3);
    v15 = 0;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v15 = 1;
  }

  (*(v4 + 56))(v2, v15, 1, v3);
  v17 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
  swift_beginAccess();
  sub_20C4E20CC(v2, v8 + v17, &qword_27C7C4DA8);
  swift_endAccess();
}

uint64_t sub_20C4CC42C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_20C59FBEC();
    v2 = v1 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedStartTime;
    *v2 = v3;
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t sub_20C4CC49C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_isPictureInPictureStopping) = a3;
  }

  return result;
}

uint64_t sub_20C4CC4F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioFocusType) = sub_20C59FB0C() & 1;
  }

  return result;
}

uint64_t sub_20C4CC564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C59F8BC();
    v5 = sub_20C59DB1C();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_cadenceMetric;
    swift_beginAccess();
    sub_20C4E20CC(v2, v4 + v6, &qword_27C7C4DC0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CC698(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = (result + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_audioLocale);
    *v4 = v2;
    v4[1] = v1;
  }

  return result;
}

uint64_t sub_20C4CC71C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C59FD2C();
    v5 = sub_20C59E7EC();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateDeviceConnection;
    swift_beginAccess();
    sub_20C4E20CC(v2, v4 + v6, &qword_27C7C4DE0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CC850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C59FA0C();
    v5 = sub_20C59DF8C();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_heartRateMetric;
    swift_beginAccess();
    sub_20C4E20CC(v2, v4 + v6, &qword_27C7C4DF0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CC984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_activeMultiUserSession;
    swift_beginAccess();
    sub_20C4775E4(v4 + v5, v2, &qword_27C7C4DA8);
    v6 = sub_20C59E1EC();
    if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
    {
      sub_20C477B50(v2, &qword_27C7C4DA8);
      *(v4 + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 0;
    }

    else
    {

      return sub_20C477B50(v2, &qword_27C7C4DA8);
    }
  }

  return result;
}

uint64_t sub_20C4CCAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v7 = sub_20C59E73C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20C59FCAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_20C5A01CC();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C59FE3C();
  (*(v11 + 16))(v13, a1, v10);
  v17 = sub_20C5A01BC();
  v18 = sub_20C5A08AC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v6;
    v20 = v19;
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v20 = 136446210;
    v34 = v18;
    sub_20C59FC8C();
    v21 = sub_20C59E71C();
    v36 = a2;
    v37 = a1;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    (*(v41 + 8))(v9, v42);
    v43[4] = v22;
    v43[5] = v24;
    v44 = v26 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4698);
    sub_20C59DA4C();
    (*(v11 + 8))(v13, v10);
    sub_20C481884(v22, v24, v26 & 1);
    v27 = sub_20C479640(v43[1], v43[2], v43);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20C472000, v17, v34, "Received updated activity device with state %{public}s", v20, 0xCu);
    v28 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v28, -1, -1);
    v29 = v20;
    v6 = v38;
    MEMORY[0x20F2FFF90](v29, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v39 + 8))(v16, v40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = result;
    sub_20C59FC8C();
    (*(v41 + 56))(v6, 0, 1, v42);
    v32 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_workoutDeviceConnection;
    swift_beginAccess();
    sub_20C4E20CC(v6, v31 + v32, &qword_27C7C4688);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C4CCF50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 3;
  }

  return result;
}

uint64_t sub_20C4CCFAC()
{
  v1 = v0;
  v2 = sub_20C59E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20C59D81C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59DD5C();
  sub_20C5A079C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20C477B50(v8, &qword_27C7C4FB8);
    (*(v3 + 104))(v5, *MEMORY[0x277D53190], v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_20C59D7FC();
    sub_20C59E94C();
    (*(v10 + 8))(v12, v9);
  }

  v13 = OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_downloadState;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v13, v5, v2);
  return swift_endAccess();
}

uint64_t sub_20C4CD2C0(double a1)
{
  v2 = sub_20C59D7DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  result = sub_20C59DD7C();
  v9 = 0;
  v10 = result + 56;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(result + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v3 + 16;
  v34 = result;
  v30 = (v3 + 32);
  for (i = MEMORY[0x277D84F90]; v13; result = v29(v22 + v27 + v25 * v17, v31, v2))
  {
LABEL_10:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v3 + 72);
      (*(v3 + 16))(v7, *(v34 + 48) + v17 * (v16 | (v9 << 6)), v2);
      sub_20C59D7CC();
      if (v18 <= a1)
      {
        sub_20C59D7CC();
        v20 = v19;
        sub_20C59D7BC();
        if (v20 + v21 >= a1)
        {
          break;
        }
      }

      result = (*(v3 + 8))(v7, v2);
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v29 = *v30;
    v29(v31, v7, v2);
    v22 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20C4C480C(0, *(v22 + 16) + 1, 1);
      v22 = v35;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      i = v25 + 1;
      v28 = v25;
      sub_20C4C480C(v24 > 1, v25 + 1, 1);
      v25 = v28;
      v26 = i;
      v22 = v35;
    }

    *(v22 + 16) = v26;
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    i = v22;
  }

LABEL_6:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return i;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}