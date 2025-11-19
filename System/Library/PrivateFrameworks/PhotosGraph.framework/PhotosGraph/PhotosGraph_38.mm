_BYTE *sub_22F3D26E4(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v149 - v12;
  v155 = *(a3 + 16);
  v156 = a3;
  v14 = sub_22F16DA54();
  v15 = 7;
  if (v14)
  {
    v15 = 6;
  }

  v157 = a1;
  v16 = a1[v15];
  sub_22F16D08C();
  v158 = a2;
  sub_22F16CC5C(v10);
  sub_22F73F590();
  v18 = v17;
  v19 = *(v7 + 8);
  v154 = v10;
  v19(v10, v6);
  v153 = v19;
  v151 = v7 + 8;
  v19(v13, v6);
  if (v16 > fabs(v18))
  {
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
    sub_22F7413B0();
    MEMORY[0x231900B10](540884512, 0xE400000000000000);
    sub_22F7413B0();
    v20 = v163;
    v21 = v164;
    v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    if (qword_27DAAFE08 != -1)
    {
      swift_once();
    }

    if (byte_27DAD0FC8 == 1)
    {
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v23 = sub_22F740B90();
      __swift_project_value_buffer(v23, qword_27DAD0E10);

      v24 = sub_22F740B70();
      v25 = sub_22F7415F0();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v158;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v163 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_22F145F20(v20, v21, &v163);
        _os_log_impl(&dword_22F0FC000, v24, v25, "%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        v30 = v29;
        v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
        MEMORY[0x2319033A0](v30, -1, -1);
        MEMORY[0x2319033A0](v28, -1, -1);
      }

      v159 = 1;
      goto LABEL_23;
    }

    v159 = 0;
LABEL_22:
    v27 = v158;
    goto LABEL_23;
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
  sub_22F7413B0();
  MEMORY[0x231900B10](540884512, 0xE400000000000000);
  sub_22F7413B0();
  v31 = v163;
  v32 = v164;
  v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  if (byte_27DAD0FC8 != 1)
  {

    v159 = 0;
    v155 = 5;
    goto LABEL_22;
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  __swift_project_value_buffer(v33, qword_27DAD0E10);

  v34 = sub_22F740B70();
  v35 = sub_22F7415F0();

  v36 = os_log_type_enabled(v34, v35);
  v27 = v158;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v163 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22F145F20(v31, v32, &v163);
    _os_log_impl(&dword_22F0FC000, v34, v35, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319033A0](v38, -1, -1);
    v39 = v37;
    v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    MEMORY[0x2319033A0](v39, -1, -1);
  }

  v159 = 1;
  v155 = 5;
LABEL_23:
  v40 = sub_22F3D0764(v157, v27, v156);
  v152 = "mode based on timeout: ";
  if (v40)
  {
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000035, 0x800000022F79E020);
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v41 = sub_22F742010();
    MEMORY[0x231900B10](v41);

    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79E360);
    v43 = v163;
    v42 = v164;
    if (*(v22 + 449) == -1)
    {
      if (v159)
      {
LABEL_26:
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v44 = sub_22F740B90();
        __swift_project_value_buffer(v44, qword_27DAD0E10);

        v45 = sub_22F740B70();
        v46 = sub_22F7415F0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v163 = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_22F145F20(v43, v42, &v163);
          _os_log_impl(&dword_22F0FC000, v45, v46, "%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v49 = v48;
          v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
          MEMORY[0x2319033A0](v49, -1, -1);
          MEMORY[0x2319033A0](v47, -1, -1);
        }

        v155 = 5;
        goto LABEL_42;
      }
    }

    else
    {
      swift_once();
      if (v159)
      {
        goto LABEL_26;
      }
    }

    v155 = 5;
    goto LABEL_42;
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000035, 0x800000022F79E020);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
  v50 = sub_22F742010();
  MEMORY[0x231900B10](v50);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F79E060);
  v52 = v163;
  v51 = v164;
  if (*(v22 + 449) != -1)
  {
    swift_once();
    if (v159)
    {
      goto LABEL_33;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!v159)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v53 = sub_22F740B90();
  __swift_project_value_buffer(v53, qword_27DAD0E10);

  v54 = sub_22F740B70();
  v55 = sub_22F7415F0();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v163 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_22F145F20(v52, v51, &v163);
    _os_log_impl(&dword_22F0FC000, v54, v55, "%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v58 = v57;
    v22 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    MEMORY[0x2319033A0](v58, -1, -1);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

LABEL_42:
  if ((sub_22F3D2324(v157) & 1) == 0)
  {
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E080);
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v69 = sub_22F742010();
    MEMORY[0x231900B10](v69);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E0C0);
    v71 = v163;
    v70 = v164;
    if (*(v22 + 449) == -1)
    {
      if (v159)
      {
LABEL_52:
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v72 = sub_22F740B90();
        __swift_project_value_buffer(v72, qword_27DAD0E10);

        v73 = sub_22F740B70();
        v74 = sub_22F7415F0();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v163 = v76;
          *v75 = 136315138;
          *(v75 + 4) = sub_22F145F20(v71, v70, &v163);
          _os_log_impl(&dword_22F0FC000, v73, v74, "%s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          v77 = v76;
          v27 = v158;
          MEMORY[0x2319033A0](v77, -1, -1);
          MEMORY[0x2319033A0](v75, -1, -1);
        }

        goto LABEL_61;
      }
    }

    else
    {
      swift_once();
      if (v159)
      {
        goto LABEL_52;
      }
    }

LABEL_61:
    v68 = v155;
    goto LABEL_62;
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E080);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
  v59 = sub_22F742010();
  MEMORY[0x231900B10](v59);

  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79E340);
  v61 = v163;
  v60 = v164;
  if (*(v22 + 449) != -1)
  {
    swift_once();
    if (v159)
    {
      goto LABEL_45;
    }

LABEL_58:

    v68 = 4;
    goto LABEL_62;
  }

  if (!v159)
  {
    goto LABEL_58;
  }

LABEL_45:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v62 = sub_22F740B90();
  __swift_project_value_buffer(v62, qword_27DAD0E10);

  v63 = sub_22F740B70();
  v64 = sub_22F7415F0();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v163 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_22F145F20(v61, v60, &v163);
    _os_log_impl(&dword_22F0FC000, v63, v64, "%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v67 = v66;
    v27 = v158;
    MEMORY[0x2319033A0](v67, -1, -1);
    MEMORY[0x2319033A0](v65, -1, -1);
  }

  v68 = 4;
LABEL_62:
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000035, v152 | 0x8000000000000000);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
  v78 = sub_22F742010();
  MEMORY[0x231900B10](v78);

  MEMORY[0x231900B10](0x6D69742073616820, 0xEF20706D61747365);
  sub_22F16CC5C(v13);
  sub_22F16F480(&qword_2810AC6F8, MEMORY[0x277CC9578]);
  v79 = sub_22F742010();
  MEMORY[0x231900B10](v79);

  v80 = v153;
  v153(v13, v6);
  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F79E0E0);
  sub_22F16D08C();
  v81 = sub_22F742010();
  MEMORY[0x231900B10](v81);

  v80(v13, v6);
  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E100);
  sub_22F16CC5C(v13);
  v82 = v154;
  sub_22F16D08C();
  sub_22F73F590();
  v80(v82, v6);
  v80(v13, v6);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F79E120);
  v83 = sub_22F16DD60();
  v84 = !v83;
  if (v83)
  {
    v85 = 1702195828;
  }

  else
  {
    v85 = 0x65736C6166;
  }

  if (v84)
  {
    v86 = 0xE500000000000000;
  }

  else
  {
    v86 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v85, v86);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E150);
  v161 = v68;
  v87 = sub_22F742010();
  MEMORY[0x231900B10](v87);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E170);
  v161 = *(v156 + 16);
  v88 = sub_22F742010();
  MEMORY[0x231900B10](v88);

  v90 = v163;
  v89 = v164;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
    if (v159)
    {
      goto LABEL_70;
    }

LABEL_76:
    v94 = v68;

    goto LABEL_77;
  }

  if (!v159)
  {
    goto LABEL_76;
  }

LABEL_70:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v91 = sub_22F740B90();
  __swift_project_value_buffer(v91, qword_27DAD0E10);

  v92 = sub_22F740B70();
  v93 = sub_22F7415F0();

  v94 = v68;
  if (os_log_type_enabled(v92, v93))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v163 = v96;
    *v95 = 136315138;
    *(v95 + 4) = sub_22F145F20(v90, v89, &v163);
    _os_log_impl(&dword_22F0FC000, v92, v93, "%s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x2319033A0](v96, -1, -1);
    MEMORY[0x2319033A0](v95, -1, -1);
  }

  v27 = v158;
LABEL_77:
  v97 = *(v27 + 32);
  v98 = *(v27 + 40);
  v99 = v157;
  v100 = sub_22F3D2324(v157);
  v101 = sub_22F16E4B0();
  v102 = v101;
  v150 = v101;
  v103 = 0x65736C6166;
  if (v101)
  {
    v104 = 1702195828;
  }

  else
  {
    v104 = 0x65736C6166;
  }

  v156 = v104;
  if (v101)
  {
    v105 = 0xE400000000000000;
  }

  else
  {
    v105 = 0xE500000000000000;
  }

  v155 = v105;
  if (v98)
  {
    v106 = v94 == 4;
  }

  else
  {
    v106 = v94 == 5;
  }

  v149 = v106;
  if (v98)
  {
    v107 = 1702195828;
  }

  else
  {
    v107 = 0x65736C6166;
  }

  v154 = v107;
  if (v98)
  {
    v108 = 0xE400000000000000;
  }

  else
  {
    v108 = 0xE500000000000000;
  }

  v153 = v108;
  if (v94 == 4)
  {
    v103 = 1702195828;
  }

  v152 = v103;
  if (v94 == 4)
  {
    v109 = 0xE400000000000000;
  }

  else
  {
    v109 = 0xE500000000000000;
  }

  v151 = v109;
  v110 = *(v27 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing);
  v111 = (v97 & 0xFFFFFFFFFFFFFFFELL) == 4;
  swift_beginAccess();
  v113 = *(v99 + 2);
  v112 = *(v99 + 3);
  type metadata accessor for PGSharedLibrarySimulationResult();
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v112;
  *(v114 + 32) = v94;
  *(v114 + 40) = v100 & 1;
  *(v114 + 41) = v111;
  v115 = v149;
  *(v114 + 42) = v150;
  *(v114 + 43) = v115;
  v116 = v100 ^ v102;
  v117 = v114;
  *(v114 + 44) = (v116 & 1) == 0;
  if (v110)
  {
    v118 = v94 == 4;
  }

  else
  {
    v118 = v94 == 5;
  }

  if (v110 == 2)
  {
    v118 = 2;
  }

  *(v114 + 45) = v118;
  v161 = 0;
  v162 = 0xE000000000000000;

  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000004CLL, 0x800000022F79E190);
  v160 = v94;
  v119 = sub_22F742010();
  MEMORY[0x231900B10](v119);

  MEMORY[0x231900B10](47, 0xE100000000000000);
  MEMORY[0x231900B10](v152, v151);

  MEMORY[0x231900B10](0xD000000000000044, 0x800000022F79E1E0);
  MEMORY[0x231900B10](v154, v153);

  MEMORY[0x231900B10](0xD000000000000028, 0x800000022F79E230);
  MEMORY[0x231900B10](v156, v155);

  MEMORY[0x231900B10](0x72726F437369202ELL, 0xEE00203D20746365);
  if (v117[43])
  {
    v120 = 1702195828;
  }

  else
  {
    v120 = 0x65736C6166;
  }

  if (v117[43])
  {
    v121 = 0xE400000000000000;
  }

  else
  {
    v121 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v120, v121);

  MEMORY[0x231900B10](0xD00000000000002DLL, 0x800000022F79E260);
  v122 = v117[44];
  if (v122)
  {
    v123 = 1702195828;
  }

  else
  {
    v123 = 0x65736C6166;
  }

  if (v117[44])
  {
    v124 = 0xE400000000000000;
  }

  else
  {
    v124 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v123, v124);

  v125 = v162;
  if (v159)
  {
    v126 = v161;
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v127 = sub_22F740B90();
    __swift_project_value_buffer(v127, qword_27DAD0E10);

    v128 = sub_22F740B70();
    v129 = sub_22F7415F0();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v161 = v131;
      *v130 = 136315138;
      *(v130 + 4) = sub_22F145F20(v126, v125, &v161);
      _os_log_impl(&dword_22F0FC000, v128, v129, "%s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x2319033A0](v131, -1, -1);
      MEMORY[0x2319033A0](v130, -1, -1);
    }
  }

  else
  {
  }

  v132 = v117[45];
  v133 = v158;
  if (v132 == 2)
  {
LABEL_134:
    if ((v122 & 1) == 0)
    {
      if (v159)
      {
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v143 = sub_22F740B90();
        __swift_project_value_buffer(v143, qword_27DAD0E10);
        v144 = sub_22F740B70();
        v145 = sub_22F7415F0();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v161 = v147;
          *v146 = 136315138;
          *(v146 + 4) = sub_22F145F20(0xD000000000000055, 0x800000022F79E290, &v161);
          _os_log_impl(&dword_22F0FC000, v144, v145, "%s", v146, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v147);
          MEMORY[0x2319033A0](v147, -1, -1);
          MEMORY[0x2319033A0](v146, -1, -1);
        }
      }

      goto LABEL_142;
    }

    return v117;
  }

  v161 = 0;
  v162 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000040, 0x800000022F79E2F0);
  if (v132)
  {
    v134 = 1702195828;
  }

  else
  {
    v134 = 0x65736C6166;
  }

  if (v132)
  {
    v135 = 0xE400000000000000;
  }

  else
  {
    v135 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v134, v135);

  v136 = v162;
  if (v159)
  {
    v137 = v161;
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v138 = sub_22F740B90();
    __swift_project_value_buffer(v138, qword_27DAD0E10);

    v139 = sub_22F740B70();
    v140 = sub_22F7415F0();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v161 = v142;
      *v141 = 136315138;
      *(v141 + 4) = sub_22F145F20(v137, v136, &v161);
      _os_log_impl(&dword_22F0FC000, v139, v140, "%s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v142);
      MEMORY[0x2319033A0](v142, -1, -1);
      MEMORY[0x2319033A0](v141, -1, -1);
    }

    v133 = v158;
    goto LABEL_134;
  }

  if ((v122 & 1) == 0)
  {
LABEL_142:
    sub_22F38F63C(v133);
  }

  return v117;
}

unint64_t sub_22F3D4054()
{
  result = qword_27DAB0960;
  if (!qword_27DAB0960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB0960);
  }

  return result;
}

id sub_22F3D40A0(void (*a1)(uint64_t))
{
  [*(v1 + 32) lock];
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return [*(v1 + 32) unlock];
}

uint64_t sub_22F3D4140@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = (&v35 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = a1;
  v36 = v15;
  if (!v20)
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        (*(v11 + 56))(v9, 1, 1, v10);
        v25 = 0;
        goto LABEL_11;
      }

      v20 = *(v16 + 8 * v21);
      ++v18;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v21 = v18;
LABEL_10:
  v25 = (v20 - 1) & v20;
  sub_22F3DF188(*(v17 + 48) + *(v11 + 72) * (__clz(__rbit64(v20)) | (v21 << 6)), v9, type metadata accessor for Song);
  (*(v11 + 56))(v9, 0, 1, v10);
  v24 = v21;
LABEL_11:
  *v1 = v17;
  v1[1] = v16;
  v1[2] = v19;
  v1[3] = v24;
  v1[4] = v25;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22F120ADC(v9, &qword_27DAB1250, &qword_22F781A10);
    return (*(v38 + 56))(v40, 1, 1, v39);
  }

  v26 = v9;
  v27 = v36;
  sub_22F3DF250(v26, v36, type metadata accessor for Song);
  v28 = v39;
  v29 = *(v39 + 48);
  v30 = v1[5];
  v31 = v37;
  *v37 = v30;
  result = sub_22F3DF250(v27, v31 + v29, type metadata accessor for Song);
  v32 = __OFADD__(v30, 1);
  v33 = v30 + 1;
  v34 = v40;
  if (v32)
  {
    goto LABEL_18;
  }

  v1[5] = v33;
  sub_22F1207AC(v31, v34, &qword_27DAB1630, &qword_22F772A70);
  return (*(v38 + 56))(v34, 0, 1, v28);
}

void sub_22F3D44B4()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    if (sub_22F741D10())
    {
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      swift_dynamicCast();
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      if (v14)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    if (!v3)
    {
      v5 = (v0[2] + 64) >> 6;
      if (v5 <= v2 + 1)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = (v0[2] + 64) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v5)
        {
          v0[3] = v7;
          v0[4] = 0;
          return;
        }

        v3 = *(v0[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v4 = v0[3];
LABEL_14:
    v8 = (v3 - 1) & v3;
    v9 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
    v10 = *(*(v1 + 48) + v9);
    v11 = *(*(v1 + 56) + v9);
    v12 = v10;

    v0[3] = v4;
    v0[4] = v8;
    if (v10)
    {
LABEL_15:
      v13 = v0[5];
      if (!__OFADD__(v13, 1))
      {
        v0[5] = v13 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

uint64_t sub_22F3D4644()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (!v3)
  {
    v5 = (v0[2] + 64) >> 6;
    if (v5 <= v2 + 1)
    {
      v6 = v2 + 1;
    }

    else
    {
      v6 = (v0[2] + 64) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        v11 = 0;
        v0[3] = v7;
        v0[4] = 0;
        return v11;
      }

      v3 = *(v0[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = v0[3];
LABEL_10:
  v8 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
  v9 = *(*(v1 + 48) + v8);
  v10 = *(*(v1 + 56) + v8);
  v0[3] = v4;
  v0[4] = (v3 - 1) & v3;
  v11 = v0[5];
  if (__OFADD__(v11, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v11 + 1;
  v12 = v9;

  return v11;
}

uint64_t sub_22F3D4720()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v8 = 0;
        v0[3] = v6;
        v0[4] = 0;
        return v8;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = v0[3];
LABEL_10:
  v7 = *(*(*v0 + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v8 = v0[5];
  if (__OFADD__(v8, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v8 + 1;

  return v8;
}

void sub_22F3D47EC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4240, &qword_22F78ABB0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = (&v43 - v5);
  v6 = type metadata accessor for DateAndLocation();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4248, &qword_22F78ABB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4230, &qword_22F78ABA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v49 = a1;
  v50 = v23;
  v44 = v19;
  if (!v24)
  {
    v26 = (v23 + 64) >> 6;
    if (v26 <= v22 + 1)
    {
      v27 = v22 + 1;
    }

    else
    {
      v27 = (v23 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        (*(v15 + 56))(v13, 1, 1, v14, v17);
        v29 = 0;
        goto LABEL_11;
      }

      v24 = *(v21 + 8 * v25);
      ++v22;
      if (v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v25 = v22;
LABEL_10:
  v29 = (v24 - 1) & v24;
  v30 = __clz(__rbit64(v24)) | (v25 << 6);
  sub_22F3DF188(*(v20 + 48) + *(v46 + 72) * v30, v9, type metadata accessor for DateAndLocation);
  v31 = *(*(v20 + 56) + 8 * v30);
  v32 = v9;
  v33 = *(v14 + 48);
  sub_22F3DF250(v32, v13, type metadata accessor for DateAndLocation);
  *&v13[v33] = v31;
  (*(v15 + 56))(v13, 0, 1, v14);

  v28 = v25;
LABEL_11:
  *v1 = v20;
  v1[1] = v21;
  v1[2] = v50;
  v1[3] = v28;
  v1[4] = v29;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22F120ADC(v13, &qword_27DAB4248, &qword_22F78ABB8);
    (*(v47 + 56))(v49, 1, 1, v48);
    return;
  }

  v34 = v13;
  v35 = v44;
  sub_22F1207AC(v34, v44, &qword_27DAB4230, &qword_22F78ABA0);
  v36 = v48;
  v37 = *(v48 + 48);
  v38 = v1[5];
  v39 = v45;
  *v45 = v38;
  sub_22F1207AC(v35, v39 + v37, &qword_27DAB4230, &qword_22F78ABA0);
  v40 = __OFADD__(v38, 1);
  v41 = v38 + 1;
  v42 = v49;
  if (v40)
  {
    goto LABEL_18;
  }

  v1[5] = v41;
  sub_22F1207AC(v39, v42, &qword_27DAB4240, &qword_22F78ABB0);
  (*(v47 + 56))(v42, 0, 1, v36);
}

uint64_t static MusicForMomentCacher.coarseDateAndLocation(fromEvent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F270();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22F73F9B0();
  v56 = *(v59 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = (*(v22 + 24))(v23, v22);
  if (v24)
  {
    v25 = v24;
    v53 = v4;
    v55 = a2;
    v27 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    (*(v26 + 8))(v27, v26);
    v28 = *(v16 + 48);
    if (v28(v14, 1, v15) == 1)
    {

LABEL_9:
      sub_22F120ADC(v14, &qword_27DAB0920, &qword_22F770B20);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
      return (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
    }

    v52 = v25;
    v49 = *(v16 + 32);
    v50 = v16 + 32;
    v49(v21, v14, v15);
    sub_22F73F970();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
    v32 = sub_22F73F990();
    v51 = v28;
    v33 = v32;
    v34 = *(v32 - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22F770DF0;
    v38 = v37 + v36;
    v39 = *(v34 + 104);
    v39(v38, *MEMORY[0x277CC9988], v33);
    v39(v38 + v35, *MEMORY[0x277CC9998], v33);
    sub_22F3D97CC(v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v40 = v58;
    v41 = v61;
    sub_22F73F860();

    v14 = v57;
    sub_22F73F920();
    (*(v60 + 8))(v40, v53);
    (*(v56 + 8))(v41, v59);
    (*(v16 + 8))(v21, v15);
    if (v51(v14, 1, v15) == 1)
    {

      goto LABEL_9;
    }

    v43 = v54;
    v44 = v49;
    v49(v54, v14, v15);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
    v46 = *(v45 + 48);
    v47 = v55;
    v44(v55, v43, v15);
    *(v47 + v46) = v52;
    return (*(*(v45 - 8) + 56))(v47, 0, 1, v45);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
    v30 = *(*(v29 - 8) + 56);

    return v30(a2, 1, 1, v29);
  }
}

uint64_t sub_22F3D52CC()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AA940);
  *__swift_project_value_buffer(v0, qword_2810AA940) = 15;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22F3D535C()
{
  v10 = sub_22F741640();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F741630();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22F740C00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v11 = MEMORY[0x277D84F90];
  sub_22F3DE004(&unk_2810A90F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F16BC6C(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F741970();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22F741660();
  qword_2810AA928 = result;
  return result;
}

void static MusicForMomentCacher.cacheMusic(forMomentsInPhotoLibrary:progressReporter:completionHandler:)(void *a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v105 = a3;
  v106 = a4;
  v6 = sub_22F740C00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v98 = *(v9 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  v14 = type metadata accessor for CacherStatusUpdater(0);
  v101 = *(v14 - 8);
  v15 = v101[8];
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v103 = a2;
  v25 = a1;
  v26 = sub_22F7416B0();
  v104 = v27;
  v28 = sub_22F1A26E0(v25);
  v93 = v25;
  v94 = v21;
  v92 = v10;
  v95 = v13;
  v96 = v17;
  v97 = v26;
  v29 = 0xEE00746E656D6F4DLL;
  v30 = v24;
  v31 = 0x726F46636973756DLL;
  v32 = v28;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v33 = v32;
  v34 = sub_22F1ED5B0(v32);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v30);
  v91 = v33;
  v35 = sub_22F3DC190(v30, v34, v97);
  v36 = v34;
  v38 = v104;
  v37 = v105;
  v89 = v36;
  v90 = v30;
  if ((v35 & 1) == 0)
  {
    sub_22F7416A0();
    v37(1, 0);

    v41 = v90;
LABEL_5:
    sub_22F120ADC(v41, &qword_27DAB1DA0, &unk_22F7771B0);
    return;
  }

  v39 = v94;
  sub_22F13BA9C(v90, v94, &qword_27DAB1DA0, &unk_22F7771B0);
  v40 = type metadata accessor for CacherStatus(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_22F120ADC(v39, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  else
  {
    v43 = *v39;
    v42 = v39[1];

    sub_22F3DF1F0(v39, type metadata accessor for CacherStatus);
    if (v42)
    {
      v31 = v43;
      v29 = v42;
    }
  }

  v44 = v96;
  v46 = v101;
  v45 = v102;
  v47 = v14;
  sub_22F13BA9C(v90, v96, &qword_27DAB1DA0, &unk_22F7771B0);
  v48 = (v44 + *(v14 + 20));
  *v48 = v31;
  v48[1] = v29;
  v49 = v95;
  sub_22F3DF188(v44, v95, type metadata accessor for CacherStatusUpdater);
  (v46[7])(v49, 0, 1, v47);
  v50 = swift_allocObject();
  v51 = v106;
  *(v50 + 16) = v37;
  *(v50 + 24) = v51;

  v52 = sub_22F7416E0();
  v101 = v53;
  v102 = v52;
  v94 = v54;
  v56 = v55;
  sub_22F740BD0();
  v57 = sub_22F22FB24(v45, 0);
  v87 = v56;
  v88 = v57;
  v58 = v50;
  v59 = v93;
  v60 = sub_22F3DC674(v93);
  v61 = v97;
  v86 = v60;
  v62 = sub_22F1A26E0(v59);
  v63 = v90;
  v64 = v101;
  v65 = v62;
  v66 = sub_22F3DC858(v86, v62, v101);
  v67 = *(v66 + 16);
  if (!v67)
  {
    v103 = v58;

    v83 = v104;
    sub_22F7416A0();
    v84 = v87;
    v105(1, 0);

    sub_22F120ADC(v95, &qword_27DAB4208, &unk_22F78AAC8);
    sub_22F3DF1F0(v96, type metadata accessor for CacherStatusUpdater);
    v41 = v63;
    goto LABEL_5;
  }

  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  if (v67 > 0xA)
  {
    v69 = *(type metadata accessor for DateAndLocation() - 8);
    sub_22F10B040(v66, v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), 0, 0x15uLL);
    v71 = v70;
    *(v68 + 16) = v70;

    v66 = v71;
  }

  v72 = v99;
  v73 = v100;
  v74 = v98;
  sub_22F13BA9C(v95, v99, &qword_27DAB4208, &unk_22F78AAC8);
  v75 = (*(v74 + 80) + 80) & ~*(v74 + 80);
  v76 = swift_allocObject();
  v77 = v104;
  v76[2] = v104;
  v76[3] = sub_22F3B1774;
  v76[4] = v58;
  v76[5] = v68;
  v76[6] = v65;
  v76[7] = v73;
  v106 = v68;
  v78 = v87;
  v76[8] = v88;
  v76[9] = v78;
  sub_22F1207AC(v72, v76 + v75, &qword_27DAB4208, &unk_22F78AAC8);

  v79 = v77;

  v80 = v65;

  v81 = v78;
  v82 = v94;
  sub_22F3D7F74(v66, v94, sub_22F3DDE8C, v76);

  sub_22F120ADC(v95, &qword_27DAB4208, &unk_22F78AAC8);
  sub_22F3DF1F0(v96, type metadata accessor for CacherStatusUpdater);
  sub_22F120ADC(v90, &qword_27DAB1DA0, &unk_22F7771B0);
}

void static MusicForMomentCacher.cacheMusic(forMomentsInPhotoLibrary:cacherStatusUpdater:maximumNumberOfDatesAndLocationsToProcess:progressReporter:completionHandler:)(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v58 = a6;
  v56 = a2;
  v57 = a5;
  v60 = a3;
  v61 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_22F740C00();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F7416E0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_22F740BD0();
  v23 = sub_22F22FB24(v15, 0);
  if (v6)
  {

    return;
  }

  v24 = v60;
  v52 = v9;
  v53 = v11;
  v54 = v23;
  v25 = v61;
  v26 = sub_22F3DC674(v61);
  v51 = v16;
  v27 = sub_22F1A26E0(v25);
  v28 = sub_22F3DC858(v26, v27, v18);
  v61 = v27;
  v29 = *(v28 + 16);
  v50 = v26;
  if (!v29)
  {

    sub_22F7416A0();
    v47 = v51;
    v57(0);
    v48 = v61;
LABEL_10:

    return;
  }

  v30 = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  if (v29 <= v24)
  {
    v37 = v30;
    v36 = v53;
    v60 = v37;
    v35 = v31;
    goto LABEL_9;
  }

  v49 = v31;
  if ((v24 & 0x8000000000000000) == 0)
  {
    v32 = *(type metadata accessor for DateAndLocation() - 8);
    sub_22F10B040(v30, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), 0, (2 * v24) | 1);
    v34 = v33;
    v35 = v49;
    *(v49 + 16) = v33;

    v60 = v34;
    v36 = v53;
LABEL_9:
    sub_22F13BA9C(v56, v36, &qword_27DAB4208, &unk_22F78AAC8);
    v38 = (*(v55 + 80) + 80) & ~*(v55 + 80);
    v39 = swift_allocObject();
    v40 = v57;
    v39[2] = a4;
    v39[3] = v40;
    v39[4] = v58;
    v39[5] = v35;
    v41 = v59;
    v39[6] = v61;
    v39[7] = v41;
    v39[8] = v54;
    v39[9] = v22;
    sub_22F1207AC(v36, v39 + v38, &qword_27DAB4208, &unk_22F78AAC8);
    v42 = v60;

    v43 = a4;

    v44 = v61;
    v45 = v61;

    v46 = v22;
    sub_22F3D7F74(v42, v20, sub_22F3DF338, v39);

    v48 = v44;

    v47 = v51;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_22F3D668C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, void *a6, char *a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  v108 = a8;
  v111 = a7;
  v107 = a6;
  v110 = a5;
  v109 = a4;
  v14 = sub_22F740AD0();
  v106 = *(v14 - 8);
  v15 = v106[8];
  MEMORY[0x28223BE20](v14);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateAndLocation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v27 = &v91 - v26;
  if (a2)
  {
    sub_22F7416A0();
    v109(a2);
  }

  else
  {
    v28 = v111;
    v97 = v19;
    v98 = v18;
    v99 = v17;
    v100 = v14;
    v101 = v22;
    v29 = *(a1 + 16);
    v102 = a3;
    if (v29)
    {
      v30 = a1;
      v106 = v25;
      v31 = v27;
      v107 = a10;
      *&v114[0] = MEMORY[0x277D84FA0];
      v32 = a1 + 64;
      v33 = 1 << *(a1 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(a1 + 64);
      v36 = (v33 + 63) >> 6;

      v37 = 0;
      if (v35)
      {
        while (1)
        {
          v38 = v37;
LABEL_12:
          v39 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v40 = *(*(v30 + 56) + ((v38 << 9) | (8 * v39)));

          sub_22F2EAA2C(v41);
          if (!v35)
          {
            goto LABEL_8;
          }
        }
      }

      while (1)
      {
LABEL_8:
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v38 >= v36)
        {
          break;
        }

        v35 = *(v32 + 8 * v38);
        ++v37;
        if (v35)
        {
          v37 = v38;
          goto LABEL_12;
        }
      }

      v42 = *&v114[0];
      v43 = *(*&v114[0] + 16);
      v105 = a9;
      if (v43)
      {
        v44 = sub_22F10B348(v43, 0);
        v45 = sub_22F11A438(v114, v44 + 4, v43, v42);
        sub_22F0FF590();
        if (v45 != v43)
        {
          goto LABEL_29;
        }

        v104 = v44;
      }

      else
      {

        v104 = MEMORY[0x277D84F90];
      }

      static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v112);
      sub_22F13BA9C(a11, v31, &qword_27DAB4208, &unk_22F78AAC8);
      v79 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v80 = (v24 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      sub_22F1207AC(v31, v84 + v79, &qword_27DAB4208, &unk_22F78AAC8);
      v85 = v111;
      *(v84 + v80) = v111;
      *(v84 + v81) = v30;
      *(v84 + v82) = v108;
      v86 = v102;
      *(v84 + v83) = v102;
      v87 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
      v88 = v110;
      *v87 = v109;
      v87[1] = v88;

      v89 = v85;
      v90 = v86;

      sub_22F2280D8(v104, v112, 29557, 0xE200000000000000, v107, sub_22F3DF09C, v84);

      v114[0] = v112[0];
      v114[1] = v112[1];
      v114[2] = v112[2];
      v115 = v113;
      sub_22F1D210C(v114);
    }

    else
    {
      v46 = v107;
      swift_beginAccess();
      v47 = v46[2];
      v48 = *(v47 + 16);
      v96 = OBJC_IVAR___PGMusicCache_managedObjectContext;

      v95 = v48;
      if (v48)
      {
        v49 = v28;
        v50 = 0;
        v51 = v106 + 1;
        v93 = xmmword_22F78AAB0;
        v52 = v101;
        v53 = v100;
        v54 = v99;
        v94 = v47;
        v92 = v106 + 1;
        while (v50 < *(v47 + 16))
        {
          sub_22F3DF188(v47 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v50, v52, type metadata accessor for DateAndLocation);
          v108 = *(v52 + *(v98 + 20));
          v55 = [objc_opt_self() ignoreProgress];
          sub_22F741740();
          if (qword_2810A8E80 != -1)
          {
            swift_once();
          }

          v56 = qword_2810A8E88;
          sub_22F740AC0();
          v107 = v56;
          sub_22F740A90();
          v57 = *v51;
          (*v51)(v54, v53);
          sub_22F741690();
          v103 = v57;
          v58 = v50;
          v104 = sub_22F7416E0();
          v60 = v59;
          v105 = v61;
          v63 = v62;
          type metadata accessor for Geohash();
          inited = swift_initStackObject();
          *(inited + 16) = 0;
          *(inited + 24) = 0;
          v106 = v55;
          v65 = v108;
          [v108 coordinate];
          v67 = v66;
          [v65 coordinate];
          v69 = sub_22F34AF8C(4, v67, v68);
          v71 = v70;
          swift_setDeallocating();
          v72 = *(inited + 16);

          v73 = *(inited + 24);

          v75 = *&v49[v96];
          MEMORY[0x28223BE20](v74);
          *(&v91 - 18) = v49;
          v76 = v104;
          *(&v91 - 17) = 0x6D617A616873;
          *(&v91 - 16) = 0xE600000000000000;
          *(&v91 - 15) = v69;
          v52 = v101;
          *(&v91 - 14) = v71;
          *(&v91 - 13) = v52;
          *(&v91 - 12) = 0;
          *(&v91 - 11) = 0;
          *(&v91 - 5) = v93;
          *(&v91 - 8) = v65;
          *(&v91 - 7) = v76;
          *(&v91 - 6) = MEMORY[0x277D84F90];
          *(&v91 - 10) = 16777472;
          v77 = v60;
          *(&v91 - 4) = v60;
          v78 = v105;
          *(&v91 - 3) = v105;
          *(&v91 - 2) = v63;
          sub_22F7417A0();

          sub_22F741730();
          v54 = v99;
          sub_22F740AC0();
          sub_22F740A90();

          v50 = v58 + 1;
          v53 = v100;
          v51 = v92;
          v103(v54, v100);
          sub_22F3DF1F0(v52, type metadata accessor for DateAndLocation);
          v49 = v111;
          v47 = v94;
          if (v95 == v50)
          {
            goto LABEL_26;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
LABEL_26:

        sub_22F7416A0();
        v109(0);
      }
    }
  }
}

void sub_22F3D70CC(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v119 = a8;
  v117 = a7;
  v138 = a5;
  v139 = a3;
  v128 = a4;
  v118 = a9;
  v137 = sub_22F740AD0();
  v135 = *(v137 - 8);
  v11 = v135[8];
  MEMORY[0x28223BE20](v137);
  v136 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4230, &qword_22F78ABA0);
  v13 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v114 - v14;
  v124 = type metadata accessor for DateAndLocation();
  v15 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v129 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4238, &qword_22F78ABA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v127 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v114 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - v28;
  v30 = type metadata accessor for CacherStatusUpdater(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v134 = &v114 - v36;
  v37 = type metadata accessor for Song();
  v116 = *(v37 - 8);
  v38 = *(v116 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  MEMORY[0x28223BE20](v39);
  v115 = &v114 - v40;
  MEMORY[0x28223BE20](v41);
  v44 = &v114 - v43;
  if (a2)
  {
    v45 = v128;
    sub_22F13BA9C(v139, v26, &qword_27DAB4208, &unk_22F78AAC8);
    if ((*(v31 + 48))(v26, 1, v30) == 1)
    {
      sub_22F120ADC(v26, &qword_27DAB4208, &unk_22F78AAC8);
    }

    else
    {
      sub_22F3DF250(v26, v34, type metadata accessor for CacherStatusUpdater);
      CacherStatusUpdater.writeFailure(to:)(v45);
      sub_22F3DF1F0(v34, type metadata accessor for CacherStatusUpdater);
    }

    sub_22F7416A0();
    v111 = a1;
LABEL_44:
    v119(v111);
    return;
  }

  v133 = v30;
  v114 = v42;
  v123 = v22;
  v46 = *(a1 + 16);
  if (v46)
  {
    v47 = (a1 + 32);
    v48 = MEMORY[0x277D84F98];
    do
    {
      memcpy(v142, v47, sizeof(v142));
      v49 = v142[1];
      v50 = v142[0];
      memcpy(v141, v47, sizeof(v141));
      sub_22F18C4EC(v142, v140);
      sub_22F18C4EC(v142, v140);
      Song.init(_:)(v141);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141[0] = v48;
      sub_22F1307F8(v44, v50, v49, isUniquelyReferenced_nonNull_native);
      sub_22F18C524(v142);
      v48 = v141[0];
      v47 += 296;
      --v46;
    }

    while (v46);
  }

  else
  {
    v48 = MEMORY[0x277D84F98];
  }

  sub_22F13BA9C(v139, v29, &qword_27DAB4208, &unk_22F78AAC8);
  if ((*(v31 + 48))(v29, 1, v133) == 1)
  {
    sub_22F120ADC(v29, &qword_27DAB4208, &unk_22F78AAC8);
    v139 = 0;
    v52 = v129;
    v53 = v123;
  }

  else
  {
    v54 = v134;
    sub_22F3DF250(v29, v134, type metadata accessor for CacherStatusUpdater);
    CacherStatusUpdater.writeSuccess(to:)(v128);
    v52 = v129;
    v53 = v123;
    v139 = 0;
    sub_22F3DF1F0(v54, type metadata accessor for CacherStatusUpdater);
  }

  v55 = -1 << *(v138 + 32);
  v56 = ~v55;
  v57 = v138[8];
  v58 = -v55;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v142[0] = v138;
  v142[1] = v138 + 8;
  v142[2] = v56;
  v142[3] = 0;
  v142[4] = v59 & v57;
  v142[5] = 0;
  v121 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  ++v135;

  v120 = xmmword_22F78AAB0;
  v122 = v48;
  while (2)
  {
    v60 = v127;
    sub_22F3D47EC(v127);
    sub_22F1207AC(v60, v53, &qword_27DAB4238, &qword_22F78ABA8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4240, &qword_22F78ABB0);
    if ((*(*(v61 - 8) + 48))(v53, 1, v61) == 1)
    {
      sub_22F0FF590();

      v110 = v139;
      sub_22F7416A0();
      if (v110)
      {

        v111 = 0;
      }

      else
      {
LABEL_46:
        v111 = 0;
      }

      goto LABEL_44;
    }

    v62 = v53 + *(v61 + 48);
    v63 = v125;
    v64 = *(v62 + *(v126 + 48));
    sub_22F3DF250(v62, v125, type metadata accessor for DateAndLocation);
    sub_22F3DF250(v63, v52, type metadata accessor for DateAndLocation);
    v65 = 1 << *(v64 + 32);
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & *(v64 + 56);
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    v138 = MEMORY[0x277D84F90];
    while (v67)
    {
      v70 = v67;
LABEL_28:
      v67 = (v70 - 1) & v70;
      if (*(v48 + 16))
      {
        v72 = (*(v64 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v70)))));
        v73 = *v72;
        v74 = v72[1];

        v75 = sub_22F1229E8(v73, v74);
        if (v76)
        {
          v77 = *(v116 + 72);
          v78 = v114;
          sub_22F3DF188(*(v48 + 56) + v77 * v75, v114, type metadata accessor for Song);

          sub_22F3DF250(v78, v115, type metadata accessor for Song);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_22F13E558(0, v138[2] + 1, 1, v138);
          }

          v80 = v138[2];
          v79 = v138[3];
          if (v80 >= v79 >> 1)
          {
            v138 = sub_22F13E558(v79 > 1, v80 + 1, 1, v138);
          }

          v81 = v138;
          v138[2] = v80 + 1;
          sub_22F3DF250(v115, v81 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + v80 * v77, type metadata accessor for Song);
          v52 = v129;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v71 >= v68)
      {
        break;
      }

      v70 = *(v64 + 56 + 8 * v71);
      ++v69;
      if (v70)
      {
        v69 = v71;
        goto LABEL_28;
      }
    }

    v82 = *(v52 + *(v124 + 20));
    v83 = [objc_opt_self() ignoreProgress];
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v84 = qword_2810A8E88;
    v85 = v136;
    sub_22F740AC0();
    sub_22F740A90();
    v86 = *v135;
    (*v135)(v85, v137);
    v87 = v139;
    sub_22F741690();
    if (!v87)
    {
      v130 = v84;
      v131 = v86;
      v132 = sub_22F7416E0();
      v133 = v88;
      v90 = v89;
      v134 = v83;
      v92 = v91;
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v82 coordinate];
      v95 = v94;
      [v82 coordinate];
      v97 = sub_22F34AF8C(4, v95, v96);
      v99 = v98;
      swift_setDeallocating();
      v100 = *(inited + 16);

      v101 = *(inited + 24);

      v103 = *(v128 + v121);
      MEMORY[0x28223BE20](v102);
      *(&v114 - 18) = v104;
      *(&v114 - 17) = 0x6D617A616873;
      *(&v114 - 16) = 0xE600000000000000;
      *(&v114 - 15) = v97;
      *(&v114 - 14) = v99;
      *(&v114 - 13) = v52;
      v106 = v132;
      v105 = v133;
      *(&v114 - 12) = 0;
      *(&v114 - 11) = 0;
      *(&v114 - 5) = v120;
      *(&v114 - 8) = v82;
      *(&v114 - 7) = v106;
      *(&v114 - 6) = v138;
      *(&v114 - 10) = 16777472;
      v107 = v90;
      *(&v114 - 4) = v90;
      *(&v114 - 3) = v105;
      v108 = v105;
      *(&v114 - 2) = v92;
      sub_22F7417A0();
      v139 = 0;

      sub_22F741730();
      v109 = v136;
      sub_22F740AC0();
      sub_22F740A90();

      v131(v109, v137);
      v52 = v129;
      sub_22F3DF1F0(v129, type metadata accessor for DateAndLocation);
      v48 = v122;
      v53 = v123;
      continue;
    }

    break;
  }

  v139 = v87;

  sub_22F0FF590();
  sub_22F3DF1F0(v52, type metadata accessor for DateAndLocation);
  sub_22F7416A0();
  v112 = v139;
  v113 = v139;
  v119(v112);
}

uint64_t sub_22F3D7F74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22F740BC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F740C00();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AA920 != -1)
  {
    swift_once();
  }

  v22[1] = qword_2810AA928;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a2;
  v18[6] = v4;
  aBlock[4] = sub_22F3DEF00;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F327D80;
  aBlock[3] = &block_descriptor_56;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  sub_22F740BE0();
  v24 = MEMORY[0x277D84F90];
  sub_22F3DE004(&qword_2810A93D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D00, &qword_22F78AB80);
  sub_22F16BC6C(&qword_2810A92F8, &qword_27DAB3D00, &qword_22F78AB80);
  sub_22F741970();
  MEMORY[0x231901200](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_22F3D8298(uint64_t a1, void (*a2)(uint64_t, id), uint64_t a3, void *a4)
{
  v76 = sub_22F740C30();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v76);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v67 - v13;
  v92 = sub_22F740AD0();
  v95 = *(v92 - 8);
  v14 = *(v95 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DateAndLocation();
  v96 = *(v90 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4210, &qword_22F78AB88);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v93 = &v67 - v26;
  v27 = *(a1 + 16);
  if (!v27)
  {
    (a2)(MEMORY[0x277D84F98], 0, v25);
    return;
  }

  v68 = v8;
  v73 = v11;
  v69 = a3;
  v70 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4218, &unk_22F78AB90);
  v28 = swift_allocObject();
  v29 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v28 + 16) = MEMORY[0x277D84F98];
  v72 = v28 + 16;
  v30 = MEMORY[0x277D84F90];
  *(v28 + 32) = v29;
  *(v28 + 24) = v30;
  v71 = v28 + 24;
  v74 = a4;
  v31 = [a4 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v32 = sub_22F741180();

  v94 = dispatch_group_create();
  v33 = 0;
  v34 = *(v96 + 80);
  v35 = a1 + ((v34 + 32) & ~v34);
  v82 = *(v96 + 72);
  v36 = v32 & 0xFFFFFFFFFFFFFF8;
  v96 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 < 0)
  {
    v36 = v32;
  }

  v67 = v36;
  v88 = v32 & 0xC000000000000001;
  v83 = v34;
  v81 = (v34 + 24) & ~v34;
  v80 = (v16 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v95 + 8);
  v77 = v98;
  v85 = v22;
  v86 = v28;
  v84 = v27;
  v87 = v32;
  while (1)
  {
    sub_22F3DF188(v35, v22, type metadata accessor for DateAndLocation);
    if (v32 >> 62)
    {
      break;
    }

    if (v33 == *(v96 + 16))
    {
      goto LABEL_18;
    }

LABEL_7:
    if (v88)
    {
      v37 = MEMORY[0x2319016F0](v33, v32);
    }

    else
    {
      if (v33 >= *(v96 + 16))
      {
        __break(1u);
        sub_22F7411C0();
        sub_22F741220();
        swift_endAccess();
        [*(v28 + 32) unlock];

        goto LABEL_30;
      }

      v37 = *(v32 + 8 * v33 + 32);
    }

    v38 = v37;
    v39 = v93;
    sub_22F3DF250(v22, v93, type metadata accessor for DateAndLocation);
    sub_22F3DF250(v39, v19, type metadata accessor for DateAndLocation);
    sub_22F741690();
    v40 = v94;
    dispatch_group_enter(v94);
    v41 = v89;
    v95 = *&v19[*(v90 + 20)];
    sub_22F3DF188(v19, v89, type metadata accessor for DateAndLocation);
    v42 = v79;
    v43 = swift_allocObject();
    *(v43 + 16) = v28;
    sub_22F3DF250(v41, v43 + v81, type metadata accessor for DateAndLocation);
    *(v43 + v80) = v38;
    *(v43 + v42) = v40;

    v44 = v38;
    v45 = v40;
    sub_22F741740();
    v46 = v19;
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    ++v33;
    v47 = v91;
    sub_22F740AC0();
    sub_22F740A90();
    (*v78)(v47, v92);
    v48 = objc_opt_self();
    v49 = sub_22F73F5B0();
    v50 = swift_allocObject();
    *(v50 + 16) = "ShazamClient Fetch Popular Music";
    *(v50 + 24) = 32;
    *(v50 + 32) = 2;
    *(v50 + 40) = sub_22F3DEF28;
    *(v50 + 48) = v43;
    v98[2] = sub_22F2F99AC;
    v98[3] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v98[0] = sub_22F2F99BC;
    v98[1] = &block_descriptor_37_0;
    v51 = _Block_copy(aBlock);

    [v48 affinityGroupsForLocation:v95 atDate:v49 completionHandler:{v51, v67}];
    _Block_release(v51);

    sub_22F3DF1F0(v46, type metadata accessor for DateAndLocation);
    v35 += v82;
    v19 = v46;
    v22 = v85;
    v28 = v86;
    v32 = v87;
    if (v84 == v33)
    {

      goto LABEL_19;
    }
  }

  if (v33 != sub_22F741A00())
  {
    goto LABEL_7;
  }

LABEL_18:

  sub_22F3DF1F0(v22, type metadata accessor for DateAndLocation);
LABEL_19:
  v52 = (v68 + 8);
  v53 = 7;
  v54 = v76;
  while (1)
  {
    v55 = v73;
    sub_22F740C10();
    if (qword_2810AA938 != -1)
    {
      swift_once();
    }

    v56 = sub_22F740BB0();
    __swift_project_value_buffer(v56, qword_2810AA940);
    v57 = v75;
    sub_22F740C20();
    v58 = *v52;
    (*v52)(v55, v54);
    v59 = sub_22F741610();
    v58(v57, v54);
    if ((v59 & 1) == 0)
    {
      break;
    }

    if (!--v53)
    {
      [*(v28 + 32) lock];
      swift_beginAccess();
      sub_22F3DEFD4();
      v60 = swift_allocError();
      *v61 = 1;
      sub_22F73F360();
      MEMORY[0x231900D00]();
      if (*((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      swift_endAccess();

      [*(v28 + 32) unlock];
      break;
    }

    sub_22F741690();
  }

  sub_22F7416A0();
LABEL_30:
  swift_beginAccess();
  v62 = *(v28 + 16);
  v63 = *(v28 + 24);

  v65 = sub_22F3D91C0(v64);

  v70(v62, v65);
}

void sub_22F3D8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = *a1;
  if (*(a1 + 9))
  {
    v8 = *(a1 + 8);
    [*(a2 + 32) lock];
    swift_beginAccess();
    sub_22F3DF028();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v8 & 1;
    v11 = v7;
    sub_22F73F360();
    MEMORY[0x231900D00]();
    if (*((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();

    [*(a2 + 32) unlock];
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    sub_22F3D40A0(sub_22F3DF080);
  }

  sub_22F7416A0();
  dispatch_group_leave(a5);
}

uint64_t sub_22F3D914C(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_22F1332C4(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

id sub_22F3D91C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2319016F0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 description];
        v8 = sub_22F740E20();
        v10 = v9;

        MEMORY[0x231900B10](v8, v10);

        MEMORY[0x231900B10](10272, 0xE200000000000000);
        [v5 code];
        v11 = sub_22F742010();
        MEMORY[0x231900B10](v11);

        MEMORY[0x231900B10](41, 0xE100000000000000);
        MEMORY[0x231900B10](8316, 0xE200000000000000);

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      if (sub_22F741A00() <= 0)
      {
        break;
      }

      v2 = sub_22F741A00();
      if (!v2)
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E40, &unk_22F78A560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F771340;
        v13 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v14;
        *(inited + 48) = 0;
        *(inited + 56) = 0xE000000000000000;
        v15 = sub_22F14F0AC(inited);
        swift_setDeallocating();
        sub_22F120ADC(inited + 32, &qword_27DAB0E48, &unk_22F7711F0);
        v16 = @"PGErrorDomain";
        sub_22F215428(v15);

        v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v18 = sub_22F740C80();

        v19 = [v17 initWithDomain:v16 code:-1 userInfo:v18];

        return v19;
      }
    }
  }

  return 0;
}

id MusicForMomentCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForMomentCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForMomentCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3D9588(uint64_t a1)
{
  sub_22F742170();
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578]);
  sub_22F740D50();
  v3 = *(v1 + *(a1 + 20));
  sub_22F741820();
  return sub_22F7421D0();
}

uint64_t sub_22F3D962C(uint64_t a1, uint64_t a2)
{
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578]);
  sub_22F740D50();
  v4 = *(v2 + *(a2 + 20));
  return sub_22F741820();
}

uint64_t sub_22F3D96B8(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578]);
  sub_22F740D50();
  v4 = *(v2 + *(a2 + 20));
  sub_22F741820();
  return sub_22F7421D0();
}

uint64_t sub_22F3D9758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22F73F630() & 1) == 0)
  {
    return 0;
  }

  sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_22F741810() & 1;
}

uint64_t sub_22F3D97CC(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
    v10 = sub_22F741AD0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_22F3DE004(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
      v18 = sub_22F740D40();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_22F3DE004(&unk_2810AC6C0, MEMORY[0x277CC99D0]);
          v25 = sub_22F740DE0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22F3D9AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22F742170();

      sub_22F740D60();
      result = sub_22F7421D0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22F742040();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22F3D9C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4268, &qword_22F78ABE0);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_22F742170();
      MEMORY[0x231901D30](v10);
      result = sub_22F7421D0();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22F3D9D90(void *a1, void *a2)
{
  v190 = a2;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4258, &qword_22F78ABD0);
  v187 = *(v198 - 8);
  v3 = *(v187 + 64);
  MEMORY[0x28223BE20](v198);
  v194 = (&v186 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4260, &qword_22F78ABD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v197 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v196 = (&v186 - v9);
  v210 = type metadata accessor for SongSource();
  v193 = *(v210 - 1);
  v10 = *(v193 + 64);
  MEMORY[0x28223BE20](v210);
  v199 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v192 = &v186 - v13;
  MEMORY[0x28223BE20](v14);
  v191 = &v186 - v15;
  MEMORY[0x28223BE20](v16);
  v209 = (&v186 - v17);
  MEMORY[0x28223BE20](v18);
  v208 = &v186 - v19;
  v223 = sub_22F73F270();
  v20 = *(v223 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v223);
  v222 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_22F73F9B0();
  v23 = *(v221 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v221);
  v220 = (&v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v189 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v207 = &v186 - v30;
  MEMORY[0x28223BE20](v31);
  v232 = (&v186 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v186 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v186 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v186 - v41;
  v240 = sub_22F73F690();
  v195 = *(v240 - 8);
  v43 = v195[8];
  MEMORY[0x28223BE20](v240);
  v188 = &v186 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v206 = &v186 - v46;
  MEMORY[0x28223BE20](v47);
  v231 = &v186 - v48;
  MEMORY[0x28223BE20](v49);
  v219 = &v186 - v50;
  if (qword_2810A9B18 != -1)
  {
    swift_once();
  }

  v51 = qword_2810B4E18;
  *&v52 = CACurrentMediaTime();
  sub_22F1B560C("MusicForMomentPruneSourcesPerformance", 37, 2u, v52, 0, v51, v244);
  v53 = sub_22F7416D0();
  v201 = v54;
  v202 = v55;
  v245 = MEMORY[0x277D84FA0];
  v56 = [a1 fetchedObjects];
  if (v56)
  {
    v57 = v56;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v58 = sub_22F741180();

    v59 = v58;
    if (!(v58 >> 62))
    {
LABEL_5:
      result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }
  }

  result = sub_22F741A00();
LABEL_6:
  v203 = v53;
  if (!result)
  {

LABEL_32:
    v118 = v200;
    sub_22F7416A0();
    if (v118)
    {
    }

    else
    {
      v119 = sub_22F1A26E0(v190);
      v120 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_22F770DF0;
      *(v122 + 56) = MEMORY[0x277D837D0];
      v123 = sub_22F153470();
      *(v122 + 64) = v123;
      *(v122 + 32) = 0x696669746E656469;
      *(v122 + 40) = 0xEA00000000007265;
      *(v122 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v122 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
      *(v122 + 72) = &unk_2843DCC18;
      v124 = sub_22F741560();
      v125 = sub_22F1935BC();
      v223 = v123;
      v126 = v125;

      v127 = sub_22F151E54(v126);

      if (*(v245 + 16) <= *(v127 + 16) >> 3)
      {
        v241 = v127;
        sub_22F3E80E4(v245);

        v129 = v241;
      }

      else
      {
        v128 = sub_22F1E9F0C(v245, v127);

        v129 = v128;
      }

      if (*(v129 + 16))
      {
        v221 = v121;
        v222 = v120;
        v227 = v119;
        v229 = 0;
        v130 = v129 + 56;
        v131 = -1 << *(v129 + 32);
        if (-v131 < 64)
        {
          v132 = ~(-1 << -v131);
        }

        else
        {
          v132 = -1;
        }

        v133 = v132 & *(v129 + 56);
        v216 = OBJC_IVAR___PGMusicCache_managedObjectContext;
        v215 = v131;
        v134 = (63 - v131) >> 6;
        v238 = (v187 + 56);
        v237 = (v187 + 48);
        v228 = (v195 + 6);
        v220 = (v195 + 4);
        v219 = "N %@ && %K IN %@";
        v217 = (v195 + 1);
        v233 = v129;

        v135 = 0;
        v136 = 0;
        v218 = xmmword_22F777170;
        v232 = v130;
        while (1)
        {
          v236 = v133;
          v235 = v136;
          if (!v133)
          {
            if (v134 <= v136 + 1)
            {
              v139 = v136 + 1;
            }

            else
            {
              v139 = v134;
            }

            v140 = v139 - 1;
            v141 = v136;
            while (1)
            {
              v138 = v141 + 1;
              if (__OFADD__(v141, 1))
              {
                break;
              }

              if (v138 >= v134)
              {
                v148 = v197;
                v144 = v198;
                (*v238)(v197, 1, 1, v198);
                v239 = 0;
                v138 = v140;
                goto LABEL_57;
              }

              v137 = *(v130 + 8 * v138);
              v141 = (v141 + 1);
              if (v137)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_71:

            v185 = v230;

            sub_22F0FF590();

            (*v217)(v188, v240);
            return sub_22F3DF1F0(v199, type metadata accessor for SongSource);
          }

          v137 = v133;
          v138 = v136;
LABEL_55:
          v142 = v192;
          sub_22F3DF188(*(v233 + 48) + *(v193 + 72) * (__clz(__rbit64(v137)) | (v138 << 6)), v192, type metadata accessor for SongSource);
          v143 = v191;
          sub_22F3DF250(v142, v191, type metadata accessor for SongSource);
          v144 = v198;
          v145 = *(v198 + 48);
          v146 = v194;
          *v194 = v135;
          result = sub_22F3DF250(v143, v146 + v145, type metadata accessor for SongSource);
          if (__OFADD__(v135++, 1))
          {
            __break(1u);
            goto LABEL_73;
          }

          v239 = ((v137 - 1) & v137);
          v148 = v197;
          sub_22F1207AC(v146, v197, &qword_27DAB4258, &qword_22F78ABD0);
          (*v238)(v148, 0, 1, v144);
          v53 = v203;
          v130 = v232;
LABEL_57:
          v149 = v196;
          sub_22F1207AC(v148, v196, &qword_27DAB4260, &qword_22F78ABD8);
          v150 = (*v237)(v149, 1, v144);
          v151 = v199;
          if (v150 == 1)
          {
            sub_22F0FF590();

            v183 = v202;
            v184 = v201;
            v119 = v227;
            goto LABEL_69;
          }

          v234 = *v149;
          sub_22F3DF250(v149 + *(v144 + 48), v199, type metadata accessor for SongSource);
          v152 = v151 + v210[9];
          if (*(v152 + 8))
          {
            break;
          }

          v153 = v151 + v210[10];
          if (*(v153 + 8))
          {
            break;
          }

          v154 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v152 longitude:*v153];
          if (!v154)
          {
            break;
          }

          v231 = v154;
          v155 = v189;
          sub_22F13BA9C(v151 + v210[7], v189, &qword_27DAB0920, &qword_22F770B20);
          if ((*v228)(v155, 1, v240) == 1)
          {

            sub_22F3DF1F0(v151, type metadata accessor for SongSource);
            sub_22F120ADC(v155, &qword_27DAB0920, &qword_22F770B20);
LABEL_45:
            v136 = v138;
            v133 = v239;
          }

          else
          {
            (*v220)(v188, v155, v240);
            v156 = *(v151 + 8);
            v230 = *v151;
            v157 = [objc_opt_self() ignoreProgress];
            type metadata accessor for Geohash();
            inited = swift_initStackObject();
            *(inited + 16) = 0;
            *(inited + 24) = 0;
            v159 = v231;
            [v231 coordinate];
            v161 = v160;
            [v159 coordinate];
            v226 = sub_22F34AF8C(4, v161, v162);
            v164 = v163;
            swift_setDeallocating();
            v165 = *(inited + 16);

            v166 = *(inited + 24);

            v167 = swift_allocObject();
            *(v167 + 16) = v218;
            v168 = MEMORY[0x277D837D0];
            v169 = v223;
            *(v167 + 56) = MEMORY[0x277D837D0];
            *(v167 + 64) = v169;
            *(v167 + 32) = 0x696669746E656469;
            *(v167 + 40) = 0xEA00000000007265;
            *(v167 + 96) = v168;
            *(v167 + 104) = v169;
            *(v167 + 72) = v230;
            *(v167 + 80) = v156;
            *(v167 + 136) = v168;
            *(v167 + 144) = v169;
            *(v167 + 112) = 0x687361686F6567;
            *(v167 + 120) = 0xE700000000000000;
            *(v167 + 176) = v168;
            *(v167 + 184) = v169;
            *(v167 + 152) = v226;
            *(v167 + 160) = v164;
            *(v167 + 216) = v168;
            *(v167 + 224) = v169;
            *(v167 + 192) = 1702125924;
            *(v167 + 200) = 0xE400000000000000;

            v53 = v157;
            v170 = sub_22F73F5B0();
            *(v167 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
            *(v167 + 264) = sub_22F15FD58();
            *(v167 + 232) = v170;
            v230 = sub_22F741560();
            v171 = v229;
            sub_22F741690();
            if (v171)
            {
              goto LABEL_71;
            }

            v229 = v157;
            v172 = sub_22F7416F0();
            v226 = &v186;
            v173 = v242;
            v174 = v243;
            v175 = *&v227[v216];
            MEMORY[0x28223BE20](v172);
            *(&v186 - 10) = v230;
            *(&v186 - 9) = v176;
            v225 = v177;
            *(&v186 - 8) = v177;
            *(&v186 - 7) = v178;
            v224 = v178;
            *(&v186 - 48) = 0;
            *(&v186 - 5) = 0;
            *(&v186 - 4) = v179;
            v180 = v179;
            *(&v186 - 3) = v173;
            *(&v186 - 2) = v174;
            sub_22F7417A0();
            v53 = v203;

            v181 = v230;
            result = v234 + 1;
            if (__OFADD__(v234, 1))
            {
              goto LABEL_74;
            }

            v182 = *(v233 + 16);
            sub_22F741680();
            v229 = 0;
            (*v217)(v188, v240);

            sub_22F3DF1F0(v199, type metadata accessor for SongSource);
            v136 = v138;
            v133 = v239;
            v130 = v232;
          }
        }

        sub_22F3DF1F0(v151, type metadata accessor for SongSource);
        goto LABEL_45;
      }

      v183 = v202;
      sub_22F7416A0();
      v184 = v201;
LABEL_69:
      sub_22F1B2BBC(0);
    }
  }

  v224 = result;
  if (result >= 1)
  {
    v61 = 0;
    v236 = v59 & 0xC000000000000001;
    v235 = v195 + 7;
    v230 = v195 + 6;
    v229 = v195 + 4;
    LODWORD(v215) = *MEMORY[0x277CC9988];
    v214 = (v20 + 8);
    v213 = *MEMORY[0x277CC9998];
    v212 = (v23 + 8);
    v226 = (v195 + 1);
    v205 = (v195 + 2);
    v211 = xmmword_22F770DF0;
    v204 = xmmword_22F78AAB0;
    v62 = v224;
    *&v218 = v35;
    v217 = v38;
    v227 = v42;
    v216 = v59;
    while (1)
    {
      if (v236)
      {
        v64 = MEMORY[0x2319016F0](v61, v59);
      }

      else
      {
        v64 = *(v59 + 8 * v61 + 32);
      }

      v65 = v64;
      v66 = [v65 approximateLocation];
      if (v66)
      {
        v237 = v66;
        v238 = v61;
        v67 = [v65 startDate];
        v239 = v65;
        if (v67)
        {
          v68 = v67;
          sub_22F73F640();

          v69 = 0;
        }

        else
        {
          v69 = 1;
        }

        v70 = v240;
        v233 = *v235;
        (v233)(v35, v69, 1, v240);
        sub_22F1207AC(v35, v38, &qword_27DAB0920, &qword_22F770B20);
        v234 = *v230;
        if (v234(v38, 1, v70) == 1)
        {

          v71 = v239;
          sub_22F120ADC(v38, &qword_27DAB0920, &qword_22F770B20);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          (*(*(v72 - 8) + 56))(v42, 1, 1, v72);
        }

        else
        {
          v73 = v240;
          v228 = *v229;
          v228(v231, v38, v240);
          v74 = v220;
          sub_22F73F970();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
          v75 = sub_22F73F990();
          v76 = *(v75 - 8);
          v77 = *(v76 + 72);
          v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = v211;
          v80 = v79 + v78;
          v81 = *(v76 + 104);
          v81(v80, v215, v75);
          v82 = v80 + v77;
          v83 = v73;
          v84 = v232;
          v81(v82, v213, v75);
          sub_22F3D97CC(v79);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v85 = v222;
          v86 = v231;
          sub_22F73F860();

          sub_22F73F920();

          (*v214)(v85, v223);
          (*v212)(v74, v221);
          v225 = *v226;
          (v225)(v86, v83);
          if (v234(v84, 1, v83) == 1)
          {

            sub_22F120ADC(v232, &qword_27DAB0920, &qword_22F770B20);
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v42 = v227;
            (*(*(v87 - 8) + 56))(v227, 1, 1, v87);
            v88 = v228;
          }

          else
          {
            v89 = v206;
            v90 = v240;
            v88 = v228;
            v228(v206, v232, v240);
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v92 = *(v91 + 48);
            v42 = v227;
            v88(v227, v89, v90);
            *&v42[v92] = v237;
            (*(*(v91 - 8) + 56))(v42, 0, 1, v91);
          }

          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          if ((*(*(v93 - 8) + 48))(v42, 1, v93) != 1)
          {
            v94 = *&v42[*(v93 + 48)];
            v95 = v219;
            v88(v219, v42, v240);
            v96 = v207;
            (*v205)(v207, v95, v240);
            (v233)(v96, 0, 1, v240);
            v97 = v209;
            *v209 = 0x6D617A616873;
            v97[1] = 0xE600000000000000;
            v98 = v210;
            v99 = (v97 + v210[11]);
            *v99 = 0;
            v99[1] = 0;
            sub_22F13BA9C(v96, v97 + v98[7], &qword_27DAB0920, &qword_22F770B20);
            *(v97 + v98[12]) = v204;
            type metadata accessor for Geohash();
            v100 = swift_initStackObject();
            *(v100 + 16) = 0;
            *(v100 + 24) = 0;
            v101 = v94;
            [v101 coordinate];
            v103 = v102;
            [v101 coordinate];
            v105 = sub_22F34AF8C(4, v103, v104);
            v107 = v106;
            swift_setDeallocating();
            v108 = *(v100 + 16);

            v109 = *(v100 + 24);

            v110 = (v97 + v98[8]);
            *v110 = v105;
            v110[1] = v107;
            [v101 coordinate];
            v111 = v97 + v98[9];
            *v111 = v112;
            v111[8] = 0;
            [v101 coordinate];
            v114 = v113;

            v115 = v240;
            v42 = v227;
            sub_22F120ADC(v96, &qword_27DAB0920, &qword_22F770B20);
            v116 = v97 + v98[10];
            *v116 = v114;
            v116[8] = 0;
            (v233)(v97 + v98[5], 1, 1, v115);
            *(v97 + v98[6]) = 0;
            *(v97 + v98[13]) = 0;
            v117 = v208;
            sub_22F10D88C(v208, v97);

            sub_22F3DF1F0(v117, type metadata accessor for SongSource);
            (v225)(v219, v115);
            v35 = v218;
            v38 = v217;
            v59 = v216;
            v62 = v224;
            v61 = v238;
            goto LABEL_11;
          }

          v35 = v218;
          v38 = v217;
          v59 = v216;
          v62 = v224;
        }

        v61 = v238;
      }

      else
      {

        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v63 - 8) + 56))(v42, 1, 1, v63);
      }

      sub_22F120ADC(v42, &qword_27DAB2AF8, &qword_22F77F300);
LABEL_11:
      v61 = (v61 + 1);
      if (v62 == v61)
      {

        v53 = v203;
        goto LABEL_32;
      }
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_22F3DBCA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4250, &qword_22F78ABC8);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22F740E20();
      sub_22F742170();
      v29 = v7;
      sub_22F740D60();
      v9 = sub_22F7421D0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22F740E20();
        v20 = v19;
        if (v18 == sub_22F740E20() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22F742040();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void _s11PhotosGraph20MusicForMomentCacherC13datePredicateSo11NSPredicateCvgZ_0()
{
  v0 = sub_22F73F690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F7727B0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_22F153470();
  *(v11 + 64) = v13;
  *(v11 + 32) = 0x65746144646E65;
  *(v11 + 40) = 0xE700000000000000;
  sub_22F73F680();
  sub_22F73F5A0();
  v14 = *(v1 + 8);
  v14(v7, v0);
  v15 = sub_22F73F5B0();
  v14(v10, v0);
  v16 = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v11 + 96) = v16;
  v17 = sub_22F15FD58();
  *(v11 + 72) = v15;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 104) = v17;
  *(v11 + 112) = 0x7461447472617473;
  *(v11 + 120) = 0xE900000000000065;
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v18 = qword_2810A9170;
  v19 = sub_22F740DF0();
  v20 = [v18 dateFromString_];

  if (v20)
  {
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    sub_22F73F640();

    v21 = sub_22F73F5B0();
    v14(v4, v0);
    *(v11 + 176) = v16;
    *(v11 + 184) = v17;
    *(v11 + 152) = v21;
    sub_22F741560();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F3DC190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_22F73F690();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v16, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_27DAB1DA0;
    v23 = &unk_22F7771B0;
    v24 = v16;
LABEL_5:
    sub_22F120ADC(v24, v22, v23);
    LOBYTE(v27) = 1;
    return v27 & 1;
  }

  sub_22F3DF250(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v42;
  v25 = v43;
  if ((*(v42 + 48))(v7, 1, v43) == 1)
  {
    sub_22F3DF1F0(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v41;
  (*(v26 + 32))(v41, v7, v25);
  sub_22F1E3F74(v47);
  memcpy(v48, v47, 0x121uLL);
  if (sub_22F1EDAB8(v48) == 1)
  {
    GEOLocationCoordinate2DMake(v48);
    memcpy(v45, v47, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v27 = *v30;
    v46 = *v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F3DF1F0(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v48);
    sub_22F120ADC(v47, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v45, v47, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v32 = v31;
    v27 = v38;
    sub_22F73F680();
    sub_22F73F590();
    v34 = v33;
    v35 = v29;
    v36 = *(v26 + 8);
    v36(v27, v25);
    LOBYTE(v27) = v39;
    v37 = v44;
    sub_22F7416A0();
    if (!v37)
    {
      LOBYTE(v27) = *(v32 + 80) < v34;
    }

    v36(v35, v25);
    sub_22F3DF1F0(v21, type metadata accessor for CacherStatus);
  }

  return v27 & 1;
}

id sub_22F3DC674(void *a1)
{
  sub_22F741690();
  if (!v1)
  {
    v4 = [a1 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22F771350;
    v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v7 = sub_22F740DF0();
    v8 = [v6 initWithKey:v7 ascending:0];

    *(v5 + 32) = v8;
    v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v10 = sub_22F740DF0();
    v11 = [v9 initWithKey:v10 ascending:0];

    *(v5 + 40) = v11;
    sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
    v12 = sub_22F741160();

    [v4 setSortDescriptors_];

    _s11PhotosGraph20MusicForMomentCacherC13datePredicateSo11NSPredicateCvgZ_0();
    v14 = v13;
    [v4 setPredicate_];

    v2 = [objc_opt_self() fetchMomentsWithOptions_];
    sub_22F7416A0();
  }

  return v2;
}

uint64_t sub_22F3DC858(void *a1, uint64_t a2, uint64_t a3)
{
  v161 = type metadata accessor for DateAndLocation();
  v160 = *(v161 - 8);
  v6 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v163 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v159 - v9;
  v182 = type metadata accessor for SongSource();
  v166 = *(v182 - 8);
  v10 = *(v166 + 64);
  MEMORY[0x28223BE20](v182);
  v170 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v165 = &v159 - v13;
  MEMORY[0x28223BE20](v14);
  v181 = (&v159 - v15);
  MEMORY[0x28223BE20](v16);
  v180 = &v159 - v17;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D28, &unk_22F772010);
  v178 = *(v179 - 8);
  v18 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v195 = &v159 - v19;
  v194 = sub_22F73F270();
  v20 = *(v194 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22F73F9B0();
  v214 = *(v192 - 8);
  v23 = *(v214 + 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v164 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v177 = &v159 - v29;
  MEMORY[0x28223BE20](v30);
  v190 = &v159 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v159 - v33;
  MEMORY[0x28223BE20](v35);
  v197 = &v159 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v202 = &v159 - v39;
  v207 = sub_22F73F690();
  v174 = *(v207 - 8);
  v40 = *(v174 + 64);
  MEMORY[0x28223BE20](v207);
  v167 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v176 = &v159 - v43;
  MEMORY[0x28223BE20](v44);
  v206 = (&v159 - v45);
  MEMORY[0x28223BE20](v46);
  v200 = &v159 - v47;
  v48 = sub_22F7416D0();
  v50 = v49;
  v52 = v51;
  v216 = MEMORY[0x277D84FA0];
  v53 = [a1 fetchedObjects];
  if (v53)
  {
    v54 = v53;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v55 = sub_22F741180();
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  v212 = v55;
  if (v55 >> 62)
  {
    result = sub_22F741A00();
    if (result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_6:
      v201 = result;
      if (result < 1)
      {
        goto LABEL_57;
      }

      v168 = a3;
      v169 = a2;
      v171 = v48;
      v172 = v50;
      v173 = v52;
      v57 = 0;
      v211 = (v212 & 0xC000000000000001);
      v210 = (v174 + 56);
      v204 = (v174 + 32);
      v205 = (v174 + 48);
      v188 = *MEMORY[0x277CC9988];
      v187 = *MEMORY[0x277CC9998];
      v186 = (v20 + 8);
      v185 = (v214 + 8);
      v199 = (v174 + 8);
      v184 = (v174 + 16);
      v196 = MEMORY[0x277D84F90];
      v183 = xmmword_22F770DF0;
      v58 = v207;
      v59 = v197;
      v61 = v201;
      v60 = v202;
      v189 = v34;
      while (1)
      {
        if (v211)
        {
          v63 = MEMORY[0x2319016F0](v57, v212);
        }

        else
        {
          v63 = *(v212 + 8 * v57 + 32);
        }

        v64 = v63;
        v65 = [v64 approximateLocation];
        if (v65)
        {
          v66 = v65;
          v213 = v57;
          v214 = v64;
          v67 = [v64 startDate];
          if (v67)
          {
            v68 = v67;
            sub_22F73F640();

            v69 = 0;
          }

          else
          {
            v69 = 1;
          }

          v208 = *v210;
          (v208)(v34, v69, 1, v58);
          sub_22F1207AC(v34, v59, &qword_27DAB0920, &qword_22F770B20);
          v209 = *v205;
          if ((v209)(v59, 1, v58) == 1)
          {

            v70 = v214;
            sub_22F120ADC(v59, &qword_27DAB0920, &qword_22F770B20);
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            (*(*(v71 - 8) + 56))(v60, 1, 1, v71);
            v57 = v213;
          }

          else
          {
            v203 = *v204;
            v203(v206, v59, v58);
            v72 = v191;
            sub_22F73F970();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
            v73 = sub_22F73F990();
            v74 = *(v73 - 8);
            v75 = *(v74 + 72);
            v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v77 = swift_allocObject();
            *(v77 + 16) = v183;
            v78 = v77 + v76;
            v79 = *(v74 + 104);
            v79(v78, v188, v73);
            v80 = v78 + v75;
            v81 = v207;
            v79(v80, v187, v73);
            sub_22F3D97CC(v77);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v82 = v193;
            v83 = v206;
            sub_22F73F860();

            v84 = v190;
            sub_22F73F920();

            (*v186)(v82, v194);
            (*v185)(v72, v192);
            v198 = *v199;
            v198(v83, v81);
            if ((v209)(v84, 1, v81) == 1)
            {

              sub_22F120ADC(v84, &qword_27DAB0920, &qword_22F770B20);
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
              v60 = v202;
              (*(*(v85 - 8) + 56))(v202, 1, 1, v85);
              v86 = v203;
            }

            else
            {
              v87 = v176;
              v88 = v203;
              v203(v176, v84, v81);
              v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
              v90 = *(v89 + 48);
              v60 = v202;
              v88(v202, v87, v81);
              *(v60 + v90) = v66;
              (*(*(v89 - 8) + 56))(v60, 0, 1, v89);
              v86 = v88;
            }

            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v92 = (*(*(v91 - 8) + 48))(v60, 1, v91);
            v61 = v201;
            if (v92 != 1)
            {
              v93 = *(v60 + *(v91 + 48));
              v94 = v200;
              v95 = v207;
              v86(v200, v60, v207);
              v96 = *(v179 + 48);
              v97 = *(v179 + 64);
              v98 = v195;
              *v195 = 0x6D617A616873;
              *(v98 + 1) = 0xE600000000000000;
              v99 = *v184;
              (*v184)(&v98[v96], v94, v95);
              *&v98[v97] = v93;
              v100 = v93;
              v101 = v196;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_22F140310(0, v101[2] + 1, 1, v101);
              }

              v103 = v101[2];
              v102 = v101[3];
              if (v103 >= v102 >> 1)
              {
                v101 = sub_22F140310(v102 > 1, v103 + 1, 1, v101);
              }

              v101[2] = v103 + 1;
              v104 = (*(v178 + 80) + 32) & ~*(v178 + 80);
              v196 = v101;
              sub_22F1207AC(v195, v101 + v104 + *(v178 + 72) * v103, &qword_27DAB0D28, &unk_22F772010);
              v105 = v177;
              v58 = v207;
              v99(v177, v200, v207);
              (v208)(v105, 0, 1, v58);
              v106 = v181;
              *v181 = 0x6D617A616873;
              v106[1] = 0xE600000000000000;
              v107 = v182;
              v108 = (v106 + *(v182 + 44));
              *v108 = 0;
              v108[1] = 0;
              sub_22F13BA9C(v105, v106 + v107[7], &qword_27DAB0920, &qword_22F770B20);
              v109 = (v106 + v107[12]);
              type metadata accessor for Geohash();
              *v109 = 0;
              v109[1] = 0;
              inited = swift_initStackObject();
              *(inited + 16) = 0;
              *(inited + 24) = 0;
              v111 = v100;
              [v111 coordinate];
              v113 = v112;
              [v111 coordinate];
              v115 = sub_22F34AF8C(4, v113, v114);
              v117 = v116;
              swift_setDeallocating();
              v118 = *(inited + 16);

              v119 = *(inited + 24);

              v120 = (v106 + v107[8]);
              *v120 = v115;
              v120[1] = v117;
              [v111 coordinate];
              v121 = v106 + v107[9];
              *v121 = v122;
              v121[8] = 0;
              [v111 coordinate];
              v124 = v123;

              sub_22F120ADC(v105, &qword_27DAB0920, &qword_22F770B20);
              v125 = v106 + v107[10];
              *v125 = v124;
              v125[8] = 0;
              (v208)(v106 + v107[5], 1, 1, v58);
              *(v106 + v107[6]) = 0;
              *(v106 + v107[13]) = 0;
              v126 = v180;
              sub_22F10D88C(v180, v106);

              sub_22F3DF1F0(v126, type metadata accessor for SongSource);
              v198(v200, v58);
              v34 = v189;
              v59 = v197;
              v61 = v201;
              v60 = v202;
              v57 = v213;
              goto LABEL_10;
            }

            v34 = v189;
            v59 = v197;
            v57 = v213;
            v58 = v207;
          }
        }

        else
        {

          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
        }

        sub_22F120ADC(v60, &qword_27DAB2AF8, &qword_22F77F300);
LABEL_10:
        if (v61 == ++v57)
        {

          v52 = v173;
          v50 = v172;
          v48 = v171;
          a3 = v168;
          v127 = v196;
          goto LABEL_33;
        }
      }
    }
  }

  v127 = MEMORY[0x277D84F90];
LABEL_33:
  v128 = v175;
  sub_22F7416A0();
  if (v128)
  {
  }

  v129 = sub_22F1620AC(v127);

  v215 = 3;
  v130 = MusicCache.readSongSources(identifiersDatesAndLocations:locationTolerance:progressReporter:)(v129, &v215, a3);

  v131 = sub_22F151E54(v130);

  sub_22F3E80E4(v131);

  result = sub_22F7416A0();
  v171 = v48;
  v172 = v50;
  v173 = v52;
  v132 = 0;
  v134 = v216 + 56;
  v133 = *(v216 + 56);
  v214 = v216;
  v135 = 1 << *(v216 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & v133;
  v138 = (v135 + 63) >> 6;
  v210 = (v174 + 32);
  v211 = (v174 + 48);
  v209 = (v174 + 8);
  v206 = (v174 + 16);
  v208 = MEMORY[0x277D84F90];
  v139 = &qword_27DAB0920;
  v212 = v138;
  v213 = v216 + 56;
  while (v137)
  {
LABEL_45:
    v141 = __clz(__rbit64(v137));
    v137 &= v137 - 1;
    v142 = v165;
    sub_22F3DF188(*(v214 + 6) + *(v166 + 72) * (v141 | (v132 << 6)), v165, type metadata accessor for SongSource);
    v143 = v142;
    v144 = v170;
    sub_22F3DF250(v143, v170, type metadata accessor for SongSource);
    v145 = v182;
    v146 = v164;
    sub_22F13BA9C(v144 + *(v182 + 28), v164, v139, &qword_22F770B20);
    v147 = v139;
    v148 = v207;
    if ((*v211)(v146, 1, v207) == 1)
    {
      sub_22F3DF1F0(v144, type metadata accessor for SongSource);
      result = sub_22F120ADC(v146, v147, &qword_22F770B20);
      goto LABEL_39;
    }

    (*v210)(v167, v146, v148);
    v149 = v144 + *(v145 + 36);
    if (*(v149 + 8) & 1) != 0 || (v150 = v144 + *(v145 + 40), (*(v150 + 8)) || (v151 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v149 longitude:*v150], v144 = v170, !v151))
    {
      (*v209)(v167, v207);
      result = sub_22F3DF1F0(v144, type metadata accessor for SongSource);
LABEL_39:
      v139 = v147;
      v138 = v212;
      v134 = v213;
    }

    else
    {
      v152 = v151;
      v153 = v162;
      (*v206)(v162, v167, v207);
      *(v153 + *(v161 + 20)) = v152;
      sub_22F3DF188(v153, v163, type metadata accessor for DateAndLocation);
      v154 = v208;
      v139 = v147;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_22F1402E8(0, *(v154 + 2) + 1, 1, v154);
      }

      v134 = v213;
      v156 = *(v154 + 2);
      v155 = *(v154 + 3);
      if (v156 >= v155 >> 1)
      {
        v154 = sub_22F1402E8(v155 > 1, v156 + 1, 1, v154);
      }

      sub_22F3DF1F0(v162, type metadata accessor for DateAndLocation);
      (*v209)(v167, v207);
      sub_22F3DF1F0(v170, type metadata accessor for SongSource);
      *(v154 + 2) = v156 + 1;
      v157 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v208 = v154;
      result = sub_22F3DF250(v163, v154 + v157 + *(v160 + 72) * v156, type metadata accessor for DateAndLocation);
      v138 = v212;
    }
  }

  while (1)
  {
    v140 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      break;
    }

    if (v140 >= v138)
    {

      v158 = v173;
      sub_22F7416A0();

      return v208;
    }

    v137 = *(v134 + 8 * v140);
    ++v132;
    if (v137)
    {
      v132 = v140;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DateAndLocation()
{
  result = qword_2810AB920;
  if (!qword_2810AB920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F3DDF28()
{
  result = sub_22F73F690();
  if (v1 <= 0x3F)
  {
    result = sub_22F120634(319, &qword_27DAB0960, 0x277CE41F8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F3DE004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F3DE04C(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v97 = a3;
  v7 = sub_22F740C00();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v95 = *(v10 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v85 - v13;
  v15 = type metadata accessor for CacherStatusUpdater(0);
  v98 = *(v15 - 8);
  v16 = v98[8];
  MEMORY[0x28223BE20](v15);
  v18 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v85 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  v101 = a4;
  _Block_copy(a4);
  v100 = a2;
  v27 = sub_22F7416B0();
  v102 = v28;
  v103 = v27;
  v29 = sub_22F1A26E0(a1);
  v90 = a1;
  v91 = v22;
  v92 = v14;
  v93 = v18;
  v94 = v26;
  v30 = 0x726F46636973756DLL;
  v31 = v29;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v32 = v31;
  v33 = sub_22F1ED5B0(v31);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v25);
  v37 = sub_22F3DC190(v25, v33, v103);
  v38 = v25;
  v39 = v33;
  v40 = v102;
  v89 = v39;
  if (v37)
  {
    v41 = v91;
    sub_22F13BA9C(v25, v91, &qword_27DAB1DA0, &unk_22F7771B0);
    v42 = type metadata accessor for CacherStatus(0);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v86 = 0;
    v87 = v32;
    if (v43 == 1)
    {
      sub_22F120ADC(v41, &qword_27DAB1DA0, &unk_22F7771B0);
      v45 = v92;
      v44 = v93;
      v47 = v98;
      v46 = v99;
      v48 = 0xEE00746E656D6F4DLL;
    }

    else
    {
      v49 = v25;
      v51 = *v41;
      v50 = v41[1];

      sub_22F3DF1F0(v41, type metadata accessor for CacherStatus);
      if (v50)
      {
        v30 = v51;
      }

      v48 = 0xEE00746E656D6F4DLL;
      if (v50)
      {
        v48 = v50;
      }

      v38 = v49;
      v45 = v92;
      v44 = v93;
      v47 = v98;
      v46 = v99;
    }

    v88 = v38;
    sub_22F13BA9C(v38, v44, &qword_27DAB1DA0, &unk_22F7771B0);
    v52 = (v44 + *(v15 + 20));
    *v52 = v30;
    v52[1] = v48;
    sub_22F3DF188(v44, v45, type metadata accessor for CacherStatusUpdater);
    (v47[7])(v45, 0, 1, v15);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_22F1E088C;
    *(v53 + 24) = v94;

    v54 = sub_22F7416E0();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_22F740BD0();
    v61 = v46;
    v62 = v86;
    v63 = sub_22F22FB24(v61, 0);
    if (v62)
    {

      sub_22F120ADC(v45, &qword_27DAB4208, &unk_22F78AAC8);
      sub_22F3DF1F0(v93, type metadata accessor for CacherStatusUpdater);
      sub_22F120ADC(v88, &qword_27DAB1DA0, &unk_22F7771B0);
      sub_22F7416A0();
      v34 = v62;
      v35 = sub_22F73F360();
      (v101)[2](v101, 0, v35);
    }

    else
    {
      v86 = v63;
      v98 = v56;
      v99 = v60;
      v91 = v53;
      v64 = v90;
      v65 = sub_22F3DC674(v90);
      v66 = sub_22F1A26E0(v64);
      v67 = sub_22F3DC858(v65, v66, v98);
      v68 = *(v67 + 16);
      if (v68)
      {
        v100 = v65;
        v101 = v54;
        v69 = v67;
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        v71 = v69;
        if (v68 <= 0xA)
        {
          v75 = v96;
          v76 = v97;
          v77 = v95;
          v90 = v71;
        }

        else
        {
          v72 = *(type metadata accessor for DateAndLocation() - 8);
          sub_22F10B040(v69, v69 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), 0, 0x15uLL);
          v74 = v73;
          *(v70 + 16) = v73;

          v90 = v74;
          v75 = v96;
          v76 = v97;
          v77 = v95;
        }

        sub_22F13BA9C(v92, v75, &qword_27DAB4208, &unk_22F78AAC8);
        v78 = (*(v77 + 80) + 80) & ~*(v77 + 80);
        v79 = swift_allocObject();
        v79[2] = v40;
        v79[3] = sub_22F3DF33C;
        v79[4] = v91;
        v79[5] = v70;
        v85[1] = v70;
        v79[6] = v66;
        v79[7] = v76;
        v80 = v99;
        v79[8] = v86;
        v79[9] = v80;
        sub_22F1207AC(v75, v79 + v78, &qword_27DAB4208, &unk_22F78AAC8);
        v81 = v90;

        v82 = v40;

        v83 = v66;

        v84 = v80;
        sub_22F3D7F74(v81, v58, sub_22F3DF338, v79);

        sub_22F120ADC(v92, &qword_27DAB4208, &unk_22F78AAC8);
        sub_22F3DF1F0(v93, type metadata accessor for CacherStatusUpdater);
        sub_22F120ADC(v88, &qword_27DAB1DA0, &unk_22F7771B0);
      }

      else
      {

        sub_22F7416A0();
        v101[2](v101, 1, 0);

        sub_22F120ADC(v92, &qword_27DAB4208, &unk_22F78AAC8);
        sub_22F3DF1F0(v93, type metadata accessor for CacherStatusUpdater);
        sub_22F120ADC(v88, &qword_27DAB1DA0, &unk_22F7771B0);
      }
    }
  }

  else
  {
    sub_22F7416A0();
    v101[2](v101, 1, 0);

    sub_22F120ADC(v25, &qword_27DAB1DA0, &unk_22F7771B0);
  }
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = *(v0 + 40);

  v7 = *(v0 + 64);

  v8 = v0 + v3;
  v9 = type metadata accessor for CacherStatusUpdater(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = type metadata accessor for CacherStatus(0);
    if (!(*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
    {
      v11 = *(v8 + 8);

      v12 = *(v10 + 20);
      v13 = sub_22F73F690();
      v19 = v12;
      v20 = *(v13 - 8);
      v14 = v8 + v12;
      v15 = *(v20 + 48);
      if (!v15(v14, 1, v13))
      {
        (*(v20 + 8))(v8 + v19, v13);
      }

      v16 = *(v10 + 24);
      if (!v15(v8 + v16, 1, v13))
      {
        (*(v20 + 8))(v8 + v16, v13);
      }
    }

    v17 = *(v8 + *(v9 + 20) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F3DEF28(uint64_t a1)
{
  v3 = *(type metadata accessor for DateAndLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_22F3D8F14(a1, v8, v1 + v4, v6, v7);
}

unint64_t sub_22F3DEFD4()
{
  result = qword_27DAB4220;
  if (!qword_27DAB4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4220);
  }

  return result;
}

unint64_t sub_22F3DF028()
{
  result = qword_27DAB4228;
  if (!qword_27DAB4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4228);
  }

  return result;
}

void sub_22F3DF09C(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F3D70CC(a1, a2 & 1, (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F3DF188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3DF1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3DF250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22F3DF2DC()
{
  result = qword_27DAB4270;
  if (!qword_27DAB4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4270);
  }

  return result;
}

void __swiftcall PlaybackInfo.init(dateUTC:hoursUTC:playDurationInMilliseconds:playCount:skipCount:lastEndReason:devices:ignoreForRecommendations:)(PhotosGraph::PlaybackInfo *__return_ptr retstr, Swift::String dateUTC, Swift::OpaquePointer hoursUTC, Swift::Int playDurationInMilliseconds, Swift::Int playCount, Swift::Int skipCount, Swift::String lastEndReason, Swift::OpaquePointer devices, Swift::Bool ignoreForRecommendations)
{
  retstr->dateUTC = dateUTC;
  retstr->hoursUTC = hoursUTC;
  retstr->playDurationInMilliseconds = playDurationInMilliseconds;
  retstr->playCount = playCount;
  retstr->skipCount = skipCount;
  retstr->lastEndReason = lastEndReason;
  retstr->devices = devices;
  retstr->ignoreForRecommendations = ignoreForRecommendations;
}

uint64_t PlaybackInfo.dateUTC.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaybackInfo.lastEndReason.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_22F3DF3F8(uint64_t a1)
{
  v2 = sub_22F3E017C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3DF434(uint64_t a1)
{
  v2 = sub_22F3E017C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4278, &qword_22F78ACE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  v17 = v1[8];
  v16[1] = *(v1 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3E017C();
  sub_22F742210();
  LOBYTE(v26) = 0;
  v14 = v24;
  sub_22F741F80();
  if (!v14)
  {
    v26 = v23;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
    sub_22F3E01D0(&qword_27DAB1938);
    sub_22F741FE0();
    LOBYTE(v26) = 2;
    sub_22F741FC0();
    LOBYTE(v26) = 3;
    sub_22F741FC0();
    LOBYTE(v26) = 4;
    sub_22F741FC0();
    LOBYTE(v26) = 5;
    sub_22F741F80();
    v26 = v17;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8);
    sub_22F741FE0();
    LOBYTE(v26) = 7;
    sub_22F741F90();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PlaybackInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = *(v0 + 72);
  sub_22F740D60();
  MEMORY[0x231901D30](*(v4 + 16));
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = (v4 + 32);
    do
    {
      v13 = *v12++;
      MEMORY[0x231901D30](v13);
      --v11;
    }

    while (v11);
  }

  MEMORY[0x231901D30](v3);
  MEMORY[0x231901D30](v6);
  MEMORY[0x231901D30](v5);
  sub_22F740D60();
  MEMORY[0x231901D30](*(v9 + 16));
  v14 = *(v9 + 16);
  if (v14)
  {
    v15 = (v9 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_22F740D60();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  return sub_22F742190();
}

uint64_t PlaybackInfo.hashValue.getter()
{
  sub_22F742170();
  PlaybackInfo.hash(into:)();
  return sub_22F7421D0();
}

uint64_t PlaybackInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4288, &qword_22F78ACE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3E017C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_22F741EB0();
  v13 = v12;
  v33 = a2;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  LOBYTE(v34) = 1;
  sub_22F3E01D0(&qword_27DAB1948);
  sub_22F741F10();
  v32 = v38[0];
  LOBYTE(v38[0]) = 2;
  v31 = sub_22F741EF0();
  LOBYTE(v38[0]) = 3;
  v15 = sub_22F741EF0();
  LOBYTE(v38[0]) = 4;
  v29 = sub_22F741EF0();
  LOBYTE(v38[0]) = 5;
  v28 = sub_22F741EB0();
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  LOBYTE(v34) = 6;
  sub_22F1BA494(&qword_2810A92D8);
  sub_22F741F10();
  v27 = v38[0];
  v41 = 7;
  v17 = sub_22F741EC0();
  (*(v6 + 8))(v9, v5);
  v18 = v17 & 1;
  v40 = v17 & 1;
  *&v34 = v14;
  *(&v34 + 1) = v13;
  v19 = v32;
  v20 = v31;
  *&v35 = v32;
  *(&v35 + 1) = v31;
  v21 = v29;
  *&v36 = v15;
  *(&v36 + 1) = v29;
  v22 = v30;
  *v37 = v28;
  *&v37[8] = v30;
  *&v37[16] = v27;
  v37[24] = v18;
  v23 = *v37;
  v24 = v33;
  v33[2] = v36;
  v24[3] = v23;
  *(v24 + 57) = *&v37[9];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  sub_22F13A7E4(&v34, v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38[0] = v14;
  v38[1] = v13;
  v38[2] = v19;
  v38[3] = v20;
  v38[4] = v15;
  v38[5] = v21;
  v38[6] = v28;
  v38[7] = v22;
  v38[8] = v27;
  v39 = v40;
  return sub_22F2C760C(v38);
}

uint64_t sub_22F3DFE08()
{
  sub_22F742170();
  PlaybackInfo.hash(into:)();
  return sub_22F7421D0();
}

uint64_t sub_22F3DFE4C()
{
  sub_22F742170();
  PlaybackInfo.hash(into:)();
  return sub_22F7421D0();
}

uint64_t PlaybackInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v17 = v0[8];
  v18 = *(v0 + 72);
  sub_22F741B00();
  MEMORY[0x231900B10](0x6574616422090A7BLL, 0xEF22203A22435455);
  MEMORY[0x231900B10](v1, v2);
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F79E960);
  v9 = MEMORY[0x231900D40](v4, MEMORY[0x277D83B88]);
  MEMORY[0x231900B10](v9);

  MEMORY[0x231900B10](0xD000000000000023, 0x800000022F79E980);
  v10 = sub_22F742010();
  MEMORY[0x231900B10](v10);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79E9B0);
  v11 = sub_22F742010();
  MEMORY[0x231900B10](v11);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79E9D0);
  v12 = sub_22F742010();
  MEMORY[0x231900B10](v12);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F79E9F0);
  MEMORY[0x231900B10](v7, v8);
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79EA10);
  v13 = MEMORY[0x231900D40](v17, MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v13);

  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F79EA30);
  if (v18)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v18)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v14, v15);

  MEMORY[0x231900B10](2097818658, 0xE400000000000000);
  return 0;
}

unint64_t sub_22F3E017C()
{
  result = qword_27DAB4280;
  if (!qword_27DAB4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4280);
  }

  return result;
}

uint64_t sub_22F3E01D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F3E0240()
{
  result = qword_27DAB4290;
  if (!qword_27DAB4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4290);
  }

  return result;
}

unint64_t sub_22F3E02B8()
{
  result = qword_27DAB4298;
  if (!qword_27DAB4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4298);
  }

  return result;
}

unint64_t sub_22F3E0310()
{
  result = qword_27DAB42A0;
  if (!qword_27DAB42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42A0);
  }

  return result;
}

unint64_t sub_22F3E0368()
{
  result = qword_27DAB42A8;
  if (!qword_27DAB42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42A8);
  }

  return result;
}

void sub_22F3E03BC(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_22F120634(0, &qword_27DAB42B0, off_27887B148);
  v6 = [a1 graphReference];
  v7 = [v6 concreteGraph];

  if (v7)
  {
    v8 = [swift_getObjCClassFromMetadata() filter];
    v9 = [v7 nodeIdentifiersMatchingFilter:v8 intersectingIdentifiers:a2];

    [v3 initWithGraph:v7 elementIdentifiers:v9];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_22F3E0538(void *a1)
{
  result = [a1 label];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();
    v5 = v4;

    sub_22F10BBDC(&v6, v3, v5);
  }

  return result;
}

uint64_t sub_22F3E05AC(void *a1)
{
  v1 = a1;
  v2 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if ([a1 memoryCategory] == 27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F7707D0;
    *(inited + 32) = sub_22F740E20();
    *(inited + 40) = v4;
    *(inited + 48) = sub_22F740E20();
    *(inited + 56) = v5;
    *(inited + 64) = sub_22F740E20();
    *(inited + 72) = v6;
    v2 = sub_22F1515F8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v26 = MEMORY[0x277D84FA0];
    v7 = [v1 memoryFeatureNodes];
    v1 = swift_allocObject();
    v1[2] = &v26;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_22F3E1210;
    *(v8 + 24) = v1;
    v24 = sub_22F2D4D54;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_22F322D74;
    v23 = &block_descriptor_13_7;
    v9 = _Block_copy(&aBlock);

    [v7 enumerateUsingBlock_];

    _Block_release(v9);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ([v1 v2[66]] == 9)
  {
    v10 = 1;
    return v10 & 1;
  }

  if ([v1 v2[66]] != 16 && objc_msgSend(v1, v2[66]) != 17)
  {
    v10 = 0;
    return v10 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_22F771340;
  *(v11 + 32) = sub_22F740E20();
  *(v11 + 40) = v12;
  v2 = sub_22F1515F8(v11);
  swift_setDeallocating();
  sub_22F1DF3B0(v11 + 32);
  v26 = MEMORY[0x277D84FA0];
  v13 = [v1 memoryFeatureNodes];
  v14 = swift_allocObject();
  *(v14 + 16) = &v26;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F3E11D8;
  *(v15 + 24) = v14;
  v24 = sub_22F250854;
  v25 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22F322D74;
  v23 = &block_descriptor_57;
  v16 = _Block_copy(&aBlock);

  [v13 enumerateUsingBlock_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v18 = v26;

    v19 = sub_22F3F2848(v2, v18);

    v10 = v19 ^ 1;
    return v10 & 1;
  }

  __break(1u);
  return result;
}

id sub_22F3E0A10(void *a1, void *a2)
{
  if ([a1 count] == 1)
  {
    v4 = [a1 anyNode];
    if (v4)
    {
      v5 = v4;
      if ([v4 graph])
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = v6;
          v8 = objc_opt_self();
          v9 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
          v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:v9];

          if (!v10)
          {
LABEL_15:

            swift_unknownObjectRelease();
            return 0;
          }

LABEL_14:
          v16 = sub_22F740E20();

          swift_unknownObjectRelease();
          return v16;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  if ([a2 count] == 1)
  {
    result = [a2 anyNode];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (![result graph])
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
    v10 = [v14 beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:v15];

    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return 0;
}

id sub_22F3E0C3C(void *a1)
{
  if (PGMemorySourceTypeFromCategory([a1 memoryCategory]) == 1 && (v2 = objc_msgSend(a1, sel_memoryMomentNodes)) != 0)
  {
    v3 = v2;
    v4 = [v2 addressNodes];
    v5 = [v4 stateNodes];
    v6 = [v4 countryNodes];
    v7 = sub_22F3E0A10(v5, v6);
  }

  else if ([a1 memoryCategory] == 19)
  {
    v8 = [a1 memoryFeatureNodes];
    v9 = [v8 graph];

    v10 = [a1 memoryFeatureNodes];
    v11 = [v10 elementIdentifiers];

    sub_22F120634(0, &qword_2810A8F60, off_27887AF78);
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSubsetInGraph:v9 elementIdentifiers:v11];
    sub_22F120634(0, &qword_2810A8F58, off_27887B028);
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSubsetInGraph:v9 elementIdentifiers:v11];
    sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = v13;
    v16 = [v14 initWithSubsetInGraph:v9 elementIdentifiers:v11];
    v17 = [v15 count];

    if (!v17)
    {
      v18 = [v12 stateNodes];

      v15 = v18;
    }

    v19 = [v16 count];

    if (!v19)
    {
      v20 = [v15 countryNodes];

      v16 = v20;
    }

    v7 = sub_22F3E0A10(v15, v16);

    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_22F3E0F14(void *a1)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MemoryNodeMusicCurationFeatureExtractor - extractMusicCurationFeatures", 70, 2u, 0, 1, qword_2810B4E90, v17);
  v2 = [a1 memoryMomentNodes];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 publicEventNodes];

    v5 = [v4 performerNodes];
    v6 = [v5 performerIdentifiers];

    v7 = sub_22F741420();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4D90);

  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_22F741430();
    v15 = sub_22F145F20(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22F0FC000, v9, v10, "[MemoriesMusic] [FeatureExtraction] (MemoryNodeMusicCurationFeatureExtractor) Extracted performer identifiers: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2319033A0](v12, -1, -1);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  sub_22F3E05AC(a1);
  sub_22F3E0C3C(a1);
  sub_22F1B2BBC(0);

  return v7;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3E1218()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v68 = a3;
  v63 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = v60 - v10;
  v67 = sub_22F73F470();
  v66 = *(v67 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v61 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = v60 - v14;
  v15 = sub_22F73F0B0();
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v70 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  *&v69 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v60 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v60 - v25;
  v27 = sub_22F73F150();
  v73 = *(v27 - 8);
  v74 = v27;
  v28 = *(v73 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *a2;
  v31 = *(a2 + 2);
  v64 = *(a2 + 3);
  v84 = v31;
  v81 = a2[2];
  v82 = *(a2 + 6);
  v32 = *v5;
  v33 = v5[1];
  v35 = v5[2];
  v34 = v5[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v35, v34);
  *&v76 = a1;

  v36 = v71;
  sub_22F1AB0EC(&v76);
  if (v36)
  {

    __break(1u);
  }

  else
  {
    v37 = v76;
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    sub_22F741B00();

    strcpy(&v76, "/v1/catalog/");
    BYTE13(v76) = 0;
    HIWORD(v76) = -5120;
    MEMORY[0x231900B10](v32, v33);
    MEMORY[0x231900B10](0x2F73676E6F732FLL, 0xE700000000000000);
    v71 = v30;
    MEMORY[0x2318FECD0](v76, *(&v76 + 1));
    v38 = v75;
    v39 = *(v75 + 56);
    v39(v26, 1, 1, v15);
    v72 = v26;
    v60[1] = 0;
    *&v76 = v37;
    if (v68)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F15A2C0();
      sub_22F740DA0();

      v40 = v38;
      v26 = v72;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      v40 = v38;
      sub_22F15A2C0();
      sub_22F740DA0();
    }

    sub_22F73F0A0();

    sub_22F120ADC(v26, &qword_27DAB42B8, &qword_22F78AFB8);
    v39(v23, 0, 1, v15);
    sub_22F3E3AE4(v23, v26);
    v41 = v69;
    sub_22F3E3B54(v26, v69);
    if ((*(v40 + 48))(v41, 1, v15) == 1)
    {
      sub_22F120ADC(v41, &qword_27DAB42B8, &qword_22F78AFB8);
      sub_22F3E3BC4();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();
      v43 = v71;
LABEL_11:
      sub_22F120ADC(v26, &qword_27DAB42B8, &qword_22F78AFB8);
      return (*(v73 + 8))(v43, v74);
    }

    v44 = v40;
    v45 = *(v40 + 32);
    v46 = v70;
    v45(v70, v41, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
    v47 = *(v44 + 72);
    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v49 = swift_allocObject();
    v69 = xmmword_22F771340;
    *(v49 + 16) = xmmword_22F771340;
    v50 = *(v44 + 16);
    v50(v49 + v48, v46, v15);
    v51 = swift_allocObject();
    *(v51 + 16) = v69;
    if (qword_2810AA608 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v15, qword_2810AA610);
    v50(v51 + v48, v52, v15);
    v85 = v49;
    sub_22F145170(v51);
    v76 = v83;
    v77 = v84;
    v78 = v64;
    v79 = v81;
    v80 = v82;
    v53 = sub_22F1F25F0(&v76);
    sub_22F145170(v53);
    v43 = v71;
    sub_22F73F0F0();
    v54 = v65;
    sub_22F73F100();
    v55 = v66;
    v56 = v67;
    if ((*(v66 + 48))(v54, 1, v67) == 1)
    {
      sub_22F120ADC(v54, &qword_27DAB29A0, &unk_22F77BFC0);
      sub_22F3E3BC4();
      swift_allocError();
      *v57 = 0;
      swift_willThrow();
      (*(v75 + 8))(v70, v15);
      v26 = v72;
      goto LABEL_11;
    }

    v59 = v62;
    (*(v55 + 32))(v62, v54, v56);
    (*(v55 + 16))(v61, v59, v56);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v55 + 8))(v59, v56);
    (*(v75 + 8))(v70, v15);
    sub_22F120ADC(v72, &qword_27DAB42B8, &qword_22F78AFB8);
    return (*(v73 + 8))(v43, v74);
  }

  return result;
}

uint64_t sub_22F3E1B88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v44 - v6;
  v56 = sub_22F73F470();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - v10;
  v11 = sub_22F73F0B0();
  v52 = *(v11 - 8);
  v50 = v52;
  v12 = *(v52 + 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22F73F150();
  v55 = *(v66 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v66);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v18 = *(a1 + 2);
  v51 = *(a1 + 3);
  v65 = v18;
  v62 = a1[2];
  v63 = *(a1 + 6);
  v19 = *v2;
  v20 = v2[1];
  v22 = v2[2];
  v21 = v2[3];
  v23 = v2[5];
  v49 = v2[4];
  v48 = v23;

  sub_22F73F140();
  sub_22F73F130();
  v24 = v22;
  v25 = v14;
  v26 = v11;
  MEMORY[0x2318FECC0](v24, v21);
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_22F741B00();

  strcpy(&v57, "/v1/catalog/");
  BYTE13(v57) = 0;
  HIWORD(v57) = -5120;
  v27 = v20;
  v28 = v50;
  MEMORY[0x231900B10](v19, v27);
  MEMORY[0x231900B10](0x73696C79616C702FLL, 0xEA00000000007374);
  MEMORY[0x2318FECD0](v57, *(&v57 + 1));
  sub_22F73F0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v29 = *(v52 + 9);
  v30 = (v28[80] + 32) & ~v28[80];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22F7707D0;
  v32 = v31 + v30;
  v33 = *(v28 + 2);
  v52 = v25;
  v33(v32, v25, v26);
  if (qword_2810AA608 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v26, qword_2810AA610);
  v33(v32 + v29, v34, v26);
  v35 = v32 + 2 * v29;
  if (qword_2810AA630 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v26, qword_2810AA638);
  v33(v35, v36, v26);
  v57 = v64;
  v58 = v65;
  v59 = v51;
  v60 = v62;
  v61 = v63;
  v37 = sub_22F1F25F0(&v57);
  *&v57 = v31;
  sub_22F145170(v37);
  sub_22F73F0F0();
  v38 = v53;
  sub_22F73F100();
  v39 = v54;
  v40 = v56;
  if ((*(v54 + 48))(v38, 1, v56) == 1)
  {
    sub_22F120ADC(v38, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
  }

  else
  {
    v43 = v46;
    (*(v39 + 32))(v46, v38, v40);
    (*(v39 + 16))(v45, v43, v40);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v39 + 8))(v43, v40);
  }

  (*(v28 + 1))(v52, v26);
  return (*(v55 + 8))(v17, v66);
}

uint64_t sub_22F3E21F0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v53 - v9;
  v62 = sub_22F73F470();
  v60 = *(v62 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v62);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  v57 = sub_22F73F0B0();
  v66 = *(v57 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v57);
  v76 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = sub_22F73F150();
  v64 = *(v22 - 8);
  v65 = v22;
  v23 = *(v64 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a3;
  v26 = *(a3 + 2);
  v58 = *(a3 + 3);
  v75 = v26;
  v72 = a3[2];
  v73 = *(a3 + 6);
  v27 = *v4;
  v28 = v4[1];
  v30 = v4[2];
  v29 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v30, v29);
  *&v67 = a1;

  v31 = v61;
  sub_22F1AB0EC(&v67);
  v53 = v31;
  if (v31)
  {

    __break(1u);
  }

  else
  {
    v32 = v67;
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_22F741B00();

    strcpy(&v67, "/v1/catalog/");
    BYTE13(v67) = 0;
    HIWORD(v67) = -5120;
    MEMORY[0x231900B10](v27, v28);
    MEMORY[0x231900B10](0x737473697472612FLL, 0xE90000000000002FLL);
    MEMORY[0x2318FECD0](v67, *(&v67 + 1));
    *&v67 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    sub_22F73F0A0();

    v33 = v19;
    sub_22F73F0A0();
    *&v67 = v63;
    sub_22F742010();
    v34 = v76;
    sub_22F73F0A0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
    v35 = v66;
    v36 = *(v66 + 72);
    v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22F7727B0;
    v39 = v38 + v37;
    v40 = *(v35 + 16);
    v63 = v21;
    v41 = v21;
    v42 = v57;
    v40(v39, v41, v57);
    v61 = v33;
    v40(v39 + v36, v33, v42);
    v40(v39 + 2 * v36, v34, v42);
    v43 = 3 * v36;
    if (qword_2810AA608 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v42, qword_2810AA610);
    v40(v39 + v43, v44, v42);
    v67 = v74;
    v68 = v75;
    v69 = v58;
    v70 = v72;
    v71 = v73;
    v45 = sub_22F1F25F0(&v67);
    *&v67 = v38;
    sub_22F145170(v45);
    sub_22F73F0F0();
    v46 = v59;
    sub_22F73F100();
    v47 = v60;
    v48 = v62;
    if ((*(v60 + 48))(v46, 1, v62) == 1)
    {
      sub_22F120ADC(v46, &qword_27DAB29A0, &unk_22F77BFC0);
      sub_22F3E3BC4();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
    }

    else
    {
      v52 = v55;
      (*(v47 + 32))(v55, v46, v48);
      (*(v47 + 16))(v54, v52, v48);
      sub_22F73EEA0();
      sub_22F73EE80();
      (*(v47 + 8))(v52, v48);
    }

    v50 = *(v66 + 8);
    v50(v76, v42);
    v50(v61, v42);
    v50(v63, v42);
    return (*(v64 + 8))(v25, v65);
  }

  return result;
}

uint64_t sub_22F3E29C0@<X0>(char *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v60 = a1;
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v51 - v7;
  v61 = sub_22F73F470();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v11;
  v12 = sub_22F73F0B0();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = sub_22F73F150();
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = *(v62 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a2;
  v26 = *(a2 + 2);
  v55 = *(a2 + 3);
  v72 = v26;
  v69 = a2[2];
  v70 = *(a2 + 6);
  v27 = *(v3 + 16);
  v28 = *(v3 + 24);

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v27, v28);
  v54 = v25;
  MEMORY[0x2318FECD0](0xD000000000000020, 0x800000022F79EB20);
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v29 = qword_2810A9170;
  v30 = sub_22F73F5B0();
  v31 = [v29 stringFromDate_];

  sub_22F740E20();
  sub_22F73F0A0();

  v32 = sub_22F73F5B0();
  v33 = [v29 stringFromDate_];

  sub_22F740E20();
  sub_22F73F0A0();

  sub_22F73F0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v34 = v73;
  v35 = *(v73 + 72);
  v36 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22F7727B0;
  v38 = v37 + v36;
  v39 = *(v34 + 16);
  v60 = v21;
  v39(v38, v21, v12);
  v58 = v19;
  v39(v38 + v35, v19, v12);
  v57 = v16;
  v39(v38 + 2 * v35, v16, v12);
  v40 = 3 * v35;
  if (qword_2810AA608 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v12, qword_2810AA610);
  v39(v38 + v40, v41, v12);
  v64 = v71;
  v65 = v72;
  v66 = v55;
  v67 = v69;
  v68 = v70;
  v42 = sub_22F1F25F0(&v64);
  *&v64 = v37;
  sub_22F145170(v42);
  v43 = v54;
  sub_22F73F0F0();
  v44 = v56;
  sub_22F73F100();
  v45 = v59;
  v46 = v61;
  if ((*(v59 + 48))(v44, 1, v61) == 1)
  {
    sub_22F120ADC(v44, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
  }

  else
  {
    v50 = v52;
    (*(v45 + 32))(v52, v44, v46);
    (*(v45 + 16))(v51, v50, v46);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v45 + 8))(v50, v46);
  }

  v48 = *(v73 + 8);
  v48(v57, v12);
  v48(v58, v12);
  v48(v60, v12);
  return (*(v62 + 8))(v43, v63);
}

uint64_t sub_22F3E3150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22F73F470();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v29 - v15;
  v37 = sub_22F73F150();
  v35 = *(v37 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + 24);
  v20 = *v4;
  v19 = v4[1];
  v21 = v4[2];
  v22 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v21, v22);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v36, "/v1/catalog/");
  BYTE5(v36[1]) = 0;
  HIWORD(v36[1]) = -5120;
  MEMORY[0x231900B10](v20, v19);
  MEMORY[0x231900B10](0x73676E6F732FLL, 0xE600000000000000);
  MEMORY[0x2318FECD0](v36[0], v36[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v23 = *(sub_22F73F0B0() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_22F771340;
  sub_22F73F0A0();
  sub_22F73F0F0();
  sub_22F73F100();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22F120ADC(v9, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    v28 = v31;
    (*(v11 + 32))(v31, v9, v10);
    (*(v11 + 16))(v30, v28, v10);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v11 + 8))(v28, v10);
  }

  return (*(v35 + 8))(v18, v37);
}

uint64_t sub_22F3E35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v31 = a2;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_22F73F470();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v26 - v15;
  v34 = sub_22F73F150();
  v32 = *(v34 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 24);
  v20 = *v4;
  v19 = v4[1];
  v21 = v4[2];
  v22 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v21, v22);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v33, "/v1/catalog/");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  MEMORY[0x231900B10](v20, v19);
  MEMORY[0x231900B10](0x73696C79616C702FLL, 0xEB000000002F7374);
  MEMORY[0x231900B10](v30, v31);
  MEMORY[0x2318FECD0](v33[0], v33[1]);
  sub_22F73F100();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22F120ADC(v9, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  else
  {
    v25 = v28;
    (*(v11 + 32))(v28, v9, v10);
    (*(v11 + 16))(v27, v25, v10);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v11 + 8))(v25, v10);
  }

  return (*(v32 + 8))(v18, v34);
}

uint64_t MusicKitRequestFactory.userStorefront.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22F3E3990()
{
  v0 = sub_22F73F0B0();
  __swift_allocate_value_buffer(v0, qword_2810AA610);
  __swift_project_value_buffer(v0, qword_2810AA610);
  return sub_22F73F0A0();
}

uint64_t sub_22F3E3A10()
{
  v0 = sub_22F73F0B0();
  __swift_allocate_value_buffer(v0, qword_2810AA638);
  __swift_project_value_buffer(v0, qword_2810AA638);
  return sub_22F73F0A0();
}

uint64_t MusicKitRequestFactory.apiDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_22F73F140();
  sub_22F73F130();
  return MEMORY[0x2318FECC0](v1, v2);
}

uint64_t sub_22F3E3AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3E3B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F3E3BC4()
{
  result = qword_27DAB42C0;
  if (!qword_27DAB42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42C0);
  }

  return result;
}

uint64_t sub_22F3E3C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v33 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v37 = sub_22F73F470();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v37);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v30 - v15;
  v40 = sub_22F73F150();
  v38 = *(v40 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a4 + 24);
  v19 = *v5;
  v20 = v5[1];
  v21 = v5[2];
  v22 = v5[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v21, v22);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v39, "/v1/catalog/");
  BYTE5(v39[1]) = 0;
  HIWORD(v39[1]) = -5120;
  MEMORY[0x231900B10](v19, v20);
  MEMORY[0x231900B10](0x6863726165732FLL, 0xE700000000000000);
  MEMORY[0x2318FECD0](v39[0], v39[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v23 = *(sub_22F73F0B0() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_22F7707D0;
  sub_22F73F0A0();
  v39[0] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();
  sub_22F73F0A0();

  sub_22F73F0A0();
  v26 = v37;
  sub_22F73F0F0();
  sub_22F73F100();
  if ((*(v11 + 48))(v10, 1, v26) == 1)
  {
    sub_22F120ADC(v10, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    v29 = v32;
    (*(v11 + 32))(v32, v10, v26);
    (*(v11 + 16))(v31, v29, v26);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v11 + 8))(v29, v26);
  }

  return (*(v38 + 8))(v18, v40);
}

uint64_t sub_22F3E4114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22F3E415C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22F3E41C8(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, SEL *a5)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, a2, a3);
    sub_22F11FA28(a4, a2, a3);
    sub_22F741470();
    v6 = v31;
    v10 = v32;
    v12 = v33;
    v11 = v34;
    v13 = v35;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v28 = MEMORY[0x277D84F90];
  while (v6 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, a2, a3), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_24:
      sub_22F0FF590();
      return;
    }

LABEL_17:
    v20 = [v19 *a5];
    if (v20)
    {
      v21 = v20;
      v27 = sub_22F740E20();
      v23 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_22F13E1A8(0, *(v28 + 2) + 1, 1, v28);
      }

      v25 = *(v28 + 2);
      v24 = *(v28 + 3);
      if (v25 >= v24 >> 1)
      {
        v28 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, v28);
      }

      *(v28 + 2) = v25 + 1;
      v26 = &v28[16 * v25];
      *(v26 + 4) = v27;
      *(v26 + 5) = v23;
    }

    else
    {
    }
  }

  v17 = v11;
  v18 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v18 - 1) & v18;
    v19 = *(*(v6 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v11);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t AssetCurationUtilitiesDataSource.characterCurationInfo(for:)()
{
  v1 = *v0;
  if (qword_2810A9BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_2810B4E78;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("AssetCurationUtilitiesDataSource", 32, 2u, v3, 0, v2, v19);
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_22F741410();
  v6 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (v6)
  {
    v7 = sub_22F741420();

    v8 = [v1 meNode];
    AssetCurationUtilitiesDataSource.personRelationshipByUUID(for:meNode:)(v7, v8);
    AssetCurationUtilitiesDataSource.myPetUUIDs(for:meNode:)(v7, v8);

    v18 = v1;
    AssetCurationUtilitiesDataSource.favoritedCharacterUUIDs()();
    sub_22F7403C0();
  }

  else
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v9 = sub_22F740B90();
    __swift_project_value_buffer(v9, qword_2810B4D60);

    v10 = sub_22F740B70();
    v11 = sub_22F7415E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_22F741430();
      v16 = sub_22F145F20(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22F0FC000, v10, v11, "Unable to convert character uuids to local identifiers: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2319033A0](v13, -1, -1);
      MEMORY[0x2319033A0](v12, -1, -1);
    }

    sub_22F7403C0();
  }

  sub_22F1B2BBC(0);
}

uint64_t AssetCurationUtilitiesDataSource.personRelationshipByUUID(for:meNode:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = objc_opt_self();
  v6 = sub_22F741410();
  v7 = [v5 personNodesForLocalIdentifiers:v6 inGraph:v4];

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4D60);
  v9 = v7;
  v10 = sub_22F740B70();
  v11 = sub_22F7415F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [v9 count];

    _os_log_impl(&dword_22F0FC000, v10, v11, "Attempting to get confirmed relationships for %ld person nodes.", v12, 0xCu);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v24 = MEMORY[0x277D84F98];
  v13 = swift_allocObject();
  *(v13 + 16) = &v24;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F3E5970;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  [v9 enumerateNodesUsingBlock:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_22F740B70();
    v20 = sub_22F7415F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_beginAccess();
      *(v21 + 4) = *(v24 + 16);
      _os_log_impl(&dword_22F0FC000, v19, v20, "Found %ld relationships.", v21, 0xCu);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    swift_beginAccess();
    v22 = v24;

    return v22;
  }

  return result;
}

uint64_t AssetCurationUtilitiesDataSource.myPetUUIDs(for:meNode:)(uint64_t a1, id a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = [a2 collection];
  if (!v3)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = v3;
  v5 = [v3 ownedPetNodes];
  v6 = [v5 localIdentifiers];

  v7 = sub_22F741420();

  sub_22F1ABBB4(v7, a1);

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_22F741410();
  v10 = [ObjCClassFromMetadata uuidsFromLocalIdentifiers_];

  if (!v10)
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D60);

    v17 = sub_22F740B70();
    v18 = sub_22F7415E0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = sub_22F741430();
      v23 = v22;

      v24 = sub_22F145F20(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_22F0FC000, v17, v18, "Unable to convert pet local identifiers to UUIDs for %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2319033A0](v20, -1, -1);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }

  v11 = sub_22F741420();

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  __swift_project_value_buffer(v12, qword_2810B4D60);

  v13 = sub_22F740B70();
  v14 = sub_22F7415F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v11 + 16);

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld relevant myPetUUIDs", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {
  }

  return v11;
}

uint64_t AssetCurationUtilitiesDataSource.favoritedCharacterUUIDs()()
{
  v1 = *v0;
  v2 = [v1 favoritedPersonNodesIncludingMe_];
  sub_22F120634(0, &qword_27DAB42C8, off_27887B210);
  sub_22F11FA28(&qword_27DAB42D0, &qword_27DAB42C8, off_27887B210);
  v3 = sub_22F741420();

  sub_22F3E41C8(v3, &qword_27DAB42C8, off_27887B210, &qword_27DAB42D0, &selRef_localIdentifier);
  v5 = v4;

  v6 = [objc_opt_self() favoritedPetNodesInGraph_];
  v7 = [v6 localIdentifiers];

  v8 = sub_22F741420();
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = v5;

  sub_22F144C4C(v8);
  sub_22F1515F8(v5);

  v10 = sub_22F741410();

  v11 = [ObjCClassFromMetadata uuidsFromLocalIdentifiers_];

  if (v11)
  {

    v12 = sub_22F741420();

    return v12;
  }

  else
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v14 = sub_22F740B90();
    __swift_project_value_buffer(v14, qword_2810B4D60);

    v15 = sub_22F740B70();
    v16 = sub_22F7415E0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = MEMORY[0x231900D40](v5, MEMORY[0x277D837D0]);
      v21 = v20;

      v22 = sub_22F145F20(v19, v21, &v23);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_22F0FC000, v15, v16, "Unable to convert favorited person/pet local identifiers to UUIDs for %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2319033A0](v18, -1, -1);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_22F3E51F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D60);
    v23 = a1;
    v56 = sub_22F740B70();
    v24 = sub_22F7415E0();

    if (os_log_type_enabled(v56, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136315138;
      [v23 identifier];
      v27 = sub_22F741750();
      v29 = sub_22F145F20(v27, v28, &v57);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22F0FC000, v56, v24, "Unable to cast node %s to personNode!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2319033A0](v26, -1, -1);
      MEMORY[0x2319033A0](v25, -1, -1);
LABEL_18:

      return;
    }

    goto LABEL_29;
  }

  v14 = v13;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = a1;
  v16 = [v14 localIdentifier];
  v17 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

  if (v17)
  {
    v18 = sub_22F740E20();
    v20 = v19;

    if ([v14 isMeNode])
    {
      v21 = MEMORY[0x277D3C5E8];
LABEL_17:
      v40 = *v21;
      v41 = sub_22F740690();
      v42 = *(v41 - 8);
      (*(v42 + 104))(v12, v40, v41);
      (*(v42 + 56))(v12, 0, 1, v41);
      sub_22F122248(v12, v18, v20);
      goto LABEL_18;
    }

    if (([v14 isMyChild] & 1) != 0 || objc_msgSend(v14, sel_isMyInferredChild))
    {
      v21 = MEMORY[0x277D3C5F0];
      goto LABEL_17;
    }

    if (a4)
    {
      v55 = a4;
      v43 = [v55 relationshipEdgesToPersonNode:v14 matchingQuery:1];
      sub_22F120634(0, &qword_2810A9030, off_27887B328);
      sub_22F11FA28(&qword_2810A9028, &qword_2810A9030, off_27887B328);
      v44 = sub_22F741420();

      sub_22F3E41C8(v44, &qword_2810A9030, off_27887B328, &qword_2810A9028, &selRef_label);
      v46 = v45;

      if (*(v46 + 16))
      {
        v47 = objc_opt_self();
        sub_22F1515F8(v46);

        v48 = sub_22F741410();

        v49 = [v47 reducedRelationshipNameForLabels_];

        sub_22F740E20();
        sub_22F740EA0();

        sub_22F740680();
        sub_22F3E59A0(v12, v9);
        sub_22F122248(v9, v18, v20);

        sub_22F3E5A10(v12);
        return;
      }

      goto LABEL_29;
    }

    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4D60);
    v31 = sub_22F740B70();
    v52 = sub_22F7415F0();
    if (os_log_type_enabled(v31, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22F0FC000, v31, v52, "No me node, unable to get confirmed relationships.", v53, 2u);
      MEMORY[0x2319033A0](v53, -1, -1);
    }

    goto LABEL_28;
  }

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v30 = sub_22F740B90();
  __swift_project_value_buffer(v30, qword_2810B4D60);
  v31 = v56;
  v56 = sub_22F740B70();
  v32 = sub_22F7415E0();

  if (!os_log_type_enabled(v56, v32))
  {
LABEL_28:

LABEL_29:
    v54 = v56;

    return;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v57 = v34;
  *v33 = 136315138;
  v35 = [v14 localIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = sub_22F740E20();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v50 = sub_22F145F20(v37, v39, &v57);

  *(v33 + 4) = v50;
  _os_log_impl(&dword_22F0FC000, v56, v32, "Unable to convert person local identifier %s to uuid.", v33, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v34);
  MEMORY[0x2319033A0](v34, -1, -1);
  MEMORY[0x2319033A0](v33, -1, -1);
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3E59A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3E5A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F3E5A78(uint64_t a1)
{
  v3 = type metadata accessor for Song();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x277D84F90];
  sub_22F146454(0, v6, 0);
  v7 = v34;
  v8 = -1 << *(a1 + 32);
  v33 = a1 + 56;
  result = sub_22F741980();
  v10 = result;
  v11 = 0;
  v27 = a1 + 64;
  v28 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v33 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v31 = *(a1 + 36);
    v14 = v29;
    sub_22F3E9E34(*(a1 + 48) + *(v30 + 72) * v10, v29, type metadata accessor for Song);
    v15 = v14[1];
    v32 = *v14;

    result = sub_22F3E9E9C(v14, type metadata accessor for Song);
    v34 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22F146454((v16 > 1), v17 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v17 + 1;
    v18 = v7 + 16 * v17;
    *(v18 + 32) = v32;
    *(v18 + 40) = v15;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v19 = *(v33 + 8 * v13);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v13 << 6;
      v22 = v13 + 1;
      v23 = (v27 + 8 * v13);
      while (v22 < (v12 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22F107D18(v10, v31, 0);
          v12 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v10, v31, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v28)
    {
      return v7;
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

void sub_22F3E5D5C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F73F360();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void static MusicCacheMusicKitReconciler.run(photoLibrary:progressReporter:completionHandler:)(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v103 = a4;
  v104 = a3;
  v6 = type metadata accessor for CacherStatusUpdater(0);
  v7 = *(v6 - 8);
  v96 = v6;
  v97 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v84 - v10;
  v11 = sub_22F73F690();
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v11);
  v95 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  v27 = a2;
  v28 = sub_22F7416B0();
  v30 = v29;
  v31 = sub_22F1A26E0(a1);
  v88 = v27;
  v89 = a1;
  v90 = v23;
  v91 = v8;
  v92 = v19;
  v93 = v26;
  v94 = v30;
  v32 = v31;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v33 = v32;
  v34 = sub_22F1ED5B0(v32);

  sub_22F1E3F74(v108);
  memcpy(v109, v108, 0x121uLL);
  if (sub_22F1EDAB8(v109) == 1)
  {
    GEOLocationCoordinate2DMake(v109);
    memcpy(v106, v108, 0x121uLL);
    GEOLocationCoordinate2DMake(v106);
    v107 = *v36;
    v35 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();

    v41 = v104;
    v42 = v35;
    v41(0, v35);
  }

  else
  {
    GEOLocationCoordinate2DMake(v109);
    sub_22F120ADC(v108, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v106, v108, 0x121uLL);
    GEOLocationCoordinate2DMake(v106);
    v38 = *(v37 + 256);
    v39 = *(v37 + 264);
    v40 = v93;
    MusicCache.readCacherStatus(category:)(0x6665526568636163, 0xEC00000068736572, v93);
    v43 = sub_22F3E82EC(v40, v34, v28);
    v44 = v104;
    if (v43)
    {
      v86 = v39;
      v87 = v33;
      v88 = v34;
      v45 = v92;
      sub_22F3E67C4(v89, v92);
      v46 = v100;
      sub_22F3E6B4C(v45, v100);
      if (qword_2810A9478 != -1)
      {
        swift_once();
      }

      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_2810B4DC0);
      v48 = v101;
      v49 = v102;
      v50 = v95;
      (*(v101 + 16))(v95, v46, v102);
      v51 = sub_22F740B70();
      v52 = sub_22F7415C0();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v90;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v84 = v55;
        v89 = swift_slowAlloc();
        v105 = v89;
        *v55 = 136315138;
        sub_22F1E3D6C();
        v85 = v52;
        v56 = sub_22F742010();
        v58 = v57;
        v95 = *(v48 + 8);
        (v95)(v50, v49);
        v59 = sub_22F145F20(v56, v58, &v105);

        v60 = v84;
        *(v84 + 1) = v59;
        v61 = v60;
        _os_log_impl(&dword_22F0FC000, v51, v85, "[MemoriesMusic] - MusicCacheMusicKitReconciler running with oldestRefreshAttemptDateConsideredFresh: %s.", v60, 0xCu);
        v62 = v89;
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x2319033A0](v62, -1, -1);
        MEMORY[0x2319033A0](v61, -1, -1);
      }

      else
      {

        v95 = *(v48 + 8);
        (v95)(v50, v49);
      }

      v63 = v99;
      sub_22F13BA9C(v93, v54, &qword_27DAB1DA0, &unk_22F7771B0);
      v64 = type metadata accessor for CacherStatus(0);
      if ((*(*(v64 - 8) + 48))(v54, 1, v64) == 1)
      {
        sub_22F120ADC(v54, &qword_27DAB1DA0, &unk_22F7771B0);
        v65 = v91;
        v66 = v97;
        v67 = 0xEC00000068736572;
        v68 = 0x6665526568636163;
      }

      else
      {
        v70 = *v54;
        v69 = v54[1];

        sub_22F3E9E9C(v54, type metadata accessor for CacherStatus);
        v68 = 0x6665526568636163;
        if (v69)
        {
          v68 = v70;
          v67 = v69;
        }

        else
        {
          v67 = 0xEC00000068736572;
        }

        v65 = v91;
        v66 = v97;
      }

      v71 = v93;
      sub_22F13BA9C(v93, v63, &qword_27DAB1DA0, &unk_22F7771B0);
      v72 = (v63 + *(v96 + 20));
      *v72 = v68;
      v72[1] = v67;
      v73 = v98;
      sub_22F3E9E34(v63, v98, type metadata accessor for CacherStatusUpdater);
      v74 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v75 = (v65 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      sub_22F3E9DCC(v73, v76 + v74, type metadata accessor for CacherStatusUpdater);
      v77 = v87;
      *(v76 + v75) = v87;
      v78 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
      v79 = v103;
      *v78 = v104;
      v78[1] = v79;
      v80 = v77;

      v81 = v100;
      v82 = v94;
      sub_22F3E8B7C(v100, v80, v86, v94, sub_22F3E87C8, v76);

      sub_22F3E9E9C(v63, type metadata accessor for CacherStatusUpdater);
      (v95)(v81, v102);
      sub_22F120ADC(v92, &qword_27DAB0920, &qword_22F770B20);
      v83 = v71;
    }

    else
    {
      sub_22F7416A0();
      v44(1, 0);

      v83 = v93;
    }

    sub_22F120ADC(v83, &qword_27DAB1DA0, &unk_22F7771B0);
  }
}

uint64_t sub_22F3E67C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v8 = &v28 - v7;
  v9 = [a1 librarySpecificFetchOptions];
  [v9 setFetchLimit_];
  [v9 setIncludePendingMemories_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771350;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_22F740DF0();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22F740DF0();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v10 + 40) = v16;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v17 = sub_22F741160();

  [v9 setSortDescriptors_];

  sub_22F120634(0, &unk_2810A8EB0, 0x277CD98D8);
  v18 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];
  v19 = [v18 firstObject];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = [v20 creationDate];
      if (v21)
      {
        v22 = v21;
        sub_22F73F640();

        v23 = sub_22F73F690();
        (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
      }

      else
      {

        v27 = sub_22F73F690();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
      }

      return sub_22F168438(v8, a2);
    }
  }

  else
  {
    v19 = v9;
  }

  v24 = sub_22F73F690();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_22F3E6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_22F13BA9C(a1, v7, &qword_27DAB0920, &qword_22F770B20);
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_22F73F550();
    result = v13(v10, 1, v11);
    if (result != 1)
    {
      return sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    sub_22F73F5A0();
    (*(v12 + 8))(v7, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    return (*(v12 + 32))(a2, v10, v11);
  }

  return result;
}

uint64_t sub_22F3E6D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t))
{
  if (a1)
  {
    CacherStatusUpdater.writeFailure(to:)(a3);
  }

  else
  {
    CacherStatusUpdater.writeSuccess(to:)(a3);
  }

  return a4(a1 == 0, a1);
}

uint64_t sub_22F3E6F30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v139 = a7;
  v142 = a6;
  v181 = a4;
  v162 = a9;
  v163 = sub_22F73F690();
  v161 = *(v163 - 8);
  v15 = *(v161 + 64);
  MEMORY[0x28223BE20](v163);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Song();
  v184 = *(v160 - 8);
  v18 = *(v184 + 64);
  MEMORY[0x28223BE20](v160);
  v176 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v175 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v183 = &v134 - v23;
  MEMORY[0x28223BE20](v24);
  v180 = &v134 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = (&v134 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = &v134 - v30;
  if (a2)
  {
    sub_22F7416A0();
    return v162(a1);
  }

  else
  {
    v137 = a10;
    v138 = a8;
    v33 = *(a1 + 16);
    v34 = MEMORY[0x277D84F90];
    v179 = a3;
    if (v33)
    {
      v188 = MEMORY[0x277D84F90];
      sub_22F146514(0, v33, 0);
      v34 = v188;
      v35 = (a1 + 32);
      do
      {
        memcpy(v187, v35, sizeof(v187));
        memcpy(v186, v35, sizeof(v186));
        sub_22F18C4EC(v187, v185);
        Song.init(_:)(v186);
        v188 = v34;
        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          sub_22F146514(v36 > 1, v37 + 1, 1);
          v34 = v188;
        }

        v34[2] = v37 + 1;
        sub_22F3E9DCC(v31, v34 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v37, type metadata accessor for Song);
        v35 += 296;
        --v33;
      }

      while (v33);
    }

    v186[0] = v34;
    v38 = v34[2];
    v39 = v34;
    v40 = MEMORY[0x277D84F90];
    v159 = v17;
    v136 = a5;
    v182 = v39;
    if (v38)
    {
      v187[0] = MEMORY[0x277D84F90];

      sub_22F146454(0, v38, 0);
      v40 = v187[0];
      v41 = v39 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
      v42 = *(v184 + 72);
      do
      {
        sub_22F3E9E34(v41, v28, type metadata accessor for Song);
        v44 = *v28;
        v43 = v28[1];

        sub_22F3E9E9C(v28, type metadata accessor for Song);
        v187[0] = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_22F146454((v45 > 1), v46 + 1, 1);
          v40 = v187[0];
        }

        *(v40 + 16) = v46 + 1;
        v47 = v40 + 16 * v46;
        *(v47 + 32) = v44;
        *(v47 + 40) = v43;
        v41 += v42;
        --v38;
      }

      while (v38);

      v17 = v159;
    }

    v48 = sub_22F1515F8(v40);

    v185[0] = v48;

    v50 = sub_22F1515F8(v49);

    if (*(v48 + 16) <= *(v50 + 16) >> 3)
    {
      v187[0] = v50;
      sub_22F3E7FB8(v48);

      v51 = v187[0];
    }

    else
    {
      v51 = sub_22F1E999C(v48, v50);
    }

    if (qword_2810A9478 != -1)
    {
LABEL_54:
      swift_once();
    }

    v52 = sub_22F740B90();
    v53 = __swift_project_value_buffer(v52, qword_2810B4DC0);

    v134 = v53;
    v54 = sub_22F740B70();
    v55 = sub_22F7415C0();
    v56 = os_log_type_enabled(v54, v55);
    v135 = v51;
    if (v56)
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      *(v57 + 4) = v182[2];
      *(v57 + 12) = 2048;
      *(v57 + 14) = *(v51 + 16);

      _os_log_impl(&dword_22F0FC000, v54, v55, "[MemoriesMusic] - MusicCacheMusicKitReconciler updated %ld songs from MusicKit, and %ld stale adamIDs.", v57, 0x16u);
      MEMORY[0x2319033A0](v57, -1, -1);
    }

    else
    {
    }

    sub_22F73F680();
    v58 = v181 + 56;
    v59 = 1 << *(v181 + 32);
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v61 = v60 & *(v181 + 56);
    v62 = (v59 + 63) >> 6;
    v140 = (v161 + 56);
    v141 = (v161 + 16);

    v63 = 0;
    v64 = 0;
    v177 = v62;
    v178 = v58;
LABEL_25:
    v164 = v63;
    v51 = v185[0];
    v65 = v185[0] + 56;
    while (v61)
    {
LABEL_32:
      v67 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v68 = v180;
      v69 = *(v181 + 48);
      v179 = *(v184 + 72);
      sub_22F3E9E34(v69 + v179 * (v67 | (v64 << 6)), v180, type metadata accessor for Song);
      v70 = v68;
      v71 = v183;
      sub_22F3E9DCC(v70, v183, type metadata accessor for Song);
      v73 = *v71;
      v72 = v71[1];
      if (!*(v51 + 16))
      {
        v129 = v71[1];

LABEL_41:
        v81 = v183;
        v82 = *(v183 + 16);
        v156 = *(v183 + 24);
        v83 = *(v183 + 40);
        v143 = *(v183 + 32);
        v144 = v82;
        v165 = v83;
        v84 = *(v183 + 56);
        v147 = *(v183 + 48);
        v85 = *(v183 + 64);
        v171 = v84;
        v172 = v85;
        v146 = *(v183 + 72);
        v149 = *(v183 + 80);
        v148 = *(v183 + 88);
        LODWORD(v82) = *(v183 + 92);
        v150 = *(v183 + 96);
        v151 = v82;
        v86 = *(v183 + 104);
        v87 = *(v183 + 112);
        v88 = *(v183 + 128);
        v153 = *(v183 + 120);
        v154 = v86;
        v173 = v87;
        v174 = v88;
        v89 = *(v183 + 144);
        v157 = *(v183 + 136);
        v155 = v89;
        v90 = v160;
        v91 = v175;
        sub_22F13BA9C(v183 + *(v160 + 60), v175 + *(v160 + 60), &qword_27DAB0C90, &unk_22F785B70);
        v92 = v81 + v90[26];
        v93 = *v92;
        v169 = *(v92 + 8);
        v170 = v93;
        v94 = *(v92 + 16);
        v167 = *(v92 + 24);
        v168 = v94;
        v166 = *(v92 + 32);
        v145 = *(v92 + 44);
        v152 = *(v92 + 40);
        v158 = v152 | (v145 << 32);
        v95 = v90[16];
        v96 = v17;
        v97 = v163;
        (*v141)(v91 + v95, v96, v163);
        (*v140)(v91 + v95, 0, 1, v97);
        v98 = v90[17];
        v99 = v90[18];
        v100 = v143;
        *(v91 + 16) = v144;
        *(v91 + 32) = v100;
        v102 = v90[19];
        v101 = v90[20];
        *(v91 + 48) = v147;
        *(v91 + 72) = v146;
        v104 = v90[21];
        v103 = v90[22];
        *(v91 + 80) = v149;
        *(v91 + 88) = v148;
        v105 = v90[23];
        *(v91 + 92) = v151;
        *(v91 + 96) = v150;
        v106 = v90[25];
        v107 = v155;
        *(v91 + 104) = v154;
        *(v91 + 120) = v153;
        *v91 = v73;
        *(v91 + 8) = v72;
        *(v91 + 24) = v156;
        *(v91 + 40) = v165;
        *(v91 + 56) = v171;
        *(v91 + 64) = v172;
        *(v91 + 112) = v173;
        *(v91 + 128) = v174;
        *(v91 + 136) = v157;
        *(v91 + 144) = v107;
        v108 = v91 + v90[26];
        *(v108 + 44) = v145;
        v157 = *(v81 + v98);
        v109 = v157;
        v110 = v81 + v99;
        *(v108 + 40) = v152;
        LODWORD(v99) = *(v81 + v99);
        *v108 = v170;
        *(v108 + 8) = v169;
        *(v108 + 16) = v168;
        *(v108 + 24) = v167;
        *(v108 + 32) = v166;
        *(v91 + v90[17]) = v109;
        v111 = v91 + v90[18];
        *v111 = v99;
        v112 = v81 + v102;
        *(v111 + 4) = *(v110 + 4);
        LODWORD(v110) = *(v81 + v102);
        v113 = v91 + v90[19];
        *v113 = v110;
        LOBYTE(v110) = *(v112 + 4);
        v114 = v81 + v101;
        *(v113 + 4) = v110;
        LODWORD(v110) = *(v81 + v101);
        v115 = v91 + v90[20];
        *v115 = v110;
        LOBYTE(v110) = *(v114 + 4);
        v116 = v81 + v104;
        *(v115 + 4) = v110;
        LODWORD(v110) = *(v81 + v104);
        v117 = v91 + v90[21];
        *v117 = v110;
        LOBYTE(v110) = *(v116 + 4);
        v118 = v81 + v103;
        *(v117 + 4) = v110;
        LODWORD(v110) = *(v81 + v103);
        v119 = v91 + v90[22];
        *v119 = v110;
        LOBYTE(v110) = *(v118 + 4);
        v120 = v81 + v105;
        *(v119 + 4) = v110;
        LODWORD(v110) = *(v81 + v105);
        v121 = v91 + v90[23];
        *v121 = v110;
        v122 = (v81 + v106);
        *(v121 + 4) = *(v120 + 4);
        v123 = *v122;
        v124 = v122[1];
        *(v91 + v90[24]) = 0;
        v125 = (v91 + v90[25]);
        *v125 = v123;
        v125[1] = v124;
        sub_22F3E9E34(v91, v176, type metadata accessor for Song);
        swift_beginAccess();

        sub_22F13BB04(v170, v169, v168);

        v126 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_22F13E558(0, v126[2] + 1, 1, v126);
        }

        v51 = v126[2];
        v127 = v126[3];
        v182 = v126;
        v17 = v159;
        if (v51 >= v127 >> 1)
        {
          v182 = sub_22F13E558(v127 > 1, v51 + 1, 1, v182);
        }

        v128 = v182;
        v182[2] = v51 + 1;
        sub_22F3E9DCC(v176, v128 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + v51 * v179, type metadata accessor for Song);
        v186[0] = v128;
        swift_endAccess();
        sub_22F10BBDC(v187, v73, v72);

        sub_22F3E9E9C(v175, type metadata accessor for Song);
        sub_22F3E9E9C(v183, type metadata accessor for Song);
        v63 = v164 + 1;
        v62 = v177;
        v58 = v178;
        if (__OFADD__(v164, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        goto LABEL_25;
      }

      v74 = *(v51 + 40);
      sub_22F742170();

      sub_22F740D60();
      v75 = sub_22F7421D0();
      v76 = -1 << *(v51 + 32);
      v77 = v75 & ~v76;
      if (((*(v65 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
      {
        goto LABEL_41;
      }

      v78 = ~v76;
      while (1)
      {
        v79 = (*(v51 + 48) + 16 * v77);
        v80 = *v79 == v73 && v79[1] == v72;
        if (v80 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v77 = (v77 + 1) & v78;
        if (((*(v65 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      sub_22F3E9E9C(v183, type metadata accessor for Song);

      v62 = v177;
      v58 = v178;
    }

    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v66 >= v62)
      {
        break;
      }

      v61 = *(v58 + 8 * v66);
      ++v64;
      if (v61)
      {
        v64 = v66;
        goto LABEL_32;
      }
    }

    v130 = sub_22F740B70();
    v131 = sub_22F7415C0();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134217984;
      *(v132 + 4) = v164;
      _os_log_impl(&dword_22F0FC000, v130, v131, "[MemoriesMusic] - MusicCacheMusicKitReconciler updated the lastRefreshAttemptDate of %ld songs manually as they were not updated successfully from MusicKit.", v132, 0xCu);
      MEMORY[0x2319033A0](v132, -1, -1);
    }

    MusicCache.update(songs:progressReporter:)(v133);

    MusicCache.removeSongs(withAdamIDs:progressReporter:)(v135);

    sub_22F7416A0();
    v162(0);
    (*(v161 + 8))(v17, v163);
  }
}

id MusicCacheMusicKitReconciler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCacheMusicKitReconciler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCacheMusicKitReconciler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F3E7DB0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_22F3E9E34(*(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for Song);
      sub_22F164544(v11, v6);
      sub_22F3E9E9C(v11, type metadata accessor for Song);
      sub_22F120ADC(v6, &qword_27DAB1250, &qword_22F781A10);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F3E7FB8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22F164408(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_22F3E80E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SongSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_22F3E9E34(*(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for SongSource);
      sub_22F1647B0(v11, v6);
      sub_22F3E9E9C(v11, type metadata accessor for SongSource);
      sub_22F120ADC(v6, &qword_27DAB2460, &qword_22F78B130);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F3E82EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_22F73F690();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v16, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_27DAB1DA0;
    v23 = &unk_22F7771B0;
    v24 = v16;
LABEL_5:
    sub_22F120ADC(v24, v22, v23);
    LOBYTE(v27) = 1;
    return v27 & 1;
  }

  sub_22F3E9DCC(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v42;
  v25 = v43;
  if ((*(v42 + 48))(v7, 1, v43) == 1)
  {
    sub_22F3E9E9C(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v41;
  (*(v26 + 32))(v41, v7, v25);
  sub_22F1E3F74(v46);
  memcpy(v47, v46, 0x121uLL);
  if (sub_22F1EDAB8(v47) == 1)
  {
    GEOLocationCoordinate2DMake(v47);
    memcpy(v45, v46, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v27 = *v30;
    v48 = *v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F3E9E9C(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v47);
    sub_22F120ADC(v46, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v45, v46, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v32 = *(v31 + 256);
    v27 = v38;
    sub_22F73F680();
    sub_22F73F590();
    v34 = v33;
    v35 = *(v26 + 8);
    v35(v27, v25);
    LOBYTE(v27) = v39;
    v36 = v44;
    sub_22F7416A0();
    if (!v36)
    {
      LOBYTE(v27) = v32 < v34;
    }

    v35(v29, v25);
    sub_22F3E9E9C(v21, type metadata accessor for CacherStatus);
  }

  return v27 & 1;
}

uint64_t sub_22F3E87C8(uint64_t a1)
{
  v3 = *(type metadata accessor for CacherStatusUpdater(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_22F3E6D84(a1, v1 + v4, v6, v8);
}

uint64_t sub_22F3E8874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F7416B0();
  v8 = v7;
  v9 = MusicCache.readSongsWithoutALastRefreshAttemptDate(progressReporter:)(v6);
  if (v3)
  {

    return v4;
  }

  sub_22F39687C(a3, v9);
  sub_22F152EB0(v11, v12, v13);
  v4 = v14;
  result = swift_unknownObjectRelease();
  v33 = v4;
  v15 = *(v4 + 16);
  v16 = __OFSUB__(a3, v15);
  v17 = a3 - v15;
  if (!v16)
  {
    if (v17 < 1)
    {
      sub_22F7416A0();
    }

    else
    {
      v30 = v17;
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22F7707D0;
      v19 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v20 = sub_22F153470();
      *(v18 + 32) = 0xD000000000000016;
      *(v18 + 40) = 0x800000022F790200;
      *(v18 + 96) = v19;
      *(v18 + 104) = v20;
      *(v18 + 64) = v20;
      *(v18 + 72) = 0xD000000000000016;
      *(v18 + 80) = 0x800000022F790200;
      v21 = sub_22F73F5B0();
      *(v18 + 136) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
      *(v18 + 144) = sub_22F15FD58();
      *(v18 + 112) = v21;
      v22 = sub_22F741560();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22F771EB0;
      v24 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v25 = sub_22F740DF0();
      v26 = [v24 initWithKey:v25 ascending:1];

      *(v23 + 32) = v26;
      v31[0] = v23;
      v31[1] = v30;
      v32 = 0;
      v27 = v22;
      v28 = sub_22F196B2C(v22, v31, v8);

      v29 = sub_22F151734(v28);

      sub_22F2EA558(v29);

      return v33;
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_22F3E8B7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v173 = a6;
  v176 = a5;
  v181 = a1;
  v182 = a3;
  v180 = sub_22F740AD0();
  v175 = *(v180 - 8);
  v8 = *(v175 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73EEC0();
  v184 = *(v10 - 8);
  v185 = v10;
  v11 = *(v184 + 64);
  MEMORY[0x28223BE20](v10);
  v178 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v183 = v148 - v13;
  v14 = sub_22F73EEE0();
  v171 = *(v14 - 8);
  v172 = v14;
  v15 = *(v171 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F740C00();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = a4;
  v22 = sub_22F7416E0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = a2;
  v30 = a2;
  v31 = v22;
  v32 = v186;
  v33 = sub_22F3E8874(v30, v181, v182);
  v186 = v32;
  if (v32)
  {

    return;
  }

  v181 = v29;
  v182 = v21;
  v165 = v11;
  v166 = v17;
  v174 = v24;
  v160 = v26;
  v161 = v33;
  v158 = v28;
  v159 = v31;
  if (qword_2810A9478 != -1)
  {
LABEL_46:
    swift_once();
  }

  v34 = sub_22F740B90();
  __swift_project_value_buffer(v34, qword_2810B4DC0);
  v35 = v161;

  v36 = sub_22F740B70();
  v37 = sub_22F7415C0();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v186;
  v40 = v177;
  if (v38)
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = *(v35 + 16);

    _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] - MusicCacheMusicKitReconciler attempting to refresh %ld songs.", v41, 0xCu);
    MEMORY[0x2319033A0](v41, -1, -1);
  }

  else
  {
  }

  v42 = v159;
  v43 = v173;
  v44 = v182;
  if (*(v35 + 16))
  {
    sub_22F740BD0();
    v45 = sub_22F22FB24(v44, 0);
    if (v39)
    {

      return;
    }

    v164 = v34;
    v167 = *(v45 + 3);
    v182 = v45;
    v157 = *(v45 + 4);

    v51 = sub_22F3E5A78(v35);
    v186 = 0;
    static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x6665526568636163, 0xEC00000068736572, &v203);
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v35;
    v53 = v181;
    v54 = v160;
    v52[4] = v181;
    v52[5] = v54;
    v55 = v158;
    v52[6] = v158;
    v52[7] = v40;
    v52[8] = v176;
    v52[9] = v43;
    v156 = v51;
    v168 = *(v51 + 16);
    if (!v168)
    {
      swift_bridgeObjectRetain_n();
      v81 = v53;
      v82 = v54;
      v83 = v55;
      v84 = v177;
      swift_retain_n();
      v85 = v81;
      v86 = v82;
      v87 = v83;
      v88 = v84;
      v89 = v156;

      sub_22F3E6F30(MEMORY[0x277D84F90], 0, v89, v161, v85, v86, v87, v88, v176, v43);

      v90 = v160;
      v71 = v174;
LABEL_45:

      swift_bridgeObjectRelease_n();
      sub_22F1D210C(&v203);
      return;
    }

    v155 = v52;
    v56 = qword_2810A9B98;
    swift_bridgeObjectRetain_n();
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v177;
    swift_retain_n();
    v149 = v57;
    v150 = v58;
    v151 = v59;
    v152 = v60;
    v61 = v156;

    if (v56 != -1)
    {
      swift_once();
    }

    v62 = qword_2810B4E70;
    *&v63 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v63, 0, v62, v200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v64 = swift_allocObject();
    v65 = 0x277CCA000uLL;
    v66 = &selRef_floatVector;
    v67 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v64 + 16) = MEMORY[0x277D84F90];
    *(v64 + 24) = v67;
    v169 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v68 = swift_allocObject();
    *(v68 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v170 = v68;
    *(v68 + 16) = 0;
    v69 = v68 + 16;
    v70 = v182;
    v71 = v174;
    v72 = v185;
    if (v182[3] == v167 && v182[4] == v157 || (sub_22F742040() & 1) != 0)
    {
      v73 = v70[2];
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v167) = 0;
      v75 = v186;
      if (Batch)
      {
LABEL_22:

        v76 = sub_22F233C24(0, v168, Batch, v61, Batch);
        v186 = v75;

        if (qword_2810A9440 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v164, qword_2810B4D48);

        v77 = sub_22F740B70();
        v78 = sub_22F7415C0();
        v79 = os_log_type_enabled(v77, v78);
        v148[1] = v69;
        if (v79)
        {
          v80 = swift_slowAlloc();
          *v80 = 134218240;
          *(v80 + 4) = v168;

          *(v80 + 12) = 2048;
          *(v80 + 14) = *(v76 + 16);

          _os_log_impl(&dword_22F0FC000, v77, v78, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v80, 0x16u);
          MEMORY[0x2319033A0](v80, -1, -1);
        }

        else
        {
        }

        v91 = *(v76 + 16);
        v153 = v202;
        v154 = *(&v201 + 1);
        v92 = swift_allocObject();
        v93 = v200[1];
        *(v92 + 16) = v200[0];
        *(v92 + 32) = v93;
        *(v92 + 48) = v201;
        *(v92 + 64) = v202;
        *(v92 + 72) = v71;
        v94 = v155;
        *(v92 + 80) = sub_22F3E9D7C;
        *(v92 + 88) = v94;
        v181 = v76;
        v95 = v169;
        *(v92 + 96) = v170;
        *(v92 + 104) = v95;
        type metadata accessor for CompletionCounter();
        v96 = swift_allocObject();
        v96[2] = sub_22F235BF4;
        v96[3] = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
        v97 = swift_allocObject();
        *(v97 + 32) = 0;
        *(v97 + 16) = 0;
        v177 = v91;
        *(v97 + 24) = v91;
        v168 = v96;
        v96[4] = v97;
        v98 = sub_22F73EF30();
        v99 = *(v98 + 48);
        v100 = *(v98 + 52);
        swift_allocObject();

        v101 = v71;

        v102 = sub_22F73EF20();
        if (qword_2810A9168 != -1)
        {
          swift_once();
        }

        v103 = qword_2810A9170;
        v104 = v166;
        *v166 = qword_2810A9170;
        (*(v171 + 104))(v104, *MEMORY[0x277CC86D8], v172);
        v105 = v103;
        v172 = v102;
        sub_22F73EF00();
        v106 = [v101 progressReportersForParallelOperationsWithCount_];
        sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
        v107 = sub_22F741180();

        v171 = v175 + 8;
        v165 += 7;
        v166 = (v184 + 16);
        v195 = v107;
        v196 = 0;
        v163 = &v191;
        v164 = v184 + 32;
        v162 = v184 + 8;
        v197 = v181;
        v198 = 0;
        v199 = 0;
        v108 = v183;
        v109 = v186;
        while (1)
        {
          v110 = sub_22F226D78();
          if (!v110)
          {

            goto LABEL_44;
          }

          v112 = v110;
          v113 = v111;
          v114 = v70[4];
          v115 = v70[5];
          v116 = v70[6];
          v117 = v70[7];
          v118 = v70[8];
          v189 = v70[3];
          v190 = v114;
          v191 = v115;
          v192 = v116;
          v193 = v117;
          v194 = v118;
          v187[0] = v203;
          v187[1] = v204;
          v187[2] = v205;
          v188 = v206;

          MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v113, v187, v167, v108);
          if (v109)
          {
            break;
          }

          v181 = v112;
          v186 = 0;

          v119 = swift_allocObject();
          v121 = v168;
          v120 = v169;
          v119[2] = v172;
          v119[3] = v120;
          v119[4] = v121;
          v177 = v119;
          v119[5] = v170;

          sub_22F741740();
          if (qword_2810A8E30 != -1)
          {
            swift_once();
          }

          v122 = v179;
          sub_22F740AC0();
          sub_22F740A90();
          (*v171)(v122, v180);
          v176 = v70[9];
          v123 = v184;
          v124 = v178;
          (*(v184 + 16))(v178, v183, v72);
          v125 = (*(v123 + 80) + 16) & ~*(v123 + 80);
          v126 = (v165 + v125) & 0xFFFFFFFFFFFFFFF8;
          v127 = (v126 + 63) & 0xFFFFFFFFFFFFFFF8;
          v175 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v127 + 39) & 0xFFFFFFFFFFFFFFF8;
          v129 = swift_allocObject();
          (*(v123 + 32))(v129 + v125, v124, v185);
          v130 = v129 + v126;
          v131 = v204;
          *v130 = v203;
          *(v130 + 16) = v131;
          *(v130 + 32) = v205;
          *(v130 + 48) = v206;
          v132 = v181;
          *(v129 + v127) = v182;
          v133 = v129 + v175;
          v134 = v182;
          *v133 = "MusicKitClient HTTP Request";
          *(v133 + 8) = 27;
          *(v133 + 16) = 2;
          *(v129 + v128) = v132;
          v135 = (v129 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8));
          v136 = v177;
          *v135 = sub_22F235C58;
          v135[1] = v136;
          v137 = swift_allocObject();
          *(v137 + 16) = sub_22F235DC4;
          *(v137 + 24) = v129;
          v193 = sub_22F2915BC;
          v194 = v137;
          v189 = MEMORY[0x277D85DD0];
          v190 = 1107296256;
          v191 = sub_22F2280B0;
          v192 = &block_descriptor_59;
          v138 = _Block_copy(&v189);
          sub_22F1D20B0(&v203, v187);

          v139 = v132;
          v70 = v134;
          v140 = v139;

          v72 = v185;

          dispatch_sync(v176, v138);
          _Block_release(v138);

          v108 = v183;
          (*(v184 + 8))(v183, v72);
          LOBYTE(v134) = swift_isEscapingClosureAtFileLocation();

          v71 = v174;
          v109 = v186;
          if (v134)
          {
            __break(1u);
            goto LABEL_46;
          }
        }

        v141 = v170;
        [*(v170 + 24) lock];
        LOBYTE(v65) = 1;
        swift_beginAccess();
        v142 = *(v141 + 16);
        *(v141 + 16) = v109;

        v143 = *(v141 + 24);
        v66 = v109;
        v144 = v109;
        [v143 unlock];
        v70 = v168;
        Batch = v168[4];

        os_unfair_lock_lock((Batch + 32));
        if (*(Batch + 16))
        {
          os_unfair_lock_unlock((Batch + 32));

          goto LABEL_43;
        }

LABEL_42:
        *(Batch + 16) = v65;
        os_unfair_lock_unlock((Batch + 32));

        v147 = v70[3];
        (v70[2])(v146);

LABEL_43:

LABEL_44:
        v55 = v158;
        v90 = v160;
        goto LABEL_45;
      }
    }

    else
    {
      v145 = v70[2];
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v167) = 1;
      v75 = v186;
      if (Batch)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = sub_22F740B70();
  v47 = sub_22F7415C0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22F0FC000, v46, v47, "[MemoriesMusic] - MusicCacheMusicKitReconciler finishing with no songs to refresh.", v48, 2u);
    v49 = v48;
    v39 = v186;
    MEMORY[0x2319033A0](v49, -1, -1);
  }

  sub_22F7416A0();
  v50 = v174;
  if (!v39)
  {
    v176(0);
  }
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3E9DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3E9E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3E9E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3E9F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = sub_22F740270();
  v66 = *(v68 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_22F7404D0();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v76);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F740A20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v61 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v20);
  v63 = &v61 - v23;
  v83 = sub_22F7403B0();
  v24 = *(v83 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v83);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = sub_22F73FD40();
  v29 = *(v28 + 16);
  if (v29)
  {
    v62 = v22;
    v31 = *(v24 + 16);
    v30 = v24 + 16;
    v81 = v31;
    v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v61 = v28;
    v33 = v28 + v32;
    v34 = *(v30 + 56);
    v79 = (v30 - 8);
    v80 = v34;
    v78 = (v5 + 88);
    v77 = *MEMORY[0x277D3C4B0];
    v70 = (v5 + 96);
    v71 = (v5 + 8);
    v75 = v10;
    v35 = (v10 + 32);
    v85 = MEMORY[0x277D84F90];
    v72 = v9;
    v36 = v76;
    v82 = v30;
    do
    {
      v37 = v83;
      v81(v27, v33, v83);
      sub_22F7403A0();
      (*v79)(v27, v37);
      v38 = (*v78)(v8, v36);
      if (v38 == v77)
      {
        (*v70)(v8, v36);
        v39 = *v35;
        v40 = v74;
        v41 = v8;
        (*v35)(v74, v8, v9);
        v42 = v9;
        v43 = v73;
        v39(v73, v40, v42);
        v39(v84, v43, v42);
        v44 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_22F14051C(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        v85 = v44;
        v8 = v41;
        if (v46 >= v45 >> 1)
        {
          v85 = sub_22F14051C(v45 > 1, v46 + 1, 1, v85);
        }

        v47 = v85;
        v85[2] = v46 + 1;
        v48 = v47 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v46;
        v9 = v72;
        v39(v48, v84, v72);
        v36 = v76;
      }

      else
      {
        (*v71)(v8, v36);
      }

      v33 += v80;
      --v29;
    }

    while (v29);

    v10 = v75;
    v22 = v62;
    v49 = v85;
    if (v85[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_12:
      v50 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v85 = *(v10 + 16);
      (v85)(v22, v49 + v50, v9);

      v51 = v63;
      (*(v10 + 32))(v63, v22, v9);
      sub_22F73FD90();
      sub_22F73FD50();
      v52 = v66;
      v53 = v67;
      *v67 = 0;
      (*(v52 + 104))(v53, *MEMORY[0x277D3C2B8], v68);
      (v85)(v64, v51, v9);
      sub_22F740530();
      (*(v10 + 8))(v51, v9);
      v54 = 0;
      goto LABEL_19;
    }
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v55 = sub_22F740B90();
  __swift_project_value_buffer(v55, qword_2810B4D00);
  v56 = sub_22F740B70();
  v57 = sub_22F7415E0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_22F0FC000, v56, v57, "The query token is not a part of week token", v58, 2u);
    MEMORY[0x2319033A0](v58, -1, -1);
  }

  v54 = 1;
LABEL_19:
  v59 = sub_22F740540();
  return (*(*(v59 - 8) + 56))(v69, v54, 1, v59);
}

char *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC018generatePartOfWeekC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAB42D8, &qword_22F78B138);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_22F740540();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = *(sub_22F73FDA0() - 8);
  v15 = (v7 + 48);
  v16 = (v7 + 32);
  v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v28 = *(v14 + 72);
  v18 = MEMORY[0x277D84F90];
  v25 = v11;
  v26 = v7;
  v24 = (v7 + 48);
  do
  {
    sub_22F3E9F00(v17, v5);
    if ((*v15)(v5, 1, v6) == 1)
    {
      sub_22F3EA958(v5);
    }

    else
    {
      v19 = *v16;
      v20 = v27;
      (*v16)(v27, v5, v6);
      v19(v11, v20, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22F13EAB4(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_22F13EAB4(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v11 = v25;
      v19(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v25, v6);
      v15 = v24;
    }

    v17 += v28;
    --v13;
  }

  while (v13);
  return v18;
}

uint64_t sub_22F3EA958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAB42D8, &qword_22F78B138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F3EA9D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_22F3EAA1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22F3EAA78(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 titles];
  v5 = sub_22F741180();

  v6 = [a1 artists];
  v7 = sub_22F741180();

  v8 = [a1 genres];
  v9 = sub_22F741180();

  v10 = [a1 isTrip];
  v11 = [a1 moodsText];
  v12 = sub_22F741180();

  v13 = [a1 length];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14 == 0;
  *(a2 + 41) = v10;
}

uint64_t BinaryCategoricalEncoder.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BinaryCategoricalEncoder.init(_:)(a1);
  return v2;
}

void *BinaryCategoricalEncoder.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_22F741230();
  sub_22F741280();
  v6 = *(v3 + 88);

  swift_getWitnessTable();
  sub_22F7414A0();
  v7 = sub_22F741460();

  if (v5 == v7)
  {
    v1[2] = a1;
  }

  else
  {

    type metadata accessor for BinaryCategoricalEncoder.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    type metadata accessor for BinaryCategoricalEncoder();
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t sub_22F3EADE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *v2;
  v30 = a1;
  v4 = *(v29 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v28 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = sub_22F741860();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v17 = v2[2];
  sub_22F741230();
  v28[1] = a2;
  sub_22F73FE00();
  v35[1] = v17;
  v18 = v4;
  v19 = sub_22F741280();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231900C20](v35, v19, WitnessTable);
  v34 = v35[0];
  sub_22F741D90();
  sub_22F741D60();
  v28[2] = WitnessTable;
  v28[3] = v19;
  v21 = sub_22F741D80();
  v22 = (v10 + 32);
  v31 = TupleTypeMetadata2 - 8;
  v32 = v21;
  v23 = (v5 + 32);
  for (i = (v5 + 8); ; (*i)(v8, v18))
  {
    sub_22F741D70();
    (*v22)(v16, v13, v33);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v25 = *v16;
    (*v23)(v8, &v16[*(TupleTypeMetadata2 + 48)], v18);
    v35[0] = v30;
    v26 = *(*(v29 + 88) + 8);
    if (sub_22F7410C0())
    {
      sub_22F73FE80();
    }
  }
}

uint64_t sub_22F3EB12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_22F210E70(v5, v5);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(v5 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = sub_22F7411A0();
  (*(v9 + 16))(v13, a1, v5);
  v14 = sub_22F20F8F4(v12);
  sub_22F3EADE0(v14, a2);
}

uint64_t BinaryCategoricalEncoder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BinaryCategoricalEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BinaryCategoricalEncoder.transform(_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

uint64_t sub_22F3EB37C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_22F1E2BE4();
  sub_22F73FC40();
  v9 = v8;
  sub_22F73FC30();
  if (v9 == 0.0 || v10 == 0.0)
  {
    return (*(v4 + 16))(a1, v1, v3);
  }

  if (v9 >= v10)
  {
    sub_22F3ECED0();
    sub_22F3ECFD4(qword_27DAB43F0);
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_22F73FC00();
    sub_22F73FBF0();
    return (*(v4 + 8))(v7, v3);
  }
}

id sub_22F3EB544(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() zerosWithRows:*(a1 + 16) columns:*(a2 + 16)];
  v3 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v4 = v2;
  v5 = sub_22F740DF0();
  v6 = sub_22F741160();
  v7 = sub_22F741160();
  v8 = [v3 initWithName:v5 rowLabels:v6 columnLabels:v7 matrix:v4];

  if (!v8)
  {
    sub_22F3ECE7C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_22F3EB684(uint64_t a1, void *a2)
{
  v98 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v87 - v9;
  v10 = sub_22F7416B0();
  v12 = v11;
  v13 = a1 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
  swift_beginAccess();
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v16 = (*(v15 + 1))(v14, v15);
  v18 = v17;
  swift_endAccess();
  if (v18)
  {
    v101 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();

    return v18;
  }

  v96 = v10;
  v19 = [v16 columnLabels];
  if (!v19)
  {
    goto LABEL_28;
  }

  v18 = v19;
  v20 = sub_22F741180();

  v21 = [v98 columnLabels];
  if (!v21)
  {

LABEL_28:
    sub_22F3ECE7C();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    sub_22F21173C(v16);

    return v18;
  }

  v91 = v16;
  v88 = v2;
  v89 = v12;
  v22 = v21;
  v23 = sub_22F741180();

  v18 = sub_22F1515F8(v24);
  v90 = v23;

  v26 = v20[2];
  v97 = v20;
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v27 = 0;
  v99 = v20 + 4;
  v28 = v18 + 56;
  v29 = MEMORY[0x277D84F90];
  do
  {
    v100 = v29;
    v30 = v27;
    while (1)
    {
      if (v30 >= v20[2])
      {
        __break(1u);
        goto LABEL_62;
      }

      v27 = (v30 + 1);
      if (*(v18 + 16))
      {
        break;
      }

LABEL_9:
      v30 = v27;
      if (v27 == v26)
      {
        v29 = v100;
        goto LABEL_31;
      }
    }

    v15 = v20;
    v31 = &v99[2 * v30];
    v32 = *v31;
    v3 = v31[1];
    v33 = *(v18 + 40);
    sub_22F742170();

    sub_22F740D60();
    v34 = sub_22F7421D0();
    v35 = -1 << *(v18 + 32);
    v36 = v34 & ~v35;
    if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
LABEL_8:

      v20 = v15;
      goto LABEL_9;
    }

    v37 = ~v35;
    while (1)
    {
      v38 = (*(v18 + 48) + 16 * v36);
      v39 = *v38 == v32 && v38[1] == v3;
      if (v39 || (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v36 = (v36 + 1) & v37;
      if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v29 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_22F146454(0, *(v29 + 16) + 1, 1);
      v29 = v102;
    }

    v15 = *(v29 + 16);
    v40 = *(v29 + 24);
    if (v15 >= v40 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_22F146454((v40 > 1), v15 + 1, 1);
      v29 = v102;
    }

    *(v29 + 16) = v15 + 1;
    v41 = v29 + 16 * v15;
    *(v41 + 32) = v32;
    *(v41 + 40) = v3;
    v20 = v97;
  }

  while (v27 != v26);
LABEL_31:
  v100 = v29;
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4D90);
  v44 = v100;

  v45 = sub_22F740B70();
  v46 = sub_22F7415D0();

  v47 = os_log_type_enabled(v45, v46);
  v15 = v89;
  v48 = v88;
  if (v47)
  {
    v49 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v101 = v99;
    *v49 = 136315138;
    v50 = MEMORY[0x231900D40](v44, MEMORY[0x277D837D0]);
    v52 = v48;
    v53 = v15;
    v54 = sub_22F145F20(v50, v51, &v101);

    *(v49 + 4) = v54;
    v15 = v53;
    v48 = v52;
    _os_log_impl(&dword_22F0FC000, v45, v46, "songKeywordsInCollection = %s", v49, 0xCu);
    v55 = v99;
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x2319033A0](v55, -1, -1);
    MEMORY[0x2319033A0](v49, -1, -1);
  }

  v56 = v96;
  if (*(v44 + 16))
  {

    v57 = v91;
    sub_22F256030(v91);
    v58 = v57;
    goto LABEL_37;
  }

  v61 = v91;
  v62 = [v91 rowLabels];
  if (!v62)
  {

    sub_22F3ECE7C();
    swift_allocError();
    *v70 = 2;
    swift_willThrow();
    sub_22F21173C(v61);
LABEL_53:

    goto LABEL_54;
  }

  v63 = v62;
  v64 = sub_22F741180();

  v65 = sub_22F3EB544(v64, v90);
  if (v48)
  {
    sub_22F21173C(v91);

    goto LABEL_42;
  }

  v58 = v65;

  v56 = v96;
LABEL_37:
  v59 = [v98 name];
  if (v59)
  {
    v60 = v59;
    sub_22F740E20();

    v56 = v96;
  }

  v66 = sub_22F741550();
  if (v48)
  {
    sub_22F21173C(v91);

    return v18;
  }

  v67 = v66;
  v99 = v58;

  if (!v67)
  {

    v27 = 0;
LABEL_52:

    sub_22F3ECE7C();
    swift_allocError();
    *v71 = 1;
    swift_willThrow();
    sub_22F21173C(v91);

    goto LABEL_53;
  }

  v27 = v67;
  v68 = sub_22F741530();
  if (!v68)
  {

    goto LABEL_52;
  }

  v3 = v68;

  sub_22F7416A0();
  v69 = sub_22F741520();
  v28 = 0;
  v73 = v69;
  if (*(v69 + 16) && (v74 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v75 & 1) != 0))
  {
    v76 = *(*(v73 + 56) + 8 * v74);
  }

  else
  {

    sub_22F14EB58(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = sub_22F20BA80(v3, v99);
LABEL_62:
  v77 = isUniquelyReferenced_nonNull_native;
  v78 = sub_22F741540();
  if (v28)
  {
    sub_22F21173C(v91);

LABEL_42:
LABEL_54:

    return v18;
  }

  else
  {
    v88 = v77;
    v97 = v3;
    v98 = v78;
    v79 = [v78 vector];
    v80 = [v79 wrapper];

    sub_22F73FBC0();
    sub_22F3EB37C(v94);
    v81 = [v98 labels];
    result = v90;
    if (v81)
    {

      v82 = sub_22F741180();

      v83 = v93;
      v84 = v94;
      v85 = sub_22F73FD10();
      v18 = sub_22F1E200C(v82, v85);

      sub_22F21173C(v91);
      v86 = *(v92 + 8);
      v86(v84, v83);
      v86(v95, v83);
      return v18;
    }

    __break(1u);
  }

  return result;
}