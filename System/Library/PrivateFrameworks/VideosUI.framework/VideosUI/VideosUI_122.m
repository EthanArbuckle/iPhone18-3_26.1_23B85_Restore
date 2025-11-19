void sub_1E4051D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v127 = v25;
  OUTLINED_FUNCTION_118();
  v26 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v122 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v120 = v29;
  OUTLINED_FUNCTION_138();
  v121 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v118 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  v117 = v32;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v123 = v34;
  OUTLINED_FUNCTION_138();
  v126 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  v43 = v42;
  OUTLINED_FUNCTION_138();
  v125 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  v50 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v51 = VUISignpostLogObject();
  OUTLINED_FUNCTION_4_199();
  v124 = v49;
  sub_1E41FFBA4();

  v52 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x230))();
  if (!v52 || (v53 = v52, , v53 != v21))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v54(v40);
    v55 = sub_1E41FFC94();
    v56 = sub_1E42067E4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_125_0();
      *v57 = 0;
      _os_log_impl(&dword_1E323F000, v55, v56, "StackViewController::received new items for wrong template", v57, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v58 = OUTLINED_FUNCTION_106_19();
    v59(v58, v126);
    v60 = v49;
    goto LABEL_27;
  }

  v113 = v26;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v61(v43);
  v62 = v24;

  v63 = sub_1E41FFC94();
  v64 = sub_1E4206814();

  v115 = v62;

  v112 = v64;
  v114 = v45;
  v116 = v21;
  if (!os_log_type_enabled(v63, v64))
  {

    v69 = (*(v36 + 8))(v43, v126);
    v60 = v124;
    v70 = v62;
LABEL_26:
    v93 = MEMORY[0x1E69E7D40];
    v94 = *((*MEMORY[0x1E69E7D40] & *v70) + 0x218);
    v95 = v94(v69);
    sub_1E4200104();

    v96 = sub_1E40527C4(v127);

    v97 = v70;
    sub_1E404E380(v96, v97);

    v98 = (*((*v93 & *v97) + 0x4A0))(v116, 2);
    v99 = v94(v98);
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v100 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v129[4] = sub_1E405A6C0;
    v129[5] = v101;
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v129[2] = v102;
    v129[3] = &block_descriptor_9_6;
    v103 = _Block_copy(v129);

    sub_1E4203FE4();
    v129[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_254();
    sub_1E3274C14(v104, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v106, v107);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v117, v120, v103);
    _Block_release(v103);

    (*(v122 + 8))(v120, v113);
    (*(v118 + 8))(v117, v121);
    (*((*MEMORY[0x1E69E7D40] & *v97) + 0x4A8))(v116, 2);
    OUTLINED_FUNCTION_105_15();
    v108(v123, v119);
    v45 = v114;
LABEL_27:
    sub_1E4206B94();
    v109 = VUISignpostLogObject();
    OUTLINED_FUNCTION_4_199();
    sub_1E41FFBA4();

    (*(v45 + 8))(v60, v125);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v111 = v63;
  v65 = OUTLINED_FUNCTION_100();
  v129[0] = OUTLINED_FUNCTION_164_1();
  *v65 = 136315650;
  v66 = sub_1E41E1364(v24);
  v68 = sub_1E3270FC8(v66, v67, v129);

  *(v65 + 4) = v68;
  *(v65 + 12) = 2080;
  if (!*(v21 + 24))
  {
    OUTLINED_FUNCTION_96_21();
  }

  v71 = OUTLINED_FUNCTION_32_0();
  v74 = sub_1E3270FC8(v71, v72, v73);

  *(v65 + 14) = v74;
  *(v65 + 22) = 2080;
  v75 = sub_1E32AE9B0(v127);
  v76 = MEMORY[0x1E69E7CC0];
  v70 = v62;
  if (!v75)
  {
    v88 = v43;
LABEL_25:
    v89 = MEMORY[0x1E6910C30](v76, MEMORY[0x1E69E6158]);
    v91 = v90;

    v92 = sub_1E3270FC8(v89, v91, v129);

    *(v65 + 24) = v92;
    _os_log_impl(&dword_1E323F000, v111, v112, "MUPN::%s::StackViewController::TVMD::didAppendItems %s viewModels %s", v65, 0x20u);
    OUTLINED_FUNCTION_97_17(&a12);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_6_0();

    v69 = (*(v36 + 8))(v88, v126);
    v60 = v124;
    goto LABEL_26;
  }

  v77 = v75;
  v110 = v65;
  v128 = MEMORY[0x1E69E7CC0];
  v78 = OUTLINED_FUNCTION_55_41();
  sub_1E377FD30(v78, v79, v80);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v81 = 0;
    v76 = v128;
    do
    {
      if ((v127 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x1E6911E60](v81, v127);
      }

      else
      {
        v82 = *(v127 + 8 * v81 + 32);
      }

      v83 = *(v82 + 24);
      if (v83)
      {
        v21 = *(v82 + 16);
      }

      else
      {
        v83 = 0xE700000000000000;
        OUTLINED_FUNCTION_46_61();
      }

      v85 = *(v128 + 16);
      v84 = *(v128 + 24);
      if (v85 >= v84 >> 1)
      {
        v87 = OUTLINED_FUNCTION_35(v84);
        sub_1E377FD30(v87, v85 + 1, 1);
      }

      ++v81;
      *(v128 + 16) = v85 + 1;
      v86 = v128 + 16 * v85;
      *(v86 + 32) = v21;
      *(v86 + 40) = v83;
    }

    while (v77 != v81);
    v88 = v43;
    v70 = v115;
    v65 = v110;
    goto LABEL_25;
  }

  __break(1u);
}

unint64_t sub_1E40527C4(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v22 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
    result = sub_1E4207384();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      type metadata accessor for CollectionViewModel();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = v8;
      v10 = v6;
      v11 = *((*v6 & *v2) + 0x478);

      if ((v11(v9) & 1) == 0)
      {
        break;
      }

      v12 = *(*v9 + 1216);
      v13 = swift_unknownObjectRetain();
      v14 = v12(v13, &off_1F5D935D0);
      (*(*v9 + 1040))(v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B578, &unk_1ECF3F4C0);
      v16 = sub_1E4149048(v15);

      if ((v16 & 1) == 0)
      {
        MEMORY[0x1E6910BF0](v17);
        OUTLINED_FUNCTION_111_12();
        v6 = v10;
        if (!v20)
        {
          goto LABEL_15;
        }

LABEL_21:
        OUTLINED_FUNCTION_35(v19);
        sub_1E42062F4();
LABEL_15:
        sub_1E4206324();

        v21 = v22;
        goto LABEL_17;
      }

      v6 = v10;
LABEL_17:
      if (v4 == ++v5)
      {
        return v21;
      }
    }

    v6 = v10;
LABEL_13:
    if (((*((*v6 & *v2) + 0x478))(v7) & 1) == 0)
    {

      goto LABEL_17;
    }

    MEMORY[0x1E6910BF0](v18);
    OUTLINED_FUNCTION_111_12();
    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4052AD8()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  OUTLINED_FUNCTION_26_3();
  v4 = (*((*v0 & v3) + 0x500))();

  return v4;
}

void sub_1E4052B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v147 = v28;
  v148 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_3();
  v145 = v29;
  OUTLINED_FUNCTION_138();
  v146 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v144 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v157 = v37;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  v149 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v138 - v43;
  v45 = *(v20 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell);
  v151 = v39;
  v152 = v46;
  if (v45 != 1)
  {
LABEL_22:
    v79 = v35;
    v155 = v24;

    v81 = sub_1E40502A4(v80);
    v83 = v82;
    v85 = v84;
    OUTLINED_FUNCTION_26_3();
    v86 = v26;
    v88 = *((*MEMORY[0x1E69E7D40] & v87) + 0x218);
    v89 = v20;
    v153 = (*MEMORY[0x1E69E7D40] & v87) + 536;
    v90 = v88();
    v91 = v157;
    sub_1E4200104();

    v154 = v81;
    v159 = v81;
    v160 = v83;
    v161 = v85;
    v92 = sub_1E41FFFD4();
    if (v93)
    {
      (*(v79 + 8))(v91, v33);
    }

    else
    {
      v150 = v85;
      v94 = v83;
      v156 = v33;
      v95 = v79;
      v96 = (*(*v86 + 1344))(v92);
      type metadata accessor for StackViewController();
      v97 = sub_1E407DA28();
      sub_1E38E5664(v96, v97);
      OUTLINED_FUNCTION_28_3();
      if (v33)
      {
        v98 = *((*MEMORY[0x1E69E7D40] & *v89) + 0x2A8);

        v100 = v98(v99);
        v101 = sub_1E378A81C(v154, v94, v100);

        v102 = v155;
        if (v101)
        {
          swift_getObjectType();
          v103 = dynamic_cast_existential_1_conditional(v101);
          v105 = v150;
          if (v103)
          {
            v106 = v104;
            ObjectType = swift_getObjectType();
            (*(v106 + 16))(v86, v102, ObjectType, v106);
          }

          else
          {
            LODWORD(v155) = v96;
            sub_1E324FBDC();
            v113 = v151;
            OUTLINED_FUNCTION_146_2();
            v114(v149);
            v115 = sub_1E41FFC94();
            v116 = sub_1E4206814();
            if (OUTLINED_FUNCTION_104(v116))
            {
              v117 = OUTLINED_FUNCTION_6_21();
              v118 = OUTLINED_FUNCTION_100();
              v159 = v118;
              *v117 = 136315138;
              sub_1E384EE08(v155);
              sub_1E3270FC8(v119, v120, &v159);
              OUTLINED_FUNCTION_142_11();
              *(v117 + 4) = v105;
              _os_log_impl(&dword_1E323F000, v115, v116, "StackViewController:: Handle append for hosted controller %s", v117, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v118);
              OUTLINED_FUNCTION_51_2();
              OUTLINED_FUNCTION_6_0();

              (*(v113 + 8))(v149, v152);
            }

            else
            {

              v135 = OUTLINED_FUNCTION_34();
              v137(v135, v136);
            }
          }

          (*(v95 + 8))(v157, v156);
          goto LABEL_39;
        }

        (*(v79 + 8))(v157, v156);
      }

      else
      {
        (*((*MEMORY[0x1E69E7D40] & *v89) + 0x4A0))(v86, 2);
        v108 = v157;
        v109 = sub_1E4050394(v155, v154, v94);
        v110 = (v88)(v109);
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_25();
        sub_1E42000D4();

        (*((*MEMORY[0x1E69E7D40] & *v89) + 0x4A8))(v86, 2);
        sub_1E40536E4();
        sub_1E41D09BC();
        if (!v111)
        {

          (*(v79 + 8))(v108, v156);
          goto LABEL_39;
        }

        v112 = v111;

        if (v112 == v86)
        {
          v121 = MEMORY[0x1E69E7CC0];
          sub_1E3280A90(0, &qword_1EE23B1D0);
          v122 = sub_1E4206A04();
          OUTLINED_FUNCTION_4_0();
          v123 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v163 = sub_1E405A0B8;
          v164 = v123;
          v159 = MEMORY[0x1E69E9820];
          v160 = 1107296256;
          OUTLINED_FUNCTION_14_1();
          v161 = v124;
          v162 = &block_descriptor_13_4;
          v125 = _Block_copy(&v159);

          v126 = v143;
          sub_1E4203FE4();
          v159 = v121;
          OUTLINED_FUNCTION_4_254();
          sub_1E3274C14(v127, v128);
          v129 = OUTLINED_FUNCTION_32_7();
          __swift_instantiateConcreteTypeFromMangledNameV2(v129);
          OUTLINED_FUNCTION_47();
          sub_1E32752B0(v130, v131);
          v132 = v145;
          sub_1E42072E4();
          MEMORY[0x1E6911380](0, v126, v132, v125);
          _Block_release(v125);

          v133 = OUTLINED_FUNCTION_124();
          v134(v133);
          (*(v144 + 8))(v126, v146);
          (*(v79 + 8))(v157, v156);
          goto LABEL_39;
        }

        (*(v79 + 8))(v108, v156);
      }
    }

LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v47(v44);
  v155 = v20;
  v48 = v20;

  v49 = sub_1E41FFC94();
  v50 = sub_1E4206814();

  if (!os_log_type_enabled(v49, v50))
  {

    v67 = OUTLINED_FUNCTION_113_12();
    v68(v67);
LABEL_21:
    v20 = v155;
    goto LABEL_22;
  }

  LODWORD(v153) = v50;
  v156 = v33;
  v154 = v35;
  v51 = OUTLINED_FUNCTION_100();
  v142 = OUTLINED_FUNCTION_164_1();
  v159 = v142;
  *v51 = 136315650;
  v52 = sub_1E41E1364(v48);
  sub_1E3270FC8(v52, v53, &v159);
  OUTLINED_FUNCTION_28_3();
  *(v51 + 4) = v33;
  v150 = v51;
  *(v51 + 12) = 2080;
  v54 = sub_1E32AE9B0(v24);
  v55 = MEMORY[0x1E69E7CC0];
  if (!v54)
  {
LABEL_17:
    MEMORY[0x1E6910C30](v55, MEMORY[0x1E69E6158]);

    v69 = OUTLINED_FUNCTION_34();
    v72 = sub_1E3270FC8(v69, v70, v71);

    v73 = v150;
    *(v150 + 14) = v72;
    *(v73 + 22) = 2080;
    if (*(v26 + 24))
    {
      v74 = *(v26 + 16);
      v75 = *(v26 + 24);
    }

    else
    {
      v74 = 0x6E776F6E6B6E75;
      v75 = 0xE700000000000000;
    }

    v76 = sub_1E3270FC8(v74, v75, &v159);

    *(v73 + 24) = v76;
    _os_log_impl(&dword_1E323F000, v49, v153, "MUPN::%s::StackViewController::CVMD::didAppendItems %s to %s", v73, 0x20u);
    OUTLINED_FUNCTION_97_17(&a17);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_7_9();

    v77 = OUTLINED_FUNCTION_113_12();
    v78(v77);
    v35 = v154;
    v33 = v156;
    goto LABEL_21;
  }

  v56 = v54;
  v139 = v49;
  v140 = v44;
  v141 = v26;
  v158 = MEMORY[0x1E69E7CC0];
  v57 = OUTLINED_FUNCTION_55_41();
  sub_1E377FD30(v57, v58, v59);
  if ((v56 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    v55 = v158;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1E6911E60](v60, v24);
      }

      else
      {
        v61 = *(v24 + 8 * v60 + 32);
      }

      v62 = *(v61 + 24);
      if (v62)
      {
        v26 = *(v61 + 16);
      }

      else
      {
        v62 = 0xE700000000000000;
        OUTLINED_FUNCTION_110_14();
      }

      v158 = v55;
      v64 = *(v55 + 16);
      v63 = *(v55 + 24);
      if (v64 >= v63 >> 1)
      {
        v66 = OUTLINED_FUNCTION_35(v63);
        sub_1E377FD30(v66, v64 + 1, 1);
        v55 = v158;
      }

      ++v60;
      *(v55 + 16) = v64 + 1;
      v65 = v55 + 16 * v64;
      *(v65 + 32) = v26;
      *(v65 + 40) = v62;
    }

    while (v56 != v60);
    v26 = v141;
    v49 = v139;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1E40536E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = (*(*v3 + 624))();
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  type metadata accessor for StackViewController();
  v13 = sub_1E407DA28();
  v14 = sub_1E38E5664(*(v12 + 98), v13);

  if (v14)
  {
    v15 = [v1 vuiParentViewController];
    if (v15)
    {
      v16 = v15;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v16))
      {
        v18 = v17;
        swift_getObjectType();
        v19 = *(v18 + 40);
        v35 = v16;
        v20 = OUTLINED_FUNCTION_124();
        v19(v20);

        OUTLINED_FUNCTION_25_2();

        return;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v24(v10);

    v25 = sub_1E41FFC94();
    v26 = sub_1E42067F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      v37 = v28;
      *v27 = 136315138;
      v29 = *(v12 + 24);
      if (v29)
      {
        v30 = *(v12 + 16);
        v31 = MEMORY[0x1E69E6158];
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v36[2] = 0;
      }

      v36[0] = v30;
      v36[1] = v29;
      v36[3] = v31;

      v32 = sub_1E3294FA4(v36);
      v34 = sub_1E3270FC8(v32, v33, &v37);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_1E323F000, v25, v26, "StackViewController::section is not a hosted controller, id: [%s]", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
LABEL_19:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4053A18()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_118();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    v47 = v4;
    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_101();
    v7(v6);
    v8 = v0;

    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_141_11();
      v46 = OUTLINED_FUNCTION_72_0();
      v49 = v46;
      *v11 = 136315650;
      v12 = sub_1E41E1364(v8);
      v14 = v13;
      v15 = sub_1E3270FC8(v12, v13, &v49);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      if (v1[3])
      {
        v14 = v1[2];
        v16 = v1[3];
      }

      else
      {
        v16 = 0xE700000000000000;
        OUTLINED_FUNCTION_50_54();
      }

      v19 = sub_1E3270FC8(v14, v16, &v49);

      *(v11 + 14) = v19;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v47 & 1;
      _os_log_impl(&dword_1E323F000, v9, v10, "MUPN::%s::StackViewController::CVMD::didReplace %s animated %{BOOL}d", v11, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      v20 = OUTLINED_FUNCTION_32_7();
      v21(v20);
    }

    else
    {

      v17 = OUTLINED_FUNCTION_32_7();
      v18(v17);
    }
  }

  v22 = [objc_opt_self() isMac];
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v22);
  v25 = v24;
  v26 = &selRef_frame;
  if (!v22)
  {
    v26 = &selRef_vuiBounds;
  }

  [v24 *v26];
  OUTLINED_FUNCTION_18_3();

  v27 = OUTLINED_FUNCTION_14_25();
  type metadata accessor for LayoutGrid();
  v28 = sub_1E3A2579C(v27);
  v29 = (*((*v23 & *v2) + 0x3E0))();
  if (v30 == 1)
  {
    sub_1E3C2AE10();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    if ((*(*v1 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v38 + 1640))(v33, v35, v37);
    }

    (*(*v1 + 1384))(v33, v35, v37);
  }

  else
  {
    v39 = v29;
    v40 = v30;
    LOBYTE(v49) = v29;
    v50 = v30;
    v51 = v31;
    v48 = v30;
    MEMORY[0x1EEE9AC00](v29);
    v45[2] = &v49;
    v45[3] = v2;
    v41 = v40;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE00);
    sub_1E4148D98(sub_1E405A108, v45, v42);
    sub_1E39DFB80(v39, v40);
    if ((*(*v1 + 392))())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v43 + 1640))(v28);
    }

    v44 = v50;
    (*(*v1 + 1384))(v28, v50, v51);
  }

  sub_1E4053FB4();
  OUTLINED_FUNCTION_10_3();
}

void sub_1E4053FB4()
{
  OUTLINED_FUNCTION_31_1();
  v157 = __PAIR64__(v3, v2);
  v5 = v4;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v147 = v7;
  v149 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v152 = v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_2();
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47_3();
  v159 = v10;
  v154 = v20;
  v142 = v18;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    sub_1E324FBDC();
    v21 = OUTLINED_FUNCTION_101();
    v22(v21);
    v23 = v0;

    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v162 = v1;
      v26 = swift_slowAlloc();
      v164 = OUTLINED_FUNCTION_72_0();
      *v26 = 136315906;
      v27 = sub_1E41E1364(v23);
      v29 = v28;
      v30 = sub_1E3270FC8(v27, v28, &v164);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      if (v5[3])
      {
        v29 = v5[2];
        v31 = v5[3];
      }

      else
      {
        v31 = 0xE700000000000000;
        OUTLINED_FUNCTION_46_61();
      }

      v34 = sub_1E3270FC8(v29, v31, &v164);

      *(v26 + 14) = v34;
      *(v26 + 22) = 1024;
      *(v26 + 24) = v157 & 1;
      *(v26 + 28) = 1024;
      *(v26 + 30) = BYTE4(v157) & 1;
      _os_log_impl(&dword_1E323F000, v24, v25, "MUPN::%s::StackViewController::internalDidReplace %s animated %{BOOL}d %{BOOL}d", v26, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v35 = OUTLINED_FUNCTION_62_35();
      v36(v35, v154);
      v1 = v162;
    }

    else
    {

      v32 = OUTLINED_FUNCTION_62_35();
      v33(v32, v12);
    }
  }

  v145 = v14;

  v38 = sub_1E40502A4(v37);
  v40 = v39;
  v42 = v41;
  OUTLINED_FUNCTION_38_3();
  v44 = (*((*MEMORY[0x1E69E7D40] & v43) + 0x218))();
  sub_1E4200104();

  v45 = v1;
  v46 = *(*v5 + 1040);
  v151 = *v5 + 1040;
  v164 = v46();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v48, v49);
  sub_1E4149048(v47);
  OUTLINED_FUNCTION_50();

  if (&v164)
  {
    v164 = v38;
    v165 = v40;
    v166 = v42;
    sub_1E41FFFD4();
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_2();
      (*(v57 + 1344))();
      type metadata accessor for StackViewController();
      sub_1E407DA28();
      v58 = OUTLINED_FUNCTION_53_51();
      v60 = sub_1E38E5664(v58, v59);

      if (v60)
      {
        OUTLINED_FUNCTION_154();
        v62 = (*(v61 + 696))(&v164);
        v63 = sub_1E3E8AF10(v38, v40);
        v62(&v164, 0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v64 = OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_138_11(v64, xmmword_1E4297BE0);

      sub_1E41FFFC4();

      OUTLINED_FUNCTION_38_74();

      v65 = OUTLINED_FUNCTION_49_59();
      v66(v65, v163);
      goto LABEL_61;
    }

    v51 = OUTLINED_FUNCTION_49_59();
    v52(v51, v163);
    goto LABEL_11;
  }

  v164 = v38;
  v165 = v40;
  v160 = v40;
  v166 = v42;
  v53 = sub_1E41FFFD4();
  if (v54)
  {
    if (sub_1E4050614(v5, v45))
    {
      OUTLINED_FUNCTION_38_74();

      v55 = OUTLINED_FUNCTION_49_59();
      v56(v55, v163);
LABEL_61:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v87 = OUTLINED_FUNCTION_49_59();
    v88(v87, v163);

LABEL_60:

    goto LABEL_61;
  }

  v67 = v53;
  OUTLINED_FUNCTION_71_2();
  v69 = (*(v68 + 1344))();
  type metadata accessor for StackViewController();
  sub_1E407DA28();
  v70 = OUTLINED_FUNCTION_53_51();
  sub_1E38E5664(v70, v71);
  OUTLINED_FUNCTION_28_3();
  if (v47)
  {
    OUTLINED_FUNCTION_154();
    v79 = *(v78 + 680);

    v81 = v79(v80);
    v82 = sub_1E378A81C(v38, v160, v81);

    if (v82)
    {
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v82))
      {
        swift_getObjectType();
        v83 = OUTLINED_FUNCTION_92_14();
        v84(v83);

        v85 = OUTLINED_FUNCTION_68_34();
        v86(v85);
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_69_8();
        v98(v142);
        v99 = sub_1E41FFC94();
        v100 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v100))
        {
          v101 = OUTLINED_FUNCTION_6_21();
          v102 = OUTLINED_FUNCTION_100();
          v164 = v102;
          *v101 = 136315138;
          sub_1E384EE08(v69);
          v105 = sub_1E3270FC8(v103, v104, &v164);

          *(v101 + 4) = v105;
          _os_log_impl(&dword_1E323F000, v99, v100, "StackViewController:: Handle replace for hosted controller %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_6_0();

          OUTLINED_FUNCTION_69_30();
          v106(v142, v154);
        }

        else
        {

          (*(v145 + 8))(v142, v154);
        }

        v137 = OUTLINED_FUNCTION_68_34();
        v138(v137);
      }

      goto LABEL_61;
    }

    (*(v159 + 8))(v45, v163);
LABEL_11:

    goto LABEL_60;
  }

  sub_1E4057ED0(v5, v67, v72, v73, v74, v75, v76, v77, v139, v140, v142, v143, v144, v145, v147, v149, v151, v152, v154, v156, v157, v42, v159, v160);
  v164 = v38;
  v165 = v161;
  v166 = v158;
  sub_1E41FFFF4();

  if (__OFADD__(v67, 1))
  {
    __break(1u);
    goto LABEL_65;
  }

  v89 = sub_1E4200014();
  if (__OFSUB__(v89, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v141 = v67;
  if (v89 - 1 < v67 + 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v90 = OUTLINED_FUNCTION_22_9();
    *(v90 + 16) = xmmword_1E4297BE0;
    *(v90 + 32) = v38;
    *(v90 + 40) = v161;
    *(v90 + 48) = v158;

    sub_1E41FFFC4();

    v91 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_138_11(v91, xmmword_1E4297BE0);

    sub_1E41FFFB4();
  }

  else
  {
    v170 = sub_1E4200044();
    v168 = v67 + 1;
    v169 = 0;
    v93 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v93);
    OUTLINED_FUNCTION_0_32();
    sub_1E32752B0(v94, &unk_1ECF429E0);
    sub_1E38D2054(&v168, &v164);
    v95 = v165;
    if (v165)
    {
      v155 = v166;
      v146 = v164;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v96 = OUTLINED_FUNCTION_22_9();
      *(v96 + 16) = xmmword_1E4297BE0;
      *(v96 + 32) = v38;
      *(v96 + 40) = v161;
      *(v96 + 48) = v158;

      sub_1E41FFFC4();

      v97 = OUTLINED_FUNCTION_22_9();
      *(v97 + 16) = xmmword_1E4297BE0;
      *(v97 + 32) = v38;
      *(v97 + 40) = v161;
      *(v97 + 48) = v158;
      v164 = v146;
      v165 = v95;
      v166 = v155;

      sub_1E41FFFE4();
    }
  }

  v107 = (v46)(v92);
  if (!v107)
  {
LABEL_45:
    LOBYTE(v168) = 41;
    OUTLINED_FUNCTION_71_2();
    (*(v114 + 776))(&v164, &v168, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v167)
    {
      v115 = swift_dynamicCast();
      v116 = MEMORY[0x1E69E7D40];
      if (v115)
      {
        v117 = v168;
        OUTLINED_FUNCTION_38_74();
        if (v117)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1E4298880;
          *(v118 + 32) = v5;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_1E325F6F0(&v164, &unk_1ECF296E0);
      v116 = MEMORY[0x1E69E7D40];
    }

    OUTLINED_FUNCTION_38_74();
LABEL_51:
    sub_1E404E8A4();
    if ((*(*v5 + 968))())
    {
      MEMORY[0x1E6909190](0, v141);
      OUTLINED_FUNCTION_38_3();
      (*((*v116 & v119) + 0x1D0))();
      v120 = OUTLINED_FUNCTION_53_51();
      sub_1E3AE003C(v120, v121);
      v123 = v122;

      if (v123 && (OUTLINED_FUNCTION_154(), v125 = (*(v124 + 440))(), v126 = sub_1E4205ED4(), , v127 = sub_1E41FE7E4(), v128 = [v125 supplementaryViewForElementKind:v126 atIndexPath:v127], v125, v126, v127, v128))
      {
        swift_getObjectType();
        v130 = v148;
        v129 = v150;
        if (dynamic_cast_existential_1_conditional(v128))
        {
          swift_getObjectType();
          v131 = OUTLINED_FUNCTION_92_14();
          v132(v131);
        }
      }

      else
      {

        v130 = v148;
        v129 = v150;
      }

      (*(v130 + 8))(v153, v129);
      v133 = OUTLINED_FUNCTION_68_34();
      v134(v133);
    }

    else
    {
      v135 = OUTLINED_FUNCTION_68_34();
      v136(v135);
    }

    goto LABEL_60;
  }

  v108 = v107;
  v109 = sub_1E32AE9B0(v107);
  if (!v109)
  {
LABEL_44:

    goto LABEL_45;
  }

  v110 = v109;
  if (v109 >= 1)
  {
    for (i = 0; i != v110; ++i)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v108);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8();
      v113 = (*(v112 + 872))();
      if (v113)
      {
        sub_1E4050394(v113, v38, v161);
      }
    }

    goto LABEL_44;
  }

LABEL_66:
  __break(1u);
}

void sub_1E4054F9C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_101();
    v7(v6);
    v8 = v0;

    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_49_0();
      v19 = OUTLINED_FUNCTION_72_0();
      *v11 = 136315394;
      v12 = sub_1E41E1364(v8);
      v14 = sub_1E3270FC8(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      if (!*(v1 + 24))
      {
        OUTLINED_FUNCTION_112_17();
      }

      v15 = OUTLINED_FUNCTION_123_0();
      v18 = sub_1E3270FC8(v15, v16, v17);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1E323F000, v9, v10, "MUPN::%s::StackViewController::CVMD::didReplaceWithReloadData %s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v0, v2);
  }

  sub_1E4053FB4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40551B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v126 - v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v127 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v126 - v16;
  v18 = v0[OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell];
  v137 = v9;
  v133 = v0;
  v134 = v4;
  v141 = v2;
  v132 = v6;
  v128 = v12;
  v129 = v19;
  if (v18 == 1)
  {
    v20 = sub_1E324FBDC();
    (*(v12 + 16))(v17, v20, v10);
    v21 = v0;

    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_100();
      v25 = OUTLINED_FUNCTION_164_1();
      v142 = v25;
      *v24 = 136315650;
      v26 = sub_1E41E1364(v21);
      v28 = sub_1E3270FC8(v26, v27, &v142);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_1E32AE9B0(v2);
      v30 = MEMORY[0x1E69E7CC0];
      if (v29)
      {
        v31 = v29;
        v136 = v25;
        v138 = v24;
        LODWORD(v139) = v23;
        v140 = v22;
        v145 = MEMORY[0x1E69E7CC0];
        v32 = OUTLINED_FUNCTION_17_148();
        sub_1E377FD30(v32, v33, v34);
        if (v31 < 0)
        {
          goto LABEL_57;
        }

        v35 = 0;
        v30 = v145;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            isa = MEMORY[0x1E6911E60](v35, v141);
          }

          else
          {
            isa = v141[v35 + 4].isa;
          }

          v37 = *(isa + 3);
          if (v37)
          {
            v38 = *(isa + 2);
          }

          else
          {
            v37 = 0xE700000000000000;
            v38 = 0x6E776F6E6B6E75;
          }

          v145 = v30;
          v40 = *(v30 + 16);
          v39 = *(v30 + 24);
          if (v40 >= v39 >> 1)
          {
            v42 = OUTLINED_FUNCTION_35(v39);
            sub_1E377FD30(v42, v40 + 1, 1);
            v30 = v145;
          }

          ++v35;
          *(v30 + 16) = v40 + 1;
          v41 = v30 + 16 * v40;
          *(v41 + 32) = v38;
          *(v41 + 40) = v37;
          v9 = v137;
        }

        while (v31 != v35);
        v22 = v140;
        v2 = v141;
        LOBYTE(v23) = v139;
        v24 = v138;
      }

      v43 = MEMORY[0x1E6910C30](v30, MEMORY[0x1E69E6158]);
      v45 = v44;

      v46 = sub_1E3270FC8(v43, v45, &v142);

      *(v24 + 14) = v46;
      *(v24 + 22) = 2080;
      if (!v134[3])
      {
        OUTLINED_FUNCTION_96_21();
      }

      v47 = OUTLINED_FUNCTION_32_0();
      v50 = sub_1E3270FC8(v47, v48, v49);

      *(v24 + 24) = v50;
      _os_log_impl(&dword_1E323F000, v22, v23, "MUPN::%s::StackViewController::CVMD::didRemoveItems %s for %s", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      (*(v128 + 8))(v17, v129);
    }

    else
    {

      (*(v12 + 8))(v17, v10);
    }

    v6 = v132;
    v4 = v134;
  }

  v51 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v52 + 1200))(v2, v4);

  v54 = sub_1E40502A4(v53);
  v56 = v55;
  v23 = v57;
  OUTLINED_FUNCTION_26_3();
  v59 = *v51 & v58;
  v130 = *(v59 + 0x218);
  v131 = v59 + 536;
  v60 = v130();
  sub_1E4200104();

  v140 = v54;
  v142 = v54;
  v143 = v56;
  v144 = v23;
  v61 = v135;
  sub_1E41FFFD4();
  if (v62)
  {
    (*(v6 + 8))(v9, v61);
LABEL_23:

LABEL_24:

LABEL_53:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v63 = sub_1E32AE9B0(v2);
  if (!v63)
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
    sub_1E41FFF84();

    v80 = v134;
    v81 = (*(*v134 + 1344))(v79);
    v142 = (*(*v80 + 1040))();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
    OUTLINED_FUNCTION_0_32();
    sub_1E32752B0(v83, v84);
    sub_1E4149048(v82);
    OUTLINED_FUNCTION_50();

    if (&v142)
    {
      v86 = type metadata accessor for StackViewController();
      v87 = sub_1E407DA28();
      sub_1E38E5664(v81, v87);
      OUTLINED_FUNCTION_50();

      if (v86)
      {
        OUTLINED_FUNCTION_21();
        v89 = (*(v88 + 696))(&v142);
        v90 = sub_1E3E8AF10(v140, v56);
        v89(&v142, 0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v91 = OUTLINED_FUNCTION_22_9();
      *(v91 + 16) = xmmword_1E4297BE0;
      *(v91 + 32) = v140;
      *(v91 + 40) = v56;
      *(v91 + 48) = v23;

      sub_1E41FFFC4();

      v93 = (v130)(v92);
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      v94 = OUTLINED_FUNCTION_54_51();
      v96 = v61;
    }

    else
    {
      v97 = (v130)(v85);
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      LOBYTE(v97) = type metadata accessor for StackViewController();
      v98 = sub_1E407DA28();
      sub_1E38E5664(v81, v98);
      OUTLINED_FUNCTION_50();

      if ((v97 & 1) == 0)
      {
        v107 = OUTLINED_FUNCTION_54_51();
        v108(v107, v61);

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_37_10();
      v100 = *(v99 + 680);

      v102 = v100(v101);
      v103 = sub_1E378A81C(v140, v56, v102);

      if (!v103)
      {
        v109 = OUTLINED_FUNCTION_54_51();
        v110(v109, v135);
        goto LABEL_23;
      }

      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v103))
      {
        v105 = v104;
        ObjectType = swift_getObjectType();
        (*(v105 + 24))(v134, v2, ObjectType, v105);
      }

      else
      {
        v111 = sub_1E324FBDC();
        v113 = v127;
        v112 = v128;
        v114 = v129;
        (*(v128 + 16))(v127, v111, v129);
        v115 = sub_1E41FFC94();
        v116 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v116))
        {
          v117 = OUTLINED_FUNCTION_6_21();
          v141 = v115;
          v118 = v117;
          v119 = OUTLINED_FUNCTION_100();
          v142 = v119;
          *v118 = 136315138;
          sub_1E384EE08(v81);
          v122 = sub_1E3270FC8(v120, v121, &v142);

          *(v118 + 4) = v122;
          v123 = v141;
          _os_log_impl(&dword_1E323F000, v141, v116, "StackViewController:: Handle remove item for hosted controller %s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_46_1();

          (*(v112 + 8))(v127, v129);
        }

        else
        {

          (*(v112 + 8))(v113, v114);
        }
      }

      v94 = OUTLINED_FUNCTION_54_51();
      v96 = v135;
    }

    v95(v94, v96);
    goto LABEL_53;
  }

  v64 = v63;
  v145 = MEMORY[0x1E69E7CC0];
  v65 = OUTLINED_FUNCTION_17_148();
  sub_1E4059E48(v65, v66, v67);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v126 = v23;
    v68 = v145;
    v138 = v64;
    v139 = v2 & 0xC000000000000001;
    v136 = v2 & 0xFFFFFFFFFFFFFF8;
    v69 = 4;
    while (1)
    {
      v70 = v69 - 3;
      if (__OFADD__(v69 - 4, 1))
      {
        break;
      }

      if (v139)
      {
        v23 = MEMORY[0x1E6911E60]();
      }

      else
      {
        if ((v69 - 4) >= *(v136 + 16))
        {
          goto LABEL_55;
        }

        v23 = v2[v69].isa;
      }

      v71 = v23[3];
      if (!v71)
      {
        goto LABEL_58;
      }

      v142 = v23[2];
      v143 = v71;
      swift_bridgeObjectRetain_n();
      v72 = v56;
      MEMORY[0x1E69109E0](v140, v56);

      v73 = v142;
      v74 = v143;
      v145 = v68;
      v76 = *(v68 + 16);
      v75 = *(v68 + 24);
      if (v76 >= v75 >> 1)
      {
        v78 = OUTLINED_FUNCTION_35(v75);
        sub_1E4059E48(v78, v76 + 1, 1);
        v68 = v145;
      }

      *(v68 + 16) = v76 + 1;
      v77 = (v68 + 24 * v76);
      v77[4] = v73;
      v77[5] = v74;
      v77[6] = v23;
      ++v69;
      v2 = v141;
      v56 = v72;
      if (v70 == v138)
      {
        v61 = v135;
        v23 = v126;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  v142 = 0;
  v143 = 0xE000000000000000;
  sub_1E42074B4();

  v142 = 0xD000000000000027;
  v143 = 0x80000001E428EC40;
  v125 = (*(*v23 + 376))(v124);
  MEMORY[0x1E69109E0](v125);

  OUTLINED_FUNCTION_82_22();
  OUTLINED_FUNCTION_15_166();
  __break(1u);
}

void sub_1E4055DAC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v57 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v54 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_47_3();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    v55 = v6;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_91_19();
    v15 = OUTLINED_FUNCTION_101();
    v16(v15);
    v17 = v0;

    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v52 = v3;
      v20 = OUTLINED_FUNCTION_141_11();
      v58[0] = OUTLINED_FUNCTION_72_0();
      *v20 = 136315650;
      v21 = sub_1E41E1364(v17);
      v23 = sub_1E3270FC8(v21, v22, v58);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      if (!*(v5 + 24))
      {
        OUTLINED_FUNCTION_112_17();
      }

      v26 = OUTLINED_FUNCTION_53_3();
      v29 = sub_1E3270FC8(v26, v27, v28);

      *(v20 + 14) = v29;
      *(v20 + 22) = 1024;
      *(v20 + 24) = v52 & 1;
      _os_log_impl(&dword_1E323F000, v18, v19, "MUPN::%s::StackViewController::CVMD::didRemove %s animated %{BOOL}d", v20, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      v30 = OUTLINED_FUNCTION_62_35();
      v31(v30, v9);
      v6 = v55;
    }

    else
    {

      v24 = OUTLINED_FUNCTION_62_35();
      v25(v24, v9);
      v6 = v55;
    }
  }

  v53 = v11;
  v56 = v9;

  v33 = sub_1E40502A4(v32);
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_43_25();
  v39 = *((*MEMORY[0x1E69E7D40] & v38) + 0x218);
  v40 = v39();
  sub_1E4200104();

  v58[0] = v33;
  v58[1] = v35;
  v58[2] = v37;
  sub_1E41FFFD4();
  v41 = v6;
  if (v42)
  {
    v43 = v1;
    v44 = v6;
    v45 = sub_1E324FBDC();
    (*(v11 + 16))(v54, v45, v56);
    v46 = sub_1E41FFC94();
    v47 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v47))
    {
      v48 = OUTLINED_FUNCTION_125_0();
      *v48 = 0;
      _os_log_impl(&dword_1E323F000, v46, v47, "StackViewController::trying to remove a non existing section.", v48, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v53 + 8))(v54, v56);
    v41 = v44;
    v1 = v43;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v49 = OUTLINED_FUNCTION_22_9();
    *(v49 + 16) = xmmword_1E4297BE0;
    *(v49 + 32) = v33;
    *(v49 + 40) = v35;
    *(v49 + 48) = v37;

    sub_1E41FFFC4();

    v51 = (v39)(v50);
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();
  }

  (*(v57 + 8))(v1, v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E405628C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v173 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v170 = v7;
  OUTLINED_FUNCTION_138();
  v172 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v165 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v168 = v13;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v158 - v17;
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v166 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v163 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_3();
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell);
  v169 = v28;
  v167 = v21;
  if (v27 == 1)
  {
    v171 = v15;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_91_19();
    v29 = OUTLINED_FUNCTION_101();
    v30(v29);
    v162 = v0;
    v31 = v0;
    v32 = v173;

    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();
    v164 = v4;

    LODWORD(v161) = v34;
    v35 = v34;
    v36 = v33;
    if (os_log_type_enabled(v33, v35))
    {
      v159 = v9;
      v160 = v18;
      v37 = OUTLINED_FUNCTION_100();
      v175 = OUTLINED_FUNCTION_164_1();
      *v37 = 136315650;
      v38 = sub_1E41E1364(v31);
      v40 = sub_1E3270FC8(v38, v39, &v175);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      if (*(v32 + 24))
      {
        v40 = *(v32 + 16);
        v41 = *(v32 + 24);
      }

      else
      {
        OUTLINED_FUNCTION_110_14();
        v41 = 0xE700000000000000;
      }

      v4 = v164;
      v1 = v162;

      v44 = sub_1E3270FC8(v40, v41, &v175);

      *(v37 + 14) = v44;
      *(v37 + 22) = 2080;
      if (*(v4 + 3))
      {
        v41 = *(v4 + 2);
        v45 = *(v4 + 3);
      }

      else
      {
        OUTLINED_FUNCTION_50_54();
        v45 = 0xE700000000000000;
      }

      v46 = sub_1E3270FC8(v41, v45, &v175);

      *(v37 + 24) = v46;
      _os_log_impl(&dword_1E323F000, v36, v161, "MUPN::%s::StackViewController::CVMD::didUpdateItem %s for %s", v37, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v47 = OUTLINED_FUNCTION_62_35();
      v48(v47, v169);
      v9 = v159;
      v18 = v160;
      v15 = v171;
    }

    else
    {

      v42 = OUTLINED_FUNCTION_62_35();
      v43(v42, v19);
      v15 = v171;
      v4 = v164;
      v1 = v162;
    }
  }

  v50 = sub_1E40502A4(v49);
  v52 = v51;
  v54 = v53;
  OUTLINED_FUNCTION_43_25();
  v56 = (*MEMORY[0x1E69E7D40] & v55) + 536;
  v164 = *((*MEMORY[0x1E69E7D40] & v55) + 0x218);
  v57 = v164();
  sub_1E4200104();

  v175 = v50;
  v176 = v52;
  v177 = v54;
  v58 = v18;
  v59 = v174;
  sub_1E41FFFD4();
  if (v60)
  {
    (*(v15 + 8))(v58, v59);

    goto LABEL_36;
  }

  v160 = v56;
  v161 = v54;
  v162 = v52;
  v61 = v58;
  v62 = v170;
  v63 = v173;
  sub_1E4057048();
  v64 = v172;
  if (__swift_getEnumTagSinglePayload(v62, 1, v172) == 1)
  {
    v65 = OUTLINED_FUNCTION_106_19();
    v66(v65, v174);

    sub_1E325F6F0(v62, &qword_1ECF309A0);
    goto LABEL_36;
  }

  v171 = v15;
  v67 = v168;
  (*(v9 + 32))(v168, v62, v64);
  OUTLINED_FUNCTION_43_25();
  v68 = MEMORY[0x1E69E7D40];
  v70 = (*((*MEMORY[0x1E69E7D40] & v69) + 0x4B8))(v63, v4, v67);
  v71 = (*(*v4 + 1040))(v70);
  v72 = v71;
  v175 = v71;
  v73 = v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v75, v76);
  v77 = sub_1E4149048(v74);

  if ((v77 & 1) == 0)
  {
    v159 = v73;
    v100 = (*(*v4 + 1344))(v78);
    type metadata accessor for StackViewController();
    v101 = sub_1E407DA28();
    sub_1E38E5664(v100, v101);
    v102 = OUTLINED_FUNCTION_28_3();
    v103 = v162;
    if (v72)
    {
      v104 = *((*v68 & *v1) + 0x2A8);

      v106 = v104(v105);
      v107 = sub_1E378A81C(v50, v103, v106);

      if (v107)
      {
        LODWORD(v170) = v100;
        swift_getObjectType();
        v108 = dynamic_cast_existential_1_conditional(v107);
        v110 = v168;
        v111 = v171;
        v112 = v174;
        if (v108)
        {
          v113 = v109;
          ObjectType = swift_getObjectType();
          (*(v113 + 32))(v4, v173, v110, ObjectType, v113);

          (*(v111 + 8))(v61, v112);
LABEL_33:
          OUTLINED_FUNCTION_69_30();
          v140 = v110;
          goto LABEL_34;
        }

        v144 = sub_1E324FBDC();
        v145 = v167;
        v146 = v163;
        (*(v167 + 16))(v163, v144, v169);
        v147 = sub_1E41FFC94();
        v148 = sub_1E4206814();
        if (!os_log_type_enabled(v147, v148))
        {

          (*(v145 + 8))(v146, v169);
          (*(v111 + 8))(v61, v174);
          goto LABEL_33;
        }

        v149 = OUTLINED_FUNCTION_6_21();
        v150 = OUTLINED_FUNCTION_100();
        v160 = v61;
        v151 = v110;
        v152 = v150;
        v175 = v150;
        *v149 = 136315138;
        sub_1E384EE08(v170);
        v155 = sub_1E3270FC8(v153, v154, &v175);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_1E323F000, v147, v148, "StackViewController:: Handle didUpdate for hosted controller %s", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_9();

        (*(v145 + 8))(v163, v169);
        (*(v111 + 8))(v160, v174);
        OUTLINED_FUNCTION_69_30();
        v140 = v151;
LABEL_34:
        v141 = v172;
        goto LABEL_35;
      }

      v142 = OUTLINED_FUNCTION_47_56();
      v143(v142, v174);
    }

    else
    {
      v119 = (*((*v68 & *v1) + 0x1B8))(v102);
      v120 = [v119 vuiIndexPathsForVisibleItems];

      v121 = v172;
      v122 = sub_1E42062B4();

      MEMORY[0x1EEE9AC00](v123);
      v124 = v168;
      *(&v158 - 2) = v168;
      sub_1E3920CE8(sub_1E3920CC8, (&v158 - 4), v122);
      OUTLINED_FUNCTION_50();

      if ((v120 & 1) == 0)
      {
        v137 = OUTLINED_FUNCTION_47_56();
        v138(v137, v174);

        OUTLINED_FUNCTION_69_30();
        v140 = v124;
        v141 = v121;
LABEL_35:
        v139(v140, v141);
        goto LABEL_36;
      }

      v126 = v164;
      v127 = (v164)(v125);
      sub_1E42000B4();

      v128 = v176;
      if (!v176)
      {
        v156 = OUTLINED_FUNCTION_47_56();
        v157(v156, v174);

        OUTLINED_FUNCTION_69_30();
        v140 = v124;
        goto LABEL_34;
      }

      v129 = v177;
      v130 = v175;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v131 = OUTLINED_FUNCTION_22_9();
      *(v131 + 16) = xmmword_1E4297BE0;
      *(v131 + 32) = v130;
      *(v131 + 40) = v128;
      *(v131 + 48) = v129;

      v132 = v174;
      sub_1E4200024();

      v134 = (v126)(v133);
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      v135 = OUTLINED_FUNCTION_47_56();
      v136(v135, v132);
    }

    OUTLINED_FUNCTION_69_30();
    v140 = v168;
    goto LABEL_34;
  }

  v160 = v61;
  sub_1E324FBDC();
  v79 = v166;
  v80 = v167;
  OUTLINED_FUNCTION_69_8();
  v81 = v169;
  v82(v79);
  OUTLINED_FUNCTION_146_2();
  v83 = v165;
  v84(v165, v67, v172);
  v85 = sub_1E41FFC94();
  v86 = sub_1E4206814();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = OUTLINED_FUNCTION_6_21();
    v88 = OUTLINED_FUNCTION_100();
    v175 = v88;
    *v87 = 136315138;
    OUTLINED_FUNCTION_12_166();
    sub_1E3274C14(v89, v90);
    v91 = v172;
    v92 = sub_1E4207944();
    v94 = v93;
    v95 = v83;
    v96 = *(v73 + 8);
    v96(v95, v91);
    v97 = sub_1E3270FC8(v92, v94, &v175);

    *(v87 + 4) = v97;
    _os_log_impl(&dword_1E323F000, v85, v86, "StackViewController:: collection view is empty at indexPath: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_2();

    (*(v80 + 8))(v166, v169);
    v98 = OUTLINED_FUNCTION_116_15();
    v99(v98);
    v96(v168, v91);
  }

  else
  {

    v115 = *(v73 + 8);
    v116 = v172;
    v115(v83, v172);
    (*(v80 + 8))(v79, v81);
    v117 = OUTLINED_FUNCTION_116_15();
    v118(v117);
    v115(v67, v116);
  }

LABEL_36:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4057048()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v64 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v62 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v63 = v14;

  v16 = sub_1E40502A4(v15);
  v18 = v17;
  v20 = v19;
  v21 = (*(*v5 + 1344))();
  type metadata accessor for StackViewController();
  v22 = sub_1E407DA28();
  LOBYTE(v21) = sub_1E38E5664(v21, v22);

  v24 = MEMORY[0x1E69E7D40];
  if ((v21 & 1) == 0)
  {

    v28 = OUTLINED_FUNCTION_11_6();
    v30 = sub_1E4050F14(v28, v29, v18);
    v32 = v31;
    v34 = v33;
    v35 = (*((*v24 & *v1) + 0x218))();
    v65 = v30;
    v66 = v32;
    v67 = v34;
    sub_1E4200114();

LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v61 = v3;
  v25 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x218))(v23);
  v65 = v16;
  v66 = v18;
  v67 = v20;
  sub_1E4200114();

  OUTLINED_FUNCTION_21_2(v10);
  v26 = v11;
  if (v50)
  {

    sub_1E325F6F0(v10, &qword_1ECF309A0);
LABEL_5:
    v27 = v64;
    goto LABEL_37;
  }

  v36 = v62;
  v37 = v63;
  v38 = (*(v62 + 32))(v63, v10, v26);
  v39 = (*(*v5 + 1040))(v38);
  v27 = v64;
  if (!v39)
  {
    (*(v36 + 8))(v37, v26);
LABEL_35:

LABEL_36:

LABEL_37:
    v52 = v27;
    v53 = 1;
    v54 = v26;
LABEL_38:
    __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
    goto LABEL_39;
  }

  v40 = v39;
  if (!sub_1E32AE9B0(v39))
  {
    (*(v36 + 8))(v63, v26);

    goto LABEL_35;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  v41 = v61;
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v40 + 32);

    while (1)
    {

      v44 = (*(*v42 + 872))(v43);

      if (!v44)
      {
        break;
      }

      v45 = v26;
      v60 = v20;
      v46 = sub_1E32AE9B0(v44);
      if (!v46)
      {
LABEL_32:

        v26 = v45;
        (*(v62 + 8))(v63, v45);
        goto LABEL_5;
      }

      v26 = v46;
      v47 = 0;
      v20 = *(v41 + 24);
      v48 = *(v41 + 16);
      v61 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1E6911E60](v47, v44);
        }

        else
        {
          if (v47 >= *(v61 + 16))
          {
            goto LABEL_45;
          }

          v40 = *(v44 + 8 * v47 + 32);
        }

        v49 = *(v40 + 24);
        if (v49)
        {
          if (v20)
          {
            v50 = *(v40 + 16) == v48 && v49 == v20;
            if (v50)
            {

              goto LABEL_43;
            }

            v27 = sub_1E42079A4();

            if (v27)
            {
              goto LABEL_41;
            }
          }

          else
          {
          }
        }

        else
        {

          if (!v20)
          {
LABEL_41:

LABEL_43:
            v57 = v63;
            v58 = sub_1E41FE844();
            v59 = v64;
            MEMORY[0x1E6909190](v47, v58);

            (*(v62 + 8))(v57, v45);
            v52 = v59;
            v53 = 0;
            v54 = v45;
            goto LABEL_38;
          }
        }

        v51 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        ++v47;
        if (v51 == v26)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v42 = MEMORY[0x1E6911E60](0, v40);
      v41 = v61;
    }

    v55 = OUTLINED_FUNCTION_123_0();
    v56(v55);

    goto LABEL_36;
  }

  __break(1u);
}

void sub_1E4057620()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v55 = v2;
  if (!(v2 >> 62))
  {
    v19 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_21:
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_24:
  v19 = sub_1E4207384();
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_3:
  v47 = v12;
  v42 = v15;
  OUTLINED_FUNCTION_21();
  v20 += 67;
  v21 = *v20;
  v43 = v0;
  v40 = v20;
  v41 = v21;
  v0 = (v21)(v22);
  sub_1E4200104();

  v23 = 0;
  v53 = v55 & 0xFFFFFFFFFFFFFF8;
  v54 = v55 & 0xC000000000000001;
  v50 = (v5 + 1);
  v51 = (v5 + 2);
  *&v24 = 134218240;
  v44 = v24;
  v45 = v13;
  v46 = v18;
  v48 = v9;
  v52 = v19;
  while (1)
  {
    if (v19 == v23)
    {
      v36 = v41();
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      OUTLINED_FUNCTION_105_15();
      v37(v18, v13);
      goto LABEL_21;
    }

    if (v54)
    {
      v5 = MEMORY[0x1E6911E60](v23, v55);
    }

    else
    {
      if (v23 >= *(v53 + 16))
      {
        goto LABEL_23;
      }

      v5 = *(v55 + 8 * v23 + 32);
    }

    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v15 = v5[3];
    if (!v15)
    {
      break;
    }

    v25 = v5[2];
    v56 = v25;
    v57 = v15;
    v58 = v5;

    v26 = sub_1E41FFFD4();
    if (v27)
    {
      v28 = sub_1E324FBDC();
      (*v51)(v9, v28, v3);
      v0 = sub_1E41FFC94();
      v12 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v12))
      {
        v29 = OUTLINED_FUNCTION_125_0();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v0, v12, "updateSections:: Section index not found", v29, 2u);
        OUTLINED_FUNCTION_7_9();
      }

      v30 = v9;
    }

    else
    {
      v49 = v26;
      v56 = v25;
      v57 = v15;
      v58 = v5;
      v12 = sub_1E41FFFF4();
      sub_1E4200024();
      v31 = sub_1E324FBDC();
      v32 = v47;
      (*v51)(v47, v31, v3);

      v0 = sub_1E41FFC94();
      v33 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v33))
      {
        v34 = OUTLINED_FUNCTION_49_0();
        *v34 = v44;
        v35 = *(v12 + 2);

        *(v34 + 4) = v35;
        v13 = v45;

        *(v34 + 12) = 2048;
        *(v34 + 14) = v49;
        _os_log_impl(&dword_1E323F000, v0, v33, "updateSections:: %ld items to section %ld", v34, 0x16u);
        OUTLINED_FUNCTION_7_9();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v30 = v32;
      v9 = v48;
      v18 = v46;
    }

    v19 = v52;
    (*v50)(v30, v3);
    ++v23;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1E42074B4();

  v56 = 0xD00000000000002ALL;
  v57 = 0x80000001E428EC10;
  v39 = (*(*v5 + 376))(v38);
  MEMORY[0x1E69109E0](v39);

  OUTLINED_FUNCTION_24_109();
  OUTLINED_FUNCTION_15_166();
  __break(1u);
}

void sub_1E4057B80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_3();
  v7 = MEMORY[0x1E69E7D40];
  v8 = OUTLINED_FUNCTION_31_5();
  v9(v8);
  OUTLINED_FUNCTION_26_3();
  v11 = (*((*v7 & v10) + 0x218))();
  if (v1)
  {
    sub_1E42000A4();
  }

  else
  {
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    v28 = 37;
    (*(*v5 + 776))(&v29, &v28, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v32)
    {
      if ((swift_dynamicCast() & 1) != 0 && v28 == 1)
      {

        v25 = sub_1E40502A4(v12);
        v26 = v13;
        v29 = v25;
        v30 = v14;
        v27 = v14;
        v31 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
        v15 = sub_1E41FFFD4();
        if ((v16 & 1) == 0)
        {
          v24 = v15;
          v29 = v25;
          v30 = v27;
          v31 = v26;
          if (sub_1E41FFFA4() >= 1)
          {
            OUTLINED_FUNCTION_10_53();
            v18 = (*(v17 + 440))();
            MEMORY[0x1E6909190](0, v24);
            v19 = sub_1E41FE7E4();
            v20 = OUTLINED_FUNCTION_124();
            v21(v20);
            [v18 scrollToItemAtIndexPath:v19 atScrollPosition:8 animated:v3 & 1];
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v29, &unk_1ECF296E0);
    }
  }

  OUTLINED_FUNCTION_10_53();
  v22 = OUTLINED_FUNCTION_31_5();
  v23(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4057ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v25;
  a24 = v28;
  v224 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE10);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v204 - v41);
  v222 = _s18IndexPathViewModelVMa(0);
  OUTLINED_FUNCTION_0_10();
  v233 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v204 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  v229 = v55;
  OUTLINED_FUNCTION_138();
  v230 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v226 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_25_3();
  v210 = v59;
  OUTLINED_FUNCTION_138();
  v60 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v65);
  v231 = v24;
  v209 = v24[OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell];
  if (v209 == 1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v66(v227);
    v67 = v231;

    v68 = sub_1E41FFC94();
    v69 = v60;
    v70 = v62;
    v71 = sub_1E4206814();

    LODWORD(v225) = v71;
    if (os_log_type_enabled(v68, v71))
    {
      v208 = v70;
      v207 = v69;
      v72 = OUTLINED_FUNCTION_100();
      *&v237 = OUTLINED_FUNCTION_72_0();
      *v72 = 136315650;
      v73 = sub_1E41E1364(v67);
      sub_1E3270FC8(v73, v74, &v237);
      OUTLINED_FUNCTION_142_11();
      *(v72 + 4) = v70;
      *(v72 + 12) = 2080;
      if (*(v31 + 24))
      {
        v70 = *(v31 + 16);
        v75 = *(v31 + 24);
      }

      else
      {
        OUTLINED_FUNCTION_108_13();
        v75 = 0xE700000000000000;
      }

      sub_1E3270FC8(v70, v75, &v237);
      OUTLINED_FUNCTION_142_11();
      *(v72 + 14) = v70;
      *(v72 + 22) = 2048;
      OUTLINED_FUNCTION_151_7();
      *(v72 + 24) = v76;
      _os_log_impl(&dword_1E323F000, v68, v225, "MUPN::%s::StackViewController::handleOptimizedUpdatesIfneeded %s index %ld", v72, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v62 = v208;
      v60 = v207;
      (*(v208 + 8))(v227, v207);
    }

    else
    {

      (*(v70 + 8))(v227, v69);
      v62 = v70;
      v60 = v69;
    }
  }

  *(&v238 + 1) = &unk_1F5D5DAC8;
  v239 = &off_1F5D5C998;
  LOBYTE(v237) = 30;
  v77 = j__OUTLINED_FUNCTION_18();
  v78 = sub_1E39C29F0(&v237, v77 & 1);
  __swift_destroy_boxed_opaque_existential_1Tm(&v237);
  if ((v78 & 1) == 0)
  {
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_71_2();
  v80 = (*(v79 + 1040))();
  if (!v80)
  {
    goto LABEL_97;
  }

  v81 = v80;
  if (!sub_1E32AE9B0(v80))
  {
    goto LABEL_96;
  }

  if ((v81 & 0xC000000000000001) != 0)
  {
    goto LABEL_104;
  }

  if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  v82 = *(v81 + 32);

LABEL_14:

  v84 = (*(*v82 + 872))(v83);

  if (!v84)
  {
    goto LABEL_97;
  }

  v211 = sub_1E32AE9B0(v84);
  if (!v211)
  {
    goto LABEL_96;
  }

  v208 = v62;
  v207 = v60;
  v212 = v84;
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_21();
  v225 = *(v85 + 440);
  v227 = v85 + 440;
  v86 = v225();
  v87 = sub_1E405A040(v86);
  if (!v87)
  {
    goto LABEL_106;
  }

  v88 = v87;
  v223 = sub_1E32AE9B0(v87);
  v62 = 0;
  v221 = v88 & 0xC000000000000001;
  v220 = v88 & 0xFFFFFFFFFFFFFF8;
  v205 = (v226 + 4);
  v206 = MEMORY[0x1E69E7CC0];
  v81 = v230;
  for (i = v88; ; v88 = i)
  {
    OUTLINED_FUNCTION_225();
    if (v89 == v62)
    {
      break;
    }

    if (v221)
    {
      v91 = MEMORY[0x1E6911E60](v62, v88);
    }

    else
    {
      OUTLINED_FUNCTION_126_10();
      if (v62 >= *(v90 + 16))
      {
        goto LABEL_100;
      }

      v91 = *(v88 + 8 * v62 + 32);
    }

    v60 = v91;
    v92 = (v62 + 1);
    if (__OFADD__(v62, 1))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v82 = MEMORY[0x1E6911E60](0, v81);
      goto LABEL_14;
    }

    v93 = v225();
    v94 = [v93 indexPathForCell_];

    if (v94)
    {
      v95 = v228;
      sub_1E41FE804();

      v96 = 0;
    }

    else
    {
      v96 = 1;
      v95 = v228;
    }

    v97 = v96;
    v81 = v230;
    __swift_storeEnumTagSinglePayload(v95, v97, 1, v230);
    v98 = v95;
    v99 = v229;
    v60 = &qword_1ECF309A0;
    sub_1E3C111EC(v98, v229, &qword_1ECF309A0);
    if (__swift_getEnumTagSinglePayload(v99, 1, v81) == 1)
    {
      sub_1E325F6F0(v99, &qword_1ECF309A0);
      ++v62;
    }

    else
    {
      v100 = v99;
      v101 = *v205;
      (*v205)(v210, v100, v81);
      v102 = v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_33_86();
        v106 = OUTLINED_FUNCTION_27();
        v102 = sub_1E4059AC0(v106, v107, v108, v102, &unk_1ECF2DB28, &unk_1E42AA670, v109, v110);
      }

      v60 = *(v102 + 16);
      v103 = *(v102 + 24);
      if (v60 >= v103 >> 1)
      {
        v111 = OUTLINED_FUNCTION_35(v103);
        v102 = sub_1E4059AC0(v111, v60 + 1, 1, v102, &unk_1ECF2DB28, &unk_1E42AA670, MEMORY[0x1E6969C28], MEMORY[0x1E6969C28]);
      }

      *(v102 + 16) = v60 + 1;
      OUTLINED_FUNCTION_10_168();
      v206 = v102;
      v81 = v230;
      v101(v102 + v104 + *(v105 + 72) * v60, v210, v230);
      v62 = v92;
    }
  }

  v244 = MEMORY[0x1E69E7CC0];
  v112 = *(v206 + 16);
  if (v112)
  {
    v229 = v226[2];
    OUTLINED_FUNCTION_81();
    v115 = v113 + v114;
    v228 = *(v116 + 56);
    v226 = v116;
    OUTLINED_FUNCTION_130_16(v116 - 8);
    v117 = MEMORY[0x1E69E7CC0];
    v118 = v214;
    do
    {
      OUTLINED_FUNCTION_51_50();
      v119();
      sub_1E41FE854();
      OUTLINED_FUNCTION_151_7();
      if (v120 == v121)
      {
        OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_21();
        v123 = (*(v122 + 536))();
        sub_1E42000B4();

        if (*(&v237 + 1))
        {
          v124 = v238;
          OUTLINED_FUNCTION_245_0();
          v125 = v217;
          OUTLINED_FUNCTION_51_50();
          v126();
          *v125 = v124;
          OUTLINED_FUNCTION_6_218();
          sub_1E405A248(v125, v218);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = OUTLINED_FUNCTION_27();
            v117 = sub_1E4059AC0(v135, v136, v137, v117, &qword_1ECF3EE20, &unk_1E42E7818, v138, v139);
          }

          v127 = *(v117 + 24);
          v221 = *(v117 + 16);
          v220 = v221 + 1;
          if (v221 >= v127 >> 1)
          {
            v140 = OUTLINED_FUNCTION_35(v127);
            v117 = sub_1E4059AC0(v140, v141, 1, v117, &qword_1ECF3EE20, &unk_1E42E7818, _s18IndexPathViewModelVMa, _s18IndexPathViewModelVMa);
          }

          sub_1E405A2F8(v217, _s18IndexPathViewModelVMa);
          OUTLINED_FUNCTION_36_5();
          v118 = v214;
          v128 = v230;
          v129(v214, v230);
          OUTLINED_FUNCTION_126_10();
          *(v117 + 16) = v130;
          OUTLINED_FUNCTION_10_168();
          v81 = v128;
          sub_1E405A2A0(v218, v117 + v131 + *(v132 + 72) * v221);
          v244 = v117;
        }

        else
        {
          OUTLINED_FUNCTION_36_5();
          v81 = v230;
          v134(v118, v230);
        }
      }

      else
      {
        OUTLINED_FUNCTION_36_5();
        v133(v118, v81);
      }

      v115 += v228;
      --v112;
    }

    while (v112);
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
  }

  v62 = v208;
  v60 = v213;
  if (v209)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v142(v60);
    v143 = v231;
    v144 = sub_1E41FFC94();
    v145 = sub_1E4206814();

    if (os_log_type_enabled(v144, v145))
    {
      v223 = v144;
      LODWORD(v220) = v145;
      v146 = OUTLINED_FUNCTION_49_0();
      i = OUTLINED_FUNCTION_72_0();
      v236[0] = i;
      *v146 = 136315394;
      v147 = sub_1E41E1364(v231);
      v149 = sub_1E3270FC8(v147, v148, v236);

      *(v146 + 4) = v149;
      v221 = v146;
      *(v146 + 12) = 2080;
      v150 = *(v117 + 16);
      v81 = MEMORY[0x1E69E7CC0];
      if (v150)
      {
        v242 = MEMORY[0x1E69E7CC0];

        sub_1E377FD30(0, v150, 0);
        v62 = 0;
        v81 = v242;
        OUTLINED_FUNCTION_81();
        v224 = v117 + v151;
        v226 = v150;
        do
        {
          if (v62 >= *(v117 + 16))
          {
            goto LABEL_103;
          }

          v229 = v81;
          OUTLINED_FUNCTION_6_218();
          v152 = v216;
          sub_1E405A248(v153, v216);
          *&v237 = 91;
          *(&v237 + 1) = 0xE100000000000000;
          if (*(*v152 + 24))
          {
            v150 = *(*v152 + 16);
            v154 = *(*v152 + 24);
          }

          else
          {
            v154 = 0xE700000000000000;
            OUTLINED_FUNCTION_50_54();
          }

          MEMORY[0x1E69109E0](v150, v154);

          MEMORY[0x1E69109E0](8236, 0xE200000000000000);
          OUTLINED_FUNCTION_245_0();
          OUTLINED_FUNCTION_12_166();
          sub_1E3274C14(&qword_1ECF309B0, v155);
          v156 = v216;
          v157 = sub_1E4207944();
          MEMORY[0x1E69109E0](v157);

          MEMORY[0x1E69109E0](93, 0xE100000000000000);
          v158 = *(&v237 + 1);
          v228 = v237;
          OUTLINED_FUNCTION_35_77();
          sub_1E405A2F8(v156, v159);
          v81 = v229;
          v242 = v229;
          v161 = v229[2];
          v160 = v229[3];
          if (v161 >= v160 >> 1)
          {
            v163 = OUTLINED_FUNCTION_35(v160);
            sub_1E377FD30(v163, v161 + 1, 1);
            v81 = v242;
          }

          ++v62;
          *(v81 + 16) = v161 + 1;
          v162 = v81 + 16 * v161;
          *(v162 + 32) = v228;
          *(v162 + 40) = v158;
          v150 = v226;
          v60 = v213;
        }

        while (v226 != v62);
      }

      v165 = v208;
      v62 = v223;
      v166 = MEMORY[0x1E6910C30](v81, MEMORY[0x1E69E6158]);
      v168 = v167;

      v169 = sub_1E3270FC8(v166, v168, v236);

      v170 = v221;
      *(v221 + 14) = v169;
      _os_log_impl(&dword_1E323F000, v62, v220, "MUPN::%s::StackViewController::handleOptimizedUpdatesIfNeeded::indexPaths %s", v170, 0x16u);
      OUTLINED_FUNCTION_97_17(&v243);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_7_9();

      (*(v165 + 8))(v60, v207);
    }

    else
    {

      v164 = *(v62 + 8);
      v62 += 8;
      v164(v60, v207);
    }
  }

  v171 = v212;
  v228 = v212 & 0xC000000000000001;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v172 = v171;
  v81 = 0;
  OUTLINED_FUNCTION_130_16(v172 & 0xFFFFFFFFFFFFFF8);
  v221 = v173 + 32;
  while (2)
  {
    if (v228)
    {
      v174 = MEMORY[0x1E6911E60](v81);
    }

    else
    {
      OUTLINED_FUNCTION_225();
      if (v81 >= *(v175 + 16))
      {
        goto LABEL_102;
      }

      v174 = *(v221 + 8 * v81);
    }

    if (__OFADD__(v81++, 1))
    {
      goto LABEL_101;
    }

    v230 = v81;
    v60 = *(v117 + 16);

    v81 = 0;
    while (1)
    {
      if (v81 == v60)
      {
        v177 = 1;
        v81 = v60;
      }

      else
      {
        if (v81 >= *(v117 + 16))
        {
          __break(1u);
          goto LABEL_99;
        }

        v62 = v81 + 1;
        OUTLINED_FUNCTION_10_168();
        v178 = v232;
        *v232 = v81;
        OUTLINED_FUNCTION_6_218();
        sub_1E405A248(v180, v178 + v179);
        sub_1E3C111EC(v178, v39, &qword_1ECF3EE08);
        v177 = 0;
        ++v81;
      }

      __swift_storeEnumTagSinglePayload(v39, v177, 1, v32);
      sub_1E3C111EC(v39, v42, &qword_1ECF3EE10);
      OUTLINED_FUNCTION_21_2(v42);
      if (v184)
      {

        goto LABEL_91;
      }

      v62 = *v42;
      OUTLINED_FUNCTION_6_218();
      sub_1E405A2A0(v42 + v181, v47);
      v182 = *(v174 + 24);
      v183 = *(*v47 + 24);
      if (v182)
      {
        break;
      }

      if (!v183)
      {
        goto LABEL_86;
      }

LABEL_85:
      OUTLINED_FUNCTION_35_77();
      sub_1E405A2F8(v47, v185);
    }

    if (!v183)
    {
      goto LABEL_85;
    }

    v184 = *(v174 + 16) == *(*v47 + 16) && v182 == v183;
    if (!v184 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_86:

    OUTLINED_FUNCTION_90_2();
    v186 = v225();
    OUTLINED_FUNCTION_245_0();
    v187 = sub_1E41FE7E4();
    v229 = [v186 vui:v187 cellForItemAtIndexPath:?];

    OUTLINED_FUNCTION_60_37();
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18);
    OUTLINED_FUNCTION_136_6(v188, v189, v188);
    v60 = v237;
    if (v237 == 2)
    {
      OUTLINED_FUNCTION_128_12();
      v239 = 0;
      v237 = 0u;
      v238 = 0u;
    }

    else
    {
      v190 = *(&v238 + 1);
      v226 = v239;
      v191 = v240 | (v241 << 16);
      OUTLINED_FUNCTION_90_2();
      v193 = v192();
      OUTLINED_FUNCTION_90_2();
      sub_1E407F528(v194);
      OUTLINED_FUNCTION_18_3();

      OUTLINED_FUNCTION_128_12();
      LODWORD(v224) = v191 >> 8;
      v195 = v60 & 1;
      v234 = v191 & 1;
      LODWORD(v193) = (v60 >> 8) & 1;
      v60 = WORD1(v60) & 1;
      *(&v238 + 1) = &type metadata for CollectionViewCellContext;
      v239 = &off_1F5D621F8;
      v196 = swift_allocObject();
      *&v237 = v196;
      *(v196 + 16) = v195;
      *(v196 + 17) = v193;
      *(v196 + 18) = v60;
      *(v196 + 24) = v26;
      *(v196 + 32) = v27;
      *(v196 + 40) = v190;
      v197 = OUTLINED_FUNCTION_99_13(v196, &a13);
      *(v197 + 57) = v224;
      *(v197 + 58) = BYTE2(v191) & 1;
    }

    type metadata accessor for UIFactory();
    v198 = OUTLINED_FUNCTION_106();
    v199 = sub_1E3280A90(v198, &qword_1EE23B120);

    sub_1E38E5240(v200, &v235, &v237, 0, 0, v199, v236);

    sub_1E325F6F0(&v237, &qword_1ECF296C0);
    swift_beginAccess();
    v201 = v215;
    sub_1E40595E4(v62, v215);
    swift_endAccess();

    sub_1E405A2F8(v201, _s18IndexPathViewModelVMa);
    v202 = OUTLINED_FUNCTION_53_3();
    sub_1E405A2F8(v202, v203);
LABEL_91:
    v117 = v244;
    v81 = v230;
    if (*(v244 + 16))
    {
      if (v230 != v211)
      {
        continue;
      }
    }

    else
    {
    }

    break;
  }

LABEL_96:

LABEL_97:
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E4059414(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_1E32AE9B0(a3);
  v6 = 0;
  v15 = result;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v6)
    {
      return v7;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v6, a3);
      v8 = result;
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v17 = v8;
    a1(v16, &v17);
    if (v3)
    {

      return v7;
    }

    v9 = v16[0];
    if (v16[0])
    {
      v10 = v16[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E4059878(0, v7[2] + 1, 1, v7);
        v7 = result;
      }

      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_1E4059878((v11 > 1), v12 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

double sub_1E40595A4@<D0>(_OWORD *a1@<X8>)
{
  sub_1E38BAE74(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 11);
  *(a1 + 27) = *(v5 + 11);
  return result;
}

void sub_1E40595E4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1E4059FE0(v5);
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(_s18IndexPathViewModelVMa(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1E405A2A0(v9, a2);
    sub_1E4059CC4(v9 + v8, v6 - 1 - a1, v9, _s18IndexPathViewModelVMa);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1E40596FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  if (![v2 superview])
  {
LABEL_7:
    v5 = [v2 superview];
    v4 = sub_1E40596FC();

    return v4;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for ViewControllerHostingCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = v3;

  return v4;
}

BOOL sub_1E40597A0(uint64_t a1)
{
  type metadata accessor for SearchCollectionViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v4 = *(v3 + 1672);

    v4(v5);
    OUTLINED_FUNCTION_50();

    return v1 & 1;
  }

  else
  {
    (*(*a1 + 1344))();
    sub_1E39D7838(&unk_1F5D934B8);
    v7 = OUTLINED_FUNCTION_53_51();
    v9 = sub_1E38E5664(v7, v8);

    return v9;
  }
}

void *sub_1E4059878(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E40599A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E4059AC0(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1E4059BCC(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_81();
  if (v11)
  {
    sub_1E4059CC4(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1E4059BCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = OUTLINED_FUNCTION_118();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E4059CC4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_25_50();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_25_50();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_1E4059D8C()
{
  result = qword_1EE26F260;
  if (!qword_1EE26F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26F260);
  }

  return result;
}

char *sub_1E4059DE0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1E40599A8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

char *sub_1E4059E48(char *a1, int64_t a2, char a3)
{
  result = sub_1E4059E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4059E68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E405A040(void *a1)
{
  v2 = [a1 preparedCells];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B120);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E405A0BC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E41CB03C();
  }
}

void sub_1E405A108()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 440))();
  v4 = [v3 vuiTraitCollection];

  v5 = *(v1 + 8);
  *(v1 + 8) = v4;
}

unint64_t sub_1E405A1A4()
{
  result = qword_1EE26F250;
  if (!qword_1EE26F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26F250);
  }

  return result;
}

uint64_t sub_1E405A248(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

uint64_t sub_1E405A2A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

uint64_t sub_1E405A2F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E405A350@<X0>(void *a1@<X8>)
{
  type metadata accessor for CollectionViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v11[3] = &unk_1F5D5DAC8;
    v11[4] = &off_1F5D5C998;
    LOBYTE(v11[0]) = 30;
    swift_retain_n();
    v4 = j__OUTLINED_FUNCTION_18();
    v5 = sub_1E39C29F0(v11, v4 & 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (v5)
    {
      v11[0] = sub_1E40502A4(v3);
      v11[1] = v6;
      v11[2] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
      v8 = sub_1E41FFFD4();
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        *a1 = v3;
        a1[1] = v8;
        return result;
      }
    }

    else
    {
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

unint64_t sub_1E405A480()
{
  result = qword_1EE26F278;
  if (!qword_1EE26F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26F278);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E41FE874();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E41FE874();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E405A630()
{
  result = type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_1E41FE874();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_135_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_138_11(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v3;
}

uint64_t OUTLINED_FUNCTION_141_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_142_11()
{
}

uint64_t sub_1E405A8A0()
{
  v0 = sub_1E4207784();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E405A8EC(char a1)
{
  result = 0x6E6F7A616D41;
  switch(a1)
  {
    case 1:
      result = 0x656C676F6F47;
      break;
    case 2:
      result = 18252;
      break;
    case 3:
      result = 1969975122;
      break;
    case 4:
      result = 0x676E75736D6153;
      break;
    case 5:
      result = 2037280595;
      break;
    case 6:
      result = 0x6F697A6956;
      break;
    case 7:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E405A9B0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F7A616D41;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F7A616D41;
  switch(v4)
  {
    case 1:
      v5 = 0x656C676F6F47;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 18252;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1969975122;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x676E75736D6153;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 2037280595;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6F697A6956;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x656C676F6F47;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 18252;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1969975122;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x676E75736D6153;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 2037280595;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6F697A6956;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E405AB70(char a1)
{
  sub_1E4207B44();
  sub_1E405A8EC(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E405ABDC()
{
  sub_1E4206014();
}

uint64_t sub_1E405ACD0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E405A8EC(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E405AD30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E405A8A0();
  *a1 = result;
  return result;
}

uint64_t sub_1E405AD60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E405A8EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E405AD8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1E405ADD4()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1E405AE14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1E405AE5C()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E405AE9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1E405AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  return result;
}

uint64_t sub_1E405AF98()
{

  return v0;
}

uint64_t sub_1E405AFC8()
{
  sub_1E405AF98();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

unint64_t sub_1E405B000()
{
  result = qword_1ECF3EE58;
  if (!qword_1ECF3EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EE58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceManufacturer(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

id sub_1E405B154()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  result = [v1 currentState];
  if (result)
  {
    v4 = result;
    v5 = *(v2 + 80);
    v6 = sub_1E4205F14();
    v8 = v7;

    return (*(*(v2 + 104) + 16))(v6, v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E405B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40] & *v5;
  v11 = sub_1E4205ED4();
  v12 = *((v9 & v8) + 0x68);
  v13 = *((v9 & v8) + 0x50);
  v12[1](v13, v12);
  v14 = sub_1E4205ED4();

  *&v23 = nullsub_1;
  *(&v23 + 1) = 0;
  aBlock = MEMORY[0x1E69E9820];
  *&v21 = 1107296256;
  OUTLINED_FUNCTION_6_219();
  *(&v21 + 1) = v15;
  v22 = &block_descriptor_159;
  v16 = _Block_copy(&aBlock);
  aBlock = v13;
  v21 = *(v10 + 88);
  v22 = v12;
  v23 = *(v10 + 112);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for StateMachine();
  v17 = objc_msgSendSuper2(&v19, sel_initWithName_initialState_mode_stateChangeHandler_, v11, v14, a4, v16);
  _Block_release(v16);

  if (v17)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v18 + 8))(a3, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E405B45C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v21 = *(a1 + 32);
  if (a3)
  {
    v20 = sub_1E4205F14();
    v13 = v12;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    v13 = 0;
    if (a4)
    {
LABEL_3:
      v14 = sub_1E4205F14();
      v10 = v15;
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v14 = 0;
  if (a5)
  {
LABEL_4:
    v16 = sub_1E4205F14();
    a5 = v17;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_11:
    memset(v24, 0, sizeof(v24));
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  v16 = 0;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_5:
  ObjectType = swift_getObjectType();
  *&v22 = a6;
  sub_1E329504C(&v22, v24);
  if (a7)
  {
LABEL_6:
    a7 = sub_1E4205C64();
  }

LABEL_7:

  v18 = a2;
  swift_unknownObjectRetain();
  v21(a2, v20, v13, v14, v10, v16, a5, v24, a7);

  return sub_1E325F7FC(v24, &unk_1ECF296E0);
}

void sub_1E405B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *v7;
  v11 = *MEMORY[0x1E69E7D40];
  v37 = sub_1E4205ED4();
  OUTLINED_FUNCTION_16_153();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_16_153();
  v15 = *(v14 + 80);
  v34 = a3;
  v16(v15, v13);
  v36 = sub_1E4205ED4();

  *(swift_allocObject() + 16) = v15;
  OUTLINED_FUNCTION_16_153();
  v18 = *(v17 + 88);
  *(v19 + 24) = v18;
  OUTLINED_FUNCTION_16_153();
  v21 = *(v20 + 96);
  *(v22 + 32) = v21;
  *(v22 + 40) = v13;
  OUTLINED_FUNCTION_16_153();
  v24 = *(v23 + 112);
  v25[6] = v24;
  v26 = *((v11 & v10) + 0x78);
  v25[7] = v26;
  v25[8] = a5;
  v25[9] = a6;
  v40 = sub_1E405BF28;
  v41 = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1E405B45C;
  *(&v39 + 1) = &block_descriptor_3_3;
  v27 = _Block_copy(&aBlock);

  *&v28 = v15;
  *(&v28 + 1) = v18;
  *&v29 = v21;
  *(&v29 + 1) = v13;
  aBlock = v28;
  v39 = v29;
  v40 = v24;
  v41 = v26;
  type metadata accessor for StateMachine();
  OUTLINED_FUNCTION_19_1();
  v32 = objc_msgSendSuper2(v30, v31);
  _Block_release(v27);

  if (v32)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v33 + 8))(v34, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E405B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(void, void, void, void, void, void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(void, void, void, void, void, void), uint64_t a29)
{
  OUTLINED_FUNCTION_31_1();
  v30 = v29;
  v98 = v31;
  v99 = v32;
  v102 = v33;
  v103 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v95 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v94 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  v100 = &v88 - v43;
  OUTLINED_FUNCTION_1_2();
  v97 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v96 = v47 - v46;
  sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v104 = v49;
  v105 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v88 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v88 - v53;
  OUTLINED_FUNCTION_1_2();
  v106 = v55;
  MEMORY[0x1EEE9AC00](v56);
  v101 = &v88 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v109 = &v88 - v59;
  if (!v40)
  {
    goto LABEL_10;
  }

  v110 = a24;
  v111 = a25;
  v112 = a26;
  v113 = a27;
  v107 = a27;
  v108 = a28;
  v114 = a28;
  v115 = a29;
  type metadata accessor for StateMachine();
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    goto LABEL_10;
  }

  v91 = v60;
  v92 = v30;
  v110 = v38;
  v111 = v36;
  MEMORY[0x1EEE9AC00](v60);
  *(&v88 - 8) = a24;
  *(&v88 - 7) = a25;
  OUTLINED_FUNCTION_30_83(&v88);
  v61 = v40;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E405BF6C(sub_1E405E4BC, (&v88 - 10), MEMORY[0x1E69E73E0], a24, v62, v54);
  OUTLINED_FUNCTION_35_78(v54, 1);
  if (v70)
  {

    v63 = *(v104 + 8);
    v64 = v54;
LABEL_9:
    v63(v64, v105);
    goto LABEL_10;
  }

  v90 = v61;
  v65 = v106;
  v89 = *(v106 + 32);
  v66 = v89(v109, v54, a24);
  v110 = v102;
  v111 = v103;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_32_88();
  v103 = a26;
  OUTLINED_FUNCTION_30_83(v67);
  sub_1E405BF6C(sub_1E405E3A4, v68, MEMORY[0x1E69E73E0], a24, v69, v51);
  OUTLINED_FUNCTION_35_78(v51, 1);
  if (v70)
  {

    (*(v65 + 8))(v109, a24);
    v63 = *(v104 + 8);
    v64 = v51;
    goto LABEL_9;
  }

  v71 = v101;
  v72 = v89(v101, v51, a24);
  v110 = v98;
  v111 = v99;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_32_88();
  v74 = v107;
  v73 = v108;
  *(v75 - 48) = v103;
  *(v75 - 40) = v74;
  *(v75 - 32) = v73;
  *(v75 - 24) = a29;
  *(v75 - 16) = a25;
  v76 = v100;
  sub_1E405BF6C(sub_1E405E4A4, v77, MEMORY[0x1E69E73E0], a25, v78, v100);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, a25);
  if (EnumTagSinglePayload == 1)
  {

    v80 = *(v106 + 8);
    v80(v71, a24);
    v80(v109, a24);
    (*(v94 + 8))(v76, v95);
  }

  else
  {
    v108 = a22;
    v81 = a21;
    v83 = v96;
    v82 = v97;
    (*(v97 + 32))(v96, v76, a25);
    v84 = v106;
    v85 = v109;
    if (a21)
    {
      v81 = sub_1E42079F4();
    }

    v86 = v101;
    v108(v91, v85, v101, v83, v92, v81);

    (*(v82 + 8))(v83, a25);
    v87 = *(v84 + 8);
    v87(v86, a24);
    v87(v85, a24);
  }

LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E405BF6C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

void sub_1E405C1E0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = (*MEMORY[0x1E69E7D40] & *v0);
  v6 = v5[14];
  v20 = v5[11];
  (*(v6 + 8))(v20, v6);
  v7 = sub_1E4205ED4();

  sub_1E3D96570(v4, v21, &unk_1ECF296E0);
  v8 = v22;
  if (!v22)
  {
    v15 = 0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = v5[12];
    v17 = v5[15];
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12);
  v15 = sub_1E4207994();
  (*(v10 + 8))(v14, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = v5[12];
  v17 = v5[15];
  sub_1E42076D4();
  v2 = sub_1E4205C44();

LABEL_6:
  v18 = v5[13];
  v21[0] = v5[10];
  v21[1] = v20;
  v21[2] = v16;
  v22 = v18;
  v23 = v6;
  v24 = v17;
  v19 = OUTLINED_FUNCTION_36_72();
  v25.receiver = v0;
  v25.super_class = v19;
  objc_msgSendSuper2(&v25, sel_postEvent_withContext_userInfo_, v7, v15, v2);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E405C460()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = *(v4 + 0x70);
  v6 = *(v4 + 0x58);
  (*(v5 + 8))(v6, v5);
  v7 = sub_1E4205ED4();

  sub_1E3D96570(v3, v19, &unk_1ECF296E0);
  if (*(&v20 + 1))
  {
    __swift_project_boxed_opaque_existential_1(v19, *(&v20 + 1));
    OUTLINED_FUNCTION_1_2();
    v9 = v8;
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_5();
    (*(v9 + 16))(v12 - v11);
    OUTLINED_FUNCTION_2_103();
    v13 = sub_1E4207994();
    v14 = OUTLINED_FUNCTION_2_103();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = 0;
  }

  sub_1E42076D4();
  v16 = sub_1E4205C44();

  v17 = *(v4 + 120);
  v19[0] = *(v4 + 80);
  v19[1] = v6;
  v20 = *(v4 + 96);
  v21 = v5;
  v22 = v17;
  v18 = OUTLINED_FUNCTION_36_72();
  v23.receiver = v1;
  v23.super_class = v18;
  objc_msgSendSuper2(&v23, sel_postEvent_withContext_userInfo_, v7, v13, v16);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E405C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  (*(v5 + 8))(v6, v5);
  v29 = sub_1E4205ED4();

  OUTLINED_FUNCTION_33_87();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_33_87();
  v10 = *(v9 + 80);
  v11(v10, v8);
  v28 = sub_1E4205ED4();

  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_17_6();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v6;
  OUTLINED_FUNCTION_33_87();
  v15 = *(v14 + 96);
  v16[4] = v15;
  v16[5] = v8;
  v16[6] = v5;
  OUTLINED_FUNCTION_33_87();
  v18 = *(v17 + 120);
  v19[7] = v18;
  v19[8] = v12;
  v19[9] = a3;
  v19[10] = a4;
  v32 = sub_1E405C910;
  v33 = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_7_225();
  *&v31 = v20;
  *(&v31 + 1) = &block_descriptor_12_4;
  v21 = _Block_copy(&aBlock);

  *&v22 = v10;
  *(&v22 + 1) = v6;
  *&v23 = v15;
  *(&v23 + 1) = v8;
  aBlock = v22;
  v31 = v23;
  v32 = v5;
  v33 = v18;
  type metadata accessor for StateMachine();
  OUTLINED_FUNCTION_19_1();
  objc_msgSendSuper2(v24, v25);
  _Block_release(v21);
}

id sub_1E405C928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = sub_1E4205F14();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v17 = a4;
      sub_1E329504C(&v17, v19);
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  memset(v19, 0, sizeof(v19));
  if (a5)
  {
LABEL_4:
    a5 = sub_1E4205C64();
  }

LABEL_5:

  v12 = a2;
  swift_unknownObjectRetain();
  v8(a2, v9, v11, v19, a5);
  v14 = v13;

  sub_1E325F7FC(v19, &unk_1ECF296E0);
  if (v14)
  {
    v15 = sub_1E4205ED4();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1E405CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = *(v9 + 0x70);
  v11 = *(v9 + 0x58);
  (*(*((v8 & v7) + 0x70) + 8))(*((v8 & v7) + 0x58), *((v8 & v7) + 0x70));
  v30 = sub_1E4205ED4();

  aBlock[0] = a2;
  v12 = *((v8 & v7) + 0x50);
  *&v13 = v12;
  *(&v13 + 1) = v11;
  v42 = v10;
  v14 = *((v8 & v7) + 0x78);
  v43 = v14;
  v31 = *(v9 + 96);
  v40 = v13;
  v41 = v31;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_27_10();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v31;
  *(v16 + 40) = v10;
  *(v16 + 48) = v14;
  *(v16 + 56) = KeyPath;
  v33 = v12;
  v34 = v11;
  v35 = v31;
  v36 = v10;
  v37 = v14;
  v38 = sub_1E405E4EC;
  v39 = v16;
  v17 = sub_1E4206374();

  OUTLINED_FUNCTION_0_286();
  WitnessTable = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E405E48C, v32, v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);

  v20 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_17_6();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v11;
  *(v22 + 32) = v31;
  *(v22 + 48) = v10;
  *(v22 + 56) = v14;
  *(v22 + 64) = v21;
  *(v22 + 72) = a3;
  *(v22 + 80) = a4;
  OUTLINED_FUNCTION_2_248(v22);
  OUTLINED_FUNCTION_3_255(COERCE_DOUBLE(1107296256));
  *&v47 = v23;
  *(&v47 + 1) = &block_descriptor_22_2;
  v24 = _Block_copy(aBlock);

  aBlock[0] = v12;
  aBlock[1] = v11;
  v47 = v31;
  v48 = v10;
  v49 = v14;
  v25 = OUTLINED_FUNCTION_36_72();
  v44 = v5;
  v45 = v25;
  OUTLINED_FUNCTION_19_1();
  objc_msgSendSuper2(v26, v27);
  _Block_release(v24);
}

uint64_t sub_1E405CD94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 24) + 8))(*(a1 + a2 - 48));
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1E405CE30()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v1;
  v40 = v2;
  v36 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v73[0] = v6;
  v65 = *((v5 & v4) + 0x50);
  OUTLINED_FUNCTION_17_149();
  v66 = *(v7 + 88);
  v8 = v66;
  OUTLINED_FUNCTION_17_149();
  v67 = *(v9 + 96);
  v10 = v67;
  OUTLINED_FUNCTION_17_149();
  v68 = *(v11 + 104);
  v12 = v68;
  OUTLINED_FUNCTION_17_149();
  v69 = *(v13 + 112);
  v14 = v69;
  OUTLINED_FUNCTION_17_149();
  v70 = *(v15 + 120);
  v16 = v70;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_27_10();
  v18 = swift_allocObject();
  v35 = v65;
  v18[2] = v65;
  v18[3] = v10;
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v16;
  v18[7] = KeyPath;
  v57 = v35;
  v58 = v8;
  v59 = v10;
  v60 = v12;
  v61 = v14;
  v62 = v16;
  v63 = sub_1E405D234;
  v64 = v18;
  v19 = sub_1E4206374();

  OUTLINED_FUNCTION_0_286();
  WitnessTable = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E405D238, v56, v19, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

  v38 = sub_1E42062A4();

  v73[0] = v36;
  v50 = v35;
  v51 = v8;
  v52 = v10;
  v53 = v12;
  v54 = v14;
  v55 = v16;
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_27_10();
  v23 = swift_allocObject();
  v23[2] = v8;
  v23[3] = v10;
  v23[4] = v12;
  v23[5] = v14;
  v23[6] = v16;
  v23[7] = v22;
  v42 = v35;
  v43 = v8;
  v24 = v8;
  v44 = v10;
  v45 = v12;
  v46 = v14;
  v47 = v16;
  v48 = sub_1E405E4EC;
  v49 = v23;
  v25 = sub_1E4206374();

  v26 = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E405E48C, v41, v25, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

  v37 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_17_6();
  v29 = swift_allocObject();
  v29[2] = v35;
  v29[3] = v24;
  v29[4] = v10;
  v29[5] = v12;
  v29[6] = v14;
  v29[7] = v16;
  v29[8] = v28;
  v29[9] = v39;
  v29[10] = v40;
  OUTLINED_FUNCTION_2_248(v29);
  OUTLINED_FUNCTION_3_255(COERCE_DOUBLE(1107296256));
  v74 = v30;
  v75 = &block_descriptor_39_4;
  v31 = _Block_copy(v73);

  v73[0] = v35;
  v73[1] = v24;
  v74 = v10;
  v75 = v12;
  v76 = v14;
  v77 = v16;
  v32 = OUTLINED_FUNCTION_36_72();
  v71 = v0;
  v72 = v32;
  OUTLINED_FUNCTION_19_1();
  objc_msgSendSuper2(v33, v34);
  _Block_release(v31);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E405D1E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 8))(*(a1 + a2 - 40));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1E405D27C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 64))();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E405D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(char *, char *))
{
  OUTLINED_FUNCTION_31_1();
  v75 = v28;
  v76 = v27;
  v72 = v29;
  v74 = v30;
  v32 = v31;
  v34 = v33;
  v35 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v70 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_318();
  sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v71 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v64 - v40;
  OUTLINED_FUNCTION_1_2();
  v73 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v67 = v35;
    v68 = v26;
    v77 = v34;
    v78 = v32;
    MEMORY[0x1EEE9AC00](Strong);
    v69 = v49;
    *(&v64 - 8) = v49;
    *(&v64 - 7) = a21;
    v65 = v50;
    v66 = v51;
    *(&v64 - 6) = v51;
    *(&v64 - 5) = v50;
    *(&v64 - 4) = v52;
    *(&v64 - 3) = a25;
    *(&v64 - 2) = a21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E405BF6C(a26, (&v64 - 10), MEMORY[0x1E69E73E0], a21, v53, v41);
    if (__swift_getEnumTagSinglePayload(v41, 1, a21) == 1)
    {

      v54 = OUTLINED_FUNCTION_2_103();
LABEL_10:
      v56(v54, v55);
      goto LABEL_11;
    }

    v57 = v73;
    (*(v73 + 32))(v46, v41, a21);
    if (v72)
    {
      v58 = sub_1E42079F4();
    }

    else
    {
      v58 = 0;
    }

    v60 = v67;
    v59 = v68;
    v76(v48, v46, v74, v58);

    v61 = v69;
    OUTLINED_FUNCTION_35_78(v59, 1);
    if (v62)
    {
      (*(v57 + 8))(v46, a21);

      v56 = *(v70 + 8);
      v54 = v59;
      v55 = v60;
      goto LABEL_10;
    }

    (*(v65 + 8))(v61);

    (*(v57 + 8))(v46, a21);
    OUTLINED_FUNCTION_37_1();
    (*(v63 + 8))(v59, v61);
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E405D690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  (*(v6 + 8))(v7, v6);
  v26 = sub_1E4205ED4();

  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_17_6();
  swift_allocObject();
  OUTLINED_FUNCTION_29_97();
  v10 = *(v9 + 80);
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  OUTLINED_FUNCTION_29_97();
  v13 = *(v12 + 96);
  *(v14 + 32) = v13;
  OUTLINED_FUNCTION_29_97();
  v16 = *(v15 + 104);
  *(v17 + 40) = v16;
  *(v17 + 48) = v6;
  OUTLINED_FUNCTION_29_97();
  v19 = *(v18 + 120);
  v20[7] = v19;
  v20[8] = v8;
  v20[9] = a2;
  v20[10] = a3;
  v30 = sub_1E405DC58;
  v31 = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_7_225();
  *&v29 = v21;
  *(&v29 + 1) = &block_descriptor_46_1;
  v22 = _Block_copy(&aBlock);

  *&v23 = v10;
  *(&v23 + 1) = v7;
  *&v24 = v13;
  *(&v24 + 1) = v16;
  aBlock = v23;
  v29 = v24;
  v30 = v6;
  v31 = v19;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for StateMachine();
  objc_msgSendSuper2(&v27, sel_registerDefaultHandlerForEvent_withBlock_, v26, v22);
  _Block_release(v22);
}

void sub_1E405D89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_31_1();
  v26 = v25;
  v65 = v28;
  v66 = v27;
  v62 = v29;
  v64 = v30;
  v32 = v31;
  v67 = v33;
  v34 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v61 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_318();
  v37 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v39 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v57 - v41;
  OUTLINED_FUNCTION_1_2();
  v63 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    if (v32)
    {
      v58 = v34;
      v59 = v24;
      v60 = v26;
      v50 = *(a24 + 16);

      v50(v67, v32, a21, a24);
      if (__swift_getEnumTagSinglePayload(v42, 1, a21) == 1)
      {

        (*(v39 + 8))(v42, v37);
      }

      else
      {
        v51 = v63;
        (*(v63 + 32))(v47, v42, a21);
        v53 = v59;
        v52 = v60;
        if (v62)
        {
          sub_1E42079F4();
        }

        v54 = OUTLINED_FUNCTION_2_103();
        v66(v54);

        OUTLINED_FUNCTION_35_78(v53, 1);
        if (v55)
        {
          (*(v51 + 8))(v47, a21);

          (*(v61 + 8))(v53, v58);
        }

        else
        {
          (*(a23 + 8))(v52);

          (*(v51 + 8))(v47, a21);
          OUTLINED_FUNCTION_37_1();
          (*(v56 + 8))(v53, v52);
        }
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t objectdestroy_8Tm_1()
{

  OUTLINED_FUNCTION_17_6();

  return swift_deallocObject();
}

void sub_1E405DC8C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v4 = *(v3 + 8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4(*((v2 & v1) + 0x50), *((v2 & v1) + 0x68));
  v8 = sub_1E4205ED4();

  (*(*((v2 & v1) + 0x70) + 8))(*((v2 & v1) + 0x58), *((v2 & v1) + 0x70));
  v7 = sub_1E4205ED4();

  v4(v5, v3);
  v6 = sub_1E4205ED4();

  v9.receiver = v0;
  v9.super_class = type metadata accessor for StateMachine();
  objc_msgSendSuper2(&v9, sel_registerStateTransitionFromState_onEvent_toState_, v8, v7, v6);
}

void sub_1E405DE64(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1E405E014;
  v7[5] = v5;
  OUTLINED_FUNCTION_3_4();
  v7[1] = 1107296256;
  v7[2] = sub_1E378AEA4;
  v7[3] = &block_descriptor_52_3;
  v6 = _Block_copy(v7);

  [v2 executeBlockAfterCurrentStateTransition_];
  _Block_release(v6);
}

uint64_t sub_1E405DF2C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1E376FE58(0, 0, v6, &unk_1E42E7A90, v8);
}

uint64_t sub_1E405E01C()
{
  OUTLINED_FUNCTION_24();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E3286A7C;

  return v5();
}

void sub_1E405E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1E4205F14();
    if (!a4)
    {
LABEL_3:
      sub_1E405E0FC();
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  sub_1E4205F14();
  sub_1E405E0FC();
}

void sub_1E405E194(int a1, int a2, uint64_t a3, uint64_t a4, int a5, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (a3)
  {
    sub_1E4205F14();
    if (!a4)
    {
LABEL_3:
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  sub_1E4205F14();
  if (!v8)
  {
LABEL_4:
    sub_1E405E164();
  }

LABEL_7:
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v8;
  sub_1E405E164();
}

id sub_1E405E244()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StateMachine();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

uint64_t sub_1E405E2FC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E405E01C();
}

uint64_t sub_1E405E3BC()
{
  OUTLINED_FUNCTION_20_122();
  v1 = OUTLINED_FUNCTION_13_181();
  return v0(v1);
}

uint64_t sub_1E405E418()
{
  OUTLINED_FUNCTION_20_122();
  v1 = OUTLINED_FUNCTION_13_181();
  return v0(v1);
}

uint64_t sub_1E405E504()
{
  if ((MEMORY[0x1E690D3E0]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ScaleKey();

  return sub_1E42012D4();
}

uint64_t sub_1E405E564()
{
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  sub_1E405F600(v0, v1);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey();
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  sub_1E405F600(v2, v3);
  return sub_1E4205DB4();
}

uint64_t sub_1E405E61C()
{
  sub_1E4207B44();
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  v2 = sub_1E405F600(v0, v1);
  OUTLINED_FUNCTION_9_181(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey();
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  v12 = sub_1E405F600(v10, v11);
  OUTLINED_FUNCTION_9_181(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

uint64_t sub_1E405E6EC()
{
  sub_1E4207B44();
  sub_1E4202A94();
  OUTLINED_FUNCTION_0_328();
  v2 = sub_1E405F600(v0, v1);
  OUTLINED_FUNCTION_9_181(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_1E4205DB4();
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_283();
  v12 = sub_1E405F600(v10, v11);
  OUTLINED_FUNCTION_9_181(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

id sub_1E405E7B0()
{
  v1 = v0;
  v2 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E6980EE8])
  {
    v10 = MEMORY[0x1E6965B20];
  }

  else if (v9 == *MEMORY[0x1E6980F00])
  {
    v10 = MEMORY[0x1E6965B28];
  }

  else if (v9 == *MEMORY[0x1E6980F08])
  {
    v10 = MEMORY[0x1E6965B30];
  }

  else if (v9 == *MEMORY[0x1E6980F10])
  {
    v10 = MEMORY[0x1E6965B38];
  }

  else if (v9 == *MEMORY[0x1E6980F38])
  {
    v10 = MEMORY[0x1E6965AE0];
  }

  else if (v9 == *MEMORY[0x1E6980EF0])
  {
    v10 = MEMORY[0x1E6965B18];
  }

  else if (v9 == *MEMORY[0x1E6980EF8])
  {
    v10 = MEMORY[0x1E6965AB0];
  }

  else if (v9 == *MEMORY[0x1E6980F18])
  {
    v10 = MEMORY[0x1E6965AB8];
  }

  else if (v9 == *MEMORY[0x1E6980F30])
  {
    v10 = MEMORY[0x1E6965AD0];
  }

  else if (v9 == *MEMORY[0x1E6980F20])
  {
    v10 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v9 != *MEMORY[0x1E6980F28])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = MEMORY[0x1E6965AC8];
  }

  v11 = *v10;
  v12 = *v10;
  return v11;
}

double sub_1E405EA04(double a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  v9 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_183();
  v13 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v13, v14, v9) == 1)
  {
    sub_1E39DE02C(v3);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_234();
    v16(v15);
    v17 = sub_1E405EB48(v4, a3);
    (*(v11 + 8))(v4, v9);
    return v17 * a1;
  }

  return a1;
}

double sub_1E405EB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for ScaleKey();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E4202A94();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v6 + 16))(v15 + *(v12 + 28), a2, v4);
  if (_MergedGlobals_268 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_1EE28CB48;
  if (*(qword_1EE28CB48 + 16) && (v18 = sub_1E405F1D4(v15), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    swift_endAccess();
    v21 = sub_1E405E7B0();
    v22 = sub_1E3B02C14();
    CTFontDescriptorGetTextStyleSize();

    v23 = sub_1E405E7B0();
    sub_1E3B02E88(v10);
    v24 = sub_1E3B02C14();
    (*(v6 + 8))(v10, v4);
    CTFontDescriptorGetTextStyleSize();

    v20 = 0.0 / 0.0;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v26 = qword_1EE28CB48;
    sub_1E405F2E8(v15, 0.0 / 0.0);
    qword_1EE28CB48 = v26;
  }

  swift_endAccess();
  sub_1E405F43C(v15);
  return v20;
}

uint64_t sub_1E405EE34()
{
  type metadata accessor for ScaleKey();
  sub_1E405F88C(&qword_1EE28CB50);
  result = sub_1E4205CB4();
  qword_1EE28CB48 = result;
  return result;
}

uint64_t sub_1E405EEA0()
{
  v1 = v0;

  return sub_1E4202AB4();
}

double sub_1E405EEC8(double a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_183();
  v11 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v11, v12, v7) == 1)
  {
    (*(v9 + 104))(v3, *MEMORY[0x1E6980EF8], v7);
    v13 = OUTLINED_FUNCTION_31_5();
    if (__swift_getEnumTagSinglePayload(v13, v14, v7) != 1)
    {
      sub_1E39DE02C(v2);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_234();
    v16(v15);
  }

  v17 = sub_1E405EB48(v3, v1);
  (*(v9 + 8))(v3, v7);
  return v17 * a1;
}

double sub_1E405F040(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  if (a1 && (type metadata accessor for TextLayout(), OUTLINED_FUNCTION_20_2(), (v7 = swift_dynamicCastClass()) != 0) && (v8 = (*(*v7 + 1688))(), v8 != 27))
  {
    sub_1E3E3B33C(v8, v2);
  }

  else
  {
    sub_1E4202A94();
    v9 = OUTLINED_FUNCTION_31_5();
    __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  v12 = sub_1E405EEC8(a2);
  sub_1E39DE02C(v2);
  return v12;
}

double sub_1E405F150(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E405EEC8(*&a1);
  }

  return result;
}

uint64_t type metadata accessor for ScaleKey()
{
  result = qword_1EE28F6C0;
  if (!qword_1EE28F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E405F1D4(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4202A94();
  sub_1E405F600(&qword_1EE288740, MEMORY[0x1E6980F40]);
  sub_1E4205DB4();
  type metadata accessor for ScaleKey();
  sub_1E42012F4();
  sub_1E405F600(&qword_1EE289CD8, MEMORY[0x1E697E730]);
  sub_1E4205DB4();
  v2 = sub_1E4207BA4();

  return sub_1E405F644(a1, v2);
}

uint64_t sub_1E405F2E8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for ScaleKey();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = sub_1E405F1D4(a1);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE60);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E405F1D4(a1);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_9:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v3;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a2;
  }

  else
  {
    sub_1E405F498(a1, v8);
    return sub_1E405F4FC(v12, v8, v16, a2);
  }

  return result;
}

uint64_t sub_1E405F43C(uint64_t a1)
{
  v2 = type metadata accessor for ScaleKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E405F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaleKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E405F4FC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for ScaleKey();
  result = sub_1E405F59C(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1E405F59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaleKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E405F600(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E405F644(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScaleKey();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1E405F498(*(v2 + 48) + v12 * v10, v8);
      if (MEMORY[0x1E690D3E0](v8, a1))
      {
        v13 = sub_1E42012D4();
        sub_1E405F43C(v8);
        if (v13)
        {
          return v10;
        }
      }

      else
      {
        sub_1E405F43C(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1E405F7D4()
{
  result = sub_1E4202A94();
  if (v1 <= 0x3F)
  {
    result = sub_1E42012F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E405F88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScaleKey();
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E405F9DC()
{
  v1 = (*(*v0 + 888))();
  v2 = v1;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_20_2();
    sub_1E42076C4();
    OUTLINED_FUNCTION_50();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();

    return v2;
  }

  return v3;
}

uint64_t sub_1E405FA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE68);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = (*(*v0 + 888))(v5);
  if (v8 >> 62)
  {
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_20_2();
    v9 = sub_1E42076C4();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v9 = v8;
  }

  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  sub_1E42005C4();
  sub_1E328FCF4(&qword_1ECF3EE70, &qword_1ECF3EE68);
  v10 = sub_1E42006B4();
  (*(v3 + 8))(v7, v1);
  return v10;
}

uint64_t sub_1E405FCC8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_284();
  sub_1E4064178(v0, v1);
  sub_1E41FE8F4();
}

uint64_t sub_1E405FD5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E405FCC8();
  *a1 = result;
  return result;
}

uint64_t sub_1E405FDD4(uint64_t a1)
{

  v4 = sub_1E38BBA04(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E405FEC8();
  }
}

uint64_t sub_1E405FF80(unint64_t a1)
{
  v2 = sub_1E405FCC8();
  v3 = sub_1E32AE9B0(v2);

  if (v3 == sub_1E32AE9B0(a1) && (v4 = sub_1E405FCC8(), v5 = sub_1E38BBA04(v4, a1), , (v5 & 1) != 0))
  {
    v6 = sub_1E405FCC8();
    v19 = sub_1E32AE9B0(v6);
    if (v19)
    {
      v7 = sub_1E32AE9B0(a1);
      v8 = 0;
      v18 = v6 & 0xC000000000000001;
      while (2)
      {
        sub_1E34AF4E4(v8, v18 == 0, v6);
        if (v18)
        {
          result = MEMORY[0x1E6911E60](v8, v6);
          v10 = result;
        }

        else
        {
          v10 = *(v6 + 32 + 8 * v8);
        }

        if (__OFADD__(v8++, 1))
        {
LABEL_29:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (v7 == i)
          {
            v14 = 0;
            goto LABEL_20;
          }

          if ((a1 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x1E6911E60](i, a1);
            v13 = result;
          }

          else
          {
            if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v13 = *(a1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          type metadata accessor for ViewModel();
          if (static ViewModel.== infix(_:_:)(v13, v10))
          {
            break;
          }
        }

        v17 = *(*v13 + 648);

        v14 = v17(v15);

LABEL_20:
        (*(*v10 + 656))(v14);

        if (v8 != v19)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    return sub_1E405FDD4(v16);
  }
}

uint64_t sub_1E4060210()
{

  v1 = OBJC_IVAR____TtC8VideosUI16ContextMenuState___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E40602A8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E41FE924();
  return v0;
}

uint64_t sub_1E40602F8()
{
  OUTLINED_FUNCTION_15_0();

  sub_1E3B50380(v1);

  return v1[0];
}

uint64_t sub_1E406034C(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  v3[0] = a1;

  sub_1E3B50420(v3);
}

uint64_t sub_1E40603BC()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E4060408(uint64_t a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t sub_1E4060464()
{

  v0 = sub_1E38074D0();

  return v0;
}

unint64_t sub_1E40604A8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000018;
    *v1 = 0xD000000000000018;
    v1[1] = 0x80000001E428F100;
  }

  return v2;
}

uint64_t sub_1E4060588()
{
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_50();
  return sub_1E40605C0(v0);
}

uint64_t sub_1E40605C0(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_presentingViewFrame);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_contextMenuState;
  type metadata accessor for ContextMenuState(0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E41FE924();
  *(v2 + v5) = v6;
  v8 = OBJC_IVAR____TtC8VideosUI21ContextMenuController__menuViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30530);
  v48[0] = 0;
  *(v2 + v8) = sub_1E3B508D0(v48);
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_downloadAction) = 0;
  v9 = (v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController____lazy_storage___logPrefix);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8VideosUI21ContextMenuController__viewModel;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE78);
  v46[0].receiver = a1;

  *(v2 + v10) = sub_1E3B508D0(v46);
  swift_endAccess();
  v11 = sub_1E3B500B4();

  v47 = sub_1E40602F8();
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v46, v48);
    sub_1E327F454(v48, v46);
    if (swift_dynamicCast())
    {
      v12 = v47;
    }

    else
    {
      v12 = 0;
    }

    sub_1E4060408(v12);
    v13 = v49;
    v14 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v15 = (*(v14 + 16))(v13, v14);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v7;
    }

    sub_1E405FF80(v16);

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7A8(v46, &qword_1ECF3C798);
    v17 = sub_1E40602F8();
    v18 = (*(*v17 + 544))(v17);

    if (v18)
    {
      v19 = [v18 contextMenuEventDataSource];

      if (v19)
      {
        v20 = [v19 preActionDocumentDataSource];

        if (v20)
        {
          sub_1E40602F8();
          OUTLINED_FUNCTION_26_0();
          v22 = (*(v21 + 648))();

          if (v22 && (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
          {
            v24 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken;
            v25 = *(v11 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken);
            if (v25)
            {
              [v25 cancel];
            }

            if (_MergedGlobals_44 != -1)
            {
              swift_once();
            }

            v26 = qword_1EE28ADC8;
            OUTLINED_FUNCTION_4_0();
            v27 = swift_allocObject();
            swift_weakInit();
            type metadata accessor for ContextMenuPrefetchOperation();
            OUTLINED_FUNCTION_6_19();

            v28 = objc_allocWithZone(&OBJC_IVAR____TtC8VideosUI16ContextMenuState___observationRegistrar);
            v29 = v20;
            v30 = Strong;

            ObjectType = swift_getObjectType();
            *&v28[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController] = 0;
            *&v28[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_documentDataSource] = v29;
            *&v28[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_appContext] = v30;
            *&v28[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_contextData] = 0;
            v32 = &v28[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler];
            *v32 = sub_1E4064228;
            v32[1] = v27;
            v46[0].receiver = v28;
            v46[0].super_class = ObjectType;
            v33 = [(objc_super *)v46 init];
            [*(v26 + 16) addOperation_];
            v34 = [objc_allocWithZone(MEMORY[0x1E69DF690]) initWithOperation_];

            v35 = *(v11 + v24);
            *(v11 + v24) = v34;
          }

          else
          {
          }
        }
      }
    }
  }

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  OUTLINED_FUNCTION_28_88(v37, v38, v39, v40, @"VUIUpNextRequestDidFinishNotification");

  v41 = [v36 defaultCenter];
  OUTLINED_FUNCTION_28_88(v41, v42, v43, v44, @"VUIFavoritesRequestDidFinishNotification");

  return v11;
}

void sub_1E4060B3C()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) & 1) == 0)
  {
    v5 = sub_1E40602F8();
    type metadata accessor for ViewModel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v4, v6);
      v1 = v7;
      v2 = v8;
      v3 = __swift_project_boxed_opaque_existential_1(v6, v7);
      sub_1E4063CBC(v3, v0, v1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      OUTLINED_FUNCTION_28_0();
      sub_1E325F7A8(v4, &qword_1ECF3C798);
      sub_1E4060C14();
    }
  }
}

void sub_1E4060C14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  v12 = sub_1E324FBDC();
  v13 = *(v4 + 16);
  v72 = v12;
  v73 = v4 + 16;
  v71 = v13;
  (v13)(v11);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v74 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_1E40604A8();
    v20 = OUTLINED_FUNCTION_32_89(v18, v19);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = sub_1E4061F68();
    v23 = OUTLINED_FUNCTION_32_89(v21, v22);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1E323F000, v14, v15, "%s fetchMenuItems: canonicalId:%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v24 = *(v4 + 8);
  v25 = OUTLINED_FUNCTION_74();
  v24(v25);
  sub_1E40602F8();
  OUTLINED_FUNCTION_26_0();
  v27 = (*(v26 + 544))();

  if (v27)
  {
    v28 = [v27 contextMenuEventDataSource];

    if (v28)
    {
      v29 = [v28 documentDataSource];

      if (v29)
      {
        sub_1E40602F8();
        OUTLINED_FUNCTION_26_0();
        v31 = (*(v30 + 648))();

        if (!v31 || (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
        {

          goto LABEL_39;
        }

        v33 = [v29 prefetchData];
        v70 = Strong;
        if (v33 && (v34 = v33, v35 = [v33 jsonData], v34, v35))
        {
          v36 = sub_1E4205C64();

          *&v78 = 25705;
          *(&v78 + 1) = 0xE200000000000000;
          sub_1E4207414();
          sub_1E375D7E8(v77, v36, &v78);

          sub_1E375D84C(v77);
          if (*(&v79 + 1))
          {
            v37 = swift_dynamicCast();
            if (v37)
            {
              v38 = v77[0];
            }

            else
            {
              v38 = 0;
            }

            if (v37)
            {
              v39 = v77[1];
            }

            else
            {
              v39 = 0;
            }

LABEL_20:
            v40 = v74;
            v71(v74, v72, v2);

            v41 = sub_1E41FFC94();
            v42 = sub_1E4206814();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v69 = v38;
              v44 = v43;
              v73 = swift_slowAlloc();
              v77[0] = v73;
              *v44 = 136315650;
              LODWORD(v71) = v42;
              v45 = sub_1E40604A8();
              OUTLINED_FUNCTION_32_89(v45, v46);
              OUTLINED_FUNCTION_6_19();

              *(v44 + 4) = v40;
              v72 = v4;
              *(v44 + 12) = 2080;
              v47 = sub_1E4061F68();
              OUTLINED_FUNCTION_32_89(v47, v48);
              OUTLINED_FUNCTION_6_19();

              *(v44 + 14) = v40;
              *(v44 + 22) = 2080;
              if (v39)
              {
                v49 = v69;
              }

              else
              {
                v49 = 0;
              }

              if (v39)
              {
                v50 = v39;
              }

              else
              {
                v50 = 0xE000000000000000;
              }

              sub_1E3270FC8(v49, v50, v77);
              OUTLINED_FUNCTION_6_19();

              *(v44 + 24) = v40;
              _os_log_impl(&dword_1E323F000, v41, v71, "%s fetchMenuItems: canonicalId:%s id:%s", v44, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_6_0();

              v51 = v74;
            }

            else
            {

              v51 = v40;
            }

            (v24)(v51, v2);
            sub_1E40602F8();
            v52 = sub_1E39C2CD0();
            v54 = v53;

            v55 = v70;
            if (v54)
            {
              sub_1E40602F8();
              v77[3] = &unk_1F5D5D528;
              v77[4] = &off_1F5D5C858;
              LOBYTE(v77[0]) = 0;
              v56 = *(**sub_1E3CFEA54() + 376);

              v57 = v56(v52, v54);

              v58 = sub_1E39C29F0(v77, v57 & 1);

              __swift_destroy_boxed_opaque_existential_1Tm(v77);
              v59 = [v29 prefetchData];
              if (v59)
              {
                v60 = v59;
                v61 = sub_1E3CA2FB8(v59);
                if (v61)
                {
                  v62 = v61;
                  strcpy(&v78, "teamIsFollowed");
                  HIBYTE(v78) = -18;
                  sub_1E4207414();
                  *(&v79 + 1) = MEMORY[0x1E69E6370];
                  LOBYTE(v78) = v58 & 1;
                  sub_1E329504C(&v78, v76);
                  swift_isUniquelyReferenced_nonNull_native();
                  v75 = v62;
                  sub_1E377DF14(v76, v77);
                  v63 = v75;
                  sub_1E375D84C(v77);
                  if (v63)
                  {
                    v64 = sub_1E4205C44();
                  }

                  else
                  {
                    v64 = 0;
                  }

                  [v60 setPrefetchedDataDict_];
                }

                else
                {
                  [v60 setPrefetchedDataDict_];
                }
              }
            }

            type metadata accessor for ContextMenuDocumentController();
            v65 = OUTLINED_FUNCTION_51_1();
            v66 = sub_1E3F41450(v29, v55, 0, v65 & 1);

            v67 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController;
            *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController) = v66;

            v68 = *(v1 + v67);
            if (v68)
            {
              OUTLINED_FUNCTION_3_0();
              *(v68 + 24) = &off_1F5D93C78;
              swift_unknownObjectWeakAssign();
            }

            goto LABEL_39;
          }
        }

        else
        {
          v78 = 0u;
          v79 = 0u;
        }

        sub_1E325F7A8(&v78, &unk_1ECF296E0);
        v38 = 0;
        v39 = 0;
        goto LABEL_20;
      }
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E406143C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = sub_1E324FBDC();
  v42 = *(v5 + 16);
  v43 = v13;
  v42(v12);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v46 = v0;
  if (v16)
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_29_98();
    v45 = v3;
    v18 = v17;
    v47[0] = v17;
    *v5 = 136315138;
    v19 = sub_1E40604A8();
    v21 = v2;
    v22 = v9;
    v23 = sub_1E3270FC8(v19, v20, v47);

    *(v5 + 4) = v23;
    v9 = v22;
    v2 = v21;
    _os_log_impl(&dword_1E323F000, v14, v15, "%s update", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v3 = v45;
    OUTLINED_FUNCTION_6_0();
    v5 = v44;
    OUTLINED_FUNCTION_6_0();
  }

  v24 = *(v5 + 8);
  v24(v12, v3);
  v47[5] = v2;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v25 = v46;
  }

  else
  {
    v25 = v46;
    v26 = sub_1E40602F8();

    if (v26 != v2)
    {
      (v42)(v9, v43, v3);

      v27 = v9;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      if (os_log_type_enabled(v28, v29))
      {
        OUTLINED_FUNCTION_6_21();
        v30 = OUTLINED_FUNCTION_29_98();
        v45 = v3;
        v31 = v30;
        v47[0] = v30;
        *v5 = 136315138;
        v32 = sub_1E40604A8();
        v34 = sub_1E3270FC8(v32, v33, v47);

        *(v5 + 4) = v34;
        _os_log_impl(&dword_1E323F000, v28, v29, "%s update: viewModel changed, discard items", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v35 = v45;
        v36 = v27;
      }

      else
      {

        v36 = v27;
        v35 = v3;
      }

      v24(v36, v35);
      *(v25 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 0;
    }
  }

  sub_1E406034C(v37);
  type metadata accessor for LibLockupViewModel();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared;
    OUTLINED_FUNCTION_5_0();
    if (*(v25 + v40) == 1)
    {

      sub_1E4063ACC(v39, v25);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40617F8(unint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E405FF80(v1);
  }

  return result;
}

void sub_1E4061870(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_1E3744600(a1);
    v7 = objc_allocWithZone(VUIActionShareSheet);
    v8 = sub_1E3CA295C(v6, a2);
  }

  else
  {
    sub_1E3280A90(0, &qword_1ECF3EE80);
    sub_1E3744600(a1);
    v9 = (v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_presentingViewFrame);
    OUTLINED_FUNCTION_5_0();
    v8 = sub_1E4061954(*v9, v9[1], v9[2], v9[3]);
  }

  v10 = v8;
  [objc_opt_self() shareMediaWithShareSheet_];
}

id sub_1E4061954(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1E4205C44();

  v10 = [v8 initWithContextData:v9 sourceRect:{a1, a2, a3, a4}];

  return v10;
}

id sub_1E4061A0C(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_downloadAction;
  OUTLINED_FUNCTION_3_0();
  result = *(v2 + v5);
  if (result)
  {
    return [result performAction:0 confirmBeforeStopDownloading:1 prefer3DOrImmersiveDownload:a2 & 1];
  }

  v7 = [objc_allocWithZone(VUIDownloadButtonActionHandler) initWithViewModel_];
  v8 = *(v2 + v5);
  *(v2 + v5) = v7;

  *&v18[0] = sub_1E40602F8();
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F10);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(&v13, v19);
    swift_beginAccess();
    v9 = *(v2 + v5);
    if (v9)
    {
      swift_endAccess();
      sub_1E327F454(v19, v18);
      v10 = swift_allocObject();
      sub_1E3251BE8(v18, v10 + 16);
      v16 = sub_1E4063F18;
      v17 = v10;
      *&v13 = MEMORY[0x1E69E9820];
      *(&v13 + 1) = 1107296256;
      v14 = sub_1E3CE404C;
      v15 = &block_descriptor_160;
      v11 = _Block_copy(&v13);
      v12 = v9;

      [v12 setPresentAlertBlock_];
      _Block_release(v11);

      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      swift_endAccess();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7A8(&v13, &qword_1ECF36F18);
  }

  result = *(v2 + v5);
  if (result)
  {
    return [result performAction:0 confirmBeforeStopDownloading:1 prefer3DOrImmersiveDownload:a2 & 1];
  }

  return result;
}

uint64_t sub_1E4061C34(uint64_t a1)
{
  result = sub_1E40603BC();
  if (result)
  {
    type metadata accessor for LibLockupViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v3 + 1672))(a1);
    }
  }

  return result;
}

uint64_t sub_1E4061CD4()
{
}

uint64_t sub_1E4061D7C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver))
  {

    sub_1E42004E4();
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v1 name:@"VUIUpNextRequestDidFinishNotification" object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v1 name:@"VUIFavoritesRequestDidFinishNotification" object:0];

  v5 = sub_1E3B4FF80();

  return v5;
}

uint64_t sub_1E4061EE4()
{
  v0 = sub_1E4061D7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4061F68()
{
  sub_1E40602F8();
  v0 = sub_1E39C2CD0();
  v2 = v1;

  if (!v2)
  {
    v3 = sub_1E40602F8();
    sub_1E39BE4D0();
    OUTLINED_FUNCTION_50();

    if (!v3)
    {
      return 0;
    }

    v0 = sub_1E39BD118(0xD00000000000001ALL, 0x80000001E428F0E0, v3);

    if (v0)
    {
      v4 = sub_1E39BD118(0xD000000000000012, 0x80000001E426EC50, v0);

      if (v4)
      {
        v5 = sub_1E39BD118(0x6863746566657270, 0xEE00617461446465, v4);

        if (v5)
        {
          sub_1E3277E60(0x6449776F6873, 0xE600000000000000, v5, &v8);
          if (v9)
          {
            if (OUTLINED_FUNCTION_30_84())
            {
              v0 = v7;

              return v0;
            }
          }

          else
          {
            sub_1E325F7A8(&v8, &unk_1ECF296E0);
          }

          sub_1E3277E60(25705, 0xE200000000000000, v5, &v8);

          if (v9)
          {
            if (OUTLINED_FUNCTION_30_84())
            {
              return v7;
            }
          }

          else
          {
            sub_1E325F7A8(&v8, &unk_1ECF296E0);
          }
        }
      }

      return 0;
    }
  }

  return v0;
}

void sub_1E4062140()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_7;
  }

  *&v38 = sub_1E4205F14();
  *(&v38 + 1) = v1;

  sub_1E4207414();
  sub_1E375D7E8(v36, v0, &v38);

  sub_1E375D84C(v36);
  if (!*(&v39 + 1))
  {
LABEL_7:
    sub_1E325F7A8(&v38, &unk_1ECF296E0);
    v10 = 0;
    goto LABEL_8;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  OUTLINED_FUNCTION_27_96(v2, v3, v4, v5, v6, v7, v8, v9, v31, v32, v34, v36[0]);
  if (swift_dynamicCast())
  {
    v10 = v36[0];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  sub_1E41FDF14();
  if (v37)
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v38;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = *(&v38 + 1);
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F7A8(v36, &unk_1ECF296E0);
    v12 = 0;
    v13 = 0;
    if (v10)
    {
LABEL_16:

      return;
    }
  }

  if (sub_1E41494A8(v12, v13) || (v14 = sub_1E4061F68(), !v13))
  {

    goto LABEL_30;
  }

  if (v12 != v14 || v13 != v15)
  {
    v17 = sub_1E42079A4();

    if (v17)
    {
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_32:
      v38 = 0u;
      v39 = 0u;
      goto LABEL_33;
    }

LABEL_30:

    return;
  }

  if (!v0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v33 = sub_1E4205F14();
  v35 = v18;
  sub_1E4207414();
  sub_1E375D7E8(v36, v0, &v38);

  sub_1E375D84C(v36);
  if (!*(&v39 + 1))
  {
LABEL_33:
    v30 = &v38;
    goto LABEL_34;
  }

  v19 = sub_1E3280A90(0, &qword_1EE23ADD0);
  OUTLINED_FUNCTION_27_96(v19, v20, v21, v22, v23, v24, v25, v26, v31, v33, v35, v36[0]);
  if (swift_dynamicCast())
  {
    v27 = v36[0];
    v28 = [v36[0] integerValue] == 0;
    v29 = sub_1E40602F8();
    LOBYTE(v38) = 0;
    v37 = MEMORY[0x1E69E6370];
    LOBYTE(v36[0]) = v28;
    (*(*v29 + 784))(&v38, v36, &unk_1F5D5D528, &off_1F5D5C858);

    v30 = v36;
LABEL_34:
    sub_1E325F7A8(v30, &unk_1ECF296E0);
  }

  sub_1E4060C14();
}

void sub_1E4062590()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken);
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_prefetchWorkToken) = 0;

  if (v9)
  {
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched);

    v25 = sub_1E324FBDC();
    v26 = *(v12 + 16);
    if (v24 == 1)
    {
      v26(v22, v25, v10);
      v27 = sub_1E41FFC94();
      v28 = sub_1E4206814();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v27, v28, "ContextMenu: Ignore preAction fetch result since it has fetched full context menu", v29, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v12 + 8))(v22, v10);
    }

    else
    {
      v26(v20, v25, v10);
      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1E323F000, v36, v37, "ContextMenu: fetched preAction document", v38, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v12 + 8))(v20, v10);
      sub_1E4062920();
    }
  }

  else
  {
    v30 = sub_1E324FBDC();
    (*(v12 + 16))(v16, v30, v10);
    sub_1E37CDABC(v7, v5, v3);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    sub_1E37CD868(v7, v5, v3);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v40 = swift_slowAlloc();
      v41 = v7;
      v44 = v40;
      *v33 = 136315138;
      v42 = v5;
      v43 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE88);
      v34 = sub_1E42070D4();
      sub_1E3270FC8(v34, v35, &v44);
      OUTLINED_FUNCTION_6_19();

      *(v33 + 4) = v3;
      _os_log_impl(&dword_1E323F000, v31, v32, "ContextMenu: failed to fetch preAction document with error %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4062920()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;

  v12 = sub_1E4060408(v11);
  if ((*(*v3 + 576))(v12))
  {
    OUTLINED_FUNCTION_26_0();
    v14 = (*(v13 + 152))();
  }

  else
  {
    v14 = 0;
  }

  v15 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v15) = v14;

  v17 = (*(*v3 + 464))(v16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_55:
    sub_1E405FF80(v18);
    v55 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v55, v4);

    v56 = sub_1E41FFC94();
    v57 = sub_1E4206814();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_6_21();
      *v58 = 134217984;
      v59 = sub_1E32AE9B0(v18);

      *(v58 + 4) = v59;

      _os_log_impl(&dword_1E323F000, v56, v57, "ContextMenu: did update menu with %ld items", v58, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v6 + 8))(v10, v4);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v19 = v17;
  v60 = v10;
  v61 = v6;
  v62 = v4;
  v75 = MEMORY[0x1E69E7CC0];
  v20 = sub_1E32AE9B0(v17);
  v21 = 0;
  v22 = v19 & 0xC000000000000001;
  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v63 = v19;
  v64 = v20;
  v24 = v19 + 32;
  v68 = v23;
  v69 = v22;
  v67 = v24;
  while (1)
  {
    if (v21 == v20)
    {

      v4 = v62;
      v6 = v61;
      v10 = v60;
      goto LABEL_55;
    }

    if (v22)
    {
      v25 = MEMORY[0x1E6911E60](v21, v63);
    }

    else
    {
      if (v21 >= *(v23 + 16))
      {
        goto LABEL_60;
      }

      v25 = *(v24 + 8 * v21);
    }

    v26 = __OFADD__(v21++, 1);
    if (v26)
    {
      break;
    }

    v74 = v25[49];
    v73 = 231;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v72[0] == v72[4] && v72[1] == v72[5])
    {

LABEL_18:
      v30 = (*(*v25 + 464))(v29);
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = v30;
      v32 = v30 >> 62;
      if (v30 >> 62)
      {
        v33 = sub_1E4207384();
      }

      else
      {
        v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v18 >> 62;
      if (v18 >> 62)
      {
        v35 = sub_1E4207384();
      }

      else
      {
        v35 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v35 + v33;
      if (__OFADD__(v35, v33))
      {
        goto LABEL_61;
      }

      v71 = v33;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v34)
      {
        v38 = 0;
      }

      else
      {
        v38 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      if (v38 != 1 || (v39 = v18 & 0xFFFFFFFFFFFFFF8, v36 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        if (v34)
        {
          sub_1E4207384();
        }

        v18 = sub_1E4207514();
        v39 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v40 = *(v39 + 16);
      v41 = (*(v39 + 24) >> 1) - v40;
      v42 = v39 + 8 * v40;
      v70 = v39;
      if (v32)
      {
        v45 = sub_1E4207384();
        if (v45)
        {
          v46 = v45;
          v47 = sub_1E4207384();
          if (v41 < v47)
          {
            goto LABEL_65;
          }

          if (v46 < 1)
          {
            goto LABEL_66;
          }

          v65 = v47;
          v66 = v18;
          v48 = v42 + 32;
          sub_1E328FCF4(&qword_1EE23B540, &unk_1ECF2C790);
          for (i = 0; i != v46; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            v50 = sub_1E3797EB0(v72, i, v31);
            v52 = *v51;

            (v50)(v72, 0);
            *(v48 + 8 * i) = v52;
          }

          v18 = v66;
          v20 = v64;
          v43 = v65;
LABEL_45:

          v23 = v68;
          v22 = v69;
          v24 = v67;
          if (v43 < v71)
          {
            goto LABEL_62;
          }

          if (v43 > 0)
          {
            v53 = *(v70 + 16);
            v26 = __OFADD__(v53, v43);
            v54 = v53 + v43;
            if (v26)
            {
              goto LABEL_63;
            }

            *(v70 + 16) = v54;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v43 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          if (v41 < v43)
          {
            goto LABEL_64;
          }

          type metadata accessor for ViewModel();
          swift_arrayInitWithCopy();
          goto LABEL_45;
        }
      }

      v23 = v68;
      v22 = v69;
      v24 = v67;
      if (v71 > 0)
      {
        goto LABEL_62;
      }

LABEL_50:

      v75 = v18;
    }

    else
    {
      v28 = sub_1E42079A4();

      if (v28)
      {
        goto LABEL_18;
      }

LABEL_36:

      MEMORY[0x1E6910BF0](v44);
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();

      v18 = v75;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1E4062FF4(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_15_0();
  if (*(a2 + 56))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_menuDocumentController);
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *(v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
    }

    sub_1E4062920();
  }

  return result;
}

void sub_1E4063074()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v13, v6);
  v14 = OUTLINED_FUNCTION_18_136();
  sub_1E3781F8C(v14, v15, v16);
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  v19 = OUTLINED_FUNCTION_18_136();
  sub_1E37B5ACC(v19, v20, v21);
  if (os_log_type_enabled(v17, v18))
  {
    v29 = v6;
    v22 = OUTLINED_FUNCTION_6_21();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    sub_1E3781F38();
    swift_allocError();
    *v24 = v5;
    *(v24 + 8) = v3;
    *(v24 + 16) = v1;
    v25 = OUTLINED_FUNCTION_18_136();
    sub_1E3781F8C(v25, v26, v27);
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v28;
    *v23 = v28;
    _os_log_impl(&dword_1E323F000, v17, v18, "ContextMenu: failed to get context menu item with error %@", v22, 0xCu);
    sub_1E325F7A8(v23, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    v6 = v29;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E406325C()
{
  type metadata accessor for ContextMenuPrefetchQueue();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 16) = v1;
  [v1 setMaxConcurrentOperationCount_];
  result = [v1 setQualityOfService_];
  qword_1EE28ADC8 = v0;
  return result;
}

uint64_t sub_1E40632D4()
{
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1E4063308()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for ContextMenuDocumentController();
  v14 = sub_1E3F41450(*(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_documentDataSource), *(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_appContext), 0, 0);
  v15 = OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController;
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController) = v14;

  v16 = *(v1 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_3_0();
    *(v16 + 24) = &off_1F5D93C90;
    swift_unknownObjectWeakAssign();
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v17 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27[4] = sub_1E40641BC;
  v27[5] = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v27[2] = v19;
  v27[3] = &block_descriptor_25_1;
  v20 = _Block_copy(v27);

  sub_1E4203FE4();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_220();
  sub_1E4064178(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v23, v24);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v7, v20);
  _Block_release(v20);

  (*(v26 + 8))(v7, v2);
  (*(v9 + 8))(v13, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4063648()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  if ([v1 isCancelled])
  {
    OUTLINED_FUNCTION_25_2();

    [v23 v24];
  }

  else
  {
    v36 = v18;
    v37 = v16;
    v26 = *&v1[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler];
    v27 = *&v1[OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_completionHandler + 8];
    sub_1E3280A90(0, &qword_1EE23B1D0);

    v35 = sub_1E4206A04();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    *(v28 + 32) = v8;
    *(v28 + 40) = v6;
    *(v28 + 48) = v4;
    *(v28 + 56) = v38;
    v39[4] = sub_1E4064140;
    v39[5] = v28;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v39[2] = v29;
    v39[3] = &block_descriptor_19_5;
    v30 = _Block_copy(v39);

    sub_1E37CDABC(v6, v4, v38);

    sub_1E4203FE4();
    v39[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_220();
    sub_1E4064178(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v33, v34);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v22, v15, v30);
    _Block_release(v30);

    (*(v11 + 8))(v15, v9);
    (*(v36 + 8))(v22, v37);
    [v1 finishExecutionIfPossible];
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E4063A60()
{
  OUTLINED_FUNCTION_15_0();

  sub_1E4063648();
}

uint64_t sub_1E4063ACC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1216))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1E405FF80(v5);

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
  (*(*a1 + 1192))(v6);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36590);
  sub_1E328FCF4(&qword_1ECF36598, &qword_1ECF36590);
  v7 = sub_1E4200844();

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = v7;

  return (*(*a1 + 1608))(v8);
}

uint64_t sub_1E4063CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 16))(a3, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1E405FF80(v12);

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_isFetched) = 1;
  v15[1] = (*(a4 + 24))(a3, a4);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36590);
  sub_1E328FCF4(&qword_1ECF36598, &qword_1ECF36590);
  v13 = sub_1E4200844();

  *(a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_libContextMenuObserver) = v13;

  (*(a4 + 32))(a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1E4063F18(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 8))(v3, v4);
  OUTLINED_FUNCTION_26_0();
  (*(v5 + 96))(a1);
}

uint64_t sub_1E4063FB4()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E4064178(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E40641BC()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUIP33_9818532A754D521898293EBAF3645FE528ContextMenuPrefetchOperation_prefetchMenuDocumentController))
    {

      sub_1E3F417C4();
    }
  }
}

uint64_t sub_1E4064228()
{
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_74();
    sub_1E4062590();
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_32_89(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 184));
}

uint64_t sub_1E40642CC()
{
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  return sub_1E40642FC();
}

uint64_t sub_1E40642FC()
{
  type metadata accessor for ButtonLayout();
  *(v0 + 104) = sub_1E3BBB724();
  v1 = sub_1E3C2F9A0();

  sub_1E4064350();

  return v1;
}

uint64_t sub_1E4064350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - v2;
  v31[0] = sub_1E3952C40();
  v31[1] = v4;
  v31[2] = v5;
  v31[3] = v6;
  v32 = 0;
  OUTLINED_FUNCTION_8();
  (*(v7 + 184))(v31);
  v8 = *(v0 + 104);
  (*(*v8 + 208))(0x4042000000000000, 0);
  v9 = (*(*v8 + 312))(0x4042000000000000, 0);
  v9.n128_u64[0] = 18.0;
  v26 = j__OUTLINED_FUNCTION_7_78(v9);
  v27 = v10;
  v28 = v11;
  v29 = v12;
  LOBYTE(v30) = 0;
  (*(*v8 + 560))(&v26);
  v13 = (*(*v8 + 800))(3);
  v14 = *(*v8 + 2096);
  v15 = v14(v13);
  sub_1E4202974();
  v16 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  v17 = sub_1E42029B4();
  sub_1E3FB67A8(v3);
  (*(*v15 + 2120))(v17);

  v19 = v14(v18);
  v20 = [objc_opt_self() whiteColor];
  (*(*v19 + 680))(v20);

  v14(v21);
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 256))(0x7FF0000000000000, 0);

  v14(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 360))(0x7FF0000000000000, 0);
}

uint64_t sub_1E4064708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  (*(v4 + 176))(v9);
  v5 = v10;
  v6 = 0.0;
  if ((v10 & 1) == 0)
  {
    v6 = sub_1E3952BE0(v9[0], v9[1], v9[2], v9[3]);
  }

  *a1 = sub_1E4201B84();
  *(a1 + 8) = v6;
  *(a1 + 16) = v5 & 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE90);
  return sub_1E40647C0(v2, (a1 + *(v7 + 44)));
}

uint64_t sub_1E40647C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEA8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1E4064A0C(*(a1 + 8), 0x6B72616D78, 0xE500000000000000, &v24 - v17);
  sub_1E4064A0C(*(a1 + 24), 0xD000000000000022, 0x80000001E426A320, v15);
  v19 = *(v6 + 16);
  v19(v12, v18, v4);
  v19(v9, v15, v4);
  v19(a2, v12, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB0);
  v19(&a2[*(v20 + 48)], v9, v4);
  v21 = &a2[*(v20 + 64)];
  *v21 = 0;
  v21[8] = 1;
  v22 = *(v6 + 8);
  v22(v15, v4);
  v22(v18, v4);
  v22(v9, v4);
  return (v22)(v12, v4);
}

uint64_t sub_1E4064A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v47[0] = a3;
  v47[1] = a1;
  v51 = a4;
  v53 = sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  v52 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEC0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v47 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED0);
  OUTLINED_FUNCTION_0_10();
  v48 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - v24;
  v54 = a2;
  v55 = v47[0];
  v56 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED8);
  sub_1E406579C();
  sub_1E4203964();
  v26 = &v13[*(v10 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v28 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v29 + 104))(v26 + v27, v28);
  *v26 = swift_getKeyPath();
  v30 = *v5;
  sub_1E4065350(v17);
  sub_1E325F6F0(v13, &qword_1ECF3EEB8);
  v31 = *(v30 + 104);
  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 200);
  v33();
  v33();
  sub_1E4203DA4();
  v34 = sub_1E4200D94();
  v35 = &v17[*(v14 + 44)];
  v36 = v60;
  *v35 = v59;
  *(v35 + 1) = v36;
  *(v35 + 2) = v61;
  (*(*v31 + 552))(v62, v34);
  v37 = 0.0;
  if ((v63 & 1) == 0)
  {
    v37 = sub_1E3952BE8(v62[0], v62[1], v62[2], v62[3]);
  }

  v38 = &v21[*(v18 + 36)];
  v39 = *(sub_1E4201534() + 20);
  v40 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v41 + 104))(v38 + v39, v40);
  *v38 = v37;
  v38[1] = v37;
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  sub_1E32E19E8(v17, v21);
  v42 = sub_1E4065864();
  sub_1E4203594();
  sub_1E325F6F0(v21, &qword_1ECF3EEC8);
  v43 = v50;
  sub_1E4201724();
  v57 = v18;
  v58 = v42;
  swift_getOpaqueTypeConformance2();
  sub_1E4065B90();
  v44 = v49;
  v45 = v53;
  sub_1E4202DF4();
  (*(v52 + 8))(v43, v45);
  return (*(v48 + 8))(v25, v44);
}

void *sub_1E4064F94@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335E8);
  OUTLINED_FUNCTION_0_10();
  v23 = v4;
  v24 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;

  v8 = sub_1E42037C4();
  v9 = *(**(*a1 + 104) + 2096);
  v9();
  OUTLINED_FUNCTION_2_1();
  v11 = (*(v10 + 2112))();

  KeyPath = swift_getKeyPath();
  __src[0] = v8;
  __src[1] = KeyPath;
  __src[2] = v11;
  v9();
  OUTLINED_FUNCTION_2_1();
  v14 = (*(v13 + 672))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F0);
  sub_1E3B1FF74();
  sub_1E39B9138();

  v16 = (v9)(v15);
  (*(*v16 + 248))(v16);

  v18 = *(v9)(v17);
  (*(v18 + 352))();

  sub_1E4203DA4();
  sub_1E42015C4();
  v19 = v25;
  (*(v23 + 32))(v25, v7, v24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EED8);
  return memcpy((v19 + *(v20 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E4065350@<X0>(uint64_t a1@<X8>)
{
  v27[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF20);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF30);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  if (sub_1E39DFFC8())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8);
    v17 = sub_1E4065AAC();
    v27[1] = v1;
    v18 = v17;
    v19 = sub_1E3B1FF18();
    v20 = MEMORY[0x1E69817E8];
    sub_1E3E36744();
    (*(v12 + 16))(v9, v15, v10);
    swift_storeEnumTagMultiPayload();
    *&v32 = v16;
    *(&v32 + 1) = v20;
    *&v33 = v18;
    *(&v33 + 1) = v19;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    *&v32 = v16;
    *(&v32 + 1) = v18;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_226();
    sub_1E4201F44();
    return (*(v12 + 8))(v15, v10);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v23 = (*(v22 + 792))();
    v32 = 0u;
    v33 = 0u;
    v34 = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EEB8);
    v25 = sub_1E4065AAC();
    sub_1E3A6929C(v23, 0, 0, 1, &v32, v24, v25);
    (*(v3 + 16))(v9, v6, v1);
    swift_storeEnumTagMultiPayload();
    v26 = sub_1E3B1FF18();
    v28 = v24;
    v29 = MEMORY[0x1E69817E8];
    v30 = v25;
    v31 = v26;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    v28 = v24;
    v29 = v25;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_7_226();
    sub_1E4201F44();
    return (*(v3 + 8))(v6, v1);
  }
}

uint64_t sub_1E40656C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MultiPlayerContainerViewControlsLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  result = sub_1E40642FC();
  *a5 = result;
  a5[1] = a1;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

unint64_t sub_1E406579C()
{
  result = qword_1ECF3EEE0;
  if (!qword_1ECF3EEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF335F0);
    sub_1E3B1FF74();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEE0);
  }

  return result;
}

unint64_t sub_1E4065864()
{
  result = qword_1ECF3EEE8;
  if (!qword_1ECF3EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEC8);
    sub_1E406591C();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEE8);
  }

  return result;
}

unint64_t sub_1E406591C()
{
  result = qword_1ECF3EEF0;
  if (!qword_1ECF3EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEC0);
    sub_1E40659A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEF0);
  }

  return result;
}

unint64_t sub_1E40659A8()
{
  result = qword_1ECF3EEF8;
  if (!qword_1ECF3EEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEB8);
    sub_1E4065AAC();
    sub_1E3B1FF18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EEF8);
  }

  return result;
}

unint64_t sub_1E4065AAC()
{
  result = qword_1ECF3EF08;
  if (!qword_1ECF3EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EEB8);
    sub_1E32752B0(&qword_1ECF3EF10, &qword_1ECF3EF18);
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF08);
  }

  return result;
}

unint64_t sub_1E4065B90()
{
  result = qword_1ECF2CFE8;
  if (!qword_1ECF2CFE8)
  {
    sub_1E4201F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFE8);
  }

  return result;
}

id sub_1E4065C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_1E4065CB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1E4065D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v3 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate;
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate + 8);
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 1);
  *(inited + 48) = *v6;
  *(inited + 56) = v8;
  v132 = inited;
  sub_1E406736C(v4);
  sub_1E406736C(v7);
  if ([v1 vuiIsRTL])
  {
    sub_1E4066BF4();
    inited = v132;
  }

  v9 = *(inited + 16);
  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(inited + 32);
  if (!v10)
  {
    goto LABEL_16;
  }

  if (v9 == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = *(inited + 48);
  if (!v11)
  {
LABEL_16:

    return;
  }

  v12 = *(inited + 40);
  v13 = *(inited + 56);
  sub_1E406736C(*(inited + 32));
  sub_1E406736C(v11);
  v14 = [v10 vuiView];
  if (v14)
  {
    v15 = v14;
    v16 = [v11 vuiView];
    if (v16)
    {
      v17 = v16;
      v122 = v12;
      v18 = sub_1E4065BE8();
      [v18 setTranslatesAutoresizingMaskIntoConstraints_];

      v19 = sub_1E4065BF4();
      [v19 setTranslatesAutoresizingMaskIntoConstraints_];

      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      v125 = v17;
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      [v1 vui:v10 addChildViewController:?];
      [v1 vui:v11 addChildViewController:?];
      v20 = [v1 view];
      if (!v20)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v21 = v20;
      v121 = v13;
      v22 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController____lazy_storage___leftView;
      [v20 addSubview_];

      v23 = [v1 view];
      if (!v23)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v24 = v23;
      v25 = OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController____lazy_storage___rightView;
      [v23 addSubview_];

      [*(v1 + v22) vui:v15 addSubview:0 oldView:?];
      v123 = v25;
      [*(v1 + v25) vui:v125 addSubview:0 oldView:?];
      [v10 didMoveToParentViewController_];
      v119 = v11;
      v26 = [v11 didMoveToParentViewController_];
      v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x140);
      v28 = v27(v26);
      if (!v28 || ((*(*v28 + 176))(v133), v29 = *&v133[1], v28 = , (v134 & 1) != 0))
      {
        v29 = *(MEMORY[0x1E69DDCE0] + 8);
      }

      v130 = 0;
      v30 = v27(v28);
      if (v30)
      {
        v31 = (*(*v30 + 1152))();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 1;
      }

      v124 = v15;
      v120 = v10;
      v128 = v31;
      v129 = v33 & 1;
      sub_1E3793CAC();
      max<A>(_:_:)();
      v34 = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF58);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_1E42E7EF0;
      v36 = [*(v1 + v22) leftAnchor];
      v37 = [v1 view];
      if (!v37)
      {
        goto LABEL_47;
      }

      v38 = v37;
      v39 = [v37 leftAnchor];

      v40 = OUTLINED_FUNCTION_4_255();
      v42 = [v40 v41];

      *(v35 + 32) = v42;
      v43 = [*(v1 + v22) topAnchor];
      v44 = [v1 view];
      if (!v44)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v45 = v44;
      v46 = [v44 topAnchor];

      v47 = OUTLINED_FUNCTION_4_255();
      v49 = [v47 v48];

      *(v35 + 40) = v49;
      v50 = [*(v1 + v22) bottomAnchor];
      v51 = [v1 view];
      if (!v51)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v52 = v51;
      v53 = [v51 bottomAnchor];

      v54 = OUTLINED_FUNCTION_4_255();
      v56 = [v54 v55];

      *(v35 + 48) = v56;
      v57 = [*(v1 + v25) leftAnchor];
      v58 = [*(v1 + v22) rightAnchor];
      v59 = [v57 constraintEqualToAnchor:v58 constant:v34];

      *(v35 + 56) = v59;
      v60 = [*(v1 + v25) rightAnchor];
      v61 = [v1 view];
      if (!v61)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v62 = v61;
      v63 = [v61 rightAnchor];

      v64 = OUTLINED_FUNCTION_4_255();
      v66 = [v64 v65];

      *(v35 + 64) = v66;
      v67 = [*(v1 + v25) topAnchor];
      v68 = [v1 view];
      if (!v68)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v69 = v68;
      v70 = [v68 topAnchor];

      v71 = OUTLINED_FUNCTION_4_255();
      v73 = [v71 v72];

      *(v35 + 72) = v73;
      v74 = [*(v1 + v25) bottomAnchor];
      v75 = [v1 view];
      if (!v75)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v76 = v75;
      v77 = [v75 bottomAnchor];

      v79 = OUTLINED_FUNCTION_3_256(v78, sel_constraintEqualToAnchor_);
      *(v35 + 80) = v79;
      v80 = [v124 leftAnchor];
      v81 = OUTLINED_FUNCTION_0_329([*(v1 + v22) leftAnchor]);

      v128 = v81;
      v126 = sub_1E3B51B98();
      sub_1E41E1A64(&v128, sub_1E4067604, v126, &v131);

      *(v35 + 88) = v131;
      v82 = [v124 rightAnchor];
      v83 = OUTLINED_FUNCTION_0_329([*(v1 + v22) rightAnchor]);

      *(v35 + 96) = v83;
      v84 = [v124 topAnchor];
      v85 = OUTLINED_FUNCTION_0_329([*(v1 + v22) topAnchor]);

      *(v35 + 104) = v85;
      v86 = [v124 bottomAnchor];
      v87 = OUTLINED_FUNCTION_0_329([*(v1 + v22) bottomAnchor]);

      *(v35 + 112) = v87;
      if (v122)
      {
        v88 = *(*v122 + 200);

        v88(v89);

        OUTLINED_FUNCTION_5_235();
        MEMORY[0x1EEE9AC00](v90);
        OUTLINED_FUNCTION_10_169();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
        v91 = sub_1E3A1F10C();
        OUTLINED_FUNCTION_6_221(sub_1E4067540, v91, v35 + 120);
      }

      else
      {
        *(v35 + 120) = 0;
      }

      v92 = [v125 leftAnchor];
      v93 = [*(v1 + v123) leftAnchor];
      v94 = OUTLINED_FUNCTION_3_256(v93, sel_constraintEqualToAnchor_);

      *(v35 + 128) = v94;
      v95 = [v125 rightAnchor];
      v96 = OUTLINED_FUNCTION_2_249([*(v1 + v123) rightAnchor]);

      v128 = v96;
      sub_1E41E1A64(&v128, sub_1E4066D20, v126, &v130);

      *(v35 + 136) = v130;
      v97 = [v125 topAnchor];
      v98 = OUTLINED_FUNCTION_2_249([*(v1 + v123) topAnchor]);

      *(v35 + 144) = v98;
      v99 = [v125 bottomAnchor];
      v100 = OUTLINED_FUNCTION_2_249([*(v1 + v123) bottomAnchor]);

      *(v35 + 152) = v100;
      if (v121)
      {
        v101 = *(*v121 + 200);

        v101(v102);

        OUTLINED_FUNCTION_5_235();
        MEMORY[0x1EEE9AC00](v103);
        OUTLINED_FUNCTION_10_169();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
        v104 = sub_1E3A1F10C();
        OUTLINED_FUNCTION_6_221(sub_1E40675EC, v104, v35 + 160);
      }

      else
      {
        *(v35 + 160) = 0;
      }

      v105 = [*(v1 + v22) widthAnchor];
      v106 = [*(v1 + v123) widthAnchor];
      v107 = OUTLINED_FUNCTION_3_256(v106, sel_constraintEqualToAnchor_);

      v127[0] = v107;
      sub_1E41E1A64(v127, sub_1E4067604, v126, &v128);

      *(v35 + 168) = v128;
      v108 = [*(v1 + v22) widthAnchor];
      v109 = [v124 widthAnchor];
      v110 = OUTLINED_FUNCTION_3_256(v109, sel_constraintGreaterThanOrEqualToAnchor_);

      *(v35 + 176) = v110;
      v111 = [*(v1 + v123) widthAnchor];
      v112 = [v125 widthAnchor];
      v113 = [v111 constraintGreaterThanOrEqualToAnchor_];

      v114 = 0;
      *(v35 + 184) = v113;
      v128 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v114 == 20)
        {
          v117 = objc_opt_self();
          swift_setDeallocating();
          sub_1E40674E0();
          v118 = sub_1E42062A4();

          [v117 activateConstraints_];

          goto LABEL_41;
        }

        if (v114 > 0x13)
        {
          break;
        }

        v115 = *(v35 + 8 * v114++ + 32);
        if (v115)
        {
          v116 = v115;
          MEMORY[0x1E6910BF0]();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
        }
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
  }

LABEL_41:
}

void sub_1E4066BF4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = (v2 - 1);
    if (v2 != 1)
    {
      v16 = v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        v1 = sub_1E40675D8(v1);
      }

      v4 = 16 * v2 + 16;
      v5 = 1;
      v6 = 4;
      v17 = v1;
      do
      {
        if (v5 - 1 != v3)
        {
          v7 = v1[2];
          if (v5 - 1 >= v7)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v7)
          {
            goto LABEL_14;
          }

          v8 = &v1[v6];
          v9 = v1[v6];
          v10 = v1[v6 + 1];
          v2 = v1 + v4;
          v11 = *(v1 + v4);
          v12 = *(v2 + 1);
          sub_1E406736C(v9);
          sub_1E406736C(v11);
          v13 = *v8;
          *v8 = v11;
          v8[1] = v12;
          v1 = v17;
          sub_1E3F6511C(v13);
          if (v3 >= v17[2])
          {
            goto LABEL_15;
          }

          v14 = *v2;
          *v2 = v9;
          *(v2 + 1) = v10;
          sub_1E3F6511C(v14);
        }

        --v3;
        v4 -= 16;
        v6 += 2;
      }

      while (v5++ < v3);
      *v16 = v1;
    }
  }
}

void *sub_1E4066D38(uint64_t a1)
{
  type metadata accessor for SplitOfferTemplateViewModel();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  (*(*v2 + 1272))();
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF40);
  v3 = sub_1E406701C();
  v11 = OUTLINED_FUNCTION_7_227(v3, v4, v5, v6, v7, v8, v9, v10, 0, v39, v41);
  v19 = v42;
  if (!v42)
  {

    return 0;
  }

  LOBYTE(v40) = 0;
  OUTLINED_FUNCTION_7_227(v11, v12, v13, v14, v15, v16, v17, v18, 1, v40, v42);

  if (!v43)
  {

    return 0;
  }

  type metadata accessor for SplitOfferTemplateController();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v22 = *v21;
  v23 = sub_1E3D9DBC0(v19, 0);

  if (v23)
  {
    v24 = *(*v19 + 392);

    v26 = v24(v25);

    v27 = (v20 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
    v28 = *(v20 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate);
    *v27 = v23;
    v27[1] = v26;
    sub_1E3F6511C(v28);
  }

  v29 = *v21;
  v30 = sub_1E3D9DBC0(v43, 0);

  if (v30)
  {
    v32 = *(*v43 + 392);

    v34 = v32(v33);

    v35 = (v20 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
    v36 = *(v20 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
    *v35 = v30;
    v35[1] = v34;
    v31 = sub_1E3F6511C(v36);
  }

  v37 = (*(*a1 + 392))(v31);
  if (v37)
  {
    type metadata accessor for SplitOfferTemplateLayout();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {

      v37 = 0;
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *v20) + 0x148))(v37);
  sub_1E4065D70();

  return v20;
}

unint64_t sub_1E406701C()
{
  result = qword_1ECF3EF48;
  if (!qword_1ECF3EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EF48);
  }

  return result;
}

id sub_1E40670A4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_285(&OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
  *&v3[OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout] = 0;
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SplitOfferTemplateController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_1E406719C(void *a1)
{
  OUTLINED_FUNCTION_1_285(&OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate);
  *&v1[OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_layout] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SplitOfferTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1E4067244()
{
  sub_1E3F6511C(*(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_leftTemplate));
  sub_1E3F6511C(*(v0 + OBJC_IVAR____TtC8VideosUI28SplitOfferTemplateController_rightTemplate));
}

id sub_1E40672BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitOfferTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E406736C(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_1E40673B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E40674E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF68);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E4067558(double *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*(v2 + 16) widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *a2 = v6;
}

uint64_t sub_1E4067608()
{
  type metadata accessor for ScoreboardObservable.Collector();
  v0 = swift_allocObject();
  type metadata accessor for ScoreboardObservable(0);
  v1 = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EF70);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  qword_1ECF71A28 = v0;
  return result;
}

uint64_t *sub_1E4067698()
{
  if (_MergedGlobals_269 != -1)
  {
    OUTLINED_FUNCTION_4_256();
  }

  return &qword_1ECF71A28;
}

uint64_t sub_1E40676F8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1E40677A8(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t sub_1E4067754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16) && (sub_1E327D33C(a2, a3), (v5 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

void sub_1E40677D4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1E406782C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t sub_1E406782C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {

    swift_isUniquelyReferenced_nonNull_native();
    v8 = *a1;
    result = sub_1E406B0D8(v5, v3, v4);
    *a1 = v8;
  }

  else
  {
    result = sub_1E327D33C(v3, v4);
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F0D8);
      sub_1E4207644();

      type metadata accessor for ScoreboardObservable(0);
      sub_1E4207664();

      *a1 = v9;
    }
  }

  return result;
}

id sub_1E406795C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 160))();

  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1E40679C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

void sub_1E4067A3C(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_1E382766C();
  v5 = v4;
  v6 = sub_1E4206F64();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 168))(v9);
  }
}

void sub_1E4067B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1E4067BA0()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;
  if (_MergedGlobals_269 != -1)
  {
    OUTLINED_FUNCTION_4_256();
  }

  v4 = qword_1ECF71A28;
  v5 = sub_1E3780EC0(v3);
  v6 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v6 + 6);
  sub_1E406C240(&v6[4], &v10);
  os_unfair_lock_unlock(v6 + 6);
  v7 = v10;

  if (!v7)
  {
    type metadata accessor for ScoreboardObservable(0);
    v8 = swift_allocObject();

    v9 = v3;
    sub_1E41FE924();
    *(v8 + 16) = v9;
    *(v8 + 24) = v1;
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E4067D9C()
{

  v1 = OBJC_IVAR____TtC8VideosUI20ScoreboardObservable___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E4067E04()
{
  sub_1E4067D9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4067E5C()
{
  v1 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for ScoreboardObservable(v1);
  result = sub_1E4200514();
  *v0 = result;
  return result;
}