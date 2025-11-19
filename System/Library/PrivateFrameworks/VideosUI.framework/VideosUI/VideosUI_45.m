uint64_t objectdestroy_109Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_1E39B407C(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23B340);
  v3 = sub_1E42062A4();

  [a2 setImageProxies_];
}

void sub_1E39B4108()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for PostPlayTemplateController();

    v5 = v2;
    v6 = sub_1E394E98C(v1, v2);
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x1B0);
    v8 = v4;
    v7(v4);
    v9 = v6;
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v8 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v11, sel_setFrame_);
        [v8 addChildViewController_];
        v14 = [v8 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v9 view];
          if (v16)
          {
            v17 = v16;
            [v15 addSubview_];

            v18 = OUTLINED_FUNCTION_33_14();
            [v18 v19];
            v20 = [v9 view];
            if (v20)
            {
              v21 = v20;
              [v20 setHidden_];

              v22 = &v8[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
              v23 = *&v8[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
              *v22 = v6;
              v22[8] = 0;

              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_1E39B433C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1E39B4358()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8))();
    if (v2)
    {
      [v2 playbackContainerViewControllerExitPictureInPicturePressed_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1E39B43F4()
{
  result = qword_1EE289690;
  if (!qword_1EE289690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE08);
    sub_1E39B4480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289690);
  }

  return result;
}

unint64_t sub_1E39B4480()
{
  result = qword_1EE289B58;
  if (!qword_1EE289B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2FE10);
    sub_1E38CA3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B58);
  }

  return result;
}

uint64_t sub_1E39B450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_53_4(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v3);
  return a2;
}

uint64_t OUTLINED_FUNCTION_32_35()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_58_15()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_1E39B45E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AlertPickerTemplateLayout();
  v4 = sub_1E3B20558();
  type metadata accessor for TemplateViewModel();
  sub_1E37E1424();

  v5 = sub_1E42010C4();
  v7 = v6;
  v8 = *(*a1 + 464);

  v10 = a1;
  v11 = (v8)(v9);

  if (!v11)
  {

    goto LABEL_46;
  }

  result = sub_1E32AE9B0(v11);
  if (!result)
  {

LABEL_46:
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v14 = 0;
LABEL_47:
    *a2 = v5;
    a2[1] = v7;
    a2[2] = v14;
    a2[3] = v50;
    a2[4] = v49;
    a2[5] = v48;
    a2[6] = v4;
    return result;
  }

  v13 = result;
  if (result >= 1)
  {
    v51 = a1;
    v52 = v7;
    v53 = v5;
    v54 = v4;
    v55 = a2;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v14 = 0;
    v15 = 0;
    v60 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v16 = MEMORY[0x1E6911E60](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      OUTLINED_FUNCTION_13_69();
      sub_1E3742F1C();
      OUTLINED_FUNCTION_3_84();
      v17 = OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_6_65(v17, v18, v19, v20, v21, v22, v23, v24, v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v62, v63);
      v25 = v25 && v8 == v10;
      if (v25)
      {

LABEL_30:

        if (*v16 == _TtC8VideosUI13TextViewModel)
        {
          v14 = v16;
        }

        else
        {

          v14 = 0;
        }

        goto LABEL_33;
      }

      v26 = OUTLINED_FUNCTION_9_6();

      if (v26)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      v27 = OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_6_65(v27, v28, v29, v30, v31, v32, v33, v34, v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v62, v63);
      if (v25 && v8 == v10)
      {

LABEL_36:

        if (*v16 == _TtC8VideosUI13TextViewModel)
        {
          v58 = v16;
        }

        else
        {

          v58 = 0;
        }

        goto LABEL_33;
      }

      v36 = OUTLINED_FUNCTION_9_6();

      if (v36)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      v37 = OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_6_65(v37, v38, v39, v40, v41, v42, v43, v44, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v63);
      if (v25 && v8 == v10)
      {

LABEL_40:

        type metadata accessor for ImageViewModel();
        v57 = swift_dynamicCastClass();
        if (!v57)
        {

          v57 = 0;
        }

        goto LABEL_33;
      }

      v46 = OUTLINED_FUNCTION_9_6();

      if (v46)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      OUTLINED_FUNCTION_2_80();
      v10 = v64;
      if (v63 == v61 && v64 == v62)
      {
        break;
      }

      v8 = sub_1E42079A4();

      if (v8)
      {
        goto LABEL_43;
      }

LABEL_33:
      if (v13 == ++v15)
      {

        v4 = v54;
        a2 = v55;
        v7 = v52;
        v5 = v53;
        v48 = v56;
        v49 = v57;
        v50 = v58;
        goto LABEL_47;
      }
    }

LABEL_43:

    v56 = v16;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39B49E4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(**(*&v1 + 48) + 1856))();
  *a1 = sub_1E4201D44();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE28);
  return sub_1E39B4A80(v1, a1 + *(v4 + 44));
}

uint64_t sub_1E39B4A80@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v160 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v159 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE48);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v170 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v169 = v15;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v158 = (v148 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE58);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v168 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v148 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v174 = v25;
  v175 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v173 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v148 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v166 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v163 = v148 - v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  v162 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  v167 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v148 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v153 = v44;
  v154 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v148 - v46;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  v155 = v148 - v49;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v148 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE70);
  OUTLINED_FUNCTION_17_2(v53);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v148 - v55;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE78);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_5();
  v157 = v58;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25_3();
  v156 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE80);
  v62 = OUTLINED_FUNCTION_17_2(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_5();
  v165 = v63;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v64);
  v66 = v148 - v65;
  v67 = *(*&a1 + 32);
  v180 = v23;
  v177 = v148 - v65;
  v178 = v42;
  v176 = a1;
  v172 = v30;
  if (v67)
  {
    v149 = v56;
    v150 = v52;
    v151 = v29;
    v68 = v67;

    sub_1E3EB9BB4(v197);
    v69 = OUTLINED_FUNCTION_18();
    v148[2] = v68;
    sub_1E37E8BE8(v68, v197, 0, v69 & 1, 0, 0, v47);
    v70 = sub_1E375C31C(v197);
    v71 = *(*&a1 + 48);
    v72 = *(*v71 + 1808);
    v73 = v72(v70);
    (*(*v73 + 248))(v73);

    v75 = *v72(v74);
    (*(v75 + 352))();

    sub_1E4203DA4();
    sub_1E42015C4();
    v76 = v155;
    (*(v153 + 32))(v155, v47, v154);
    memcpy((v76 + *(v152 + 36)), v198, 0x70uLL);
    LOBYTE(v68) = sub_1E4202734();
    v77 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v68)
    {
      v77 = sub_1E4202774();
    }

    (*(*v71 + 1856))();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v78 = v150;
    sub_1E3741EA0(v76, v150, &qword_1ECF2FE60);
    v79 = v78 + *(v161 + 36);
    *v79 = v77;
    *(v79 + 8) = v2;
    *(v79 + 16) = v3;
    *(v79 + 24) = v4;
    *(v79 + 32) = v5;
    *(v79 + 40) = 0;
    v80 = [objc_opt_self() blackColor];
    sub_1E39B5CE0();
    v81 = v149;
    sub_1E39B87A4(v80);

    sub_1E325F6F0(v78, &qword_1ECF2FE68);
    v82 = v81;
    v83 = v157;
    sub_1E3741EA0(v82, v157, &qword_1ECF2FE70);
    *(v83 + *(v181 + 36)) = 256;
    v84 = v83;
    v85 = v156;
    OUTLINED_FUNCTION_17_50(v84, v156);
    v66 = v177;
    OUTLINED_FUNCTION_17_50(v85, v177);
    v86 = 0;
    v23 = v180;
    v42 = v178;
    a1 = v176;
    v30 = v172;
    v29 = v151;
  }

  else
  {
    v86 = 1;
  }

  v87 = 1;
  __swift_storeEnumTagSinglePayload(v66, v86, 1, v181);
  if (*(*&a1 + 24))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v88 = sub_1E3C27528();
    if (v88 && ((*(*v88 + 152))(v199), v2 = v199[0], v3 = v199[1], v4 = v199[2], v5 = v199[3], , (v200 & 1) == 0))
    {
      v89.n128_u64[0] = v2;
      v90.n128_u64[0] = v3;
      v91.n128_u64[0] = v4;
      v92.n128_u64[0] = v5;
      j_nullsub_1(v89, v90, v91, v92);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v93 = sub_1E4202734();

    v94 = v163;
    (*(v174 + 32))(v163, v29, v175);
    v95 = v94 + *(v30 + 36);
    *v95 = v93;
    *(v95 + 8) = v2;
    *(v95 + 16) = v3;
    *(v95 + 24) = v4;
    *(v95 + 32) = v5;
    *(v95 + 40) = 0;
    v96 = v162;
    OUTLINED_FUNCTION_17_50(v94, v162);
    OUTLINED_FUNCTION_17_50(v96, v42);
    v87 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v87, 1, v30);
  v97 = sub_1E3FFE5B8(0, 1);
  v98 = sub_1E4202724();
  v99 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v98)
  {
    v99 = sub_1E4202774();
  }

  LODWORD(v163) = v99;
  v100 = *(*&a1 + 48);
  v101 = (*v100 + 1856);
  v161 = *v101;
  v181 = v101;
  (v161)();
  sub_1E4200A54();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v162 = v108;
  v109 = *(*&a1 + 40);
  v110 = 1;
  if (v109)
  {
    v111 = MEMORY[0x1E69E7CC0];

    v112 = sub_1E4201D44();
    v157 = v100;
    v113 = v158;
    *v158 = v112;
    *(v113 + 8) = 0;
    *(v113 + 16) = 1;
    v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE88) + 44);
    v114 = (*(*v109 + 464))();
    if (v114)
    {
      v115 = v114;
    }

    else
    {
      v115 = v111;
    }

    v189 = *&v115;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
    sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
    sub_1E375BEF4();
    swift_getOpaqueTypeConformance2();
    a1 = v176;
    sub_1E4203B34();

    sub_1E3741EA0(v113, v23, &qword_1ECF2FE50);
    v110 = 0;
  }

  v116 = *&v166;
  __swift_storeEnumTagSinglePayload(v23, v110, 1, v164);
  v166 = sub_1E3FFE5B8(0, 1);
  v117 = sub_1E4202724();
  v118 = sub_1E4202774();
  sub_1E4202774();
  v119 = sub_1E4202774();
  v120 = v161;
  if (v119 != v117)
  {
    v118 = sub_1E4202774();
  }

  v120();
  sub_1E4200A54();
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  if (*(*&a1 + 16))
  {
    v157 = v107;
    v158 = v105;
    v164 = v103;
    v176 = v97;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v129 = sub_1E4202724();
    sub_1E4202774();
    sub_1E4202774();
    v130 = sub_1E4202774();
    if (v130 != v129)
    {
      v130 = sub_1E4202774();
    }

    (v120)(v130);
    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();
    (*(v174 + 32))(v116, v173, v175);
    OUTLINED_FUNCTION_5_80(v172);
    v131 = sub_1E4202754();
    sub_1E4202774();
    sub_1E4202774();
    v132 = sub_1E4202774();
    if (v132 != v131)
    {
      v132 = sub_1E4202774();
    }

    (v120)(v132);
    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();

    v133 = v116;
    v134 = v160;
    sub_1E3741EA0(v133, v160, &qword_1ECF28CC0);
    OUTLINED_FUNCTION_5_80(v179);
    v135 = v134;
    v136 = v159;
    sub_1E3741EA0(v135, v159, &qword_1ECF2FE40);
    v137 = v136;
    v138 = v169;
    sub_1E3741EA0(v137, v169, &qword_1ECF2FE40);
    v139 = 0;
    v97 = v176;
    v103 = v164;
    v107 = v157;
    v105 = v158;
  }

  else
  {
    v139 = 1;
    v138 = v169;
  }

  __swift_storeEnumTagSinglePayload(v138, v139, 1, v179);
  v140 = v66;
  v141 = v165;
  sub_1E3743538(v140, v165, &qword_1ECF2FE80);
  v196[0] = v141;
  v142 = v178;
  v143 = v167;
  sub_1E3743538(v178, v167, &qword_1ECF2F9A8);
  v189 = v97;
  v190 = v163;
  v191 = v103;
  v192 = v105;
  v193 = v107;
  v194 = v162;
  v195 = 0;
  v196[1] = v143;
  v196[2] = &v189;
  v144 = v180;
  v145 = v168;
  sub_1E3743538(v180, v168, &qword_1ECF2FE58);
  v182 = v166;
  v183 = v118;
  v184 = v122;
  v185 = v124;
  v186 = v126;
  v187 = v128;
  v188 = 0;
  v196[3] = v145;
  v196[4] = &v182;
  v146 = v170;
  sub_1E3743538(v138, v170, &qword_1ECF2FE48);
  v196[5] = v146;
  sub_1E39B5B14(v196, v171);
  sub_1E325F6F0(v138, &qword_1ECF2FE48);
  sub_1E325F6F0(v144, &qword_1ECF2FE58);
  sub_1E325F6F0(v142, &qword_1ECF2F9A8);
  sub_1E325F6F0(v177, &qword_1ECF2FE80);
  sub_1E325F6F0(v146, &qword_1ECF2FE48);
  sub_1E325F6F0(v145, &qword_1ECF2FE58);
  sub_1E325F6F0(v143, &qword_1ECF2F9A8);
  return sub_1E325F6F0(v141, &qword_1ECF2FE80);
}

uint64_t sub_1E39B5B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF2FE80);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE98);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF2F9A8);
  v5 = a2 + v4[16];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 32);
  LOBYTE(v7) = *(v7 + 48);
  *v5 = v8;
  *(v5 + 8) = v9;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  *(v5 + 48) = v7;
  sub_1E3743538(v6, a2 + v4[20], &qword_1ECF2FE58);
  v12 = a2 + v4[24];
  v14 = a1[4];
  v13 = a1[5];
  v15 = *(v14 + 8);
  v16 = *(v14 + 48);
  v17 = *(v14 + 16);
  v18 = *(v14 + 32);
  *v12 = *v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v17;
  *(v12 + 32) = v18;
  *(v12 + 48) = v16;
  return sub_1E3743538(v13, a2 + v4[28], &qword_1ECF2FE48);
}

uint64_t sub_1E39B5C44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39B5C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E39B5CE0()
{
  result = qword_1ECF2FE90;
  if (!qword_1ECF2FE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE68);
    sub_1E39B5D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FE90);
  }

  return result;
}

unint64_t sub_1E39B5D6C()
{
  result = qword_1EE289C50;
  if (!qword_1EE289C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C50);
  }

  return result;
}

uint64_t sub_1E39B5E10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEB0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - v14;
  v16 = *v1;
  if (!*v1)
  {
    goto LABEL_11;
  }

  v17 = (*(*v16 + 464))(v13);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  result = sub_1E32AE9B0(v17);
  if (!result)
  {

LABEL_11:

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  v51 = v12;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E6911E60](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v18 + 32);
  }

  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEB8) + 44)];
  memcpy(__dst, v2 + 1, 0x5BuLL);
  v22 = OUTLINED_FUNCTION_18();
  v50 = v20;
  sub_1E37E8BE8(v20, __dst, 0, v22 & 1, 0, 0, v21);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0) + 36)) = 256;
  v23 = *(*v16 + 392);
  v24 = v23();
  if (v24 && ((*(*v24 + 152))(v52), v25 = v52[0], v26 = v52[1], v27 = v52[2], v28 = v52[3], , (v53 & 1) == 0))
  {
    v29.n128_u64[0] = v25;
    v30.n128_u64[0] = v26;
    v31.n128_u64[0] = v27;
    v32.n128_u64[0] = v28;
    v33 = j_nullsub_1(v29, v30, v31, v32);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_5_8();
  }

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = sub_1E4202734();
  v42 = sub_1E32BDA74(v6, v10);
  v43 = &v10[*(v7 + 36)];
  *v43 = v41;
  *(v43 + 1) = v37;
  *(v43 + 2) = v38;
  *(v43 + 3) = v39;
  *(v43 + 4) = v40;
  v43[40] = 0;
  v44 = (v23)(v42);
  v45 = sub_1E39B62A0();
  OUTLINED_FUNCTION_76_0();
  v46 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v47 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v48 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v49 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v44, v46 & 1, v47 & 1, v48 & 1, v49 & 1, v7, v45);

  sub_1E32BDADC(v10);
  (*(v51 + 32))(a1, v15, v11);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

unint64_t sub_1E39B62A0()
{
  result = qword_1ECF2FEC8;
  if (!qword_1ECF2FEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA8);
    sub_1E39B632C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FEC8);
  }

  return result;
}

unint64_t sub_1E39B632C()
{
  result = qword_1ECF2FED0;
  if (!qword_1ECF2FED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FED0);
  }

  return result;
}

uint64_t sub_1E39B63B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 203))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39B6408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 202) = 0;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 203) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 203) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E39B64A4()
{
  result = qword_1ECF2FED8;
  if (!qword_1ECF2FED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA8);
    sub_1E39B62A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FED8);
  }

  return result;
}

void *sub_1E39B6564@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v14 = *(v13 + 392);
    v15 = swift_retain_n();
    v16 = v14(v15);

    if (v16)
    {
      type metadata accessor for ImageLayout();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
      }
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = a4 & 1;
  memcpy(v23, a2, 0x5BuLL);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  memcpy((v11 + 24), a2, 0x5BuLL);
  v26 = 0;
  __src[0] = sub_1E39B66FC;
  __src[1] = v11;
  LOBYTE(__src[2]) = 0;
  __src[3] = a1;
  __src[4] = v9;
  memcpy(&__src[5], a2, 0x5BuLL);
  BYTE3(__src[16]) = v10;
  __src[17] = 0;
  __src[18] = 0;
  v19[0] = sub_1E39B66FC;
  v19[1] = v11;
  v20 = 0;
  v21 = a1;
  v22 = v9;
  v23[91] = v10;
  v24 = 0;
  v25 = 0;
  sub_1E375C2C0(a2, v17);
  sub_1E37E94CC(__src, v17);
  sub_1E37E9478(v19);
  return memcpy(a5, __src, 0x98uLL);
}

uint64_t sub_1E39B66FC()
{
  v1 = *(v0 + 16);
  type metadata accessor for ImageViewInteractor(0);

  sub_1E375C2C0(v0 + 24, &v3);
  return sub_1E41A4110(v1, (v0 + 24));
}

void sub_1E39B675C()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v1, v2);
  OUTLINED_FUNCTION_75();
  sub_1E4200BC4();
  sub_1E41A476C(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_75();
  sub_1E4200BC4();
  OUTLINED_FUNCTION_5_0();

  sub_1E39B68DC();
}

void sub_1E39B68DC()
{
  OUTLINED_FUNCTION_93();
  v44 = v1;
  v45 = v2;
  v46 = v3;
  v5 = v4;
  v43 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v42 = *(v0 + 81);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v15, v16);
  v17 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
  OUTLINED_FUNCTION_5_0();
  v18 = *v17;
  v19 = v17[1];

  v20 = *(v0 + 32);
  if (!v20 || (OUTLINED_FUNCTION_8(), ((*(v21 + 408))() & 1) != 0))
  {
    v22 = v18 != 0.0;
    if (v19 != 0.0)
    {
      v22 = 1;
    }

    v23 = v18 <= 0.0 || !v22;
    if (!v23 && v19 > 0.0)
    {
      v24 = 0;
      v25 = v18 / v19;
      goto LABEL_15;
    }

    if (!v20)
    {
      v25 = 0.0;
      v24 = 1;
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_8();
  v27 = (*(v26 + 432))();
  if (v24)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *&v27;
  }

LABEL_15:
  v28 = &v10[*(v7 + 36)];
  *v28 = v25;
  *(v28 + 8) = v24 & 1;
  v10[*(v7 + 40)] = (v42 & 1) == 0;
  sub_1E39B6D00(v43, v5 & 1, v45, v44 & 1, v10);
  sub_1E4203DA4();
  sub_1E4200D94();
  v29 = OUTLINED_FUNCTION_134_0();
  sub_1E3741EA0(v29, v30, v31);
  v32 = &v14[*(v11 + 36)];
  v33 = v48;
  *v32 = v47;
  v32[1] = v33;
  v32[2] = v49;
  v34 = sub_1E4203DA4();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF10);
  v38 = v46;
  v39 = v46 + *(v37 + 36);
  sub_1E39B74EC();
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF28) + 36));
  *v40 = v34;
  v40[1] = v36;
  sub_1E3741EA0(v14, v38, &qword_1ECF2FF18);
  OUTLINED_FUNCTION_54_0();
}

void *sub_1E39B6C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[17];
  memcpy(__dst, v3, sizeof(__dst));
  sub_1E37E94CC(v3, v12);

  sub_1E34AF594(v7);
  memcpy(__src, __dst, 0x88uLL);
  __src[17] = a1;
  __src[18] = a2;
  memcpy(v12, __dst, sizeof(v12));
  v13 = a1;
  v14 = a2;
  sub_1E37E94CC(__src, v9);
  sub_1E37E9478(v12);
  return memcpy(a3, __src, 0x98uLL);
}

uint64_t sub_1E39B6D00@<X0>(uint64_t a1@<X0>, int a2@<W1>, id a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v86 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF48);
  OUTLINED_FUNCTION_0_10();
  v77 = v15;
  v78 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v76 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF50);
  OUTLINED_FUNCTION_0_10();
  v80 = v19;
  v81 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v79 = v21;
  sub_1E39B7734();
  sub_1E4203DA4();
  v83 = a2;
  v85 = a4;
  v82 = a1;
  v84 = a3;
  sub_1E4200D94();
  v22 = &v13[*(v10 + 36)];
  v23 = v93;
  *v22 = v92;
  *(v22 + 1) = v23;
  *(v22 + 2) = v94;
  v75 = v5[4];
  LODWORD(a3) = *(v5 + 128);
  if (a3 == 2)
  {
    v25 = *v5;
    v26 = *(v6 + 16);
    type metadata accessor for ImageViewInteractor(0);
    OUTLINED_FUNCTION_0_97();
    sub_1E39BCC78(v27, v28);
    v74 = v25;
    v73[1] = v26;
    v29 = sub_1E4200BC4();
    v30 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0();
    v31 = *(v29 + v30);
    a3 = v31;

    if (!v31)
    {
      LOBYTE(a3) = 1;
      goto LABEL_15;
    }

    [a3 size];
    v33 = v32;
    v35 = v34;

    LOBYTE(a3) = 1;
    if (v35 > 0.0 && v33 > 0.0)
    {
      v36 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
      OUTLINED_FUNCTION_5_0();
      v37 = *v36;
      v38 = v36[1];

      v39 = v6[4];
      if (!v39 || (OUTLINED_FUNCTION_8(), ((*(v40 + 408))() & 1) != 0))
      {
        v41 = v37 != 0.0;
        if (v38 != 0.0)
        {
          v41 = 1;
        }

        if (v37 > 0.0 && v41 && v38 > 0.0)
        {
          if (!v39)
          {
            goto LABEL_15;
          }

          v42 = v37 / v38;
          goto LABEL_19;
        }

        if (!v39)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_8();
      *&v67 = COERCE_DOUBLE((*(v66 + 432))());
      if (v68)
      {
        goto LABEL_15;
      }

      v42 = *&v67;
LABEL_19:
      OUTLINED_FUNCTION_8();
      v70 = (*(v69 + 744))();
      if (v70)
      {

        v71 = floor(v42 * 10.0);
        v72 = floor(v33 / v35 * 10.0);
        LOBYTE(a3) = v71 + -1.0 <= v72 && v72 <= v71 + 1.0;
      }
    }
  }

LABEL_15:
  v43 = *(v6 + 131);
  v44 = sub_1E39BC24C();
  v45 = a3 & 1;
  v46 = v76;
  sub_1E3C8F60C(v75, v45, v43, v10, v44);
  sub_1E325F69C(v13, &qword_1ECF2FF40);
  memcpy(v95, v6 + 5, 0x5BuLL);
  memcpy(v91, v6 + 5, 0x5BuLL);
  OUTLINED_FUNCTION_47_20();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v47);
  sub_1E375C2C0(v95, &v87);
  OUTLINED_FUNCTION_52_16();
  v87 = v10;
  v88 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_1E39BCB80();
  v50 = v78;
  v51 = v79;
  sub_1E4203524();

  memcpy(v96, v91, 0x5BuLL);
  sub_1E375C31C(v96);
  (*(v77 + 8))(v46, v50);
  v91[0] = v6[3];
  OUTLINED_FUNCTION_47_20();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v52);
  OUTLINED_FUNCTION_52_16();
  type metadata accessor for ImageViewModel();

  v87 = v50;
  v88 = &unk_1F5D8B778;
  v89 = OpaqueTypeConformance2;
  v90 = v49;
  swift_getOpaqueTypeConformance2();
  sub_1E39BCC78(&qword_1EE282FC0, type metadata accessor for ImageViewModel);
  v53 = v86;
  v54 = v81;
  sub_1E4203524();

  (*(v80 + 8))(v51, v54);
  OUTLINED_FUNCTION_47_20();
  v55 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v55);
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFB8) + 36));
  *v56 = sub_1E39BCCC0;
  v56[1] = v55;
  v56[2] = 0;
  v56[3] = 0;
  OUTLINED_FUNCTION_52_16();
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v57, v58);
  OUTLINED_FUNCTION_63_0();
  sub_1E4200BC4();
  v59 = sub_1E41A3EB8();

  v60 = swift_allocObject();
  *(v60 + 16) = v82;
  *(v60 + 24) = v83 & 1;
  *(v60 + 32) = v84;
  *(v60 + 40) = v85 & 1;
  memcpy((v60 + 48), v6, 0x98uLL);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFC0);
  *(v53 + *(v61 + 52)) = v59;
  v62 = (v53 + *(v61 + 56));
  *v62 = sub_1E39BCD5C;
  v62[1] = v60;
  OUTLINED_FUNCTION_47_20();
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v63);
  v64 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFC8) + 36));
  *v64 = 0;
  v64[1] = 0;
  v64[2] = sub_1E39BCE70;
  v64[3] = v63;
  OUTLINED_FUNCTION_52_16();
  return OUTLINED_FUNCTION_52_16();
}

void sub_1E39B74EC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_7();
  memcpy(v27, (v2 + 40), 0x5BuLL);
  if (v27[10])
  {
    sub_1E375C2C0(v27, v25);
    sub_1E375C2C0(v27, v25);
    v11 = sub_1E4203644();
    v12 = *(v2 + 32);
    v13 = 0.0;
    if (v12)
    {
      (*(*v12 + 552))(v25);
      if ((v26 & 1) == 0)
      {
        v13 = sub_1E3952BE8(v25[0], v25[1], v25[2], v25[3]);
      }
    }

    sub_1E375C31C(v27);
    v14 = (v9 + *(v5 + 36));
    v15 = *(sub_1E4201534() + 20);
    v16 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v17 + 104))(v14 + v15, v16);
    *v14 = v13;
    v14[1] = v13;
    *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
    *v9 = v11;
    v18 = OUTLINED_FUNCTION_75();
    sub_1E3741EA0(v18, v19, &qword_1ECF2FF38);
    sub_1E3741EA0(v0, v4, &qword_1ECF2FF38);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

void sub_1E39B7734()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFB0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v2);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v65 = v4 - v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8);
  OUTLINED_FUNCTION_0_10();
  v67 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v16, v17);
  OUTLINED_FUNCTION_48_9();
  v18 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_symbolName);
  OUTLINED_FUNCTION_5_0();
  v19 = *v18;
  v20 = v18[1];

  if (!v20)
  {
    OUTLINED_FUNCTION_48_9();
    v28 = sub_1E4200BC4();
    v29 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0();
    v30 = *(v28 + v29);
    v31 = v30;

    if (v30)
    {
    }

    OUTLINED_FUNCTION_48_9();
    v32 = sub_1E4200BC4();
    v33 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0();
    v34 = *(v32 + v33);
    v35 = v34;

    if (!v34)
    {
      v36 = OUTLINED_FUNCTION_31_31();
      v37 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderImage;
      OUTLINED_FUNCTION_5_0();
      v35 = *(v36 + v37);
    }

    sub_1E39B8128();

    v38 = OUTLINED_FUNCTION_31_31();
    v39 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0();
    v40 = *(v38 + v39);
    v41 = v40;

    if (v40)
    {
    }

    else
    {
      v56 = OUTLINED_FUNCTION_31_31();
      v57 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor;
      OUTLINED_FUNCTION_5_0();
      v58 = *(v56 + v57);
      v43 = v58;

      if (v58)
      {
        v42 = sub_1E38F08C4(v43);
        goto LABEL_27;
      }
    }

    v42 = 0;
    v43 = 0;
LABEL_27:
    v59 = sub_1E4203DA4();
    v61 = v60;

    sub_1E3741EA0(v69, v65, &qword_1ECF2FFB0);
    v62 = (v65 + *(v72 + 36));
    *v62 = v42;
    v62[1] = v59;
    v62[2] = v61;
    sub_1E3741EA0(v65, v66, &qword_1ECF2FFA8);
    sub_1E3743538(v66, v71, &qword_1ECF2FFA8);
    swift_storeEnumTagMultiPayload();
    sub_1E39BC364();
    sub_1E39BC96C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v63, v64);
    goto LABEL_28;
  }

  v70 = v10;

  sub_1E42037F4();
  v21 = *(v0 + 32);
  if (!v21)
  {
    v27 = 0;
    v25 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_8();
  v23 = (*(v22 + 696))();
  if (v23 == 4)
  {
    OUTLINED_FUNCTION_8();
    v25 = (*(v24 + 672))();
    OUTLINED_FUNCTION_8();
    v27 = (*(v26 + 744))();
LABEL_13:
    v44 = OUTLINED_FUNCTION_34();
    sub_1E39B9AD8(v44, v45, 0, v46);

    goto LABEL_15;
  }

  sub_1E41261D8(v23);

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF78);
  sub_1E39BC4E8();
  sub_1E39BC5A0();
  sub_1E4201F44();

  if (v21)
  {
    OUTLINED_FUNCTION_8();
    (*(v47 + 720))();
  }

  v48 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v48);
  v49 = sub_1E39BC45C();
  sub_1E37B8438();
  sub_1E325F69C(v74, &qword_1ECF2FF68);
  if (_MergedGlobals_176 != -1)
  {
    swift_once();
  }

  sub_1E37D26AC(v19, v20, qword_1EE28B848);
  if (!v50)
  {
    goto LABEL_23;
  }

  v51 = [objc_opt_self() sharedInstance];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1E4205ED4();

    v54 = [v52 localizedStringForKey_];

    if (v54)
    {
      sub_1E4205F14();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8);
      v74[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68);
      v74[7] = v49;
      OUTLINED_FUNCTION_22_35();
      swift_getOpaqueTypeConformance2();
      sub_1E32822E0();
      v55 = v73;
      sub_1E4203114();
LABEL_24:

      (*(v67 + 8))(v55, v70);
      sub_1E32BDE64(v68, v71);
      swift_storeEnumTagMultiPayload();
      sub_1E39BC364();
      sub_1E39BC96C();
      sub_1E4201F44();
      sub_1E325F69C(v68, &qword_1ECF2FF60);
LABEL_28:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_23:
    sub_1E4201C14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68);
    OUTLINED_FUNCTION_22_35();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_57();
    v55 = v73;
    sub_1E4203104();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1E39B8128()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v8 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v48 = sub_1E4203804();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  if ((*(v0 + 130) & 1) == 0)
  {
    if (TVAppFeature.isEnabled.getter(10))
    {
      v16 = *v0;
      type metadata accessor for ImageViewInteractor(0);
      OUTLINED_FUNCTION_0_97();
      sub_1E39BCC78(v17, v18);
      v3 = v16;
      v19 = sub_1E4200BC4();
      v20 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
      OUTLINED_FUNCTION_5_0();
      v5 = *(v19 + v20);
      v21 = v5;

      if (v5 || (v22 = sub_1E4200BC4(), v23 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, OUTLINED_FUNCTION_5_0(), v5 = *(v22 + v23), v21 = v5, , v5))
      {

        OUTLINED_FUNCTION_60_11();
      }

      else
      {
        v45 = v1[4];
        OUTLINED_FUNCTION_60_11();
        if (v45)
        {
          OUTLINED_FUNCTION_8();
          if ((*(v46 + 1992))() != 3)
          {
            goto LABEL_20;
          }
        }
      }
    }

    sub_1E39B885C();
    if (sub_1E4200B54() & 1) != 0 || (v3)
    {
      type metadata accessor for ImageViewInteractor(0);
      OUTLINED_FUNCTION_0_97();
      sub_1E39BCC78(v24, v25);
      OUTLINED_FUNCTION_32_0();
      v26 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
      OUTLINED_FUNCTION_5_0();
      v27 = *v26;
      v28 = v26[1];

      v29 = v1[4];
      if (v29)
      {
        OUTLINED_FUNCTION_8();
        if (((*(v30 + 408))() & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v31 = v27 != 0.0;
      if (v28 != 0.0)
      {
        v31 = 1;
      }

      v32 = v27 <= 0.0 || !v31;
      if ((v32 || v28 <= 0.0) && v29)
      {
LABEL_19:
        OUTLINED_FUNCTION_8();
        (*(v33 + 432))();
      }
    }
  }

LABEL_20:
  sub_1E39B885C();
  sub_1E39B8A74();
  v34 = v5;
  sub_1E42037B4();
  (*(v10 + 104))(v14, *MEMORY[0x1E6981630], v8);
  sub_1E4203824();

  (*(v10 + 8))(v14, v8);
  v35 = OUTLINED_FUNCTION_63_0();
  v36(v35);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
  sub_1E42037E4();

  sub_1E325F69C(v47, &qword_1ECF2FFE0);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v37, v38);
  OUTLINED_FUNCTION_32_0();
  v39 = sub_1E4200BC4();
  v40 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageViewModel;
  OUTLINED_FUNCTION_5_0();
  v41 = *(v39 + v40);

  (*(*v41 + 904))(v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1B0);
  sub_1E37AE314();
  sub_1E32822E0();
  sub_1E4203114();

  v43 = OUTLINED_FUNCTION_74();
  v44(v43);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E39B87A4(void *a1)
{
  if (a1)
  {
    sub_1E38F08C4(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEE8);
  sub_1E39B9524();
  sub_1E4203DA4();
  sub_1E4202D24();
}

uint64_t sub_1E39B885C()
{
  v1 = v0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    type metadata accessor for ImageViewInteractor(0);
    OUTLINED_FUNCTION_0_97();
    sub_1E39BCC78(v2, v3);
    OUTLINED_FUNCTION_57();
    v4 = sub_1E4200BC4();
    v5 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0();
    v6 = *(v4 + v5);
    v7 = v6;

    if (v6 || (OUTLINED_FUNCTION_57(), v8 = sub_1E4200BC4(), v9 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, OUTLINED_FUNCTION_5_0(), v10 = *(v8 + v9), v7 = v10, , v10))
    {
    }

    else if (*(v1 + 32))
    {
      OUTLINED_FUNCTION_8();
      if ((*(v14 + 1992))() != 3)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = *(v1 + 82);
  if (v11 == 2)
  {
    if (*(v1 + 32))
    {
      OUTLINED_FUNCTION_8();
      v17 = (*(v12 + 1800))();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58);
      sub_1E4148C68(sub_1E3783B7C, v13, &v16);
      v17 = 1;
      sub_1E39BD0B0();
      if (sub_1E4205E84())
      {
        LOBYTE(v11) = 0;
        return v11 & 1;
      }
    }

LABEL_11:
    LOBYTE(v11) = 1;
  }

  return v11 & 1;
}

void sub_1E39B8A74()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v7, v8);
  v9 = sub_1E4200BC4();
  v10 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageInfo;
  OUTLINED_FUNCTION_5_0();
  sub_1E3743538(v9 + v10, v6, &qword_1ECF2FFE8);

  v11 = type metadata accessor for ImageInfo(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_1E325F69C(v6, &qword_1ECF2FFE8);
  }

  else
  {
    v12 = *(v6 + 1);
    v13 = v12;
    sub_1E39BD054(v6);
    if (v12)
    {

      v14 = 1;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  if (!*(v0 + 32))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  if ((v14 & (*(v15 + 2040))() & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v17 = (*(v16 + 672))();
    if (v17)
    {

      goto LABEL_10;
    }

LABEL_11:
    v18 = MEMORY[0x1E6981688];
    goto LABEL_12;
  }

LABEL_10:
  v18 = MEMORY[0x1E6981698];
LABEL_12:
  v19 = *v18;
  sub_1E4203804();
  OUTLINED_FUNCTION_2();
  (*(v20 + 104))(v2, v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39B8C98()
{
  OUTLINED_FUNCTION_93();
  WitnessTable = v0;
  v56 = v1;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF0);
  OUTLINED_FUNCTION_18_12();
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v53 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v54 = v23;
  OUTLINED_FUNCTION_112_1();
  v24 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  OUTLINED_FUNCTION_5_7();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    v32 = (*(v31 + 1824))();
    if (v32)
    {
      v52 = v24;
      v33 = v32;
      OUTLINED_FUNCTION_8();
      (*(v34 + 1848))(&v67);
      if ((v68 & 1) == 0)
      {
        v51 = v33;
        v60 = sub_1E38F08C4(v33);
        v43 = v57;
        sub_1E4203494();

        v44 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0);
        v58 = v43;
        v59 = v44;
        OUTLINED_FUNCTION_4_1();
        WitnessTable = swift_getWitnessTable();
        v45 = v53;
        v46 = *(v53 + 16);
        v46(v54, v21, v16);
        v47 = *(v45 + 8);
        v47(v21, v16);
        v48 = OUTLINED_FUNCTION_32_0();
        (v46)(v48);
        OUTLINED_FUNCTION_112_1();
        v37 = v57;
        sub_1E37B8D98(v49, v50);

        v47(v21, v16);
        v47(v54, v16);
        v24 = v52;
        goto LABEL_6;
      }

      v24 = v52;
    }
  }

  v35 = *(v8 + 16);
  v35(v15, WitnessTable, v4, v28);
  (v35)(v12, v15, v4);
  v36 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0);
  v37 = v57;
  v65 = v57;
  v66 = v36;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_112_1();
  sub_1E37B8E90(v38, v39, v40);
  v41 = *(v8 + 8);
  v41(v12, v4);
  v41(v15, v4);
LABEL_6:
  v42 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0);
  v63 = v37;
  v64 = v42;
  OUTLINED_FUNCTION_4_1();
  v61 = swift_getWitnessTable();
  v62 = v37;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  (*(v26 + 16))(v56, v30, v24);
  (*(v26 + 8))(v30, v24);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39B9138()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v54 = v4;
  v55 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_18_12();
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_112_1();
  v23 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v52 = v26;
  if (v8)
  {
    v49 = v8;
    sub_1E38F08C4(v49);
    v50 = v23;
    v27 = v55;
    sub_1E4202FB4();

    v28 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998);
    v56 = v27;
    v57 = v28;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v29 = *(v20 + 16);
    v29(v0, v2, v18);
    v30 = *(v20 + 8);
    v31 = OUTLINED_FUNCTION_134_0();
    v30(v31);
    v29(v2, v0, v18);
    v32 = v52;
    OUTLINED_FUNCTION_112_1();
    v23 = v50;
    sub_1E37B8D98(v33, v34);

    v35 = OUTLINED_FUNCTION_134_0();
    v30(v35);
    (v30)(v0, v18);
  }

  else
  {
    v36 = *(v10 + 16);
    v36(v17, v51, v6);
    v36(v14, v17, v6);
    v37 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998);
    v62 = v55;
    v63 = v37;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v38 = v52;
    OUTLINED_FUNCTION_112_1();
    sub_1E37B8E90(v39, v40, v41);
    v42 = *(v10 + 8);
    v43 = OUTLINED_FUNCTION_105_3();
    v42(v43);
    v44 = v17;
    v32 = v38;
    (v42)(v44, v6);
  }

  v45 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998);
  v46 = v55;
  v60 = v55;
  v61 = v45;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v59 = v46;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v47 = v53;
  (*(v53 + 16))(v54, v32, v23);
  (*(v47 + 8))(v32, v23);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E39B9524()
{
  result = qword_1EE288700;
  if (!qword_1EE288700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288700);
  }

  return result;
}

uint64_t sub_1E39B95A0(void *a1)
{
  if (a1)
  {
    sub_1E38F08C4(a1);
  }

  OUTLINED_FUNCTION_59_1();
  sub_1E4202D74();
}

void sub_1E39B9610()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v1;
  v3 = v2;
  v5 = v4;
  LODWORD(v63) = v6;
  v58 = v7;
  v67 = v8;
  OUTLINED_FUNCTION_1_2();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v61 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v59 = sub_1E4203814();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA20);
  OUTLINED_FUNCTION_18_12();
  v22 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v60 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_61_10();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v65 = v33;
  v66 = v32;
  OUTLINED_FUNCTION_5_7();
  v36 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v58 - v35;
  if (v63)
  {
    v38 = v62;
    v39 = *(v62 + 16);
    v39(v15, v64, v5, v36);
    v40 = v61;
    (v39)(v61, v15, v5);
    v41 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20);
    v74 = v3;
    v75 = v41;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v40, v22, v5);
    v42 = *(v38 + 8);
    v42(v40, v5);
    v43 = OUTLINED_FUNCTION_63_0();
    (v42)(v43);
    v44 = v37;
  }

  else
  {
    v63 = &v58 - v35;
    if ((v58 - 1) > 2)
    {
      v45 = MEMORY[0x1E69816E0];
    }

    else
    {
      v45 = qword_1E8737E88[v58 - 1];
    }

    v46 = v59;
    (*(v17 + 104))(v21, *v45, v59, v36);
    OUTLINED_FUNCTION_34();
    sub_1E4202D44();
    (*(v17 + 8))(v21, v46);
    v47 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20);
    v68 = v3;
    v69 = v47;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v48 = *(v24 + 16);
    v48(v0, v30, v22);
    v49 = *(v24 + 8);
    v50 = OUTLINED_FUNCTION_124();
    v49(v50);
    v48(v60, v0, v22);
    v44 = v63;
    v51 = OUTLINED_FUNCTION_124();
    sub_1E37B8D98(v51, v52);
    v53 = OUTLINED_FUNCTION_124();
    v49(v53);
    (v49)(v0, v22);
  }

  v54 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20);
  v72 = v3;
  v73 = v54;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v71 = v3;
  OUTLINED_FUNCTION_2_25();
  v55 = v66;
  swift_getWitnessTable();
  v56 = v65;
  OUTLINED_FUNCTION_59_1();
  v57();
  (*(v56 + 8))(v44, v55);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E39B9AD8@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v12 = a1;
        v10 = a2;
        v9 = a3;
        sub_1E38F08C4(v12);
        sub_1E38F08C4(v10);
        sub_1E38F08C4(v9);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF90);
        sub_1E39BC6B8();
        sub_1E39BC770();
        sub_1E4201F44();
        sub_1E39BCF80(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98);
        sub_1E39BC62C();
        sub_1E39BC828();
        sub_1E4201F44();

        sub_1E39BCFE4(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
      }

      else
      {
        v13 = a1;
        v11 = a2;
        sub_1E38F08C4(v13);
        sub_1E38F08C4(v11);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF90);
        sub_1E39BC6B8();
        sub_1E39BC770();
        sub_1E4201F44();
        sub_1E39BCF80(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98);
        sub_1E39BC62C();
        sub_1E39BC828();
        sub_1E4201F44();

        sub_1E39BCFE4(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
      }
    }

    else
    {
      v7 = a1;
      sub_1E38F08C4(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA0);
      sub_1E39BC8B4();
      sub_1E4201F44();
      sub_1E39BCEF8(v14, *(&v14 + 1), v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98);
      sub_1E39BC62C();
      sub_1E39BC828();
      sub_1E4201F44();

      sub_1E39BCF34(v14, *(&v14 + 1), v15);
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA0);
    sub_1E39BC8B4();
    sub_1E4201F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98);
    sub_1E39BC62C();
    sub_1E39BC828();
    sub_1E4201F44();
  }

  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 33) = v17;
  return result;
}

void sub_1E39BA034()
{
  OUTLINED_FUNCTION_31_1();
  v132 = v0;
  v136 = v1;
  v3 = v2;
  v115 = v4;
  v120 = v5;
  v139 = v6;
  OUTLINED_FUNCTION_1_2();
  v124 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v123 = v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF8);
  OUTLINED_FUNCTION_13_10();
  v14 = sub_1E42013A4();
  v15 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v119 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v126 = v18;
  v140 = v14;
  v111 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v117 = v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF00);
  OUTLINED_FUNCTION_18_12();
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v110 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v114 = v28 - v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v113 = v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF08);
  OUTLINED_FUNCTION_13_10();
  v32 = sub_1E42013A4();
  v33 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v116 = v37;
  OUTLINED_FUNCTION_1_2();
  v112 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25_3();
  v118 = v44;
  sub_1E4201F54();
  OUTLINED_FUNCTION_1_2();
  v137 = v46;
  v138 = v45;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v141 = v49;
  if (v48)
  {
    v108 = v35;
    v122 = v32;
    v125 = v33;
    if (v120)
    {
      if (v115)
      {
        v129 = v48;
        v127 = v120;
        v121 = v115;
        v50 = v136;
        v143[0] = sub_1E38F08C4(v129);
        v142[0] = sub_1E38F08C4(v127);
        sub_1E38F08C4(v121);
        sub_1E4202FD4();

        OUTLINED_FUNCTION_5_81();
        sub_1E374AD40(v51, v52);
        swift_getWitnessTable();
        v53 = *(v112 + 16);
        v54 = OUTLINED_FUNCTION_134_0();
        v53(v54);
        v133 = *(v112 + 8);
        v133(v42, v122);
        (v53)(v42, v118, v122);
        OUTLINED_FUNCTION_4_83();
        sub_1E374AD40(v55, v56);
        swift_getWitnessTable();
        sub_1E37B8D98(v42, v122);
        OUTLINED_FUNCTION_12_60();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_85();
        sub_1E374AD40(v57, v58);
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_55_17();
        sub_1E37B8D98(v116, v33);

        (*(v108 + 8))(v116, v33);
        v133(v42, v122);
        v133(v118, v122);
      }

      else
      {
        v131 = v48;
        v128 = v120;
        v143[0] = sub_1E38F08C4(v131);
        v142[0] = sub_1E38F08C4(v128);
        MEMORY[0x1E690D940](v143, v142, v3, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v136, MEMORY[0x1E6981568], MEMORY[0x1E6981568]);

        OUTLINED_FUNCTION_4_83();
        sub_1E374AD40(v85, v86);
        OUTLINED_FUNCTION_4_1();
        swift_getWitnessTable();
        v50 = v136;
        v87 = *(v110 + 16);
        (v87)(v113, v114, v25);
        v135 = *(v110 + 8);
        v135(v114, v25);
        OUTLINED_FUNCTION_82();
        v87();
        OUTLINED_FUNCTION_5_81();
        sub_1E374AD40(v88, v89);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_82();
        sub_1E37B8E90(v90, v91, v92);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_85();
        sub_1E374AD40(v93, v94);
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_55_17();
        sub_1E37B8D98(v116, v33);

        (*(v35 + 8))(v116, v33);
        v135(v114, v25);
        v135(v113, v25);
      }
    }

    else
    {
      v130 = v48;
      v143[0] = sub_1E38F08C4(v130);
      sub_1E4202FC4();

      OUTLINED_FUNCTION_3_85();
      v142[9] = v136;
      v142[10] = sub_1E374AD40(v74, v75);
      OUTLINED_FUNCTION_4_1();
      v50 = v136;
      WitnessTable = swift_getWitnessTable();
      v77 = *(v111 + 16);
      v78 = OUTLINED_FUNCTION_74();
      v77(v78);
      v134 = *(v111 + 8);
      v134(v22, v140);
      v79 = OUTLINED_FUNCTION_34();
      v77(v79);
      sub_1E37B8D98(v22, v140);
      OUTLINED_FUNCTION_5_81();
      v142[7] = v136;
      v142[8] = sub_1E374AD40(v80, v81);
      v82 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_83();
      v142[5] = v136;
      v142[6] = sub_1E374AD40(v83, v84);
      v142[3] = v82;
      v142[4] = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_50();
      swift_getWitnessTable();
      v142[1] = WitnessTable;
      v142[2] = v136;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_55_17();
      sub_1E37B8E90(v126, v125, v15);

      (*(v119 + 8))(v126, v15);
      v134(v22, v140);
      v134(v117, v140);
    }
  }

  else
  {
    v59 = *(v124 + 16);
    v59(v123, v132, v3);
    v109 = v11;
    v59(v11, v123, v3);
    OUTLINED_FUNCTION_3_85();
    v143[21] = v136;
    v143[22] = sub_1E374AD40(v60, v61);
    swift_getWitnessTable();
    v62 = OUTLINED_FUNCTION_124();
    v64 = v63;
    sub_1E37B8E90(v62, v65, v3);
    OUTLINED_FUNCTION_5_81();
    v143[19] = v136;
    v143[20] = sub_1E374AD40(v66, v67);
    v68 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_83();
    v143[17] = v136;
    v143[18] = sub_1E374AD40(v69, v70);
    OUTLINED_FUNCTION_34();
    v143[15] = v68;
    v143[16] = swift_getWitnessTable();
    OUTLINED_FUNCTION_12_60();
    swift_getWitnessTable();
    v143[13] = v64;
    v143[14] = v136;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_55_17();
    sub_1E37B8E90(v126, v33, v15);
    v71 = OUTLINED_FUNCTION_57();
    v72(v71);
    v73 = *(v124 + 8);
    v73(v109, v3);
    v73(v123, v3);
    v50 = v136;
  }

  OUTLINED_FUNCTION_5_81();
  v97 = sub_1E374AD40(v95, v96);
  v143[11] = v50;
  v143[12] = v97;
  OUTLINED_FUNCTION_21_44();
  v98 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_83();
  v101 = sub_1E374AD40(v99, v100);
  v143[9] = v50;
  v143[10] = v101;
  OUTLINED_FUNCTION_63_0();
  v102 = swift_getWitnessTable();
  v143[7] = v98;
  v143[8] = v102;
  OUTLINED_FUNCTION_12_60();
  v103 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_85();
  v106 = sub_1E374AD40(v104, v105);
  v143[5] = v50;
  v143[6] = v106;
  v143[3] = swift_getWitnessTable();
  v143[4] = v50;
  v107 = swift_getWitnessTable();
  v143[1] = v103;
  v143[2] = v107;
  swift_getWitnessTable();
  (*(v137 + 16))(v139, v141, v138);
  (*(v137 + 8))(v141, v138);
  OUTLINED_FUNCTION_25_2();
}

uint64_t get_enum_tag_for_layout_string_8VideosUI20AsyncImageLoadResultVIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E39BAED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39BAF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E39BAF8C()
{
  result = qword_1EE2896D8;
  if (!qword_1EE2896D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF10);
    sub_1E39BB044();
    sub_1E374AD40(&qword_1EE289260, &qword_1ECF2FF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896D8);
  }

  return result;
}

unint64_t sub_1E39BB044()
{
  result = qword_1EE289BC8;
  if (!qword_1EE289BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF18);
    sub_1E39BB0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BC8);
  }

  return result;
}

unint64_t sub_1E39BB0D0()
{
  result = qword_1EE2A0C90[0];
  if (!qword_1EE2A0C90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0C90);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyAA08ModifiedE0VyxAA16_OverlayModifierVyAA06_ShapeC0VyAA08_StrokedI0VyAA9RectangleV6_InsetVGAA5ColorVGGGxGAaBHPAvaBHPxAaBHD1__AuA0cH0HPyHCHC_xAaBHD1_HCTm()
{
  OUTLINED_FUNCTION_56_16();
  v2 = OUTLINED_FUNCTION_40_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E4201F54();
  v3 = OUTLINED_FUNCTION_63_0();
  sub_1E374AD40(v3, v4);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA19_BackgroundModifierVyAA5ColorVSgGGAaBHPxAaBHD1__AjA0cG0HPyHCHCTm()
{
  OUTLINED_FUNCTION_56_16();
  v2 = OUTLINED_FUNCTION_40_2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v3 = OUTLINED_FUNCTION_63_0();
  sub_1E374AD40(v3, v4);
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

void sub_1E39BB25C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E39BB660(319, &qword_1EE28A3B8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int16 *sub_1E39BB310(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_1E39BB468(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    v16 = OUTLINED_FUNCTION_32_0();
    bzero(v16, v17);
    if (v10 <= 3)
    {
      v18 = HIWORD(v15) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1E39BB660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E39BB6F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v55 = v4;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E697F578];
  v7 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v52 = v12;
  v51 = v5;
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_12();
  sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v50 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v57 = v17;
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19_7();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v27;
  v54 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v56 = v29;
  if (*(v0 + *(v3 + 40)) == 1)
  {
    sub_1E39BBC94();
    OUTLINED_FUNCTION_3_2();
    v52 = v3;
    v30 = v57;
    WitnessTable = swift_getWitnessTable();
    sub_1E4202D84();
    (*(v50 + 8))(v16, v30);
    v60 = WitnessTable;
    v61 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_14_55();
    v51 = swift_getWitnessTable();
    v32 = *(v20 + 16);
    v32(v6, v24, v18);
    v33 = *(v20 + 8);
    v34 = OUTLINED_FUNCTION_105_3();
    v33(v34);
    v32(v24, v6, v18);
    v35 = *(v52 + 24);
    v58 = v35;
    v59 = MEMORY[0x1E697F568];
    swift_getWitnessTable();
    v36 = OUTLINED_FUNCTION_105_3();
    sub_1E37B8D98(v36, v37);
    v38 = OUTLINED_FUNCTION_105_3();
    v33(v38);
    (v33)(v6, v18);
  }

  else
  {
    v35 = *(v3 + 24);
    sub_1E4202D84();
    v70 = v35;
    v71 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_14_55();
    v51 = swift_getWitnessTable();
    v39 = *(v9 + 16);
    (v39)(v52, v1, v7);
    v40 = *(v9 + 8);
    v40(v1, v7);
    OUTLINED_FUNCTION_82();
    v39();
    OUTLINED_FUNCTION_3_2();
    v68 = swift_getWitnessTable();
    v69 = MEMORY[0x1E697F568];
    swift_getWitnessTable();
    sub_1E37B8E90(v1, v18, v7);
    v40(v1, v7);
    v41 = OUTLINED_FUNCTION_57();
    (v40)(v41);
  }

  OUTLINED_FUNCTION_3_2();
  v66 = swift_getWitnessTable();
  v42 = MEMORY[0x1E697F568];
  v67 = MEMORY[0x1E697F568];
  OUTLINED_FUNCTION_14_55();
  v43 = swift_getWitnessTable();
  v64 = v35;
  v65 = v42;
  v44 = swift_getWitnessTable();
  v62 = v43;
  v63 = v44;
  OUTLINED_FUNCTION_2_25();
  v45 = v54;
  swift_getWitnessTable();
  v46 = v53;
  v47 = v56;
  OUTLINED_FUNCTION_59_1();
  v48();
  (*(v46 + 8))(v47, v45);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39BBC94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_20_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  v7 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = *(v3 + 24);
  v18[2] = v6;
  v18[3] = v14;
  v19 = v0;
  sub_1E4201B84();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v16 = OUTLINED_FUNCTION_48_9();
  v15(v16);
  v17 = *(v9 + 8);
  v17(v1, v7);
  (v15)(v5, v13, v7);
  v17(v13, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39BBE6C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_20_49();
  swift_getWitnessTable();
  v2 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_7();
  sub_1E4201D44();
  sub_1E4203A34();
  swift_getWitnessTable();
  v10 = *(v4 + 16);
  v10(v0, v8, v2);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_74();
  v11(v12);
  v18 = 0;
  v19 = 0;
  v20[0] = &v18;
  v13 = OUTLINED_FUNCTION_75();
  (v10)(v13);
  v15[2] = v1;
  v16 = 0;
  v17 = 0;
  v20[1] = v8;
  v20[2] = &v16;
  v15[0] = v1;
  v15[1] = v2;
  sub_1E3910324(v20, 3, v15);
  (v11)(v0, v2);
  v14 = OUTLINED_FUNCTION_74();
  v11(v14);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39BC07C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_7();
  v11 = *(v5 + 16);
  v11(v2);
  v17 = 0;
  v18 = 0;
  v19[0] = &v17;
  (v11)(v9, v2, a2);
  v15 = 0;
  v16 = 0;
  v19[1] = v9;
  v19[2] = &v15;
  v14[0] = MEMORY[0x1E6981840];
  v14[1] = a2;
  v14[2] = MEMORY[0x1E6981840];
  sub_1E3910324(v19, 3, v14);
  v12 = *(v5 + 8);
  v12(v2, a2);
  return (v12)(v9, a2);
}

uint64_t sub_1E39BC210()
{
  result = sub_1E4205CB4();
  qword_1EE28B848 = result;
  return result;
}

unint64_t sub_1E39BC24C()
{
  result = qword_1EE289B28;
  if (!qword_1EE289B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF40);
    sub_1E39BC2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B28);
  }

  return result;
}

unint64_t sub_1E39BC2D8()
{
  result = qword_1EE288F30;
  if (!qword_1EE288F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF58);
    sub_1E39BC364();
    sub_1E39BC96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F30);
  }

  return result;
}

unint64_t sub_1E39BC364()
{
  result = qword_1EE289A08;
  if (!qword_1EE289A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68);
    sub_1E39BC45C();
    swift_getOpaqueTypeConformance2();
    sub_1E39BCC78(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A08);
  }

  return result;
}

unint64_t sub_1E39BC45C()
{
  result = qword_1EE288F10;
  if (!qword_1EE288F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68);
    sub_1E39BC4E8();
    sub_1E39BC5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F10);
  }

  return result;
}

unint64_t sub_1E39BC4E8()
{
  result = qword_1EE289820;
  if (!qword_1EE289820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF70);
    sub_1E374AD40(&qword_1EE288880, &qword_1ECF2A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289820);
  }

  return result;
}

unint64_t sub_1E39BC5A0()
{
  result = qword_1EE288BC8;
  if (!qword_1EE288BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF78);
    sub_1E39BC62C();
    sub_1E39BC828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BC8);
  }

  return result;
}

unint64_t sub_1E39BC62C()
{
  result = qword_1EE288F00;
  if (!qword_1EE288F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF80);
    sub_1E39BC6B8();
    sub_1E39BC770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F00);
  }

  return result;
}

unint64_t sub_1E39BC6B8()
{
  result = qword_1EE289808;
  if (!qword_1EE289808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF88);
    sub_1E374AD40(&qword_1EE288840, &qword_1ECF2FF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289808);
  }

  return result;
}

unint64_t sub_1E39BC770()
{
  result = qword_1EE289810;
  if (!qword_1EE289810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF90);
    sub_1E374AD40(&qword_1EE288848, &qword_1ECF2FF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289810);
  }

  return result;
}

unint64_t sub_1E39BC828()
{
  result = qword_1EE288F08;
  if (!qword_1EE288F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF98);
    sub_1E39BC8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F08);
  }

  return result;
}

unint64_t sub_1E39BC8B4()
{
  result = qword_1EE289818;
  if (!qword_1EE289818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFA0);
    sub_1E374AD40(&qword_1EE288870, &qword_1ECF2FEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289818);
  }

  return result;
}

unint64_t sub_1E39BC96C()
{
  result = qword_1EE289478;
  if (!qword_1EE289478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFA8);
    sub_1E39BCA24();
    sub_1E374AD40(&qword_1EE289210, &unk_1ECF2FF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289478);
  }

  return result;
}

unint64_t sub_1E39BCA24()
{
  result = qword_1EE289568;
  if (!qword_1EE289568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFB0);
    sub_1E37AE314();
    sub_1E39BCC78(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289568);
  }

  return result;
}

uint64_t sub_1E39BCAE0(uint64_t a1, const void *a2)
{
  memcpy(v5, a2, 0x5BuLL);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v2, v3);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A4554(v5);
}

unint64_t sub_1E39BCB80()
{
  result = qword_1EE274490;
  if (!qword_1EE274490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE274490);
  }

  return result;
}

uint64_t sub_1E39BCBD4()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v0, v1);
  OUTLINED_FUNCTION_34();
  sub_1E4200BC4();
  sub_1E41A655C();
}

uint64_t sub_1E39BCC78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E39BCCC0()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v0, v1);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A655C();
}

id *sub_1E39BCD5C(id *result, double a2, __n128 a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *result;
  if (*(v3 + 24) != 1)
  {
    v8 = *(v3 + 16);
    if ((*(v3 + 40) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (v6)
    {
      result = [v6 size];
    }

    else
    {
      a3.n128_u64[0] = 0;
    }

    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = 0.0;
    a3.n128_u64[0] = 0;
    if (*(v3 + 40))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  result = [*result size];
  v8 = v7;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_9:
  a3.n128_u64[0] = v4;
LABEL_11:
  v9 = *(v3 + 184);
  if (v9)
  {
    return v9(v6, v8, a3);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  sub_1E3264CE0();

  if (*(v0 + 152))
  {
  }

  OUTLINED_FUNCTION_47_20();

  return swift_deallocObject();
}

uint64_t sub_1E39BCE70()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v0, v1);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A447C();
}

uint64_t sub_1E39BCEF8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_1E39BCF34(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E39BCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_1E39BCFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E39BD054(uint64_t a1)
{
  v2 = type metadata accessor for ImageInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E39BD0B0()
{
  result = qword_1EE286A78;
  if (!qword_1EE286A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE286A78);
  }

  return result;
}

uint64_t sub_1E39BD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1E328438C(*(a3 + 56) + 32 * v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v6 = OUTLINED_FUNCTION_8_17();
  return OUTLINED_FUNCTION_31_32(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_1E39BD1A0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1E39C3974(v5, a2, v3, v4);
}

BOOL sub_1E39BD1F0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  sub_1E32752B0(&qword_1EE23B610, &qword_1ECF2A770);
  v3 = sub_1E4149048(v2);

  return (v3 & 1) == 0;
}

uint64_t sub_1E39BD2D0()
{
  if (!*(v0 + 40))
  {
    sub_1E384EE08(*(v0 + 98));
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD31C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1E39BD364()
{
  OUTLINED_FUNCTION_15_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD3A0()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_1E39BD42C()
{
  OUTLINED_FUNCTION_15_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD468()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1E39BD52C()
{
  OUTLINED_FUNCTION_15_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD568()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_1E39BD620(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1E39BD6A0()
{
  OUTLINED_FUNCTION_8();
  v14 = (*(v1 + 368))();
  v15 = v2;
  MEMORY[0x1E69109E0](23328, 0xE200000000000000);
  if (!v0[3])
  {
    sub_1E41E1364(v0);
    OUTLINED_FUNCTION_9_9();
  }

  v3 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v3);

  v6 = v14;
  v5 = v15;
  v7 = (*(*v0 + 264))(v4);
  v9 = v8;
  if (v8)
  {
    sub_1E37614CC();
    sub_1E38D2484(sub_1E39BD838, MEMORY[0x1E69E6158], &v14);

    v7 = v14;
    v9 = v15;
  }

  v10 = sub_1E414A784(v6, v5, v7, v9);
  v12 = v11;

  v14 = v10;
  v15 = v12;

  MEMORY[0x1E69109E0](93, 0xE100000000000000);

  return v14;
}

uint64_t sub_1E39BD838@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a2 = 0x3A677562656420;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t ViewModel.description.getter()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 672))();
  v1 = sub_1E4205C74();

  return v1;
}

uint64_t sub_1E39BD938()
{
  result = swift_beginAccess();
  if (*(v0 + 136))
  {
    sub_1E327F454(v0 + 112, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v2 = OUTLINED_FUNCTION_3_86();
    v3(v2);
    sub_1E325F748(&v4, &unk_1ECF296E0);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1E39BDA18(uint64_t a1)
{
  OUTLINED_FUNCTION_11_3();
  sub_1E39C3A70(a1, v1 + 112);
  swift_endAccess();
  sub_1E39BD938();
  return sub_1E325F748(a1, &qword_1ECF2FFF0);
}

uint64_t (*sub_1E39BDA7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_66();
  return sub_1E39BDAC4;
}

uint64_t sub_1E39BDAC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E39BD938();
  }

  return result;
}

uint64_t sub_1E39BDB2C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 152) = a1;
}

uint64_t ViewModel.children.getter()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v15);
  if (!v16)
  {
    sub_1E325F748(v15, &qword_1ECF2FFF0);
LABEL_5:
    OUTLINED_FUNCTION_111();
    (*(v11 + 720))();
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v12 + 96))();

    return v6;
  }

  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_5_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_1_106(v3, v14);
  v5(v4);
  sub_1E325F748(v15, &qword_1ECF2FFF0);
  v6 = v0;
  v7 = OUTLINED_FUNCTION_34();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_51();
  v10(v9);
  if (!v0)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t ViewModel.children.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 720))();
  OUTLINED_FUNCTION_30();
  (*(v3 + 104))(a1);

  OUTLINED_FUNCTION_9_2();
  (*(v4 + 416))(v10);
  if (!v10[3])
  {
    return sub_1E325F748(v10, &qword_1ECF2FFF0);
  }

  sub_1E327F454(v10, v9);
  sub_1E325F748(v10, &qword_1ECF2FFF0);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = OUTLINED_FUNCTION_3_86();
  v6(v5);
  sub_1E325F748(&v8, &unk_1ECF296E0);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t (*ViewModel.children.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ViewModel.children.getter();
  return sub_1E39BDEB0;
}

uint64_t sub_1E39BDEC8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v15);
  if (!v16)
  {
    sub_1E325F748(v15, &qword_1ECF2FFF0);
LABEL_5:
    OUTLINED_FUNCTION_111();
    (*(v11 + 720))();
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v12 + 120))();

    return v6;
  }

  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_5_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_1_106(v3, v14);
  v5(v4);
  sub_1E325F748(v15, &qword_1ECF2FFF0);
  v6 = v0;
  v7 = OUTLINED_FUNCTION_34();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_51();
  v10(v9);
  if (!v0)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_1E39BE07C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 720))();
  OUTLINED_FUNCTION_30();
  (*(v3 + 128))(a1);

  OUTLINED_FUNCTION_9_2();
  (*(v4 + 416))(v10);
  if (!v10[3])
  {
    return sub_1E325F748(v10, &qword_1ECF2FFF0);
  }

  sub_1E327F454(v10, v9);
  sub_1E325F748(v10, &qword_1ECF2FFF0);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = OUTLINED_FUNCTION_3_86();
  v6(v5);
  sub_1E325F748(&v8, &unk_1ECF296E0);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t (*sub_1E39BE1C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E39BDEC8();
  return sub_1E39BE210;
}

uint64_t sub_1E39BE228(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_1E39BE2E8(uint64_t a1)
{
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(a1, v1 + 160);
  return swift_endAccess();
}

uint64_t sub_1E39BE330()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  v15 = &type metadata for ViewModelKeys;
  v16 = &off_1F5D7BCA8;
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v12, 11);
  OUTLINED_FUNCTION_52_17(v9);

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_41_25())
    {
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1E325F748(v17, &unk_1ECF296E0);
    return 0;
  }

  return v10;
}

id sub_1E39BE41C()
{
  result = sub_1E39BE4D0();
  if (result)
  {
    sub_1E3744600(result);

    OUTLINED_FUNCTION_8();
    if ((*(v1 + 648))())
    {
      OUTLINED_FUNCTION_15_0();
      swift_unknownObjectWeakLoadStrong();
      OUTLINED_FUNCTION_38();
    }

    v2 = objc_allocWithZone(VUIRouterDataSource);
    v3 = OUTLINED_FUNCTION_32_0();
    return sub_1E37FB770(v3, v4);
  }

  return result;
}

uint64_t sub_1E39BE4D0()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v14);
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_5_82();
    MEMORY[0x1EEE9AC00](v2);
    v4 = OUTLINED_FUNCTION_1_106(v3, v13[0]);
    v5(v4);
    sub_1E325F748(v14, &qword_1ECF2FFF0);
    v6 = v0;
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    v9 = OUTLINED_FUNCTION_19_51();
    v10(v9);
    if (v0)
    {
      return v6;
    }
  }

  else
  {
    sub_1E325F748(v14, &qword_1ECF2FFF0);
  }

  OUTLINED_FUNCTION_111();
  (*(v11 + 672))();
  v15 = &type metadata for ViewModelKeys;
  v16 = &off_1F5D7BCA8;
  LOBYTE(v14[0]) = 15;
  OUTLINED_FUNCTION_52_17(v14);

  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);

    return v17;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1E325F748(v13, &unk_1ECF296E0);

    return 0;
  }
}

uint64_t sub_1E39BE738(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 192) = a1;
}

uint64_t sub_1E39BE7EC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 200) = a1;
}

uint64_t sub_1E39BE8A0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 208) = a1;
}

uint64_t sub_1E39BE954()
{
  OUTLINED_FUNCTION_14_0();
  swift_weakAssign();
}

void (*sub_1E39BE998(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E39BEA0C;
}

void sub_1E39BEA0C(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E39BEA8C()
{
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_111();
    if ((*(v0 + 624))())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v1 + 648))();
      OUTLINED_FUNCTION_38();
    }

    swift_weakAssign();
  }

  return swift_weakLoadStrong();
}

uint64_t sub_1E39BEB58()
{
  swift_weakAssign();
}

uint64_t (*sub_1E39BEB98(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E39BEA8C();
  return sub_1E39BEBE0;
}

uint64_t sub_1E39BEBE0()
{
  swift_weakAssign();
}

uint64_t sub_1E39BEC4C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 224) = a1;
}

uint64_t sub_1E39BED00(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 240) = a1;
}

uint64_t sub_1E39BED80(__int16 a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29_32();
  swift_allocObject();
  return sub_1E39BEDCC(a1, a2, a3);
}

uint64_t sub_1E39BEDCC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 48) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 1;
  *(v4 + 64) = 0u;
  *(v4 + 152) = 0u;
  v189 = v4 + 152;
  *(v4 + 200) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  swift_weakInit();
  swift_weakInit();
  *(v4 + 98) = a1;
  *(v4 + 224) = a2;
  OUTLINED_FUNCTION_3_0();
  v191 = a3;
  swift_weakAssign();
  type metadata accessor for ViewModel.ProtectedMembers();
  OUTLINED_FUNCTION_2_4();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v4 + 240) = v8;
  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  LOBYTE(v217) = 7;

  sub_1E3F9F164(&v217);
  if (*(&v215 + 1))
  {
    v9 = OUTLINED_FUNCTION_49_20();
    if (v9)
    {
      v10 = v220;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = *(&v220 + 1);
    }

    else
    {
      v11 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v217);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    sub_1E325F748(&v214, &unk_1ECF296E0);
    v10 = 0;
    v11 = 0;
  }

  *(v4 + 16) = v10;
  *(v4 + 24) = v11;
  LOBYTE(v214) = 11;
  OUTLINED_FUNCTION_111();
  v13 = (*(v12 + 776))(&v217, &v214, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&v218 + 1))
  {
    OUTLINED_FUNCTION_25_39(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v185, v186, v187, v188, v189, v191, v192, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v214;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = *(&v214 + 1);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v217, &unk_1ECF296E0);
    v21 = 0;
    v22 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v4 + 48) = v21;
  *(v4 + 56) = v22;

  OUTLINED_FUNCTION_9_2();
  (*(v23 + 816))();
  LOWORD(v217) = a1;
  LOWORD(v214) = 0;
  sub_1E3741534();
  if ((sub_1E4205E84() & 1) == 0)
  {
    *(&v218 + 1) = &type metadata for ViewModelKeys;
    *&v219 = &off_1F5D7BCA8;
    v24 = OUTLINED_FUNCTION_7_88(8);
    sub_1E3F9F164(v24);
    if (*(&v215 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_49_20();
      __swift_destroy_boxed_opaque_existential_1(&v217);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v217);
      sub_1E325F748(&v214, &unk_1ECF296E0);
    }

    v25 = OUTLINED_FUNCTION_32_0();
    v27 = sub_1E3F6AF24(v25, v26);

    OUTLINED_FUNCTION_3_0();
    *(v4 + 200) = v27;
  }

  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  v28 = OUTLINED_FUNCTION_7_88(9);
  sub_1E3F9F164(v28);
  if (*(&v215 + 1))
  {
    if (OUTLINED_FUNCTION_16_52())
    {
      v29 = v220;
      __swift_destroy_boxed_opaque_existential_1(&v217);
      OUTLINED_FUNCTION_3_0();
      *(v4 + 80) = v29;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v217);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    sub_1E325F748(&v214, &unk_1ECF296E0);
  }

  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  v30 = OUTLINED_FUNCTION_7_88(10);
  sub_1E3F9F164(v30);

  if (!*(&v215 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    sub_1E325F748(&v214, &unk_1ECF296E0);
LABEL_33:
    v31 = 1;
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_16_52() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    goto LABEL_33;
  }

  v31 = v220;
  __swift_destroy_boxed_opaque_existential_1(&v217);
LABEL_34:
  v32 = OUTLINED_FUNCTION_3_0();
  *(v4 + 96) = v31;
  v33 = (*v4 + 672);
  v34 = *v33;
  v35 = *((*v33)(v32) + 16);

  v37 = MEMORY[0x1E69E7CC0];
  if (!v35)
  {
    goto LABEL_99;
  }

  v34(v36);
  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  LOBYTE(v217) = 13;
  OUTLINED_FUNCTION_33_30(&v217);

  __swift_destroy_boxed_opaque_existential_1(&v217);
  sub_1E379539C(&v210, &v217, &unk_1ECF296E0);
  if (!*(&v218 + 1))
  {
    goto LABEL_65;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_25_39(v38, v39, v40, v41, v42, v43, v44, v45, v185, v186, v187, v188, v189, v191, v192, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  v46 = sub_1E379539C(&v210, &v217, &unk_1ECF296E0);
  if (!*(&v218 + 1))
  {
LABEL_65:
    sub_1E325F748(&v217, &unk_1ECF296E0);
LABEL_66:
    sub_1E379539C(&v210, &v217, &unk_1ECF296E0);
    if (*(&v218 + 1))
    {
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
      OUTLINED_FUNCTION_25_39(v83, v84, v85, v83, v86, v87, v88, v89, v185, v186, v187, v33, v189, v191, v192, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
      v90 = OUTLINED_FUNCTION_32_13();
      if (v90)
      {
        v186 = v34;
        v91 = v37;
        v92 = 0;
        v93 = v214;
        v222 = v91;
        v94 = *(v214 + 16);
        v95 = v91;
        while (1)
        {
          if (v94 == v92)
          {

            OUTLINED_FUNCTION_111();
            v113 = v95;
            v114 = (*(v112 + 720))();
            *&v217 = v113;
            v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            OUTLINED_FUNCTION_46();
            v118 = sub_1E32752B0(v116, v117);
            sub_1E38D2480(&v214, v115, v118);

            (*(*v114 + 104))(v214);

            v37 = MEMORY[0x1E69E7CC0];
            v186(v119);
            goto LABEL_93;
          }

          if (v92 >= *(v93 + 16))
          {
            goto LABEL_156;
          }

          sub_1E39C36BC(v96, &v214);
          if (*(&v214 + 1))
          {
            v217 = v214;
            sub_1E329504C(&v215, &v218);
            v97 = v217;
            sub_1E329504C(&v218, &v220);
            if (sub_1E39C3648(&v220))
            {

              if (sub_1E38506C8() != 263)
              {
                v99 = sub_1E3A7CD30(v97, *(&v97 + 1), &v220, v4);

LABEL_81:
                __swift_destroy_boxed_opaque_existential_1(&v220);
                goto LABEL_82;
              }

              v98 = sub_1E41240F4();
              if (v98 != 31)
              {
                v99 = sub_1E3A7C9B4(v98, &v220);
                goto LABEL_81;
              }

              __swift_destroy_boxed_opaque_existential_1(&v220);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(&v220);
            }
          }

          else
          {
            sub_1E325F748(&v214, &qword_1ECF30008);
          }

          v99 = 0;
LABEL_82:

          ++v92;
          if (v99)
          {
            MEMORY[0x1E6910BF0](v100);
            if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v95 = v222;
          }
        }
      }
    }

    else
    {
      v90 = sub_1E325F748(&v217, &unk_1ECF296E0);
    }

    v34(v90);
    *(&v218 + 1) = &type metadata for ViewModelKeys;
    *&v219 = &off_1F5D7BCA8;
    LOBYTE(v217) = 14;
    OUTLINED_FUNCTION_33_30(&v217);

    if (v221)
    {
      sub_1E329504C(&v220, &v214);
      v101 = __swift_destroy_boxed_opaque_existential_1(&v217);
      v109 = OUTLINED_FUNCTION_25_39(v101, v102, v103, v104, v105, v106, v107, v108, v185, v186, v187, v188, v189, v191, v192, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
      sub_1E329504C(v109, v110);
      OUTLINED_FUNCTION_11_3();
      sub_1E37EB5D0(&v217, v4 + 160);
      v111 = swift_endAccess();
    }

    else
    {
      sub_1E325F748(&v220, &unk_1ECF296E0);
      v111 = __swift_destroy_boxed_opaque_existential_1(&v217);
    }

    goto LABEL_92;
  }

  OUTLINED_FUNCTION_25_39(v46, v47, v48, v49, v50, v51, v52, v53, v185, v186, v187, v188, v189, v191, v192, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  v188 = v33;
  v54 = 0;
  v55 = 0;
  v56 = v214 + 64;
  v193 = v214;
  OUTLINED_FUNCTION_4_4();
  v59 = v58 & v57;
  v61 = (v60 + 63) >> 6;
  v186 = v34;
  while (2)
  {
    if (v59)
    {
      v62 = v55;
      goto LABEL_46;
    }

    do
    {
      v62 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (v62 >= v61)
      {
        v59 = 0;
        v215 = 0u;
        v216 = 0u;
        v214 = 0u;
        goto LABEL_47;
      }

      v59 = *(v56 + 8 * v62);
      ++v55;
    }

    while (!v59);
    v55 = v62;
LABEL_46:
    v63 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v64 = v63 | (v62 << 6);
    v65 = (*(v193 + 48) + 16 * v64);
    v67 = *v65;
    v66 = v65[1];
    sub_1E328438C(*(v193 + 56) + 32 * v64, &v220);
    *&v214 = v67;
    *(&v214 + 1) = v66;
    sub_1E329504C(&v220, &v215);

LABEL_47:
    v217 = v214;
    v218 = v215;
    v219 = v216;
    v68 = *(&v214 + 1);
    if (*(&v214 + 1))
    {
      v69 = v217;
      sub_1E329504C(&v218, &v214);
      if (!sub_1E39C3648(&v214) || (, v70 = sub_1E38506C8(), v70 == 263))
      {
        __swift_destroy_boxed_opaque_existential_1(&v214);

        continue;
      }

      v71 = v70;
      v72 = sub_1E3A7CD30(v69, v68, &v214, v4);

      if (!v72)
      {
        __swift_destroy_boxed_opaque_existential_1(&v214);
        continue;
      }

      HIDWORD(v187) = v71;
      if (!v54)
      {
        type metadata accessor for ViewModel();
        sub_1E37414E0();
        v54 = sub_1E4205CB4();
      }

      v185 = v72;

      swift_isUniquelyReferenced_nonNull_native();
      *&v220 = v54;
      v73 = sub_1E3740AE8(v71);
      if (!__OFADD__(v54[2], (v74 & 1) == 0))
      {
        v75 = v73;
        v76 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
        v77 = sub_1E4207644();
        v54 = v220;
        if (v77)
        {
          v78 = sub_1E3740AE8(v71);
          if ((v76 & 1) == (v79 & 1))
          {
            v75 = v78;
            if ((v76 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_63:
            *(v54[7] + 8 * v75) = v185;

            __swift_destroy_boxed_opaque_existential_1(&v214);
LABEL_64:
            v34 = v186;
            continue;
          }

LABEL_161:
          result = sub_1E4207A74();
          __break(1u);
          return result;
        }

        if (v76)
        {
          goto LABEL_63;
        }

LABEL_58:
        v54[(v75 >> 6) + 8] |= 1 << v75;
        *(v54[6] + 2 * v75) = v71;
        *(v54[7] + 8 * v75) = v185;

        __swift_destroy_boxed_opaque_existential_1(&v214);
        v80 = v54[2];
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (!v81)
        {
          v54[2] = v82;
          goto LABEL_64;
        }

LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    break;
  }

  OUTLINED_FUNCTION_111();
  (*(v120 + 720))();
  OUTLINED_FUNCTION_30();
  v122 = *(v121 + 128);

  v122(v123);

  v37 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v34(v111);
LABEL_93:
  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  v124 = OUTLINED_FUNCTION_7_88(20);
  OUTLINED_FUNCTION_33_30(v124);

  if (*(&v215 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_16_52())
    {
      v125 = v220;
      __swift_destroy_boxed_opaque_existential_1(&v217);
      OUTLINED_FUNCTION_111();
      (*(v126 + 560))(v125);
      v127 = &unk_1ECF296E0;
      v128 = &v210;
      goto LABEL_97;
    }

    sub_1E325F748(&v210, &unk_1ECF296E0);
    __swift_destroy_boxed_opaque_existential_1(&v217);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F748(v129, v130);
    __swift_destroy_boxed_opaque_existential_1(&v217);
    OUTLINED_FUNCTION_82();
LABEL_97:
    sub_1E325F748(v128, v127);
  }

LABEL_99:
  OUTLINED_FUNCTION_111();
  v131 += 84;
  v132 = *v131;
  v133 = *((*v131)() + 16);

  if (!v133)
  {
    goto LABEL_153;
  }

  (v132)(v134);
  *(&v218 + 1) = &type metadata for ViewModelKeys;
  *&v219 = &off_1F5D7BCA8;
  v135 = OUTLINED_FUNCTION_7_88(21);
  OUTLINED_FUNCTION_33_30(v135);

  if (!*(&v215 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    sub_1E325F748(&v214, &unk_1ECF296E0);
    goto LABEL_153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((OUTLINED_FUNCTION_16_52() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v217);
    goto LABEL_153;
  }

  v136 = v220;
  __swift_destroy_boxed_opaque_existential_1(&v217);
  v137 = 0;
  v138 = v37;
  v210 = v37;
  v139 = *(v136 + 16);
  while (2)
  {
    if (v139 != v137)
    {
      if (v137 >= *(v136 + 16))
      {
        goto LABEL_155;
      }

      sub_1E39C36BC(v140, &v214);
      if (*(&v214 + 1))
      {
        v217 = v214;
        sub_1E329504C(&v215, &v218);
        v141 = v217;
        sub_1E329504C(&v218, &v220);
        if (sub_1E39C3648(&v220))
        {

          if (sub_1E38506C8() == 263)
          {

            __swift_destroy_boxed_opaque_existential_1(&v220);
            goto LABEL_111;
          }

          v142 = sub_1E3A7CD30(v141, *(&v141 + 1), &v220, v4);

          __swift_destroy_boxed_opaque_existential_1(&v220);
LABEL_112:

          ++v137;
          if (v142)
          {
            MEMORY[0x1E6910BF0](v143);
            if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v138 = v210;
          }

          continue;
        }

        __swift_destroy_boxed_opaque_existential_1(&v220);
      }

      else
      {
        sub_1E325F748(&v214, &qword_1ECF30008);
      }

LABEL_111:
      v142 = 0;
      goto LABEL_112;
    }

    break;
  }

  OUTLINED_FUNCTION_3_0();
  *(v4 + 152) = v138;

  OUTLINED_FUNCTION_9_2();
  v145 = (*(v144 + 440))();
  if (!v145)
  {
    goto LABEL_153;
  }

  v146 = v145;
  v147 = sub_1E32AE9B0(v145);
  v148 = 0;
  v194 = v146 & 0xC000000000000001;
  v149 = v146 & 0xFFFFFFFFFFFFFF8;
  v190 = v146 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v147 != v148)
    {
      if (v194)
      {
        v150 = MEMORY[0x1E6911E60](v148, v146);
      }

      else
      {
        if (v148 >= *(v149 + 16))
        {
          goto LABEL_158;
        }

        v150 = *(v146 + 8 * v148 + 32);
      }

      if (__OFADD__(v148, 1))
      {
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_111();
      v152 = (*(v151 + 624))();
      if (v152)
      {
        OUTLINED_FUNCTION_26_0();
        v155 = v154;
        (*(v153 + 392))();
        OUTLINED_FUNCTION_38();

        if (v155)
        {
          OUTLINED_FUNCTION_8();
          v157 = (*(v156 + 1624))(*(v4 + 98), v4);

          if (v157)
          {
            (*(*v150 + 672))(v152);
            *(&v218 + 1) = &type metadata for ViewModelKeys;
            *&v219 = &off_1F5D7BCA8;
            v158 = OUTLINED_FUNCTION_7_88(12);
            OUTLINED_FUNCTION_33_30(v158);

            if (*(&v215 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              if (OUTLINED_FUNCTION_32_13())
              {
                v159 = v222;
                v160 = __swift_destroy_boxed_opaque_existential_1(&v217);
                if (*(v159 + 16))
                {
                  v161 = v159;
                  v162 = (*v150 + 392);
                  v163 = *v162;
                  v164 = (*v162)(v160);
                  if (v164)
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v165 + 1648))(v157);
                  }

                  v166 = v163(v164);
                  if (!v166)
                  {
                    [v157 copyWithZone_];
                    sub_1E4207264();
                    swift_unknownObjectRelease();
                    v167 = type metadata accessor for ViewLayout();
                    OUTLINED_FUNCTION_25_39(v167, v168, v169, v170, v171, v172, v173, v174, v185, v186, v187, v188, v190, v191, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
                    if (swift_dynamicCast())
                    {
                      v175 = v214;
                      goto LABEL_142;
                    }

                    v166 = sub_1E3C2F968();
                  }

                  v175 = v166;
LABEL_142:

                  v157 = v175;
                  OUTLINED_FUNCTION_8();
                  v177 = *(v176 + 1616);

                  v177(v161);

                  v149 = v190;
                }

                else
                {
                }
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(&v217);
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(&v217);
              sub_1E325F748(&v214, &unk_1ECF296E0);
            }

            OUTLINED_FUNCTION_3_0();
            v150[13] = v157;
          }
        }
      }

      v178 = (*(*v150 + 392))(v152);
      if (v178)
      {
        v179 = v178;
        OUTLINED_FUNCTION_111();
        v180 += 49;
        v181 = *v180;
        v182 = (*v180)();
        if (!v182 || (v183 = v182, , v179 != v183))
        {
          if (v181())
          {
            sub_1E3C37F10(v179);
          }
        }
      }

      ++v148;
      continue;
    }

    break;
  }

LABEL_153:

  return v4;
}

uint64_t sub_1E39C028C()
{
  OUTLINED_FUNCTION_2_4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1E39C02B0()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_29_32();
  swift_allocObject();
  return sub_1E39C0300();
}

uint64_t sub_1E39C0300()
{
  OUTLINED_FUNCTION_48_1();
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  swift_weakInit();
  swift_weakInit();
  *(v0 + 98) = v3;
  OUTLINED_FUNCTION_3_0();
  swift_weakAssign();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_3_0();
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;

  *(v0 + 224) = MEMORY[0x1E69E7CC8];
  type metadata accessor for ViewModel.ProtectedMembers();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + 240) = v4;
  (*(*v0 + 816))();

  return v0;
}

uint64_t ViewModel.hash(into:)()
{
  if (!*(v0 + 24))
  {
    return sub_1E4207B64();
  }

  sub_1E4207B64();
  OUTLINED_FUNCTION_34();

  return sub_1E4206014();
}

uint64_t static ViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_30();
  return (*(v2 + 768))(v3) & 1;
}

uint64_t sub_1E39C0504(void *a1)
{
  v3 = *(v1 + 24);
  v4 = a1[3];
  v5 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    if (*(v1 + 16) == a1[2] && v3 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1E42079A4();
    }
  }

  OUTLINED_FUNCTION_111();
  v7 += 69;
  v8 = *v7;
  if ((*v7)() || (OUTLINED_FUNCTION_12_6(), (*(v9 + 552))()))
  {

    if ((v8)(v10))
    {
      OUTLINED_FUNCTION_12_6();
      v12 = (*(v11 + 552))();
      if (v12)
      {
        v13 = v12;
        if (v5)
        {
          v14 = sub_1E4205C44();

          sub_1E3744600(v13);

          sub_1E4205C44();
          OUTLINED_FUNCTION_38();

          v5 = [v14 isEqualToDictionary_];

          goto LABEL_18;
        }
      }
    }

    v5 = 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_111();
  v16 = (*(v15 + 648))();
  v17 = (*(*a1 + 648))();
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  if (v16 != v18)
  {
    goto LABEL_31;
  }

LABEL_23:
  OUTLINED_FUNCTION_111();
  v19 += 58;
  v20 = *v19;
  if ((*v19)() || (OUTLINED_FUNCTION_12_6(), (*(v21 + 464))()))
  {

    if (v5)
    {
      v23 = (v20)(v22);
      OUTLINED_FUNCTION_12_6();
      v25 = (*(v24 + 464))();
      v26 = v25;
      if (v23)
      {
        if (v25)
        {
          v27 = OUTLINED_FUNCTION_32_0();
          v29 = sub_1E38BBA04(v27, v28);
LABEL_29:
          v5 = v29;

          return v5 & 1;
        }

        goto LABEL_40;
      }

LABEL_39:
      if (!v26)
      {
        v5 = 1;
        return v5 & 1;
      }

LABEL_40:

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_111();
  v31 += 61;
  v32 = *v31;
  if ((*v31)() || (OUTLINED_FUNCTION_12_6(), (*(v33 + 488))()))
  {

    if (v5)
    {
      v35 = (v32)(v34);
      OUTLINED_FUNCTION_12_6();
      v37 = (*(v36 + 488))();
      v26 = v37;
      if (v35)
      {
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_32_0();
          v29 = sub_1E39C3764(v38, v39);
          goto LABEL_29;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_31:
    v5 = 0;
    return v5 & 1;
  }

  OUTLINED_FUNCTION_111();
  v40 += 64;
  v41 = *v40;
  (*v40)(&v108);
  v42 = v109;
  v43 = sub_1E325F748(&v108, &unk_1ECF296E0);
  if (v42 || (OUTLINED_FUNCTION_12_6(), (*(v44 + 512))(&v108), v45 = v109, v43 = sub_1E325F748(&v108, &unk_1ECF296E0), v45))
  {
    (v41)(&v108, v43);
    if (v109)
    {
      v46 = sub_1E329504C(&v108, &v103);
      (v41)(&v108, v46);
      if (v109)
      {
        sub_1E329504C(&v108, &v100);
        if ((v5 & 1) == 0)
        {
          goto LABEL_77;
        }

        v47 = type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_39_20(v47, v48, v49, v50);
        v51 = OUTLINED_FUNCTION_2_81();
        if (v51)
        {
          v60 = v106;
          v59 = v107;
          OUTLINED_FUNCTION_38_21(v51, v52, v53, v54, v55, v56, v57, v58, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, *&v106, v107, v108);
          if (OUTLINED_FUNCTION_2_81())
          {
            if (*&v60 == *&v106 && v59 == v107)
            {
            }

            else
            {
              v62 = sub_1E42079A4();

              if ((v62 & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            v5 = 1;
LABEL_78:
            __swift_destroy_boxed_opaque_existential_1(&v100);
            __swift_destroy_boxed_opaque_existential_1(&v103);
            return v5 & 1;
          }

          goto LABEL_77;
        }

        OUTLINED_FUNCTION_39_20(v51, v52, v53, v54);
        v63 = OUTLINED_FUNCTION_2_81();
        if (v63 || (OUTLINED_FUNCTION_39_20(v63, v64, v65, v66), v63 = OUTLINED_FUNCTION_2_81(), v63))
        {
          v71 = v106;
          OUTLINED_FUNCTION_38_21(v63, v64, v65, v66, v67, v68, v69, v70, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, *&v106, v107, v108);
          if ((OUTLINED_FUNCTION_2_81() & 1) == 0)
          {
            goto LABEL_77;
          }

          v72 = *&v71 == *&v106;
        }

        else
        {
          OUTLINED_FUNCTION_39_20(v63, v64, v65, v66);
          v73 = OUTLINED_FUNCTION_2_81();
          if (v73)
          {
            v81 = v106;
            OUTLINED_FUNCTION_38_21(v73, v74, v75, v76, v77, v78, v79, v80, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, *&v106, v107, v108);
            if ((OUTLINED_FUNCTION_2_81() & 1) == 0)
            {
              goto LABEL_77;
            }

            v72 = v81 == v106;
          }

          else
          {
            OUTLINED_FUNCTION_39_20(v73, v74, v75, v76);
            v82 = OUTLINED_FUNCTION_2_81();
            if (!v82)
            {
              OUTLINED_FUNCTION_39_20(v82, v83, v84, v85);
              v91 = OUTLINED_FUNCTION_2_81();
              if ((v91 & 1) == 0)
              {
                goto LABEL_77;
              }

              v99 = LOBYTE(v106);
              OUTLINED_FUNCTION_38_21(v91, v92, v93, v94, v95, v96, v97, v98, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, *&v106, v107, v108);
              if ((OUTLINED_FUNCTION_2_81() & 1) == 0)
              {
                goto LABEL_77;
              }

              v5 = v99 ^ LOBYTE(v106) ^ 1;
              goto LABEL_78;
            }

            v90 = *&v106;
            OUTLINED_FUNCTION_38_21(v82, v83, v84, v85, v86, v87, v88, v89, v100, *(&v100 + 1), v101, v102, v103, *(&v103 + 1), v104, v105, *&v106, v107, v108);
            if ((OUTLINED_FUNCTION_2_81() & 1) == 0)
            {
LABEL_77:
              v5 = 0;
              goto LABEL_78;
            }

            v72 = v90 == *&v106;
          }
        }

        v5 = v72;
        goto LABEL_78;
      }

      __swift_destroy_boxed_opaque_existential_1(&v103);
    }

    sub_1E325F748(&v108, &unk_1ECF296E0);
    goto LABEL_31;
  }

  return v5 & 1;
}

double sub_1E39C0C20@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 536))();
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_37_22();
    v7 = v6(v5);
    sub_1E3277E60(v7, v8, v4, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1E39C0CE4(uint64_t a1, uint64_t a2)
{
  ViewModelKeys.rawValue.getter(11);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 672))();
  sub_1E3277E60(v4, v6, v8, &v30);

  if (!v32)
  {
    sub_1E325F748(&v30, &unk_1ECF296E0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v9 = 0;
    v33 = 0;
    goto LABEL_6;
  }

  v9 = v33;
LABEL_6:
  if (*(a2 + 24) && !v9)
  {
    v33 = sub_1E4205CB4();

    v9 = v33;
  }

  if (v9)
  {
    v10 = OUTLINED_FUNCTION_37_22();
    v12 = v11(v10);
    v14 = v13;
    sub_1E379539C(a2, &v30, &unk_1ECF296E0);
    if (v32)
    {
      sub_1E329504C(&v30, v29);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v33;
      sub_1E32A87C0(v29, v12, v14);

      v33 = v27;
    }

    else
    {
      sub_1E325F748(&v30, &unk_1ECF296E0);
      v15 = sub_1E327D33C(v12, v14);
      if (v16)
      {
        v17 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v28 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207644();

        sub_1E329504C((*(v28 + 56) + 32 * v17), v29);
        sub_1E4207664();
        v33 = v28;
      }

      else
      {
        memset(v29, 0, sizeof(v29));
      }

      sub_1E325F748(v29, &unk_1ECF296E0);
    }
  }

  ViewModelKeys.rawValue.getter(11);
  OUTLINED_FUNCTION_9_9();
  v18 = v33;
  if (v33)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    v19 = 0;
    *(&v30 + 1) = 0;
    v31 = 0;
  }

  *&v30 = v18;
  v32 = v19;
  OUTLINED_FUNCTION_111();
  v21 = *(v20 + 688);

  v22 = v21(v29);
  OUTLINED_FUNCTION_55_0();
  sub_1E3946774(v23, v24, v25);
  v22(v29, 0);
}

uint64_t sub_1E39C1050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a3 + 24))
  {
    if ((*(*v3 + 552))())
    {
    }

    else
    {
      sub_1E4205CB4();
      OUTLINED_FUNCTION_9_2();
      (*(v8 + 560))();
    }
  }

  v9 = (*(*v3 + 568))(v19);
  if (*v10)
  {
    sub_1E379539C(a3, v18, &unk_1ECF296E0);

    sub_1E3946774(v18, a1, a2);
  }

  v9(v19, 0);
  ViewModelKeys.rawValue.getter(20);
  OUTLINED_FUNCTION_9_9();
  v11 = (*(*v3 + 552))();
  v12 = v11;
  if (v11)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v12;
  v19[3] = v11;
  v13 = (*(*v4 + 688))(v18);
  OUTLINED_FUNCTION_55_0();
  sub_1E3946774(v14, v15, v16);
  return v13(v18, 0);
}

uint64_t sub_1E39C1294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_opt_self() isSUIEnabled];
  if (!v8)
  {
    v8 = (*(*v4 + 808))(a1, a2);
  }

  if ((*(*v4 + 648))(v8))
  {
    OUTLINED_FUNCTION_82();
    v12 = sub_1E4018954(v9, v10, v11, 0, a4);

    return v12 & 1;
  }

  else
  {
    type metadata accessor for Document();
    OUTLINED_FUNCTION_82();
    return sub_1E4018A10(v14, v15, v16, 0, a4) & 1;
  }
}

uint64_t sub_1E39C13B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (sub_1E378CB90() & 1) != 0 || (result = sub_1E378CB90(), (result))
  {
    v7 = sub_1E3BA4968(a1);
    type metadata accessor for Metrics();
    OUTLINED_FUNCTION_38();
    v8 = sub_1E3BA7AA8();
    v9 = sub_1E3BA7F00(v3);
    if ((*(*v3 + 576))())
    {
      OUTLINED_FUNCTION_30();
      (*(v10 + 288))(v7, a2, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1E39C14E0()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 672))();
  v27[3] = &type metadata for ViewModelKeys;
  v27[4] = &off_1F5D7BCA8;
  v11 = OUTLINED_FUNCTION_23_36(v3, v4, v5, v6, v7, v8, v9, v10, v25, 12);
  OUTLINED_FUNCTION_33_30(v11);

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_32_13())
    {
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1E325F748(v28, &unk_1ECF296E0);
    v12 = 0;
  }

  OUTLINED_FUNCTION_111();
  v13 += 78;
  v14 = *v13;
  if ((*v13)() && (OUTLINED_FUNCTION_26_0(), v17 = v16, (*(v15 + 392))(), OUTLINED_FUNCTION_38(), , v17) && (OUTLINED_FUNCTION_8(), v19 = (*(v18 + 1624))(*(v1 + 98), v1), , v19))
  {
    v27[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
    sub_1E4148DE0(sub_1E39C3B28);
  }

  else
  {
    v19 = sub_1E3D76A14(v1, v12);

    if (v19)
    {
      v20 = swift_retain_n();
      if ((v14)(v20))
      {
        OUTLINED_FUNCTION_26_0();
        v22 = (*(v21 + 392))();

        if (v22)
        {
          OUTLINED_FUNCTION_8();
          (*(v23 + 1632))(v19, *(v1 + 98));
        }
      }
    }
  }

  OUTLINED_FUNCTION_14_0();
  *(v1 + 104) = v19;
}

uint64_t ViewModel.deinit()
{

  sub_1E325F748(v0 + 112, &qword_1ECF2FFF0);

  sub_1E325F748(v0 + 160, &unk_1ECF296E0);

  swift_weakDestroy();

  swift_weakDestroy();

  return v0;
}

uint64_t ViewModel.__deallocating_deinit()
{
  ViewModel.deinit();
  v0 = OUTLINED_FUNCTION_29_32();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ViewModel.hashValue.getter()
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_8();
  (*(v0 + 760))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E39C1988()
{
  sub_1E4207B44();
  (*(**v0 + 760))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E39C1A3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewModel();
  result = sub_1E42074D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C1AA0()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 672))();
  v1 = sub_1E39C38B4(34);

  return v1;
}

uint64_t sub_1E39C1B08(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 488))();
  if (v4)
  {
    v5 = sub_1E373E010(a1, v4);

    if (v5)
    {
      return v5;
    }
  }

  v6 = (*(*v1 + 464))();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  result = sub_1E32AE9B0(v6);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      return 0;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v7);
      v5 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v5 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v15 == v13 && v16 == v14)
    {

LABEL_20:

      return v5;
    }

    v12 = sub_1E42079A4();

    if (v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E39C1CF8(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 464))();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_31(v4);
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v6, v7);
    OUTLINED_FUNCTION_43_21();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E4297BE0;
    v9 = (*(*v1 + 488))();
    if (v9)
    {
      *(v8 + 32) = sub_1E373E010(a1, v9);
    }

    else
    {
      *(v8 + 32) = 0;
    }

    MEMORY[0x1EEE9AC00](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF8);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v10, v11);
    OUTLINED_FUNCTION_43_21();
  }

  v12 = sub_1E42061B4();

  return v12;
}

uint64_t sub_1E39C1F18()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 464))();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1E32AE9B0(v2);
    v6 = result;
    for (i = 0; v6 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v4);
        v8 = result;
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(v4 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v0(v8))
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        result = sub_1E4207554();
      }

      else
      {
      }
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    OUTLINED_FUNCTION_46();
    v12 = sub_1E32752B0(v10, v11);
    sub_1E38D2480(&v25, v9, v12);

    v13 = v25;
    v3 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      return v13;
    }
  }

  OUTLINED_FUNCTION_8();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v26 = v3;
    v16 = v15 + 64;
    OUTLINED_FUNCTION_4_4();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;

    v22 = 0;
    v13 = v3;
    while (1)
    {
      v23 = v22;
      if (!v19)
      {
        break;
      }

LABEL_20:
      v19 &= v19 - 1;

      if (v0(v24))
      {
        MEMORY[0x1E6910BF0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        result = sub_1E4206324();
        v13 = v26;
      }

      else
      {
      }
    }

    while (1)
    {
      v22 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        return v13;
      }

      v19 = *(v16 + 8 * v22);
      ++v23;
      if (v19)
      {
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E39C2218()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_30_31(v1);
    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v3, v4);
    OUTLINED_FUNCTION_43_21();
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 488))();
    if (!v6)
    {
      return sub_1E4206304();
    }

    v7 = OUTLINED_FUNCTION_30_31(v6);
    MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240);
    sub_1E32752B0(&qword_1ECF30000, &qword_1ECF34240);
    OUTLINED_FUNCTION_43_21();
  }

  v9 = sub_1E42061B4();

  return v9;
}

uint64_t sub_1E39C2438(unint64_t a1)
{
  v3 = sub_1E3841D9C(v1, a1);
  result = 0;
  if ((v5 & 1) == 0)
  {
    v6 = v3 - 1;
    if (v3 >= 1)
    {
      sub_1E34AF4E4(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](v6, a1);
      }

      else
      {
      }

      MEMORY[0x1EEE9AC00](v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
      sub_1E4148DE0(sub_1E39C3CC0);

      return 0;
    }
  }

  return result;
}

void sub_1E39C2540()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 624))();
  v6 = v5;
  v7 = MEMORY[0x1E69E6370];
  while (1)
  {
    v8 = v6;
    v12[10] = v6;
    v9 = MEMORY[0x1EEE9AC00](v5);
    v12[6] = v3;
    v12[7] = v1;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = sub_1E39C3D14;
    v12[3] = v10;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
    sub_1E4148F70(sub_1E39C3D48, v12, v11, v7, &v13);

    if (v13 == 2 || (v13 & 1) != 0)
    {
      break;
    }

    v6 = 0;
    if (v8)
    {
      v6 = (*(*v8 + 624))(v5);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C26D0(char a1, char a2)
{
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 440))();
  if (!v7)
  {
LABEL_24:
    sub_1E39C3D80(49, v2);
    if (v19)
    {
      OUTLINED_FUNCTION_9_9();
      if (v3 != sub_1E38569FC(a1) || v4 != v20)
      {
        OUTLINED_FUNCTION_34();
        v22 = sub_1E42079A4();

        if (v22)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    else if (a2)
    {
      return 0;
    }

LABEL_34:

    return v2;
  }

  v8 = v7;
  v23 = a2;
  v24 = v2;
  result = sub_1E32AE9B0(v7);
  v10 = result;
  v11 = 0;
  v4 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v10 == v11)
    {

      v2 = v24;
      a2 = v23;
      goto LABEL_24;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v11, v8);
      v2 = result;
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v2 = *(v8 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v29[3] = &unk_1F5D5DAC8;
    v29[4] = &off_1F5D5C998;
    LOBYTE(v29[0]) = 49;
    __swift_project_boxed_opaque_existential_1(v29, &unk_1F5D5DAC8);
    OUTLINED_FUNCTION_36();
    (*(v12 + 776))(v28);
    if (v28[3])
    {
      if (swift_dynamicCast())
      {
        v13 = v26;
        v14 = v27;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E325F748(v28, &unk_1ECF296E0);
    }

    v13 = 0;
    v14 = 0;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v29);
    v15 = sub_1E38569FC(a1);
    v3 = v16;
    if (v14)
    {
      if (v13 == v15 && v14 == v16)
      {

LABEL_36:

        return v2;
      }

      v18 = sub_1E42079A4();

      if (v18)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    ++v11;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E39C29A4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1E39C3E88(v4, v1, v2, v3);
}

uint64_t sub_1E39C29F0(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_55_0();
  v3();
  if (v7)
  {
    if (OUTLINED_FUNCTION_8_17())
    {
      a2 = v5;
    }
  }

  else
  {
    sub_1E325F748(v6, &unk_1ECF296E0);
  }

  return a2 & 1;
}

uint64_t sub_1E39C2AB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_36();
  (*(v1 + 776))(v4);
  if (v4[3])
  {
    if (OUTLINED_FUNCTION_8_17())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E325F748(v4, &unk_1ECF296E0);
    return 0;
  }
}

void sub_1E39C2B80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1E4207104();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_36();
  (*(v6 + 776))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v7 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v5, v7 ^ 1u, 1, AssociatedTypeWitness);
  sub_1E4149694();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C2CD0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 552))())
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_46_21();
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_52_17(v9);

  __swift_destroy_boxed_opaque_existential_1(&v12);
  if (!v14)
  {
LABEL_8:
    sub_1E325F748(v13, &unk_1ECF296E0);
    return 0;
  }

  if (OUTLINED_FUNCTION_41_25())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39C2DB4()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 552))())
  {
    OUTLINED_FUNCTION_46_21();
    v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21[0]);
    OUTLINED_FUNCTION_52_17(v9);

    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v10 = OUTLINED_FUNCTION_41_25();
      return OUTLINED_FUNCTION_31_32(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F748(v22, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E39C2E98()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 552))())
  {
    OUTLINED_FUNCTION_46_21();
    v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v19, v21[0]);
    OUTLINED_FUNCTION_33_30(v9);

    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v23)
    {
      sub_1E4206374();
      v10 = OUTLINED_FUNCTION_32_13();
      return OUTLINED_FUNCTION_31_32(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F748(v22, &unk_1ECF296E0);
  return 0;
}

uint64_t sub_1E39C2F7C@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 552))();
  if (v7)
  {
    v20 = &unk_1F5D7C138;
    v21 = &off_1F5D7BC98;
    v15 = OUTLINED_FUNCTION_23_36(v7, v8, v9, v10, v11, v12, v13, v14, v18, a1);
    sub_1E3F9F164(v15);

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v16 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v16 ^ 1u, 1, a2);
}

uint64_t sub_1E39C306C(char a1)
{
  sub_1E3C7ED20(a1);
  OUTLINED_FUNCTION_8();
  (*(v1 + 792))();
}

void sub_1E39C30DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E39C3D80(54, v0);
  if (v7)
  {
    v8 = v7;
    *(&v25 - 2) = MEMORY[0x1EEE9AC00](v6);
    *(&v25 - 1) = v8;
    sub_1E39C2540();
    v10 = v9;

    if (v10 && (, v11 = sub_1E39C2DB4(), , v11))
    {
    }

    else
    {
      v12 = sub_1E324FBDC();
      (*(v3 + 16))(v5, v12, v2);

      v13 = sub_1E41FFC94();
      v14 = sub_1E42067F4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315394;
        v17 = (*(*v1 + 376))();
        v19 = sub_1E3270FC8(v17, v18, &v26);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        if (v10)
        {
          OUTLINED_FUNCTION_12_6();
          v21 = (*(v20 + 376))();
          v23 = v22;
        }

        else
        {
          v23 = 0xE300000000000000;
          v21 = 7104878;
        }

        v24 = sub_1E3270FC8(v21, v23, &v26);

        *(v15 + 14) = v24;
        _os_log_impl(&dword_1E323F000, v13, v14, "sharedSupplementaryData expected for %s, provider %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v16, -1, -1);
        MEMORY[0x1E69143B0](v15, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C3418(void *a1, char a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (!a3)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_55_0();
  v5();
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_1E325F748(&v8, &unk_1ECF296E0);
    return a2 & 1;
  }

  if (OUTLINED_FUNCTION_8_17())
  {
    a2 = v7;
  }

  return a2 & 1;
}

uint64_t sub_1E39C3508(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = a1;
}

uint64_t sub_1E39C3570(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 24) = a1;
}

uint64_t sub_1E39C35F0()
{

  return v0;
}

uint64_t sub_1E39C3618()
{
  sub_1E39C35F0();
  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1E39C3648(uint64_t a1)
{
  sub_1E328438C(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  result = 1;
  if (OUTLINED_FUNCTION_8_17())
  {
    v1 = *(v3 + 16);

    if (!v1)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1E39C36BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E37817B4();
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_1E39C4000(v8, result, v5, 0, a1);
    *(a2 + 8) = v7;
    return sub_1E329504C(v8, (a2 + 16));
  }

  return result;
}

uint64_t sub_1E39C3764(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + 2 * v11);

    sub_1E3740AE8(v13);
    if ((v14 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for ViewModel();

    v16 = static ViewModel.== infix(_:_:)(v15, v12);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39C38B4(char a1)
{
  v6[3] = &type metadata for ViewModelKeys;
  v6[4] = &off_1F5D7BCA8;
  LOBYTE(v6[0]) = a1;
  sub_1E3F9F164(v6);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      v1 = v3;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_1E325F748(v4, &unk_1ECF296E0);
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v1;
}

uint64_t sub_1E39C3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1E3F9F164(v12);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1E325F748(v10, &unk_1ECF296E0);
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1E39C3A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39C3B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E373F6E0();
  if (result)
  {
    result = swift_dynamicCastClass();
    v3 = result;
    if (result)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

void *sub_1E39C3BD4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result && (result = swift_dynamicCastClass()) != 0)
  {
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1E39C3CC0()
{
  v1 = *(v0 + 16);
  if (sub_1E373F6E0())
  {
    result = 1;
  }

  else
  {
    result = sub_1E373F6E0();
  }

  *v1 = result & 1;
  return result;
}

uint64_t sub_1E39C3D48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E39C3D80(char a1, uint64_t a2)
{
  v8[3] = &unk_1F5D5DAC8;
  v8[4] = &off_1F5D5C998;
  LOBYTE(v8[0]) = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v8, &unk_1F5D5DAC8);
  (*(*a2 + 776))(v7, v3, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v7[3])
  {
    if (swift_dynamicCast())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1E325F748(v7, &unk_1ECF296E0);
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4;
}

uint64_t sub_1E39C3E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = v16;
  v9 = v17;
  v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(*a2 + 776))(v14, v10, v8, v9);
  if (v14[3])
  {
    if (swift_dynamicCast())
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_1E325F748(v14, &unk_1ECF296E0);
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_1E39C3FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (*(a1 + 16) == *(v1 + 16) && v2 == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E39C4000(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_1E328438C(*(a5 + 56) + 32 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1E39C4090(unsigned __int16 *a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1[49];
  switch(a1[49])
  {
    case 0x79u:
      type metadata accessor for CollectionViewModel();
      v16 = OUTLINED_FUNCTION_4_84();
      if (!v16)
      {
        return 0;
      }

      v17 = v16;
      if (a2)
      {
        type metadata accessor for MultiGroupHorizontalCollectionController();
        v18 = OUTLINED_FUNCTION_5_83();
        if (v18)
        {
          v19 = a2;
        }
      }

      else
      {
        v18 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        OUTLINED_FUNCTION_3_87();
        OUTLINED_FUNCTION_0_98();
        if (v43)
        {
          v46 = 0;
        }

        else
        {
          v46 = v44;
        }

        if (v43)
        {
          v47 = 1;
        }

        else
        {
          v47 = v45;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0);
        v46 = 0;
        v47 = 1;
      }

      type metadata accessor for MultiGroupHorizontalCollectionController();
      sub_1E40897C0(v17, v18);
      v48 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v48, v46, v47);

      return v8;
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x81u:
    case 0x84u:
    case 0x85u:
    case 0x86u:
      return v8;
    case 0x7Bu:
      type metadata accessor for CollectionViewModel();
      if (!OUTLINED_FUNCTION_4_84())
      {
        return 0;
      }

      if (a2)
      {
        type metadata accessor for MediaShowcaseHostingViewController();
        v12 = OUTLINED_FUNCTION_5_83();
        if (v12)
        {
          v20 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      type metadata accessor for MediaShowcaseHostingViewController();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_34();
      sub_1E38B555C();
      goto LABEL_98;
    case 0x7Eu:
    case 0x80u:
      type metadata accessor for CollectionViewModel();
      v8 = OUTLINED_FUNCTION_4_84();
      if (!v8)
      {
        return v8;
      }

      if (a2)
      {
        type metadata accessor for CarouselViewController();
        v10 = OUTLINED_FUNCTION_5_83();
        if (v10)
        {
          v11 = a2;
        }
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        OUTLINED_FUNCTION_3_87();
        OUTLINED_FUNCTION_0_98();
        if (v35)
        {
          v3 = 0;
        }

        else
        {
          v3 = v36;
        }

        if (v35)
        {
          v4 = 1;
        }

        else
        {
          v4 = v37;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for CarouselViewController();
      v38 = OUTLINED_FUNCTION_2_82();
      sub_1E37C7B40(v38, v39);
      goto LABEL_70;
    case 0x7Fu:
      type metadata accessor for CollectionViewModel();
      v21 = OUTLINED_FUNCTION_4_84();
      if (!v21)
      {
        return 0;
      }

      v22 = v21;
      if (a2)
      {
        type metadata accessor for EpicShowcaseViewController();
        a2 = OUTLINED_FUNCTION_5_83();
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        OUTLINED_FUNCTION_3_87();
        OUTLINED_FUNCTION_0_98();
        if (v23)
        {
          v3 = 0;
        }

        else
        {
          v3 = v24;
        }

        if (v23)
        {
          v4 = 1;
        }

        else
        {
          v4 = v25;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for EpicShowcaseViewController();
      sub_1E411D928(v22, a2, a3, v3, v4);
      v49 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v49, v3, v4);

      return v8;
    case 0x82u:
    case 0x83u:
      type metadata accessor for EpisodeCollectionViewModel();
      v8 = OUTLINED_FUNCTION_4_84();
      if (!v8)
      {
        return v8;
      }

      if (a2)
      {
        type metadata accessor for EpisodeCollectionViewController();
        v10 = OUTLINED_FUNCTION_5_83();
        if (v10)
        {
          v14 = a2;
        }
      }

      else
      {
        v10 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
        OUTLINED_FUNCTION_3_87();
        OUTLINED_FUNCTION_0_98();
        if (v30)
        {
          v3 = 0;
        }

        else
        {
          v3 = v31;
        }

        if (v30)
        {
          v4 = 1;
        }

        else
        {
          v4 = v32;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for EpisodeCollectionViewController();
      v33 = OUTLINED_FUNCTION_2_82();
      sub_1E38920D8(v33, v34);
LABEL_70:
      v40 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v40, v3, v4);

      return v8;
    case 0x87u:
      type metadata accessor for UnifiedMessagingBannerViewModel();
      if (!OUTLINED_FUNCTION_4_84())
      {
        return 0;
      }

      if (a2)
      {
        type metadata accessor for UnifiedMessagingBannerViewController();
        v12 = OUTLINED_FUNCTION_5_83();
        if (v12)
        {
          v26 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      type metadata accessor for UnifiedMessagingBannerViewController();
      OUTLINED_FUNCTION_50();

      v51 = OUTLINED_FUNCTION_34();
      sub_1E3AC6994(v51, v52);
      goto LABEL_98;
    case 0x88u:
      type metadata accessor for UnifiedMessagingAccountMessageViewModel();
      if (!OUTLINED_FUNCTION_4_84())
      {
        return 0;
      }

      if (a2)
      {
        type metadata accessor for AccountMessageViewController();
        v12 = OUTLINED_FUNCTION_5_83();
        if (v12)
        {
          v15 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      type metadata accessor for AccountMessageViewController();
      OUTLINED_FUNCTION_50();

      v42 = OUTLINED_FUNCTION_34();
      sub_1E3A51B24(v42);
      goto LABEL_98;
    case 0x89u:
      type metadata accessor for UnifiedMessagingBubbleTipViewModel();
      if (!OUTLINED_FUNCTION_4_84())
      {
        return 0;
      }

      if (a2)
      {
        type metadata accessor for UnifiedMessagingBubbleTipViewController();
        v12 = OUTLINED_FUNCTION_5_83();
        if (v12)
        {
          v27 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      type metadata accessor for UnifiedMessagingBubbleTipViewController();
      OUTLINED_FUNCTION_50();

      v53 = OUTLINED_FUNCTION_34();
      sub_1E3D3B0A8(v53, v54);
      goto LABEL_98;
    default:
      if (v9 == 1)
      {
        sub_1E39C4734(a3, v57);
        if (v58)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
          if (swift_dynamicCast())
          {
            memcpy(v56, __src, sizeof(v56));
            nullsub_1(v28, v29);
            memcpy(__dst, v56, 0x82uLL);
          }

          else
          {
            sub_1E39C47A4(__dst);
          }

          memcpy(__src, __dst, 0x82uLL);
        }

        else
        {
          sub_1E325F748(v57, &qword_1ECF296C0);
          sub_1E39C47A4(__src);
        }

        memcpy(__dst, __src, 0x82uLL);
        v41 = sub_1E3D41994();
        sub_1E3D41998(a1, a2, v41, __dst);
        OUTLINED_FUNCTION_8_57();

        sub_1E325F748(__src, &qword_1ECF30010);
        return v8;
      }

      if (v9 != 148)
      {
        return v8;
      }

      type metadata accessor for EpicInlineViewModel();
      if (!OUTLINED_FUNCTION_4_84())
      {
        return 0;
      }

      if (a2)
      {
        type metadata accessor for EpicInlineViewController();
        v12 = OUTLINED_FUNCTION_5_83();
        if (v12)
        {
          v13 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      type metadata accessor for EpicInlineViewController();
      OUTLINED_FUNCTION_50();

      v55 = OUTLINED_FUNCTION_34();
      sub_1E3A50198(v55);
LABEL_98:
      OUTLINED_FUNCTION_50();

      return a2;
  }
}

uint64_t sub_1E39C4734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39C47AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

uint64_t sub_1E39C47BC()
{
  result = sub_1E38E51A8(&unk_1F5D66C98);
  qword_1EE2AA890 = result;
  return result;
}

uint64_t sub_1E39C4858()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E39C48F4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void sub_1E39C4938(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E39C4984(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_hostingParentViewController;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E39C4A08()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (v1 && (v2 = (*(*v1 + 792))(v1), , v2 != 11) && (v3 = sub_1E41265A4(v2)) != 0)
  {

    return 1;
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for FloatingCardHostingCollectionViewCell();
    return objc_msgSendSuper2(&v5, sel__disableRasterizeInAnimations);
  }
}

id sub_1E39C4B40()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewModel) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions) = 0;
  v5 = type metadata accessor for FloatingCardHostingCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E39C4BE8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewModel) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E39C4C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - v2;
  v4 = type metadata accessor for FloatingCardHostingCollectionViewCell();
  v9.receiver = v0;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, sel_vui_prepareForReuse);
  sub_1E4206C64();
  v5 = sub_1E41FFE94();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  MEMORY[0x1E69115A0](v3);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  return MEMORY[0x1E6911580](v7);
}

uint64_t sub_1E39C4DA4(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (a2)
  {
    type metadata accessor for FloatingCardHostingCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(*a1 + 392);
      v14 = a2;
      v15 = v13();
      if (v15)
      {
        v16 = v15;
        if (qword_1EE290BD0 != -1)
        {
          OUTLINED_FUNCTION_1_107();
        }

        if (sub_1E38E5664(a1[49], qword_1EE2AA890))
        {
          v17 = [v12 vuiContentView];
          [v17 frame];
          v19 = v18;
          v21 = v20;

          v22 = MEMORY[0x1E69E7D40];
          v23 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x78);

          v23(v24);
          v25 = *((*v22 & *v12) + 0x90);

          v25(v26);
          v27 = *(*a1 + 344);
          v28 = v14;
          [v12 setAccessibilityIgnoresInvertColors_];

          LOBYTE(v23) = j__OUTLINED_FUNCTION_51_1();
          v29 = j__OUTLINED_FUNCTION_18();
          v30 = j__OUTLINED_FUNCTION_18();
          sub_1E3EB9C0C(v19, v21, 0, 0, 0, 1, v23 & 1, 2, v47, 0, 1, 0, 1, 0, 2, v29 & 1, v30 & 1);
          sub_1E375C2C0(v47, v51);
          LOBYTE(v17) = j__OUTLINED_FUNCTION_18();
          LOBYTE(v28) = j__OUTLINED_FUNCTION_18();
          v31 = j__OUTLINED_FUNCTION_51_1();
          sub_1E3EB9DAC(v47, 0, 0, 1, 0, 0, 1, 0, v48, 1, 0, 0, 256, 3, 0, v17 & 1, v28 & 1, v31 & 1);
          memcpy(v51, v48, 0x78uLL);
          v51[15] = v19;
          v51[16] = v21;
          v52 = 0;
          OUTLINED_FUNCTION_8_58(v51, v49);
          *(v32 + 179) = v50;
          sub_1E39C530C(a1, v12, v16, v51);

          sub_1E375C31C(v47);
          memcpy(v42, v48, sizeof(v42));
          v43 = v19;
          v44 = v21;
          v45 = 0;
          OUTLINED_FUNCTION_8_58(v42, v49);
          v46 = v50;
          sub_1E37E6F2C(v42);
          return v12;
        }
      }

      else
      {
      }
    }
  }

  v34 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v34, v4);

  v35 = sub_1E41FFC94();
  v36 = sub_1E4206814();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51[0] = v38;
    *v37 = 136315138;
    sub_1E384EE08(a1[49]);
    v41 = sub_1E3270FC8(v39, v40, v51);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1E323F000, v35, v36, "FloatingCardHostingCollectionViewCell: Failed to get correct cell for [%s]", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E69143B0](v38, -1, -1);
    MEMORY[0x1E69143B0](v37, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E39C530C(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v54 = a3;
  v50 = a2;
  v51 = sub_1E41FFE94();
  OUTLINED_FUNCTION_0_10();
  v48 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30040);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v53 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v49 = a1;
  v27 = v26;
  v47 = a4;
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v28, v29, v30, v31, v32);
  v52 = v25;
  v55 = v25;
  OUTLINED_FUNCTION_6_8();
  sub_1E42021C4();
  sub_1E4202734();
  v56[3] = v16;
  v56[4] = sub_1E39C609C();
  __swift_allocate_boxed_opaque_existential_1(v56);
  v33 = v50;
  sub_1E42021B4();
  (*(v18 + 8))(v21, v16);
  MEMORY[0x1E6911580](v56);
  v34 = [objc_opt_self() clearColor];
  [v33 setTintColor_];

  if (sub_1E39DFFC8() & 1) != 0 && ((sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0()))
  {
    sub_1E41FFE84();
    v35 = 1;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v51);
    MEMORY[0x1E69115A0](v15);
    v36 = v54;
  }

  else
  {
    MEMORY[0x1E6911590]();
    v37 = v51;
    if (__swift_getEnumTagSinglePayload(v4, 1, v51) == 1)
    {
      sub_1E41FFE84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v37);
      v39 = v48;
      if (EnumTagSinglePayload != 1)
      {
        EnumTagSinglePayload = sub_1E39C6100(v4);
      }
    }

    else
    {
      v39 = v48;
      EnumTagSinglePayload = (*(v48 + 32))(v11, v4, v37);
    }

    v36 = v54;
    v40 = (*(*v54 + 792))(EnumTagSinglePayload);
    if (v40 != 11)
    {
      sub_1E41265A4(v40);
    }

    v41 = sub_1E41FFE64();
    (*(*v36 + 552))(v57, v41);
    if ((v58 & 1) == 0)
    {
      sub_1E3952BE8(v57[0], v57[1], v57[2], v57[3]);
    }

    sub_1E41FFE54();
    (*(v39 + 16))(v15, v11, v37);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v37);
    MEMORY[0x1E69115A0](v15);
    (*(v39 + 8))(v11, v37);
    v35 = 0;
  }

  v42 = sub_1E4206C54();
  if (v42)
  {
    sub_1E34AF594(v42);
  }

  else
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v35;
    v44 = v49;
    *(v43 + 24) = v36;
    *(v43 + 32) = v44;
    v45 = v47;
    memcpy((v43 + 40), v47, 0xC3uLL);

    sub_1E375C1CC(v45, v56);
    sub_1E4206C64();
  }

  return (*(v53 + 8))(v52, v27);
}

id sub_1E39C5870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingCardHostingCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E39C5910(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, unsigned __int8 *a6)
{
  v50 = a6;
  v58 = a5;
  v57 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30040);
  OUTLINED_FUNCTION_0_10();
  v52 = v10;
  v53 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v54 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v20 = sub_1E41FFE94();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  MEMORY[0x1E6911590]();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1E41FFE84();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_1E39C6100(v19);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v19, v20);
  }

  if (sub_1E41FFE24() & 1) != 0 || (sub_1E41FFE04())
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_1E41FFDF4();
  }

  if ((v57 & 1) == 0)
  {
    v28 = *a4;
    if (v27)
    {
      (*(v28 + 864))();
    }

    else
    {
      (*(v28 + 744))();
    }

    sub_1E41FFE74();
  }

  (*(v22 + 16))(v6, v26, v20);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
  MEMORY[0x1E69115A0](v6);
  v29 = *(v58 + 98);
  *v64 = v29;
  *v61 = 204;
  sub_1E3741534();
  if (OUTLINED_FUNCTION_14_68() & 1) != 0 || (*v64 = v29, *v61 = 205, (OUTLINED_FUNCTION_14_68()) || (type metadata accessor for FloatingCardHostingCollectionViewCell(), (v30 = swift_dynamicCastClass()) == 0))
  {
    v46 = OUTLINED_FUNCTION_5_84();
    v47(v46);
  }

  else
  {
    v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x88);
    v32 = a1;
    if (v31())
    {
      memcpy(v60, v50, sizeof(v60));
      v33 = v50[194];
      v57 = v27 & 1;
      LODWORD(v58) = v33;
      memcpy(v64, v50, sizeof(v64));
      v65 = v27 & 1;
      v66 = v33;
      sub_1E375C1CC(v50, v61);
      v34 = v55;
      OUTLINED_FUNCTION_25();
      v40 = sub_1E40EA03C(v35, v36, v37, v38, v39);
      MEMORY[0x1EEE9AC00](v40);
      *(&v50 - 2) = v34;
      v41 = v32;
      OUTLINED_FUNCTION_6_8();
      v42 = v51;
      sub_1E42021C4();
      sub_1E4202734();
      v43 = v53;
      v59[3] = v53;
      v59[4] = sub_1E39C609C();
      __swift_allocate_boxed_opaque_existential_1(v59);
      sub_1E42021B4();
      (*(v52 + 8))(v42, v43);
      MEMORY[0x1E6911580](v59);

      v44 = OUTLINED_FUNCTION_5_84();
      v45(v44);
      memcpy(v61, v60, sizeof(v61));
      v62 = v57;
      v63 = v58;
      sub_1E37E6F2C(v61);
      (*(v54 + 8))(v55, v56);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_5_84();
      v49(v48);
    }
  }
}

void *sub_1E39C5EAC@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v13 = [v6 contentView];
  [v13 sizeThatFits_];
  v15 = v14;
  v17 = v16;

  sub_1E41A300C(v19);
  sub_1E41A2FE8(v15, v17);
  *&v19[6] = a3;
  *&v19[7] = a4;
  *&v19[8] = a5;
  *&v19[9] = a6;
  return memcpy(a1, v19, 0x50uLL);
}

uint64_t (*sub_1E39C6028(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = *(v2 + v3);

  return sub_1E39C61F0;
}

unint64_t sub_1E39C609C()
{
  result = qword_1ECF30048;
  if (!qword_1ECF30048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30048);
  }

  return result;
}

uint64_t sub_1E39C6100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E39C6178@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E39C6214(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39C6268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor()
{
  if (qword_1EE28E9B0[0] != -1)
  {
    OUTLINED_FUNCTION_13_70();
  }

  return &static NSNotification.remoteNetworkReachabilityDidChange;
}

id RemoteNetworkReachabilityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E39C634C()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39C6394(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6863616552746F6ELL;
  }

  return 0x6C62616863616572;
}

uint64_t sub_1E39C6404(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6863616552746F6ELL;
    }

    else
    {
      v4 = 0x6C62616863616572;
    }

    if (v3 == 1)
    {
      v5 = 0xEC000000656C6261;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6863616552746F6ELL;
    }

    else
    {
      v2 = 0x6C62616863616572;
    }

    if (a2 == 1)
    {
      v6 = 0xEC000000656C6261;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E39C6534()
{
  sub_1E4206014();
}

uint64_t sub_1E39C65D4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E39C6680@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C634C();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C66B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39C6394(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t variable initialization expression of RemoteNetworkReachabilityMonitor.networkActor()
{
  type metadata accessor for RemoteNetworkReachabilityActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

Swift::Bool __swiftcall RemoteNetworkReachabilityMonitor.isReachable()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v5 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status;
  OUTLINED_FUNCTION_5_0();
  if (!v0[v5])
  {
    goto LABEL_4;
  }

  if (v0[v5] == 1)
  {
    OUTLINED_FUNCTION_15_59();
LABEL_4:
    v6 = sub_1E42079A4();
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  v7 = sub_1E324FBDC();
  (*(v3 + 16))(v0, v7, v1);
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_100();
    v19 = v12;
    *v11 = 136315394;
    v13 = 0x6863616552746F6ELL;
    v14 = 0xEC000000656C6261;
    if (v0[v5] != 1)
    {
      v13 = 0x6C62616863616572;
      v14 = 0xE900000000000065;
    }

    if (v0[v5])
    {
      v15 = v13;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    if (v0[v5])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_1E3270FC8(v15, v16, &v19);

    *(v11 + 4) = v17;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&dword_1E323F000, v9, v10, "RemoteNetworkReachability: isReachable status: %s, result: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_25_2();
  return result;
}

uint64_t sub_1E39C69C8()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 177) = v6;

  v8 = *(v1 + 112);
  v9 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E39C6AE4, v9, v8);
}

uint64_t sub_1E39C6AE4()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E39C6B48()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 168) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C6BCC, v2, v1);
}

uint64_t sub_1E39C6BCC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E39C7078();
  }

  MEMORY[0x1E69144A0](v0 + 40);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E39C6C68, v3, v4);
}

uint64_t sub_1E39C6C68()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 128);

  v2 = OUTLINED_FUNCTION_23_6();
  v1(v2);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    v5 = *(v0 + 177);
    v6 = OUTLINED_FUNCTION_160();
    *v6 = 67109120;
    v6[1] = v5;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  v12 = *(v0 + 144);

  v13 = OUTLINED_FUNCTION_35_5();
  v12(v13);

  OUTLINED_FUNCTION_54();

  return v14();
}

uint64_t sub_1E39C6D68()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C6E60()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 97);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E39C6EE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C6FE0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);

  v2 = *(v0 + 96);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_1E39C7078()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v8 = sub_1E324FBDC();
  (*(v6 + 16))(v0, v8, v4);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v20 = v12;
    *v11 = 136315138;
    if (v3 == 2)
    {
      v13 = 0x6C62616863616572;
    }

    else
    {
      v13 = 0x6863616552746F6ELL;
    }

    v19 = v4;
    v14 = v3;
    if (v3 == 2)
    {
      v15 = 0xE900000000000065;
    }

    else
    {
      v15 = 0xEC000000656C6261;
    }

    v16 = sub_1E3270FC8(v13, v15, &v20);
    v3 = v14;
    v1 = v0;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v9, v10, "RemoteNetworkReachability: update status: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v0, v4);
  }

  else
  {

    (*(v6 + 8))(v0, v4);
  }

  v17 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status;
  swift_beginAccess();
  *(v1 + v17) = v3;
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EE28E9B0 != -1)
  {
    OUTLINED_FUNCTION_13_70();
  }

  [v18 postNotificationName:static NSNotification.remoteNetworkReachabilityDidChange object:{0, v19, v20}];

  OUTLINED_FUNCTION_25_2();
}

uint64_t RemoteNetworkReachabilityMonitor.checkRemoteServerReachability()()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1E39C7384;

  return sub_1E329D160();
}

uint64_t sub_1E39C7384()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C74B0, v4, v3);
}

uint64_t sub_1E39C74B0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39C7584(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E4206434();
  v2[4] = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C761C, v4, v3);
}

uint64_t sub_1E39C761C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E39C76C8;

  return RemoteNetworkReachabilityMonitor.checkRemoteServerReachability()();
}

uint64_t sub_1E39C76C8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_54();

  return v6();
}

id RemoteNetworkReachabilityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E39C7834()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_39();
  v9 = v8;
  OUTLINED_FUNCTION_31();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;
  v9[30] = v0;

  if (v0)
  {
    v13 = v9[3];
    v14 = sub_1E39C7C10;
  }

  else
  {
    v15 = v9[28];
    v16 = v9[3];
    sub_1E38DCE1C(v7, v5);

    v14 = sub_1E39C7974;
    v13 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E39C7974()
{
  v54 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 192))(*(v0 + 80), *(v0 + 184), *(v0 + 56));
  v2 = OUTLINED_FUNCTION_23_6();
  v1(v2);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 112);
  v48 = *(v0 + 64);
  v49 = *(v0 + 56);
  v50 = *(v0 + 80);
  v10 = *(v0 + 40);
  v52 = *(v0 + 48);
  v51 = *(v0 + 32);
  if (v5)
  {
    HIDWORD(v41) = v4;
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v53 = v12;
    *v11 = 136315138;
    v43 = v9;
    v46 = v7;
    v13 = sub_1E41FE314();
    v14 = v9;
    v16 = v15;
    v6(v8, v14);
    v17 = sub_1E3270FC8(v13, v16, &v53);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v3, BYTE4(v41), "RemoteNetworkReachability: Connected successfully to: %s ", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v26 = OUTLINED_FUNCTION_33_31(v18, v19, v20, v21, v22, v23, v24, v25, v40, v41, v43, v46, v48, v49, v50);
    v27(v26);
    (*(v10 + 8))(v52, v51);
    v6(v47, v44);
  }

  else
  {

    v28 = (v6)(v8, v9);
    v36 = OUTLINED_FUNCTION_33_31(v28, v29, v30, v31, v32, v33, v34, v35, v40, v41, v42, v45, v48, v49, v50);
    v37(v36);
    (*(v10 + 8))(v52, v51);
    v6(v7, v9);
  }

  OUTLINED_FUNCTION_4_85();
  **(v0 + 16) = 1;

  OUTLINED_FUNCTION_54();

  return v38();
}

uint64_t sub_1E39C7C10()
{
  v41 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v37 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v2(v7, v3, v8);
  v37(v5, v4, v6);
  v9 = v1;
  v10 = sub_1E41FFC94();
  LOBYTE(v3) = sub_1E4206814();

  v33 = v3;
  v11 = os_log_type_enabled(v10, v3);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v35 = *(v0 + 240);
  v17 = *(v0 + 48);
  v36 = *(v0 + 56);
  v38 = *(v0 + 72);
  v34 = *(v0 + 40);
  v39 = *(v0 + 32);
  if (v11)
  {
    v32 = *(v0 + 160);
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = OUTLINED_FUNCTION_160();
    log = v10;
    v29 = OUTLINED_FUNCTION_100();
    v40 = v29;
    *v18 = 136315394;
    v30 = v17;
    v20 = sub_1E41FE314();
    v22 = v21;
    v12(v15, v16);
    v23 = sub_1E3270FC8(v20, v22, &v40);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v35;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_1E323F000, log, v33, "RemoteNetworkReachability: Failed to connect to %s: %@", v18, 0x16u);
    sub_1E325F7FC(v19, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v31(v38, v36);
    (*(v34 + 8))(v30, v39);
    v12(v32, v16);
  }

  else
  {

    v12(v15, v16);
    v13(v38, v36);
    (*(v34 + 8))(v17, v39);
    v12(v14, v16);
  }

  OUTLINED_FUNCTION_4_85();
  **(v0 + 16) = 0;

  OUTLINED_FUNCTION_54();

  return v26();
}

uint64_t sub_1E39C7F78()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C809C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39C80F8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E39C8130()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_39();
  v9 = v8;
  OUTLINED_FUNCTION_31();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;
  v9[11] = v0;

  if (!v0)
  {
    v9[12] = v3;
    v9[13] = v5;
    v9[14] = v7;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E39C8254()
{
  OUTLINED_FUNCTION_24();
  v1 = OUTLINED_FUNCTION_30_32();
  v2(v1);

  v3 = v0[1];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  return v3(v4, v5, v6);
}

uint64_t sub_1E39C82D4()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_30_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E39C8348()
{
  OUTLINED_FUNCTION_31_1();
  v91 = v1;
  v92 = v0;
  v86 = v2;
  v87 = v3;
  v85 = v4;
  v89 = v5;
  v90 = v6;
  v88 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v83 = (&v80 - v14);
  v15 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v84 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - v32;
  sub_1E4206B94();
  v34 = VUISignpostLogObject();
  v35 = v85;
  sub_1E41FFBA4();

  if (v35)
  {
    v36 = v35;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v37(v33);
    v17[2](v23, v87, v15);
    v38 = v35;
    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    if (os_log_type_enabled(v39, v40))
    {
      LODWORD(v82) = v40;
      v84 = v33;
      v86 = v26;
      v87 = v24;
      v41 = swift_slowAlloc();
      v42 = OUTLINED_FUNCTION_160();
      v81 = OUTLINED_FUNCTION_100();
      v93 = v81;
      *v41 = 136315394;
      v43 = v83;
      sub_1E41FDDC4();
      v44 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
      {
        sub_1E325F7FC(v43, &unk_1ECF363C0);
        v45 = 0;
        v46 = 0xE000000000000000;
      }

      else
      {
        v45 = sub_1E41FE314();
        v46 = v64;
        OUTLINED_FUNCTION_37_1();
        (*(v65 + 8))(v66, v44);
      }

      v67 = OUTLINED_FUNCTION_35_5();
      v68(v67);
      v69 = sub_1E3270FC8(v45, v46, &v93);

      *(v41 + 4) = v69;
      *(v41 + 12) = 2112;
      v70 = v35;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v71;
      *v42 = v71;
      _os_log_impl(&dword_1E323F000, v39, v82, "Session:Request:  error: url=%s error: %@", v41, 0x16u);
      sub_1E325F7FC(v42, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v61 = *(v86 + 8);
      v62 = v84;
LABEL_15:
      v63 = v87;
      goto LABEL_16;
    }

    v59 = OUTLINED_FUNCTION_35_5();
    v60(v59);
    v61 = *(v26 + 8);
    v62 = v33;
  }

  else
  {
    v47 = v12;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v48(v30);
    v17[2](v84, v87, v15);
    v49 = sub_1E41FFC94();
    v50 = sub_1E4206814();
    if (os_log_type_enabled(v49, v50))
    {
      v82 = v15;
      v83 = v17;
      v86 = v26;
      v87 = v24;
      v51 = OUTLINED_FUNCTION_6_21();
      v52 = OUTLINED_FUNCTION_100();
      v93 = v52;
      *v51 = 136315138;
      v53 = v47;
      v54 = v84;
      sub_1E41FDDC4();
      v55 = v53;
      v56 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
      {
        sub_1E325F7FC(v55, &unk_1ECF363C0);
        v57 = 0;
        v58 = 0xE000000000000000;
      }

      else
      {
        v72 = v30;
        v73 = v52;
        v74 = v55;
        sub_1E41FE314();
        v58 = v75;
        OUTLINED_FUNCTION_37_1();
        v77 = v74;
        v52 = v73;
        v30 = v72;
        v57 = v78;
        (*(v76 + 8))(v77, v56);
      }

      v83[1](v54, v82);
      v79 = sub_1E3270FC8(v57, v58, &v93);

      *(v51 + 4) = v79;
      _os_log_impl(&dword_1E323F000, v49, v50, "Session:Request: prewarmConnection success: url=%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v61 = *(v86 + 8);
      v62 = v30;
      goto LABEL_15;
    }

    (v17[1])(v84, v15);
    v61 = *(v26 + 8);
    v62 = v30;
  }

  v63 = v24;
LABEL_16:
  v61(v62, v63);
  v92(v88, v89, v90, v35);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C89AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E41FE464();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1E38DCE1C(v6, v10);
}

void sub_1E39C8A74()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_8_0(v1);

  sub_1E39C8348();
}

unint64_t sub_1E39C8B94()
{
  result = qword_1ECF30068;
  if (!qword_1ECF30068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteNetworkReachabilityMonitor.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E39C8CC4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E327C238;

  return sub_1E39C7584(v2, v3);
}

uint64_t sub_1E39C8D6C(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070);
  OUTLINED_FUNCTION_17_2(v8);
  if (a4)
  {
    v9 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070);
    return sub_1E42063C4();
  }

  else
  {
    sub_1E39C8E64(a1, a2);
    v11 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30070);
    return sub_1E42063D4();
  }
}

uint64_t sub_1E39C8E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E38DCD14(a1, a2);
  }

  return a1;
}

uint64_t sub_1E39C8E78()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E39C8F74()
{
  OUTLINED_FUNCTION_1_108();
  v3 = v2 + 2812;
  v4 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0x6E6974656B72614DLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = v2 + 2812;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0x6E6974656B72614DLL;
    }

    if (v1 == 1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE900000000000067;
    }
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E42079A4();
  }

  return v9 & 1;
}

uint64_t sub_1E39C9050()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39C909C()
{
  OUTLINED_FUNCTION_1_108();
  if (!v0)
  {
    return v1 + 2812;
  }

  if (v0 == 1)
  {
    return v1;
  }

  return 0x6E6974656B72614DLL;
}

uint64_t sub_1E39C9138()
{
  OUTLINED_FUNCTION_1_108();
  sub_1E4206014();
}

uint64_t sub_1E39C91CC()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E39C9264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C9050();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C9294@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39C909C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E39C92C0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39C930C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C92C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C933C()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28B858);
  __swift_project_value_buffer(v0, qword_1EE28B858);
  return sub_1E41FFCA4();
}

uint64_t sub_1E39C93C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1E37748D8(0, 0, v2, &unk_1E42B0278, v4);
}

uint64_t sub_1E39C94B4()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA64();
  *(v0 + 56) = sub_1E41FEA44();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_60(v1);

  return MEMORY[0x1EEE43420](v2);
}

uint64_t sub_1E39C9558()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C969C()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E39C9724;

  return sub_1E39C948C();
}

uint64_t sub_1E39C9724()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E39C9808()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFB74();
  OUTLINED_FUNCTION_18_45(v1);
  *(v0 + 64) = v2;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C98B0()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA64();
  *(v0 + 80) = sub_1E41FEA44();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_60(v1);

  return MEMORY[0x1EEE43420](v2);
}

uint64_t sub_1E39C9954()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C9A54()
{

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = sub_1E41FFB54();
  v2 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
  if (v1)
  {
    v3 = v1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v0[8];
      v58 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      while (1)
      {
        if (v6 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v8 = v0[9];
        v9 = v0[7];
        (*(v7 + 16))(v8, v58 + *(v7 + 72) * v6, v9);
        v10 = sub_1E41FFB64();
        v12 = v11;
        (*(v7 + 8))(v8, v9);
        if (v12)
        {
          OUTLINED_FUNCTION_1_108();
          v14 = v10 == v13 + 2812 && v12 == 0xE800000000000000;
          if (v14 || (sub_1E42079A4() & 1) != 0)
          {

            if (_MergedGlobals_177 != -1)
            {
              OUTLINED_FUNCTION_0_99();
              swift_once();
            }

            v15 = sub_1E41FFCB4();
            v16 = OUTLINED_FUNCTION_15_60(v15, qword_1EE28B858);
            v17 = sub_1E4206814();
            if (OUTLINED_FUNCTION_104(v17))
            {
              v18 = OUTLINED_FUNCTION_125_0();
              OUTLINED_FUNCTION_10_58(v18);
              _os_log_impl(&dword_1E323F000, v16, v19, "fetchCategories: validCategoryValue explicit hit.", v9, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            v5 |= 1uLL;
          }

          else
          {
            OUTLINED_FUNCTION_1_108();
            v21 = v10 == v20 && v12 == 0xE800000000000000;
            if (v21 || (sub_1E42079A4() & 1) != 0)
            {

              if (_MergedGlobals_177 != -1)
              {
                OUTLINED_FUNCTION_0_99();
                swift_once();
              }

              v5 |= 2uLL;
              v22 = sub_1E41FFCB4();
              v23 = OUTLINED_FUNCTION_15_60(v22, qword_1EE28B858);
              v24 = sub_1E4206814();
              if (OUTLINED_FUNCTION_104(v24))
              {
                v25 = OUTLINED_FUNCTION_125_0();
                OUTLINED_FUNCTION_10_58(v25);
                _os_log_impl(&dword_1E323F000, v23, v26, "fetchCategories: validCategoryValue implicit hit.", v9, 2u);
                OUTLINED_FUNCTION_6_0();
              }
            }

            else
            {
              if (v10 == 0x6E6974656B72614DLL && v12 == 0xE900000000000067)
              {

LABEL_35:
                if (_MergedGlobals_177 != -1)
                {
                  OUTLINED_FUNCTION_0_99();
                  swift_once();
                }

                v29 = sub_1E41FFCB4();
                v30 = OUTLINED_FUNCTION_15_60(v29, qword_1EE28B858);
                v31 = sub_1E4206814();
                if (OUTLINED_FUNCTION_104(v31))
                {
                  v32 = OUTLINED_FUNCTION_125_0();
                  OUTLINED_FUNCTION_10_58(v32);
                  _os_log_impl(&dword_1E323F000, v30, v33, "fetchCategories: validCategoryValue marketing hit.", v9, 2u);
                  OUTLINED_FUNCTION_6_0();
                }

                v5 |= 4uLL;
                goto LABEL_16;
              }

              v28 = sub_1E42079A4();

              if (v28)
              {
                goto LABEL_35;
              }
            }
          }
        }

LABEL_16:
        if (v4 == ++v6)
        {

          v2 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
          goto LABEL_52;
        }
      }
    }

    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v45 = sub_1E41FFCB4();
    v46 = OUTLINED_FUNCTION_15_60(v45, qword_1EE28B858);
    v47 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v47))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v5 = 0;
LABEL_52:
    if (v2[266] != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v53 = sub_1E41FFCB4();
    v54 = OUTLINED_FUNCTION_15_60(v53, qword_1EE28B858);
    v55 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v5;
      _os_log_impl(&dword_1E323F000, v54, v55, "fetchCategories: enabledCategories returned.%ld", v56, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_13_7();

    return v57(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v34 = sub_1E41FFCB4();
    v35 = OUTLINED_FUNCTION_15_60(v34, qword_1EE28B858);
    v36 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v36))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E39CA0C4();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }
}